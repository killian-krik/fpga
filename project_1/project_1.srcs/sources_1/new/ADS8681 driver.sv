module ADS8681 #(
    parameter INPUT_RANGE = 4'b0000       // 输入电压范围配置
)
(
    input   wire          sys_clk   ,
    input   wire          sys_rst   ,
    input   wire  [19:0]  smap_clk  ,
    input   wire          spi_rvs   ,
    input   wire          spi_miso0 ,
    input   wire          spi_miso1 ,
    output  wire          spi_mosi  ,
    output  wire          spi_sclk  ,
    output  wire          spi_cs    ,
    output  wire          spi_rst   ,
    output  wire  [15:0]  adc_data    // 1MHz采样率输出
);

localparam delay_100ms = ( 100_000_000 / 10  ) - 1;
localparam delay_10ms  = ( 100_000_000 / 100 ) - 1;

//通信的SPI协议模式，默认是模式0，若需要其他3种通信模式请配置SPI的寄存器，详情见数据手册第45页
//采集到数据通过Singal_Tap II 查看
//采集数据和输出电压的关系：(DATA - 32768) / (挡位的最大电压 / 65535),假设是±12.228，输出电压为：(DATA - 32768) / (24.456 / 65535)

//具体参数见数据手册第10页
//ADS8681最大支持1Mhz的采样率
//SCLK的最大频率支持66.67Mhz
//芯片的输入包含高通滤波器滤波器截止频率: fz = 15Khz

//命令表见芯片手册第41页
localparam  CLEAR_HWORD = 5'b11000;             //用于清除寄存器中的任何（或一组）位的命令。
localparam  READ_HWORD  = 5'b11001;             //用于执行16位读取操作的命令。
localparam  READ        = 5'b01001;             //与READ_HWORD相同，只是在下一帧中只返回八位的寄存器（字节读取）。
localparam  WRITE_1     = 8'b11010_000;     //半字写命令（两个字节的输入数据被写入指定的地址）,第9位的地址位始终为0。
localparam  WRITE_2     = 8'b11010_010;     //半字写的命令。第9位的地址位始终为0，使用此命令，只写入高8位低8位忽略。
localparam  WRITE_3     = 8'b11010_100;     //半字写的命令。第9位的地址位始终为0，使用此命令，只写入低8位高8位忽略。
localparam  SET_HWORD   = 5'b11011;

localparam  NOP = 32'hffff_ffff;  

//寄存器地址见数据手册49页
localparam  DEVICE_ID_REG   = 8'h00;    //设备ID寄存器
localparam  RST_PWRCTL_REG  = 8'h04;    //复位和电源控制寄存器
localparam  SDI_CTL_REG     = 8'h08;    //SDI数据输入控制寄存器
localparam  SDO_CTL_REG     = 8'h0C;    //SDO-x数据输入控制寄存器
localparam  DATAOUT_CTL_REG = 8'h10;    //输出数据控制寄存器
localparam  RANGE_SEL_REG   = 8'h14;    //输入范围选择控制寄存器
localparam  ALARM_REG       = 8'h20;    //报警输出寄存器
localparam  ALARM_H_TH_REG  = 8'h24;    //报警高阈值和滞后寄存器
localparam  ALARM_L_TH_REG  = 8'h28;    //报警低阈值寄存器

localparam  SCLK_CYCLE_32  = ( 32 * 2 )  - 1;
localparam  SCLK_CYCLE_16  = ( 16 * 2 )  - 1;

//如果要配置双SDO模式，则需要配置 SDO_CTL_REG 寄存器，数据格式为：{WRITE_1,SDO_CTL_REG,14'd0,2'b11};配置参考芯片手册第51页

reg  [15:0]  rece_data  ;     //接收的数据中高16位置为ADC的转换数据
reg  [31:0]  send_data  ;     //发送数据寄存器
reg  [31:0]  send_buf   ;     //发送数据缓存

reg  [23:0]  delay_cnt  ;     //延时计数器

reg          rst        ;
reg          cs         ;
reg          sclk       ;
reg          mosi       ;
reg  [2:0]   STATE      ;
             
reg          cs_reg     ;
wire         cs_nege    ;

reg          sclk_reg   ;
wire         sclk_nege  ;

reg          acq_signal ;
reg  [19:0]  acq_cnt    ;

wire [19:0]  smap_counter;

assign smap_counter = (100_000_000 / smap_clk) - 1;

always@(posedge sys_clk or negedge sys_rst)
begin
    if(!sys_rst)begin
        rst    <= 1'b1;
        cs     <= 1'b1;
        sclk   <= 1'b0;
        delay_cnt <= 24'd0;
        STATE  <= 3'd0;
    end
    else begin
        case(STATE)
            3'd0:begin
                rst  <= 1'b1;
                cs   <= 1'b1;
                sclk <= 1'b0;
                if(delay_cnt >= delay_100ms)begin
                    delay_cnt <= 24'd0;
                    STATE <= 3'd1;
                end
                else begin
                    delay_cnt <= delay_cnt + 1'b1;
                    STATE <= 3'd0;
                end
            end
            3'd1:begin
                if(delay_cnt >= delay_100ms)begin
                    delay_cnt <= 24'd0;
                    rst   <= 1'b1;
                    STATE <= 3'd2;
                end
                else if(delay_cnt >= delay_10ms)begin
                    delay_cnt <= delay_cnt + 1'b1;
                    rst   <= 1'b1;
                    STATE <= 3'd1;
                end
                else begin
                    delay_cnt <= delay_cnt + 1'b1;
                    rst   <= 1'b0;
                    STATE <= 3'd1;
                end
            end
            3'd2:begin
                cs    <= 1'b1;
                sclk  <= 1'b0;
                send_data = {WRITE_1,RANGE_SEL_REG,12'd0,INPUT_RANGE}; //先配置输入范围
                STATE <= 3'd3;
            end
            3'd3:begin
                cs    <= 1'b0;
                sclk  <= 1'b0;
                if(delay_cnt >= 24'd1)begin
                    delay_cnt <= 24'd0;
                    STATE <= 3'd4;
                end
                else begin
                    delay_cnt <= delay_cnt + 1'b1;
                    STATE <= 3'd3;
                end
            end
            3'd4:begin
                sclk <= ~sclk;
                if(delay_cnt >= SCLK_CYCLE_32)begin
                    delay_cnt <= 24'd0;
                    STATE <= 3'd5;
                end
                else begin
                    delay_cnt <= delay_cnt + 1'b1;
                    STATE <= 3'd4;
                end
            end
            3'd5:begin
                cs    <= 1'b1;
                sclk  <= 1'b0;
                send_data <= 32'h0000_0000; //开始读取数据，发送地址任意
                if(acq_signal == 1'b1)begin
                    STATE <= 3'd6;
                end
                else begin
                    STATE <= 3'd5;
                end
            end
            3'd6:begin
                cs <= 1'b0;
                STATE <= 3'd7;
            end
            3'd7:begin
                sclk <= ~sclk;
                if(delay_cnt >= SCLK_CYCLE_16)begin
                    delay_cnt <= 24'd0;
                    STATE <= 3'd5;
                end
                else begin
                    delay_cnt <= delay_cnt + 1'b1;
                    STATE <= 3'd7;
                end
            end
        endcase
    end
end

always@(posedge sys_clk or negedge sys_rst)
begin
    if(!sys_rst)begin
        acq_cnt    <= 20'd0;
        acq_signal <= 1'b0;
    end
    else if(acq_cnt >= smap_counter)begin
        if(STATE == 3'd5)begin
            acq_cnt    <= 20'd0;
            acq_signal <= 1'b1;
        end
        else begin
            acq_cnt    <= acq_cnt;
            acq_signal <= 1'b0;
        end
    end
    else begin
        acq_cnt    <= acq_cnt + 1'b1;
        acq_signal <= 1'b0;
    end
end


always@(posedge sys_clk or negedge sys_rst)
begin
    if(!sys_rst)begin
        cs_reg   <= 1'b0;
        sclk_reg <= 1'b0;
    end
    else begin
        cs_reg   <= cs;
        sclk_reg <= sclk;
    end
end

assign cs_nege   = (!cs) & cs_reg;
assign sclk_nege = (!sclk) & sclk_reg;


//选择SPI的模式0作为本次模块的控制时序，上升沿接收数据
always@(posedge sys_clk or negedge sys_rst)
begin
    if(!sys_rst)begin
        rece_data <= 16'd0;
    end
    else if(sclk_nege == 1'b1)begin
        rece_data <= {rece_data[14:0],spi_miso0};
    end
    else begin
        rece_data <= rece_data;
    end
end

//上升沿发送数据，所以下降沿需要更新数据
always@(posedge sys_clk or negedge sys_rst)
begin
    if(!sys_rst)begin
        mosi <= 1'b0;
        send_buf <= 32'd0;
    end
    else if(cs_nege == 1'b1)begin
        mosi <= send_data[31];
        send_buf <= {send_data[30:0],1'b0};
    end
    else if(sclk_nege == 1'b1)begin
        mosi <= send_buf[31];
        send_buf <= {send_buf[30:0],1'b0};
    end
    else begin
        mosi <= mosi;
        send_buf <= send_buf;
    end
end


assign spi_rst  = rst   ;
assign spi_cs   = cs_nege ;
assign spi_sclk = sclk_reg;
assign spi_mosi = mosi;
assign adc_data = (STATE == 3'd6) ? rece_data : adc_data;

endmodule

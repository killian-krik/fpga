module ADS8681_TOP(
    input   wire          SYS_CLK     ,
    input   wire          RST_N       ,
    input   wire          SPI_RVS     ,
    input   wire          SPI_MISO0   ,
    input   wire          SPI_MISO1   ,
    output  wire          SPI_MOSI    ,
    output  wire          SPI_SCLK    ,
    output  wire          SPI_CS      ,
    output  wire          SPI_RST     ,
    output  wire          CLK_ACQ     ,
    output  wire  [15:0]  ADC_DATA      // 1MHz采样率输出
);

// 通信的SPI协议模式，默认是模式0，若需要其他3种通信模式请配置SPI的寄存器，详情见数据手册第45页
// 采集到数据通过Singal_Tap II 查看
// 采集数据和输出电压的关系：(DATA - 32768) / (挡位的最大电压 / 65535),假设是±12.228，输出电压为：(DATA - 32768) / (24.456 / 65535)

// 具体参数见数据手册第10页
// ADS8681最大支持1Mhz的采样率
// SCLK的最大频率支持66.67Mhz
// 芯片的输入包含高通滤波器滤波器截止频率: fz = 15Khz

// ADC输入范围配置，见数据手册第26页
localparam  INPUT_RANGE_0   = 4'b0000;  //±3       * VREF  +12.228 V ~ -12.228 V
localparam  INPUT_RANGE_1   = 4'b0001;  //±2.5     * VREF  +10.24  V ~ -10.24  V
localparam  INPUT_RANGE_2   = 4'b0010;  //±1.5     * VREF  +6.144  V ~ -6.144  V
localparam  INPUT_RANGE_3   = 4'b0011;  //±1.25    * VREF  +5.12   V ~ -5.12   V
localparam  INPUT_RANGE_4   = 4'b0100;  //±0.625   * VREF  +2.56   V ~ -2.56   V  
localparam  INPUT_RANGE_5   = 4'b1000;  //0 - 3    * VREF  +12.228 V ~ 0 V
localparam  INPUT_RANGE_6   = 4'b1001;  //0 - 2.5  * VREF  +10.24  V ~ 0 V
localparam  INPUT_RANGE_7   = 4'b1010;  //0 - 1.5  * VREF  +6.144  V ~ 0 V 
localparam  INPUT_RANGE_8   = 4'b1011;  //0 - 1.25 * VREF  +5.12   V ~ 0 V 

// ADC采样率调整
localparam  SMAPLE_1MHz     = 20'd1_000_000;
localparam  SMAPLE_500KHz   = 20'd500_000  ;
localparam  SMAPLE_200KHz   = 20'd200_000  ;
localparam  SMAPLE_100KHz   = 20'd100_000  ;
localparam  SMAPLE_50KHz    = 20'd50_000   ;
localparam  SMAPLE_20KHz    = 20'd20_000   ;
localparam  SMAPLE_10KHz    = 20'd10_000   ;
localparam  SMAPLE_5KHz     = 20'd5_000    ;
localparam  SMAPLE_2KHz     = 20'd2_000    ;
localparam  SMAPLE_1KHz     = 20'd1_000    ;

localparam  SMAPLE_CLOCK    = SMAPLE_1MHz  ; // 模块采样率设置



/* 驱动代码部分，用户不需要改动 */

localparam  delay_acq_cnt = ((100_000_000 / SMAPLE_CLOCK) / 2) - 1;

wire        CLK_100M   ;

reg  [19:0] clock_cnt  ;
reg         clock_smap ;

PLL_CLK u_PLL_CLK(
    .areset ( ~RST_N   ),
    .inclk0 ( SYS_CLK  ),
    .c0     ( CLK_100M )
);

always@(posedge CLK_100M or negedge RST_N)
begin
    if(!RST_N)begin
        clock_cnt  <= 7'd0;
        clock_smap <= 1'b0;
    end
    else if(clock_cnt >= delay_acq_cnt)begin
        clock_cnt  <= 7'd0;
        clock_smap <= ~clock_smap;
    end
    else begin
        clock_cnt  <= clock_cnt + 1'b1;
        clock_smap <= clock_smap;
    end
end

assign CLK_ACQ = clock_smap;


/* 驱动模块 */
ADS8681 #(
    .INPUT_RANGE ( INPUT_RANGE_1  )  // 输入电压范围调整
)u_ADS8681(
    .sys_clk     (  CLK_100M      ),
    .sys_rst     (  RST_N         ),
    .smap_clk    (  SMAPLE_CLOCK  ),
    .spi_rvs     (  SPI_RVS       ),
    .spi_miso0   (  SPI_MISO0     ),
    .spi_miso1   (  SPI_MISO1     ),
    .spi_mosi    (  SPI_MOSI      ),
    .spi_sclk    (  SPI_SCLK      ),
    .spi_cs      (  SPI_CS        ),
    .spi_rst     (  SPI_RST       ),
    .adc_data    (  ADC_DATA      )  
);

/* END */

endmodule


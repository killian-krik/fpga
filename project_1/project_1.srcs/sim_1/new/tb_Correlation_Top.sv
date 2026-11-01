`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/29 14:38:27
// Design Name: 
// Module Name: tb_Correlation_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module tb_Correlation_Top;

// ---------------------- 顶层端口信号声明 ----------------------
reg                             ipClk;
reg                             ipRst_;
reg                             ipKey;
reg                             ipCorrMode;

wire                            op_clk_a;
reg        [11:0]               ip_data_a;
reg                             ip_tr_a;

wire                            op_clk_b;
reg        [11:0]               ip_data_b;
reg                             ip_tr_b;

reg                             ipUartRx;
wire                            opUartTx;

wire      [3:0]                 op_led;

// ---------------------- 生成输入时钟（PLL输入时钟50MHz，20ns周期） ----------------------
initial begin
    ipClk = 1'b0;
    forever #10 ipClk = ~ipClk;
end

// ---------------------- 复位 & 激励 ----------------------
initial begin
    ipRst_  = 1'b0;
    ipKey   = 1'b0;
    ipUartRx= 1'b1; //UART空闲高电平
    
    #200
    ipRst_ = 1'b1;
    ipKey  = 1'b1;
    
    #800000;
    $finish;
end

//========= AD9226行为模型：通道A 7拍流水线 =========
reg [11:0] sample_a;
reg [11:0] pipe_a[0:6];
integer i;

always @(posedge op_clk_a or negedge ipRst_) begin
    if(!ipRst_) begin
        sample_a <= 12'd0;
        for(i=0;i<=6;i=i+1) pipe_a[i] <= 12'd0;
    end else begin
        sample_a <= sample_a + 12'd1;
        pipe_a[0] <= sample_a;
        for(i=1;i<=6;i=i+1) begin
            pipe_a[i] <= pipe_a[i-1];
        end
    end
end
always @(*) begin
    ip_data_a <= #3.5 pipe_a[6]; //tOD 3.5ns输出延迟
end
always @(posedge op_clk_a or negedge ipRst_) begin
    if(!ipRst_)
        ip_tr_a <= 1'b0;
    else
        ip_tr_a <= 1'b1;
end

//========= AD9226行为模型：通道B 7拍流水线 =========
reg [11:0] sample_b;
reg [11:0] pipe_b[0:6];
integer j;

always @(posedge op_clk_b or negedge ipRst_) begin
    if(!ipRst_) begin
        sample_b <= 12'd0;
        for(j=0;j<=6;j=j+1) pipe_b[j] <= 12'd0;
    end else begin
        sample_b <= sample_b + 12'd2;
        pipe_b[0] <= sample_b;
        for(j=1;j<=6;j=j+1) begin
            pipe_b[j] <= pipe_b[j-1];
        end
    end
end
always @(*) begin
    ip_data_b <= #3.5 pipe_b[6];
end
always @(posedge op_clk_b or negedge ipRst_) begin
    if(!ipRst_)
        ip_tr_b <= 1'b0;
    else
        ip_tr_b <= 1'b1;
end

// ---------------------- 实例化顶层模块 ----------------------
Correlation_Top u_Correlation_Top
(
    .ipClk          (ipClk),
    .ipRst_         (ipRst_),
    .ipKey          (ipKey),

    .op_clk_a       (op_clk_a),
    .ip_data_a      (ip_data_a),
    .ip_tr_a        (ip_tr_a),

    .op_clk_b       (op_clk_b),
    .ip_data_b      (ip_data_b),
    .ip_tr_b        (ip_tr_b),

    .ipUartRx       (ipUartRx),
    .opUartTx       (opUartTx),
    
    .op_led         (op_led)
);

// ---------------------- 波形dump ----------------------
initial begin
    $dumpfile("wave_correlation_ad9226_timing.vcd");
    $dumpvars(0, tb_Correlation_Top);
end

endmodule

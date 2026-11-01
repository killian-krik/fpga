`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/22 17:23:06
// Design Name: 
// Module Name: simulation
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


module simulation;

reg              [11:0]          ip_data_a;
reg                               ip_tr_a;

reg               [11:0]          ip_data_b;
reg                               ip_tr_b;
reg                         ipRst_;
reg                         ipClk;
reg                         ipUartRx;
wire                        opUartTx;
reg                         ipKey = 1'b0;
wire                        opDaCs;				//DAƬѡ�˿�
wire                        opDaDin;                //DA��������˿�
wire                        opDaClk;               //DAʱ�Ӷ˿�    

initial
begin
    # 0 ipClk = 0; ipRst_ = 1;
    #15 ipRst_ = 0;
    #15 ipRst_ = 1;
end
always #(5) ipClk = ~ipClk;
// Instantiate the Unit Under Test (UUT)
Correlation_Top     Correlation_Top_int
(
	.ipClk         (ipClk), // Clock input for DRP
	.ipRst_        (ipRst_),
	// ports of KeystrokeBuffetingElimination
	.ipKey         (ipKey),
    // Ports of Xadc
    .op_clk_a       (op_clk_a),
    .ip_data_a      (ip_data_a),
    .ip_tr_a        (ip_tr_a),
    
    .op_clk_b       (op_clk_b),
    .ip_data_b      (ip_data_b),
    .ip_tr_b        (ip_tr_b),  
        // Ports of Wireless
//    .ipUartRx_Wireless (ipUartRx),
//    .opUartTx_Wireless (opUartTx),    
    // ports of UartFor8bitDatum
	.ipUartRx      (ipUartRx),
	.opUartTx      (opUartTx)
);

    
endmodule

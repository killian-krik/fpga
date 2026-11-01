`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/31 11:20:52
// Design Name: 
// Module Name: Delay
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


module Delay
#(
	parameter		NUM_OF_DELAY = 7'd20
)
(
    ipClk,  ipRst_, iStartOfDelay, oEndOfDelay
);
    
input                   ipClk;
input                   ipRst_; 
input                   iStartOfDelay;
output                  oEndOfDelay;    
    
reg                 delayEn;
reg     [6:0]       delay;
reg     [6:0]       delay_n;

always @ (posedge ipClk or negedge ipRst_)
begin
    if (!ipRst_)
        delayEn <= 1'd0;
    else if (delay_n == NUM_OF_DELAY)
        delayEn <= 1'd0;
    else if (iStartOfDelay == 1'b1)
        delayEn <= 1'd1;
    else
        delayEn <= delayEn;
end

always @ (posedge ipClk or negedge ipRst_)
begin
    if (!ipRst_)
        delay <= 1'd0;
    else
        delay <= delay_n;
end

always @ (*)
begin
    if (delayEn == 1'd0)
        delay_n = 1'd0;
    else
        delay_n = delay + 1'd1;
end

assign oEndOfDelay = (delay == NUM_OF_DELAY);

endmodule

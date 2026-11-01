`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/04 22:39:43
// Design Name: 
// Module Name: UartDataReady
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


module UartDataReady
#(
	parameter		NUM_OF_CHANNEL = 7'd90
)
(
    input                               ipClk,
    input                               ipRst_,
    input                               iTxEndEn,
    input               [23:0]          iData,
    input               [ 7:0]          iOutRxData,
    output      reg     [ 7:0]          oOrdinal,
    output                              oTxDataIsReady,
    output      reg     [ 7:0]          oDataForTx
); 
  
reg     [23:0]      inputDataReg;
reg     [23:0]      inputDataReg_n; 
reg     [ 3:0]      state;
reg     [ 3:0]      state_n;
reg                 txEndEnReg;
wire                txEndEnReg_n;
reg     [ 7:0]      oDataForTx_n;
reg     [ 7:0]     oOrdinal_n;
///////////////////////////////////////////////////////////////////////////////////////////////////////

always @ (posedge ipClk or negedge ipRst_)
begin
    if (ipRst_ == 1'b0)
        oOrdinal <= 8'd0;
    else
        oOrdinal <= oOrdinal_n;
end

wire               endOfTxBlockCharacter;   
always @ (*)
begin
    if (oOrdinal == NUM_OF_CHANNEL && endOfTxBlockCharacter == 1'b1)
        oOrdinal_n = 8'd0;
    else if (endOfTxBlockCharacter == 1'b1)
        oOrdinal_n = oOrdinal + 8'd1;
    else
        oOrdinal_n = oOrdinal;
end

wire     [23:0]     inputData;
assign inputData = (oOrdinal == NUM_OF_CHANNEL)?  24'hFFFF_FF : iData;
////////////////////////////////////////////////////////////////////////////////////////////////////////////
assign endOfTxBlockCharacter = (state == 4'd3);
assign oTxDataIsReady = (endOfTxBlockCharacter == 1'b1 || (txEndEnReg == 1'b1 && txEndEnReg_n == 1'b0 && endOfTxBlockCharacter != 1'b1));
always @ (posedge ipClk or negedge ipRst_)
begin
    if (ipRst_ == 1'b0)
        inputDataReg <= 64'd0;
    else
        inputDataReg <=  inputDataReg_n;
end

always @ (*)
begin
    if (endOfTxBlockCharacter == 1'b1)
        inputDataReg_n = inputData;
    else
        inputDataReg_n = inputDataReg;
end

always @ (posedge ipClk or negedge ipRst_)
begin
    if (ipRst_ == 1'b0)
        txEndEnReg <= 1'd0;
    else
        txEndEnReg <= txEndEnReg_n;
end

assign   txEndEnReg_n = iTxEndEn;

always @ (posedge ipClk or negedge ipRst_)
begin
    if (ipRst_ == 1'b0)
        state <= 4'd3;
    else
        state <= state_n;
end
   
always @ (*)
begin
    if (endOfTxBlockCharacter == 1'b1)
        state_n = 4'd0;
    else if (txEndEnReg == 1'b1 && txEndEnReg_n == 1'b0 && endOfTxBlockCharacter != 1'b1)
        state_n = state + 4'd1;
    else
        state_n = state;
end

always @ (posedge ipClk or negedge ipRst_)
begin
    if (ipRst_ == 1'b0)
        oDataForTx <= 8'h00;
    else
        oDataForTx <= oDataForTx_n;
end

always @ (*)
begin
    case (state)
        4'd0: oDataForTx_n = inputDataReg[ 7:0];               // 低12位是采集到的数据
        4'd1: oDataForTx_n = inputDataReg[15:8];       // 低12位是采集到的数据
        4'd2: oDataForTx_n = inputDataReg[23:16];            // 低12位是采集到的数据
        default: oDataForTx_n = 8'h00;
    endcase
end
   
endmodule

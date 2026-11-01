`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 00:32:35
// Design Name: 
// Module Name: MultiplyAccumulate
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


module MultiplyAccumulate
#(
	parameter		NUM_OF_AVERAGE = 21'd65535
)
(
    input                               ipClk, // Clock input for DRP
    input                               ipRst_,
    input                               iValidityOfData,
    input               [ 7:0]          iNumOfAverage,
    input               [11:0]          tdata1,
    input               [11:0]          tdata2,
    input               [31:0]          iNumOfdata,
    output  reg         [23:0]          oMeanOfData,
    output  reg                         oChanDone //新增：单通道计算完成脉冲，=内部endOfDelay2
);

// data type
localparam NUM_OF_DELAY = 7'd1;
wire                                endOfDelay1;
wire                                endOfDelay2;
wire                                sclr1;
wire                                sclr2;
reg                 [31:0]          cnt;          
reg                 [31:0]          cnt_n;     
wire                [23:0]          ab;
reg                 [23:0]          abReg;
reg                 [23:0]          abReg_n;
wire                [52:0]          accumulateOfData;
reg                 [23:0]          oMeanOfData_n;  


always @ (posedge ipClk or negedge ipRst_)
begin
if (!ipRst_)
    cnt <= 32'd0;
else
    cnt <= cnt_n;
end

always @ (*)
begin
if (sclr1 == 1'b1)
    cnt_n = 32'd0;
else if  (endOfDelay1 == 1'b1)
    cnt_n = cnt + 32'd1;
else
    cnt_n = cnt;
end       

assign sclr1 =  (cnt >=  iNumOfdata && endOfDelay1 == 1'b1);  
assign sclr2 =  (cnt ==  iNumOfdata - 1'd1 && endOfDelay1 == 1'b1);         

mult_gen_0 mult_inst
(
.CLK            (ipClk      ),
.CE             (iValidityOfData         ),
.SCLR           (1'b0       ),
.A              (tdata1     ),
.B              (tdata2     ),
.P              (ab         )
);

Delay
#(
	.NUM_OF_DELAY (NUM_OF_DELAY)
)
Delay1_Inst
(
    .ipClk              (ipClk), 
    .ipRst_             (ipRst_),
    .iStartOfDelay      (iValidityOfData),
    .oEndOfDelay        (endOfDelay1)
);

c_accum_0 c_accum_0_inst
(
    .B                  (ab),
    .CLK                (ipClk),
    .CE                 (endOfDelay1),
    .SCLR               (sclr1),
    .Q                  (accumulateOfData)
 );

 
Delay
 #(
     .NUM_OF_DELAY (NUM_OF_DELAY)
 )
 Delay2_Inst
 (
     .ipClk              (ipClk), 
     .ipRst_             (ipRst_),
     .iStartOfDelay      (sclr2),
     .oEndOfDelay        (endOfDelay2)
 );

always @ (posedge ipClk or negedge ipRst_)
begin
    if (!ipRst_) begin
        oMeanOfData <= 1'd0;
        oChanDone <= 1'd0;
    end else begin
        oMeanOfData <= oMeanOfData_n;
        oChanDone <= endOfDelay2;
    end
end

always @ (*)
begin
    if (endOfDelay2 == 1'b1)
        oMeanOfData_n = accumulateOfData >> iNumOfAverage;
    else
        oMeanOfData_n = oMeanOfData;
end
endmodule 
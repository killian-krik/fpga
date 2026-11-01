`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/23 22:19:56
// Design Name: 
// Module Name: UartInputDataProcessing
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


module UartInputDataProcessing
(
	//输入端口
	input                          ipClk,
	input                          ipRst_,
	input              [ 7:0]      iOutRxData,
	input                          iRxBpsEn,
	//输出端口
	output   reg       [15:0]      oClkSample,
	output   reg       [ 7:0]      oNumOfAverage,
	output   reg       [31:0]      oNumOfdata
);
//---------------------------------------------------------------------------
//--	内部端口声明
//---------------------------------------------------------------------------
reg                         [ 1:0]      detectEdge;
wire                        [ 1:0]      detectEdge_n;
reg                                     negedgeReg;
wire                                    negedgeReg_n;
reg                         [87:0]      dataFromUart;
reg                         [87:0]      dataFromUart_n;

//---------------------------------------------------------------------------
//--	逻辑功能实现
//---------------------------------------------------------------------------

//时序电路,用来给detectEdge寄存器赋值
always @ (posedge ipClk or negedge ipRst_)
begin
	if(ipRst_ == 1'b0)									//判断复位
		detectEdge	<= 2'b11;				//初始化detectEdge值
	else
		detectEdge <= detectEdge_n;		//用来给detectEdge赋值
end
//组合电路,用来接收iRxBpsEn信号
assign detectEdge_n = {detectEdge[0], iRxBpsEn};	

//时序电路,用来给negedgeReg寄存器赋值
always @ (posedge ipClk or negedge ipRst_)
begin
	if(ipRst_ == 1'b0)									//判断复位
		negedgeReg <= 1'b0;					//初始化negedgeReg值
	else
		negedgeReg <= negedgeReg_n;		//用来给negedgeReg赋值
end
//组合电路,判断下降沿,如果下降沿到来,negedgeReg_n就为1
assign negedgeReg_n = (detectEdge == 2'b10) ? 1'b1 : 1'b0; 

always @ (posedge ipClk or negedge ipRst_)
begin
    if (ipRst_ == 1'b0)
        dataFromUart <= 88'd0; //72'd0;
    else
        dataFromUart <= dataFromUart_n;
end
always @ (*)
begin
	if (negedgeReg == 1'b1)
		dataFromUart_n = {dataFromUart[79:0],iOutRxData};
	else
		dataFromUart_n = dataFromUart;
end

always @ (posedge ipClk or negedge ipRst_)
begin
	if(!ipRst_)								//判断复位
	begin
	   oClkSample <= 16'd49;
	   oNumOfAverage <= 8'd20;					//初始化time_cnt值
	   oNumOfdata <= 32'd1048576;
	end	
    else if (dataFromUart[87:56] == 32'hFEFE_FEFE && dataFromUart_n[87:56] != 32'hFEFE_FEFE)
	begin
	   oClkSample <= dataFromUart[55:40];//[15:0];
	   oNumOfAverage <= dataFromUart[39:32];//[7:0];
	   oNumOfdata <= dataFromUart[31:0];
	end
	else
	begin
	   oClkSample <= oClkSample;
	   oNumOfAverage <= oNumOfAverage;
	   oNumOfdata <= oNumOfdata;	   
    end
end	

//assign oNumOfdata = (25'd1 << oNumOfAverage);

endmodule




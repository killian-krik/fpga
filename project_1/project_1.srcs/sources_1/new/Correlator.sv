`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/19 20:24:42
// Design Name: 
// Module Name: Correlator
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


module Correlator
#(
	parameter		NUM_OF_CHANNEL = 11'd90
)
(
    input       		            ipClk,
    input       		            ipRst_,
    input       		[11:0]      iData1FromADC,
    input       		[11:0]      iData2FromADC,
    input       		            iEndOfConversion_1, 
    input       		            iEndOfConversion_2,   
    input       		[ 7:0]      iOrdinal,
    input               [ 7:0]      iNumOfAverage,
    input               [31:0]      iNumOfdata,
    output      		[23:0]      oMeanOfData,
    output                          oFrameDone, // 新增：整帧完成标志
    output      reg     [23:0]      oMeanOfData_nn,
    output      reg                 oDataValid_nn
);


// data type
localparam       NUM_OF_DATA = 15'd11883; //15'd9213;
//localparam       NUM_OF_AVERAGE = 20'd524288;
localparam       NUM_OF_AVERAGE = 21'd1048576;
//localparam       NUM_OF_AVERAGE = 20'd20;
localparam       NUM_OF_DELAY1 = 7'd1;
localparam       NUM_OF_DELAY2 = 7'd1;
localparam       NUM_OF_DELAY3 = 7'd1;
    
reg 				            endOfConversion_1_reg;
reg 				            endOfConversion_2_reg;
wire 				            posEdgeOfEOC_1; 
wire 				            posEdgeOfEOC_2;
wire				            endOfDelay1;
wire				            endOfDelay2;  
wire				            endOfDelay3;                        
wire				[14:0]      gv_ii[0:NUM_OF_CHANNEL-1];
reg 				[11:0]      dataForCorreltor_2;
reg 				[11:0]      dataForCorreltor_2_n;
reg 				[11:0]      dataForCorreltor_2_s;
reg 				[11:0]      dataForCorreltor_2_s_n;
reg 				[11:0]      dataForCorreltor_1[0:NUM_OF_DATA-1];
reg 				[11:0]      dataForCorreltor_1_s[0:NUM_OF_CHANNEL-1];
reg 				[11:0]      dataForCorreltor_1_n[0:NUM_OF_DATA-1];
reg 				[11:0]      dataForCorreltor_1_s_n[0:NUM_OF_CHANNEL-1];
wire				[23:0]      meanOfData[0:NUM_OF_CHANNEL-1]; 
wire                            chanDone[0:NUM_OF_CHANNEL-1];

// functionlaity
assign gv_ii[0] = 15'd0    ;
assign gv_ii[1] = 15'd2    ; 
assign gv_ii[2] = 15'd6    ;
assign gv_ii[3] = 15'd14   ;
assign gv_ii[4] = 15'd24   ;
assign gv_ii[5] = 15'd38   ;
assign gv_ii[6] = 15'd54   ;
assign gv_ii[7] = 15'd74   ;
assign gv_ii[8] = 15'd96   ;
assign gv_ii[9] = 15'd122  ;
assign gv_ii[10] =15'd150  ;
assign gv_ii[11] =15'd182  ;
assign gv_ii[12] =15'd216  ;
assign gv_ii[13] =15'd254  ;
assign gv_ii[14] =15'd294  ;
assign gv_ii[15] =15'd338  ;
assign gv_ii[16] =15'd384  ;
assign gv_ii[17] =15'd434  ;
assign gv_ii[18] =15'd486  ;
assign gv_ii[19] =15'd542  ;
assign gv_ii[20] =15'd600  ;
assign gv_ii[21] =15'd662  ;
assign gv_ii[22] =15'd726  ;
assign gv_ii[23] =15'd794  ;
assign gv_ii[24] =15'd864  ;
assign gv_ii[25] =15'd938  ;
assign gv_ii[26] =15'd1014 ;
assign gv_ii[27] =15'd1094 ;
assign gv_ii[28] =15'd1176 ;
assign gv_ii[29] =15'd1262 ;
assign gv_ii[30] =15'd1350 ;
assign gv_ii[31] =15'd1442 ;
assign gv_ii[32] =15'd1536 ;
assign gv_ii[33] =15'd1634 ;
assign gv_ii[34] =15'd1734 ;
assign gv_ii[35] =15'd1838 ;
assign gv_ii[36] =15'd1944 ;
assign gv_ii[37] =15'd2054 ;
assign gv_ii[38] =15'd2166 ;
assign gv_ii[39] =15'd2282 ;
assign gv_ii[40] =15'd2400 ;
assign gv_ii[41] =15'd2522 ;
assign gv_ii[42] =15'd2646 ;
assign gv_ii[43] =15'd2774 ;
assign gv_ii[44] =15'd2904 ;
assign gv_ii[45] =15'd3038 ;
assign gv_ii[46] =15'd3174 ;
assign gv_ii[47] =15'd3314 ;
assign gv_ii[48] =15'd3456 ;
assign gv_ii[49] =15'd3602 ;
assign gv_ii[50] =15'd3750 ;
assign gv_ii[51] =15'd3902 ;
assign gv_ii[52] =15'd4056 ;
assign gv_ii[53] =15'd4214 ;
assign gv_ii[54] =15'd4374 ;
assign gv_ii[55] =15'd4538 ;
assign gv_ii[56] =15'd4704 ;
assign gv_ii[57] =15'd4874 ;
assign gv_ii[58] =15'd5046 ;
assign gv_ii[59] =15'd5222 ;
assign gv_ii[60] =15'd5400 ;
assign gv_ii[61] =15'd5582 ;
assign gv_ii[62] =15'd5766 ;
assign gv_ii[63] =15'd5954 ;
assign gv_ii[64] =15'd6144 ;
assign gv_ii[65] =15'd6338 ;
assign gv_ii[66] =15'd6534 ;
assign gv_ii[67] =15'd6734 ;
assign gv_ii[68] =15'd6936 ;
assign gv_ii[69] =15'd7142 ;
assign gv_ii[70] =15'd7350 ;
assign gv_ii[71] =15'd7562 ;
assign gv_ii[72] =15'd7776 ;
assign gv_ii[73] =15'd7994 ;
assign gv_ii[74] =15'd8214 ;
assign gv_ii[75] =15'd8438 ;
assign gv_ii[76] =15'd8664 ;
assign gv_ii[77] =15'd8894 ;
assign gv_ii[78] =15'd9126 ;
assign gv_ii[79] =15'd9362 ;
assign gv_ii[80] =15'd9600 ;
assign gv_ii[81] =15'd9842 ;
assign gv_ii[82] =15'd10086;
assign gv_ii[83] =15'd10334;
assign gv_ii[84] =15'd10584;
assign gv_ii[85] =15'd10838;
assign gv_ii[86] =15'd11094;
assign gv_ii[87] =15'd11354;
assign gv_ii[88] =15'd11616;
assign gv_ii[89] =15'd11882;

// ��ȡAD�ɼ�ת�������ı���
always @ (posedge ipClk or negedge ipRst_)
begin
    if (!ipRst_)
        endOfConversion_1_reg <= 1'd0;
    else
        endOfConversion_1_reg <= iEndOfConversion_1;
end
assign posEdgeOfEOC_1 = (endOfConversion_1_reg == 1'b0 && iEndOfConversion_1 == 1'b1) ? 1'b1 : 1'b0;

always @ (posedge ipClk or negedge ipRst_)
begin
    if (!ipRst_)
        endOfConversion_2_reg <= 1'd0;
    else
        endOfConversion_2_reg <= iEndOfConversion_2;
end
assign posEdgeOfEOC_2 = (endOfConversion_2_reg == 1'b0 && iEndOfConversion_2 == 1'b1) ? 1'b1 : 1'b0;


always @ (posedge ipClk or negedge ipRst_)
begin
    if (!ipRst_)
        dataForCorreltor_1[0] <= 12'd0;
    else
        dataForCorreltor_1[0] <=  dataForCorreltor_1_n[0];
end

always @ (*)
begin
    if (posEdgeOfEOC_1 == 1'b1)
        dataForCorreltor_1_n[0] = iData1FromADC;
    else
        dataForCorreltor_1_n[0] = dataForCorreltor_1[0];
end


always @ (posedge ipClk or negedge ipRst_)
begin
    if (!ipRst_)
        dataForCorreltor_2 <= 12'd0;
    else
        dataForCorreltor_2 <=  dataForCorreltor_2_n;
end

always @ (*)
begin
    if (posEdgeOfEOC_2 == 1'b1)
        dataForCorreltor_2_n = iData2FromADC;
    else
        dataForCorreltor_2_n = dataForCorreltor_2;
end
/////////////////////////////////////////////��·������غ�������///////////////////////////////////////////////
genvar gv_j;
generate
    for (gv_j = 1 ; gv_j < NUM_OF_DATA; gv_j = gv_j + 1)
    begin : label_j
            always @ (posedge ipClk or negedge ipRst_)
            begin
                if (!ipRst_)
                    dataForCorreltor_1[gv_j] <= 12'd0;
                else
                    dataForCorreltor_1[gv_j] <= dataForCorreltor_1_n[gv_j];
            end
            
            always @ (*)
            begin
                if (posEdgeOfEOC_1 == 1'b1)
                    dataForCorreltor_1_n[gv_j] = dataForCorreltor_1[gv_j - 1];
                else
                    dataForCorreltor_1_n[gv_j] = dataForCorreltor_1[gv_j];
            end         
     end
endgenerate

Delay
#(
	.NUM_OF_DELAY (NUM_OF_DELAY1)
)
Delay1_Inst
(
    .ipClk              (ipClk),
    .ipRst_             (ipRst_),
    .iStartOfDelay      (posEdgeOfEOC_1),
    .oEndOfDelay        (endOfDelay1)
);

Delay
#(
	.NUM_OF_DELAY (NUM_OF_DELAY2)
)
Delay2_Inst
(
    .ipClk              (ipClk),
    .ipRst_             (ipRst_),
    .iStartOfDelay      (posEdgeOfEOC_2),
    .oEndOfDelay        (endOfDelay2)
);

Delay
#(
	.NUM_OF_DELAY (NUM_OF_DELAY3)
)
Delay3_Inst
(
    .ipClk              (ipClk), 
    .ipRst_             (ipRst_),
    .iStartOfDelay      (endOfDelay1),//(posEdgeOfEOC_1),
    .oEndOfDelay        (endOfDelay3)
);

always @ (posedge ipClk or negedge ipRst_)
begin
   if (!ipRst_)
       dataForCorreltor_2_s <= 12'd0;
   else
       dataForCorreltor_2_s <= dataForCorreltor_2_s_n;
end

always @ (*)
begin
   if (endOfDelay2 == 1'b1)
       dataForCorreltor_2_s_n = dataForCorreltor_2;
   else
       dataForCorreltor_2_s_n = dataForCorreltor_2_s;
end

genvar gv_i;
generate
    for (gv_i = 0 ; gv_i < NUM_OF_CHANNEL ; gv_i = gv_i + 1)
    begin : label_i 
    
        always @ (posedge ipClk or negedge ipRst_)
        begin
           if (!ipRst_)
               dataForCorreltor_1_s[gv_i] <= 12'd0;
           else
               dataForCorreltor_1_s[gv_i] <= dataForCorreltor_1_s_n[gv_i];
        end
       
        always @ (*)
        begin
           if (endOfDelay1 == 1'b1)
               dataForCorreltor_1_s_n[gv_i] = dataForCorreltor_1[gv_ii[gv_i]];
           else
               dataForCorreltor_1_s_n[gv_i] = dataForCorreltor_1_s[gv_i];
        end
        
        
        MultiplyAccumulate     
        #(
             .NUM_OF_AVERAGE (NUM_OF_AVERAGE)
        ) 
        MultiplyAccumulate_inst   
        (
            // input ports
            .ipClk                  (ipClk),
            .ipRst_                 (ipRst_),
            .iValidityOfData        (endOfDelay3),
            .iNumOfAverage          (iNumOfAverage),
            .tdata1                 (dataForCorreltor_2_s),
            .tdata2                 (dataForCorreltor_1_s[gv_i]),
            .iNumOfdata             (iNumOfdata),
            .oMeanOfData            (meanOfData[gv_i]),
            .oChanDone              (chanDone[gv_i]) //新增：MAC单通道完成脉冲输出
        );
    end
endgenerate
assign oFrameDone = chanDone[NUM_OF_CHANNEL-1];
//assign oMeanOfData = meanSquare1[iOrdinal];  
assign oMeanOfData = (iOrdinal == NUM_OF_CHANNEL)? 24'hFFFFFF : meanOfData[iOrdinal];  

// ============【修复原BUG：移出generate块，单驱动oFrameDone】============
assign oFrameDone = chanDone[NUM_OF_CHANNEL-1];

// ===================== 【新增：串行读出控制逻辑】=====================

reg [7:0] rd_chan_idx; // 读出通道索引 0~89
localparam S_RD_IDLE = 1'b0;
localparam S_RD_SEQ  = 1'b1;
reg rd_state;

always @(posedge ipClk or negedge ipRst_) begin
    if(!ipRst_) begin
        rd_state    <= S_RD_IDLE;
        rd_chan_idx <= 8'd0;
        oMeanOfData_nn <= 24'd0;
        oDataValid_nn  <= 1'b0;
    end else begin
        oDataValid_nn <= 1'b0; // 默认无效
        
        case(rd_state)
            S_RD_IDLE: begin
                if(oFrameDone) begin
                    rd_state    <= S_RD_SEQ;
                    rd_chan_idx <= 8'd0;
                end
            end
            
            S_RD_SEQ: begin
                // 当前节拍输出rd_chan_idx对应的均值，拉高有效标志
                oMeanOfData_nn <= meanOfData[rd_chan_idx];
                oDataValid_nn  <= 1'b1;
                
                if(rd_chan_idx < (NUM_OF_CHANNEL - 1)) begin
                    rd_chan_idx <= rd_chan_idx + 8'd1;
                end else begin
                    rd_state <= S_RD_IDLE; //90通道全部串行输出完毕
                end
            end
        endcase
    end
end

endmodule



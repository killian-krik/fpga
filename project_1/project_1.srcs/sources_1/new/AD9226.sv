`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/03 19:47:05
// Design Name: 
// Module Name: AD9226
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



module AD9226(
    input      wire                     ip_clk,     
    input      wire                     ip_rst_, 
    input      wire     [15:0]          i_clk_sample, // default vale = 6'd49
    // channel A
    input      wire     [11:0]          ip_data_a,   
    output     wire                     op_clk_a, 
    output     wire     [11:0]          o_data_a_from_adc,
    output     wire                     o_end_of_conversion_a,
    // channel B 
    input      wire     [11:0]          ip_data_b,   
    output     wire                     op_clk_b,    
    output     wire     [11:0]          o_data_b_from_adc,
    output     wire                     o_end_of_conversion_b
    );

reg     [15:0]       cnt_clk;
reg     [15:0]       cnt_clk_n;
// channel A
reg                 clk_a;
reg                 clk_a_n;
reg     [11:0]      data_a_from_adc;
reg     [11:0]      data_a_from_adc_n;
wire                endOfDelay_a;
reg                 end_of_conversion_a;
wire                end_of_conversion_a_n;
// channel B
reg                 clk_b;
reg                 clk_b_n;    
reg     [11:0]      data_b_from_adc;
reg     [11:0]      data_b_from_adc_n;
wire                endOfDelay_b;
reg                 end_of_conversion_b;
wire                end_of_conversion_b_n;

always @ (posedge ip_clk or negedge ip_rst_)
begin
    if (ip_rst_ == 1'b0)
    begin
        cnt_clk <= 16'd0;
        clk_a <= 1'd0;
        clk_b <= 1'd0;
        data_a_from_adc <= 12'd0;
        data_b_from_adc <= 12'd0;
        end_of_conversion_a <= 1'd0;
        end_of_conversion_b <= 1'd0;
    end
    else
    begin
        cnt_clk <= cnt_clk_n;
        clk_a <= clk_a_n;
        clk_b <= clk_b_n;
        data_a_from_adc <= data_a_from_adc_n;
        data_b_from_adc <= data_b_from_adc_n;
        end_of_conversion_a <= end_of_conversion_a_n;
        end_of_conversion_b <= end_of_conversion_b_n;
    end
end

always @ (*)
begin
    if (cnt_clk == i_clk_sample)
        cnt_clk_n = 16'd0;
    else
        cnt_clk_n = cnt_clk + 16'd1;
end

always @ (*)
begin
    if (cnt_clk == i_clk_sample)
        clk_a_n = ~ clk_a;
    else
        clk_a_n = clk_a;
end

always @ (*)
begin
    if (cnt_clk == i_clk_sample)
        clk_b_n = ~ clk_b;
    else
        clk_b_n = clk_b;
end
/*
Delay
#(
	.NUM_OF_DELAY (1)
)
Delay_a_Inst
(
    .ipClk              (ip_clk),
    .ipRst_             (ip_rst_),
    .iStartOfDelay      (clk_a == 1'd0 && clk_a_n == 1'd1),
    .oEndOfDelay        (endOfDelay_a)
);

Delay
#(
	.NUM_OF_DELAY (1)
)
Delay_b_Inst
(
    .ipClk              (ip_clk),
    .ipRst_             (ip_rst_),
    .iStartOfDelay      (clk_b == 1'd0 && clk_b_n == 1'd1),
    .oEndOfDelay        (endOfDelay_b)
);
*/
always @ (*)
begin
    if (clk_a == 1'd0 && clk_a_n == 1'd1)
        data_a_from_adc_n = ip_data_a;
    else
        data_a_from_adc_n = data_a_from_adc;
end

always @ (*)
begin
    if (clk_b == 1'd0 && clk_b_n == 1'd1)
        data_b_from_adc_n = ip_data_b;
    else
        data_b_from_adc_n = data_b_from_adc;
end

assign      end_of_conversion_a_n = (clk_a == 1'd0 && clk_a_n == 1'd1);
assign      end_of_conversion_b_n = (clk_b == 1'd0 && clk_b_n == 1'd1);

assign      op_clk_a = clk_a;
assign      op_clk_b = clk_b;
assign      o_data_a_from_adc = data_a_from_adc;
assign      o_data_b_from_adc = data_b_from_adc;
assign      o_end_of_conversion_a = end_of_conversion_a;    
assign      o_end_of_conversion_b = end_of_conversion_b; 
  
endmodule


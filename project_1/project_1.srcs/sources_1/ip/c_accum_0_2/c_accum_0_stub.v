// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct  8 20:52:47 2024
// Host        : DESKTOP-2Q7AOGV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top c_accum_0 -prefix
//               c_accum_0_ c_accum_0_stub.v
// Design      : c_accum_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_12,Vivado 2018.2" *)
module c_accum_0(B, CLK, CE, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[23:0],CLK,CE,SCLR,Q[52:0]" */;
  input [23:0]B;
  input CLK;
  input CE;
  input SCLR;
  output [52:0]Q;
endmodule

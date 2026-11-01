// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Feb  1 08:52:37 2023
// Host        : DESKTOP-2Q7AOGV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Program/FPGA/Xilinx/Xilinx_Vivado2018/Digital
//               Correlator/Version 1/project_1/project_1.srcs/sources_1/ip/xbip_multadd_0_1/xbip_multadd_0_stub.v}
// Design      : xbip_multadd_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_12,Vivado 2018.2" *)
module xbip_multadd_0(CLK, CE, SCLR, A, B, C, SUBTRACT, P, PCOUT)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,A[11:0],B[11:0],C[43:0],SUBTRACT,P[43:0],PCOUT[47:0]" */;
  input CLK;
  input CE;
  input SCLR;
  input [11:0]A;
  input [11:0]B;
  input [43:0]C;
  input SUBTRACT;
  output [43:0]P;
  output [47:0]PCOUT;
endmodule

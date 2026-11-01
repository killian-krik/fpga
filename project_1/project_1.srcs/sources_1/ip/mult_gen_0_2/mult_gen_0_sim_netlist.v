// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct  8 21:32:01 2024
// Host        : DESKTOP-2Q7AOGV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_gen_0 -prefix
//               mult_gen_0_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    CE,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [23:0]P;

  wire [11:0]A;
  wire [11:0]B;
  wire CE;
  wire CLK;
  wire [23:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "12" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "23" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [11:0]A;
  input [11:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [23:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [11:0]A;
  wire [11:0]B;
  wire CE;
  wire CLK;
  wire [23:0]P;
  wire SCLR;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Xy0rQtyFjlVkbWfeQXwuqraA3MiYyL0eFNjbY4iEa+s0Iy4tsgQeJeqb8F2nyNFI15QQro+xjbie
m+gt7LRqSA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ket885wFwjDLqC97HI68cpTwpD1hGBIJdkMh+rsfw+vPf59MdHJNNbcLh5jkiDAOhjCAn8l7Pljd
OAdA4DPaB1th3EEcK28Uhm8xkCE8u1JeKM+cTawL1ZqM7f5vFJDMTdaQdo2ODraPwf63iOc4O7I1
Jp0iW8w4eq4dmJxUtLQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0sLRbF/nd38eurlUzps5D+y+9REEleMhJud3+B55Wgm1hYo1ntzC4vdMFNHAcAq1l46fEiE/D85o
eYPC/WuBoZraAAbt+2vzvO+6NgUIpKKrii5bWkc7zSRBw4OUgkdgOToRQnup7uEq7pNL5gER2W2q
jpbl57Ks7667W7TbtoCx+55cY2wmHeQ+Fi9eAhxvopt9UQ7JhiAITU32QV0QOUo0C5DuMrCOfUPt
Q4mY/sCujPAsGwpHpQOH6JmVeTJ9/9FBANFdHkzv6F+8T8a1pEE2+YcJXysHrFHMtW27J1ZZCZGA
hChjmCakAGz4Jve6Njfz9RKNiLrrvv0gHwgvEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z45gwqdZGpYP0Kv2lPvhL9t/dewTJD5ANS61F5BSLbdhMd8PVbRummT3J9CrH0Xrbuzjih6sOpQw
kP9SCPfkWk0LECt8HjobCatSEoRRONU79HyCEoDk93VT8CY8JL1BVS13wUngEWn6CIfitTyUUXR/
CxyxtdDZQFDUfHXEX4XQ0Yn12IXvHzgVAVLyG8UmGQWtQl4u7U/ZvMszHbCI4hHi6FW2kYvzBYlf
e14GZYOKCoOlqFp/3u2vs2rSSE9ciWV/SYIJDbOxsQCcBEM+UYYOzWikcZxKJAlJhndq92g1JKTL
sQcp7SBbbJ1O6Xynuz0MZ47Dfl+F87qkHSjwDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AeZ3V4sxDArImz8Q4W0bdOLintyw5zFj71qsxS4fYZUiRz8fNjC87lJzQ+YnUM13/42C5tAz/W5B
5De7uFmIgyIiHZ7Y1Ljeaa49Hank9rJJwKCFDSSNL8oJL51I1jWnn7YQnA7UX2zo1TTkepqKq7HW
QLVQHxdIfz7XQJ1KYPLfGQXcsGEecPlraNmNXeykJAgtAFm5XnR8iyVOGbjm9W9BUx0070wOpVoK
DNLr58vy3yAgTwtSBr+RexJEsBPZIUDyrA9NgYHy91GC6l4e/tQMTkA5GUgHnQd/YiVINSR358nO
A3j+0MMXq+Hrg0TJtfXsqD7mdjD7gjs4pqa1Vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BTz6m4RfoEciTWA22aqSQ7leYhQBT580p+3gUMnEkDKrl8y/O8yBG9prYh9eaBfxpy/1/zsYPTfE
O0sD3klOHeyC81JjLy2AWCWL1sk9/7n5I9vvSHXaQP4PHYRjAzqZC2XENPD0SKyVkobaEQpad+o8
VjB8RI608B9GgMaZvYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D7Hbf96be8hL6h8aH9GXSy4IzBK9xG0ri9cVSVfA+REat+znGl+3rKoWJP3Y8xVsMkc1boG+wuph
DvXt9Y8VIRQAHNgamdZlVmWFc7YNNoioXwxsiPQUGQ033qF9EQryRyyXiVxfPqJOSfqv7PrbvgOT
5UDZUXtmOWGVrgoDlz45TFPs5v+lO6i3RYt0nujylzKTS8VLhLp7chpkjrCdjQc8hZGNDkUI5WPz
T16PgMtr8+aqlEn030MgQ09L5vJki+2qisAmejQVoQ30QbY0N/13XTb4LdaYF1u53Ib59hKf/1nP
//1d/wsq1f4QJoIkaVIa2ngZqWphjv4BhaOjtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZBE92xO1JH9+N+X0VAQqcB7syBUOiqgkrrrLA19kOXmdn+UaNssIiUREpm6/ryaGea9b8C5eULcq
rKPlzHK0y67vF6coOIkPsuFiayd7LsqQ0e/2QW9mTYdVs9B6HjwInkTQJdPxbR72EOwwSPR+qOsV
AuzWT4yMlrOLpVHPZiOBmKca7oUBLjtdUddl/9VLQVs2DwtYCBzBScc2nnQVziNarNnlkGh4md2L
meDlL9b3nTWYZuz6hzV62Sd7nPu2LW2WzU6m9+BZhi8QGZDqI3U+FIekB7vaAg50M2g22EejYllx
+nk05i+uq3p5Tbes0a1rD7Wg04z7R3HGW2FaZg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ALkQpqWLOhBgpk7c0d5ZntWewYodyVHDwuRcIVscRwgG8EeGtK7MQuVXwMIR7VqGVq3KdQBpmJsC
/XidiONl3HLwY9GEbz+6vE4wn48TMecHgArub580acPYZJGbbk3a1Cv06haB7V5h+mPNcchDKQA1
4zW7wQMJqujzHDoihz7cd3jb/ZFo6rTyK15i4mRmMr/qKy9v5vwT5R051ry/k4RvtmV1OuliKs/g
aIswr3ttigepZSeLgLHc06GkGFLJ1cT9cG1y3KCIaMmoBajm94TuIOOmTv6G/7kMCxuiaGKW9Y9G
MMyV2BXw9kkmt8ajDKOoJGMsW6obUb7mDT6Dvw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7408)
`pragma protect data_block
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
Cgij6i2Qa2la7KgS4C6AZg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

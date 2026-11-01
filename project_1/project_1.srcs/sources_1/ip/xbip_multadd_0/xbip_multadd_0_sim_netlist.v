// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Jan 31 12:43:32 2023
// Host        : DESKTOP-2Q7AOGV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Program/FPGA/Xilinx/Xilinx_Vivado2018/Digital Correlator/Version
//               1/project_1/project_1.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v}
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module xbip_multadd_0
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF pcout_intf:p_intf:subtract_intf:pcin_intf:c_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [43:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [43:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [11:0]A;
  wire [11:0]B;
  wire [43:0]C;
  wire CE;
  wire CLK;
  wire [43:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "44" *) 
  (* C_OUT_HIGH = "43" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_12 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "1" *) (* C_A_WIDTH = "12" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "12" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "1" *) (* C_C_WIDTH = "44" *) 
(* C_OUT_HIGH = "43" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "xbip_multadd_v3_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_multadd_0_xbip_multadd_v3_0_12
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [11:0]A;
  input [11:0]B;
  input [43:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [43:0]P;
  output [47:0]PCOUT;

  wire [11:0]A;
  wire [11:0]B;
  wire [43:0]C;
  wire CE;
  wire CLK;
  wire [43:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "44" *) 
  (* C_OUT_HIGH = "43" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_12_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
MOhCrBYAFMXEtDyRwzFgTnnXhXgeojmsbM26FT4R7UMfQkEkmZtEnm054+B41nniWmKdHiWEqc8g
9py3F27Xgg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RRUPvuAcDJ+G2/rjoTQMYG87udfAXrYZpAwFXLCAslwHKAs609ZyWMrxb6hvUUpG0pheuXNit0BK
dDO0Fli9sQwhVmHwceW7Gb/9GhDoSbVaMGZSggpjtyVnBDpEtTn7arpQrH2wJ6ql0ecnYy3Bq5dN
W8idWaT/GWYOKFTz2so=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xjkVTaVp80JsuK7HkxXQ1HWGhjoK9Q7zkMH/4jarhvBNfvp/2gGCzE52pTD2iCTHmu+EIM0o91hN
z3pHGEn9xQK+Ue/DmSEonyHOVhW1BqCwVBYRNCgqn2NLiQn81PY43y8SovuyXrT4uhyDU1KJHEjz
YRK3XZjkMFpb04ordnH0osxfwqZrbqlK3FW0HIiQN09+viaGNn+WE7Fclm9jD3ydKZ77fonOtGWl
M5F4kvlzWTwwJD+zIz4gEsgcigc6zzOSrccAT7WrXb2cc/PmlMHYezJLKDMxZk2Kh2CQM0WUVo1m
7kmIKfu5mGaFJZF0M5gqbL6d1lgmS06o65q0YA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j5XcF/NXB1HcAPJjEPFUhAd1ZcZI4qrG3rY2e54o3ZskodXwpAwCstPbY8PWT6Xtwn69srUAzIdC
7fkafHV6XgW+FUf+ZNJMrE3D722p9cL4PdEg/2XbLmLbSQYy6UJ4xFGqo9uqv+K9bKqeYahKaqmp
+W0OQcaC7Ff/DKeQk+iUBFJLuESBru21NkU7sm1E7Wu1nnPOk1QOx3DQIIFZ/0/pHVF5oR7xV1pX
Kd3HROHV8Bjx1Tp5Y4mJmc4D9DH/fJooRm5gsEODn/S0DLjKpqUQg0yKh0uoZyJdgFIvPAmSPAzX
CvF5M1+2Rp/pYflcoub6m7gbSpZBs6mKS04VBQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cs2AvUr5Yh/EIp4DdVikDMAG7V1wA8ksFrOHepBihkgMhc512TaoxKDHFiOzG7BmABtihlejc0tE
9vVyo+TNgHyupc3rLh4dLLhrdpJGG1k9N5tf0apjYzZUCos5QeKT6jpmSCnIpbkLCPyTUnUfCNcD
zr/ENypvgGvmA/QPCXuewrGM18Ll5+t5jDyU2/4RoKX4i/xmSpMGyXOv9SFN5+6r4t3aeNPUKgEA
rP23oJTNKB5Mam++fXsvp/Us6aNP6BpRuhBjXu3kzbew2uF/F0yKkaOBdbCAuvfTD089dLSIUYeJ
dLB6CVC7hhKcYDbQYVRZLoV5umYXRHqf41BD6A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FFdUWPg9w7JGINPNIC22Mo1gyq2n2CX9Olh1016BhV8S4ZXDi9hKWho4b2qioK4EqxC0zDlOiCD1
xDHvYJBWZsi7tEIXzh8ivOSV42NiFDRCfvbtcpReTbB5DWNKJVr94AWGNbyjH4JLM4tfyAd3gGeE
gs5nexmFbi2831ie+dM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
REdI6EpXTQIMfwQj40hYgu260Zoxec/DXX2zQVb/GfSoqEYeMs84LgiGgntVvKTkV+v+gD5tdwN3
TTBdSu6goLOD6NzuAqcEywSEPBt6YdYeXofSUEfABjeg9Jhp5dTGgplej3riwtLYiOLeADNESbrU
CxKeajyRqYexPaHiNpON1rhwn64bykVv5EXLeQDIRNuECuweTppwslpI/BPa6oJjZqQFmlRjpb5X
APuwceXvvA69lDaSerNY1viLBJsUERRpQSp1AQS92W7NNj8wvtrfY9bJZzccvr2drm0iFSUkGCyh
snbBeu2lX4vWhzhi7LeXg/do3FlWPnrQ6Yw5ag==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
c6vvmDNvFgIiXsg6mo+DMY+gjAhnHs4/6G0+R5AVzJTuRgf/GjKhV3mRpA65h73Kj2HrI+xbCA9x
3LlvQsghKBaEFX3qPKmFox5hldvwaw7LR6RZuEpRkK+souHwgme6hZy+pmx7+Qhhg9pJ9KauN8lJ
FZOvpa+IeifbSVwjggl5bQRGUwcM7hOhiKtXk7Vs9bEfLdb4ewWnqH089AguWlFodcQInhSAy1LJ
zAYRjI1fpaGr1ungVyFN4aALKmpJ474jzNCXdMA29VLkRSUO+u6cVIg+44fR+cGkdbHQg+xEI3Oh
gLLtpC9fPQjkPO8DWlTSF6Secb19XIscUzUPgw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UjORQfJTUE0VDJl1zD3JeitHJ/EGlOqSA+6TdDmVS5hOUxUuJvAgnSHGRDqzOOOmPSeujzeJ6AId
1Ze7TZhC1nPtV6iGpIaEim7tUUQr8vM8Y6/M+VDsSQUuIVCNIpbGPZI++PBASoYZb2ap20Jz6krT
jndLBZXbus8F/MCs3wCSSkywqJIIje+RRqOXyEeYYGMSkxl2edZJk4wIx8so3ip74PgqYuTmcoWQ
bVEZaDm8SwP+ntJWKTsneX0mAInryIFErbiSYTZgN1/1Zm2s/v6HY3/1AWkS3dgCjsU3TbjnEvdH
+h51AJ4Tva/HIlmRbCrZrgqpVoaLJyeMNt0t4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9312)
`pragma protect data_block
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
ZLMAgj1eDapaED1esXJmtwSSRxH4
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

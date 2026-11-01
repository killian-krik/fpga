// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Feb  1 08:52:37 2023
// Host        : DESKTOP-2Q7AOGV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Program/FPGA/Xilinx/Xilinx_Vivado2018/Digital Correlator/Version
//               1/project_1/project_1.srcs/sources_1/ip/xbip_multadd_0_1/xbip_multadd_0_sim_netlist.v}
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
bdwdWB+kx93GfnV09zplgg9xbC7jgTtqsa1Al6wJson4Bys4FmSazpWZAJg1PPH0hLwjxB9Ile/3
pReq4q7QAVff9h26XVUiS2owN3i3wj+R1IcHOISTrKxzNqWyvdY6PsBI+tjbRCv/sv4x/DGO3x4j
W6tjgwjjVLd/oPD1m0TPn9zAim8lqbes4MCS3zAGqZAT5hqbJ3W+act1QRytji65FxhqX1q/6/8E
smRzAV1khCLBwBc5TFw0U9HNyqe7wtIs8m8rHagn82oX3zGBc6cuDUVngpWVjpmeBwYNesTcAvu/
dF1rl0P/BLGMENionNToNsP5FnX4t5KwX4zskA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wPipEzBBeKPyu6XUHutyBy6uxRBMFdQGf7yywx0yO3Akxdfv6Xx+x8IqAGJ2OBJ62Oo8A1pRFp+z
HbjE/tHBUgyzM+KQRBNXzJHrXVTUr42lidxwA6TiPg4kVMHeLUs5f/N7s9FpHiQ7UDocrT1+Q65Y
7ZEL5xYxKVX0EYEns5atUhb/+3MKtnyTLV+r8L6N5+rB/K/HZOj99DdrGxQe0PCB8WNCQdfOlMSm
zHJQBIhqMI5jz2mNfNghzIxNUkbkkAr1lrPNWErwZpikVjABPmqSV6XbPIvg9WTrcPPhVQDJ5Acz
l93sERHQGtVq/Y4l0pFqdEO2u9Me+VSyBx6K/Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9312)
`pragma protect data_block
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
3ovPsYO8Q62vxF+7dFI31/5RnNhc
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

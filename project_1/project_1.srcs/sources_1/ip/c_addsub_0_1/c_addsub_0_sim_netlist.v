// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Feb  1 13:41:01 2023
// Host        : DESKTOP-2Q7AOGV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {D:/Program/FPGA/Xilinx/Xilinx_Vivado2018/Digital Correlator/Version
//               1/project_1/project_1.srcs/sources_1/ip/c_addsub_0_1/c_addsub_0_sim_netlist.v}
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [43:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [43:0]S;

  wire [23:0]A;
  wire [43:0]B;
  wire CE;
  wire CLK;
  wire [43:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "24" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000000000000000000000000000000000000" *) 
  (* c_b_width = "44" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "44" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "24" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000000000000000000000000000" *) 
(* C_B_WIDTH = "44" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "44" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [23:0]A;
  input [43:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [43:0]S;

  wire \<const0> ;
  wire [23:0]A;
  wire [43:0]B;
  wire CE;
  wire CLK;
  wire [43:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "24" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000000000000000000000000000000000000" *) 
  (* c_b_width = "44" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "44" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P0HgjTVlg6znIu4kl8A1lc9aMIzkLnzZ3SkIDJtGlWcG6iOereNRcA1XBe7MyA4TPFowL8RdIqKq
+EQOZNRVc70PG2tTkfggtKOWaYZu7iUUmgWHbn59HJ67S7YpcFVGjHSWi1bh8R2pGsn+QLzx7YGO
xB85mS1KA0XuPdupRBuH530EbmiaZpVFdQ8zIyBuRYk6rv9J5c3mhdw9+DitkBPGH+zIORCdi/ll
bMnL3G5YhprllMR+AHj9M9k1gjpzfN4ZwEWtg6e5+L/g5SPTr8DAFS2/zgXq6sC/OWaDCBMLaXKh
xTBTNKW2/DXohJzVLACx59VsIwF598pnk96/JQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3UG7Bd+iKdzGViDNOkHzAuKaUH8h3lMGToYYGIk6ElqworcJP+5+vfyWVe1e3+OWpuB+CQhubNAa
eH0n+zrW3z/Behq7JwLX7APjvYoV96n+GCiDAlJhG+rSNFW+LEL1zvwOiazSrbgngx8VDGECz2Wq
xy9iywirvb2No7ZI3AOZEsMvzq1AllGnLZA527pOJlEgdZnOKoglrxeO090YPUiO7vXFsgcOBnzJ
LdClkD7gFUILslBHypd/XaIjRAh+PeHZ/MJsX1NtZZNT6rkjcRrazgmPZ0NWv9wuVa5en+g0G0q5
xP/GMETdJA7GtjqVvUW0FwB4wAZ0xKNWaBJVpQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24656)
`pragma protect data_block
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
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

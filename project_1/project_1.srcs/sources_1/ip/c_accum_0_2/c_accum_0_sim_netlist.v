// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct  8 20:52:47 2024
// Host        : DESKTOP-2Q7AOGV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_accum_0 -prefix
//               c_accum_0_ c_accum_0_sim_netlist.v
// Design      : c_accum_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_accum_0,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_accum_0
   (B,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [23:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [52:0]Q;

  wire [23:0]B;
  wire CE;
  wire CLK;
  wire [52:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_width = "24" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "53" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_accum_0_c_accum_v12_0_12 U0
       (.ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "24" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "53" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_accum_0_c_accum_v12_0_12
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [23:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [52:0]Q;

  wire [23:0]B;
  wire CE;
  wire CLK;
  wire [52:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_width = "24" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "53" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_accum_0_c_accum_v12_0_12_viv i_synth
       (.ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
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
XEl4RGRmXr454l47c3QqGf0VXqdY7RpRQvT23l8+HNHsx7bUfIwCiowVDefjF43KR3GTlh0fCuD4
P4iUHvGY1Q==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aRmFx+Z0JxGHcSHl7if4dJe8Trlk0l75f9SXXl49d59jxtO3roSVumb3b/Y020ze4m+RC4Kvm7na
yvn9B+i8wpYDSxjYSvzO5H3YE15N87LQ3i4MTVvkVnqWZIsrGsNkUplIMUL/rMFxzEudJOIm0eyr
9RqIvQaCA5jrUgwFYFs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bc8IMYq32AWHQRie8XOvS6yaEd6rN3FWQyTDoUHmw5W9JwWNiBTD+E1tX5wOu6fHqS75s/7wJtY8
tlLjKYb0szr7LlCppgRCvFADs4govu+W/3olKKxk1uJSgJPHy/ltWCmP0ubFEn/SZFHCe8K6V1Tj
wP2d2prUlL1d5+LWRp319nFJAR3lAD4ft2EMNeCHHrjX7lo976vFRjduaRrP5aFNN1cI1Fiphkci
XTCHJX/9odvA2+/EXH8H4c2bxAdbsP+UMKGxII2QU03Tlew/T2K/zh8pcw/3piFlIrqHXV3TExtH
59SictN0m7ZWtXb0IPeyRXfPzW0OFNZA8UU8dA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vcAxd3yxngOXKjwNmlV32VnnCHSx9syezffYLUYK2JzyyLeV2vAAxi6wB9Hte00/S4GLu1IjsG1v
DbqRt9aGDeBkwpE/VukTOIFsfFz89zN8Voyd56uWXSzWV9tMKny1B5lnxW7MbF1efCvxv1v6zamD
mmi0O1ksugYnXgYw4C9TakiLJ7x5SHHmBzW4zJje7PrEGz/mUiuTAKCCchWNvNtpyI23jtleq0lB
a5a0Y0Qk2T5709S+Fl9QGFnfuxztf1iXctsBTudyGDRcyXg8vaH+gJq0/QuXp/bCZ7pOYvkmAkIJ
yQqCEKkLPWIiGhi8uzeNZ+95jRV+zSJw0rLpmw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sm+qrX+gtlIPYpkxrk+YmPC5ghqWfhBSIDe5EHjt7sTPfukw9AZwDQnud6PmzjqX4PpwIQnh7hkN
TcsWJYU7ubEZFDxkjFbdRZbPS0qnxcJutJT4CWo5BUDSxtwh9mVNUlBkF9NmSk+AffoZch8bftx1
rDtXYSpFqrpsM7OpuyvW4YRoIrX822ZFql6gniL1B0nWcE3B30ci8eHl6EI5GR/3Ikb0CU4dANSe
GjxwXWqqyk+T3erWS1d2yOtLzQ/QtYnbvoJQgTWN3LbTVcnyv/Rw7fdtXUY/1mfygrzkZuej9SDp
KVQTqSMJ6AZZ/7R31TIj6bBHeiTYkjSObjCnSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fiLLgodKzAFAWD9ZGasRAOSqnpajR2q5K1rqZkWksu4QsnsYwf8C5nwz36/mPGyiZt/cABH41jWC
Khpoa1J/pmIuT1m8JJlBSiXq7JwFihIeCBNhbxkSnUnSpfFot+6YKRTCBV0JKmiyFV3zeDoNrQSg
xSku+X8ag1JlDyYrkBY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LvRRSYIGTiOnSUK6q8TMmL9GyWl4L9AD6lrv/EYeUMENPhnso5c7L9UYVwB4kS6xa0z0ebN3SdlR
QHSOvEe+VWcD2ErwxnXYP5/KGyObIqKoVMl1ctJpVSnsclQNOQalKRie6Togsy+FzakHjlYxQmGa
ejOGDQpnCpz5d6/UrJNHnliLH26hYiZiLZru5H6GEIM1E0rDwTMVPpc4L/oesN7TbvOzsafiMbwd
phCMyz2wNwgB3cCWpT/dbY89/2+mhCODAxQGFAaLNn6JOn/SBzbwTdvmOaX0V10IIlzFQvvDZNCF
8XyOSkDKF4W5a14vg5uZh2ZORRJq3nGWvg6rMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X8JtAL5VbqfL5q5NvXqC6ERKuM/kSHOSkKxtw5YKCNRseFdzAoBpMKPV3CrtJZbzdI3txtpVn4II
JVTi6uekpRiIfkGPykmfy4+nUEfo2SJigaAsRdPdNt+JkmaSlBZPMPavxNE2xe9gTh3R08mam9X5
iXuERTnFbWOXYS26x6C/cXaQNM4WBBLqKd/VnYnluhYxYNo8uIWKxcC5+hnR1sunm3XZEsq6o8TZ
grmLTjZizreEGqj9x/xg7/nnS39n2Tj3RY0MS6nvxMpJMvBwIes3NSPLZeeplId9L7gFDFtJJQe+
TI7yf+qQo5Nti+C4XWW78qzQFMUgvwkgf5ZWcA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
c3iJpf6F0E0kutP9Ii2RyTRBu8xTTgWQFPy1HpFTydZomxWvR/HA0mMSjsjX+3oft5BqHnBkWmkV
KdYSDjMlnz08dA5rEWS4w3++4298Ion73EgfBuZinQ1gv/NhRKQYvqmqyHpsbASP/zCrgvuCQJ5x
bz5cQQX92mtfTmUcnINczOoz5LAjYe/TVoURIXoP0ikGtuk6zcb+/eYnXrmU+QhD5e/gSSx2nLPt
eGZ+CFfH8IVFtfNDvtKpFBYeLcoAyP6jFZNpBGlK5tDf82pn+zlOfuM6y80yGv0lXCDfbnzKiljE
XJGQGZu95xr76kkyPt27TkcYKMc7OWxqiAqCLg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35136)
`pragma protect data_block
s+dI6s5oIQRZfxZeOK7bk4djizF6gF0+QUgClFeC8oDLbofq0S5RaivrICNFKjY6WFDQrhNxcU+P
H3S4oh7D3diS/8f1TIMeqluN/7O+ecKv+0PU+rINPQhKfCbnEcoz65JzbVjSwQE6uuY+PLbYwvXg
IB0KsKlQPE93VANCSu8vmI3q9MtdW12MeEfqsKySMKxE5QsT3FuKX9JIV/uMDkb7Ugbd23Wg4bQr
e/0b5Jj63/mfjz+O1pmgHJ1/D51LF1EjIPx23RmhwloAU9hKhLhNsxXSqwy6uI5hAb7+BEvbiI7z
b+F2qN+pmMsoIPlB3xiuMtexT640Jta5mhNYTcjC33MnjKgb2YKpcsxfBFAFoQYVXtvd7wiPGiJX
YxXQLKWb5uYY/1qwyTWu2ruE5W5iRCnybJqljKAX+PQZMrZJNThqNsTxesnJ90SP9BCd2cIhTXb+
eeJHrnpoUx0vbJ/EdudNlgNTH7Hw68Ist/d1PzQdT97A01G6LD5IoMjJFBADXZZb8wDfJcuvH1DJ
o6KtgTzyYWRnQCI39PhEKwkVW23NJpqflpFMJ4THYrSbAS2N9iT6VLechbNOlgSg8M5Jpaz2v+NR
mtE4XsjSjpKYYKRSzhk3+qdAUM9g2uhHPJxC6G8v9Zc0lYxV2Ntr01yPILljgffnjuUBCW4cIYuF
rfqkcIZb3DWdwZ5vJYH5QXer7N7bkfvLn0fbjPia2F2ZpzpArcBL2NvylgmQ6zGdKr6oMyQvvztf
FA4tKTfq3WRsqT+2qj6EWEt3fqK84k4oQiy/gyckIls4cBDCjWOE1qY2kFhNOhKfLSX4AfdlTnXE
fveEjrD7094moXavRmXzkuJ1tyMYGDLQKaS8jMpZwJFPn4yymMSTFXR4xL4KTaHuM7/RCY2ajbqT
zDr9gy5v0IaIgFdH5oob77WERm7+1GXkB+FboUyF5kqPSFNWV9KdLBn2fldrx+DMsCUePKN1+k5X
xv0JQDuRFxsNKLZ/4Zjhgp3E+QBuDtQN402oEu6rhw/3JauHA5Udpuhr8SReAZBS2Z3O+rPf0ENX
HXuYnD9eOxTMzNq0xobKLxFiWyjDTT+DvqxnJ+JGtcVACUFIa6W4S8KCm4VkUAHM+mxK9lJ6fKHe
N2Gq5OCNJ8J/NTJNalD8akt8w4vVKVlgQGv1Jn6WGddBhp/jmV9SqhrXma07rP1MPY8nYyXlAD/N
aB7UtF3P1iCUuELS7ip7JGqjlMGk5Nj1NhfHuHYeF1LJtg+ML+h1ZHzoGy1gjy3xamkZldLdheEX
HJJ69LTpAbzyrN1dHsXicjX0N+I/vGxndKriHWd1Zk+mJq/XtcpaNFgM5MYnk5REybAZecATQwYt
gVQEuJUq/70BiA4Fqzi3HUN2h4eJTrCZnyRTOEE1SlLWH5iyXlqBJPX5bVJYR9ne+LNr8Yb9mDeI
rQSQMPrS56ixszx0WuOC3yNCuICwnWgokSYVOtvAEecX1O9QqW0hCBBPrQ4mT47q7J6u7dV+PPcp
153hPb7wSzGof7jdEeVumYmf95JZhvFrohRIzJRHeFKv2CCTDF6wVWBO6OJkGf8i1QiThDAXwX/9
WindKA6/yvlb/TAynx53FNYCGeaAxTU4ekPev6O33wLjz+hXyojARkrG4bKaGpqI9tXTEu5lu6PC
CHh0UC4N6/1nyesuBDns2v7MKGShfOzWtIp7B5zmrd6ruZZhmYT6N0U5ujVb3WckY6sshsCILWoR
sW0s+jvpmYJECs7IHOBEtE915bmZc+f48UwLnNGmBpVjyyRy1atndANvmZfeYfBuPKNJ82zWZO9+
umwj954yXGvBhAHzOOvhu/2GVYcL6m+inxm5fvPNf1PwksBgXyDBLDrv5J5ESgsK5caM6eLoskib
/eYDT9krU/8GtATjxhN5lIiIxA7gP1GBsK3B8+Dp3NTdpZryIf3uXOBKwS7NCJXVPvwmF0t30kdr
pb1h4NFp0LSZ5Ku4r7tavXobsIqokj0qnS0U0O9s+r+R3vP4ugScHRiHE3sXZ6e0oSELHgp2xFGQ
2qoVhW1NEg7mGxERq8carcv47nfk3co3DWU05JrxY/M+AkdveFfUmJnaA4UXCREUK3nWJyMO1mPw
D32LcWxrCMQZ2iRJbAV76WfUw5/ZOqrD7xqk848h5tQJu0OCZPk/LoZVIsOwV3k4Lis0ID7g64XH
eEVjjPgLVLHN2CgKVIung25DM7p1/0QaWKNp+dmWO3W3yCEWS+ZMkvXJpwpOgSL7PLG94pzZTMxp
NG+ob4aU26HcX7MzfTRCQIkBDgJFGLVF/05FSBXSD3KSE/Nt2UB0QXvQtsmV3fH9oZDVb893ARV9
zKsxzDE8JG+RHvFZYAU+NEOhbYvw8Opgos/huJrhw141dlglhidhLrWHUii4HiT2gfOZ3YpD8ibI
GU6g5l1qHyGcNNZEZ3+mTAHbkFxeSCezt8IRs7+Av3pMkIa92Q6jCy5lTeObuW3Y4o8xtrtRk9v3
gjOsbkfAFzSEqr4kmQL1jffL5TvfYapoSxLVvuFfzb64xKId3hPhfN8/A/aMlR/m+xscAe2X5upN
SDQz7D+iLtDmRMR+7PYoYxdjclU4HFzPt/f73Mf4ieRWIfORBXNeNjthi4KzOsoDFv2pCLR7m5Jp
7EadW1vGkA15BPo3TTQwcZnsq+dR9Rn+VUUuJU4CeDE8+0JtQ0Qex0mVVDsH0ELksxghR3UcO8eH
/mqNIr9323+aQmTzs3W0SyAdHPqN0HxwyFxpr/eSJ27X/jhril9WzIvKdEqFa7ZNdbGNCj8hlc4K
aRgrfiBc/hmdV3YRybzxeYVueGcoWKEr32I9rJRidK46zbZWTWkeiRRAcMw+wcSS2e5TZDJpecup
1WJ2CmTLtKgKtJwZECl7g7RMemW0q/TelCxnit+pMw612OR9mduyEuAPFNNRC6ZGIvgfXfDFDbpU
UPpwM5LpmQpljEBsD8WIkuavssqNZ5KM1Jrh8vozBlHEHdhfo4nDd0W2QxXGPwVrCjwbF7HRz8Rj
gtjzadMg3lGH80ZuesNkMyJpoyLUG73FJDSd2D3bYW9C6bwXA8IbA3kfHcxnpbyKoZQ54vmrf7YC
kZbExUf9SrWIhC31gkfpeg+ZEfNqtVJZV8t067erkTJqDulnUwyn/Ey+f1KVylF36MqqlGuIMBG3
1HUF8Au4PCRlQIY/7VkxH6T+4ga147I4ZKBWcm9LPrEI1zZfSoSghQvZTQwo4ZQZpVyumF+uGw0v
XmFug8jYZGNN9ueM0Ped8iDaGkBfC6u/xm1AY6mpS8q71NEX2/RvE9PdfjaKGSM0ZeJFBej6ORAs
aMO8/1c3VLDw7DB/ZfC571gKktwVDW/leTZgXDlycuY7Xbui7Avdy2wLhtn7GTdmyAOETTKgWsII
GI6Y/VxZPirkBOGhiVYlkAEQADSDmjSXx+MuMKt3szlIcc7AnVptBKKhNaIGFsHMr4mlQWre/CWM
WFwIWTYGE8F3R1fn8yu7XGZWetm11/qIF6Iu3NYwdf23hipswOpSmsxrQlOFGeaYOu7gUoSCRcp/
jlI8U/8IZVrbTfOvo5Zy1+pD53IkXknjRk4emeiUOzP21BF696ejsjvyeaY43x/sKwfMJd60R6lM
tIg/Rrt3gLMX29aQPdQgAMtZ5P+a/5g+zXt+gNxCtQB0lNqJfuuNrdALp+MObsA6VQQMXThdJG/t
FIvXQ76taIgTK4SQprHnDB0tMkOM/N3e3Z+HXGqHq1iLWz6KahjDUOlYwVIPGRd8fOagUx+n0ulN
GKG9zBNfnsizcbn7B9aMua2EXkQpfH8DTrcPBZ+bDjanwg9QCE7sgMu0XGyfW26ZaOrg5BGhQyI/
F5/6FHQ7fAUtlEz5Cb/PN1T0jpVawIUhd17+A85tO5k6EPCZAP+PLTyWSMwnsfPAs/bntwS4pYk/
iAYhOzwp5QQyQCRBOOdc2owO7Ou/p5s3sZdkzmRnEQuTcTqEEzxBk1NNEt4dUG4kQczqWHFzFoEx
Xx8x/XyqzXybetoQx6YRVh8qXaRkwEdEmr9ENniGx9dwPRBzBl/6+6U2WEbJbxMONhgRr3cLIUrE
JIjkQYG/UKopTORLPpwCzRWnfHXwtJo6iEGZPZCSR3GifB05LfmpvIaBfUwDQA7/ZzcEJa/BZBTH
PCX5avSBA0aoqS0ze6naMdH3mNgs9JEsjtLByJathwURjYe5B0osfulMvTNr5irX/n/jL1mPKkt6
TMK+jrB8M90xuyJwcV1l5uFNVzk01e0BDPHaRR5wUTyieiQLFehH1c9K+7qgbJBx4QHFsWfJknqR
zVgpZMu0D75KlBD9zYtk9+4CDkmW8INNHYYkpZzV6COV6fiVdIrlyfHUy5KTj19gecxTAusY4JEz
DRMy/D2+Y+KfEOeJC4NTz0wt8tHwyB8ITpnV9h5JO6i+9i/ekECmaJvUVza3m+TqxHsQXYhv0G2q
8C3s4sYHLZZ0TWD52WkuiOf47aInnqr42XrcaTKQz8at0kReabC3ZmTjbz3ymGQWBnr6Fid+vlI3
AttVfMKq2dkggzeWmkRf9ZCZgUYJyOE4L7MO7qeAhSKMOSNpEfI2Pw44TWfVsoMkpqlVjj7jhEzx
2zxexDE///TacjJI+KrlxemSHxruQFxutWu9CGL3nSJQ5kqugjiS+HvU5ul5/EFvkLatYHJjNFgL
n28Qq2oC5yj/Z/HOlSNu/ezW8jXjnOnEc8EVDjrbBcu+Sq0CwnXzVSldFdm/GXM4snye1a4obiNh
j7xKRVDM74+1JBFk+Uzb2IfVW3wdp7SU0SLJnV7ltvXDRfm9pNUVtXVf0P27Q3zDWU+sT8mvQllY
wdUVZJpsehXt53+blWQISabaI2aouyXORJeZtexC8fxg0C6x0iLcbBPnYZAmyUdtkiKwSB4I2bgk
UEhrP1kziHWrVx4LhEuns3eughwjsz/V+tvmPp0WQG08Z2SxyWQLx7ygH+Bp4w2dHRx4gdo3in4l
/Bnjzje5zqE5Hxb6jOn+2T8gDmduFdkxEYhP/kYHfws7PLA1GMgnYAA3idhcvL5xqImu0ehS0UX/
0CKL80quHA/lajfw5WgSyr9xtPyn+013NYct730H0DRdzMDOA2BLffrjDbYVlfOwbRQjNuBqAG7n
eIIqMRqYcOoKhB9ivWsZh2Y3ITxKfshJVR3QWQ7JF8SjKIIqVZfOP5U+YQNBBY8US+ET4bufuGgv
uX0gHErP3+zzlR4qSEoTHLKvuAgtNs2Z0phJs/UhH2FvKZzpOLY6TyeJb75d3Ffcgd5h3WYbBx2c
QTVYDtTTx86fTwbZY5wha3OhT0XdKsZn8OYe6FqSStoHCw+SJaKltb1U5SrwWuwYP3bg/vEJW05V
0eZy3egwCtWg+5kKsYvwVjbCH9okjHsI+yz00znPr/CLRQFVsO5t6fQvX6EpNlcsCdKI6YNinQtb
KCxd/9X4/iowXLjxVDzeMJhHw8/cygPWpCyIO2vHJi/14T5ab9//5Z6JugLVO42Ln+peMmn4xosw
l0p6oz4Nn7wrcEvrHGaZ2rwXku8VBUALmGOEm3pgCbvIatRDDzf4Vy5q7zpSDpUr+OZMTkEvYx5W
aq/70NF6Mj0+AT1dEBZB0glWto/UuQLkSn/093V+k2b1JNQove8pnxprGlwAzm/ByYxGbxWFhZA3
hH64fXewsEF0TJpe8nB0Dosf9tWbueQDBLvPgCoK66mpO1dZuLecTJrDQR09eL/MMW9CzOIcbYm2
CQrWkgOWSP8naMKmPKgdLsQiQPY1vi7c87NWojQKO7QQNSeZhg23yJBr5I+CTbt0xogBNL5Tw24f
/o5sBAS+M9r+oVeYmk9SBztRI4OnbotUURWC/jQvsepLje0k4l8pWA/2sFLKac65r36VC5+MYHBt
NY896v/EP3okHStmBD2YHf3GZm+4j3r42wNaJNJiTvZSDoIlyN96mET73xI78eQwR+GO6jXucqUj
56yUjDHrN35mAkuoyywOQoZO6ETOFIbYpAq3HkEkTDCYy/vN3rC/7PtvARbZQSvZheoDXJ+GJ9V7
01JghVeiZkZClmGSvbG/Yj5YsxO5NooN/onPZbK+QaCjcGL/yXMQonqc9rxBmXsiJQ63RWcIlyvy
UEQ1up33y6fclB8r/9fPJNZiPAj5B+8EJS59QE8RWeJ76FlRv6LUfXMF0D/k25/8S+FSVlbZ7vwO
fBwogbR+n3UnVQI7KwTbhFmZSQzx6xA8Eotm6BvuVnAQZR3w9BPbn4IKxlSd4nBAtgNk29kNlRL5
AoKt1du7RGzatRJDJvlAK822/xIZ73WWnO43QqfXYRc0Zblg2mKdVKTNQe3Eibd7/NNb0J+6esKM
AoZawMsacwAmTnlduFwBkOzMZPKjome8jEL5P1Zr9Myi/eL8xOTatYvfWDhlNKcQHDcrNWYGg+wy
7GXZsmyfSM+P1hRjw77JGqShZVzW4wOoqt4t/hI0ZoXyGttyNOKWG5FRnMvCvyo0j7CnjeylvqhN
5QfzGxSXrv+IbQrShBoKUIVajwPRfVGxccjJX43UNyQ/rnsKvR9hBk7sTrldyLoEtbfkBlP8xsBj
v4oDmXezxZYDTQdCrD1z03ySIvxwRPfLAFGhoUPvkY0rI5YKxN+YfzZ65ruI/8qUXMbAM66XicCZ
tuUf/wnRy388B2hq0fjuxrEpSuswmWDruzS0CkXySibu+0gbsVvgzXKBTEtAHOkBygWDFtj4EJZm
twXi5n+qF1HFU794ECfAtcDyfuzFYEGhJO3VZXRDwQFvpygLYcHvqK1FY7e0R3C47lN4HvlaaiYP
WiMNsFoo/wjMC4UHTvBqGaAO172wB44jP+Dxzwxk9MSHzm7vayN/TKQ6F2d6rCoth30qrzLhnV0x
ZK+jc2mSSUXFptX2w3PHqHFROGKgl+DviTPE/ez/7qn5rQvn48NdD0kJWm72ww8rmwVmqUwd/Ulh
v0BTMLEA9cp/ZV82agA6FqdZ/O3rJyJi6jeVM0PiV6T6hZ497Jv+3+xQZaHd2Yl2yiWktjcDVoDk
KTL0eTvaxF50g8OrMCLg9WiBhpYKLh+POwb60WzWBZuqArwf3+S2Ye6FSTwf+mdhPRh6WpucvNvk
sAcWfGfMM54hU8Ltuc/pnGaHO6B7jpzfuLf0gqwrGwbB0qzU9XwHWIes8JGIkdmQ4/thUQC/c3tg
jsxQWeG6f9q43EcVaP3APTZNHoKg3WaLbIMAb623xTfizibMxrdVKK7QyhTMRACh/cFhbr01yegl
T6WC8lGDiMId085sDbWAzeY5KcwOtuDRacqZLLxVX4V4bw12TFEQLXVtK4taEg0xwJnoMnFhccZe
fF2UGvWyb9WWI4/uhYq1MEfMJNqbPxd23cKn0SDKCdvz0D7hfa8CsYCP1vfRn8GviVLyylXRR3/e
Mg5LO/xjr3BniTKs/8QLvFol2Xit1D2jznszN9DnfZAf69rG9fkfHpfCVDDb4GYYqEa9iJ0kxe3C
MlsmwRU1cBFhkQ6xVLMyNsm9yEP3TB+ezNjbXTIMNDD8lOVle8cgnMNDau/Ck4LmBhWDAMaQ5teH
OczEtaSg/DPa7eOgfUpjVrdcVcRmECOHv7HxGhUc8h/o3eJ3cFoChBU64ql3FIkygUp/0p2P9ad9
5sgWZmo2B8CSIT4l0lQU97tOCaGNpuSPli31r7wx/un/Yzsn9fYu5yJOT0hSLsLAdKhahi6GmMzk
YtFSwq9InRbMum14wcZmDNGGwyRv4PsuEGdcrnMm/9PuIISS5rIMUHuUTsWmnDAYkJa0idAREc+9
bMuJYzDlgSkGK4+HcjAMaKaSDK+4cWYkZzF7dQH3rqd8BkEjuYB49yc1Bqk+SjuEKDkQfQXl+eCf
NH+KK2X7tc/OXZ+k+SuXi1wB2GzSLVrychlNYTa1ExpH6Gq/SOW2lgyrpg9JLyau8dOwQ3l/QukO
ga7POQimpyr8SEQyOoo7s7Qb3dRp2F7EdYOV+FgvUhFdDdo1EKu5e9tFQoE9/4vp3j5tOG2gv8sr
zkaRnoxR4eB2bdKLa1JkyzqCM6ptUT/AQkSUHN73w6+TQMdp5bfEz3kw8f5813AbY5Dk12ivjHw8
9EjxxiJIY9KNCbQCszCKfMRX0B2a6+CvlXkvg5CICQ2GzV2eJn0A5jXomdHC5yPSRNMO5zhDyNZB
sy2kIieK7AyfVniBAq14h5sH+p/F68OCMYCw+H8UAVlt2id8O6UfE+uW75Jkq47PlPt1Xsy6jB34
a95DzlwAzSsxrLflMpeNhBisK+IdrEr1i81SW1zKCnnxm9J8dSX1Hm77EuYZpqd+uLffb9bNHrcV
qyY+5dzsxy8tVrR7WDZk0pwGGQhB7vgN215kFErGt6EpPCdoCD7jU269eS77t+prXxIku/zIM8lR
Rg4c41WQqGCwIl+C6fPZ9OSc0d6ggGgfCQM1PTM8CsgJZoVmn6g0MUFiE8yakMvmnzhX4g56eMkp
/mhPcfOVVW++NZJlH0V6auni6IjcXasvz/nPhUtslCECVaPtjynLk088U9ciPg4U3od24kIQBFe1
nMe0A2SKOC/tzIjlwtFkANtd776WyUJvc6Hc/c7M4iKZCxjH4U/gb9/MxrxkvWTtZ0aAPBGDgxBg
ffSGn+jbLC+KQATLZ/fSQlJlizANR0xTFWetmsYi9uc+V/g3vD0aFGmEStJX/BJOqXhdfSx/iWKF
bv09KD+JkWb4uTCF48JksVW8w5zuWbuZ2EwwK1iVnwTQzSLKMJ0rMKgGx2nXNjUZAZcH7Z5dE2sz
SGcXvxfqvnf6jHqR6tqShe3RehyBR4Nm5XonkVu5fNQ8fuSE0f8qrh4USn9EoWUqUCbfxWL5AtLj
G73Uc6XIdONcV23k5qNNq9IPSqyQsuL9SwmqAHBTjvVWT4a7rUH+9BqEbu3g37ZxlhG32bPO+W70
phNYUfo0ESx1vUt/CdMNsEQw5ZLtHXSvfqoTZUY2vmPkAfReTl144D3oMiwnRivnE/rFpkOPOg+C
LF2BbVz6g8butdEUYAB1brnBp1UTDvT/IAFlLcO9eIxf3jgInjf0w48dFIhZLoRQMCDzYGIRh+Uq
Ns4xS+XwMkmvo1cyR5u0QYaPYkr2x0oMlLqy/SbNT7o0mpVYGVmdbDI63S5CK6wZemaVkK2Uj8ny
syh07WIQpU8SDfXXKflDjFojl6yQmssHCXmMK2Nfwr8m/Rvo+27m3Xef40iVx8Mso0VkNOeBjjuH
3rM325IU7fDL6CIJQHL9A1yvuBGy/DpRKu7ERkd+QEtB9m9uPtHzpGZjL++EmbRPaGdp8wUrM/Ot
3+vsyOqwnLF08xrwz2lAdmOkZ/Ghvkn2DvJ8qlo/dz8jOi36Avdl2cxhFjSA5KXKPSozhtUjO2Zw
h0hbHpB8bL6Si9cX/p6KPxMEBMjMUvvO4N9+IA0vLds8ELMcwPWuJrBXjPZlyUgqQJrBdnUu7siy
bBf4uAZyC6ItLArZS+QAAdHDhZuIn2i7090zM5QyFXwc07d+H3Pj+l/dfBc88nY20ya1SBe9SdGs
h6yKhxSca95IOa3dgyBZeGb7yea2iCm/HpGHpVqf2hrADUEuAttDu41j4Qb5silXNOP3vk9Pw6La
K7xuJiQsl3+jy7NAlvekf0aNFlhCbBJMStCmWWxkpV19tGg0yOHqltfaIq7RuZxRqHbiAb/RDzHN
sdy4FWdCRS1I1uCbWF/QJECZ0+9Y1XCjF3sBACkHDaJjExprYDxP/IdwvDpyJy1Bi++js7+4kodk
j4wkJwIAQiV5q0Q6jQEIP5p66Pq0Vbt0ihNrUd/4VbO66qCkt5a0NRCZAQf7LK4zHyx+Z4YhrJvX
nG45o2X26Uzxv1esWL23eAG9AIBys3W8gPxCUvWDFOhQwBMdopNpOjorWEaUv6zgQ2eD5LYYBAbE
qzPMZ7gJLhpWYqTufMe6c6C32QstJQYIuqcsvBc5xQ1KjQSfT5HXUw6WjTX3a1zjgWzG22qQj60N
wwZi87lurMehhPV3y9T2h1kz9Hl7WWyu310kq2jCm5kHpai9zuAJ0WR0xPpew+sVHays9kuE8GrO
YGrSgipaLM9GcjFLeks1WRbKZ43y8ZYUZMdyzOTJOaridAPbJuzss+8a3QS6pIjxia6Ob0N9U31H
fDAnqqdmoPHt/l/ha+syAopmwRurxUH/xupbsi8nm/toVa41OLN8myTkVzQG5mH00SGUmbo4oXDy
IeUudJIHs7X7/UEbXzDcTob2GHzAzLF/fQspA9zWGhGkqPaMLTy5pq7ywyzIBdqJTC51kr+3gPr4
ianNxxcDZ9H+eEn2Dkl1J2Gnx5IqlLl0eFO1proY+L28CaLHJMa074J57PGt7hYmiPEQge2K2N07
SZOTt1T2TMc2Vz4kQchUkQT615heE27d3BkcB2J/foC+sWp51NOPtN6VYRZVk2a8o1MkdYBEBCKu
53OkaSJ8wvlWFjJu7OLnK85pl4w3Lju8mlCopYD5G0PwDjKs5kuh72lzJEU4OSHz3JgfKXR2BuWG
eK0/QESBx8R1sSdDawuc1OqpsDGzgyFGFl2uy4WyVwAGZthD9Zud9n+0iEO25ptz6MdJhdV7xcA+
NvWGF2Vy4GK/i8k+eTVLSAZmF53jxS+738vDcWQvzmvY8C+RBC9oz6s39YxBGQGUsWHu6iaiuPde
4YWC2hAjiwtT5VqULclpyTR17rp1gePsHGTv0UEuOg4A+tDYfskNc+aMedGQsZ3Z7FuAzaPzK6+x
WVAppaNjtNJ7+5EU9yxpbAtarZlQySxZbUDmMNf8o4yuue+T1JiZxcWYye+VqGqzrZKZ1o9ojRIR
pkMR7OT24AH3une6Y8jyNC0dLwJOjk/G/VFq24FhEw8PZYjBTWVTvH/3J4bX8MWXtCyTEhKI8Kfx
YK8hFTDFBVavZX8dzGfBJc6Qs4Eyc1/pVgaukOL4dd2otTeCmHgxFdwyIc9w+J3eH6EhL8vZWwkx
qYyomf+zmdmvAu6I3WAIHr+r5NgZ+UPyTKyp0+MWXVB8zK/v0vHRSsnlQWsZZ0n3ScsQqPLUTjzT
Z028EGmfHbt3T2l1jSEXZOQQq6l6uYiYlliA9U3FftnFZ+AAZLuYN9g9ayAkAHXX2ahjn/YxtnTz
qBb3b7dpfxEIyN/Jl1GbJxtIgtum8eVNhuWmG7SnCfrYWqG0Cl/XDE1QRSERrFvP8LlxEzmW1+/Z
ESs4r/il/retW/BAzAm+p6ST9NFyR2CCvxdvGm8nevj4cfZ07/Pit5sVXcd5nhgedJL5yKMCXTdF
S3+/u+yGaaQ4Ng9DbetWR9lkGRgsReTxBlDfxTkFNsrcw8dzAFBdHgGD8BxtAZko7fyEjXLR/b+X
tiIV2fcFiD+COyCELCBqCPeuY4oKR4HW0l9i4K0yhm43naVBPPaMXJoB+MPdydPUYIzegAJo9XIT
ytJ9XLhJ0J57qHWaLRruUlFIWQLFGYMFtvZ2bDkDN8YljBjDwyg1yPdVW2PHCgJK5eJ5wn68jriA
taThVm8ebirVbf5cn2urZHG7NZpmh7UH3iRQS9JNfwtgtrJHEJ6N/Wz0tuCIpdqBrD/BzlDzuYPl
NK35Zjc6qOaUZsaVgJDfqtphQ9DTwNqBoxjHd074FMQDZa5C6jesuHVYcnogoSWkh4VUIzgx5IYV
oPsAgAuTw3xC2ac5GCq5TdD65X7WreF5vfpfhmqJWChEXpnpgSM/uooKio1FyhwbSc5FPULEMfnC
L2uiDgYGtiMaD38Ffmh911etOvZZHL+Jy31DnB2Q9xD7IOn2OGSoF94N2ogk37xyacG0NkiFO/HM
nRNSs3ALUsQmaxyAoozxuCq++nAZP/lYavrIUGl+oyHWGpcA5ULAMe/Bam4zRVX4nkP6NZjEEQMR
Qct/hnnIFxC28KHIoVqCdQ0y8Ux9ei8MGhOAJa3yq86ZZwr6bl6kaK7l9XZIf0Roy2WHOIf2kQ4u
PyvN/yg7MntkOV5SEYUIa+yk48WX7cnJNjtVv4YQNPcw1OmAcv2UCUayvAOJuppq9id+OLkLV8tc
KXUeduBjnY5OB5meFijKjVMXrildVrRcaCCpBeYbXgqZnRDCZGgTYe+pc565Sb58lt5dkRTAWt9G
njUQCAWpCISR30Mr+9WzvKodIJWRWoHsIvmsA0PZdqzVoL/Vw2953wSThpy4Gr7ChmqUKQk7kRkB
pZ89zbEE3tiNEbn0LwcVn633qidoLO9/9iQJD0ZIvLOsnzJmQnFYtuAZ6s5+x/EZsZHoGdYdfWc8
FLWBrBu5ShgRs6ofti9EVAfU8+vhzYNTZdFVwlRLidVT0ZXBUMqn4FrwgBW7JYpWdzYgHN+yedFp
yP/ZHhjrK6FJjUKbiofVjyeC+aF+Rxl4urUFv+qKNbs/frXw/JPAjArDeevHheL8b/oDsDDe5D3a
W0T2wXayWk3DMGeBkYICEn4HLlSTUYX2RlPpLZ/CvA030M9S/6QGE1lMJ1X8KfjjR+y80qdmzp5W
dgk9zE1kG+1ynGstPmGBOujhqzH/PfC/y+TPLR8Fk5Fy92G+sclfilaOklw74eAkH0Yp9X7V2uJX
Hfr1idOfq0gM4eObpMdJrbxzQcvRc43Cyl/ZDUiTBK4zgEkX3JndbzUjDIL9EI+A9g3k4aOHcD8V
XW4HOsIhlbqAiCuEbSFdJkaAun0xPL+1iXX+2J68N0E67kDckLTZTSZpmZq26CMi5wl00fI7iThb
Z3eBZoCCduPw/8GHArmh+bOCgOGgTCFO6SyjYJivkfR1cnVHQPlLVDi+OusLWfR+RnADUyAI8V2/
+lM+QgwwFsAjrjkLulm+FNWHJPeZ3/023XKCYvGa4dKy8UHsSctSLMxVdIbo0gCfoO8pZ0iC8QYR
W33WdmIk/qMO840ijw+Hs8XIMpJ78zoMyKV3eanlxwDFbwXKpUcjNPiWxW3bVWQxvGeO1kcOkAu1
wwiAak1orQS3n080Czm+i+pV26EVzRkcydXRn6kYQ/Qrkv/f6dj/lHbp/KbZAQTGT+yRMlXOb8+I
lu3g8oanL29/9gsDRdEVFb4OOmIj5qUd7Rapf16MZ5aWaUTpaitCNNZv+xcxLDdEfRetYsTgeY4j
wgBv27J/6IilLQQv0/pym2TttxoZgRUQokszQmSR+EjxygFI3X/XUIhGGPkN/6lvc4Qy1LotDshk
Di9YFcfaI2EtnVBNoDgUkf1NZyKBgLnGSadzyGdnzNttlmW5Q3KMAGmFyuqYFmHz+Y4U8EhKXh9Q
yjrbvg/t54+c7u4ndaieagSP+ShCxppGa7Blpmn3qzBRUC1Tj2p6rB26KwYEHlUc91rPdqDfbFzG
/vZoxEWQ49kO08JMJ6WktRr21fmySvkJVPeDJTvtasBmnCBNcT12U7xozNwnVkM/JYLhLVjT3fxQ
XoQn7J0iYAzTrTSYOC8ReklpwsMty90KrrNiKVxVLrNpRnQTAkxXt9+tqiGv2T/4GcFnZOpIBbz1
ns8ygk71DLi/WbOZLvT2NYPEJEjknWSxe8nRBpTcI+1wfsTelDSB/GEhgNEHBT/jrg0Z7mrYzv9R
Jwugm7MILymOT9ZqnpSenIvDKP7w4F/slEPIZyZId6RnEwx3MeqPGhPcV09XB53tmr1c8gUv3Hct
uxtf4KFLlk0n1RHR/+k0NKMskaq9cPMRSzRwZnfZjEu7iLTm2ZG4lz4mDr1BC6wcrbzYd3PUWugR
ytmiUABiyVHz4P1R/zlpASNyQIec0TVn0Ec1XMQ0su+5QIqSyDY0ZhApcBq6pnjz6D0iC8ix0Zo3
N+bEZjrblCVWSAakZfNsUKc2NAptJt+3GqoMJiak0I2mkyyI96iUGPrDlF4Xufj9HMLwhYDoO0w1
kc1H6vsKYJEi7fIM0vFZC33EVWEYuqfu8D9C6/x1sarqbol3LtJRYQnWXdaTWEAURmJIsz0SGq6W
aHWHIuHAj+zdHhWDsj4acKvxUA8tAF1PyxPbtby8fIjCyTzlQ88AlkijxekN3gHMp+0fifmYFhuP
GwQ13ZJ27U1CbqzWfiz+upRBG3ecRuiE7N3P6Twku3jxR8Y/RWMYFPW4aYwJSj6OiU+j41i9Zxis
370/mu85H//I+sCG2oOkwZmOWAguQ/mqDIBFv2d7sJ9MeYHlRjDROGFH+jF3ZyTb2gERPAXzUeim
aIJg8+MbZ0LHxApw+byBIL0NKZPTtuABwa2DXmrAOqBa/IhL6c2eDnp5iPYA4OAUUtr+ypXAQ14k
ZmWj6fAS+ZqOD3Id50Kk/JpScv2fiQPb/IBsxOqVbVZk4CofiepvBAzte7EgnE6RdJBicEZLbJMW
06T6Gskg3Jysmad8UF1sSV2+JfoMaHmbJ7XFbTcWOzyrrD3VWL8IOwYajDaku+qtr5lj8ZUpL/sU
EK31a2zZkxRD4tt2cg7y6c5cAwUX5UQ9cRrqnEkxZ2lHc+1RoPHf8fBDa8i7aRMj11T/oliUZ86f
uc1qR8k8lKtv0JvweRc7e+kFbPj8dzwKKDg+pzZVM55zLhscTPYUErueKi25TNX1RP7Hlo95RNWN
HfYfBe/9vaB3WYJj7ljuGAngzjjbnGM6oPuRV1XE2/I0AF5CQ6Hw5H8soNLNy5Os7A7ICmNDXRmr
PDzDetLm95ZKgUdJdyRePsmglJrngvPDQAjN/zsKk3GvKEGmN12VKDNB6lMb5XRTWfp0mm453JyE
YbO02iAKsg/4wUdB69UN2lJbSb6/QVONWcAUG7+UcdDeWDbdLZ044fG+dF0qyVS0rrMCkqhxx3Hj
GUb5E2nc7CqTat9Gf6o1QtMyd66SQmBSdFMpiqJVlaijTxJgw9aM3Iy1qeMDHfGRJ9Ksegm2E5IZ
bw1QMqkgP42uMQESEHuDcyqjYwgpBhskqbpk8Y4m7J3CEXeAx4rldH5NLFplSgHHymN4YC2ysTL3
bLIIsDLUd5ML93QGn09FJKxNR+TZ5+Dc6kfSVKyilTY6rHXUc1dukvqGMwnCFLIMdiLNxt2Z+Xts
hUJMCYQkSQmKDbLWna3EojkmPsRkTnw82HTPTbHgPQ62jous1u3KHDIrJ0l/2zJFvNcBYAnlFxQz
l1QL4KuyOKoqHvxAPMU4XT3QDP5swow+ZbKD72Fc9osNM0zJzKjOodEHzcqlAKlqLvlFyO3ztBn3
Gc1kFAvHL72+tLLl7d76GiF8kh3j1jlJ5HfChyXROJpBk1SE8ARI1HbDZOMUOSQ2OyY2FlEmab/O
/MJe+S6vI3kuyAtcuwzh9DEIiz5nncE/qBgTDPd/E5aY5FFpXgUM206j8LSyZIFJukGLYtGZ7rh+
kBEfUepZDLq4+1V/BLtAu+d1t0jHfINopS5yu8jshVdItAnlUYFgCXjJeFeQt5QLRay9kj0r8vFh
2KTEbobZK/ioKjPxP4pspRNiIMt6sj6hfxLOZXaNyMU9BUXsF1kccQzY2lQTVncho5ECgZgOGEs5
7kJ08on6+UStod/MtNfTcV2EtO+COBWGosQIMwz6IP2HWpWfuYtzaizGlt8fxjMshVZJZmL3bWTV
nDQ8dTI8KQs1zfDM38lcNP6jb4htCjiPLMC1JLhpCyNOiq0unztMXJrw8KJVjoj6tTd5YaZi6hNm
7fdnhnodTugpmIdXpo/Afo3vTTzxUORYCJ7Ctkp4T80v2AEqIyaF1cv5XluGF1AqZ2CWutiNAPwF
R5dXxJB+oYaO1E/ejqnU+8VHV5gt8/mn+xXFXTt76jqK+r06e7RC6+3wS8vxbbTP00/U6tzFuYvZ
rLDROxqvSnb8sVs+jjBiUHM3WF7zMRTudI3jfgcE2ME5fyBtcjG5nFUs96k6ALorEde0LFoMgaXy
G5gCx5Wr/1ghoHSOl8jd68K222lxwIPpITYRzqR81B/W8/c0meQb2lYfiHVwDwNY1UISeYpLquBh
dQFIZmAclsMFQ0R+tt/Bm/myzmyHcaDfNBlY7s18Bh34nc3Q831Jw7C6riD/reoxuuYTXfGbbf+A
Rm+pgYCFTbxH5Tw0os2KJFqlEbDe1dkcgINU9T/Glqko5lA6puv8v4Q6YgrirnIiyRRKIMIPoh+7
l4F5O6+8OxmCXPN9KVbtX7W0my3MIefxrtuo+T3WCVe6GyPflzGSa+e0EFXPPIIT+o3FJ2kTaQrV
tocNYD7Tznr13UIyvLsrZlciQcw8T+kMjO75pe6dC5EFvjaLw7bVauQzPcHxSGYGabaJV3Yx7w8s
dRzIuK+MWlku3gjZSMchdfFKI7HSxB7AZ9cfX6Ycjpfywju3pCzLlrGP0Ic/lmA0/QSwDxeV5Svh
kV5/0mDmfEDIBf1wFvJX1ykH2VYWVU7bcjQegjMOcvOlumewoTi3GkDZSAfkUEZOjmBRBttQ8h+h
RESsbvENaf1QSiShzE009BQjwUE5W/Zb3ttMCvCBFgDZ4NvVx5iPwa0+92P/nuq1B5mh498Nl10L
0uQNJmszkydmJodJmppNkYWDMoE94QrVjAj/OgBOHj+4QWoZcwonAj3MwCIsOfAWFoslI/sL3+8F
FBbLUKLAQyFi1cdVWTmQXBp+6oomUzgKkp8JvXEVv60kp3eKkuuGryEQUQPlOKK+VzDl3gfUny2W
KsPLMQ4vg9V4xWOTtSqPjefPoY5EGH+mnYV/aOHibglVBqi/L8j6SlteTFBwWENuFF+v30CGLLcl
Rvq8F7m6A4Q+fFbwZYskx2sm+QjxRuxEA4OCvX7RasF7un+yJhw/nNAj38O16CgxZ04ISUkPIx1+
WFILOaB9l2Tj+5czDjea4WGuhHro+f3L8UNS8YBFrY9MYcHxZAIAIoBMzYsQjmvpu3APprpRx429
lkxJ9pSLGmIWupbX6aF+WM1rfJQynALPKK9U88fm7767ioq6WIAKjRyCh9MoqkYuplOtCThIl2R+
2cvRyeNqc/0t3y1h5CJDqM/MEjDCNnWfuhwxI9CYnC4dgGp754C0D0Qxj18be/dxEGotX/l3aqpR
cSN1trVR2Po9yYi+EOpVxYDR1+Uflr1PyMIKfO4SqyNx9K4x6htLMwLAReyq+y7YF8fiePJhnyOb
zLXPrGB05cVBkpXPb849db54uoNGVRDZSgXe+fQCniW9BVwfNc5DzvFqlM/WyssCw4FLdH3JEUki
e91A8ZZYZklhG3EHlTQ2wxI5S62l79DWu5AUIP0jmuNCfYbOe6Oqrm7TPBX6JYU9pNcNS/ou73em
YAdfGluKsLfFnb87SQk616qVC1XAY8gaQ9vWCcJnI96HIFBCk83re2hDVjfm0UiGgdjjGcVqOUm5
gmcQ6Eg8bsPF50h56pEgCgn4R6sK7ptFKxA59PNGTqqJdKLdWco59uKqOSkrnvqUxpXN9PqXWLwZ
2gGkRgDsOXQaRI7gpuTiTcwjnieahf51smpM47//SZu12H6Yk6gNz/Noubzwm3Qu3zxHpgooeFA/
VdbMJBaVsk1FwMjj9pcYJNL7kfPomdvjhdo8ob3KwnrTNiEvY1AJ+yw8bHx4AcRZ5lcj6Ohcm8bA
UWx+W39Q7CaMVULhDHQDRHAGay9VD0e8S9axrlwKdSMO8w2JmI5/f3kAOxR1ZOA9Ys82BUYkGjs9
VT1VijVoYc3X8PQFVooDqjm8UTXc02Osvigk//Fvlf8RcXP4AGQaWNVBJYAO6lR2SZQBuIb39ZEx
vPOqm6cS/QQ1O8NUz/ax1TUxytklXwEOaDIdS7ge+2jTPsC1r0+vjZnMDF0r8L3R382j7PSjBiRh
V5kZjwPdkEoD1/AbTJSCYgTv5O3aHRbwJ7DL+/kgk9Fu646nZRmVtSqjM6FTzQgR/t/bif3E7bAM
R3OwbDHlMnW/Q/nUFJ6Gw/ivFT1bBuHe9uOlHsl2Lvq3N72BndgO0iAV41RomnavRdIiRbquEfQl
MRUKYR6lw7i1C9IxgLojeoVb2yThpIVcmOBj2C7gNuzpWOU+5L4KNj9vLzlCTKwIZkpO/eN46yKk
PaKmYjm1JpRT4023cO6jlU56fwZ+mXxRSOm0+szB1LA4LZoZ75Xg7RZUuNvJceZJohOjgED0YKGY
j3jpOexo6d8IoD77aujUV1GgW1DePOGuCWEX68F4LaLUZJvC4bO5OMTsYA3Az/w6mKGjPRicobH3
TTXKkY+gn8CnFN29LjEfLSmO0yCqH9GEW6ifCbQM2+Cv7DytVU5bc0E2pW5mN+y3yt5ZmC6wVwBp
0HJ0I/a6bqf2HdvAybfVtXvJMJRcHGL1owUDQd35QvO8W/3t5s1t3cV7ymKmSYvLboMVZYJsrgi7
bhSMlQyontdKIAsg5iuDK0+0KMHAZtyXFK82op7XqE206WkaelZORPSyBtxJ45OXaaFd+ki+97Dl
OmCAY2IhPnj5CyysaYZKmlX0YVuEAodHb0j6My6cT2bDCEOtf7EGQT4SFoAith+esbzt2scQYM2z
RMz/tmqeB9uKIi/K3Ttk3arlZZubaQ8I7/5iZ4M6XOtEamcJ3BwGwB64/BxMKxPGI227LDtU9JYd
ICg9j6Mvhamw6quf+KBVrMhB9hZJpNcQapB8R/IRtrixgKRmBQqjeh5DukpdUPp6tae6h18k8R0U
hwWLzJchrZsUnnRTNb+1Dk/Sqo9bhaEXN2MYep1nS/gONQpyyxX/cikVAU/cDdFV16/kgjp84U9E
YpU/GQanti0wdxuKlX8BEgn3wlQx9/qdXh43b5sKnu/RJCMbnIfSMTnwUQ78bKUzOJhiG4gWTmcC
fPQe1zdUYThIMb7gQ6fcsTEEBs0C9ytr2XpARiEWvflfDLU5LhVueF0PyCUrHy+0xd8ITa599RwK
n0ZRDHkLFdms8GH6KOcDWGJjle80VIVsAAh6tS4OHdX/o+Jd3AEQwNTHdnr1Ddzfb4MpGT0zPMOB
z2VF/XmzhLZCfwepHGkE9pZ1KWv4nY74f20WvzW6qCp/W51vosP5mU6kvPJsmcRylkCYd84meSKP
rYk2a4/ZmEO4hAaMAPoXOLjhj/NtiMFQ0GqCAYVbVv4h4mO+i7JDByxOsmdv662npy3Ly+CX1QX/
8F0An/Z7jLWLgASTVI91vyeIFVV2101UQSbvbQA0LePVfWWa7r1qdS2ZUin9EPc3wokSxzzRKxhS
F0cgdb3igm19kuzw6QLzhY/dKvBeoSTJXtmhlWC+7KmidksIzHlR0Cff6I3e1jwo7rU06GurOy+D
/8PeXi9Ne9ZjW69b5oIqSOl4+zibipf9DiZOfiAeaVp7opRROIbgO9Gz3305Smxaor3SkZuonRFV
I7XX0wSq0bnG9iYc8awL8efSxkVYDksq3u4HIPubPO1rGR8RDXBMcC5kKh8w6wuCSbExHM5phzWJ
DKaTsz3/dsuB8BfYqWtAtLxOzNkSp6Nwq8qR7wyQxQZlLc0+0AbxCsetmPEY8+XCHkQ/Wh/czacx
AV9iQO+/ATeo3b1/dAC/6JFUeJA6OySdy1mFRCPOxl0VcVbShdzsl58Rwg5mfekTMngru6wYGuCx
/C8K8TV2Ev515dggm5luoUSE5G80FER9NxbRfYNU+MYI0neuV4kbRSGAZmJrOOMh+PaXvo4xIOlP
ttjvodF3oaQZSFItLmBm1CpGivAHKjlIHk8jo0kTH3IkW7s1682Q/1siQiMfq0QVtmRYg3X35Xq+
cFgr3RwXOoDO53EIYYi1ZdWHu5h1OeRZvFC78JeHLr+x9yyeR/uKAwUPlxtcUfIjtxC/cBeZqQpx
fFjWBopql5/jl1Vn1OTrTwUixEb8PUCzhREHs8Lc9L3U5sttmgnj8FXzeet0ulXHksbv85uN3Bm0
OUw6qq54FTTA5BkzRndD2xr0uD3qmqtjCNetpCCgiSJiWZ3hS+3d4lDYpU+BmymspSkR5Mv8TGkr
u9ZE25xt81BcAbRm1BCeDGAgoYHpv+C25m7o2Lrr6ddHAd2/3menop2oSh3ARVbrsehoqFZxcua4
doG3wQAlLH0XuZIoKRyaV9AZh4HOzYRpBHXHisEXbOQEy0UmIFFDy9OmRRvy1qBEBcV7LFKw16GF
GplyuYP5njXkLeXnNwzJgoayhVaekHbXH46fD3ABIOKfcNVByHUil90eqYOXD1bxPkUtj/ge8fae
wtLi8r2V5+c8w8h4bCtVdRJGnKlnHWogaWUhCNUDxZ+trvd8fqcTeC2iPPH8tQO4XK0MUIBOO/vf
3SHoJjp6BeExTxYdmY/qZnXehFND2gBfvOJ6dkkXls9zvIOdokSRPtpWJAUbTXNqIKcZupAlOx6s
3XGrNX+rwYjU4g9w5Uz9zbppVt360/EnP5V1SAhbSbnNDmEUQpFM4LCFkyGBp0WzJK7qpG+chnn5
6wErgQDNxGz/aEO9Eovzhk/+T2NHJ47Exym8uezC/+mIXf3PxKKhAE4LKKxscza2sn73gSoEoBJh
9opaopkSvc7K7iz7gtZbeSJs9XmMwcMHbEl6h2efGyxKcDxJt52mC+p9gzEM4f1Vi1mX58zINVij
Ir+lerU1IrBlrScW/BI7YyNTQW88O4KxU8z9h4/rCYK2zZaHPCCH3hibQIjMKgzOTmXVGUH6jFuu
wElk3wvHcXPU9ft/C+Fhy765c1gLDtbsxITgloXv9D4VeNmgx82qxLSxZSdknoYrg7Dz2uTZsBBx
gAM130fF5kH8X/X6K3GRZ6ZS/uAldk5FqzYnvUzRte+S0oDo8GDTKzr5GADdc67I1WzNPPH/Xhn3
ImED2llgFSseb3Cx2NrgOVUVIj9RtZ6Cpp9fS33ztJ/SzorAvLOlY1eDqD05jXsr17DZO7CXdHjJ
T/usiSG+xOnp9Vd3OmXYK/1pB/mtX7c9GxkINgxDD1VXMfRV7bDx1H9sNws6Fxftfs3fwYQSJqJI
qp0SxGHBWlubvYPymbLcntRtjqWuFio3MckcFbc8QVUuNcnGeceT0X0/X1e3NkrdkSPRS9rtQLVx
8A+zQSCFDySvvwunOxEOerohSI98fFDrhAuI6wCNmbCkVqo2SIhb5/o4IgzNtgoYd9N+Vn7Ethca
2+1E3MmAxNSBbvurhQ4sABkQPx26bztw3QtDOP6p5T41U6VObo+faIesuy1DKU9NPYvDQrDxnOle
3+c+b96x8eNkpT312bGKyvZtauAq6ySrB5/0SuUm3lWAwkDrvvfmJMhG2M/U05od/xBft9QXIdMs
J0VGFfqs2HIHvsGSzd3NsxhiisBdSy6pQyHbX0V9M1rjEKn+iukhNeoZ463uwvKsByuWEJc8stnN
2gVnCbseu2gIJFrqKhizncIRIuZnEmVIhOIvpeLCuuiVF47oZQ8pCxbZgC7glTP+H7CUJN/mHTls
TnPJ1f6LXX3hnJpLwHmB9/vmR9fjMGsoXF1kjYiBKQAJOV6gMe2LjTxoi1eS9NtK2Rw8JJG35b41
gJTL+ai7oD0k/GvppDkNIQgoB1R0W+JwbcEF1CHdzbQA7qg7dcmj7/pJrN59qjK41vtd/kYK1gaK
JCRrAGE5YSvH9k801RHCdtzSAi66cxddRm2FuAcHLzeBIGkxgq/U0Oyjx1Lqxyjx8kf5wiTE8n8z
qFeRZmAtmj5gjxSYX1cDobcVAskqceHRczDu67JSZ+h3u/vOZkL3Z69giEZlX34D9ibI+5+XQ6Cn
PxrvGKdHR4NWRXcmHJSkRwSuo4LY6JmUWXAUV3xzTZj20LsFLRlry9Uf1PMQ31ZHzGf3ajviAxBQ
vqtZvMjbGbS5pSpSxdRP1m0x6nItcoWIt8dp8FfYekxTUNoYVmVCQcsTsZ6DibcKl0Qk6G02cM/k
OzWx98011KHFiuzC/MOMnZIdDKS6vwl13+N8VDj3MOriUQZHdCjBMYCNJpCdjiPcCtD5Sb3ojClk
6kskoyAusukpJklnzoG0QaAbIq6dbrHFXcDUD4Nl45t7bWqKU5TbmD/bId9og8io66GDr2Zk2KCL
UwdATy6XhpvfCBRClNAiTecDWMVqUJ6sjzZEOb5IpEHXmRur2KvOQvREokGYfRjSNZ47W3qzZXCz
U2IRayF3JGiwQ7zHIuLJLqrexOrHNksxoG4CRo+kJA30lyrIKeqHf8NMdRTa9tXKWR2s/JfDNcYw
zJySmxbszv6uyNakUGU88Tez3d0fUEzej/SNzWefb01haPYl+ynWZ1FHO1r6lp2/p3loiClf+7w3
GfJMKqiDIljc7Irra8FBN988Ti6EkYM8TzbBJ4jKeJSvYtcNieDacbIuHi5dznE8X+lqfbUtVjh3
XhVilD5rZuzXXvUeF8riV9qijkC86ctd+mu6jxrm6O3KAmZTehjTMvLvymeRRqR9vHVP880Grmwr
Ymy2ST0GDW21hXEXl7kV1aoaCoN7uDrmoUiKPhiNmLPGX1QnDBs4H/WSdsXhbTRjjNuFL9pwDSAW
2HH0hjYXGWveAHinnmD36TnaoyyiLI+Uourpp37BBJkpzN2bei6NujpPEGKTTxVHaFeLphOjiSZZ
svQvpgNHKdxR/i5No/UZdWgwrY89ctR9N2VmpH+/UzkWWAls1QGanR8DCiiYAB2asux8IolnaPmg
rAuesdUjC85s21ignC0SeBT3nlticSPgTRl+xWp7c1uiO0YlyO4EG/cLgmeGMvbf+JT0qQTCJeWb
OTjOe6XeE22FaJE+G5AqY32UUim7hiTIsfIKr0VJ4hhyu0Lrfr7ZVCaXlT40zMGtLc/TF+KdIumD
HQdhPA9PmBKVAtrKC96/De2UmUxLkEzDH+um858bdJkVIfqNhyWr4rHYoXRF1PKo6aEfa/1WE/eq
aumcme6CvCdqLCsKii+uoegFUIx24HF4GWGPrdim0eY5zSYK+265Ol5UGo2dlGXiKELLNt4pKXqw
q0Y9GcYpaVT5bZPBxRK0mzNloTCj6dZsuRYd4r7PFfE+lAcvYAZNKjK783p8WqxCFRs0sw/UjT5u
I2L2hAiKHhDrTP7JSavadR6/xz7q/o0+SCgPANx+GZCe7kTgADMIXOuZQWhYWUNtd0YD+52K/8fG
53lP89fNOZvgcpSkHu+cND5C+PzkwahC5A7NSH59e3xUHHDp2wOGDcXNM7YdZe5JsG/F2kn8Wab7
reWxdjhMAel8BVGnN2bKzRC0QCQHjPCDNpPwyPT79cmTTLZX4SI4XZUuAn40xT1r1W9zxxOynsXR
CQlxEk0GAw8YGa/Swp9AO7NdsZCOk3b2v0Mcc7Ql8ldhBfojVnzA3nnzMWuzERt8icY5NIs2kNz2
NaBDeeaCs8cAdsorLaLf7cDcW9PCcjrrh0zffHPK7VrK2on6kqF7U+2jfEYoE3ktj4/UkPCj9nu5
meXH4zmssacCkmvp0VVcFzVdtYJhHdsLtKOvOkj8PMjjRFJs4GAG9n/ajF71dQ/c/dYP6JnXtAbU
NzKEW6qvA7F4U8YwXW40x4IOnM6GPwcJDtbwDRX9DIJhg5jo3zATrkjMfRVWU24krfkLZJUTaa9I
K5t+CeGdeyM5v9oXverVflTL4as2ZMHBRv2G+F8POwuNJR9p/sstui95LbFC80LGZBhkJcUdjSbU
4FQjKlnzeRNlsh4QVWoKWaNZPVQsqIY0KrKfUYe4jtaphkRsC2gu5fRCWs22KKCusrdgrchJJp6i
dSSL/c8vRRnafqB8DIMQLhevl7kGCj+rN8xUgD0Zzbp+LKba7IhyXdPLRuuOkZhbBFsWsDYVm2vL
JVpved4J7sCwB6kQ4aGuuL1SJ/qODjYxiVBCG2niW4H1UXXsrW3oWLWxq2FNee+YUIGWv1rtMpi2
Bwgvr2aueKMRAnGg5eDa3918LLTM3E8V0xvljmbkmRInZ8Jr+bNyz+mvW7SH7QwwKs9kk8ab9QtO
z2Nory9AT/N3U/lEBfb7+C443S0+GwW1JrqZIKerGdd+qws6Da2T6SGkfFdi7SRkWW1LLLPonWSe
+UQ9tTRNFOMihuZi8R4+A9ruIGycmEJ8S7xLGHdWbtlfD9nAq+gaBEMZBQHitpsb6YxrDwGof8yM
ubIEHXapTP8XUSnDocBlzDbB5Yr8BR8kAiyvUPnpHdtZOyLi+hj2zhEtgK2LxUVveASsdW1Y1Fcv
1sUntk6ORTORNRs4PQDH3HHToCThLdn0EoAFH/plays5E3qqHcfwbSkIn6c2riC0AZDXuCW8+m26
Ao5iEbz0sqdsJ4Z3Hy78NbzFZ2X05XbtLHFGyJqUNIZp5o2XSRNDhf405Y1bHxBikViIuJoTmbNe
i/+hwasMZX5bjS+WhAbINcgVRpPeNM19AJyUBOSWJkQzD9+dshRc8Yl/MIomgXXxRCtZHtKGEMsd
E1EMnFn8z8nOpqNXas96Jft2Iy+3kV54S8SfuXOO15z7151THatQVc0CyeulXhwIpy13eCBX4/1L
eOpTj66DxVh+nm7eA51XNv+DbtSg/eEAnHBN/wggWnCXu80LfiIl16sVeoVgOZqMplcV2D2r6XsS
2/75ANSsLuRiUQuY7ANJP5VDj1uuA8DUNh+H2fYmP8LOp9l9iqqQxgXjXIQROlOjTVelncGDtcwF
2YD8z11Uab5LAz58k9/QIwbArzne30o2DYY33MSoKyFuylFB/HcCrc6WxLtGChj4GbwQLN6S66Xh
MQQ2h3nZ1h/rKxO7vAdSdU3vx0+q7KWwTrJJgJ7051iJxC+YOYkl6LaPk6ibr5v3yQdqN/88yvnV
exR1WcjF0WsrOyvPUqZ+XOzymyGa7GKA7LvQQxfHc93AFOE7+dI2ofMJPjnSLtM4t52Y5wXAS5/p
txq2ZfzT48WO7CblsZWk6ugjTyzvYkAZs+CdX304b22g4Xz4QjQ8ZHu331jZkh3IXbTRBXjGv4Kf
0KYKgHhvru5978+qco1vjINDDaJlUHe2lllh/CrbosaC4/SZd23eW+1uxOb5VHYHs+0PoYD65bXz
yeCavmFVn1YgiMkJJ79TVtcwHMqB6DCY8u5+wPLB6Nqi2BVX6MyNXYvfrICABn9XO+1rp0l0NHUI
+LJNAUy17Edj+0axmBbD3fXjJqSImVs6YDr5qOHUusRk8KE+eesn8ZGwi2RkIkXYS61UsI5bH+oi
QBL6cebDNrOqHFWQ4rzSSTavHdgRRme8A2POEdKgB9DluDsN2asZG8dKXlJgVv+CtwL1HbFTIsQt
v3RukKuNG5qGAroQHE/1ohdQnO9ylNfA3sqFJrBcMcmHT2jpkzIOcn4S86sjn1QEx3bhBv1bfod+
QA+ceItf2hWm+CrKfOoTPODWHDhouJnYJQo6Nu1FGnuzdhX2a9g+QSF2kZBWbIibWlOoqcQFDiVt
psQYVq+Eow0JnZN/AWG8D6ZAKsQGnwrw6+nqdTSC9G924t7nPz3w9D+LiMcJbs4VdPv7Hpz4qXsm
1Q+QePRyZvR0kfsbUH8+g7qZLnQSRkE12n/xTfwLXs/eyQmF1XFJ9jgoBL4xRdpbXmNLafhfNVaq
7eN32iGeCHz8ZDNnMPZrLotIIzA+pF/SzcgsFinLmYo8kcJsvrxzAw0ijZEZX9CNPLNc87I4D24e
fG963H5ZjXDpn2E0scKm+rZvXXBY7/22jjNPPHMQ7VAxN/MKP2va64XBAtSZOEQRV7RLcpHl7IxE
D/Qsk5hVZkOhHWAAfrFFigYUder5CIe6UcY4/Rhx9gc1NM0x8WpqxnIKHzXJ6E+JBt0EunJKVjFu
V0Se/4O2PgCXbtVN+bOX9ZBkC0LLCzlrPkFxAg3xUjiNAdAHH7k5Lpj9XrpfZ7PPI+e/IK25CpnY
n2ZqQ+/HZ8ZvuQuxcUfMqpTG+jpB6Xdbl2UC3YJtXl2/O4539ga0LJqaEZiHS4HZCcEDG59Rvcbk
mXH27YH2lIoOzlVIzCe1Eun0H/XhalJVzz7Z0K3RXj9JUCF9iC+g1OEFCkl489CO/sdXxMhdiR1q
Zu52/feSpZCEHYkFYvSkLAtaninP18QPTL22J5pLQ2kxWdK7EWVOxXTKfSjrW9UtEuIguHUn21rl
yRY7bdIOwnAtk3EHDThQavfIf1JpK7FcVguRWMTu7q5n+2I5W8P7opIqENBjib8zbqYRmDIWKpRa
NpVET4/BZVEJ/wwsJveHqeHIrXPfBMQtqPxy+u07l0lU1TNwqQNQt+lQGqSpipqEMABny/8WE1fP
vK9HPvmULwPjH3QbCW+CrwqLIS+/VeSCwEmpyKUb2HJJ8FMQ/AG6YXFI/Zo94zO+Yjb7JqGGTuVS
JXC4Bsx/WPwLAr3uhzcc/c5J6Vk1Q1X9D0v3qPWtTIlitJOZ/txFBnYi8qXYgi5LAuxXhB1jJRvT
/mEJB2Hlo1w9pVti4hrrtp5+/vSuhiAf45ynuwLBgmWViUCO0wILyyLoestMLrJVy33ibcaydWHR
dHsBVuaKJYQcaV3QBAa2918Ys0NFMaIlVZ5Pcrn7G/eNaIbB1MkzLwSMookm+SLgvtDUTh/Lz1iF
OHPJP0g3yAAmR5xa1WNnjH0EoLcJfS7cN+9tsZLXZilxHL2h6pB/3M3Q1YIAVpZtV3lqDxwueV1W
7imUFbBTuSA7B4Sg5Yg6GcKDO5YHBbuAbS0lYGMLs7BsYVumRoV3gObpx977XpESNYlqLDIRkPUm
AmZ3/BE+we4cenNqpvUPD8NQJ4DhZ9kXn+jhy5WjbVjJO9yi/RBIxoJJ7eiN6Kv/s4+WrAEWSbpt
4LLXAS8SVkau5nh4Ov9pirKq9vCPVhpoNggEqeM/VAYaGXYEa7hpG2/iN+ot8C7cqtSWVe0zYydG
PgdBaNYmHjjg5j7JIPjLbMnVErw8P1SFH89rw3NfCmFQQnC52RvneIavx7qbeugXUdyYY6g0Z/lG
eY6VDbrRIMZONABdkgEnsoUbOWE5VPihjVfX6d3l2tyX3p7qWjXuJIQmZmLVgL4PeuDYJc8ST/Cc
rxT2A5+b6077AJKgpnUYE77gVEkWZVELWRpus3ZJgE9bDVU0/p9xphqnUCf7A7aODRBTG81wD0YD
sQsfe1Gv0L0jgSjvAvo9IsAxIrP0/WwQ5PFz/Pihq3ddcgpSZfw89aaUt/eZquRv6nEoqQiHDozK
X8fICY2c0Gt2IZqR8NrnqMw0xK5BKFg/gnF3zm09WSnUR5GiKuYWCLl9BTQQtx2HN2h4nPFtUOKE
0Qjw2uUHPhmv2MQHk3WOEK1DP85OvPZz9YZax8UV90VB07OibNdsdjy8fJaSF8gqpSWS9MU8i784
LbuvWhy3t8tP5QKbfFjzJl9UetIyhjy0TIBV+O7HSSdJa7zfL0PPLKbfJmSIALmWcbc2hwBsMyRM
8icWmoTlqCuPcN8tv+RJTuwYXJHcz3zEIpgG5qFNT7ZH+h2gUWgDCEPsgz1QbT3qTGAXF21/Ycq3
AKtEKXRlBlg1V1q6JrK7P+5rC1kPcLlTmEZe9NnwiNaUVV1U35u8httebhmJQHih4O9aI1AgfXKT
i8zmejsPH+LfELmu7xi3AXdX3G4UA7YWGSjMQA0I70X0rw83UYHJ5zyte6S/u/L+Ml01lO5FBnoH
0nxvY91TgxmZEGUeHhhbPB399H+ZT7OSJmkV3CWLb8DRgGcHrDqFgbpFU6QKNlCZ3Vge3zttet43
yULwANDr2GutCAPlDm/+AABmS4rTe6qb+S5QcoJtNvdwHzCr+9VKpgCWJULlpH+62qY9oZ6ecC1k
D+8JsinPBs5Ho8DeH7P/4OGWRnH7Tx3IE+HPD0THgvGF5oV4DITd9e3IRLwtmDQ3qaNuJnf34CTS
Z5a6V9Ckp2+Qe99SfcFXqZj3XgTHZQ0MVdY0ghaomPWmBUruZ6Dej8ZQoi19zVuc7V4y0/2kJAbY
LsBvMFXa+JUiZarii1ib3Ezv4jXMgfBqgMXm0ghSyWqqXxbKfZF80gKWczMoS+aAjtTqWKleV8dT
pKKG3RORflyrXKk+EKwDK5hm3IA6qkwT9zg6fzoTVuHTfF58MjP+6Bac7q4pXThug5G7bSt3Zynu
JSti1wGgVBzybTgQtnO6oPZm2ZENcBoSlT3SOxsoLWuagjKLZaPa4SKJsxoQH5rFgK3K4qome1pX
pjtT9jOHlqzV6PIQ1wQ0Tn/LK4xpMPWLNf+pn3KsRQHOPjxrcnLynMWFhwTNi4S+U6xK4R509Us9
op5U1cdQT7W7FgEd2LmqseHKMomD0AiAArUS+poTP/nojVzpxPl1jncVH4FaockoYlsPA/XYhxnS
BMSXCLovXdjtqtkBGEOfZTiIiynyF7lC1Zet1vyd4aU/wmCInlPCt1Vl7CpIo3IKgq0EFuDEfz6i
sdymTMvSsI831+dwh7o+ovhdWLh3e/6Rks9PM9KE/YRW81s4Bk5xMyvBXGfh/jDDVU1MspJ2HP+H
y1HmwKFsMCNGkDIwnjJ5AyW9u8I5gIpowmG7sPvWS/efsEhrn/nvhKom1ojhvzz1FY+e6OPizde0
dpuSgZNZfceuPHE0T6C7syb5GKH99vG7qXyA69fcp26/iIofnsdRsAgJIY7FxbssvmSfpfg89Em+
LewexOaT12jzFyHhhwXgCD3H6X0nRYFQ6ngRnR5qPCZMFxGFQ+AnrIL6yqAjPR6Jq/87/ny6Da72
/UsKllIxDOqwTVBvmaNKyJd1FnHn4v+mjg1XNDAPoA07HnaaGKWdEdj3NAIbsbXX1LEEKVHEHp8g
RQUZol9Qx8+QvVxaL/l83XOgTSYVhtkEhHFEvDDJC60OXYmd36zCN4VnPpSSOgIqDRU26y4wAOPY
QzK8rN/sJZmADdDk07WQO0nMjOASQi4uHCm+FPv3Pptry+O/PnbTkAIH/mKMNCI6nrYkSjWNHe5u
rt1lDuItP2PUitgAPSXUCbwDlqxO90tEqE36uLy6WfdaOsxoBFYYSq+pJzJ7UibUApFlztRTpEHn
MCcOwU9uE374Kv2KnXuxZ8fltPJbJYSeuJwJv4jIvEDwCpSkdQDBVTOA6V/dsxpjBPmvFO4vd8KV
7KzWH6CVi3ybuKSPeZBfswecEAGb48v2gLImWv2YIphVUDs5v5ZNsDBqNtvC6oWBcY7zjVmqjOiU
6rfg2moruVvDEjt2hJ7jI1EaqMqQTydsfNPhmiPke2LWwSGaCIILeMLKPg2AD0wiB4jSn2MRTi23
Re6tQPU6pLU8oJlVRyZ2PtofxJebNi6vS1AL67QrUbmrjYJvnkMqxISMVG9w88MM8iA87Ar5IwU9
MrAQPJrrJkeSUfsPmUrX+oaJJ/z6L0gk7BaqZ3RJc5mrPOfeRkiD1i9tE+ASKm/iLUnYITpWeT9M
lStFulRl7Q/IDhraR8C9y0GmfRLXRl4uvOtbEZYcXJGJpQxu1mpSq/V+fBuxqRnFLMdj2d4p4Jzh
8V3sHm2+7NJKok8BH/R2dgaxkW0dYQ1jum8mE+vBjOrbBxaxZ/nH+2VnO74d3ilrxhEkUvVCFm1f
Z98cwXQXPcuzAAtsQqWpD+LPoRkN5RTYo23NqEFQUCU056q0QCwGrCkE7yvHwxSfdyIlGScFYMLl
MObh9adzfTvU2tUbrAl0C6gv7dJgUZmh77yDX5lJSD3AE0dWxmLw0C1cLYIQrPPZDRimxKpIRMHR
IrqGKa2zUZ5O5UXQCK49uvlVlzza49O+aRwQoPwbtD2AbvtsUEyIp33z25a0sIt5ADgE+QMWOdKI
b1a/21rcV2qwNoFfqNzkGcGDP6r0qO+E78fNaN7YB61IICKOrTTaaj4C94uQhB8jP7jj1vn3uggM
xJrz8GrPIvhgV7U4MZ56cjQ7I6YHw6BhMeukmpqyuLPOjLXC/oQ/ubooDi+mtmVkPMVRniHVY07g
kMnVR6P8Ni8F7fHgr88/D/sO4ssWv7bqoidIqlSP5GxtC0bqMmvnYF93iQikXUcObaQPMFKEb5mz
rDxqRU2Lj1EF0HYcez1kHeV7TkAcwD6XkAtAPnngpSJdqFEUCpaUGs4gNvcYJk6KOZD1CNO6Xys8
yvpKlncHB9sD8N0sQI6l9VU0iOZvq+S7QHKUSp7qbc6ZbUBMZs3APT29UN+uuIYyh1+boE3kC6hn
pf3V2N7exuwzmv27PsrsVDWtJIkk5mSDkNo1KHwrLAG/HkBUQkNyySa8jR62U/WVn+EO4mFMuPcJ
Mpir4quIqFF0kt/8lBzaf3vqKpRLqUVN8cjwP+ZGUdpLAwapoyxiA7bsqVChoZc8PkhqVcwbYjWI
Ogs4W7Mrb61rAR0Fea5cES9/+Z87iSmLsiTErmbZJxPcTRyZYDJn3b4rax3GlT0PRjcNbea1aLiA
EsbyTlRV7tHQndZ+qwqEpWfPqF9xUKJPvk7A2d/XIB55qR0j3EA5ESCN4TwhgapjZDXpWkffSeAg
5GQtAXhE4y1NfmYe0q/eQNrF48co4tTW+OYPRiJXm/Dk0u83NheQP66C0e6lj72TmUOPFgRErmUj
q9tg6jCF5Os5p8Wgi879wa7q+zyVwxOLBqxm2Ionk3if82Lmqd51jHuMeOs2nviiUZOnvMq2RAaC
lRY1KEoq6tPtADAL/TaukdFHdmeshBssbsn/4FJuWZSVFA8SJtgHdK6VOw0m3Y2byCoCt5ppYbQ+
u7HHnI8ZT0rcjSVAUg5eUke/J6qn1H5nGeknIK4caU62xUGEYk2TT3SjERNgUZLZ0rkMtYyyq161
gGSXPpctMPm8o+0MwBescoMbd45u/5+4ZRtxxsNyFQkOkvL5bppvp67Xya4uaS/5WIQuwpj7t3ih
W31HJ/O6LUQ88jiALOmHA4PKM5o6Qe/8j5ttESFjYVW3wFQVBU1TB5iWZtE2a25HFdzJAxJNE8YN
StRy/Ue+k2yqGoY/Ifwc2bfUf2FXCta8yKOvyhLFV2dJX2oqudj2gk7HvMEz4M5jZxZf4/bSOZfC
UcaNw8l3wK4Fxtkh2KYGfIysIELOMkfUbeU17iFDyUtGdveWFX2CarV0gdzT7BvIdeO3WMeb9yN8
EEHPJjdDUlXk1UdoiKUIz/HcK8UB2+ViUT6+Ky8lcCIydR23qiVVEQRQSpI9Y0f7TCWVIGxRtgZw
sdADEfme7MBNAPMPHfuLYAJCyP2Hd7vE9g7hUNT816vsVe2roCvQUiUagcxP4ame+k1M9pEu25PJ
tK4WpK78kbcX8lT5AEm79cKxa/jzKZZN8CdNEhqVxQkhT9ZxlJmZklTw1aGAmrOamtTIoBw1Pqte
w6H2hI5D4zDLugKuenxfmD6IlrNPBz1sjBr3WWh4UG9imcrYuyBIjlzW7STrrqSXL8z0pMOmWvpb
06SfNOu8txQ1597DwjlhnlKQVXIXW2/2WoJxLxsqvvRYyAefy4IyMsv4NuLV01ZHtol4ALowx/iW
DL2W2wvHybyRV5qy0KIZkh66dOECsn7rqIvgJwV+wM2uE3+lokqPqi8HS7Za2a2FUV42nUEEYNuH
cJIc3VD1gtXOfnDTVQ0CONrxNZpkY4iic3QuNuseJk3sJ3cZ0uCVXTKFPV+d6Yzd7cIZ2LK4huJ0
L2RU0Qa9Z8LYAtcXR9sHAbkvzNAq5N3YtdFRORUdV/s3qANqyBh3cfl/cXJUnESfDUIBBRxDfldW
u4c0KUg7NIEzlRyMiMVDf5oTWPzH87oZSRzVvJDf6F7x2UW1ZF+ya+9emnkmqV2RL1zcO9vAAOU1
86n0u89lEHPe9tKkOLh2qACZWQk8pnbIobkJ5xVAl98vibMakOLGGlTjcozinhokdSdfbOkphVEf
ynsV9oWk/0V0BNxZdxOY3AcRYjlbg50PwC7+DsYw0yjiQeJNt6SawN9gkdBorRVBBBEM8Z8SnpX/
eqi9nNuaXBg/FIOU+t/Zs34GR5t1/qdHrurqP8OVDER64ExMkxqRoxL8RIxSP5SIhiZ/vAJkXKWS
Cd+wrS5Gcw8xPHNUdHBXWsNlAhulGeMpEVqpXrf/oJZlO5fkfHhbSgioKrT+DI6N0wWFmti4Sork
oV686EZ3oDb36GjOAESSyk0+ZIRl85qS0ZSfCBoj5+tFyEyuGilkN3eXxanQ12W+xLGTDJKkmHio
mLfd8QrQLeiMNVzAZUgf2sK5aLQMtKySGmU5r9FRsfa+VDrBx9xOLbid+FfHfuOqjs3knZFF1+gc
ynUrEJv4vTro/GB6EYf8ZLvwiKcxSZ3qnUFAttBmshv8f8CMhdhGxV8CcViBDN4dHudOpToZZqy3
MUWbB7grayENsnQTK504tVSOLchGPKDtxUWczSjFBYz8laUO8Zqh8BkfaPzRRgdgRFHCsvUfDtw3
nso0nOH+2qLAlqV6RbWIFL78o2dKvOe05KRYQyqlSS1N85CYaeFf/e4OaEXgTYIjsiM/xEd1+UM3
0/3ihf1ydK0vOEHpJtwQ9sOD4e8Ppei9VSHuy62+HGjmt03gStFrZsEXTKsx3MXMxCGXEMDzGfFR
VCmb2ZiFT2yYYxeS+YqZGBeyYqe0cJsNTDdcYXJf8cXb5rdNebtF+mOmYlaXH6ps7zEf3oUABNUY
VgG7NG3E6ZUbQaBWV7nTosbvtYw6jk63HmE6jwMzr4lSt5hCgWvJzIla0AEPoedIhuDicQ6w2BnP
ImDysLicDjh90pqClh/wz4Zv0PIp93p5NiRjKCNe5mZcXnqP9VFjIcDlCngu1+6ydI7TGnCUV2de
JUyYnvMDVsM2sJ9axoBr+gdYiB+IPRnOtBNMGZ62ghHIauE03QcE9oxJjHDsPXejcMtBtqNjhKe7
n8r8+mfz9+2tEYeeJj1h1THPYlbVduxbRBSZzX9EbvufoNjs7HfaE9jzPut6w7m4wrJv1jIjuVlW
Ln8zyA+p+YMfWFIlQhb8ohZ0x1IYkYXpTtteD0nO+nNjF8XIYONYG/k3v6XY2WiC2D7PFo9eimhY
p/WsUne0Lysl/9p0lrursP034F8wgMMHIQU2uxyoxSmj2PQP93cvdUoXHNnXqRCZZTGRdK5+x8Y/
3rexSHhL6+ia7R7tG4bgG30Pd9+w/V/frvXglL7Nv+kzi9m2OUGgu5kxEfUozbffnxUsvQMp3GMZ
DePHtxVPVW0jUTr2Nv3eMYX/GXoagjhm2PVClyOONuiomXbemitZ+HbGBRbr1z0Q8PvaTgHrQp2N
5bLrgCJjoL8xHmdz00v7HPBjQj1pO4xlDvHJGbzAVCMQKAej51F0NCh+Q5yEh4Y1MZGIIDAMeV0p
spO0eFw/0BcFVA/YyXj/PItUNqK55N+INlFzcH9nZPfe9X9egD5uAFSpBmbKGC9vq1NWdG6L6Mcd
xjA2e6WwndOWYDazQZLtvpAzKhl2TUShfp8QgHHfocEyNs1iIwD6vakQu+dQ45X3TljPTnB/TXeh
/dGmeaxQwGbbT9QYdRDd9COZsriDZYXkkQfr9YaK96/FrePXIvVUz1Or0cmyHUsgITLfqM8OhSBV
BdL2rNcXOi9AFT3VxZkJ+IeDwkacE6dq8vEWCmUcZukHC4RPdaqZfpM0hgX8h14LlpBXFz3KU6ps
stnUdKaSl8DqR4b5uGshDHtOOk7Svud8GFyqb6HoNbJVvyi7UpBjxqmI5DL0E89yTh7udjSHjE0O
EsGYecKBMaMVmEAA0hsg4rzxD35fjiDEhiZF78kTXlsZu390+W04iYILFB7J0fH4rVhhTeUbQh0O
hQgYvlOgLSA8KZ7QcNRM6joD03iSd1gs1RC7V8sGMmcLCBn7mAZ03Zwy2EjdD3RGbDGjVktY+5dw
JALFEe11I6StmuTQWd/PTGb+40QMW4J/TJP7VhGmovQPUHIiGgc1zP1y11jStRo4pc7zTasxJSI5
+4aEQq84b009I3c2Qg06nkQUfk1CV0mGGlyK9TP6NUz5zEfVBl3LlYPBgUizPLQjt5ZcJHcIhVZZ
bfSauBEOBsSqrtfQ2it8o0AnW5TT4vXZ9fDX78ObavvHIrAKGzjfeBOzsIapTCMHtBKAIcqS/nSM
tMMV1Mdzsolw44fFNyJ4vvimqownV/va/msj/aivxqp+gBQhBJ4JexrCWY3brln6L0Nb6AQQIXhl
1EYYFJbEvRFpi/IvvJInK1F+Etic5SakutfksboL0rer7Y59pB5887yAIvMjC880rxFdau6X2rJR
BNKs3QktHPFF1d7MLfms71GoNvC5AFRR6fNB3loJFaO0mSLVfFR4Lw+ADPrynO6rEWC7K4CDJjop
PdJFqGRqkTQm7emTiUblqKoyTb+OYYA38IylXB/D8B/7SyO9BgenjYYjD6HjJrlvVEJpcPCex9v9
CzZQuSMV2QdQPmOuzn94kFlpqZk2j83qB/HYQc93d1m3SXTfv4z+intAunnVVcTIxwJbagoVa8LC
UeMNdTtVUfScJ/v5kYaBHkumDbUl6c9Dmxa4Ql/NAM1OXwM0ggpBH05/tf8tOle9Gb2hvKWY9Mt/
IauKpRnYL3We3VZJ9WPg4AAv7k8Q+p8GjIuQK9rFN5fv0yABUNueoRSH3ft6zEwN1bDKuSbK7ye9
93/Y6IYzqycyFc6K8K+As5z01GmpN6z/Ta05GW6fTmRenhzyzq+RmlDDkpMn2K/kInz1N5EglBo3
zf2LyKp8rRJOA7zGkMJt2vIKDPB+RRTjrIPrxBOdMhFQrboefMaVru2pmONe5QvhgjqVMY5iwMxV
4/Dy4GnvkXFwhQkcQiggEwx8/65gDUeGAj2ANrIDrqBQaJVuRovMyoKbicorC8WExxoL5kleo7gR
L8XiEs3Dd6FqtQg0zr51BHt4L7022y0Jm/pXeiBdkZcQ5iF3TB+qMTFe4D/ffug5RAGk8+RrZEzd
+3B6a7ZpEg9qSmxp4T6OoXbeHXHOA7RjebL+r19aA99xWbUiCtFNZVUD7L7b+3FHBfEs14BRnOem
QSG083T2Y73wzoXjkYrhpwMnpcdGqNJfw4IpRjUEftJbD6FNSVIk1cAnAORvjm6KEHHlO1Lfnhid
crTZX2LodOCCgkCc2d6ZfV5etKyE2WDUPDFwu41eZ9Qkk73dwq5vxogroWlBV5bPdPrFfjbqcfdS
kgX4H8VvF79d36JP11vrSAJ9trgBmFp4ZVTFX4duc+OMM0VygtuH3vKl1y0osBlllqe3sWzxMD8M
6Z5nqtU+x++avEGxiixVUTPxjAcqS84ZJ3akcccaOV3VK+xoIQ2+mnMAzdIoVZRmocPHVUhHtRaq
Vw84ERzq0mVxGvLy70cFaIIxSZxgsm8Y4BIT1/rw5aA0NxMmCpDIUo28xgH8zEUX1dcyn6CHPK3j
ZVON53AmopoUar+ZhdEvD+CDM29VNCRZGf2ujsN1nr0T0fza7Xni3y05jhs0xgvd8juxaRtbgy/h
wcv13kiTpfr5iNOcu+T+BTs/cbqLa+/WmD71GGBP8Kth101+HMSOoX3dyunxMLVmbGptFAYGYV90
tZHvqcOSPZEqJ7LmYbY45tTti2izKYH++Zs2v9RQXLR6oLwXZWtRNK1RsSCDvVRdx0w4PxPpEj+B
1vrYG8XT1K65+YyPX3pots4FE8gcHigQRuSPZMVMbHdfZps410ZP42y+F+4F4qAzJulGVF20MyEl
9vVta/cYUzrWmdBrsneBY2YKgIsBn8V4aZvmgZhqUQqzo/2LE2OiYl9XgupydZ9ZYPgN74Lw0pzW
mUMQReZGIxzwMVIFGhluxaT4ciBN9L6lVhUI9Xc/95nA8T1VTkfU4bKlTSxQGlPi+bJjFOHXS65k
UPfET8GuBmKm7qFVXhJ7MC++CZGMci4Nthcl1YlolyrDFP7afvbNcr9qrCj5LnZ4JcYdF11pc6nw
GiNfWRr8vXUSh8u41Jan63Sul0SPW7zq4GFylQghIvM9ObL8sMIJFzYIoH/Wtcnptn1jkJpn0sle
WnkzhdcEUQLmGJ3sN2MEPkCaf+RJPgR2+2REQ8/Xb7ENnN0pbhH7CfXngPGsuyPye4JYeIOaTvJm
jENsKVTHnPguWl26HKMCKBrbwPmRnnlqNXAnvmh/Buyv+6WgWbsqMIq6r7wWEWivH9iz2AGKvE/d
LRFEtvClHQnAasp1lB2TsLl1ginNJXHBCuednOKbSty9rF6DJZ7aJQKFREbekTAlT6UY7fG04IBs
UJPHBliAZAo17dqMHtCymy67EH7tH3c+vm5B3S6vsFovjq4SQA7sgiavcHsazQw4lj8ck3QKBV4e
VbrkN4N4ajPPXa1b+pGP+Yj8Q2XZ1CtEayVRHYLUzcsJhh0VdNNHwzqIUOZVE768H6LmXVgm3DV/
1LpXcBB5uvQxK3j/t933DbrwJDDkjNbfKpjqPFHE2w/3peKHH09D1BvcGtUOcZx6GE1SzqLSX1TJ
Byg91rLfyPvy5Wp2vW5H9STx4wYptcTBsX1s9pHrckBlDetHlXEfr0Fg15m84+wu7wLzoHoBTM3G
IvpZGvJo5g9t2Xdq2lcFK8Lh+qyAH2osoLD7fiA4VwXH27rW2hpMUc7SCqrGXXBVD4rgyP3S+3jN
Hq/2BiTMy7cmpNfR8mQOMX2wOs80YzzzUkqL88/JL1pMkfobTWB6U2ASF9oKV0kOmbOH+0MwXSsy
KHgJf2SijtUyrokO9JLVnzqpwIxFruhmoiQ5YCfVtC1HsQUdjdlakgq+0g0vlY/nROmjjqUcORH9
laiwWn9i4WqNBza0m4vUadPCWtW2WRtGFnGXkseNLNvjPJJTuUn+XEGxj2BBVs9mFhv9A1zYQu25
f86V+Jzr9MpNjpvfetBCUgkhPjsfiaf3VnquRsI8txMdovqv53jIQJELBzG3X1V/tQg0AjA14yHV
HodaB3Pz8daH9YoVcOrh2KKhWtbJnLTay8BUQuu/Fp+2YhkN55uArq/8M9MXiStHbwM5v+Yi0hhN
xMEnKW7uv36Ilj5kN9zrR+vMA/ai0aqRQ92I6G7RmdBw0Q1Egz3wku8EUNuKv+K4t+zR9OyKWu8O
mIeQcnTTAV9SkMgZ6GoH3hpdwvHxkhmqv0JLCc4v2xbXZWSjbzzguN/Rd/F1mhw9ePSrtokymq0t
ur2O1qcunkDmGBz6MV+hqPNVLQx4WHqx1VTSuZ+MnQx67tsTtB5LtjqtBPpJ8Ieb89qk6pxTnCDB
81z1OgD5qaXppIEEIdwj1OXSo8jJIwECaGYhc0iTKqssb+ZLJwojCIUhC4XrwxJV8i8zmnIz4VL+
u/HI9gxPrt6BBehhPN6JvTd290aqBJGVU+D3vkCc7Y0xI0bX7Ooh2GNvwAuK4nZdiwe1vtnucB0J
CiHEGD8FxY6170m1H64SRTTPdnSH6pWkvONlS9xnqk3+eFVlgiiGFrnbASIivMxMDnRKflTZG3Lx
Aj3IboJ4L+6WxW/+mpvK4liuhBVikmj5snYnji5X0rp6gfxtLzMqrsA1JzWgjUED1JFwiZKh420X
VHaKnNiPXs5q5fs3+k0aEK4YSH0sdNWq9+4dxaSNL9iOGBDALqtxXxTJQfb+rNxScrl0ujccxWJf
K1SlvWoYZCuCejAMTSCB3fdGntes+TFcIIXDioLBv+L4PLeMEWiEP+9KmEvYdRhqDkEhGm9ZZ+yp
Gb61JQihkvSF8LDBjzC1jgUR4jx/vBYzE5bTR//QBm8ozPJTK+1DmWWS+aTjFL3mW8GhIW2yZ/ca
sYVl+AVdom4fUHPMo3Is0aQ2CEd8WCoiv4HMn3GoFV2rgvuGtcEMMFSQBF1kIZBTcmxopQQLT9dQ
5XOIvTp7CWEKMtvZLm88fS6kkTALbQghPQbf4GMDBm0/ePvaIPOCNd7eSV5hXUTJzPv7P/ngV2yZ
vvp6vc7xqzIOrGebZ/DkOEFTdBGhWJxK0HjKHtSV+YIxSBgenD/VF6BYVzKNNVpC6C46tAFob9kH
j2xxJtQ76do4+ghv6ZnX851gICXcDePQ3hk7rAyB5yUTUJvhQBftcd7XuPJL5K/USJ8Ocb+9bj5l
XMc/Al3uQtc6cennD0ngtPj2tRbvAvYUjRfZEXTUkZzODecDU3uosz+WLH2vVkB0NPRDChuwQnCb
MQJz4THPp8BpnCFMdDhBjIy1En75gp9renNhbQMxf7i23rV8GYqRcpAKId5FLy2KI0srHFI42mke
XJ+rpKaUN118xW2abONSdLibD8YbNQsTcWc1mD0aSmRulNBOhelmbZycN+zvx6Z+0xkobDU96TYw
1D17vHE4u3w23vGjdUZzxChsv/SqeNH2EQUeyyuKBIxTjYY04sY4VOQaa7T1r1CKg2cfwzrszRvx
6aEZ7vFuf4rOHYEryBZaigSFskaRJCOcZr8dWXmSNn0sM2DdaaYbDC6LKzhmYETA3NTOl5IpXxvR
/T8zhuc9aBnsKLfv17Edu5wEUaZ4jz3JMGIatEVf5QDV7I2ilPouGyZN2pDXvg0xK6HJpblIjR0r
rc3qKLx5JCTnRQhpUgcKp2a3Bxnsrj9Hi9ToMXwDmEznZodrLeTXfU3mw7Gekl2Q8Ra9btfDJ62U
9lMmTcHrs9JzFF1KGpnaRJJ1MCyW++Jt134P0cxv750Z8GuuAIzjpUfU2XNnqOIVwec7zrRrGHY0
T//SoyP6EXMSlwpCDE9muxk+sLPYxJ6pYFjEqLhkRNnqW+Imd/9gpsUNV29oSBccQaViOPVWow60
L+gsyuZM/ucda7orVgoNbrbxvVyJQn/sX8tEpuEf+zG0XskF75jqdQLjjQ4/62W2JtdTtazsg3aM
K5wvJxnsF8mhoR6HAE/xEEJNEhoSRNXOWlPo8x6IPIm+Y5Kw9SJXN4QZSMJTL7eFo0FF4BNYmdME
o+f7LT3m0ZVukD4j/Jv3tqk8kt9owZPJWB39ycgNsxfKlK/8Y/DC29IdX1JLSNdVin2cV2imqU44
KHGnmV1nfuobS9KnZmvHaUTXcpaJrTE6F7R9oBRKPASelnSfSmcbwzeWmWUZoLQIEAlpl6/1BbVn
GtNV027NA1DSsXKxX6I+fRAH9JyBjRadtBxg46IvbuPaKqmWiZBSUf8uR1mI+nR87+Qfs2QpJln/
rg1lZO7ccYT0M58zpkVC1bEiZBexfa0xCRizGntk9/AIm66MzV0CTVK+chx//aiJkA9sBcLU4fA5
zIs0pEESQp3Dg1AxV5Ak0/nYXHwIRS+jvmsmLnfgIbc/lUo3S8zjzDJrAPesrx3h4K2Z6jwQ9n2g
74dvcqn/Nyy8EhSd6AFPQIA+OP4ZKPwIgHtXQiZ4aZJLUvEApA3nepTS0RU6DP7cIehmJk23++E1
jcbGdnZ9R8X6NXV+R5QTHLMSsjUbkLsJyDrSvFK/cqakOTGO/HI/PDSrnHopXksRRXdEOmGKtZlW
D76l6ysyXAtxbHkQQWEkuoymAfySkvfFyBL9bchkhGVfOMeOdfCZdlwylf5rFrmWPq08/4Qd8b0b
KCzN9SitC1TkYwzp1IkP85eaVcC/sc+Evv8mGGJ1SAWooDSyDBDyt19QKFsrDkdDe1WIkDRJF7nq
iusZ3Ebytt59ETPJ6DtyD8Sw8nOyEw2UNh0giN19CPlwhTsnRrl56m44tzwdOLjiFetYrL3gxAfl
Yc/iafufE2XoVKkODo0YgzFXwq5Hde+yUKvOEFyESkQvkme7vtbKF9Pxht1VmNE83ZzyjxHoAnW8
kiOLNKRmJJzTo0U/yrXdIBMlmKq3Q/r55L8HlA68r4Yb+RQiknjZDSq7ZBzQsZc02JIcXd8oHUv5
H8fLNKWBmQWI74tWl4U53KBzemGxR1uAlv7dA5H+KyxadWOJtA9KKcRuMnEWcbYj4ZLsLGoYnVHA
KKlPs6NbsahRz6MOEP+djbrZVi89RXpxjiRyfPOxvSiKhvlEITPgGFwiWAd5kvL9nOXxYgjHefVd
En2CEkJ6LIdlH7cqdXpfRwvnKV92XlWBqLM1KR2kEr5zCzv5ozQfS/5uf8PCgcxw0Lu01wgAxmJl
jxu5aXWHwX3lcq7cHyKa2StGWo/4lQ4q4S+05AnXIctM45tFjEr5Lj/xc+YPjsVgaz1agJUAnIJF
F9PK2w6rdI8esyIU4HGC3D0WYoH1y9mykX//qalIOzbTh520H6Bxu1OgePrDopLb1g2fV4RzT/og
T/VORzKarRHXCMQWkH0Kvkg4L2CIgkMqLFa/U/EtwascsZd3tcIj2yZOse6Y/Cm99KocLvSGdSuW
9Pf6PSgcxATEXA6dF0+f75fBzcyLQQWdFSb5PjNVCJAIdpp5QCrM1i44hC3pnlLtd6kovZrBjZJs
Ih05OkP8Ygja+Xcq4s7tRzK+vSsXZobszAaB3xmH2IT84sokJF/M3oi2kGO6YfyZI6/8BSnAqkfT
kcxa1GOysF5Zf38NHDOBZEUMW0odyCn3hXb2KccDu3KhMD8q387+ycqMWeedRqBmuaXUD3bdotjT
3HVAdWzUsS/q5TffnbimsAWMS2A3qKX/VUeHoMmhSP3r0Fzj7twKMVec5Jw7ZCRq7FkI5GTd/hNf
GlseX1qspTMPvQwMrOqQNAnjuLCN9kfUnnPs/tMqW00vM2Jx4aTBNcm08ANE1MR64Dt5dqQEWxv/
43eq3PXOddkQWwGwI9ZS5UE9c3tlOhlXLiS82uKkBiqY11/6k3/2Zu4r5e3XBnGRu35eAvqAG594
AYCYAeam6UQERIOOgQasKUFKI2eiGiRhvnUPVdT7OQ9iYWgryrI7cjLrMLJIpt9jXg6oew81FT0L
17vEqUWA+KX4tsslgZPHzJnLKDj4P9jqDZA8NUL1vCYPh+BiKvjtG7ihCxI2pJRW2kOygeXtl5ZR
DPHItTG4OxT0/1QYb9KjKe3JLfUc3wTKVIlcF/cb3PN9y6MVvAuW8SJxC15OUZ7NZPeouW7c0MTL
rFad5kQPpEPTOXEDm9mCUkLJYKTVc2+K4zRkCFe1Nw5DCw2XpH5CJa/CeZSscYHjGbua/scvf+9n
O/yN5VkiDB81vlQ4Z6smWbL51v7TJdNCOrUnfi7pjEwaZmcSOAtN/RSBw1xoidssnwVn6OkXkkvZ
TZ9OjR+QMoZl+uzePX4NIkMgU+gENbRIwGONE4cjeWqjiu9kNa/IEqDIOzUOx4FXtaexeYODq8zz
WxOxo8UmrQNcdfYlh9LGLSGNqeZTiui+9lUdC2he6nJv9BsDkWrQ+OrXVuI8y3ajGoe/Fcr7JQYZ
g9cKDN0BZcHXx1zhKfq3zv6navhkXbqlTHdjhg01wsRUlgP3Cx6yO8/iXRU/C/qUTZT0e7fC2zEJ
q7FQc8y4s/kgFS/kLss2UXsRnG9I3tFF3zwUQMOKLS0HQs+ALVNawdc6+4obSDWjrNK6MencARZW
kE++c+7F7+sOw+YuGsx/PaP0LU7kNLct6tCXKi8vLjC8WtVGZQhW0oWFlqUrnYMSxZM1oiovF8EL
0iIN1RpSCkebz9NaMUYes2h23XFmBjd+/Qa78OF5rzQKeuAtSaVVz8CKTzUOfX4bqdDvLvEV9H0U
rnsas5h9AlLjc8y4OqkiN/zfl7fhlPtxTraRblsiI7dhcDsS4oGijMf6gu/uwqmdnE+kUOxZzXQf
1Cti0ClclfEFtNpZCfpLqVG2KhPYslKSBciwEJ0O30naBnZb84zpWpAWkNPRzcsBTJMn8B5BJ6/5
AkX5uXXGdmAxYSjwiEmhWbYcw63O+mv29AsJwBNo0cSzyher95JWkHoPUUP6tWB0OTQYXvLHsxTF
JIYWGHEipD1L1sIVslk2+lqibsb0IIoeIVHJY8oWhoXt+Z1N8vnGMYbVWFGVP2cxsVK23DpuKHro
UKGWMMcUadQqzWgSqcO1UmTQnIO438nhndU242Iw87sNUngUozt8W8bFgwLJA4nmX2fiw+46tpSq
eb6Pl6Uj5RfmMppFNHAS/HvP5jN7lscjhdzXww4ENXWhKtwe361s8zk8HWwaKaa7MXpsW+r9YavF
/YUkHgsaRKjjbF4pisSTfdqu02tfu4YMmCsTaL7tmAlfLh8+/Uctg+eeWUoeFGKg0D7M6WAJ1wAV
W6R72+0VS8H8t3zI0KFxa6V74ve2+Ne1PGoAaaYLVQx9RRSuNct8VlNnNH2VPVSRzQ40fBreDD//
VIS989BsIyZc6D13HYXpuNZdDCfI22/MCep/vaJxgUfnu9gMlBhtJdjt3r6lzWX2dNuVvMneT2Br
1IzROT6+7IcdP9twnCDXahK9KUrD6/awZMJAGtfZVcGBPJx62Y5J15Otx3UF9XkHfmOUYYiJkFG7
EPC3KSawuzZcN+mZzV8sj0ufGuOZzroJfFiriYmUdplpZeeRWWwm5ZM9nPU0bFLJhpN1nXIqIkSF
htfwysfqGEkrZLUm9AVWqBuduQqsfTQ8vFLvhncMk7FxvKWQeNRuhFJxf8yRRWW0fCTVSU7E6lEN
WFw34NiohLUwI29NqPrqu35Stb3pZa6ZoNrei+SuZ2ja+kqs3C4R61x2kQ1Ta20iXXpzzvEVgnO7
ZtCxEgoM3Gvxt9+0EYlyHziXYFg8f2GJE58StZoBQdb4xdU2TfTKZ+EOcvjzmQdEHp5xKc8OCoyG
SPsvgYmM8Cl0Lz0V//GZOemS8wT9C/bcBYfu8Cf4d8NrnBUXWkYdt70bKD+V0cLXHbXT+InEP/95
OpRjksXNFOoZA+BMGdsGZGptmX+MDv9TgS989i49PPZ1Aw6IweDnyEq0sOqPGJ1TYHwH0dd8HDEp
PxqtSwE7Y03CNJrv31rPFYtgEgsxKk5WjHSRg095Eier7PVgRlyKOQnWTNa/jZcQDH+Mwtq6jD1i
FEChqmzezKLUSeCMG0icso1xP3EvTilEf5WCtj38Ta2RKGWPRcaNrMfMTgcj+0U7y7tYUW8DnHSK
nIu+L35cHCGZpZdoxcviYRKT82w5ILWIl6lY1MaINXPVIXYN4nlTMyU8U444d3dJrgAWfBUdHe7v
78T2VZU3dqIIxJLC9uJ/mqHaYnM+KrQWkmugSt0bZhwwSebOuyxcS3LsIjYY2zzb1iuoi5SHC0dE
ZgYaXRlc3WK+h2XK8jAzVc3ao0S8HhsZEoLU8rgAwvKeUxo8VEuFSq0WpI8ojesi7aeBelzMRVHo
+X62i/QJ6PC+7+qyUyks05GtrAFr6rFqXWRrowNgvww7ywH6nA6a9N3SDC0BDt4hxBkUEc++nOFf
7iqsKThvCkQ+BGL/rJIvg/gVSl6hTSTCN+tBKzA2lU24trMeWnH8DIVLVxXKrKpXsk5ZiPW3m02Z
uEAni27jeqE6i3+IzGXwD8A7ISlBl3tKX+R2h3N87EMHbPGHnTue5u2/LP1I3pOFgUgS0/sBv1fT
7TgKIrfx203v+4/gQuytZ4I+/A6USE4SWSTK2O+pGc3mzYydKvBycIMOZE1UB84IRMlho3IRdZI+
trpKIzQS0DRnCa+mvGUW8qWs8uzZfw+ReyJL7Cy5aj5FOSunRXgyaBNPXE1VKOnvKNja9HgWuZ+1
dCfVJf/9bJRwv96yJ/nvv9kuWHaye6AWzxAaPP2qm8LtFgzYIBFgfaYxcgn2Aw8zP0z4mxbYTyEF
aFNvW6dRT2vEnWWZ3atKhL/tuIZ4x8NrH/hnRye8cxvz8nRd/POyFjRPIQd6hfjVKY14N7mP3RFp
lcOPJuZLFTwFcnf0Bz0pxqp1cbV7FKMDID9Qm887mzJhxR+umdwojxYztDo1KKtNyI9rzB2A/hlZ
A42s592DulJhEiOH4m3aKcEdhpwpswuATXj+4zJBeQKPUVfcXAm7jnC5Iyc88tse/u2RdugwgUGA
/olWNFiaR89SD0oDS/8WOmI8qtIHb0krxQAjV7yCzkGYriKNeRh7YPqmcyKVhH2tFg/U7yE0GJ7E
YmhhxPx749BmcFfpnkHpDWMxqYzAshlwFuR6k/nNFDWhZbiueEwZ9URSMOITaoezmaNOTMnnvGLX
rPs18rE1bD4ZjdwnObznlZyuMU0MQfLMU9QSH1WwV6hrkynhJSkKAV87hmubcrr3QzCaqz0CI2oS
6T0J48HwjCzvi6ZZ7104FjEp41Mrlwayufe+59/8RaxMUxbA2MbHJm00r67ntmIGNLZkpII10k8l
SLQkSyN9b3RUDnqovkVJUlSPnLioLWLb4wZvET7P7hg2iHqIsAmm+xXbf+kgoqEKHvUZJTv2J5Dd
sHAl3HC32cvr57pYJv6ZfD/KDofkLhQoEp/1XWKRuFOO9MGj52lMzF/FcBJtizD0sLi/Bu9F+WLW
5oYjL4STogI0ko/U2eh36M6ERjO+QhIOiw5r2JH0qbLbORncqLd4aYksmKaMsuIpDH77PCqd7vgm
4EELZL3XDZ4ol/g6tqM24uPju006BwYY2UOZLnc75VK46vi6x6rzhWLX7WH077Y+SuuEX0R/WvCh
vc+yIGWjeLejo/IPhWbY0IjH07PzUlrWRVQjWzaHT2vgX+WOSwcLL3y7/uJxv4lvvaZpWSeCQSdG
2vLvchLRLBdtwt/ob3QQ6ngFsuLmOSP/jbBioDHiOKLfE6jWtTs2L8w/5z4Ag0MwoLETKLouQZk7
LLwzXdeQ3cwWkSR3Fq1rpsQZV46pgbbQAeh9dBimRqIBPMazVhJGO5hgmh4smOspb6RWkLpzP+s6
YLrXr04NRaSrRKnhfkzgVoX5MEVEz37lw0Ej3blOHmw7KDWEqgq/T56DV9li/Y5rFLJ6iYtWq+Gx
elcOwWEa9i0Sf3UsJcNOGBxq8Dw4kkUESsNUkw4xDLwvCeXI8CwOU1cSLVN27CK6XreW+lWItfRE
cd4p4CPuf/45ROPdybyQMOZ2o/vgfpttKeQWQftmToi9q0CMZjf3QRNzeQAdwH5orS+QW6bnKY7Q
YboHa0ych1ogOE6rB/KPvSn+xy3g5fpLB1R158+gemUZ9J+Wtrc5mQoPcjo9KRIAFPd0OzlrNqS1
Cjvb76xMy8dIZdFscAtlAKci2hHG6zabRZlh5Y7q4NroAMw4+6jep0pOEZlH3JT3W/+ujSHLNBkw
pXU4b9+5REQdoA8sYZ2mRrid3/UwxWaIFiTfRQGpUr4x8jhz6/nkYNoQU078mDVfKTm9ZKwMSPFr
KZnDg+aK0SPRAUM4KnD8yc/Kcy6okwMX0F8isVzayV6zNJ41+QyDGvHWO998IL9GLmcb9lkTNPXL
JW3BNjCqA8OS35qhvEGn9PdUNZ++PhlrYSNClEbU+16cTOR4b612Vzmcg/dZMmm1btYi+znHBTpK
/VV2JCvCPN7A8uZWh9h6sM7dUTW8UYlmyFilDmoZ8RjkYm86kLAViVhcb1tVri3H+VN6GV7XJ5PL
LyV8e5EzVjkwA1g4DlIrm0fpsAk4Dv9wTaYg81TB4mG5doPjT21mG+mbXxTCuhCFGV9VqynAsTcx
Vp8EjwtYzkLRPncMcjmD+0KVDx87ltKcyZ4U2SmptYDTbWOYKAfgKrbAL8Zw/zlP8BSYu3Cb9LQy
nE47Ets4JbU31rw5qrk10xyfWBQdBQeHy+vNM5/AtkaLbRuvSMThGKynXwbN0lFJIjVe8szIjIgW
w1mV4/sXm4aNBaASEUZ7+5S2Tnx4dKYraRYsPceMOUuE51+31Sr67wCm6/5InneGCeWRyXCQUUHi
aJ1p+dw/GcMa46K6lM+Vj7aZ0iOCcPx/Gwtnhtxzuzn75WvHc/oqz/FVuUVKdy7svhBizoK+X581
AgCubPtU+C7ZlSzwqzQoBmJnSK6fWTmqx0nLu4XW9QcpXd4cy2oO2ANv2nTaA//1sqboslrBreAl
6iqrzHnEgLKpoAflGxZgOcB7727bOLF5JpCaTxdgpIaYmIZlla9LC7rZVxA9TQH+1iqEztTmIidF
90s2TYb+ElJ3v6UcGXliQ4G/K8UkQL4xWzA0npEETonVSbngWMksLSX1Du/gvttj9NIKJ0v+MqkV
pTILMmckZh45WN/sxvKNjLJA+4C+3HpcBc7d8AcKdlo5+yuaoPx26FeZUdYJys3oRGj7huxFavtl
Ju9wUkvQAgEOZEJ1ahg65F5+UwFgzaSHhPExCbJmKkP5rd4JH5pgtWz5Rc8RNido7UJlyeWoQ5aV
Efnhldop9RsJALTSG33eFREh5uZq9RNL4piubnU8L3PVnjnNawxAyViisARjHkKxmd3iSKMYq01G
hE5yPtKVtRXhETkhrtEsKn/vFq87lXvAYjCMPFefjHdE8WW4Nmoe5JF3wPCU7ro71qFPKsoMuF3A
ZfX81xlLr4XzXfZ7XrXzwwk1wtUvw7RCu1Id1L30jmk03CXxebGthudVvX6T3KiEzkpQ+zCmlL8A
zyo0Z+odGtRa8FJP/By4QuK/lLE1i37qfLifVoi/Ttiic2NW9lGVJWmGYlzIS8AAq5r1Q8qT99RG
egPiv+xDtI5rW3cqRMvKF7EDGDrnKbMI5T0/+zkqdD72vYaeA9QJurnlqI1bsT03FN2OtMjPxiKB
LyOLzuJDqA==
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

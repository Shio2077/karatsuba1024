// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu May 22 23:02:57 2025
// Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_c_counter_binary_0_0_sim_netlist.v
// Design      : top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PQOK10af7bifRB2FEXy8109fojaQLJ25KVKHT+fT0BhZozhagPiNQhQHLq3ny/Wf+cpE08KZ/X5X
PZGEHuFwdhIGWNnIDla1S+R08MYXriVRIAn4RycolFBx/wI5GKXNXkWwpFXl2B3BgRO+qAbkcYt1
oITaWBPKxK6MyN4YRExbkZIAjwLas51zzWvIeMq7d5Zjg3mvR7kC3gOWL37C62WiX2caKd1a1v6F
2bnBTAHGyfAqJqzFs2yugdQK808sWIAv10iHnPtiBSHBrz7iI7+HYFa4cNTYDYKSPYEr5OOIQ86g
7QJfAdDVrGU/h/BMeiKduKyeJVt8btpnJYW3qQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Buy1unEXiCnRGOQNVjNSyL8wifCr+7WNHuyXsgRpz4PO6Ub1OYKoyHt2A1O4LB/PF2sH7FmUhhS6
SSHu6MkQLoSG82VKDfDknEo7z4Pz8Bt/uTOqqvCDvyuFvxpLDM+sVvD/uHti5dXQjNGVitRidfhE
Fz3Q5YuwaNKp0tWCtfA4VzCGuf4BhTQJMbIcvLwIWmshu3v+G5H4ekI05Ww1ZZgAwiACeGGlqlPq
HdiJKwTIyVdIef+oGUZXoyleNCfejEuDiwx0vjMa5o5Lel34a7y3SOZUhVLSXuhBfHkX2yaxx3P4
breH0T+BztNhP2qV45q2waSU+3nShFtlWHt24A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12592)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

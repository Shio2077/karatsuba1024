// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu May 22 23:02:58 2025
// Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_c_counter_binary_0_0/top_c_counter_binary_0_0_sim_netlist.v
// Design      : top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module top_c_counter_binary_0_0
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
  top_c_counter_binary_0_0_c_counter_binary_v12_0_15 U0
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
os9pmLtTaGPmQ4Z0c92EW2uD/dWWvGUmbZDls2rhH1An/opnz6v5PxpQmjZHVejcUxo2tLS0awpM
I62Go3Zgjeg/vRcPPqS+88cMJE3DfGmI1O6fDLCIEJdQQCS9kIDg3gvTrKX3/zx0B9XvgXj182B6
zekXoBWrlX8MxzTlNj9I0FDi2QpnJySks/nS/Ln8RczBplWzT/bhKSYNTNLGm3jFHT0F6Ss5VeZp
51e5UrnY5k/JIatdaaUnI2ocoj/9oZQDWvpJuEyLY5vCQQK3D+T+Nl6GIZjk0ZxwkN2FHRcaiqDa
Qf/UoqcrplCzEVitwKJzBw6lO176R/3YvJquKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YFSD2gP8LgYZXfKGY1JhD+u6rWFQeRAS4mj8IIANMy8hxUzwGcEUtR5JenV98894E18zQ3Jz6DqY
kj7UGcMWdsHkKkcFWB6IwyQKUtHFntJc1t80Gq01EZpOkPAIzEmj92+m4jitonkBUyCw4W4rCVVW
eiPWv6baIeED8lMd4Sv4TSLobtol6DJPOsJ1RSIfAuwIi47EAibYGIobxzk6WEMKoYHu4qT9yx/D
NSi/632vp7HFM6ISDkgi8fiYc3uR2rw0PozP0noUXulO22NwIHJEbIvsWMl9BY059uoDkh2zlKa0
tOQZVb6a9fAKIcMkMnXihW9iWLWDs2Z9agblSA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12752)
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

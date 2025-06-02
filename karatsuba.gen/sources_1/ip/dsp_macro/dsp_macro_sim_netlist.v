// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue May 20 16:15:27 2025
// Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/ip/dsp_macro/dsp_macro_sim_netlist.v
// Design      : dsp_macro
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module dsp_macro
   (CLK,
    SCLR,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [42:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "92" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_v1_0_2 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C6jZK6NIVv+7/1tlzJd4eRQQ6rM6USDHddvHQqrYM6OqNVuoDb5I2SckTZTmmFHG4KTN9Yt9o/Kd
5NKjautnKkQ7HWmmRE2W4jwm1PX1GFp/IAoBUnks73GXVRbQoXKN3zCXrZDeSoyxDTitlRMZ3lXM
LTjoOwU6YuvMhQ4bfco=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B4lewz1Cy21BLdfd1yNiQAHEcPQq4OWCx5YiBFfP6ZU+1aLJ0rknLauGGcTOSRFkZL+QV6iyLcZZ
zysCItt7Jt15ffijwFA7jaft+7jawlZABJbceyyMNVv/23YugnhYk53jGkYnp2xDy/q61XS1ludF
Ed97kHsPfq6lI9WgyLnd2KkjQPS9s2yUAxEQ6juHGEBu2HsXUWwL2FYIuKxM/4x+nm3n0d1TnuiL
saaiFyZw4VktFHREZPeaGPT8x77Sk2QDOJ1cSPE7bttHihi/lHU6r3v99pb9axCZipRKpPnreT16
srZfmXqqxAZB6tuEsAzms8JGKjMWefmghhBJHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fdbTTtSy1o2SuzHY7hHnh7YxkGYBmOuQmkSKyL5Qx1U6qHWeYLWcwez9/4Tw/AgnafXHLR4zDAXR
6bT3DnLG6W8BAhN8J/uTjlIk5fVkKVDvbEzn9gyAaKWmXZIlnHkgOpIxz3CWEddMCuor3N1nEtJg
LN/0GFLpa3SOrzgSuAg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WOcDpzvWO34xEOiPvcGX3mgCzAYEWdhwsRO5dLZBtsZvfxKeCT+VqXfStZjvdkms7wNGDVqj81Rn
TqUFU96bLdzl28PxoG3NrFyo2/6kmtQlE/mnT4Bzk4ZWJc3V7pk9z3UimkvyCuUCC59BC18lEARX
ItIOAkkfxrYcCWt+oQrYDslq0Lo8h2p39idJiF6/iWFwAcWsGrxh1dBWoWTd8K1/chHeMKLB+PFl
nFWgeN/Wus+nkbSRgmuCIxA0u10haujiodnkyESbhhCon96pwG9uNvRch19GjAlHeSCYtWr/6Xo/
cGSs71rTga7lB9rHIGtuNH5WRRW4IfyWWSr3cQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w5zvy+xN1IK2h995gNfb/PJc3lx6bmpb32X3OPGD6Cz+Hnut1WrRpDFxI1y+U9ZAKyRpeoVCrR7H
DS2lr0IqNfhG/ydpwmzqPQi1vGf4Gng0NpOWNzEaGFyuKsbfdOChGU6F+ZKUuPx1LInV/Acty0E/
Uf9HEK6WHi89FNEmbMTaavhyW6cgFs9+Gtxb1hLAp/+JJ+bfL0i+fvaVdFmy4Tpic02W0rez30dp
k+L8j0wlpmGEjGUci3V8DO2W70LDuEbVuVXEdte0Gy724MMNN6iwKoXCLDTDnEoOR2gxuGga4TNt
kv/7GOkMvrJOAwslzMwvVwXfnlQ39huRWRIn4A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FRGUkQCUsk/6aRxdk37mwHCCsCa1DvfY6nbxnsehLy12mB+1Rg4+OUWeOAWDWMpxHfnp+3Ne7Hdk
ji8VoJ8pjFkdxQG7zDSRL9mJfCaLyJmwoetg6/1XEKnJ6KOLTpiJ0P6W19SioDXptOZGjNO2u88h
87VrQw+nNz3Y0WAs04NEfuZCKspz8RMDCaVJcaSUKryAGqpTHASUYqzlwnIV00rVJAdiAzVI4vf+
YKCTsvA/LL98nZvGU4y85CClSJRxraLDLzyfBt9cojmuseIWD0/QLFd+jg+feBcGqK37hiY+LA90
bPnYlJsCRi7KUXQf+R4o3aUe25budbQp5O/hGA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LPEZd7tMkPwqna9oBQOVsS+EroGq7hX2uysf/rHwyuoVq58mgOc8lNbyn9IaWwlLmDWZTOdau9Js
4gsBWmIOee12BH0adhmdrZzbrhLhkeLDETc3El6IU1G4kGpVjIzo1hPF+LI2vm5PO4S2GAhjdnF4
viO4wTcqZZNiPVoqsEo12WUsrFTBIXK9wnFz6creZaBsWjcfFSRsULDJVV8IvGKIC2acGD5S9aJ3
NmN72HPXR1vgfbfAJ4dJPuxwe/kG/Rus2F+bp+H13iqGQ+5/5gkfzJbuUO3k+a1CaGH/S5OFFoFH
mfROvi1WVzy86BSvfO+Ixp5DqrawhZnlmOXGZg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Ai9OZMMAM3N67/csiK0jt4C1EW8kzQ4ZuwLYrh8tqcVPB3k2nqMKHjodBIZJY01reA0v8nfkdQhG
nRJTv8miJQ/Ir0q2jI3ok0n5kToxVZBjpYwMrax6vV16U0CxBuOeTSw9X9buYX4zKs22XrMG5voM
kcaCy4UUQ/AZEhE6W8ggYQBcfpHgPc/C+wGiFwaIcm1yn2HWUMg360Pfk79Y/tSLYCi3gdacUVYL
B8pCvdPM8DVx2d1Q9yjYaZ4pshEZLF83/pAVdo/+ONRTv3XH36vSTXNSbo1pfVwGMyjGDMMqdSry
V6QDC6bIvL0husCHNCy5OUqT1Zp5a6ZcqX8B+X2we/6kUdCHqCCeqVQy5JUpuQ4RHrw9rrvanbdE
F9E1O9ZnM3Lr7E0nAJpHkY6NEeoC5Zz/U5gGEGUDTF48BGLMfDICUNPtiAgoWSEzhhr0q7ncfIpL
iRwXzCS2bfWndq0Y+ACZDpboAdbV4rtTYxTq6lbwkKSCqtB+2NJFJra/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eOp10fJ5pjAsqI2Kz+zVsQ9fVvxkxqEkBfGA6W2BxCFjw1UIRU0CFsl9fapK95u4Qa63GeWb67eF
Yfd/Ynuz4hEtzLP1dgD479zGaq1CzV6V0oLr3QtHYJLUmgmO5c2DiP+NPt1VM2IZpNwBwVT+KARj
Znb+5RgiR8mK+Bmc4YQfiQTUj+DN7NCgSbkQWEKQN/y4K6oR29x693+BwjWUQnUjpJLGi/xMBMpx
PVUnDib6K+wFyENiTHZjWsXWS/xbkSHx4DvvJoSGCgi1TPma511meqPPX3LEFWigKNoeUHosmR7I
V6o2mtx2bIlydD/OZDal+9lOVxxX15LoXfZd3Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E33QIt1oyBuFCkdhRi46O2sl8Unq5vS3hJ6ObQ/NJNIHl3qUbOLtsVoodJWZN+LX8T0RRX5ra3ai
DULF3IQhbUGtwW/qpxJPd9pmr+Rh2jb875GFWPDiLQpz2hWQM7ImkmLJDmSdyAUrwbCgk1b3PoqY
iLVWWw9+defaBk1hYDtkIhYtUdPrEIqhgpXChcu6ooDsfExhyJD7k0LE58uAHBA3mmIPNgxuan1J
u8Aj8Tp8oqCgZL/JN9k+S09FR6M5HW/leL8u8LbnzU/qCzvD0mrJGoJUmx/AclgsLXX4aCYsVqdw
uPovxQOhws7nw7PTfWkwQiCUrkgsa6LXdTbKFw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSzpR0jKu73LNRdZ4uPmvjkDPp4cRKqXk3W+KHrYxbOQM3kKHoe+VKf8collzoJmY4NJWS9qIqhR
HH7PP/VvHIy53B6QBlket/go6SWbVb3O1Kh1OzO2AB8CcyFyoh+MZg0+8nxM/jY+KEJnysNIuOID
D1YTfLfsGKLv+VAMzXABrGaNvbM5Uxu6ePaoDPeAj+n5bc3m4MWiG3sDcR5aYClr7T8uAgCRRHg1
hc5mS6TFnGjx5fGn5UdAIKenNabFK+f4fNfnsSo3lktXkOXm0P3uZ7ayNkb0gxs4VbEZ+2H7uGp5
/BlPT0F+MStcg/igNEKxTtF1Lpw/Rops4K2cLA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48400)
`pragma protect data_block
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
rRwNNQBrWQ==
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri May 23 11:58:40 2025
// Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_util_reduced_logic_1_0_sim_netlist.v
// Design      : top_util_reduced_logic_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_util_reduced_logic_1_0,util_reduced_logic_v2_0_4_util_reduced_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Op1,
    Res);
  input [255:0]Op1;
  output Res;

  wire [255:0]Op1;
  wire Res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic_v2_0_4_util_reduced_logic inst
       (.Op1(Op1),
        .Res(Res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic_v2_0_4_util_reduced_logic
   (Res,
    Op1);
  output Res;
  input [255:0]Op1;

  wire [255:0]Op1;
  wire Res;
  wire Res_INST_0_i_10_n_0;
  wire Res_INST_0_i_11_n_0;
  wire Res_INST_0_i_12_n_0;
  wire Res_INST_0_i_13_n_0;
  wire Res_INST_0_i_14_n_0;
  wire Res_INST_0_i_15_n_0;
  wire Res_INST_0_i_16_n_0;
  wire Res_INST_0_i_17_n_0;
  wire Res_INST_0_i_18_n_0;
  wire Res_INST_0_i_19_n_0;
  wire Res_INST_0_i_1_n_0;
  wire Res_INST_0_i_20_n_0;
  wire Res_INST_0_i_21_n_0;
  wire Res_INST_0_i_22_n_0;
  wire Res_INST_0_i_23_n_0;
  wire Res_INST_0_i_24_n_0;
  wire Res_INST_0_i_25_n_0;
  wire Res_INST_0_i_26_n_0;
  wire Res_INST_0_i_27_n_0;
  wire Res_INST_0_i_28_n_0;
  wire Res_INST_0_i_29_n_0;
  wire Res_INST_0_i_2_n_0;
  wire Res_INST_0_i_30_n_0;
  wire Res_INST_0_i_31_n_0;
  wire Res_INST_0_i_32_n_0;
  wire Res_INST_0_i_33_n_0;
  wire Res_INST_0_i_34_n_0;
  wire Res_INST_0_i_35_n_0;
  wire Res_INST_0_i_36_n_0;
  wire Res_INST_0_i_37_n_0;
  wire Res_INST_0_i_38_n_0;
  wire Res_INST_0_i_39_n_0;
  wire Res_INST_0_i_3_n_0;
  wire Res_INST_0_i_40_n_0;
  wire Res_INST_0_i_41_n_0;
  wire Res_INST_0_i_42_n_0;
  wire Res_INST_0_i_43_n_0;
  wire Res_INST_0_i_44_n_0;
  wire Res_INST_0_i_45_n_0;
  wire Res_INST_0_i_46_n_0;
  wire Res_INST_0_i_47_n_0;
  wire Res_INST_0_i_48_n_0;
  wire Res_INST_0_i_49_n_0;
  wire Res_INST_0_i_4_n_0;
  wire Res_INST_0_i_50_n_0;
  wire Res_INST_0_i_5_n_0;
  wire Res_INST_0_i_6_n_0;
  wire Res_INST_0_i_7_n_0;
  wire Res_INST_0_i_8_n_0;
  wire Res_INST_0_i_9_n_0;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0
       (.I0(Res_INST_0_i_1_n_0),
        .I1(Res_INST_0_i_2_n_0),
        .I2(Res_INST_0_i_3_n_0),
        .I3(Res_INST_0_i_4_n_0),
        .I4(Res_INST_0_i_5_n_0),
        .I5(Res_INST_0_i_6_n_0),
        .O(Res));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_1
       (.I0(Res_INST_0_i_7_n_0),
        .I1(Res_INST_0_i_8_n_0),
        .I2(Res_INST_0_i_9_n_0),
        .I3(Res_INST_0_i_10_n_0),
        .I4(Res_INST_0_i_11_n_0),
        .I5(Res_INST_0_i_12_n_0),
        .O(Res_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_10
       (.I0(Op1[150]),
        .I1(Op1[151]),
        .I2(Op1[148]),
        .I3(Op1[149]),
        .I4(Op1[153]),
        .I5(Op1[152]),
        .O(Res_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_11
       (.I0(Op1[126]),
        .I1(Op1[127]),
        .I2(Op1[124]),
        .I3(Op1[125]),
        .I4(Op1[129]),
        .I5(Op1[128]),
        .O(Res_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_12
       (.I0(Op1[132]),
        .I1(Op1[133]),
        .I2(Op1[130]),
        .I3(Op1[131]),
        .I4(Op1[135]),
        .I5(Op1[134]),
        .O(Res_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_13
       (.I0(Op1[6]),
        .I1(Op1[7]),
        .I2(Op1[4]),
        .I3(Op1[5]),
        .I4(Op1[9]),
        .I5(Op1[8]),
        .O(Res_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_14
       (.I0(Op1[12]),
        .I1(Op1[13]),
        .I2(Op1[10]),
        .I3(Op1[11]),
        .I4(Op1[15]),
        .I5(Op1[14]),
        .O(Res_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_15
       (.I0(Op1[108]),
        .I1(Op1[109]),
        .I2(Op1[106]),
        .I3(Op1[107]),
        .I4(Op1[111]),
        .I5(Op1[110]),
        .O(Res_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_16
       (.I0(Op1[102]),
        .I1(Op1[103]),
        .I2(Op1[100]),
        .I3(Op1[101]),
        .I4(Op1[105]),
        .I5(Op1[104]),
        .O(Res_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_17
       (.I0(Op1[120]),
        .I1(Op1[121]),
        .I2(Op1[118]),
        .I3(Op1[119]),
        .I4(Op1[123]),
        .I5(Op1[122]),
        .O(Res_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_18
       (.I0(Op1[114]),
        .I1(Op1[115]),
        .I2(Op1[112]),
        .I3(Op1[113]),
        .I4(Op1[117]),
        .I5(Op1[116]),
        .O(Res_INST_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_19
       (.I0(Op1[90]),
        .I1(Op1[91]),
        .I2(Op1[88]),
        .I3(Op1[89]),
        .I4(Op1[93]),
        .I5(Op1[92]),
        .O(Res_INST_0_i_19_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_2
       (.I0(Res_INST_0_i_13_n_0),
        .I1(Op1[1]),
        .I2(Op1[0]),
        .I3(Op1[3]),
        .I4(Op1[2]),
        .I5(Res_INST_0_i_14_n_0),
        .O(Res_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_20
       (.I0(Op1[96]),
        .I1(Op1[97]),
        .I2(Op1[94]),
        .I3(Op1[95]),
        .I4(Op1[99]),
        .I5(Op1[98]),
        .O(Res_INST_0_i_20_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_21
       (.I0(Op1[36]),
        .I1(Op1[37]),
        .I2(Op1[34]),
        .I3(Op1[35]),
        .I4(Op1[39]),
        .I5(Op1[38]),
        .O(Res_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_22
       (.I0(Op1[30]),
        .I1(Op1[31]),
        .I2(Op1[28]),
        .I3(Op1[29]),
        .I4(Op1[33]),
        .I5(Op1[32]),
        .O(Res_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_23
       (.I0(Op1[48]),
        .I1(Op1[49]),
        .I2(Op1[46]),
        .I3(Op1[47]),
        .I4(Op1[51]),
        .I5(Op1[50]),
        .O(Res_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_24
       (.I0(Op1[42]),
        .I1(Op1[43]),
        .I2(Op1[40]),
        .I3(Op1[41]),
        .I4(Op1[45]),
        .I5(Op1[44]),
        .O(Res_INST_0_i_24_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_25
       (.I0(Op1[18]),
        .I1(Op1[19]),
        .I2(Op1[16]),
        .I3(Op1[17]),
        .I4(Op1[21]),
        .I5(Op1[20]),
        .O(Res_INST_0_i_25_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_26
       (.I0(Op1[24]),
        .I1(Op1[25]),
        .I2(Op1[22]),
        .I3(Op1[23]),
        .I4(Op1[27]),
        .I5(Op1[26]),
        .O(Res_INST_0_i_26_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_27
       (.I0(Op1[72]),
        .I1(Op1[73]),
        .I2(Op1[70]),
        .I3(Op1[71]),
        .I4(Op1[75]),
        .I5(Op1[74]),
        .O(Res_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_28
       (.I0(Op1[66]),
        .I1(Op1[67]),
        .I2(Op1[64]),
        .I3(Op1[65]),
        .I4(Op1[69]),
        .I5(Op1[68]),
        .O(Res_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_29
       (.I0(Op1[84]),
        .I1(Op1[85]),
        .I2(Op1[82]),
        .I3(Op1[83]),
        .I4(Op1[87]),
        .I5(Op1[86]),
        .O(Res_INST_0_i_29_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_3
       (.I0(Res_INST_0_i_15_n_0),
        .I1(Res_INST_0_i_16_n_0),
        .I2(Res_INST_0_i_17_n_0),
        .I3(Res_INST_0_i_18_n_0),
        .I4(Res_INST_0_i_19_n_0),
        .I5(Res_INST_0_i_20_n_0),
        .O(Res_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_30
       (.I0(Op1[78]),
        .I1(Op1[79]),
        .I2(Op1[76]),
        .I3(Op1[77]),
        .I4(Op1[81]),
        .I5(Op1[80]),
        .O(Res_INST_0_i_30_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_31
       (.I0(Op1[54]),
        .I1(Op1[55]),
        .I2(Op1[52]),
        .I3(Op1[53]),
        .I4(Op1[57]),
        .I5(Op1[56]),
        .O(Res_INST_0_i_31_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_32
       (.I0(Op1[60]),
        .I1(Op1[61]),
        .I2(Op1[58]),
        .I3(Op1[59]),
        .I4(Op1[63]),
        .I5(Op1[62]),
        .O(Res_INST_0_i_32_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_33
       (.I0(Res_INST_0_i_39_n_0),
        .I1(Res_INST_0_i_40_n_0),
        .I2(Res_INST_0_i_41_n_0),
        .I3(Res_INST_0_i_42_n_0),
        .I4(Res_INST_0_i_43_n_0),
        .I5(Res_INST_0_i_44_n_0),
        .O(Res_INST_0_i_33_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_34
       (.I0(Op1[246]),
        .I1(Op1[247]),
        .I2(Op1[244]),
        .I3(Op1[245]),
        .I4(Op1[249]),
        .I5(Op1[248]),
        .O(Res_INST_0_i_34_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_35
       (.I0(Op1[252]),
        .I1(Op1[253]),
        .I2(Op1[250]),
        .I3(Op1[251]),
        .I4(Op1[255]),
        .I5(Op1[254]),
        .O(Res_INST_0_i_35_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_36
       (.I0(Op1[234]),
        .I1(Op1[235]),
        .I2(Op1[232]),
        .I3(Op1[233]),
        .I4(Op1[237]),
        .I5(Op1[236]),
        .O(Res_INST_0_i_36_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_37
       (.I0(Op1[240]),
        .I1(Op1[241]),
        .I2(Op1[238]),
        .I3(Op1[239]),
        .I4(Op1[243]),
        .I5(Op1[242]),
        .O(Res_INST_0_i_37_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_38
       (.I0(Res_INST_0_i_45_n_0),
        .I1(Res_INST_0_i_46_n_0),
        .I2(Res_INST_0_i_47_n_0),
        .I3(Res_INST_0_i_48_n_0),
        .I4(Res_INST_0_i_49_n_0),
        .I5(Res_INST_0_i_50_n_0),
        .O(Res_INST_0_i_38_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_39
       (.I0(Op1[216]),
        .I1(Op1[217]),
        .I2(Op1[214]),
        .I3(Op1[215]),
        .I4(Op1[219]),
        .I5(Op1[218]),
        .O(Res_INST_0_i_39_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_4
       (.I0(Res_INST_0_i_21_n_0),
        .I1(Res_INST_0_i_22_n_0),
        .I2(Res_INST_0_i_23_n_0),
        .I3(Res_INST_0_i_24_n_0),
        .I4(Res_INST_0_i_25_n_0),
        .I5(Res_INST_0_i_26_n_0),
        .O(Res_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_40
       (.I0(Op1[210]),
        .I1(Op1[211]),
        .I2(Op1[208]),
        .I3(Op1[209]),
        .I4(Op1[213]),
        .I5(Op1[212]),
        .O(Res_INST_0_i_40_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_41
       (.I0(Op1[228]),
        .I1(Op1[229]),
        .I2(Op1[226]),
        .I3(Op1[227]),
        .I4(Op1[231]),
        .I5(Op1[230]),
        .O(Res_INST_0_i_41_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_42
       (.I0(Op1[222]),
        .I1(Op1[223]),
        .I2(Op1[220]),
        .I3(Op1[221]),
        .I4(Op1[225]),
        .I5(Op1[224]),
        .O(Res_INST_0_i_42_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_43
       (.I0(Op1[198]),
        .I1(Op1[199]),
        .I2(Op1[196]),
        .I3(Op1[197]),
        .I4(Op1[201]),
        .I5(Op1[200]),
        .O(Res_INST_0_i_43_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_44
       (.I0(Op1[204]),
        .I1(Op1[205]),
        .I2(Op1[202]),
        .I3(Op1[203]),
        .I4(Op1[207]),
        .I5(Op1[206]),
        .O(Res_INST_0_i_44_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_45
       (.I0(Op1[180]),
        .I1(Op1[181]),
        .I2(Op1[178]),
        .I3(Op1[179]),
        .I4(Op1[183]),
        .I5(Op1[182]),
        .O(Res_INST_0_i_45_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_46
       (.I0(Op1[174]),
        .I1(Op1[175]),
        .I2(Op1[172]),
        .I3(Op1[173]),
        .I4(Op1[177]),
        .I5(Op1[176]),
        .O(Res_INST_0_i_46_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_47
       (.I0(Op1[192]),
        .I1(Op1[193]),
        .I2(Op1[190]),
        .I3(Op1[191]),
        .I4(Op1[195]),
        .I5(Op1[194]),
        .O(Res_INST_0_i_47_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_48
       (.I0(Op1[186]),
        .I1(Op1[187]),
        .I2(Op1[184]),
        .I3(Op1[185]),
        .I4(Op1[189]),
        .I5(Op1[188]),
        .O(Res_INST_0_i_48_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_49
       (.I0(Op1[162]),
        .I1(Op1[163]),
        .I2(Op1[160]),
        .I3(Op1[161]),
        .I4(Op1[165]),
        .I5(Op1[164]),
        .O(Res_INST_0_i_49_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_5
       (.I0(Res_INST_0_i_27_n_0),
        .I1(Res_INST_0_i_28_n_0),
        .I2(Res_INST_0_i_29_n_0),
        .I3(Res_INST_0_i_30_n_0),
        .I4(Res_INST_0_i_31_n_0),
        .I5(Res_INST_0_i_32_n_0),
        .O(Res_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_50
       (.I0(Op1[168]),
        .I1(Op1[169]),
        .I2(Op1[166]),
        .I3(Op1[167]),
        .I4(Op1[171]),
        .I5(Op1[170]),
        .O(Res_INST_0_i_50_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_6
       (.I0(Res_INST_0_i_33_n_0),
        .I1(Res_INST_0_i_34_n_0),
        .I2(Res_INST_0_i_35_n_0),
        .I3(Res_INST_0_i_36_n_0),
        .I4(Res_INST_0_i_37_n_0),
        .I5(Res_INST_0_i_38_n_0),
        .O(Res_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_7
       (.I0(Op1[144]),
        .I1(Op1[145]),
        .I2(Op1[142]),
        .I3(Op1[143]),
        .I4(Op1[147]),
        .I5(Op1[146]),
        .O(Res_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_8
       (.I0(Op1[138]),
        .I1(Op1[139]),
        .I2(Op1[136]),
        .I3(Op1[137]),
        .I4(Op1[141]),
        .I5(Op1[140]),
        .O(Res_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Res_INST_0_i_9
       (.I0(Op1[156]),
        .I1(Op1[157]),
        .I2(Op1[154]),
        .I3(Op1[155]),
        .I4(Op1[159]),
        .I5(Op1[158]),
        .O(Res_INST_0_i_9_n_0));
endmodule
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

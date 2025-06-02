// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue May 20 16:15:27 2025
// Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/ip/dsp_macro/dsp_macro_stub.v
// Design      : dsp_macro
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *)
module dsp_macro(CLK, SCLR, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,SCLR,A[24:0],B[17:0],P[42:0]" */;
  input CLK;
  input SCLR;
  input [24:0]A;
  input [17:0]B;
  output [42:0]P;
endmodule

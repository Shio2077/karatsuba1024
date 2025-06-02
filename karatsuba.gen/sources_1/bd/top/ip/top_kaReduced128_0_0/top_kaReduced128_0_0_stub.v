// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Jun  2 22:48:00 2025
// Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_kaReduced128_0_0/top_kaReduced128_0_0_stub.v
// Design      : top_kaReduced128_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "kaReduced128,Vivado 2022.2" *)
module top_kaReduced128_0_0(clk, rst_n, valid_i, a, b, ready_o, p_valid, p)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,valid_i,a[1023:0],b[1023:0],ready_o,p_valid,p[2047:0]" */;
  input clk;
  input rst_n;
  input valid_i;
  input [1023:0]a;
  input [1023:0]b;
  output ready_o;
  output p_valid;
  output [2047:0]p;
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Jun  2 22:47:15 2025
// Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_wire_conn_0_0/top_wire_conn_0_0_stub.v
// Design      : top_wire_conn_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "wire_conn,Vivado 2022.2" *)
module top_wire_conn_0_0(a_in, b_in, c_in, d_in, e_out)
/* synthesis syn_black_box black_box_pad_pin="a_in[255:0],b_in[255:0],c_in[255:0],d_in[255:0],e_out[1023:0]" */;
  input [255:0]a_in;
  input [255:0]b_in;
  input [255:0]c_in;
  input [255:0]d_in;
  output [1023:0]e_out;
endmodule

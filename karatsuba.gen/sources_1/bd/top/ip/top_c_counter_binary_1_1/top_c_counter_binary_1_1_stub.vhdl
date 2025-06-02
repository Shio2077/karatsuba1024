-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Jun  2 12:49:48 2025
-- Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_c_counter_binary_1_1/top_c_counter_binary_1_1_stub.vhdl
-- Design      : top_c_counter_binary_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_c_counter_binary_1_1 is
  Port ( 
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );

end top_c_counter_binary_1_1;

architecture stub of top_c_counter_binary_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,Q[255:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_15,Vivado 2022.2";
begin
end;

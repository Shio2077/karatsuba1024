-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Jun  2 22:48:01 2025
-- Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_kaReduced128_0_0/top_kaReduced128_0_0_stub.vhdl
-- Design      : top_kaReduced128_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_kaReduced128_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    valid_i : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    b : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    ready_o : out STD_LOGIC;
    p_valid : out STD_LOGIC;
    p : out STD_LOGIC_VECTOR ( 2047 downto 0 )
  );

end top_kaReduced128_0_0;

architecture stub of top_kaReduced128_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,valid_i,a[1023:0],b[1023:0],ready_o,p_valid,p[2047:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "kaReduced128,Vivado 2022.2";
begin
end;

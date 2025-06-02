-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri May 23 11:58:40 2025
-- Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_util_reduced_logic_1_0/top_util_reduced_logic_1_0_stub.vhdl
-- Design      : top_util_reduced_logic_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_util_reduced_logic_1_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    Res : out STD_LOGIC
  );

end top_util_reduced_logic_1_0;

architecture stub of top_util_reduced_logic_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[255:0],Res";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2022.2";
begin
end;

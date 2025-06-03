-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Tue May 20 16:15:27 2025
-- Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/ip/dsp_macro/dsp_macro_stub.vhdl
-- Design      : dsp_macro
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dsp_macro is
  Port ( 
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 42 downto 0 )
  );

end dsp_macro;

architecture stub of dsp_macro is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SCLR,A[24:0],B[17:0],P[42:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_2,Vivado 2022.2";
begin
end;

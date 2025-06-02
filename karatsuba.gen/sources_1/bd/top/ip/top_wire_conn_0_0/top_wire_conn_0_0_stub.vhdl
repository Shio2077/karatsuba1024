-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Jun  2 22:47:15 2025
-- Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_wire_conn_0_0/top_wire_conn_0_0_stub.vhdl
-- Design      : top_wire_conn_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_wire_conn_0_0 is
  Port ( 
    a_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    b_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    c_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    d_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    e_out : out STD_LOGIC_VECTOR ( 1023 downto 0 )
  );

end top_wire_conn_0_0;

architecture stub of top_wire_conn_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a_in[255:0],b_in[255:0],c_in[255:0],d_in[255:0],e_out[1023:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "wire_conn,Vivado 2022.2";
begin
end;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Jun  2 22:47:15 2025
-- Host        : C58 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/hydrangea/project/AMD/karatsuba/karatsuba/karatsuba.gen/sources_1/bd/top/ip/top_wire_conn_0_0/top_wire_conn_0_0_sim_netlist.vhdl
-- Design      : top_wire_conn_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wire_conn_0_0 is
  port (
    a_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    b_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    c_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    d_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    e_out : out STD_LOGIC_VECTOR ( 1023 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_wire_conn_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_wire_conn_0_0 : entity is "top_wire_conn_0_0,wire_conn,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_wire_conn_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_wire_conn_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_wire_conn_0_0 : entity is "wire_conn,Vivado 2022.2";
end top_wire_conn_0_0;

architecture STRUCTURE of top_wire_conn_0_0 is
  signal \^a_in\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^b_in\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^c_in\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^d_in\ : STD_LOGIC_VECTOR ( 255 downto 0 );
begin
  \^a_in\(255 downto 0) <= a_in(255 downto 0);
  \^b_in\(255 downto 0) <= b_in(255 downto 0);
  \^c_in\(255 downto 0) <= c_in(255 downto 0);
  \^d_in\(255 downto 0) <= d_in(255 downto 0);
  e_out(1023 downto 768) <= \^d_in\(255 downto 0);
  e_out(767 downto 512) <= \^c_in\(255 downto 0);
  e_out(511 downto 256) <= \^b_in\(255 downto 0);
  e_out(255 downto 0) <= \^a_in\(255 downto 0);
end STRUCTURE;

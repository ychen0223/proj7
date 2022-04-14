-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Apr 14 13:44:44 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part1/UART_LED_Subsystem.gen/sources_1/bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_meta_harden_1_0/UART_LED_Subsystem_meta_harden_1_0_sim_netlist.vhdl
-- Design      : UART_LED_Subsystem_meta_harden_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_LED_Subsystem_meta_harden_1_0_meta_harden is
  port (
    signal_dst : out STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    clk_dst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_LED_Subsystem_meta_harden_1_0_meta_harden : entity is "meta_harden";
end UART_LED_Subsystem_meta_harden_1_0_meta_harden;

architecture STRUCTURE of UART_LED_Subsystem_meta_harden_1_0_meta_harden is
  signal signal_meta : STD_LOGIC;
begin
signal_dst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_dst,
      CE => '1',
      D => signal_meta,
      Q => signal_dst,
      R => rst_dst
    );
signal_meta_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_dst,
      CE => '1',
      D => signal_src,
      Q => signal_meta,
      R => rst_dst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_LED_Subsystem_meta_harden_1_0 is
  port (
    clk_dst : in STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    signal_dst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UART_LED_Subsystem_meta_harden_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UART_LED_Subsystem_meta_harden_1_0 : entity is "UART_LED_Subsystem_meta_harden_1_0,meta_harden,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of UART_LED_Subsystem_meta_harden_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of UART_LED_Subsystem_meta_harden_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of UART_LED_Subsystem_meta_harden_1_0 : entity is "meta_harden,Vivado 2021.2";
end UART_LED_Subsystem_meta_harden_1_0;

architecture STRUCTURE of UART_LED_Subsystem_meta_harden_1_0 is
begin
U0: entity work.UART_LED_Subsystem_meta_harden_1_0_meta_harden
     port map (
      clk_dst => clk_dst,
      rst_dst => rst_dst,
      signal_dst => signal_dst,
      signal_src => signal_src
    );
end STRUCTURE;

-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Apr 14 13:44:43 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ UART_LED_Subsystem_meta_harden_1_0_sim_netlist.vhdl
-- Design      : UART_LED_Subsystem_meta_harden_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_meta_harden is
  port (
    signal_dst : out STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    clk_dst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_meta_harden;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_meta_harden is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_dst : in STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    signal_dst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "UART_LED_Subsystem_meta_harden_1_0,meta_harden,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "meta_harden,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_meta_harden
     port map (
      clk_dst => clk_dst,
      rst_dst => rst_dst,
      signal_dst => signal_dst,
      signal_src => signal_src
    );
end STRUCTURE;

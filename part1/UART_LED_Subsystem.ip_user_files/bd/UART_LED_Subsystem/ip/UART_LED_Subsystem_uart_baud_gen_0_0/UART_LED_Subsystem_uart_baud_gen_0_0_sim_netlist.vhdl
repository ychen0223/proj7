-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Apr 14 13:44:44 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part1/UART_LED_Subsystem.gen/sources_1/bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_uart_baud_gen_0_0/UART_LED_Subsystem_uart_baud_gen_0_0_sim_netlist.vhdl
-- Design      : UART_LED_Subsystem_uart_baud_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_LED_Subsystem_uart_baud_gen_0_0_uart_baud_gen is
  port (
    baud_x16_en : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_LED_Subsystem_uart_baud_gen_0_0_uart_baud_gen : entity is "uart_baud_gen";
end UART_LED_Subsystem_uart_baud_gen_0_0_uart_baud_gen;

architecture STRUCTURE of UART_LED_Subsystem_uart_baud_gen_0_0_uart_baud_gen is
  signal \clk_divider.internal_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider.internal_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider.internal_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider.internal_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider.internal_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_divider.internal_count[5]_i_1_n_0\ : STD_LOGIC;
  signal internal_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_divider.internal_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_divider.internal_count[4]_i_1\ : label is "soft_lutpair0";
begin
\baud_x16_en__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => internal_count(4),
      I1 => internal_count(3),
      I2 => internal_count(5),
      I3 => internal_count(0),
      I4 => internal_count(1),
      I5 => internal_count(2),
      O => p_0_in
    );
baud_x16_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => baud_x16_en,
      R => rst
    );
\clk_divider.internal_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => internal_count(0),
      O => \clk_divider.internal_count[0]_i_1_n_0\
    );
\clk_divider.internal_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFFE"
    )
        port map (
      I0 => internal_count(2),
      I1 => internal_count(3),
      I2 => internal_count(4),
      I3 => internal_count(5),
      I4 => internal_count(1),
      I5 => internal_count(0),
      O => \clk_divider.internal_count[1]_i_1_n_0\
    );
\clk_divider.internal_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => internal_count(2),
      I1 => internal_count(1),
      I2 => internal_count(0),
      O => \clk_divider.internal_count[2]_i_1_n_0\
    );
\clk_divider.internal_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F00E"
    )
        port map (
      I0 => internal_count(4),
      I1 => internal_count(5),
      I2 => internal_count(3),
      I3 => internal_count(2),
      I4 => internal_count(1),
      I5 => internal_count(0),
      O => \clk_divider.internal_count[3]_i_1_n_0\
    );
\clk_divider.internal_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => internal_count(2),
      I1 => internal_count(3),
      I2 => internal_count(1),
      I3 => internal_count(0),
      I4 => internal_count(4),
      O => \clk_divider.internal_count[4]_i_1_n_0\
    );
\clk_divider.internal_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => internal_count(2),
      I1 => internal_count(3),
      I2 => internal_count(1),
      I3 => internal_count(0),
      I4 => internal_count(4),
      I5 => internal_count(5),
      O => \clk_divider.internal_count[5]_i_1_n_0\
    );
\clk_divider.internal_count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_divider.internal_count[0]_i_1_n_0\,
      Q => internal_count(0),
      S => rst
    );
\clk_divider.internal_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_divider.internal_count[1]_i_1_n_0\,
      Q => internal_count(1),
      R => rst
    );
\clk_divider.internal_count_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_divider.internal_count[2]_i_1_n_0\,
      Q => internal_count(2),
      S => rst
    );
\clk_divider.internal_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_divider.internal_count[3]_i_1_n_0\,
      Q => internal_count(3),
      R => rst
    );
\clk_divider.internal_count_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_divider.internal_count[4]_i_1_n_0\,
      Q => internal_count(4),
      S => rst
    );
\clk_divider.internal_count_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_divider.internal_count[5]_i_1_n_0\,
      Q => internal_count(5),
      S => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_LED_Subsystem_uart_baud_gen_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    baud_x16_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UART_LED_Subsystem_uart_baud_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UART_LED_Subsystem_uart_baud_gen_0_0 : entity is "UART_LED_Subsystem_uart_baud_gen_0_0,uart_baud_gen,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of UART_LED_Subsystem_uart_baud_gen_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of UART_LED_Subsystem_uart_baud_gen_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of UART_LED_Subsystem_uart_baud_gen_0_0 : entity is "uart_baud_gen,Vivado 2021.2";
end UART_LED_Subsystem_uart_baud_gen_0_0;

architecture STRUCTURE of UART_LED_Subsystem_uart_baud_gen_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN UART_LED_Subsystem_IBUF_DS_N_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.UART_LED_Subsystem_uart_baud_gen_0_0_uart_baud_gen
     port map (
      baud_x16_en => baud_x16_en,
      clk => clk,
      rst => rst
    );
end STRUCTURE;

-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Apr 14 13:44:43 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ UART_LED_Subsystem_led_ctl_0_0_sim_netlist.vhdl
-- Design      : UART_LED_Subsystem_led_ctl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_ctl is
  port (
    led_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_clk_rx : in STD_LOGIC;
    rx_data_rdy : in STD_LOGIC;
    clk_rx : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btn_clk_rx : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_ctl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_ctl is
  signal char_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \char_data[7]_i_1_n_0\ : STD_LOGIC;
  signal last_rx_data_rdy : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_o[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_o[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_o[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_o[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_o[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_o[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_o[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_o[7]_i_1\ : label is "soft_lutpair3";
begin
\char_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => last_rx_data_rdy,
      I1 => rx_data_rdy,
      O => \char_data[7]_i_1_n_0\
    );
\char_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(0),
      Q => char_data(0),
      R => rst_clk_rx
    );
\char_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(1),
      Q => char_data(1),
      R => rst_clk_rx
    );
\char_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(2),
      Q => char_data(2),
      R => rst_clk_rx
    );
\char_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(3),
      Q => char_data(3),
      R => rst_clk_rx
    );
\char_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(4),
      Q => char_data(4),
      R => rst_clk_rx
    );
\char_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(5),
      Q => char_data(5),
      R => rst_clk_rx
    );
\char_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(6),
      Q => char_data(6),
      R => rst_clk_rx
    );
\char_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => \char_data[7]_i_1_n_0\,
      D => rx_data(7),
      Q => char_data(7),
      R => rst_clk_rx
    );
last_rx_data_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => rx_data_rdy,
      Q => last_rx_data_rdy,
      R => rst_clk_rx
    );
\led_o[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(4),
      I1 => btn_clk_rx,
      I2 => char_data(0),
      O => p_0_in(0)
    );
\led_o[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(5),
      I1 => btn_clk_rx,
      I2 => char_data(1),
      O => p_0_in(1)
    );
\led_o[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(6),
      I1 => btn_clk_rx,
      I2 => char_data(2),
      O => p_0_in(2)
    );
\led_o[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(7),
      I1 => btn_clk_rx,
      I2 => char_data(3),
      O => p_0_in(3)
    );
\led_o[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(0),
      I1 => btn_clk_rx,
      I2 => char_data(4),
      O => p_0_in(4)
    );
\led_o[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(1),
      I1 => btn_clk_rx,
      I2 => char_data(5),
      O => p_0_in(5)
    );
\led_o[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(2),
      I1 => btn_clk_rx,
      I2 => char_data(6),
      O => p_0_in(6)
    );
\led_o[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => char_data(3),
      I1 => btn_clk_rx,
      I2 => char_data(7),
      O => p_0_in(7)
    );
\led_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(0),
      Q => led_o(0),
      R => rst_clk_rx
    );
\led_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(1),
      Q => led_o(1),
      R => rst_clk_rx
    );
\led_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(2),
      Q => led_o(2),
      R => rst_clk_rx
    );
\led_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(3),
      Q => led_o(3),
      R => rst_clk_rx
    );
\led_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(4),
      Q => led_o(4),
      R => rst_clk_rx
    );
\led_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(5),
      Q => led_o(5),
      R => rst_clk_rx
    );
\led_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(6),
      Q => led_o(6),
      R => rst_clk_rx
    );
\led_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_rx,
      CE => '1',
      D => p_0_in(7),
      Q => led_o(7),
      R => rst_clk_rx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rst_clk_rx : in STD_LOGIC;
    btn_clk_rx : in STD_LOGIC;
    clk_rx : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_rdy : in STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "UART_LED_Subsystem_led_ctl_0_0,led_ctl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "led_ctl,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_ctl
     port map (
      btn_clk_rx => btn_clk_rx,
      clk_rx => clk_rx,
      led_o(7 downto 0) => led_o(7 downto 0),
      rst_clk_rx => rst_clk_rx,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_data_rdy => rx_data_rdy
    );
end STRUCTURE;

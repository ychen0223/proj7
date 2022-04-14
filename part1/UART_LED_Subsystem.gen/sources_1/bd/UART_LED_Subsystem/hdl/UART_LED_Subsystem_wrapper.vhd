--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Thu Apr 14 13:35:16 2022
--Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target UART_LED_Subsystem_wrapper.bd
--Design      : UART_LED_Subsystem_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_LED_Subsystem_wrapper is
  port (
    btn_pin : in STD_LOGIC;
    clk_pin_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_pin_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_pins : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_pin : in STD_LOGIC;
    rxd_pin : in STD_LOGIC
  );
end UART_LED_Subsystem_wrapper;

architecture STRUCTURE of UART_LED_Subsystem_wrapper is
  component UART_LED_Subsystem is
  port (
    clk_pin_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_pin_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_pins : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btn_pin : in STD_LOGIC;
    rst_pin : in STD_LOGIC;
    rxd_pin : in STD_LOGIC
  );
  end component UART_LED_Subsystem;
begin
UART_LED_Subsystem_i: component UART_LED_Subsystem
     port map (
      btn_pin => btn_pin,
      clk_pin_n(0) => clk_pin_n(0),
      clk_pin_p(0) => clk_pin_p(0),
      led_pins(7 downto 0) => led_pins(7 downto 0),
      rst_pin => rst_pin,
      rxd_pin => rxd_pin
    );
end STRUCTURE;

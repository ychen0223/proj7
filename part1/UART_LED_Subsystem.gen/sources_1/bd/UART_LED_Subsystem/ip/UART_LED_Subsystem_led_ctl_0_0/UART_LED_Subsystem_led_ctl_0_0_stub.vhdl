-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Apr 14 13:44:44 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part1/UART_LED_Subsystem.gen/sources_1/bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_led_ctl_0_0/UART_LED_Subsystem_led_ctl_0_0_stub.vhdl
-- Design      : UART_LED_Subsystem_led_ctl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_LED_Subsystem_led_ctl_0_0 is
  Port ( 
    rst_clk_rx : in STD_LOGIC;
    btn_clk_rx : in STD_LOGIC;
    clk_rx : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_rdy : in STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end UART_LED_Subsystem_led_ctl_0_0;

architecture stub of UART_LED_Subsystem_led_ctl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst_clk_rx,btn_clk_rx,clk_rx,rx_data[7:0],rx_data_rdy,led_o[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "led_ctl,Vivado 2021.2";
begin
end;

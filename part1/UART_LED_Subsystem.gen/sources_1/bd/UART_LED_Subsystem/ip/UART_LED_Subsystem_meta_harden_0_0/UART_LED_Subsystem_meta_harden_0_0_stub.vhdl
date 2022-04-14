-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Apr 14 13:44:43 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top UART_LED_Subsystem_meta_harden_0_0 -prefix
--               UART_LED_Subsystem_meta_harden_0_0_ UART_LED_Subsystem_meta_harden_1_0_stub.vhdl
-- Design      : UART_LED_Subsystem_meta_harden_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_LED_Subsystem_meta_harden_0_0 is
  Port ( 
    clk_dst : in STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    signal_dst : out STD_LOGIC
  );

end UART_LED_Subsystem_meta_harden_0_0;

architecture stub of UART_LED_Subsystem_meta_harden_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_dst,rst_dst,signal_src,signal_dst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "meta_harden,Vivado 2021.2";
begin
end;

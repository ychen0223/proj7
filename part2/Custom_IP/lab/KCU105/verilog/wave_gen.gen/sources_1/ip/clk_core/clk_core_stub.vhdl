-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Apr 16 16:02:11 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part2/Custom_IP/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/clk_core/clk_core_stub.vhdl
-- Design      : clk_core
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku035-fbva900-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_core is
  Port ( 
    clk_rx : out STD_LOGIC;
    clk_tx : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end clk_core;

architecture stub of clk_core is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_rx,clk_tx,reset,locked,clk_in1_p,clk_in1_n";
begin
end;

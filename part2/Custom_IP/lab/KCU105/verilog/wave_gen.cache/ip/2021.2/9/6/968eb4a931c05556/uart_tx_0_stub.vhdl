-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Apr 16 15:17:50 2022
-- Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_tx_0_stub.vhdl
-- Design      : uart_tx_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku035-fbva900-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk_tx : in STD_LOGIC;
    rst_clk_tx : in STD_LOGIC;
    char_fifo_empty : in STD_LOGIC;
    char_fifo_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    char_fifo_rd_en : out STD_LOGIC;
    txd_tx : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_tx,rst_clk_tx,char_fifo_empty,char_fifo_dout[7:0],char_fifo_rd_en,txd_tx";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_tx,Vivado 2021.2";
begin
end;

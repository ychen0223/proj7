// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Apr 16 15:17:50 2022
// Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part2/Custom_IP/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/uart_tx_0/uart_tx_0_stub.v
// Design      : uart_tx_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku035-fbva900-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_tx,Vivado 2021.2" *)
module uart_tx_0(clk_tx, rst_clk_tx, char_fifo_empty, 
  char_fifo_dout, char_fifo_rd_en, txd_tx)
/* synthesis syn_black_box black_box_pad_pin="clk_tx,rst_clk_tx,char_fifo_empty,char_fifo_dout[7:0],char_fifo_rd_en,txd_tx" */;
  input clk_tx;
  input rst_clk_tx;
  input char_fifo_empty;
  input [7:0]char_fifo_dout;
  output char_fifo_rd_en;
  output txd_tx;
endmodule

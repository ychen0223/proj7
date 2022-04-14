// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Thu Apr 14 13:44:44 2022
// Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part1/UART_LED_Subsystem.gen/sources_1/bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_led_ctl_0_0/UART_LED_Subsystem_led_ctl_0_0_stub.v
// Design      : UART_LED_Subsystem_led_ctl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "led_ctl,Vivado 2021.2" *)
module UART_LED_Subsystem_led_ctl_0_0(rst_clk_rx, btn_clk_rx, clk_rx, rx_data, 
  rx_data_rdy, led_o)
/* synthesis syn_black_box black_box_pad_pin="rst_clk_rx,btn_clk_rx,clk_rx,rx_data[7:0],rx_data_rdy,led_o[7:0]" */;
  input rst_clk_rx;
  input btn_clk_rx;
  input clk_rx;
  input [7:0]rx_data;
  input rx_data_rdy;
  output [7:0]led_o;
endmodule

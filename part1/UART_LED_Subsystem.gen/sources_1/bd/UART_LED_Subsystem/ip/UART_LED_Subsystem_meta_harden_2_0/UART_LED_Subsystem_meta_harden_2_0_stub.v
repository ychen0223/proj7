// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Thu Apr 14 13:44:43 2022
// Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top UART_LED_Subsystem_meta_harden_2_0 -prefix
//               UART_LED_Subsystem_meta_harden_2_0_ UART_LED_Subsystem_meta_harden_1_0_stub.v
// Design      : UART_LED_Subsystem_meta_harden_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "meta_harden,Vivado 2021.2" *)
module UART_LED_Subsystem_meta_harden_2_0(clk_dst, rst_dst, signal_src, signal_dst)
/* synthesis syn_black_box black_box_pad_pin="clk_dst,rst_dst,signal_src,signal_dst" */;
  input clk_dst;
  input rst_dst;
  input signal_src;
  output signal_dst;
endmodule

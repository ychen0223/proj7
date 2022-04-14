// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Thu Apr 14 13:44:44 2022
// Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part1/UART_LED_Subsystem.gen/sources_1/bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_uart_rx_ctl_0_0/UART_LED_Subsystem_uart_rx_ctl_0_0_sim_netlist.v
// Design      : UART_LED_Subsystem_uart_rx_ctl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UART_LED_Subsystem_uart_rx_ctl_0_0,uart_rx_ctl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "uart_rx_ctl,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module UART_LED_Subsystem_uart_rx_ctl_0_0
   (clk_rx,
    rst_clk_rx,
    baud_x16_en,
    rxd_clk_rx,
    rx_data,
    rx_data_rdy,
    frm_err);
  input clk_rx;
  input rst_clk_rx;
  input baud_x16_en;
  input rxd_clk_rx;
  output [7:0]rx_data;
  output rx_data_rdy;
  output frm_err;

  wire baud_x16_en;
  wire clk_rx;
  wire frm_err;
  wire rst_clk_rx;
  wire [7:0]rx_data;
  wire rx_data_rdy;
  wire rxd_clk_rx;

  UART_LED_Subsystem_uart_rx_ctl_0_0_uart_rx_ctl U0
       (.baud_x16_en(baud_x16_en),
        .clk_rx(clk_rx),
        .frm_err(frm_err),
        .rst_clk_rx(rst_clk_rx),
        .rx_data(rx_data),
        .rx_data_rdy(rx_data_rdy),
        .rxd_clk_rx(rxd_clk_rx));
endmodule

(* ORIG_REF_NAME = "uart_rx_ctl" *) 
module UART_LED_Subsystem_uart_rx_ctl_0_0_uart_rx_ctl
   (rx_data,
    frm_err,
    rx_data_rdy,
    rst_clk_rx,
    clk_rx,
    baud_x16_en,
    rxd_clk_rx);
  output [7:0]rx_data;
  output frm_err;
  output rx_data_rdy;
  input rst_clk_rx;
  input clk_rx;
  input baud_x16_en;
  input rxd_clk_rx;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire baud_x16_en;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire \bit_cnt[3]_i_2_n_0 ;
  wire [3:0]bit_cnt_reg;
  wire clk_rx;
  wire frm_err;
  wire frm_err0;
  wire over_sample_cnt;
  wire [2:0]over_sample_cnt0;
  wire over_sample_cnt_done2_out;
  wire over_sample_cnt_done_reg_n_0;
  wire \oversample_counter.over_sample_cnt[2]_i_1_n_0 ;
  wire \oversample_counter.over_sample_cnt[2]_i_4_n_0 ;
  wire \oversample_counter.over_sample_cnt[3]_i_1_n_0 ;
  wire \oversample_counter.over_sample_cnt[3]_i_2_n_0 ;
  wire \oversample_counter.over_sample_cnt[3]_i_3_n_0 ;
  wire \oversample_counter.over_sample_cnt_reg_n_0_[0] ;
  wire \oversample_counter.over_sample_cnt_reg_n_0_[1] ;
  wire \oversample_counter.over_sample_cnt_reg_n_0_[2] ;
  wire \oversample_counter.over_sample_cnt_reg_n_0_[3] ;
  wire [3:1]p_0_in;
  wire p_0_in9_out;
  wire rst_clk_rx;
  wire [7:0]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire rx_data_rdy;
  wire rx_data_rdy_i_1_n_0;
  wire rx_data_rdy_i_2_n_0;
  wire rx_data_rdy_i_3_n_0;
  wire rxd_clk_rx;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;
  wire [1:0]state__1;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h31)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(p_0_in9_out),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'hAAAA0000C0CF0000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(over_sample_cnt_done_reg_n_0),
        .I1(p_0_in9_out),
        .I2(state__0[1]),
        .I3(rxd_clk_rx),
        .I4(baud_x16_en),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h202C)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(p_0_in9_out),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(rxd_clk_rx),
        .O(state__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(bit_cnt_reg[3]),
        .I1(over_sample_cnt_done_reg_n_0),
        .I2(bit_cnt_reg[2]),
        .I3(bit_cnt_reg[1]),
        .I4(bit_cnt_reg[0]),
        .O(p_0_in9_out));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_rx),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(rst_clk_rx));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_rx),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(rst_clk_rx));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt_reg[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt_reg[0]),
        .I1(bit_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt_reg[0]),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \bit_cnt[3]_i_1 
       (.I0(baud_x16_en),
        .I1(over_sample_cnt_done_reg_n_0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(rst_clk_rx),
        .O(\bit_cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bit_cnt[3]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(over_sample_cnt_done_reg_n_0),
        .I3(baud_x16_en),
        .O(\bit_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_cnt[3]_i_3 
       (.I0(bit_cnt_reg[2]),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk_rx),
        .CE(\bit_cnt[3]_i_2_n_0 ),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt_reg[0]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk_rx),
        .CE(\bit_cnt[3]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(bit_cnt_reg[1]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk_rx),
        .CE(\bit_cnt[3]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(bit_cnt_reg[2]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[3] 
       (.C(clk_rx),
        .CE(\bit_cnt[3]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(bit_cnt_reg[3]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    frm_err_i_1
       (.I0(rxd_clk_rx),
        .I1(\state_reg_n_0_[0] ),
        .I2(over_sample_cnt_done_reg_n_0),
        .I3(\state_reg_n_0_[1] ),
        .O(frm_err0));
  FDRE frm_err_reg
       (.C(clk_rx),
        .CE(baud_x16_en),
        .D(frm_err0),
        .Q(frm_err),
        .R(rst_clk_rx));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    over_sample_cnt_done_i_1
       (.I0(\oversample_counter.over_sample_cnt_reg_n_0_[3] ),
        .I1(\oversample_counter.over_sample_cnt_reg_n_0_[1] ),
        .I2(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .I3(\oversample_counter.over_sample_cnt_reg_n_0_[2] ),
        .O(over_sample_cnt_done2_out));
  FDRE over_sample_cnt_done_reg
       (.C(clk_rx),
        .CE(baud_x16_en),
        .D(over_sample_cnt_done2_out),
        .Q(over_sample_cnt_done_reg_n_0),
        .R(rst_clk_rx));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \oversample_counter.over_sample_cnt[0]_i_1 
       (.I0(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .O(over_sample_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \oversample_counter.over_sample_cnt[1]_i_1 
       (.I0(\oversample_counter.over_sample_cnt_reg_n_0_[1] ),
        .I1(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .O(over_sample_cnt0[1]));
  LUT5 #(
    .INIT(32'hCDCCCDDD)) 
    \oversample_counter.over_sample_cnt[2]_i_1 
       (.I0(\oversample_counter.over_sample_cnt[2]_i_4_n_0 ),
        .I1(rst_clk_rx),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(rxd_clk_rx),
        .O(\oversample_counter.over_sample_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \oversample_counter.over_sample_cnt[2]_i_2 
       (.I0(baud_x16_en),
        .I1(\oversample_counter.over_sample_cnt_reg_n_0_[3] ),
        .I2(\oversample_counter.over_sample_cnt_reg_n_0_[1] ),
        .I3(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .I4(\oversample_counter.over_sample_cnt_reg_n_0_[2] ),
        .O(over_sample_cnt));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \oversample_counter.over_sample_cnt[2]_i_3 
       (.I0(\oversample_counter.over_sample_cnt_reg_n_0_[2] ),
        .I1(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .I2(\oversample_counter.over_sample_cnt_reg_n_0_[1] ),
        .O(over_sample_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \oversample_counter.over_sample_cnt[2]_i_4 
       (.I0(\oversample_counter.over_sample_cnt_reg_n_0_[3] ),
        .I1(\oversample_counter.over_sample_cnt_reg_n_0_[1] ),
        .I2(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .I3(\oversample_counter.over_sample_cnt_reg_n_0_[2] ),
        .I4(baud_x16_en),
        .O(\oversample_counter.over_sample_cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \oversample_counter.over_sample_cnt[3]_i_1 
       (.I0(rst_clk_rx),
        .I1(\oversample_counter.over_sample_cnt[3]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(rxd_clk_rx),
        .I4(\oversample_counter.over_sample_cnt[2]_i_4_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\oversample_counter.over_sample_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF002F0F0F006F0F0)) 
    \oversample_counter.over_sample_cnt[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\oversample_counter.over_sample_cnt_reg_n_0_[3] ),
        .I3(\oversample_counter.over_sample_cnt[3]_i_3_n_0 ),
        .I4(baud_x16_en),
        .I5(rxd_clk_rx),
        .O(\oversample_counter.over_sample_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \oversample_counter.over_sample_cnt[3]_i_3 
       (.I0(\oversample_counter.over_sample_cnt_reg_n_0_[1] ),
        .I1(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .I2(\oversample_counter.over_sample_cnt_reg_n_0_[2] ),
        .O(\oversample_counter.over_sample_cnt[3]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \oversample_counter.over_sample_cnt_reg[0] 
       (.C(clk_rx),
        .CE(over_sample_cnt),
        .D(over_sample_cnt0[0]),
        .Q(\oversample_counter.over_sample_cnt_reg_n_0_[0] ),
        .S(\oversample_counter.over_sample_cnt[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \oversample_counter.over_sample_cnt_reg[1] 
       (.C(clk_rx),
        .CE(over_sample_cnt),
        .D(over_sample_cnt0[1]),
        .Q(\oversample_counter.over_sample_cnt_reg_n_0_[1] ),
        .S(\oversample_counter.over_sample_cnt[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \oversample_counter.over_sample_cnt_reg[2] 
       (.C(clk_rx),
        .CE(over_sample_cnt),
        .D(over_sample_cnt0[2]),
        .Q(\oversample_counter.over_sample_cnt_reg_n_0_[2] ),
        .S(\oversample_counter.over_sample_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \oversample_counter.over_sample_cnt_reg[3] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\oversample_counter.over_sample_cnt[3]_i_1_n_0 ),
        .Q(\oversample_counter.over_sample_cnt_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \rx_data[0]_i_1 
       (.I0(rxd_clk_rx),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[2]),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(rx_data[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rx_data[1]_i_1 
       (.I0(rxd_clk_rx),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[2]),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(rx_data[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rx_data[2]_i_1 
       (.I0(rxd_clk_rx),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[1]),
        .I3(bit_cnt_reg[2]),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(rx_data[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \rx_data[3]_i_1 
       (.I0(rxd_clk_rx),
        .I1(bit_cnt_reg[2]),
        .I2(\rx_data[7]_i_2_n_0 ),
        .I3(bit_cnt_reg[0]),
        .I4(bit_cnt_reg[1]),
        .I5(rx_data[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rx_data[4]_i_1 
       (.I0(rxd_clk_rx),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[2]),
        .I3(bit_cnt_reg[1]),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(rx_data[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \rx_data[5]_i_1 
       (.I0(rxd_clk_rx),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[2]),
        .I3(bit_cnt_reg[1]),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(rx_data[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \rx_data[6]_i_1 
       (.I0(rxd_clk_rx),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[1]),
        .I3(bit_cnt_reg[2]),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(rx_data[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \rx_data[7]_i_1 
       (.I0(rxd_clk_rx),
        .I1(\rx_data[7]_i_2_n_0 ),
        .I2(bit_cnt_reg[2]),
        .I3(bit_cnt_reg[1]),
        .I4(bit_cnt_reg[0]),
        .I5(rx_data[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \rx_data[7]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(baud_x16_en),
        .I3(over_sample_cnt_done_reg_n_0),
        .I4(bit_cnt_reg[3]),
        .O(\rx_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4540404000000000)) 
    rx_data_rdy_i_1
       (.I0(rst_clk_rx),
        .I1(rx_data_rdy),
        .I2(rx_data_rdy_i_2_n_0),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(rx_data_rdy_i_3_n_0),
        .O(rx_data_rdy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rx_data_rdy_i_2
       (.I0(baud_x16_en),
        .I1(over_sample_cnt_done_reg_n_0),
        .O(rx_data_rdy_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    rx_data_rdy_i_3
       (.I0(over_sample_cnt_done_reg_n_0),
        .I1(baud_x16_en),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(bit_cnt_reg[3]),
        .O(rx_data_rdy_i_3_n_0));
  FDRE rx_data_rdy_reg
       (.C(clk_rx),
        .CE(1'b1),
        .D(rx_data_rdy_i_1_n_0),
        .Q(rx_data_rdy),
        .R(1'b0));
  FDRE \rx_data_reg[0] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(rx_data[0]),
        .R(rst_clk_rx));
  FDRE \rx_data_reg[1] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(rx_data[1]),
        .R(rst_clk_rx));
  FDRE \rx_data_reg[2] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(rx_data[2]),
        .R(rst_clk_rx));
  FDRE \rx_data_reg[3] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(rx_data[3]),
        .R(rst_clk_rx));
  FDRE \rx_data_reg[4] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(rx_data[4]),
        .R(rst_clk_rx));
  FDRE \rx_data_reg[5] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(rx_data[5]),
        .R(rst_clk_rx));
  FDRE \rx_data_reg[6] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(rx_data[6]),
        .R(rst_clk_rx));
  FDRE \rx_data_reg[7] 
       (.C(clk_rx),
        .CE(1'b1),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(rx_data[7]),
        .R(rst_clk_rx));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h31)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(p_0_in9_out),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0388)) 
    \state[1]_i_1 
       (.I0(p_0_in9_out),
        .I1(\state_reg_n_0_[1] ),
        .I2(rxd_clk_rx),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_rx),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst_clk_rx));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_rx),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(rst_clk_rx));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

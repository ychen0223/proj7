-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:led_ctl:1.0
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.led_ctl;

ENTITY UART_LED_Subsystem_led_ctl_0_0 IS
  PORT (
    rst_clk_rx : IN STD_LOGIC;
    btn_clk_rx : IN STD_LOGIC;
    clk_rx : IN STD_LOGIC;
    rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_data_rdy : IN STD_LOGIC;
    led_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END UART_LED_Subsystem_led_ctl_0_0;

ARCHITECTURE UART_LED_Subsystem_led_ctl_0_0_arch OF UART_LED_Subsystem_led_ctl_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF UART_LED_Subsystem_led_ctl_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT led_ctl IS
    PORT (
      rst_clk_rx : IN STD_LOGIC;
      btn_clk_rx : IN STD_LOGIC;
      clk_rx : IN STD_LOGIC;
      rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      rx_data_rdy : IN STD_LOGIC;
      led_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT led_ctl;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF UART_LED_Subsystem_led_ctl_0_0_arch: ARCHITECTURE IS "led_ctl,Vivado 2021.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF UART_LED_Subsystem_led_ctl_0_0_arch : ARCHITECTURE IS "UART_LED_Subsystem_led_ctl_0_0,led_ctl,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF UART_LED_Subsystem_led_ctl_0_0_arch: ARCHITECTURE IS "UART_LED_Subsystem_led_ctl_0_0,led_ctl,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=led_ctl,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF UART_LED_Subsystem_led_ctl_0_0_arch: ARCHITECTURE IS "package_project";
BEGIN
  U0 : led_ctl
    PORT MAP (
      rst_clk_rx => rst_clk_rx,
      btn_clk_rx => btn_clk_rx,
      clk_rx => clk_rx,
      rx_data => rx_data,
      rx_data_rdy => rx_data_rdy,
      led_o => led_o
    );
END UART_LED_Subsystem_led_ctl_0_0_arch;

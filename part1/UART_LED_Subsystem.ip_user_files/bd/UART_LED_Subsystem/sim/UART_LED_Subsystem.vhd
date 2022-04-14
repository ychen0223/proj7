--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Thu Apr 14 13:35:16 2022
--Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target UART_LED_Subsystem.bd
--Design      : UART_LED_Subsystem
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_rx_i0_imp_TA7WJ is
  port (
    clk_rx : in STD_LOGIC;
    rst_clk_rx : in STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_rdy : out STD_LOGIC;
    rxd_pin : in STD_LOGIC
  );
end uart_rx_i0_imp_TA7WJ;

architecture STRUCTURE of uart_rx_i0_imp_TA7WJ is
  component UART_LED_Subsystem_uart_baud_gen_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    baud_x16_en : out STD_LOGIC
  );
  end component UART_LED_Subsystem_uart_baud_gen_0_0;
  component UART_LED_Subsystem_meta_harden_0_0 is
  port (
    clk_dst : in STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    signal_dst : out STD_LOGIC
  );
  end component UART_LED_Subsystem_meta_harden_0_0;
  component UART_LED_Subsystem_uart_rx_ctl_0_0 is
  port (
    clk_rx : in STD_LOGIC;
    rst_clk_rx : in STD_LOGIC;
    baud_x16_en : in STD_LOGIC;
    rxd_clk_rx : in STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_rdy : out STD_LOGIC;
    frm_err : out STD_LOGIC
  );
  end component UART_LED_Subsystem_uart_rx_ctl_0_0;
  signal meta_harden_0_signal_dst : STD_LOGIC;
  signal meta_harden_rst_signal_dst : STD_LOGIC;
  signal signal_src_0_3 : STD_LOGIC;
  signal uart_baud_gen_0_baud_x16_en : STD_LOGIC;
  signal uart_rx_ctl_0_rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_rx_ctl_0_rx_data_rdy : STD_LOGIC;
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC;
  signal NLW_uart_rx_ctl_0_frm_err_UNCONNECTED : STD_LOGIC;
begin
  meta_harden_rst_signal_dst <= rst_clk_rx;
  rx_data(7 downto 0) <= uart_rx_ctl_0_rx_data(7 downto 0);
  rx_data_rdy <= uart_rx_ctl_0_rx_data_rdy;
  signal_src_0_3 <= rxd_pin;
  util_ds_buf_0_IBUF_OUT <= clk_rx;
meta_harden_0: component UART_LED_Subsystem_meta_harden_0_0
     port map (
      clk_dst => util_ds_buf_0_IBUF_OUT,
      rst_dst => meta_harden_rst_signal_dst,
      signal_dst => meta_harden_0_signal_dst,
      signal_src => signal_src_0_3
    );
uart_baud_gen_0: component UART_LED_Subsystem_uart_baud_gen_0_0
     port map (
      baud_x16_en => uart_baud_gen_0_baud_x16_en,
      clk => util_ds_buf_0_IBUF_OUT,
      rst => meta_harden_rst_signal_dst
    );
uart_rx_ctl_0: component UART_LED_Subsystem_uart_rx_ctl_0_0
     port map (
      baud_x16_en => uart_baud_gen_0_baud_x16_en,
      clk_rx => util_ds_buf_0_IBUF_OUT,
      frm_err => NLW_uart_rx_ctl_0_frm_err_UNCONNECTED,
      rst_clk_rx => meta_harden_rst_signal_dst,
      rx_data(7 downto 0) => uart_rx_ctl_0_rx_data(7 downto 0),
      rx_data_rdy => uart_rx_ctl_0_rx_data_rdy,
      rxd_clk_rx => meta_harden_0_signal_dst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_LED_Subsystem is
  port (
    btn_pin : in STD_LOGIC;
    clk_pin_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_pin_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_pins : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_pin : in STD_LOGIC;
    rxd_pin : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of UART_LED_Subsystem : entity is "UART_LED_Subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UART_LED_Subsystem,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of UART_LED_Subsystem : entity is "UART_LED_Subsystem.hwdef";
end UART_LED_Subsystem;

architecture STRUCTURE of UART_LED_Subsystem is
  component UART_LED_Subsystem_led_ctl_0_0 is
  port (
    rst_clk_rx : in STD_LOGIC;
    btn_clk_rx : in STD_LOGIC;
    clk_rx : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_rdy : in STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UART_LED_Subsystem_led_ctl_0_0;
  component UART_LED_Subsystem_meta_harden_1_0 is
  port (
    clk_dst : in STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    signal_dst : out STD_LOGIC
  );
  end component UART_LED_Subsystem_meta_harden_1_0;
  component UART_LED_Subsystem_meta_harden_2_0 is
  port (
    clk_dst : in STD_LOGIC;
    rst_dst : in STD_LOGIC;
    signal_src : in STD_LOGIC;
    signal_dst : out STD_LOGIC
  );
  end component UART_LED_Subsystem_meta_harden_2_0;
  component UART_LED_Subsystem_util_ds_buf_0_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UART_LED_Subsystem_util_ds_buf_0_0;
  component UART_LED_Subsystem_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UART_LED_Subsystem_xlconstant_0_1;
  signal IBUF_DS_N_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal IBUF_DS_P_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_ctl_0_led_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal meta_harden_btn_signal_dst : STD_LOGIC;
  signal meta_harden_rst_signal_dst : STD_LOGIC;
  signal signal_src_0_1 : STD_LOGIC;
  signal signal_src_0_2 : STD_LOGIC;
  signal signal_src_0_3 : STD_LOGIC;
  signal uart_rx_ctl_0_rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_rx_ctl_0_rx_data_rdy : STD_LOGIC;
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_pin_n : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_PIN_N CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_pin_n : signal is "XIL_INTERFACENAME CLK.CLK_PIN_N, CLK_DOMAIN UART_LED_Subsystem_IBUF_DS_N_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_pin_p : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_PIN_P CLK";
  attribute X_INTERFACE_PARAMETER of clk_pin_p : signal is "XIL_INTERFACENAME CLK.CLK_PIN_P, CLK_DOMAIN UART_LED_Subsystem_IBUF_DS_P_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  IBUF_DS_N_0_1(0) <= clk_pin_n(0);
  IBUF_DS_P_0_1(0) <= clk_pin_p(0);
  led_pins(7 downto 0) <= led_ctl_0_led_o(7 downto 0);
  signal_src_0_1 <= btn_pin;
  signal_src_0_2 <= rst_pin;
  signal_src_0_3 <= rxd_pin;
led_ctl_0: component UART_LED_Subsystem_led_ctl_0_0
     port map (
      btn_clk_rx => meta_harden_btn_signal_dst,
      clk_rx => util_ds_buf_0_IBUF_OUT(0),
      led_o(7 downto 0) => led_ctl_0_led_o(7 downto 0),
      rst_clk_rx => meta_harden_rst_signal_dst,
      rx_data(7 downto 0) => uart_rx_ctl_0_rx_data(7 downto 0),
      rx_data_rdy => uart_rx_ctl_0_rx_data_rdy
    );
meta_harden_btn: component UART_LED_Subsystem_meta_harden_1_0
     port map (
      clk_dst => util_ds_buf_0_IBUF_OUT(0),
      rst_dst => meta_harden_rst_signal_dst,
      signal_dst => meta_harden_btn_signal_dst,
      signal_src => signal_src_0_1
    );
meta_harden_rst: component UART_LED_Subsystem_meta_harden_2_0
     port map (
      clk_dst => util_ds_buf_0_IBUF_OUT(0),
      rst_dst => xlconstant_0_dout(0),
      signal_dst => meta_harden_rst_signal_dst,
      signal_src => signal_src_0_2
    );
uart_rx_i0: entity work.uart_rx_i0_imp_TA7WJ
     port map (
      clk_rx => util_ds_buf_0_IBUF_OUT(0),
      rst_clk_rx => meta_harden_rst_signal_dst,
      rx_data(7 downto 0) => uart_rx_ctl_0_rx_data(7 downto 0),
      rx_data_rdy => uart_rx_ctl_0_rx_data_rdy,
      rxd_pin => signal_src_0_3
    );
util_ds_buf_0: component UART_LED_Subsystem_util_ds_buf_0_0
     port map (
      IBUF_DS_N(0) => IBUF_DS_N_0_1(0),
      IBUF_DS_P(0) => IBUF_DS_P_0_1(0),
      IBUF_OUT(0) => util_ds_buf_0_IBUF_OUT(0)
    );
xlconstant_0: component UART_LED_Subsystem_xlconstant_0_1
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;

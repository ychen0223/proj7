// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Apr 16 16:02:23 2022
// Host        : chris-IdeaPad-5-Pro-14ACN6 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part2/Custom_IP/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku035-fbva900-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module char_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  char_fifo_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module char_fifo_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module char_fifo_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module char_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module char_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module char_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module char_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 96624)
`pragma protect data_block
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
MNdphkvPsR3R
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22064)
`pragma protect data_block
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
HGdWmos=
`pragma protect end_protected
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

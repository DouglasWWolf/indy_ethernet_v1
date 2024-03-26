//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Tue Mar 26 16:32:37 2024
//Host        : simtool-5 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target ethernet.bd
//Design      : ethernet
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module eth_0_imp_33DNIQ
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    stream_clk,
    stream_resetn,
    sys_resetn);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tuser;
  input axis_tx_tvalid;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;

  wire [511:0]Conn1_TDATA;
  wire [63:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TUSER;
  wire Conn1_TVALID;
  wire [511:0]Conn2_TDATA;
  wire [63:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TUSER;
  wire Conn2_TVALID;
  wire clk_0_1;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_gt_rxusrclk2;
  wire cmac_reset_mgr_0_stream_resetn;
  wire cmac_stat_rx_aligned;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire init_clk_reset_peripheral_reset;
  wire sys_reset_1;

  assign Conn1_TDATA = axis_tx_tdata[511:0];
  assign Conn1_TKEEP = axis_tx_tkeep[63:0];
  assign Conn1_TLAST = axis_tx_tlast;
  assign Conn1_TUSER = axis_tx_tuser;
  assign Conn1_TVALID = axis_tx_tvalid;
  assign aligned = cmac_stat_rx_aligned;
  assign axis_rx_tdata[511:0] = Conn2_TDATA;
  assign axis_rx_tkeep[63:0] = Conn2_TKEEP;
  assign axis_rx_tlast = Conn2_TLAST;
  assign axis_rx_tuser = Conn2_TUSER;
  assign axis_rx_tvalid = Conn2_TVALID;
  assign axis_tx_tready = Conn1_TREADY;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp_clk_clk_p;
  assign qsfp_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign stream_clk = cmac_gt_rxusrclk2;
  assign stream_resetn = cmac_reset_mgr_0_stream_resetn;
  assign sys_reset_1 = sys_resetn;
  ethernet_cmac_0 cmac
       (.core_drp_reset(init_clk_reset_peripheral_reset),
        .core_rx_reset(init_clk_reset_peripheral_reset),
        .core_tx_reset(init_clk_reset_peripheral_reset),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_0_1_CLK_N),
        .gt_ref_clk_out(clk_0_1),
        .gt_ref_clk_p(gt_ref_clk_0_1_CLK_P),
        .gt_rxn_in(cmac_usplus_0_gt_serial_port_GRX_N),
        .gt_rxp_in(cmac_usplus_0_gt_serial_port_GRX_P),
        .gt_txn_out(cmac_usplus_0_gt_serial_port_GTX_N),
        .gt_txp_out(cmac_usplus_0_gt_serial_port_GTX_P),
        .gt_txusrclk2(cmac_gt_rxusrclk2),
        .gtwiz_reset_rx_datapath(1'b0),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(clk_0_1),
        .rx_axis_tdata(Conn2_TDATA),
        .rx_axis_tkeep(Conn2_TKEEP),
        .rx_axis_tlast(Conn2_TLAST),
        .rx_axis_tuser(Conn2_TUSER),
        .rx_axis_tvalid(Conn2_TVALID),
        .rx_clk(cmac_gt_rxusrclk2),
        .stat_rx_aligned(cmac_stat_rx_aligned),
        .sys_reset(init_clk_reset_peripheral_reset),
        .tx_axis_tdata(Conn1_TDATA),
        .tx_axis_tkeep(Conn1_TKEEP),
        .tx_axis_tlast(Conn1_TLAST),
        .tx_axis_tready(Conn1_TREADY),
        .tx_axis_tuser(Conn1_TUSER),
        .tx_axis_tvalid(Conn1_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  ethernet_cmac_control_0 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .stat_rx_aligned(cmac_stat_rx_aligned));
  ethernet_cmac_reset_mgr_0 cmac_reset_mgr
       (.init_clk(clk_0_1),
        .init_reset(init_clk_reset_peripheral_reset),
        .src_aresetn(sys_reset_1),
        .stream_clk(cmac_gt_rxusrclk2),
        .stream_resetn(cmac_reset_mgr_0_stream_resetn));
endmodule

module eth_1_imp_7VC2KX
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    stream_clk,
    stream_resetn,
    sys_resetn);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tuser;
  input axis_tx_tvalid;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;

  wire [511:0]Conn1_TDATA;
  wire [63:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TUSER;
  wire Conn1_TVALID;
  wire [511:0]Conn2_TDATA;
  wire [63:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TUSER;
  wire Conn2_TVALID;
  wire clk_0_1;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_gt_rxusrclk2;
  wire cmac_reset_mgr_0_stream_resetn;
  wire cmac_stat_rx_aligned;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire init_clk_reset_peripheral_reset;
  wire sys_reset_1;

  assign Conn1_TDATA = axis_tx_tdata[511:0];
  assign Conn1_TKEEP = axis_tx_tkeep[63:0];
  assign Conn1_TLAST = axis_tx_tlast;
  assign Conn1_TUSER = axis_tx_tuser;
  assign Conn1_TVALID = axis_tx_tvalid;
  assign aligned = cmac_stat_rx_aligned;
  assign axis_rx_tdata[511:0] = Conn2_TDATA;
  assign axis_rx_tkeep[63:0] = Conn2_TKEEP;
  assign axis_rx_tlast = Conn2_TLAST;
  assign axis_rx_tuser = Conn2_TUSER;
  assign axis_rx_tvalid = Conn2_TVALID;
  assign axis_tx_tready = Conn1_TREADY;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp_clk_clk_p;
  assign qsfp_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign stream_clk = cmac_gt_rxusrclk2;
  assign stream_resetn = cmac_reset_mgr_0_stream_resetn;
  assign sys_reset_1 = sys_resetn;
  ethernet_cmac_1 cmac
       (.core_drp_reset(init_clk_reset_peripheral_reset),
        .core_rx_reset(init_clk_reset_peripheral_reset),
        .core_tx_reset(init_clk_reset_peripheral_reset),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_0_1_CLK_N),
        .gt_ref_clk_out(clk_0_1),
        .gt_ref_clk_p(gt_ref_clk_0_1_CLK_P),
        .gt_rxn_in(cmac_usplus_0_gt_serial_port_GRX_N),
        .gt_rxp_in(cmac_usplus_0_gt_serial_port_GRX_P),
        .gt_txn_out(cmac_usplus_0_gt_serial_port_GTX_N),
        .gt_txp_out(cmac_usplus_0_gt_serial_port_GTX_P),
        .gt_txusrclk2(cmac_gt_rxusrclk2),
        .gtwiz_reset_rx_datapath(1'b0),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(clk_0_1),
        .rx_axis_tdata(Conn2_TDATA),
        .rx_axis_tkeep(Conn2_TKEEP),
        .rx_axis_tlast(Conn2_TLAST),
        .rx_axis_tuser(Conn2_TUSER),
        .rx_axis_tvalid(Conn2_TVALID),
        .rx_clk(cmac_gt_rxusrclk2),
        .stat_rx_aligned(cmac_stat_rx_aligned),
        .sys_reset(init_clk_reset_peripheral_reset),
        .tx_axis_tdata(Conn1_TDATA),
        .tx_axis_tkeep(Conn1_TKEEP),
        .tx_axis_tlast(Conn1_TLAST),
        .tx_axis_tready(Conn1_TREADY),
        .tx_axis_tuser(Conn1_TUSER),
        .tx_axis_tvalid(Conn1_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  ethernet_cmac_control_1 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .stat_rx_aligned(cmac_stat_rx_aligned));
  ethernet_cmac_reset_mgr_1 cmac_reset_mgr
       (.init_clk(clk_0_1),
        .init_reset(init_clk_reset_peripheral_reset),
        .src_aresetn(sys_reset_1),
        .stream_clk(cmac_gt_rxusrclk2),
        .stream_resetn(cmac_reset_mgr_0_stream_resetn));
endmodule

(* CORE_GENERATION_INFO = "ethernet,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ethernet,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ethernet.hwdef" *) 
module ethernet
   (axis0_clk,
    axis0_resetn,
    axis0_rx_tdata,
    axis0_rx_tkeep,
    axis0_rx_tlast,
    axis0_rx_tuser,
    axis0_rx_tvalid,
    axis0_tx_tdata,
    axis0_tx_tkeep,
    axis0_tx_tlast,
    axis0_tx_tready,
    axis0_tx_tuser,
    axis0_tx_tvalid,
    axis1_clk,
    axis1_resetn,
    axis1_rx_tdata,
    axis1_rx_tkeep,
    axis1_rx_tlast,
    axis1_rx_tuser,
    axis1_rx_tvalid,
    axis1_tx_tdata,
    axis1_tx_tkeep,
    axis1_tx_tlast,
    axis1_tx_tready,
    axis1_tx_tuser,
    axis1_tx_tvalid,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_up,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_up,
    sys_resetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS0_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS0_CLK, ASSOCIATED_BUSIF axis0_tx, CLK_DOMAIN ethernet_cmac_0_gt_txusrclk2, FREQ_HZ 322265625, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output axis0_clk;
  output axis0_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_rx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis0_rx, FREQ_HZ 322265625, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [511:0]axis0_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_rx TKEEP" *) output [63:0]axis0_rx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_rx TLAST" *) output axis0_rx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_rx TUSER" *) output axis0_rx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_rx TVALID" *) output axis0_rx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_tx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis0_tx, CLK_DOMAIN ethernet_cmac_0_gt_txusrclk2, FREQ_HZ 322265625, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [511:0]axis0_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_tx TKEEP" *) input [63:0]axis0_tx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_tx TLAST" *) input axis0_tx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_tx TREADY" *) output axis0_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_tx TUSER" *) input axis0_tx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis0_tx TVALID" *) input axis0_tx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS1_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS1_CLK, ASSOCIATED_BUSIF axis1_tx, CLK_DOMAIN ethernet_cmac_1_gt_txusrclk2, FREQ_HZ 322265625, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output axis1_clk;
  output axis1_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_rx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis1_rx, FREQ_HZ 322265625, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [511:0]axis1_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_rx TKEEP" *) output [63:0]axis1_rx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_rx TLAST" *) output axis1_rx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_rx TUSER" *) output axis1_rx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_rx TVALID" *) output axis1_rx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_tx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis1_tx, CLK_DOMAIN ethernet_cmac_1_gt_txusrclk2, FREQ_HZ 322265625, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [511:0]axis1_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_tx TKEEP" *) input [63:0]axis1_tx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_tx TLAST" *) input axis1_tx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_tx TREADY" *) output axis1_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_tx TUSER" *) input axis1_tx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis1_tx TVALID" *) input axis1_tx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 156250000" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  output qsfp0_up;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 156250000" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output qsfp1_up;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input sys_resetn;

  wire [511:0]AXIS_IN_1_TDATA;
  wire [63:0]AXIS_IN_1_TKEEP;
  wire AXIS_IN_1_TLAST;
  wire AXIS_IN_1_TUSER;
  wire AXIS_IN_1_TVALID;
  wire [511:0]ETH1_RX_TDATA;
  wire [63:0]ETH1_RX_TKEEP;
  wire ETH1_RX_TLAST;
  wire ETH1_RX_TUSER;
  wire ETH1_RX_TVALID;
  wire [511:0]ETH1_TX_TDATA;
  wire [63:0]ETH1_TX_TKEEP;
  wire ETH1_TX_TLAST;
  wire ETH1_TX_TREADY;
  wire ETH1_TX_TUSER;
  wire ETH1_TX_TVALID;
  wire clk_1;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire [511:0]data_0_AXIS_OUT_TDATA;
  wire [63:0]data_0_AXIS_OUT_TKEEP;
  wire data_0_AXIS_OUT_TLAST;
  wire data_0_AXIS_OUT_TREADY;
  wire data_0_AXIS_OUT_TUSER;
  wire data_0_AXIS_OUT_TVALID;
  wire eth_0_stat_rx_aligned_0;
  wire eth_0_stream_resetn;
  wire [3:0]eth_1_qsfp_gt_GRX_N;
  wire [3:0]eth_1_qsfp_gt_GRX_P;
  wire [3:0]eth_1_qsfp_gt_GTX_N;
  wire [3:0]eth_1_qsfp_gt_GTX_P;
  wire eth_1_stat_rx_aligned_0;
  wire eth_1_stream_clk;
  wire eth_1_stream_resetn;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire one_dout;
  wire qsfp_clk_0_1_CLK_N;
  wire qsfp_clk_0_1_CLK_P;

  assign ETH1_TX_TDATA = axis1_tx_tdata[511:0];
  assign ETH1_TX_TKEEP = axis1_tx_tkeep[63:0];
  assign ETH1_TX_TLAST = axis1_tx_tlast;
  assign ETH1_TX_TUSER = axis1_tx_tuser;
  assign ETH1_TX_TVALID = axis1_tx_tvalid;
  assign axis0_clk = clk_1;
  assign axis0_resetn = eth_0_stream_resetn;
  assign axis0_rx_tdata[511:0] = AXIS_IN_1_TDATA;
  assign axis0_rx_tkeep[63:0] = AXIS_IN_1_TKEEP;
  assign axis0_rx_tlast = AXIS_IN_1_TLAST;
  assign axis0_rx_tuser = AXIS_IN_1_TUSER;
  assign axis0_rx_tvalid = AXIS_IN_1_TVALID;
  assign axis0_tx_tready = data_0_AXIS_OUT_TREADY;
  assign axis1_clk = eth_1_stream_clk;
  assign axis1_resetn = eth_1_stream_resetn;
  assign axis1_rx_tdata[511:0] = ETH1_RX_TDATA;
  assign axis1_rx_tkeep[63:0] = ETH1_RX_TKEEP;
  assign axis1_rx_tlast = ETH1_RX_TLAST;
  assign axis1_rx_tuser = ETH1_RX_TUSER;
  assign axis1_rx_tvalid = ETH1_RX_TVALID;
  assign axis1_tx_tready = ETH1_TX_TREADY;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp0_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp0_gt_grx_p[3:0];
  assign data_0_AXIS_OUT_TDATA = axis0_tx_tdata[511:0];
  assign data_0_AXIS_OUT_TKEEP = axis0_tx_tkeep[63:0];
  assign data_0_AXIS_OUT_TLAST = axis0_tx_tlast;
  assign data_0_AXIS_OUT_TUSER = axis0_tx_tuser;
  assign data_0_AXIS_OUT_TVALID = axis0_tx_tvalid;
  assign eth_1_qsfp_gt_GRX_N = qsfp1_gt_grx_n[3:0];
  assign eth_1_qsfp_gt_GRX_P = qsfp1_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp0_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp0_clk_clk_p;
  assign one_dout = sys_resetn;
  assign qsfp0_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp0_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign qsfp0_up = eth_0_stat_rx_aligned_0;
  assign qsfp1_gt_gtx_n[3:0] = eth_1_qsfp_gt_GTX_N;
  assign qsfp1_gt_gtx_p[3:0] = eth_1_qsfp_gt_GTX_P;
  assign qsfp1_up = eth_1_stat_rx_aligned_0;
  assign qsfp_clk_0_1_CLK_N = qsfp1_clk_clk_n;
  assign qsfp_clk_0_1_CLK_P = qsfp1_clk_clk_p;
  eth_0_imp_33DNIQ eth_0
       (.aligned(eth_0_stat_rx_aligned_0),
        .axis_rx_tdata(AXIS_IN_1_TDATA),
        .axis_rx_tkeep(AXIS_IN_1_TKEEP),
        .axis_rx_tlast(AXIS_IN_1_TLAST),
        .axis_rx_tuser(AXIS_IN_1_TUSER),
        .axis_rx_tvalid(AXIS_IN_1_TVALID),
        .axis_tx_tdata(data_0_AXIS_OUT_TDATA),
        .axis_tx_tkeep(data_0_AXIS_OUT_TKEEP),
        .axis_tx_tlast(data_0_AXIS_OUT_TLAST),
        .axis_tx_tready(data_0_AXIS_OUT_TREADY),
        .axis_tx_tuser(data_0_AXIS_OUT_TUSER),
        .axis_tx_tvalid(data_0_AXIS_OUT_TVALID),
        .qsfp_clk_clk_n(gt_ref_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(gt_ref_clk_0_1_CLK_P),
        .qsfp_gt_grx_n(cmac_usplus_0_gt_serial_port_GRX_N),
        .qsfp_gt_grx_p(cmac_usplus_0_gt_serial_port_GRX_P),
        .qsfp_gt_gtx_n(cmac_usplus_0_gt_serial_port_GTX_N),
        .qsfp_gt_gtx_p(cmac_usplus_0_gt_serial_port_GTX_P),
        .stream_clk(clk_1),
        .stream_resetn(eth_0_stream_resetn),
        .sys_resetn(one_dout));
  eth_1_imp_7VC2KX eth_1
       (.aligned(eth_1_stat_rx_aligned_0),
        .axis_rx_tdata(ETH1_RX_TDATA),
        .axis_rx_tkeep(ETH1_RX_TKEEP),
        .axis_rx_tlast(ETH1_RX_TLAST),
        .axis_rx_tuser(ETH1_RX_TUSER),
        .axis_rx_tvalid(ETH1_RX_TVALID),
        .axis_tx_tdata(ETH1_TX_TDATA),
        .axis_tx_tkeep(ETH1_TX_TKEEP),
        .axis_tx_tlast(ETH1_TX_TLAST),
        .axis_tx_tready(ETH1_TX_TREADY),
        .axis_tx_tuser(ETH1_TX_TUSER),
        .axis_tx_tvalid(ETH1_TX_TVALID),
        .qsfp_clk_clk_n(qsfp_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(qsfp_clk_0_1_CLK_P),
        .qsfp_gt_grx_n(eth_1_qsfp_gt_GRX_N),
        .qsfp_gt_grx_p(eth_1_qsfp_gt_GRX_P),
        .qsfp_gt_gtx_n(eth_1_qsfp_gt_GTX_N),
        .qsfp_gt_gtx_p(eth_1_qsfp_gt_GTX_P),
        .stream_clk(eth_1_stream_clk),
        .stream_resetn(eth_1_stream_resetn),
        .sys_resetn(one_dout));
endmodule

// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:cmac_reset_mgr:1.0
// IP Revision: 1

(* X_CORE_INFO = "cmac_reset_mgr,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "ethernet_cmac_reset_mgr_1,cmac_reset_mgr,{}" *)
(* CORE_GENERATION_INFO = "ethernet_cmac_reset_mgr_1,cmac_reset_mgr,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cmac_reset_mgr,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ethernet_cmac_reset_mgr_1 (
  src_aresetn,
  init_clk,
  stream_clk,
  init_reset,
  stream_resetn
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 src_aresetn RST" *)
input wire src_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME init_clk, ASSOCIATED_RESET init_reset, FREQ_HZ 156250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ethernet_cmac_1_gt_ref_clk_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 init_clk CLK" *)
input wire init_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_clk, ASSOCIATED_RESET stream_resetn, FREQ_HZ 322265625, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ethernet_cmac_1_gt_txusrclk2, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 stream_clk CLK" *)
input wire stream_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME init_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 init_reset RST" *)
output wire init_reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 stream_resetn RST" *)
output wire stream_resetn;

  cmac_reset_mgr inst (
    .src_aresetn(src_aresetn),
    .init_clk(init_clk),
    .stream_clk(stream_clk),
    .init_reset(init_reset),
    .stream_resetn(stream_resetn)
  );
endmodule

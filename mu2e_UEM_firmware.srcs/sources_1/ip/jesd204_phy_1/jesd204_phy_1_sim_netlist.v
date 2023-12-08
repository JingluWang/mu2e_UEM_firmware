// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Mon Nov 13 22:04:24 2023
// Host        : Ryan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/jesd204_phy_1/jesd204_phy_1_sim_netlist.v
// Design      : jesd204_phy_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k420tffg1156-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "jesd204_phy_v3_1_1,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module jesd204_phy_1
   (tx_sys_reset,
    rx_sys_reset,
    tx_reset_gt,
    rx_reset_gt,
    tx_reset_done,
    rx_reset_done,
    qpll_refclk,
    common0_qpll_lock_out,
    common0_qpll_refclk_out,
    common0_qpll_clk_out,
    rxencommaalign,
    tx_core_clk,
    txoutclk,
    rx_core_clk,
    rxoutclk,
    drpclk,
    gt_prbssel,
    gt0_txdata,
    gt0_txcharisk,
    gt1_txdata,
    gt1_txcharisk,
    gt2_txdata,
    gt2_txcharisk,
    gt3_txdata,
    gt3_txcharisk,
    gt0_rxdata,
    gt0_rxcharisk,
    gt0_rxdisperr,
    gt0_rxnotintable,
    gt1_rxdata,
    gt1_rxcharisk,
    gt1_rxdisperr,
    gt1_rxnotintable,
    gt2_rxdata,
    gt2_rxcharisk,
    gt2_rxdisperr,
    gt2_rxnotintable,
    gt3_rxdata,
    gt3_rxcharisk,
    gt3_rxdisperr,
    gt3_rxnotintable,
    rxn_in,
    rxp_in,
    txn_out,
    txp_out);
  input tx_sys_reset;
  input rx_sys_reset;
  input tx_reset_gt;
  input rx_reset_gt;
  output tx_reset_done;
  output rx_reset_done;
  input qpll_refclk;
  output common0_qpll_lock_out;
  output common0_qpll_refclk_out;
  output common0_qpll_clk_out;
  input rxencommaalign;
  input tx_core_clk;
  output txoutclk;
  input rx_core_clk;
  output rxoutclk;
  input drpclk;
  input [2:0]gt_prbssel;
  input [31:0]gt0_txdata;
  input [3:0]gt0_txcharisk;
  input [31:0]gt1_txdata;
  input [3:0]gt1_txcharisk;
  input [31:0]gt2_txdata;
  input [3:0]gt2_txcharisk;
  input [31:0]gt3_txdata;
  input [3:0]gt3_txcharisk;
  output [31:0]gt0_rxdata;
  output [3:0]gt0_rxcharisk;
  output [3:0]gt0_rxdisperr;
  output [3:0]gt0_rxnotintable;
  output [31:0]gt1_rxdata;
  output [3:0]gt1_rxcharisk;
  output [3:0]gt1_rxdisperr;
  output [3:0]gt1_rxnotintable;
  output [31:0]gt2_rxdata;
  output [3:0]gt2_rxcharisk;
  output [3:0]gt2_rxdisperr;
  output [3:0]gt2_rxnotintable;
  output [31:0]gt3_rxdata;
  output [3:0]gt3_rxcharisk;
  output [3:0]gt3_rxdisperr;
  output [3:0]gt3_rxnotintable;
  input [3:0]rxn_in;
  input [3:0]rxp_in;
  output [3:0]txn_out;
  output [3:0]txp_out;

  wire common0_qpll_clk_out;
  wire common0_qpll_lock_out;
  wire common0_qpll_refclk_out;
  wire drpclk;
  wire [3:0]gt0_rxcharisk;
  wire [31:0]gt0_rxdata;
  wire [3:0]gt0_rxdisperr;
  wire [3:0]gt0_rxnotintable;
  wire [3:0]gt0_txcharisk;
  wire [31:0]gt0_txdata;
  wire [3:0]gt1_rxcharisk;
  wire [31:0]gt1_rxdata;
  wire [3:0]gt1_rxdisperr;
  wire [3:0]gt1_rxnotintable;
  wire [3:0]gt1_txcharisk;
  wire [31:0]gt1_txdata;
  wire [3:0]gt2_rxcharisk;
  wire [31:0]gt2_rxdata;
  wire [3:0]gt2_rxdisperr;
  wire [3:0]gt2_rxnotintable;
  wire [3:0]gt2_txcharisk;
  wire [31:0]gt2_txdata;
  wire [3:0]gt3_rxcharisk;
  wire [31:0]gt3_rxdata;
  wire [3:0]gt3_rxdisperr;
  wire [3:0]gt3_rxnotintable;
  wire [3:0]gt3_txcharisk;
  wire [31:0]gt3_txdata;
  wire [2:0]gt_prbssel;
  wire qpll_refclk;
  wire rx_core_clk;
  wire rx_reset_done;
  wire rx_reset_gt;
  wire rx_sys_reset;
  wire rxencommaalign;
  wire [3:0]rxn_in;
  wire rxoutclk;
  wire [3:0]rxp_in;
  wire tx_core_clk;
  wire tx_reset_done;
  wire tx_reset_gt;
  wire tx_sys_reset;
  wire [3:0]txn_out;
  wire txoutclk;
  wire [3:0]txp_out;
  wire NLW_inst_gt0_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt0_drprdy_UNCONNECTED;
  wire NLW_inst_gt0_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt0_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt0_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt0_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt0_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt0_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt1_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt1_drprdy_UNCONNECTED;
  wire NLW_inst_gt1_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt1_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt1_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt1_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt1_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt1_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt2_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt2_drprdy_UNCONNECTED;
  wire NLW_inst_gt2_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt2_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt2_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt2_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt2_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt2_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt3_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt3_drprdy_UNCONNECTED;
  wire NLW_inst_gt3_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt3_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt3_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt3_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt3_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt3_txresetdone_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt0_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt0_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt0_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt0_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt0_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt0_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt1_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt1_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt1_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt1_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt1_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt1_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt2_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt2_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt2_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt2_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt2_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt2_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt3_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt3_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt3_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt3_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt3_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt3_txbufstatus_out_UNCONNECTED;

  (* downgradeipidentifiedwarnings = "yes" *) 
  jesd204_phy_1_jesd204_phy_1_support inst
       (.common0_qpll_clk_out(common0_qpll_clk_out),
        .common0_qpll_lock_out(common0_qpll_lock_out),
        .common0_qpll_refclk_out(common0_qpll_refclk_out),
        .drpclk(drpclk),
        .gt0_cplllock_out(NLW_inst_gt0_cplllock_out_UNCONNECTED),
        .gt0_dmonitorout_out(NLW_inst_gt0_dmonitorout_out_UNCONNECTED[7:0]),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdo(NLW_inst_gt0_drpdo_UNCONNECTED[15:0]),
        .gt0_drpen(1'b0),
        .gt0_drprdy(NLW_inst_gt0_drprdy_UNCONNECTED),
        .gt0_drpwe(1'b0),
        .gt0_eyescandataerror_out(NLW_inst_gt0_eyescandataerror_out_UNCONNECTED),
        .gt0_eyescanreset_in(1'b0),
        .gt0_eyescantrigger_in(1'b0),
        .gt0_loopback_in({1'b0,1'b0,1'b0}),
        .gt0_rxbufreset_in(1'b0),
        .gt0_rxbufstatus_out(NLW_inst_gt0_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt0_rxbyteisaligned_out(NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED),
        .gt0_rxbyterealign_out(NLW_inst_gt0_rxbyterealign_out_UNCONNECTED),
        .gt0_rxcdrhold_in(1'b0),
        .gt0_rxcharisk(gt0_rxcharisk),
        .gt0_rxcommadet_out(NLW_inst_gt0_rxcommadet_out_UNCONNECTED),
        .gt0_rxdata(gt0_rxdata),
        .gt0_rxdfelpmreset_in(1'b0),
        .gt0_rxdisperr(gt0_rxdisperr),
        .gt0_rxlpmen_in(1'b1),
        .gt0_rxmonitorout_out(NLW_inst_gt0_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt0_rxmonitorsel_in({1'b0,1'b0}),
        .gt0_rxnotintable(gt0_rxnotintable),
        .gt0_rxpcsreset_in(1'b0),
        .gt0_rxpd_in({1'b0,1'b0}),
        .gt0_rxpmareset_in(1'b0),
        .gt0_rxpolarity_in(1'b0),
        .gt0_rxprbscntreset_in(1'b0),
        .gt0_rxprbserr_out(NLW_inst_gt0_rxprbserr_out_UNCONNECTED),
        .gt0_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt0_rxresetdone_out(NLW_inst_gt0_rxresetdone_out_UNCONNECTED),
        .gt0_rxstatus_out(NLW_inst_gt0_rxstatus_out_UNCONNECTED[2:0]),
        .gt0_txbufstatus_out(NLW_inst_gt0_txbufstatus_out_UNCONNECTED[1:0]),
        .gt0_txcharisk(gt0_txcharisk),
        .gt0_txdata(gt0_txdata),
        .gt0_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt0_txinhibit_in(1'b0),
        .gt0_txpcsreset_in(1'b0),
        .gt0_txpd_in({1'b0,1'b0}),
        .gt0_txpmareset_in(1'b0),
        .gt0_txpolarity_in(1'b0),
        .gt0_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txprbsforceerr_in(1'b0),
        .gt0_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txresetdone_out(NLW_inst_gt0_txresetdone_out_UNCONNECTED),
        .gt1_cplllock_out(NLW_inst_gt1_cplllock_out_UNCONNECTED),
        .gt1_dmonitorout_out(NLW_inst_gt1_dmonitorout_out_UNCONNECTED[7:0]),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdo(NLW_inst_gt1_drpdo_UNCONNECTED[15:0]),
        .gt1_drpen(1'b0),
        .gt1_drprdy(NLW_inst_gt1_drprdy_UNCONNECTED),
        .gt1_drpwe(1'b0),
        .gt1_eyescandataerror_out(NLW_inst_gt1_eyescandataerror_out_UNCONNECTED),
        .gt1_eyescanreset_in(1'b0),
        .gt1_eyescantrigger_in(1'b0),
        .gt1_loopback_in({1'b0,1'b0,1'b0}),
        .gt1_rxbufreset_in(1'b0),
        .gt1_rxbufstatus_out(NLW_inst_gt1_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt1_rxbyteisaligned_out(NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED),
        .gt1_rxbyterealign_out(NLW_inst_gt1_rxbyterealign_out_UNCONNECTED),
        .gt1_rxcdrhold_in(1'b0),
        .gt1_rxcharisk(gt1_rxcharisk),
        .gt1_rxcommadet_out(NLW_inst_gt1_rxcommadet_out_UNCONNECTED),
        .gt1_rxdata(gt1_rxdata),
        .gt1_rxdfelpmreset_in(1'b0),
        .gt1_rxdisperr(gt1_rxdisperr),
        .gt1_rxlpmen_in(1'b1),
        .gt1_rxmonitorout_out(NLW_inst_gt1_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt1_rxmonitorsel_in({1'b0,1'b0}),
        .gt1_rxnotintable(gt1_rxnotintable),
        .gt1_rxpcsreset_in(1'b0),
        .gt1_rxpd_in({1'b0,1'b0}),
        .gt1_rxpmareset_in(1'b0),
        .gt1_rxpolarity_in(1'b0),
        .gt1_rxprbscntreset_in(1'b0),
        .gt1_rxprbserr_out(NLW_inst_gt1_rxprbserr_out_UNCONNECTED),
        .gt1_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt1_rxresetdone_out(NLW_inst_gt1_rxresetdone_out_UNCONNECTED),
        .gt1_rxstatus_out(NLW_inst_gt1_rxstatus_out_UNCONNECTED[2:0]),
        .gt1_txbufstatus_out(NLW_inst_gt1_txbufstatus_out_UNCONNECTED[1:0]),
        .gt1_txcharisk(gt1_txcharisk),
        .gt1_txdata(gt1_txdata),
        .gt1_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt1_txinhibit_in(1'b0),
        .gt1_txpcsreset_in(1'b0),
        .gt1_txpd_in({1'b0,1'b0}),
        .gt1_txpmareset_in(1'b0),
        .gt1_txpolarity_in(1'b0),
        .gt1_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txprbsforceerr_in(1'b0),
        .gt1_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txresetdone_out(NLW_inst_gt1_txresetdone_out_UNCONNECTED),
        .gt2_cplllock_out(NLW_inst_gt2_cplllock_out_UNCONNECTED),
        .gt2_dmonitorout_out(NLW_inst_gt2_dmonitorout_out_UNCONNECTED[7:0]),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdo(NLW_inst_gt2_drpdo_UNCONNECTED[15:0]),
        .gt2_drpen(1'b0),
        .gt2_drprdy(NLW_inst_gt2_drprdy_UNCONNECTED),
        .gt2_drpwe(1'b0),
        .gt2_eyescandataerror_out(NLW_inst_gt2_eyescandataerror_out_UNCONNECTED),
        .gt2_eyescanreset_in(1'b0),
        .gt2_eyescantrigger_in(1'b0),
        .gt2_loopback_in({1'b0,1'b0,1'b0}),
        .gt2_rxbufreset_in(1'b0),
        .gt2_rxbufstatus_out(NLW_inst_gt2_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt2_rxbyteisaligned_out(NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED),
        .gt2_rxbyterealign_out(NLW_inst_gt2_rxbyterealign_out_UNCONNECTED),
        .gt2_rxcdrhold_in(1'b0),
        .gt2_rxcharisk(gt2_rxcharisk),
        .gt2_rxcommadet_out(NLW_inst_gt2_rxcommadet_out_UNCONNECTED),
        .gt2_rxdata(gt2_rxdata),
        .gt2_rxdfelpmreset_in(1'b0),
        .gt2_rxdisperr(gt2_rxdisperr),
        .gt2_rxlpmen_in(1'b1),
        .gt2_rxmonitorout_out(NLW_inst_gt2_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt2_rxmonitorsel_in({1'b0,1'b0}),
        .gt2_rxnotintable(gt2_rxnotintable),
        .gt2_rxpcsreset_in(1'b0),
        .gt2_rxpd_in({1'b0,1'b0}),
        .gt2_rxpmareset_in(1'b0),
        .gt2_rxpolarity_in(1'b0),
        .gt2_rxprbscntreset_in(1'b0),
        .gt2_rxprbserr_out(NLW_inst_gt2_rxprbserr_out_UNCONNECTED),
        .gt2_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt2_rxresetdone_out(NLW_inst_gt2_rxresetdone_out_UNCONNECTED),
        .gt2_rxstatus_out(NLW_inst_gt2_rxstatus_out_UNCONNECTED[2:0]),
        .gt2_txbufstatus_out(NLW_inst_gt2_txbufstatus_out_UNCONNECTED[1:0]),
        .gt2_txcharisk(gt2_txcharisk),
        .gt2_txdata(gt2_txdata),
        .gt2_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt2_txinhibit_in(1'b0),
        .gt2_txpcsreset_in(1'b0),
        .gt2_txpd_in({1'b0,1'b0}),
        .gt2_txpmareset_in(1'b0),
        .gt2_txpolarity_in(1'b0),
        .gt2_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txprbsforceerr_in(1'b0),
        .gt2_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txresetdone_out(NLW_inst_gt2_txresetdone_out_UNCONNECTED),
        .gt3_cplllock_out(NLW_inst_gt3_cplllock_out_UNCONNECTED),
        .gt3_dmonitorout_out(NLW_inst_gt3_dmonitorout_out_UNCONNECTED[7:0]),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdo(NLW_inst_gt3_drpdo_UNCONNECTED[15:0]),
        .gt3_drpen(1'b0),
        .gt3_drprdy(NLW_inst_gt3_drprdy_UNCONNECTED),
        .gt3_drpwe(1'b0),
        .gt3_eyescandataerror_out(NLW_inst_gt3_eyescandataerror_out_UNCONNECTED),
        .gt3_eyescanreset_in(1'b0),
        .gt3_eyescantrigger_in(1'b0),
        .gt3_loopback_in({1'b0,1'b0,1'b0}),
        .gt3_rxbufreset_in(1'b0),
        .gt3_rxbufstatus_out(NLW_inst_gt3_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt3_rxbyteisaligned_out(NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED),
        .gt3_rxbyterealign_out(NLW_inst_gt3_rxbyterealign_out_UNCONNECTED),
        .gt3_rxcdrhold_in(1'b0),
        .gt3_rxcharisk(gt3_rxcharisk),
        .gt3_rxcommadet_out(NLW_inst_gt3_rxcommadet_out_UNCONNECTED),
        .gt3_rxdata(gt3_rxdata),
        .gt3_rxdfelpmreset_in(1'b0),
        .gt3_rxdisperr(gt3_rxdisperr),
        .gt3_rxlpmen_in(1'b1),
        .gt3_rxmonitorout_out(NLW_inst_gt3_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt3_rxmonitorsel_in({1'b0,1'b0}),
        .gt3_rxnotintable(gt3_rxnotintable),
        .gt3_rxpcsreset_in(1'b0),
        .gt3_rxpd_in({1'b0,1'b0}),
        .gt3_rxpmareset_in(1'b0),
        .gt3_rxpolarity_in(1'b0),
        .gt3_rxprbscntreset_in(1'b0),
        .gt3_rxprbserr_out(NLW_inst_gt3_rxprbserr_out_UNCONNECTED),
        .gt3_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt3_rxresetdone_out(NLW_inst_gt3_rxresetdone_out_UNCONNECTED),
        .gt3_rxstatus_out(NLW_inst_gt3_rxstatus_out_UNCONNECTED[2:0]),
        .gt3_txbufstatus_out(NLW_inst_gt3_txbufstatus_out_UNCONNECTED[1:0]),
        .gt3_txcharisk(gt3_txcharisk),
        .gt3_txdata(gt3_txdata),
        .gt3_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt3_txinhibit_in(1'b0),
        .gt3_txpcsreset_in(1'b0),
        .gt3_txpd_in({1'b0,1'b0}),
        .gt3_txpmareset_in(1'b0),
        .gt3_txpolarity_in(1'b0),
        .gt3_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txprbsforceerr_in(1'b0),
        .gt3_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txresetdone_out(NLW_inst_gt3_txresetdone_out_UNCONNECTED),
        .gt_prbssel(gt_prbssel),
        .qpll_refclk(qpll_refclk),
        .rx_core_clk(rx_core_clk),
        .rx_reset_done(rx_reset_done),
        .rx_reset_gt(rx_reset_gt),
        .rx_sys_reset(rx_sys_reset),
        .rxencommaalign(rxencommaalign),
        .rxn_in(rxn_in),
        .rxoutclk(rxoutclk),
        .rxp_in(rxp_in),
        .tx_core_clk(tx_core_clk),
        .tx_reset_done(tx_reset_done),
        .tx_reset_gt(tx_reset_gt),
        .tx_sys_reset(tx_sys_reset),
        .txn_out(txn_out),
        .txoutclk(txoutclk),
        .txp_out(txp_out));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_block" *) 
module jesd204_phy_1_jesd204_phy_1_block
   (gt0_cplllock_out,
    gt0_drpdo,
    gt0_drprdy,
    gt0_dmonitorout_out,
    gt0_eyescandataerror_out,
    gt0_rxdata,
    gt0_rxprbserr_out,
    gt0_rxdisperr,
    gt0_rxnotintable,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxmonitorout_out,
    rxoutclk,
    gt0_rxcharisk,
    gt0_rxresetdone_out,
    gt0_txbufstatus_out,
    txn_out,
    txp_out,
    txoutclk,
    gt0_txresetdone_out,
    gt1_cplllock_out,
    gt1_drpdo,
    gt1_drprdy,
    gt1_dmonitorout_out,
    gt1_eyescandataerror_out,
    gt1_rxdata,
    gt1_rxprbserr_out,
    gt1_rxdisperr,
    gt1_rxnotintable,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_rxmonitorout_out,
    gt1_rxcharisk,
    gt1_rxresetdone_out,
    gt1_txbufstatus_out,
    gt1_txresetdone_out,
    gt2_cplllock_out,
    gt2_drpdo,
    gt2_drprdy,
    gt2_dmonitorout_out,
    gt2_eyescandataerror_out,
    gt2_rxdata,
    gt2_rxprbserr_out,
    gt2_rxdisperr,
    gt2_rxnotintable,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_rxmonitorout_out,
    gt2_rxcharisk,
    gt2_rxresetdone_out,
    gt2_txbufstatus_out,
    gt2_txresetdone_out,
    gt3_cplllock_out,
    gt3_drpdo,
    gt3_drprdy,
    gt3_dmonitorout_out,
    gt3_eyescandataerror_out,
    gt3_rxdata,
    gt3_rxprbserr_out,
    gt3_rxdisperr,
    gt3_rxnotintable,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_rxmonitorout_out,
    gt3_rxcharisk,
    gt3_rxresetdone_out,
    gt3_txbufstatus_out,
    gt3_txresetdone_out,
    qpll_reset_out,
    tx_reset_done,
    rx_reset_done,
    tx_reset_gt,
    drpclk,
    rx_reset_gt,
    tx_sys_reset,
    rx_sys_reset,
    gt0_drpaddr,
    gt0_drpdi,
    gt0_drpen,
    gt0_drpwe,
    gt0_loopback_in,
    gt0_rxpd_in,
    gt0_txpd_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gt0_rxcdrhold_in,
    rx_core_clk,
    gt0_rxprbssel_in,
    gt0_rxprbscntreset_in,
    rxp_in,
    rxn_in,
    gt0_rxbufreset_in,
    rxencommaalign,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorsel_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxlpmen_in,
    gt0_rxpolarity_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    tx_core_clk,
    gt0_txprbsforceerr_in,
    gt0_txdiffctrl_in,
    gt0_txinhibit_in,
    gt0_txdata,
    gt0_txcharisk,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt_prbssel,
    gt1_drpaddr,
    gt1_drpdi,
    gt1_drpen,
    gt1_drpwe,
    gt1_loopback_in,
    gt1_rxpd_in,
    gt1_txpd_in,
    gt1_eyescanreset_in,
    gt1_eyescantrigger_in,
    gt1_rxcdrhold_in,
    gt1_rxprbssel_in,
    gt1_rxprbscntreset_in,
    gt1_rxbufreset_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorsel_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxlpmen_in,
    gt1_rxpolarity_in,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_txprbsforceerr_in,
    gt1_txdiffctrl_in,
    gt1_txinhibit_in,
    gt1_txdata,
    gt1_txcharisk,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txpolarity_in,
    gt2_drpaddr,
    gt2_drpdi,
    gt2_drpen,
    gt2_drpwe,
    gt2_loopback_in,
    gt2_rxpd_in,
    gt2_txpd_in,
    gt2_eyescanreset_in,
    gt2_eyescantrigger_in,
    gt2_rxcdrhold_in,
    gt2_rxprbssel_in,
    gt2_rxprbscntreset_in,
    gt2_rxbufreset_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorsel_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxlpmen_in,
    gt2_rxpolarity_in,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_txprbsforceerr_in,
    gt2_txdiffctrl_in,
    gt2_txinhibit_in,
    gt2_txdata,
    gt2_txcharisk,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txpolarity_in,
    gt3_drpaddr,
    gt3_drpdi,
    gt3_drpen,
    gt3_drpwe,
    gt3_loopback_in,
    gt3_rxpd_in,
    gt3_txpd_in,
    gt3_eyescanreset_in,
    gt3_eyescantrigger_in,
    gt3_rxcdrhold_in,
    gt3_rxprbssel_in,
    gt3_rxprbscntreset_in,
    gt3_rxbufreset_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorsel_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxlpmen_in,
    gt3_rxpolarity_in,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_txprbsforceerr_in,
    gt3_txdiffctrl_in,
    gt3_txinhibit_in,
    gt3_txdata,
    gt3_txcharisk,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txpolarity_in,
    common0_qpll_lock_out,
    common0_qpll_clk_out,
    common0_qpll_refclk_out);
  output gt0_cplllock_out;
  output [15:0]gt0_drpdo;
  output gt0_drprdy;
  output [7:0]gt0_dmonitorout_out;
  output gt0_eyescandataerror_out;
  output [31:0]gt0_rxdata;
  output gt0_rxprbserr_out;
  output [3:0]gt0_rxdisperr;
  output [3:0]gt0_rxnotintable;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output [6:0]gt0_rxmonitorout_out;
  output rxoutclk;
  output [3:0]gt0_rxcharisk;
  output gt0_rxresetdone_out;
  output [1:0]gt0_txbufstatus_out;
  output [3:0]txn_out;
  output [3:0]txp_out;
  output txoutclk;
  output gt0_txresetdone_out;
  output gt1_cplllock_out;
  output [15:0]gt1_drpdo;
  output gt1_drprdy;
  output [7:0]gt1_dmonitorout_out;
  output gt1_eyescandataerror_out;
  output [31:0]gt1_rxdata;
  output gt1_rxprbserr_out;
  output [3:0]gt1_rxdisperr;
  output [3:0]gt1_rxnotintable;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  output [6:0]gt1_rxmonitorout_out;
  output [3:0]gt1_rxcharisk;
  output gt1_rxresetdone_out;
  output [1:0]gt1_txbufstatus_out;
  output gt1_txresetdone_out;
  output gt2_cplllock_out;
  output [15:0]gt2_drpdo;
  output gt2_drprdy;
  output [7:0]gt2_dmonitorout_out;
  output gt2_eyescandataerror_out;
  output [31:0]gt2_rxdata;
  output gt2_rxprbserr_out;
  output [3:0]gt2_rxdisperr;
  output [3:0]gt2_rxnotintable;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  output [6:0]gt2_rxmonitorout_out;
  output [3:0]gt2_rxcharisk;
  output gt2_rxresetdone_out;
  output [1:0]gt2_txbufstatus_out;
  output gt2_txresetdone_out;
  output gt3_cplllock_out;
  output [15:0]gt3_drpdo;
  output gt3_drprdy;
  output [7:0]gt3_dmonitorout_out;
  output gt3_eyescandataerror_out;
  output [31:0]gt3_rxdata;
  output gt3_rxprbserr_out;
  output [3:0]gt3_rxdisperr;
  output [3:0]gt3_rxnotintable;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  output [6:0]gt3_rxmonitorout_out;
  output [3:0]gt3_rxcharisk;
  output gt3_rxresetdone_out;
  output [1:0]gt3_txbufstatus_out;
  output gt3_txresetdone_out;
  output qpll_reset_out;
  output tx_reset_done;
  output rx_reset_done;
  input tx_reset_gt;
  input drpclk;
  input rx_reset_gt;
  input tx_sys_reset;
  input rx_sys_reset;
  input [8:0]gt0_drpaddr;
  input [15:0]gt0_drpdi;
  input gt0_drpen;
  input gt0_drpwe;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gt0_rxcdrhold_in;
  input rx_core_clk;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  input [3:0]rxp_in;
  input [3:0]rxn_in;
  input gt0_rxbufreset_in;
  input rxencommaalign;
  input gt0_rxdfelpmreset_in;
  input [1:0]gt0_rxmonitorsel_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxpolarity_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input tx_core_clk;
  input gt0_txprbsforceerr_in;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txinhibit_in;
  input [31:0]gt0_txdata;
  input [3:0]gt0_txcharisk;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input [2:0]gt_prbssel;
  input [8:0]gt1_drpaddr;
  input [15:0]gt1_drpdi;
  input gt1_drpen;
  input gt1_drpwe;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input gt1_eyescanreset_in;
  input gt1_eyescantrigger_in;
  input gt1_rxcdrhold_in;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  input gt1_rxbufreset_in;
  input gt1_rxdfelpmreset_in;
  input [1:0]gt1_rxmonitorsel_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxpolarity_in;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input gt1_txprbsforceerr_in;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txinhibit_in;
  input [31:0]gt1_txdata;
  input [3:0]gt1_txcharisk;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  input gt1_txpolarity_in;
  input [8:0]gt2_drpaddr;
  input [15:0]gt2_drpdi;
  input gt2_drpen;
  input gt2_drpwe;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input gt2_eyescanreset_in;
  input gt2_eyescantrigger_in;
  input gt2_rxcdrhold_in;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  input gt2_rxbufreset_in;
  input gt2_rxdfelpmreset_in;
  input [1:0]gt2_rxmonitorsel_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxpolarity_in;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input gt2_txprbsforceerr_in;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txinhibit_in;
  input [31:0]gt2_txdata;
  input [3:0]gt2_txcharisk;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  input gt2_txpolarity_in;
  input [8:0]gt3_drpaddr;
  input [15:0]gt3_drpdi;
  input gt3_drpen;
  input gt3_drpwe;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input gt3_eyescanreset_in;
  input gt3_eyescantrigger_in;
  input gt3_rxcdrhold_in;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  input gt3_rxbufreset_in;
  input gt3_rxdfelpmreset_in;
  input [1:0]gt3_rxmonitorsel_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxpolarity_in;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input gt3_txprbsforceerr_in;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txinhibit_in;
  input [31:0]gt3_txdata;
  input [3:0]gt3_txcharisk;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  input gt3_txpolarity_in;
  input common0_qpll_lock_out;
  input common0_qpll_clk_out;
  input common0_qpll_refclk_out;

  wire common0_qpll_clk_out;
  wire common0_qpll_lock_out;
  wire common0_qpll_refclk_out;
  wire drpclk;
  wire gt0_cplllock_out;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr;
  wire [15:0]gt0_drpdi;
  wire [15:0]gt0_drpdo;
  wire gt0_drpen;
  wire gt0_drprdy;
  wire gt0_drpwe;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire [2:0]gt0_loopback_in;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [3:0]gt0_rxcharisk;
  wire gt0_rxcommadet_out;
  wire [31:0]gt0_rxdata;
  wire gt0_rxdfelpmreset_in;
  wire [3:0]gt0_rxdisperr;
  wire gt0_rxlpmen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [3:0]gt0_rxnotintable;
  wire gt0_rxpcsreset_in;
  wire [1:0]gt0_rxpd_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [2:0]gt0_rxstatus_out;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txcharisk;
  wire [31:0]gt0_txdata;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txinhibit_in;
  wire gt0_txpcsreset_in;
  wire [1:0]gt0_txpd_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire gt1_cplllock_out;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr;
  wire [15:0]gt1_drpdi;
  wire [15:0]gt1_drpdo;
  wire gt1_drpen;
  wire gt1_drprdy;
  wire gt1_drpwe;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire [2:0]gt1_loopback_in;
  wire gt1_rxbufreset_in;
  wire [2:0]gt1_rxbufstatus_out;
  wire gt1_rxbyteisaligned_out;
  wire gt1_rxbyterealign_out;
  wire gt1_rxcdrhold_in;
  wire [3:0]gt1_rxcharisk;
  wire gt1_rxcommadet_out;
  wire [31:0]gt1_rxdata;
  wire gt1_rxdfelpmreset_in;
  wire [3:0]gt1_rxdisperr;
  wire gt1_rxlpmen_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire [3:0]gt1_rxnotintable;
  wire gt1_rxpcsreset_in;
  wire [1:0]gt1_rxpd_in;
  wire gt1_rxpmareset_in;
  wire gt1_rxpolarity_in;
  wire gt1_rxprbscntreset_in;
  wire gt1_rxprbserr_out;
  wire [2:0]gt1_rxprbssel_in;
  wire gt1_rxresetdone_out;
  wire [2:0]gt1_rxstatus_out;
  wire [1:0]gt1_txbufstatus_out;
  wire [3:0]gt1_txcharisk;
  wire [31:0]gt1_txdata;
  wire [3:0]gt1_txdiffctrl_in;
  wire gt1_txinhibit_in;
  wire gt1_txpcsreset_in;
  wire [1:0]gt1_txpd_in;
  wire gt1_txpmareset_in;
  wire gt1_txpolarity_in;
  wire [4:0]gt1_txpostcursor_in;
  wire gt1_txprbsforceerr_in;
  wire [4:0]gt1_txprecursor_in;
  wire gt1_txresetdone_out;
  wire gt2_cplllock_out;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr;
  wire [15:0]gt2_drpdi;
  wire [15:0]gt2_drpdo;
  wire gt2_drpen;
  wire gt2_drprdy;
  wire gt2_drpwe;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire [2:0]gt2_loopback_in;
  wire gt2_rxbufreset_in;
  wire [2:0]gt2_rxbufstatus_out;
  wire gt2_rxbyteisaligned_out;
  wire gt2_rxbyterealign_out;
  wire gt2_rxcdrhold_in;
  wire [3:0]gt2_rxcharisk;
  wire gt2_rxcommadet_out;
  wire [31:0]gt2_rxdata;
  wire gt2_rxdfelpmreset_in;
  wire [3:0]gt2_rxdisperr;
  wire gt2_rxlpmen_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire [3:0]gt2_rxnotintable;
  wire gt2_rxpcsreset_in;
  wire [1:0]gt2_rxpd_in;
  wire gt2_rxpmareset_in;
  wire gt2_rxpolarity_in;
  wire gt2_rxprbscntreset_in;
  wire gt2_rxprbserr_out;
  wire [2:0]gt2_rxprbssel_in;
  wire gt2_rxresetdone_out;
  wire [2:0]gt2_rxstatus_out;
  wire [1:0]gt2_txbufstatus_out;
  wire [3:0]gt2_txcharisk;
  wire [31:0]gt2_txdata;
  wire [3:0]gt2_txdiffctrl_in;
  wire gt2_txinhibit_in;
  wire gt2_txpcsreset_in;
  wire [1:0]gt2_txpd_in;
  wire gt2_txpmareset_in;
  wire gt2_txpolarity_in;
  wire [4:0]gt2_txpostcursor_in;
  wire gt2_txprbsforceerr_in;
  wire [4:0]gt2_txprecursor_in;
  wire gt2_txresetdone_out;
  wire gt3_cplllock_out;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr;
  wire [15:0]gt3_drpdi;
  wire [15:0]gt3_drpdo;
  wire gt3_drpen;
  wire gt3_drprdy;
  wire gt3_drpwe;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire [2:0]gt3_loopback_in;
  wire gt3_rxbufreset_in;
  wire [2:0]gt3_rxbufstatus_out;
  wire gt3_rxbyteisaligned_out;
  wire gt3_rxbyterealign_out;
  wire gt3_rxcdrhold_in;
  wire [3:0]gt3_rxcharisk;
  wire gt3_rxcommadet_out;
  wire [31:0]gt3_rxdata;
  wire gt3_rxdfelpmreset_in;
  wire [3:0]gt3_rxdisperr;
  wire gt3_rxlpmen_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire [3:0]gt3_rxnotintable;
  wire gt3_rxpcsreset_in;
  wire [1:0]gt3_rxpd_in;
  wire gt3_rxpmareset_in;
  wire gt3_rxpolarity_in;
  wire gt3_rxprbscntreset_in;
  wire gt3_rxprbserr_out;
  wire [2:0]gt3_rxprbssel_in;
  wire gt3_rxresetdone_out;
  wire [2:0]gt3_rxstatus_out;
  wire [1:0]gt3_txbufstatus_out;
  wire [3:0]gt3_txcharisk;
  wire [31:0]gt3_txdata;
  wire [3:0]gt3_txdiffctrl_in;
  wire gt3_txinhibit_in;
  wire gt3_txpcsreset_in;
  wire [1:0]gt3_txpd_in;
  wire gt3_txpmareset_in;
  wire gt3_txpolarity_in;
  wire [4:0]gt3_txpostcursor_in;
  wire gt3_txprbsforceerr_in;
  wire [4:0]gt3_txprecursor_in;
  wire gt3_txresetdone_out;
  wire [2:0]gt_prbssel;
  wire gt_rxfsmdone;
  wire gt_rxreset;
  wire gt_rxreset0;
  wire gt_txfsmdone;
  wire gt_txreset;
  wire gt_txreset0;
  wire qpll_reset_out;
  wire rx_chan_rst_done__0;
  wire rx_chan_rst_done_r;
  wire rx_core_clk;
  wire rx_pll_lock_i_reg_n_0;
  wire rx_pll_lock_sync;
  wire rx_reset_done;
  wire rx_reset_done_r0;
  wire rx_reset_gt;
  wire rx_rst_gt_data_sync;
  wire rx_sys_reset;
  wire rxencommaalign;
  wire [3:0]rxn_in;
  wire rxoutclk;
  wire [3:0]rxp_in;
  wire tx_chan_rst_done__0;
  wire tx_chan_rst_done_r;
  wire tx_core_clk;
  wire tx_pll_lock_sync;
  wire tx_reset_done;
  wire tx_reset_done_r0;
  wire tx_reset_gt;
  wire tx_rst_gt_data_sync;
  wire tx_sys_reset;
  wire [3:0]txn_out;
  wire txoutclk;
  wire [3:0]txp_out;
  wire NLW_jesd204_phy_1_gt_gt0_cpllfbclklost_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt0_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt0_txoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt0_txoutclkpcs_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt1_cpllfbclklost_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt1_rxoutclk_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt1_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt1_txoutclk_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt1_txoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt1_txoutclkpcs_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt2_cpllfbclklost_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt2_rxoutclk_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt2_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt2_txoutclk_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt2_txoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt2_txoutclkpcs_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt3_cpllfbclklost_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt3_rxoutclk_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt3_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt3_txoutclk_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt3_txoutclkfabric_out_UNCONNECTED;
  wire NLW_jesd204_phy_1_gt_gt3_txoutclkpcs_out_UNCONNECTED;
  wire [3:0]NLW_jesd204_phy_1_gt_gt0_rxchariscomma_out_UNCONNECTED;
  wire [3:0]NLW_jesd204_phy_1_gt_gt1_rxchariscomma_out_UNCONNECTED;
  wire [3:0]NLW_jesd204_phy_1_gt_gt2_rxchariscomma_out_UNCONNECTED;
  wire [3:0]NLW_jesd204_phy_1_gt_gt3_rxchariscomma_out_UNCONNECTED;

  FDRE gt_rxreset_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(gt_rxreset0),
        .Q(gt_rxreset),
        .R(1'b0));
  FDRE gt_txreset_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(gt_txreset0),
        .Q(gt_txreset),
        .R(1'b0));
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "jesd204_phy_1_gt,gtwizard_v3_6_3,{protocol_file=JESD204}" *) 
  jesd204_phy_1_jesd204_phy_1_gt jesd204_phy_1_gt
       (.DONT_RESET_ON_DATA_ERROR_IN(1'b0),
        .GT0_DATA_VALID_IN(1'b1),
        .GT0_QPLLLOCK_IN(common0_qpll_lock_out),
        .GT0_QPLLOUTCLK_IN(common0_qpll_clk_out),
        .GT0_QPLLOUTREFCLK_IN(common0_qpll_refclk_out),
        .GT0_QPLLREFCLKLOST_IN(1'b0),
        .GT0_QPLLRESET_OUT(qpll_reset_out),
        .GT1_DATA_VALID_IN(1'b1),
        .GT2_DATA_VALID_IN(1'b1),
        .GT3_DATA_VALID_IN(1'b1),
        .GT_RX_FSM_RESET_DONE_OUT(gt_rxfsmdone),
        .GT_TX_FSM_RESET_DONE_OUT(gt_txfsmdone),
        .SOFT_RESET_RX_IN(gt_rxreset),
        .SOFT_RESET_TX_IN(gt_txreset),
        .SYSCLK_IN(drpclk),
        .gt0_cpllfbclklost_out(NLW_jesd204_phy_1_gt_gt0_cpllfbclklost_out_UNCONNECTED),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cplllockdetclk_in(drpclk),
        .gt0_cpllpd_in(1'b1),
        .gt0_cpllreset_in(1'b0),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr),
        .gt0_drpclk_in(drpclk),
        .gt0_drpdi_in(gt0_drpdi),
        .gt0_drpdo_out(gt0_drpdo),
        .gt0_drpen_in(gt0_drpen),
        .gt0_drprdy_out(gt0_drprdy),
        .gt0_drpwe_in(gt0_drpwe),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtnorthrefclk0_in(1'b0),
        .gt0_gtnorthrefclk1_in(1'b0),
        .gt0_gtrefclk0_in(1'b0),
        .gt0_gtrefclk1_in(1'b0),
        .gt0_gtrxreset_in(rx_rst_gt_data_sync),
        .gt0_gtsouthrefclk0_in(1'b0),
        .gt0_gtsouthrefclk1_in(1'b0),
        .gt0_gttxreset_in(tx_rst_gt_data_sync),
        .gt0_gtxrxn_in(rxn_in[0]),
        .gt0_gtxrxp_in(rxp_in[0]),
        .gt0_gtxtxn_out(txn_out[0]),
        .gt0_gtxtxp_out(txp_out[0]),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcdrhold_in(gt0_rxcdrhold_in),
        .gt0_rxchariscomma_out(NLW_jesd204_phy_1_gt_gt0_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt0_rxcharisk_out(gt0_rxcharisk),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdata_out(gt0_rxdata),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr_out(gt0_rxdisperr),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(rxencommaalign),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable_out(gt0_rxnotintable),
        .gt0_rxoutclk_out(rxoutclk),
        .gt0_rxoutclkfabric_out(NLW_jesd204_phy_1_gt_gt0_rxoutclkfabric_out_UNCONNECTED),
        .gt0_rxpcommaalignen_in(rxencommaalign),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxstatus_out(gt0_rxstatus_out),
        .gt0_rxsysclksel_in({1'b1,1'b1}),
        .gt0_rxuserrdy_in(1'b1),
        .gt0_rxusrclk2_in(rx_core_clk),
        .gt0_rxusrclk_in(rx_core_clk),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txcharisk_in(gt0_txcharisk),
        .gt0_txdata_in(gt0_txdata),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txinhibit_in(gt0_txinhibit_in),
        .gt0_txoutclk_out(txoutclk),
        .gt0_txoutclkfabric_out(NLW_jesd204_phy_1_gt_gt0_txoutclkfabric_out_UNCONNECTED),
        .gt0_txoutclkpcs_out(NLW_jesd204_phy_1_gt_gt0_txoutclkpcs_out_UNCONNECTED),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt_prbssel),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txsysclksel_in({1'b1,1'b1}),
        .gt0_txuserrdy_in(1'b1),
        .gt0_txusrclk2_in(tx_core_clk),
        .gt0_txusrclk_in(tx_core_clk),
        .gt1_cpllfbclklost_out(NLW_jesd204_phy_1_gt_gt1_cpllfbclklost_out_UNCONNECTED),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cplllockdetclk_in(drpclk),
        .gt1_cpllpd_in(1'b1),
        .gt1_cpllreset_in(1'b0),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr_in(gt1_drpaddr),
        .gt1_drpclk_in(drpclk),
        .gt1_drpdi_in(gt1_drpdi),
        .gt1_drpdo_out(gt1_drpdo),
        .gt1_drpen_in(gt1_drpen),
        .gt1_drprdy_out(gt1_drprdy),
        .gt1_drpwe_in(gt1_drpwe),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_gtnorthrefclk0_in(1'b0),
        .gt1_gtnorthrefclk1_in(1'b0),
        .gt1_gtrefclk0_in(1'b0),
        .gt1_gtrefclk1_in(1'b0),
        .gt1_gtrxreset_in(rx_rst_gt_data_sync),
        .gt1_gtsouthrefclk0_in(1'b0),
        .gt1_gtsouthrefclk1_in(1'b0),
        .gt1_gttxreset_in(tx_rst_gt_data_sync),
        .gt1_gtxrxn_in(rxn_in[1]),
        .gt1_gtxrxp_in(rxp_in[1]),
        .gt1_gtxtxn_out(txn_out[1]),
        .gt1_gtxtxp_out(txp_out[1]),
        .gt1_loopback_in(gt1_loopback_in),
        .gt1_rxbufreset_in(gt1_rxbufreset_in),
        .gt1_rxbufstatus_out(gt1_rxbufstatus_out),
        .gt1_rxbyteisaligned_out(gt1_rxbyteisaligned_out),
        .gt1_rxbyterealign_out(gt1_rxbyterealign_out),
        .gt1_rxcdrhold_in(gt1_rxcdrhold_in),
        .gt1_rxchariscomma_out(NLW_jesd204_phy_1_gt_gt1_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt1_rxcharisk_out(gt1_rxcharisk),
        .gt1_rxcommadet_out(gt1_rxcommadet_out),
        .gt1_rxdata_out(gt1_rxdata),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxdisperr_out(gt1_rxdisperr),
        .gt1_rxlpmen_in(gt1_rxlpmen_in),
        .gt1_rxmcommaalignen_in(rxencommaalign),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxnotintable_out(gt1_rxnotintable),
        .gt1_rxoutclk_out(NLW_jesd204_phy_1_gt_gt1_rxoutclk_out_UNCONNECTED),
        .gt1_rxoutclkfabric_out(NLW_jesd204_phy_1_gt_gt1_rxoutclkfabric_out_UNCONNECTED),
        .gt1_rxpcommaalignen_in(rxencommaalign),
        .gt1_rxpcsreset_in(gt1_rxpcsreset_in),
        .gt1_rxpd_in(gt1_rxpd_in),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxpolarity_in(gt1_rxpolarity_in),
        .gt1_rxprbscntreset_in(gt1_rxprbscntreset_in),
        .gt1_rxprbserr_out(gt1_rxprbserr_out),
        .gt1_rxprbssel_in(gt1_rxprbssel_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxstatus_out(gt1_rxstatus_out),
        .gt1_rxsysclksel_in({1'b1,1'b1}),
        .gt1_rxuserrdy_in(1'b1),
        .gt1_rxusrclk2_in(rx_core_clk),
        .gt1_rxusrclk_in(rx_core_clk),
        .gt1_txbufstatus_out(gt1_txbufstatus_out),
        .gt1_txcharisk_in(gt1_txcharisk),
        .gt1_txdata_in(gt1_txdata),
        .gt1_txdiffctrl_in(gt1_txdiffctrl_in),
        .gt1_txinhibit_in(gt1_txinhibit_in),
        .gt1_txoutclk_out(NLW_jesd204_phy_1_gt_gt1_txoutclk_out_UNCONNECTED),
        .gt1_txoutclkfabric_out(NLW_jesd204_phy_1_gt_gt1_txoutclkfabric_out_UNCONNECTED),
        .gt1_txoutclkpcs_out(NLW_jesd204_phy_1_gt_gt1_txoutclkpcs_out_UNCONNECTED),
        .gt1_txpcsreset_in(gt1_txpcsreset_in),
        .gt1_txpd_in(gt1_txpd_in),
        .gt1_txpmareset_in(gt1_txpmareset_in),
        .gt1_txpolarity_in(gt1_txpolarity_in),
        .gt1_txpostcursor_in(gt1_txpostcursor_in),
        .gt1_txprbsforceerr_in(gt1_txprbsforceerr_in),
        .gt1_txprbssel_in(gt_prbssel),
        .gt1_txprecursor_in(gt1_txprecursor_in),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txsysclksel_in({1'b1,1'b1}),
        .gt1_txuserrdy_in(1'b1),
        .gt1_txusrclk2_in(tx_core_clk),
        .gt1_txusrclk_in(tx_core_clk),
        .gt2_cpllfbclklost_out(NLW_jesd204_phy_1_gt_gt2_cpllfbclklost_out_UNCONNECTED),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cplllockdetclk_in(drpclk),
        .gt2_cpllpd_in(1'b1),
        .gt2_cpllreset_in(1'b0),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr_in(gt2_drpaddr),
        .gt2_drpclk_in(drpclk),
        .gt2_drpdi_in(gt2_drpdi),
        .gt2_drpdo_out(gt2_drpdo),
        .gt2_drpen_in(gt2_drpen),
        .gt2_drprdy_out(gt2_drprdy),
        .gt2_drpwe_in(gt2_drpwe),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_gtnorthrefclk0_in(1'b0),
        .gt2_gtnorthrefclk1_in(1'b0),
        .gt2_gtrefclk0_in(1'b0),
        .gt2_gtrefclk1_in(1'b0),
        .gt2_gtrxreset_in(rx_rst_gt_data_sync),
        .gt2_gtsouthrefclk0_in(1'b0),
        .gt2_gtsouthrefclk1_in(1'b0),
        .gt2_gttxreset_in(tx_rst_gt_data_sync),
        .gt2_gtxrxn_in(rxn_in[2]),
        .gt2_gtxrxp_in(rxp_in[2]),
        .gt2_gtxtxn_out(txn_out[2]),
        .gt2_gtxtxp_out(txp_out[2]),
        .gt2_loopback_in(gt2_loopback_in),
        .gt2_rxbufreset_in(gt2_rxbufreset_in),
        .gt2_rxbufstatus_out(gt2_rxbufstatus_out),
        .gt2_rxbyteisaligned_out(gt2_rxbyteisaligned_out),
        .gt2_rxbyterealign_out(gt2_rxbyterealign_out),
        .gt2_rxcdrhold_in(gt2_rxcdrhold_in),
        .gt2_rxchariscomma_out(NLW_jesd204_phy_1_gt_gt2_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt2_rxcharisk_out(gt2_rxcharisk),
        .gt2_rxcommadet_out(gt2_rxcommadet_out),
        .gt2_rxdata_out(gt2_rxdata),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxdisperr_out(gt2_rxdisperr),
        .gt2_rxlpmen_in(gt2_rxlpmen_in),
        .gt2_rxmcommaalignen_in(rxencommaalign),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxnotintable_out(gt2_rxnotintable),
        .gt2_rxoutclk_out(NLW_jesd204_phy_1_gt_gt2_rxoutclk_out_UNCONNECTED),
        .gt2_rxoutclkfabric_out(NLW_jesd204_phy_1_gt_gt2_rxoutclkfabric_out_UNCONNECTED),
        .gt2_rxpcommaalignen_in(rxencommaalign),
        .gt2_rxpcsreset_in(gt2_rxpcsreset_in),
        .gt2_rxpd_in(gt2_rxpd_in),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxpolarity_in(gt2_rxpolarity_in),
        .gt2_rxprbscntreset_in(gt2_rxprbscntreset_in),
        .gt2_rxprbserr_out(gt2_rxprbserr_out),
        .gt2_rxprbssel_in(gt2_rxprbssel_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxstatus_out(gt2_rxstatus_out),
        .gt2_rxsysclksel_in({1'b1,1'b1}),
        .gt2_rxuserrdy_in(1'b1),
        .gt2_rxusrclk2_in(rx_core_clk),
        .gt2_rxusrclk_in(rx_core_clk),
        .gt2_txbufstatus_out(gt2_txbufstatus_out),
        .gt2_txcharisk_in(gt2_txcharisk),
        .gt2_txdata_in(gt2_txdata),
        .gt2_txdiffctrl_in(gt2_txdiffctrl_in),
        .gt2_txinhibit_in(gt2_txinhibit_in),
        .gt2_txoutclk_out(NLW_jesd204_phy_1_gt_gt2_txoutclk_out_UNCONNECTED),
        .gt2_txoutclkfabric_out(NLW_jesd204_phy_1_gt_gt2_txoutclkfabric_out_UNCONNECTED),
        .gt2_txoutclkpcs_out(NLW_jesd204_phy_1_gt_gt2_txoutclkpcs_out_UNCONNECTED),
        .gt2_txpcsreset_in(gt2_txpcsreset_in),
        .gt2_txpd_in(gt2_txpd_in),
        .gt2_txpmareset_in(gt2_txpmareset_in),
        .gt2_txpolarity_in(gt2_txpolarity_in),
        .gt2_txpostcursor_in(gt2_txpostcursor_in),
        .gt2_txprbsforceerr_in(gt2_txprbsforceerr_in),
        .gt2_txprbssel_in(gt_prbssel),
        .gt2_txprecursor_in(gt2_txprecursor_in),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txsysclksel_in({1'b1,1'b1}),
        .gt2_txuserrdy_in(1'b1),
        .gt2_txusrclk2_in(tx_core_clk),
        .gt2_txusrclk_in(tx_core_clk),
        .gt3_cpllfbclklost_out(NLW_jesd204_phy_1_gt_gt3_cpllfbclklost_out_UNCONNECTED),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cplllockdetclk_in(drpclk),
        .gt3_cpllpd_in(1'b1),
        .gt3_cpllreset_in(1'b0),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr_in(gt3_drpaddr),
        .gt3_drpclk_in(drpclk),
        .gt3_drpdi_in(gt3_drpdi),
        .gt3_drpdo_out(gt3_drpdo),
        .gt3_drpen_in(gt3_drpen),
        .gt3_drprdy_out(gt3_drprdy),
        .gt3_drpwe_in(gt3_drpwe),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_gtnorthrefclk0_in(1'b0),
        .gt3_gtnorthrefclk1_in(1'b0),
        .gt3_gtrefclk0_in(1'b0),
        .gt3_gtrefclk1_in(1'b0),
        .gt3_gtrxreset_in(rx_rst_gt_data_sync),
        .gt3_gtsouthrefclk0_in(1'b0),
        .gt3_gtsouthrefclk1_in(1'b0),
        .gt3_gttxreset_in(tx_rst_gt_data_sync),
        .gt3_gtxrxn_in(rxn_in[3]),
        .gt3_gtxrxp_in(rxp_in[3]),
        .gt3_gtxtxn_out(txn_out[3]),
        .gt3_gtxtxp_out(txp_out[3]),
        .gt3_loopback_in(gt3_loopback_in),
        .gt3_rxbufreset_in(gt3_rxbufreset_in),
        .gt3_rxbufstatus_out(gt3_rxbufstatus_out),
        .gt3_rxbyteisaligned_out(gt3_rxbyteisaligned_out),
        .gt3_rxbyterealign_out(gt3_rxbyterealign_out),
        .gt3_rxcdrhold_in(gt3_rxcdrhold_in),
        .gt3_rxchariscomma_out(NLW_jesd204_phy_1_gt_gt3_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt3_rxcharisk_out(gt3_rxcharisk),
        .gt3_rxcommadet_out(gt3_rxcommadet_out),
        .gt3_rxdata_out(gt3_rxdata),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxdisperr_out(gt3_rxdisperr),
        .gt3_rxlpmen_in(gt3_rxlpmen_in),
        .gt3_rxmcommaalignen_in(rxencommaalign),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxnotintable_out(gt3_rxnotintable),
        .gt3_rxoutclk_out(NLW_jesd204_phy_1_gt_gt3_rxoutclk_out_UNCONNECTED),
        .gt3_rxoutclkfabric_out(NLW_jesd204_phy_1_gt_gt3_rxoutclkfabric_out_UNCONNECTED),
        .gt3_rxpcommaalignen_in(rxencommaalign),
        .gt3_rxpcsreset_in(gt3_rxpcsreset_in),
        .gt3_rxpd_in(gt3_rxpd_in),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxpolarity_in(gt3_rxpolarity_in),
        .gt3_rxprbscntreset_in(gt3_rxprbscntreset_in),
        .gt3_rxprbserr_out(gt3_rxprbserr_out),
        .gt3_rxprbssel_in(gt3_rxprbssel_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxstatus_out(gt3_rxstatus_out),
        .gt3_rxsysclksel_in({1'b1,1'b1}),
        .gt3_rxuserrdy_in(1'b1),
        .gt3_rxusrclk2_in(rx_core_clk),
        .gt3_rxusrclk_in(rx_core_clk),
        .gt3_txbufstatus_out(gt3_txbufstatus_out),
        .gt3_txcharisk_in(gt3_txcharisk),
        .gt3_txdata_in(gt3_txdata),
        .gt3_txdiffctrl_in(gt3_txdiffctrl_in),
        .gt3_txinhibit_in(gt3_txinhibit_in),
        .gt3_txoutclk_out(NLW_jesd204_phy_1_gt_gt3_txoutclk_out_UNCONNECTED),
        .gt3_txoutclkfabric_out(NLW_jesd204_phy_1_gt_gt3_txoutclkfabric_out_UNCONNECTED),
        .gt3_txoutclkpcs_out(NLW_jesd204_phy_1_gt_gt3_txoutclkpcs_out_UNCONNECTED),
        .gt3_txpcsreset_in(gt3_txpcsreset_in),
        .gt3_txpd_in(gt3_txpd_in),
        .gt3_txpmareset_in(gt3_txpmareset_in),
        .gt3_txpolarity_in(gt3_txpolarity_in),
        .gt3_txpostcursor_in(gt3_txpostcursor_in),
        .gt3_txprbsforceerr_in(gt3_txprbsforceerr_in),
        .gt3_txprbssel_in(gt_prbssel),
        .gt3_txprecursor_in(gt3_txprecursor_in),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txsysclksel_in({1'b1,1'b1}),
        .gt3_txuserrdy_in(1'b1),
        .gt3_txusrclk2_in(tx_core_clk),
        .gt3_txusrclk_in(tx_core_clk));
  LUT4 #(
    .INIT(16'h8000)) 
    rx_chan_rst_done
       (.I0(gt1_rxresetdone_out),
        .I1(gt2_rxresetdone_out),
        .I2(gt0_rxresetdone_out),
        .I3(gt3_rxresetdone_out),
        .O(rx_chan_rst_done__0));
  FDRE rx_chan_rst_done_r_reg
       (.C(rx_core_clk),
        .CE(1'b1),
        .D(rx_chan_rst_done__0),
        .Q(rx_chan_rst_done_r),
        .R(1'b0));
  FDRE rx_pll_lock_i_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(common0_qpll_lock_out),
        .Q(rx_pll_lock_i_reg_n_0),
        .R(1'b0));
  FDRE rx_reset_done_r_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(rx_reset_done_r0),
        .Q(rx_reset_done),
        .R(1'b0));
  jesd204_phy_1_jesd204_phy_1_sync_block sync_rx_chan_rst_done
       (.GT_RX_FSM_RESET_DONE_OUT(gt_rxfsmdone),
        .O23(rx_chan_rst_done_r),
        .drpclk(drpclk),
        .rx_reset_done_r0(rx_reset_done_r0));
  jesd204_phy_1_jesd204_phy_1_sync_block_0 sync_rx_pll_lock
       (.O24(rx_pll_lock_i_reg_n_0),
        .data_out(rx_pll_lock_sync),
        .drpclk(drpclk));
  jesd204_phy_1_jesd204_phy_1_sync_block_1 sync_rx_reset_all
       (.GT_RX_FSM_RESET_DONE_OUT(gt_rxfsmdone),
        .data_out(rx_pll_lock_sync),
        .drpclk(drpclk),
        .gt_rxreset0(gt_rxreset0),
        .rx_sys_reset(rx_sys_reset));
  jesd204_phy_1_jesd204_phy_1_sync_block_2 sync_rx_reset_data
       (.data_out(rx_rst_gt_data_sync),
        .drpclk(drpclk),
        .rx_reset_gt(rx_reset_gt));
  jesd204_phy_1_jesd204_phy_1_sync_block_3 sync_tx_chan_rst_done
       (.GT_TX_FSM_RESET_DONE_OUT(gt_txfsmdone),
        .data_in(tx_chan_rst_done_r),
        .drpclk(drpclk),
        .tx_reset_done_r0(tx_reset_done_r0));
  jesd204_phy_1_jesd204_phy_1_sync_block_4 sync_tx_pll_lock
       (.O24(rx_pll_lock_i_reg_n_0),
        .data_out(tx_pll_lock_sync),
        .drpclk(drpclk));
  jesd204_phy_1_jesd204_phy_1_sync_block_5 sync_tx_reset_all
       (.GT_TX_FSM_RESET_DONE_OUT(gt_txfsmdone),
        .data_out(tx_pll_lock_sync),
        .drpclk(drpclk),
        .gt_txreset0(gt_txreset0),
        .tx_sys_reset(tx_sys_reset));
  jesd204_phy_1_jesd204_phy_1_sync_block_6 sync_tx_reset_data
       (.data_out(tx_rst_gt_data_sync),
        .drpclk(drpclk),
        .tx_reset_gt(tx_reset_gt));
  LUT4 #(
    .INIT(16'h8000)) 
    tx_chan_rst_done
       (.I0(gt1_txresetdone_out),
        .I1(gt2_txresetdone_out),
        .I2(gt0_txresetdone_out),
        .I3(gt3_txresetdone_out),
        .O(tx_chan_rst_done__0));
  FDRE tx_chan_rst_done_r_reg
       (.C(tx_core_clk),
        .CE(1'b1),
        .D(tx_chan_rst_done__0),
        .Q(tx_chan_rst_done_r),
        .R(1'b0));
  FDRE tx_reset_done_r_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(tx_reset_done_r0),
        .Q(tx_reset_done),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "jesd204_phy_1_gt" *) (* X_CORE_INFO = "jesd204_phy_1_gt,gtwizard_v3_6_3,{protocol_file=JESD204}" *) 
module jesd204_phy_1_jesd204_phy_1_gt
   (SYSCLK_IN,
    SOFT_RESET_TX_IN,
    SOFT_RESET_RX_IN,
    DONT_RESET_ON_DATA_ERROR_IN,
    GT0_DATA_VALID_IN,
    GT1_DATA_VALID_IN,
    GT2_DATA_VALID_IN,
    GT3_DATA_VALID_IN,
    GT_TX_FSM_RESET_DONE_OUT,
    GT_RX_FSM_RESET_DONE_OUT,
    gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cplllockdetclk_in,
    gt0_cpllpd_in,
    gt0_cpllreset_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_rxsysclksel_in,
    gt0_txsysclksel_in,
    gt0_dmonitorout_out,
    gt0_loopback_in,
    gt0_rxpd_in,
    gt0_txpd_in,
    gt0_eyescanreset_in,
    gt0_rxuserrdy_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxcdrhold_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_rxdata_out,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_rxprbscntreset_in,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_gtxrxp_in,
    gt0_gtxrxn_in,
    gt0_rxbufreset_in,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxmcommaalignen_in,
    gt0_rxpcommaalignen_in,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_gtrxreset_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxlpmen_in,
    gt0_rxpolarity_in,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxresetdone_out,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_gttxreset_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_txprbsforceerr_in,
    gt0_txbufstatus_out,
    gt0_txdiffctrl_in,
    gt0_txinhibit_in,
    gt0_txdata_in,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txcharisk_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txresetdone_out,
    gt0_txpolarity_in,
    gt0_txprbssel_in,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cplllockdetclk_in,
    gt1_cpllpd_in,
    gt1_cpllreset_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_drpaddr_in,
    gt1_drpclk_in,
    gt1_drpdi_in,
    gt1_drpdo_out,
    gt1_drpen_in,
    gt1_drprdy_out,
    gt1_drpwe_in,
    gt1_rxsysclksel_in,
    gt1_txsysclksel_in,
    gt1_dmonitorout_out,
    gt1_loopback_in,
    gt1_rxpd_in,
    gt1_txpd_in,
    gt1_eyescanreset_in,
    gt1_rxuserrdy_in,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_rxcdrhold_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_rxdata_out,
    gt1_rxprbserr_out,
    gt1_rxprbssel_in,
    gt1_rxprbscntreset_in,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    gt1_gtxrxp_in,
    gt1_gtxrxn_in,
    gt1_rxbufreset_in,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_rxmcommaalignen_in,
    gt1_rxpcommaalignen_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_gtrxreset_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxlpmen_in,
    gt1_rxpolarity_in,
    gt1_rxchariscomma_out,
    gt1_rxcharisk_out,
    gt1_rxresetdone_out,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_gttxreset_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_txprbsforceerr_in,
    gt1_txbufstatus_out,
    gt1_txdiffctrl_in,
    gt1_txinhibit_in,
    gt1_txdata_in,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txcharisk_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txresetdone_out,
    gt1_txpolarity_in,
    gt1_txprbssel_in,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cplllockdetclk_in,
    gt2_cpllpd_in,
    gt2_cpllreset_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_drpaddr_in,
    gt2_drpclk_in,
    gt2_drpdi_in,
    gt2_drpdo_out,
    gt2_drpen_in,
    gt2_drprdy_out,
    gt2_drpwe_in,
    gt2_rxsysclksel_in,
    gt2_txsysclksel_in,
    gt2_dmonitorout_out,
    gt2_loopback_in,
    gt2_rxpd_in,
    gt2_txpd_in,
    gt2_eyescanreset_in,
    gt2_rxuserrdy_in,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_rxcdrhold_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_rxdata_out,
    gt2_rxprbserr_out,
    gt2_rxprbssel_in,
    gt2_rxprbscntreset_in,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt2_gtxrxp_in,
    gt2_gtxrxn_in,
    gt2_rxbufreset_in,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_rxmcommaalignen_in,
    gt2_rxpcommaalignen_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_gtrxreset_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxlpmen_in,
    gt2_rxpolarity_in,
    gt2_rxchariscomma_out,
    gt2_rxcharisk_out,
    gt2_rxresetdone_out,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_gttxreset_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_txprbsforceerr_in,
    gt2_txbufstatus_out,
    gt2_txdiffctrl_in,
    gt2_txinhibit_in,
    gt2_txdata_in,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txcharisk_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txresetdone_out,
    gt2_txpolarity_in,
    gt2_txprbssel_in,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cplllockdetclk_in,
    gt3_cpllpd_in,
    gt3_cpllreset_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_drpaddr_in,
    gt3_drpclk_in,
    gt3_drpdi_in,
    gt3_drpdo_out,
    gt3_drpen_in,
    gt3_drprdy_out,
    gt3_drpwe_in,
    gt3_rxsysclksel_in,
    gt3_txsysclksel_in,
    gt3_dmonitorout_out,
    gt3_loopback_in,
    gt3_rxpd_in,
    gt3_txpd_in,
    gt3_eyescanreset_in,
    gt3_rxuserrdy_in,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_rxcdrhold_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_rxdata_out,
    gt3_rxprbserr_out,
    gt3_rxprbssel_in,
    gt3_rxprbscntreset_in,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gt3_gtxrxp_in,
    gt3_gtxrxn_in,
    gt3_rxbufreset_in,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_rxmcommaalignen_in,
    gt3_rxpcommaalignen_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_gtrxreset_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxlpmen_in,
    gt3_rxpolarity_in,
    gt3_rxchariscomma_out,
    gt3_rxcharisk_out,
    gt3_rxresetdone_out,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_gttxreset_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_txprbsforceerr_in,
    gt3_txbufstatus_out,
    gt3_txdiffctrl_in,
    gt3_txinhibit_in,
    gt3_txdata_in,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txcharisk_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txresetdone_out,
    gt3_txpolarity_in,
    gt3_txprbssel_in,
    GT0_QPLLLOCK_IN,
    GT0_QPLLREFCLKLOST_IN,
    GT0_QPLLRESET_OUT,
    GT0_QPLLOUTCLK_IN,
    GT0_QPLLOUTREFCLK_IN);
  input SYSCLK_IN;
  input SOFT_RESET_TX_IN;
  input SOFT_RESET_RX_IN;
  input DONT_RESET_ON_DATA_ERROR_IN;
  input GT0_DATA_VALID_IN;
  input GT1_DATA_VALID_IN;
  input GT2_DATA_VALID_IN;
  input GT3_DATA_VALID_IN;
  output GT_TX_FSM_RESET_DONE_OUT;
  output GT_RX_FSM_RESET_DONE_OUT;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllpd_in;
  input gt0_cpllreset_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  input [1:0]gt0_rxsysclksel_in;
  input [1:0]gt0_txsysclksel_in;
  output [7:0]gt0_dmonitorout_out;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxcdrhold_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  output [31:0]gt0_rxdata_out;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  input gt0_rxbufreset_in;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcommaalignen_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxpolarity_in;
  output [3:0]gt0_rxchariscomma_out;
  output [3:0]gt0_rxcharisk_out;
  output gt0_rxresetdone_out;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input gt0_txprbsforceerr_in;
  output [1:0]gt0_txbufstatus_out;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txinhibit_in;
  input [31:0]gt0_txdata_in;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  input [3:0]gt0_txcharisk_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  output gt0_txresetdone_out;
  input gt0_txpolarity_in;
  input [2:0]gt0_txprbssel_in;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  input gt1_cplllockdetclk_in;
  input gt1_cpllpd_in;
  input gt1_cpllreset_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input [8:0]gt1_drpaddr_in;
  input gt1_drpclk_in;
  input [15:0]gt1_drpdi_in;
  output [15:0]gt1_drpdo_out;
  input gt1_drpen_in;
  output gt1_drprdy_out;
  input gt1_drpwe_in;
  input [1:0]gt1_rxsysclksel_in;
  input [1:0]gt1_txsysclksel_in;
  output [7:0]gt1_dmonitorout_out;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input gt1_eyescanreset_in;
  input gt1_rxuserrdy_in;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_rxcdrhold_in;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  output [31:0]gt1_rxdata_out;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  input gt1_gtxrxp_in;
  input gt1_gtxrxn_in;
  input gt1_rxbufreset_in;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  input gt1_rxmcommaalignen_in;
  input gt1_rxpcommaalignen_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  input gt1_gtrxreset_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxpolarity_in;
  output [3:0]gt1_rxchariscomma_out;
  output [3:0]gt1_rxcharisk_out;
  output gt1_rxresetdone_out;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input gt1_gttxreset_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input gt1_txprbsforceerr_in;
  output [1:0]gt1_txbufstatus_out;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txinhibit_in;
  input [31:0]gt1_txdata_in;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  input [3:0]gt1_txcharisk_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  output gt1_txresetdone_out;
  input gt1_txpolarity_in;
  input [2:0]gt1_txprbssel_in;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  input gt2_cplllockdetclk_in;
  input gt2_cpllpd_in;
  input gt2_cpllreset_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input [8:0]gt2_drpaddr_in;
  input gt2_drpclk_in;
  input [15:0]gt2_drpdi_in;
  output [15:0]gt2_drpdo_out;
  input gt2_drpen_in;
  output gt2_drprdy_out;
  input gt2_drpwe_in;
  input [1:0]gt2_rxsysclksel_in;
  input [1:0]gt2_txsysclksel_in;
  output [7:0]gt2_dmonitorout_out;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input gt2_eyescanreset_in;
  input gt2_rxuserrdy_in;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_rxcdrhold_in;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  output [31:0]gt2_rxdata_out;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  input gt2_gtxrxp_in;
  input gt2_gtxrxn_in;
  input gt2_rxbufreset_in;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  input gt2_rxmcommaalignen_in;
  input gt2_rxpcommaalignen_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  input gt2_gtrxreset_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxpolarity_in;
  output [3:0]gt2_rxchariscomma_out;
  output [3:0]gt2_rxcharisk_out;
  output gt2_rxresetdone_out;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input gt2_gttxreset_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input gt2_txprbsforceerr_in;
  output [1:0]gt2_txbufstatus_out;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txinhibit_in;
  input [31:0]gt2_txdata_in;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  input [3:0]gt2_txcharisk_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  output gt2_txresetdone_out;
  input gt2_txpolarity_in;
  input [2:0]gt2_txprbssel_in;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  input gt3_cplllockdetclk_in;
  input gt3_cpllpd_in;
  input gt3_cpllreset_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input [8:0]gt3_drpaddr_in;
  input gt3_drpclk_in;
  input [15:0]gt3_drpdi_in;
  output [15:0]gt3_drpdo_out;
  input gt3_drpen_in;
  output gt3_drprdy_out;
  input gt3_drpwe_in;
  input [1:0]gt3_rxsysclksel_in;
  input [1:0]gt3_txsysclksel_in;
  output [7:0]gt3_dmonitorout_out;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input gt3_eyescanreset_in;
  input gt3_rxuserrdy_in;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_rxcdrhold_in;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  output [31:0]gt3_rxdata_out;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  input gt3_gtxrxp_in;
  input gt3_gtxrxn_in;
  input gt3_rxbufreset_in;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  input gt3_rxmcommaalignen_in;
  input gt3_rxpcommaalignen_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  input gt3_gtrxreset_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxpolarity_in;
  output [3:0]gt3_rxchariscomma_out;
  output [3:0]gt3_rxcharisk_out;
  output gt3_rxresetdone_out;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input gt3_gttxreset_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input gt3_txprbsforceerr_in;
  output [1:0]gt3_txbufstatus_out;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txinhibit_in;
  input [31:0]gt3_txdata_in;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  input [3:0]gt3_txcharisk_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  output gt3_txresetdone_out;
  input gt3_txpolarity_in;
  input [2:0]gt3_txprbssel_in;
  input GT0_QPLLLOCK_IN;
  input GT0_QPLLREFCLKLOST_IN;
  output GT0_QPLLRESET_OUT;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;

  wire DONT_RESET_ON_DATA_ERROR_IN;
  wire GT0_DATA_VALID_IN;
  wire GT0_QPLLLOCK_IN;
  wire GT0_QPLLOUTCLK_IN;
  wire GT0_QPLLOUTREFCLK_IN;
  wire GT0_QPLLREFCLKLOST_IN;
  wire GT0_QPLLRESET_OUT;
  wire GT1_DATA_VALID_IN;
  wire GT2_DATA_VALID_IN;
  wire GT3_DATA_VALID_IN;
  wire GT_RX_FSM_RESET_DONE_OUT;
  wire GT_TX_FSM_RESET_DONE_OUT;
  wire SOFT_RESET_RX_IN;
  wire SOFT_RESET_TX_IN;
  wire SYSCLK_IN;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllpd_in;
  wire gt0_cpllreset_in;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtrxreset_in;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire [2:0]gt0_loopback_in;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [3:0]gt0_rxchariscomma_out;
  wire [3:0]gt0_rxcharisk_out;
  wire gt0_rxcommadet_out;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelpmreset_in;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpcommaalignen_in;
  wire gt0_rxpcsreset_in;
  wire [1:0]gt0_rxpd_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [2:0]gt0_rxstatus_out;
  wire [1:0]gt0_rxsysclksel_in;
  wire gt0_rxuserrdy_in;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txinhibit_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txpcsreset_in;
  wire [1:0]gt0_txpd_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire [1:0]gt0_txsysclksel_in;
  wire gt0_txuserrdy_in;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire gt1_cpllfbclklost_out;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllpd_in;
  wire gt1_cpllreset_in;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtrxreset_in;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [2:0]gt1_loopback_in;
  wire gt1_rxbufreset_in;
  wire [2:0]gt1_rxbufstatus_out;
  wire gt1_rxbyteisaligned_out;
  wire gt1_rxbyterealign_out;
  wire gt1_rxcdrhold_in;
  wire [3:0]gt1_rxchariscomma_out;
  wire [3:0]gt1_rxcharisk_out;
  wire gt1_rxcommadet_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelpmreset_in;
  wire [3:0]gt1_rxdisperr_out;
  wire gt1_rxlpmen_in;
  wire gt1_rxmcommaalignen_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpcommaalignen_in;
  wire gt1_rxpcsreset_in;
  wire [1:0]gt1_rxpd_in;
  wire gt1_rxpmareset_in;
  wire gt1_rxpolarity_in;
  wire gt1_rxprbscntreset_in;
  wire gt1_rxprbserr_out;
  wire [2:0]gt1_rxprbssel_in;
  wire gt1_rxresetdone_out;
  wire [2:0]gt1_rxstatus_out;
  wire [1:0]gt1_rxsysclksel_in;
  wire gt1_rxuserrdy_in;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire [1:0]gt1_txbufstatus_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire [3:0]gt1_txdiffctrl_in;
  wire gt1_txinhibit_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txpcsreset_in;
  wire [1:0]gt1_txpd_in;
  wire gt1_txpmareset_in;
  wire gt1_txpolarity_in;
  wire [4:0]gt1_txpostcursor_in;
  wire gt1_txprbsforceerr_in;
  wire [2:0]gt1_txprbssel_in;
  wire [4:0]gt1_txprecursor_in;
  wire gt1_txresetdone_out;
  wire [1:0]gt1_txsysclksel_in;
  wire gt1_txuserrdy_in;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire gt2_cpllfbclklost_out;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllpd_in;
  wire gt2_cpllreset_in;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtrxreset_in;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_in;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [2:0]gt2_loopback_in;
  wire gt2_rxbufreset_in;
  wire [2:0]gt2_rxbufstatus_out;
  wire gt2_rxbyteisaligned_out;
  wire gt2_rxbyterealign_out;
  wire gt2_rxcdrhold_in;
  wire [3:0]gt2_rxchariscomma_out;
  wire [3:0]gt2_rxcharisk_out;
  wire gt2_rxcommadet_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelpmreset_in;
  wire [3:0]gt2_rxdisperr_out;
  wire gt2_rxlpmen_in;
  wire gt2_rxmcommaalignen_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpcommaalignen_in;
  wire gt2_rxpcsreset_in;
  wire [1:0]gt2_rxpd_in;
  wire gt2_rxpmareset_in;
  wire gt2_rxpolarity_in;
  wire gt2_rxprbscntreset_in;
  wire gt2_rxprbserr_out;
  wire [2:0]gt2_rxprbssel_in;
  wire gt2_rxresetdone_out;
  wire [2:0]gt2_rxstatus_out;
  wire [1:0]gt2_rxsysclksel_in;
  wire gt2_rxuserrdy_in;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire [1:0]gt2_txbufstatus_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire [3:0]gt2_txdiffctrl_in;
  wire gt2_txinhibit_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txpcsreset_in;
  wire [1:0]gt2_txpd_in;
  wire gt2_txpmareset_in;
  wire gt2_txpolarity_in;
  wire [4:0]gt2_txpostcursor_in;
  wire gt2_txprbsforceerr_in;
  wire [2:0]gt2_txprbssel_in;
  wire [4:0]gt2_txprecursor_in;
  wire gt2_txresetdone_out;
  wire [1:0]gt2_txsysclksel_in;
  wire gt2_txuserrdy_in;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire gt3_cpllfbclklost_out;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllpd_in;
  wire gt3_cpllreset_in;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtrxreset_in;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_in;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [2:0]gt3_loopback_in;
  wire gt3_rxbufreset_in;
  wire [2:0]gt3_rxbufstatus_out;
  wire gt3_rxbyteisaligned_out;
  wire gt3_rxbyterealign_out;
  wire gt3_rxcdrhold_in;
  wire [3:0]gt3_rxchariscomma_out;
  wire [3:0]gt3_rxcharisk_out;
  wire gt3_rxcommadet_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelpmreset_in;
  wire [3:0]gt3_rxdisperr_out;
  wire gt3_rxlpmen_in;
  wire gt3_rxmcommaalignen_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpcommaalignen_in;
  wire gt3_rxpcsreset_in;
  wire [1:0]gt3_rxpd_in;
  wire gt3_rxpmareset_in;
  wire gt3_rxpolarity_in;
  wire gt3_rxprbscntreset_in;
  wire gt3_rxprbserr_out;
  wire [2:0]gt3_rxprbssel_in;
  wire gt3_rxresetdone_out;
  wire [2:0]gt3_rxstatus_out;
  wire [1:0]gt3_rxsysclksel_in;
  wire gt3_rxuserrdy_in;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire [1:0]gt3_txbufstatus_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire [3:0]gt3_txdiffctrl_in;
  wire gt3_txinhibit_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txpcsreset_in;
  wire [1:0]gt3_txpd_in;
  wire gt3_txpmareset_in;
  wire gt3_txpolarity_in;
  wire [4:0]gt3_txpostcursor_in;
  wire gt3_txprbsforceerr_in;
  wire [2:0]gt3_txprbssel_in;
  wire [4:0]gt3_txprecursor_in;
  wire gt3_txresetdone_out;
  wire [1:0]gt3_txsysclksel_in;
  wire gt3_txuserrdy_in;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;

  (* EXAMPLE_SIMULATION = "0" *) 
  (* EXAMPLE_SIM_GTRESET_SPEEDUP = "TRUE" *) 
  (* EXAMPLE_USE_CHIPSCOPE = "1" *) 
  (* STABLE_CLOCK_PERIOD = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  jesd204_phy_1_jesd204_phy_1_gt_init U0
       (.DONT_RESET_ON_DATA_ERROR_IN(DONT_RESET_ON_DATA_ERROR_IN),
        .GT0_DATA_VALID_IN(GT0_DATA_VALID_IN),
        .GT0_QPLLLOCK_IN(GT0_QPLLLOCK_IN),
        .GT0_QPLLOUTCLK_IN(GT0_QPLLOUTCLK_IN),
        .GT0_QPLLOUTREFCLK_IN(GT0_QPLLOUTREFCLK_IN),
        .GT0_QPLLREFCLKLOST_IN(GT0_QPLLREFCLKLOST_IN),
        .GT0_QPLLRESET_OUT(GT0_QPLLRESET_OUT),
        .GT1_DATA_VALID_IN(GT1_DATA_VALID_IN),
        .GT2_DATA_VALID_IN(GT2_DATA_VALID_IN),
        .GT3_DATA_VALID_IN(GT3_DATA_VALID_IN),
        .GT_RX_FSM_RESET_DONE_OUT(GT_RX_FSM_RESET_DONE_OUT),
        .GT_TX_FSM_RESET_DONE_OUT(GT_TX_FSM_RESET_DONE_OUT),
        .SOFT_RESET_RX_IN(SOFT_RESET_RX_IN),
        .SOFT_RESET_TX_IN(SOFT_RESET_TX_IN),
        .SYSCLK_IN(SYSCLK_IN),
        .gt0_cpllfbclklost_out(gt0_cpllfbclklost_out),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cplllockdetclk_in(gt0_cplllockdetclk_in),
        .gt0_cpllpd_in(gt0_cpllpd_in),
        .gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtnorthrefclk0_in(gt0_gtnorthrefclk0_in),
        .gt0_gtnorthrefclk1_in(gt0_gtnorthrefclk1_in),
        .gt0_gtrefclk0_in(gt0_gtrefclk0_in),
        .gt0_gtrefclk1_in(gt0_gtrefclk1_in),
        .gt0_gtrxreset_in(gt0_gtrxreset_in),
        .gt0_gtsouthrefclk0_in(gt0_gtsouthrefclk0_in),
        .gt0_gtsouthrefclk1_in(gt0_gtsouthrefclk1_in),
        .gt0_gttxreset_in(gt0_gttxreset_in),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcdrhold_in(gt0_rxcdrhold_in),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxoutclkfabric_out(gt0_rxoutclkfabric_out),
        .gt0_rxpcommaalignen_in(gt0_rxpcommaalignen_in),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxstatus_out(gt0_rxstatus_out),
        .gt0_rxsysclksel_in(gt0_rxsysclksel_in),
        .gt0_rxuserrdy_in(gt0_rxuserrdy_in),
        .gt0_rxusrclk2_in(gt0_rxusrclk2_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txcharisk_in(gt0_txcharisk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txinhibit_in(gt0_txinhibit_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txoutclkfabric_out(gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out(gt0_txoutclkpcs_out),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txsysclksel_in(gt0_txsysclksel_in),
        .gt0_txuserrdy_in(gt0_txuserrdy_in),
        .gt0_txusrclk2_in(gt0_txusrclk2_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_cpllfbclklost_out(gt1_cpllfbclklost_out),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cplllockdetclk_in(gt1_cplllockdetclk_in),
        .gt1_cpllpd_in(gt1_cpllpd_in),
        .gt1_cpllreset_in(gt1_cpllreset_in),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr_in(gt1_drpaddr_in),
        .gt1_drpclk_in(gt1_drpclk_in),
        .gt1_drpdi_in(gt1_drpdi_in),
        .gt1_drpdo_out(gt1_drpdo_out),
        .gt1_drpen_in(gt1_drpen_in),
        .gt1_drprdy_out(gt1_drprdy_out),
        .gt1_drpwe_in(gt1_drpwe_in),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_gtnorthrefclk0_in(gt1_gtnorthrefclk0_in),
        .gt1_gtnorthrefclk1_in(gt1_gtnorthrefclk1_in),
        .gt1_gtrefclk0_in(gt1_gtrefclk0_in),
        .gt1_gtrefclk1_in(gt1_gtrefclk1_in),
        .gt1_gtrxreset_in(gt1_gtrxreset_in),
        .gt1_gtsouthrefclk0_in(gt1_gtsouthrefclk0_in),
        .gt1_gtsouthrefclk1_in(gt1_gtsouthrefclk1_in),
        .gt1_gttxreset_in(gt1_gttxreset_in),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_loopback_in(gt1_loopback_in),
        .gt1_rxbufreset_in(gt1_rxbufreset_in),
        .gt1_rxbufstatus_out(gt1_rxbufstatus_out),
        .gt1_rxbyteisaligned_out(gt1_rxbyteisaligned_out),
        .gt1_rxbyterealign_out(gt1_rxbyterealign_out),
        .gt1_rxcdrhold_in(gt1_rxcdrhold_in),
        .gt1_rxchariscomma_out(gt1_rxchariscomma_out),
        .gt1_rxcharisk_out(gt1_rxcharisk_out),
        .gt1_rxcommadet_out(gt1_rxcommadet_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxdisperr_out(gt1_rxdisperr_out),
        .gt1_rxlpmen_in(gt1_rxlpmen_in),
        .gt1_rxmcommaalignen_in(gt1_rxmcommaalignen_in),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxnotintable_out(gt1_rxnotintable_out),
        .gt1_rxoutclk_out(gt1_rxoutclk_out),
        .gt1_rxoutclkfabric_out(gt1_rxoutclkfabric_out),
        .gt1_rxpcommaalignen_in(gt1_rxpcommaalignen_in),
        .gt1_rxpcsreset_in(gt1_rxpcsreset_in),
        .gt1_rxpd_in(gt1_rxpd_in),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxpolarity_in(gt1_rxpolarity_in),
        .gt1_rxprbscntreset_in(gt1_rxprbscntreset_in),
        .gt1_rxprbserr_out(gt1_rxprbserr_out),
        .gt1_rxprbssel_in(gt1_rxprbssel_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxstatus_out(gt1_rxstatus_out),
        .gt1_rxsysclksel_in(gt1_rxsysclksel_in),
        .gt1_rxuserrdy_in(gt1_rxuserrdy_in),
        .gt1_rxusrclk2_in(gt1_rxusrclk2_in),
        .gt1_rxusrclk_in(gt1_rxusrclk_in),
        .gt1_txbufstatus_out(gt1_txbufstatus_out),
        .gt1_txcharisk_in(gt1_txcharisk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txdiffctrl_in(gt1_txdiffctrl_in),
        .gt1_txinhibit_in(gt1_txinhibit_in),
        .gt1_txoutclk_out(gt1_txoutclk_out),
        .gt1_txoutclkfabric_out(gt1_txoutclkfabric_out),
        .gt1_txoutclkpcs_out(gt1_txoutclkpcs_out),
        .gt1_txpcsreset_in(gt1_txpcsreset_in),
        .gt1_txpd_in(gt1_txpd_in),
        .gt1_txpmareset_in(gt1_txpmareset_in),
        .gt1_txpolarity_in(gt1_txpolarity_in),
        .gt1_txpostcursor_in(gt1_txpostcursor_in),
        .gt1_txprbsforceerr_in(gt1_txprbsforceerr_in),
        .gt1_txprbssel_in(gt1_txprbssel_in),
        .gt1_txprecursor_in(gt1_txprecursor_in),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txsysclksel_in(gt1_txsysclksel_in),
        .gt1_txuserrdy_in(gt1_txuserrdy_in),
        .gt1_txusrclk2_in(gt1_txusrclk2_in),
        .gt1_txusrclk_in(gt1_txusrclk_in),
        .gt2_cpllfbclklost_out(gt2_cpllfbclklost_out),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cplllockdetclk_in(gt2_cplllockdetclk_in),
        .gt2_cpllpd_in(gt2_cpllpd_in),
        .gt2_cpllreset_in(gt2_cpllreset_in),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr_in(gt2_drpaddr_in),
        .gt2_drpclk_in(gt2_drpclk_in),
        .gt2_drpdi_in(gt2_drpdi_in),
        .gt2_drpdo_out(gt2_drpdo_out),
        .gt2_drpen_in(gt2_drpen_in),
        .gt2_drprdy_out(gt2_drprdy_out),
        .gt2_drpwe_in(gt2_drpwe_in),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_gtnorthrefclk0_in(gt2_gtnorthrefclk0_in),
        .gt2_gtnorthrefclk1_in(gt2_gtnorthrefclk1_in),
        .gt2_gtrefclk0_in(gt2_gtrefclk0_in),
        .gt2_gtrefclk1_in(gt2_gtrefclk1_in),
        .gt2_gtrxreset_in(gt2_gtrxreset_in),
        .gt2_gtsouthrefclk0_in(gt2_gtsouthrefclk0_in),
        .gt2_gtsouthrefclk1_in(gt2_gtsouthrefclk1_in),
        .gt2_gttxreset_in(gt2_gttxreset_in),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_loopback_in(gt2_loopback_in),
        .gt2_rxbufreset_in(gt2_rxbufreset_in),
        .gt2_rxbufstatus_out(gt2_rxbufstatus_out),
        .gt2_rxbyteisaligned_out(gt2_rxbyteisaligned_out),
        .gt2_rxbyterealign_out(gt2_rxbyterealign_out),
        .gt2_rxcdrhold_in(gt2_rxcdrhold_in),
        .gt2_rxchariscomma_out(gt2_rxchariscomma_out),
        .gt2_rxcharisk_out(gt2_rxcharisk_out),
        .gt2_rxcommadet_out(gt2_rxcommadet_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxdisperr_out(gt2_rxdisperr_out),
        .gt2_rxlpmen_in(gt2_rxlpmen_in),
        .gt2_rxmcommaalignen_in(gt2_rxmcommaalignen_in),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxnotintable_out(gt2_rxnotintable_out),
        .gt2_rxoutclk_out(gt2_rxoutclk_out),
        .gt2_rxoutclkfabric_out(gt2_rxoutclkfabric_out),
        .gt2_rxpcommaalignen_in(gt2_rxpcommaalignen_in),
        .gt2_rxpcsreset_in(gt2_rxpcsreset_in),
        .gt2_rxpd_in(gt2_rxpd_in),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxpolarity_in(gt2_rxpolarity_in),
        .gt2_rxprbscntreset_in(gt2_rxprbscntreset_in),
        .gt2_rxprbserr_out(gt2_rxprbserr_out),
        .gt2_rxprbssel_in(gt2_rxprbssel_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxstatus_out(gt2_rxstatus_out),
        .gt2_rxsysclksel_in(gt2_rxsysclksel_in),
        .gt2_rxuserrdy_in(gt2_rxuserrdy_in),
        .gt2_rxusrclk2_in(gt2_rxusrclk2_in),
        .gt2_rxusrclk_in(gt2_rxusrclk_in),
        .gt2_txbufstatus_out(gt2_txbufstatus_out),
        .gt2_txcharisk_in(gt2_txcharisk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txdiffctrl_in(gt2_txdiffctrl_in),
        .gt2_txinhibit_in(gt2_txinhibit_in),
        .gt2_txoutclk_out(gt2_txoutclk_out),
        .gt2_txoutclkfabric_out(gt2_txoutclkfabric_out),
        .gt2_txoutclkpcs_out(gt2_txoutclkpcs_out),
        .gt2_txpcsreset_in(gt2_txpcsreset_in),
        .gt2_txpd_in(gt2_txpd_in),
        .gt2_txpmareset_in(gt2_txpmareset_in),
        .gt2_txpolarity_in(gt2_txpolarity_in),
        .gt2_txpostcursor_in(gt2_txpostcursor_in),
        .gt2_txprbsforceerr_in(gt2_txprbsforceerr_in),
        .gt2_txprbssel_in(gt2_txprbssel_in),
        .gt2_txprecursor_in(gt2_txprecursor_in),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txsysclksel_in(gt2_txsysclksel_in),
        .gt2_txuserrdy_in(gt2_txuserrdy_in),
        .gt2_txusrclk2_in(gt2_txusrclk2_in),
        .gt2_txusrclk_in(gt2_txusrclk_in),
        .gt3_cpllfbclklost_out(gt3_cpllfbclklost_out),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cplllockdetclk_in(gt3_cplllockdetclk_in),
        .gt3_cpllpd_in(gt3_cpllpd_in),
        .gt3_cpllreset_in(gt3_cpllreset_in),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr_in(gt3_drpaddr_in),
        .gt3_drpclk_in(gt3_drpclk_in),
        .gt3_drpdi_in(gt3_drpdi_in),
        .gt3_drpdo_out(gt3_drpdo_out),
        .gt3_drpen_in(gt3_drpen_in),
        .gt3_drprdy_out(gt3_drprdy_out),
        .gt3_drpwe_in(gt3_drpwe_in),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_gtnorthrefclk0_in(gt3_gtnorthrefclk0_in),
        .gt3_gtnorthrefclk1_in(gt3_gtnorthrefclk1_in),
        .gt3_gtrefclk0_in(gt3_gtrefclk0_in),
        .gt3_gtrefclk1_in(gt3_gtrefclk1_in),
        .gt3_gtrxreset_in(gt3_gtrxreset_in),
        .gt3_gtsouthrefclk0_in(gt3_gtsouthrefclk0_in),
        .gt3_gtsouthrefclk1_in(gt3_gtsouthrefclk1_in),
        .gt3_gttxreset_in(gt3_gttxreset_in),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_loopback_in(gt3_loopback_in),
        .gt3_rxbufreset_in(gt3_rxbufreset_in),
        .gt3_rxbufstatus_out(gt3_rxbufstatus_out),
        .gt3_rxbyteisaligned_out(gt3_rxbyteisaligned_out),
        .gt3_rxbyterealign_out(gt3_rxbyterealign_out),
        .gt3_rxcdrhold_in(gt3_rxcdrhold_in),
        .gt3_rxchariscomma_out(gt3_rxchariscomma_out),
        .gt3_rxcharisk_out(gt3_rxcharisk_out),
        .gt3_rxcommadet_out(gt3_rxcommadet_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxdisperr_out(gt3_rxdisperr_out),
        .gt3_rxlpmen_in(gt3_rxlpmen_in),
        .gt3_rxmcommaalignen_in(gt3_rxmcommaalignen_in),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxnotintable_out(gt3_rxnotintable_out),
        .gt3_rxoutclk_out(gt3_rxoutclk_out),
        .gt3_rxoutclkfabric_out(gt3_rxoutclkfabric_out),
        .gt3_rxpcommaalignen_in(gt3_rxpcommaalignen_in),
        .gt3_rxpcsreset_in(gt3_rxpcsreset_in),
        .gt3_rxpd_in(gt3_rxpd_in),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxpolarity_in(gt3_rxpolarity_in),
        .gt3_rxprbscntreset_in(gt3_rxprbscntreset_in),
        .gt3_rxprbserr_out(gt3_rxprbserr_out),
        .gt3_rxprbssel_in(gt3_rxprbssel_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxstatus_out(gt3_rxstatus_out),
        .gt3_rxsysclksel_in(gt3_rxsysclksel_in),
        .gt3_rxuserrdy_in(gt3_rxuserrdy_in),
        .gt3_rxusrclk2_in(gt3_rxusrclk2_in),
        .gt3_rxusrclk_in(gt3_rxusrclk_in),
        .gt3_txbufstatus_out(gt3_txbufstatus_out),
        .gt3_txcharisk_in(gt3_txcharisk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txdiffctrl_in(gt3_txdiffctrl_in),
        .gt3_txinhibit_in(gt3_txinhibit_in),
        .gt3_txoutclk_out(gt3_txoutclk_out),
        .gt3_txoutclkfabric_out(gt3_txoutclkfabric_out),
        .gt3_txoutclkpcs_out(gt3_txoutclkpcs_out),
        .gt3_txpcsreset_in(gt3_txpcsreset_in),
        .gt3_txpd_in(gt3_txpd_in),
        .gt3_txpmareset_in(gt3_txpmareset_in),
        .gt3_txpolarity_in(gt3_txpolarity_in),
        .gt3_txpostcursor_in(gt3_txpostcursor_in),
        .gt3_txprbsforceerr_in(gt3_txprbsforceerr_in),
        .gt3_txprbssel_in(gt3_txprbssel_in),
        .gt3_txprecursor_in(gt3_txprecursor_in),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txsysclksel_in(gt3_txsysclksel_in),
        .gt3_txuserrdy_in(gt3_txuserrdy_in),
        .gt3_txusrclk2_in(gt3_txusrclk2_in),
        .gt3_txusrclk_in(gt3_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_GT" *) 
module jesd204_phy_1_jesd204_phy_1_gt_GT
   (gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_rxprbserr_out,
    gt0_rxresetdone_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txresetdone_out,
    gt0_drpdo_out,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxdata_out,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_cplllockdetclk_in,
    gt0_cpllpd_in,
    gt0_cpllreset_in,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    SR,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_gttxreset_in,
    gt0_gtxrxn_in,
    gt0_gtxrxp_in,
    GT0_QPLLOUTCLK_IN,
    GT0_QPLLOUTREFCLK_IN,
    gt0_rxbufreset_in,
    gt0_rxcdrhold_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxmcommaalignen_in,
    gt0_rxpcommaalignen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    gt0_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_txinhibit_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    gt0_rxpd_in,
    gt0_rxsysclksel_in,
    gt0_txpd_in,
    gt0_txsysclksel_in,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_txdata_in,
    gt0_txcharisk_in,
    gt0_drpaddr_in);
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  output gt0_rxprbserr_out;
  output gt0_rxresetdone_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  output gt0_txresetdone_out;
  output [15:0]gt0_drpdo_out;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output [31:0]gt0_rxdata_out;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output [3:0]gt0_rxchariscomma_out;
  output [3:0]gt0_rxcharisk_out;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllpd_in;
  input gt0_cpllreset_in;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input [0:0]SR;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input gt0_gttxreset_in;
  input gt0_gtxrxn_in;
  input gt0_gtxrxp_in;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;
  input gt0_rxbufreset_in;
  input gt0_rxcdrhold_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcommaalignen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input gt0_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  input gt0_txinhibit_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_rxsysclksel_in;
  input [1:0]gt0_txpd_in;
  input [1:0]gt0_txsysclksel_in;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [31:0]gt0_txdata_in;
  input [3:0]gt0_txcharisk_in;
  input [8:0]gt0_drpaddr_in;

  wire GT0_QPLLOUTCLK_IN;
  wire GT0_QPLLOUTREFCLK_IN;
  wire [0:0]SR;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllpd_in;
  wire gt0_cpllreset_in;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire [2:0]gt0_loopback_in;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [3:0]gt0_rxchariscomma_out;
  wire [3:0]gt0_rxcharisk_out;
  wire gt0_rxcommadet_out;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelpmreset_in;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpcommaalignen_in;
  wire gt0_rxpcsreset_in;
  wire [1:0]gt0_rxpd_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [2:0]gt0_rxstatus_out;
  wire [1:0]gt0_rxsysclksel_in;
  wire gt0_rxuserrdy_in;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txinhibit_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txpcsreset_in;
  wire [1:0]gt0_txpd_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire [1:0]gt0_txsysclksel_in;
  wire gt0_txuserrdy_in;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire gtxe2_i_n_2;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(4),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(10),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(10),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt0_cpllfbclklost_out),
        .CPLLLOCK(gt0_cplllock_out),
        .CPLLLOCKDETCLK(gt0_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt0_cpllpd_in),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT(gt0_dmonitorout_out),
        .DRPADDR(gt0_drpaddr_in),
        .DRPCLK(gt0_drpclk_in),
        .DRPDI(gt0_drpdi_in),
        .DRPDO(gt0_drpdo_out),
        .DRPEN(gt0_drpen_in),
        .DRPRDY(gt0_drprdy_out),
        .DRPWE(gt0_drpwe_in),
        .EYESCANDATAERROR(gt0_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt0_eyescanreset_in),
        .EYESCANTRIGGER(gt0_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt0_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt0_gtnorthrefclk1_in),
        .GTREFCLK0(gt0_gtrefclk0_in),
        .GTREFCLK1(gt0_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(SR),
        .GTSOUTHREFCLK0(gt0_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt0_gtsouthrefclk1_in),
        .GTTXRESET(gt0_gttxreset_in),
        .GTXRXN(gt0_gtxrxn_in),
        .GTXRXP(gt0_gtxrxp_in),
        .GTXTXN(gt0_gtxtxn_out),
        .GTXTXP(gt0_gtxtxp_out),
        .LOOPBACK(gt0_loopback_in),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(GT0_QPLLOUTCLK_IN),
        .QPLLREFCLK(GT0_QPLLOUTREFCLK_IN),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(gt0_rxbufreset_in),
        .RXBUFSTATUS(gt0_rxbufstatus_out),
        .RXBYTEISALIGNED(gt0_rxbyteisaligned_out),
        .RXBYTEREALIGN(gt0_rxbyterealign_out),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(gt0_rxcdrhold_in),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gt0_rxchariscomma_out}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt0_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gt0_rxcommadet_out),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt0_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(gt0_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt0_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(gt0_rxlpmen_in),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT(gt0_rxmonitorout_out),
        .RXMONITORSEL(gt0_rxmonitorsel_in),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt0_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt0_rxoutclk_out),
        .RXOUTCLKFABRIC(gt0_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxpcommaalignen_in),
        .RXPCSRESET(gt0_rxpcsreset_in),
        .RXPD(gt0_rxpd_in),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt0_rxpmareset_in),
        .RXPOLARITY(gt0_rxpolarity_in),
        .RXPRBSCNTRESET(gt0_rxprbscntreset_in),
        .RXPRBSERR(gt0_rxprbserr_out),
        .RXPRBSSEL(gt0_rxprbssel_in),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt0_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(gt0_rxstatus_out),
        .RXSYSCLKSEL(gt0_rxsysclksel_in),
        .RXUSERRDY(gt0_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(gt0_txbufstatus_out),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt0_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt0_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL(gt0_txdiffctrl_in),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(gt0_txinhibit_in),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt0_txoutclk_out),
        .TXOUTCLKFABRIC(gt0_txoutclkfabric_out),
        .TXOUTCLKPCS(gt0_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(gt0_txpcsreset_in),
        .TXPD(gt0_txpd_in),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(gt0_txpmareset_in),
        .TXPOLARITY(gt0_txpolarity_in),
        .TXPOSTCURSOR(gt0_txpostcursor_in),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(gt0_txprbsforceerr_in),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR(gt0_txprecursor_in),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt0_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL(gt0_txsysclksel_in),
        .TXUSERRDY(gt0_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_GT" *) 
module jesd204_phy_1_jesd204_phy_1_gt_GT_7
   (gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_drprdy_out,
    gt1_eyescandataerror_out,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_rxprbserr_out,
    gt1_rxresetdone_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txresetdone_out,
    gt1_drpdo_out,
    gt1_txbufstatus_out,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxdata_out,
    gt1_rxmonitorout_out,
    gt1_dmonitorout_out,
    gt1_rxchariscomma_out,
    gt1_rxcharisk_out,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    data_in,
    data_sync_reg1,
    gt1_cplllockdetclk_in,
    gt1_cpllpd_in,
    gt1_cpllreset_in,
    gt1_drpclk_in,
    gt1_drpen_in,
    gt1_drpwe_in,
    gt1_eyescanreset_in,
    gt1_eyescantrigger_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    data_sync_reg4,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_gttxreset_in,
    gt1_gtxrxn_in,
    gt1_gtxrxp_in,
    GT0_QPLLOUTCLK_IN,
    GT0_QPLLOUTREFCLK_IN,
    gt1_rxbufreset_in,
    gt1_rxcdrhold_in,
    gt1_rxdfelpmreset_in,
    gt1_rxlpmen_in,
    gt1_rxmcommaalignen_in,
    gt1_rxpcommaalignen_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxpolarity_in,
    gt1_rxprbscntreset_in,
    gt1_rxuserrdy_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_txinhibit_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txpolarity_in,
    gt1_txprbsforceerr_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_drpdi_in,
    gt1_rxmonitorsel_in,
    gt1_rxpd_in,
    gt1_rxsysclksel_in,
    gt1_txpd_in,
    gt1_txsysclksel_in,
    gt1_loopback_in,
    gt1_rxprbssel_in,
    gt1_txprbssel_in,
    gt1_txdiffctrl_in,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_txdata_in,
    gt1_txcharisk_in,
    gt1_drpaddr_in,
    gt2_txresetdone_out,
    gt0_txresetdone_out,
    gt3_txresetdone_out,
    gt2_rxresetdone_out,
    gt0_rxresetdone_out,
    gt3_rxresetdone_out);
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  output gt1_drprdy_out;
  output gt1_eyescandataerror_out;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  output gt1_rxprbserr_out;
  output gt1_rxresetdone_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  output gt1_txresetdone_out;
  output [15:0]gt1_drpdo_out;
  output [1:0]gt1_txbufstatus_out;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output [31:0]gt1_rxdata_out;
  output [6:0]gt1_rxmonitorout_out;
  output [7:0]gt1_dmonitorout_out;
  output [3:0]gt1_rxchariscomma_out;
  output [3:0]gt1_rxcharisk_out;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  output data_in;
  output data_sync_reg1;
  input gt1_cplllockdetclk_in;
  input gt1_cpllpd_in;
  input gt1_cpllreset_in;
  input gt1_drpclk_in;
  input gt1_drpen_in;
  input gt1_drpwe_in;
  input gt1_eyescanreset_in;
  input gt1_eyescantrigger_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input [0:0]data_sync_reg4;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input gt1_gttxreset_in;
  input gt1_gtxrxn_in;
  input gt1_gtxrxp_in;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;
  input gt1_rxbufreset_in;
  input gt1_rxcdrhold_in;
  input gt1_rxdfelpmreset_in;
  input gt1_rxlpmen_in;
  input gt1_rxmcommaalignen_in;
  input gt1_rxpcommaalignen_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxpolarity_in;
  input gt1_rxprbscntreset_in;
  input gt1_rxuserrdy_in;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  input gt1_txinhibit_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  input gt1_txpolarity_in;
  input gt1_txprbsforceerr_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input [15:0]gt1_drpdi_in;
  input [1:0]gt1_rxmonitorsel_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_rxsysclksel_in;
  input [1:0]gt1_txpd_in;
  input [1:0]gt1_txsysclksel_in;
  input [2:0]gt1_loopback_in;
  input [2:0]gt1_rxprbssel_in;
  input [2:0]gt1_txprbssel_in;
  input [3:0]gt1_txdiffctrl_in;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input [31:0]gt1_txdata_in;
  input [3:0]gt1_txcharisk_in;
  input [8:0]gt1_drpaddr_in;
  input gt2_txresetdone_out;
  input gt0_txresetdone_out;
  input gt3_txresetdone_out;
  input gt2_rxresetdone_out;
  input gt0_rxresetdone_out;
  input gt3_rxresetdone_out;

  wire GT0_QPLLOUTCLK_IN;
  wire GT0_QPLLOUTREFCLK_IN;
  wire data_in;
  wire data_sync_reg1;
  wire [0:0]data_sync_reg4;
  wire gt0_rxresetdone_out;
  wire gt0_txresetdone_out;
  wire gt1_cpllfbclklost_out;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllpd_in;
  wire gt1_cpllreset_in;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [2:0]gt1_loopback_in;
  wire gt1_rxbufreset_in;
  wire [2:0]gt1_rxbufstatus_out;
  wire gt1_rxbyteisaligned_out;
  wire gt1_rxbyterealign_out;
  wire gt1_rxcdrhold_in;
  wire [3:0]gt1_rxchariscomma_out;
  wire [3:0]gt1_rxcharisk_out;
  wire gt1_rxcommadet_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelpmreset_in;
  wire [3:0]gt1_rxdisperr_out;
  wire gt1_rxlpmen_in;
  wire gt1_rxmcommaalignen_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpcommaalignen_in;
  wire gt1_rxpcsreset_in;
  wire [1:0]gt1_rxpd_in;
  wire gt1_rxpmareset_in;
  wire gt1_rxpolarity_in;
  wire gt1_rxprbscntreset_in;
  wire gt1_rxprbserr_out;
  wire [2:0]gt1_rxprbssel_in;
  wire gt1_rxresetdone_out;
  wire [2:0]gt1_rxstatus_out;
  wire [1:0]gt1_rxsysclksel_in;
  wire gt1_rxuserrdy_in;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire [1:0]gt1_txbufstatus_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire [3:0]gt1_txdiffctrl_in;
  wire gt1_txinhibit_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txpcsreset_in;
  wire [1:0]gt1_txpd_in;
  wire gt1_txpmareset_in;
  wire gt1_txpolarity_in;
  wire [4:0]gt1_txpostcursor_in;
  wire gt1_txprbsforceerr_in;
  wire [2:0]gt1_txprbssel_in;
  wire [4:0]gt1_txprecursor_in;
  wire gt1_txresetdone_out;
  wire [1:0]gt1_txsysclksel_in;
  wire gt1_txuserrdy_in;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire gt2_rxresetdone_out;
  wire gt2_txresetdone_out;
  wire gt3_rxresetdone_out;
  wire gt3_txresetdone_out;
  wire gtxe2_i_n_2;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8000)) 
    data_sync1_i_1
       (.I0(gt1_txresetdone_out),
        .I1(gt2_txresetdone_out),
        .I2(gt0_txresetdone_out),
        .I3(gt3_txresetdone_out),
        .O(data_in));
  LUT4 #(
    .INIT(16'h8000)) 
    data_sync1_i_1__0
       (.I0(gt1_rxresetdone_out),
        .I1(gt2_rxresetdone_out),
        .I2(gt0_rxresetdone_out),
        .I3(gt3_rxresetdone_out),
        .O(data_sync_reg1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(4),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(10),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(10),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt1_cpllfbclklost_out),
        .CPLLLOCK(gt1_cplllock_out),
        .CPLLLOCKDETCLK(gt1_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt1_cpllpd_in),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt1_cpllreset_in),
        .DMONITOROUT(gt1_dmonitorout_out),
        .DRPADDR(gt1_drpaddr_in),
        .DRPCLK(gt1_drpclk_in),
        .DRPDI(gt1_drpdi_in),
        .DRPDO(gt1_drpdo_out),
        .DRPEN(gt1_drpen_in),
        .DRPRDY(gt1_drprdy_out),
        .DRPWE(gt1_drpwe_in),
        .EYESCANDATAERROR(gt1_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt1_eyescanreset_in),
        .EYESCANTRIGGER(gt1_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt1_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt1_gtnorthrefclk1_in),
        .GTREFCLK0(gt1_gtrefclk0_in),
        .GTREFCLK1(gt1_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(data_sync_reg4),
        .GTSOUTHREFCLK0(gt1_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt1_gtsouthrefclk1_in),
        .GTTXRESET(gt1_gttxreset_in),
        .GTXRXN(gt1_gtxrxn_in),
        .GTXRXP(gt1_gtxrxp_in),
        .GTXTXN(gt1_gtxtxn_out),
        .GTXTXP(gt1_gtxtxp_out),
        .LOOPBACK(gt1_loopback_in),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(GT0_QPLLOUTCLK_IN),
        .QPLLREFCLK(GT0_QPLLOUTREFCLK_IN),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(gt1_rxbufreset_in),
        .RXBUFSTATUS(gt1_rxbufstatus_out),
        .RXBYTEISALIGNED(gt1_rxbyteisaligned_out),
        .RXBYTEREALIGN(gt1_rxbyterealign_out),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(gt1_rxcdrhold_in),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gt1_rxchariscomma_out}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt1_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gt1_rxcommadet_out),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt1_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(gt1_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt1_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(gt1_rxlpmen_in),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt1_rxmcommaalignen_in),
        .RXMONITOROUT(gt1_rxmonitorout_out),
        .RXMONITORSEL(gt1_rxmonitorsel_in),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt1_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt1_rxoutclk_out),
        .RXOUTCLKFABRIC(gt1_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt1_rxpcommaalignen_in),
        .RXPCSRESET(gt1_rxpcsreset_in),
        .RXPD(gt1_rxpd_in),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt1_rxpmareset_in),
        .RXPOLARITY(gt1_rxpolarity_in),
        .RXPRBSCNTRESET(gt1_rxprbscntreset_in),
        .RXPRBSERR(gt1_rxprbserr_out),
        .RXPRBSSEL(gt1_rxprbssel_in),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt1_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(gt1_rxstatus_out),
        .RXSYSCLKSEL(gt1_rxsysclksel_in),
        .RXUSERRDY(gt1_rxuserrdy_in),
        .RXUSRCLK(gt1_rxusrclk_in),
        .RXUSRCLK2(gt1_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(gt1_txbufstatus_out),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt1_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt1_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL(gt1_txdiffctrl_in),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(gt1_txinhibit_in),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt1_txoutclk_out),
        .TXOUTCLKFABRIC(gt1_txoutclkfabric_out),
        .TXOUTCLKPCS(gt1_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(gt1_txpcsreset_in),
        .TXPD(gt1_txpd_in),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(gt1_txpmareset_in),
        .TXPOLARITY(gt1_txpolarity_in),
        .TXPOSTCURSOR(gt1_txpostcursor_in),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(gt1_txprbsforceerr_in),
        .TXPRBSSEL(gt1_txprbssel_in),
        .TXPRECURSOR(gt1_txprecursor_in),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt1_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL(gt1_txsysclksel_in),
        .TXUSERRDY(gt1_txuserrdy_in),
        .TXUSRCLK(gt1_txusrclk_in),
        .TXUSRCLK2(gt1_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_GT" *) 
module jesd204_phy_1_jesd204_phy_1_gt_GT_8
   (gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_drprdy_out,
    gt2_eyescandataerror_out,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_rxprbserr_out,
    gt2_rxresetdone_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txresetdone_out,
    gt2_drpdo_out,
    gt2_txbufstatus_out,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxdata_out,
    gt2_rxmonitorout_out,
    gt2_dmonitorout_out,
    gt2_rxchariscomma_out,
    gt2_rxcharisk_out,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt2_cplllockdetclk_in,
    gt2_cpllpd_in,
    gt2_cpllreset_in,
    gt2_drpclk_in,
    gt2_drpen_in,
    gt2_drpwe_in,
    gt2_eyescanreset_in,
    gt2_eyescantrigger_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    data_sync_reg4,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_gttxreset_in,
    gt2_gtxrxn_in,
    gt2_gtxrxp_in,
    GT0_QPLLOUTCLK_IN,
    GT0_QPLLOUTREFCLK_IN,
    gt2_rxbufreset_in,
    gt2_rxcdrhold_in,
    gt2_rxdfelpmreset_in,
    gt2_rxlpmen_in,
    gt2_rxmcommaalignen_in,
    gt2_rxpcommaalignen_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxpolarity_in,
    gt2_rxprbscntreset_in,
    gt2_rxuserrdy_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_txinhibit_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txpolarity_in,
    gt2_txprbsforceerr_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_drpdi_in,
    gt2_rxmonitorsel_in,
    gt2_rxpd_in,
    gt2_rxsysclksel_in,
    gt2_txpd_in,
    gt2_txsysclksel_in,
    gt2_loopback_in,
    gt2_rxprbssel_in,
    gt2_txprbssel_in,
    gt2_txdiffctrl_in,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_txdata_in,
    gt2_txcharisk_in,
    gt2_drpaddr_in);
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  output gt2_drprdy_out;
  output gt2_eyescandataerror_out;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  output gt2_rxprbserr_out;
  output gt2_rxresetdone_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  output gt2_txresetdone_out;
  output [15:0]gt2_drpdo_out;
  output [1:0]gt2_txbufstatus_out;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output [31:0]gt2_rxdata_out;
  output [6:0]gt2_rxmonitorout_out;
  output [7:0]gt2_dmonitorout_out;
  output [3:0]gt2_rxchariscomma_out;
  output [3:0]gt2_rxcharisk_out;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  input gt2_cplllockdetclk_in;
  input gt2_cpllpd_in;
  input gt2_cpllreset_in;
  input gt2_drpclk_in;
  input gt2_drpen_in;
  input gt2_drpwe_in;
  input gt2_eyescanreset_in;
  input gt2_eyescantrigger_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input [0:0]data_sync_reg4;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input gt2_gttxreset_in;
  input gt2_gtxrxn_in;
  input gt2_gtxrxp_in;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;
  input gt2_rxbufreset_in;
  input gt2_rxcdrhold_in;
  input gt2_rxdfelpmreset_in;
  input gt2_rxlpmen_in;
  input gt2_rxmcommaalignen_in;
  input gt2_rxpcommaalignen_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxpolarity_in;
  input gt2_rxprbscntreset_in;
  input gt2_rxuserrdy_in;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  input gt2_txinhibit_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  input gt2_txpolarity_in;
  input gt2_txprbsforceerr_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input [15:0]gt2_drpdi_in;
  input [1:0]gt2_rxmonitorsel_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_rxsysclksel_in;
  input [1:0]gt2_txpd_in;
  input [1:0]gt2_txsysclksel_in;
  input [2:0]gt2_loopback_in;
  input [2:0]gt2_rxprbssel_in;
  input [2:0]gt2_txprbssel_in;
  input [3:0]gt2_txdiffctrl_in;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input [31:0]gt2_txdata_in;
  input [3:0]gt2_txcharisk_in;
  input [8:0]gt2_drpaddr_in;

  wire GT0_QPLLOUTCLK_IN;
  wire GT0_QPLLOUTREFCLK_IN;
  wire [0:0]data_sync_reg4;
  wire gt2_cpllfbclklost_out;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllpd_in;
  wire gt2_cpllreset_in;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_in;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [2:0]gt2_loopback_in;
  wire gt2_rxbufreset_in;
  wire [2:0]gt2_rxbufstatus_out;
  wire gt2_rxbyteisaligned_out;
  wire gt2_rxbyterealign_out;
  wire gt2_rxcdrhold_in;
  wire [3:0]gt2_rxchariscomma_out;
  wire [3:0]gt2_rxcharisk_out;
  wire gt2_rxcommadet_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelpmreset_in;
  wire [3:0]gt2_rxdisperr_out;
  wire gt2_rxlpmen_in;
  wire gt2_rxmcommaalignen_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpcommaalignen_in;
  wire gt2_rxpcsreset_in;
  wire [1:0]gt2_rxpd_in;
  wire gt2_rxpmareset_in;
  wire gt2_rxpolarity_in;
  wire gt2_rxprbscntreset_in;
  wire gt2_rxprbserr_out;
  wire [2:0]gt2_rxprbssel_in;
  wire gt2_rxresetdone_out;
  wire [2:0]gt2_rxstatus_out;
  wire [1:0]gt2_rxsysclksel_in;
  wire gt2_rxuserrdy_in;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire [1:0]gt2_txbufstatus_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire [3:0]gt2_txdiffctrl_in;
  wire gt2_txinhibit_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txpcsreset_in;
  wire [1:0]gt2_txpd_in;
  wire gt2_txpmareset_in;
  wire gt2_txpolarity_in;
  wire [4:0]gt2_txpostcursor_in;
  wire gt2_txprbsforceerr_in;
  wire [2:0]gt2_txprbssel_in;
  wire [4:0]gt2_txprecursor_in;
  wire gt2_txresetdone_out;
  wire [1:0]gt2_txsysclksel_in;
  wire gt2_txuserrdy_in;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire gtxe2_i_n_2;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(4),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(10),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(10),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt2_cpllfbclklost_out),
        .CPLLLOCK(gt2_cplllock_out),
        .CPLLLOCKDETCLK(gt2_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt2_cpllpd_in),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt2_cpllreset_in),
        .DMONITOROUT(gt2_dmonitorout_out),
        .DRPADDR(gt2_drpaddr_in),
        .DRPCLK(gt2_drpclk_in),
        .DRPDI(gt2_drpdi_in),
        .DRPDO(gt2_drpdo_out),
        .DRPEN(gt2_drpen_in),
        .DRPRDY(gt2_drprdy_out),
        .DRPWE(gt2_drpwe_in),
        .EYESCANDATAERROR(gt2_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt2_eyescanreset_in),
        .EYESCANTRIGGER(gt2_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt2_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt2_gtnorthrefclk1_in),
        .GTREFCLK0(gt2_gtrefclk0_in),
        .GTREFCLK1(gt2_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(data_sync_reg4),
        .GTSOUTHREFCLK0(gt2_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt2_gtsouthrefclk1_in),
        .GTTXRESET(gt2_gttxreset_in),
        .GTXRXN(gt2_gtxrxn_in),
        .GTXRXP(gt2_gtxrxp_in),
        .GTXTXN(gt2_gtxtxn_out),
        .GTXTXP(gt2_gtxtxp_out),
        .LOOPBACK(gt2_loopback_in),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(GT0_QPLLOUTCLK_IN),
        .QPLLREFCLK(GT0_QPLLOUTREFCLK_IN),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(gt2_rxbufreset_in),
        .RXBUFSTATUS(gt2_rxbufstatus_out),
        .RXBYTEISALIGNED(gt2_rxbyteisaligned_out),
        .RXBYTEREALIGN(gt2_rxbyterealign_out),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(gt2_rxcdrhold_in),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gt2_rxchariscomma_out}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt2_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gt2_rxcommadet_out),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt2_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(gt2_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt2_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(gt2_rxlpmen_in),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt2_rxmcommaalignen_in),
        .RXMONITOROUT(gt2_rxmonitorout_out),
        .RXMONITORSEL(gt2_rxmonitorsel_in),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt2_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt2_rxoutclk_out),
        .RXOUTCLKFABRIC(gt2_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt2_rxpcommaalignen_in),
        .RXPCSRESET(gt2_rxpcsreset_in),
        .RXPD(gt2_rxpd_in),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt2_rxpmareset_in),
        .RXPOLARITY(gt2_rxpolarity_in),
        .RXPRBSCNTRESET(gt2_rxprbscntreset_in),
        .RXPRBSERR(gt2_rxprbserr_out),
        .RXPRBSSEL(gt2_rxprbssel_in),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt2_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(gt2_rxstatus_out),
        .RXSYSCLKSEL(gt2_rxsysclksel_in),
        .RXUSERRDY(gt2_rxuserrdy_in),
        .RXUSRCLK(gt2_rxusrclk_in),
        .RXUSRCLK2(gt2_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(gt2_txbufstatus_out),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt2_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt2_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL(gt2_txdiffctrl_in),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(gt2_txinhibit_in),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt2_txoutclk_out),
        .TXOUTCLKFABRIC(gt2_txoutclkfabric_out),
        .TXOUTCLKPCS(gt2_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(gt2_txpcsreset_in),
        .TXPD(gt2_txpd_in),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(gt2_txpmareset_in),
        .TXPOLARITY(gt2_txpolarity_in),
        .TXPOSTCURSOR(gt2_txpostcursor_in),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(gt2_txprbsforceerr_in),
        .TXPRBSSEL(gt2_txprbssel_in),
        .TXPRECURSOR(gt2_txprecursor_in),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt2_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL(gt2_txsysclksel_in),
        .TXUSERRDY(gt2_txuserrdy_in),
        .TXUSRCLK(gt2_txusrclk_in),
        .TXUSRCLK2(gt2_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_GT" *) 
module jesd204_phy_1_jesd204_phy_1_gt_GT_9
   (gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_drprdy_out,
    gt3_eyescandataerror_out,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_rxprbserr_out,
    gt3_rxresetdone_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txresetdone_out,
    gt3_drpdo_out,
    gt3_txbufstatus_out,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxdata_out,
    gt3_rxmonitorout_out,
    gt3_dmonitorout_out,
    gt3_rxchariscomma_out,
    gt3_rxcharisk_out,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gt3_cplllockdetclk_in,
    gt3_cpllpd_in,
    gt3_cpllreset_in,
    gt3_drpclk_in,
    gt3_drpen_in,
    gt3_drpwe_in,
    gt3_eyescanreset_in,
    gt3_eyescantrigger_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    data_sync_reg4,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_gttxreset_in,
    gt3_gtxrxn_in,
    gt3_gtxrxp_in,
    GT0_QPLLOUTCLK_IN,
    GT0_QPLLOUTREFCLK_IN,
    gt3_rxbufreset_in,
    gt3_rxcdrhold_in,
    gt3_rxdfelpmreset_in,
    gt3_rxlpmen_in,
    gt3_rxmcommaalignen_in,
    gt3_rxpcommaalignen_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxpolarity_in,
    gt3_rxprbscntreset_in,
    gt3_rxuserrdy_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_txinhibit_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txpolarity_in,
    gt3_txprbsforceerr_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_drpdi_in,
    gt3_rxmonitorsel_in,
    gt3_rxpd_in,
    gt3_rxsysclksel_in,
    gt3_txpd_in,
    gt3_txsysclksel_in,
    gt3_loopback_in,
    gt3_rxprbssel_in,
    gt3_txprbssel_in,
    gt3_txdiffctrl_in,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_txdata_in,
    gt3_txcharisk_in,
    gt3_drpaddr_in);
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  output gt3_drprdy_out;
  output gt3_eyescandataerror_out;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  output gt3_rxprbserr_out;
  output gt3_rxresetdone_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  output gt3_txresetdone_out;
  output [15:0]gt3_drpdo_out;
  output [1:0]gt3_txbufstatus_out;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output [31:0]gt3_rxdata_out;
  output [6:0]gt3_rxmonitorout_out;
  output [7:0]gt3_dmonitorout_out;
  output [3:0]gt3_rxchariscomma_out;
  output [3:0]gt3_rxcharisk_out;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  input gt3_cplllockdetclk_in;
  input gt3_cpllpd_in;
  input gt3_cpllreset_in;
  input gt3_drpclk_in;
  input gt3_drpen_in;
  input gt3_drpwe_in;
  input gt3_eyescanreset_in;
  input gt3_eyescantrigger_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input [0:0]data_sync_reg4;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input gt3_gttxreset_in;
  input gt3_gtxrxn_in;
  input gt3_gtxrxp_in;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;
  input gt3_rxbufreset_in;
  input gt3_rxcdrhold_in;
  input gt3_rxdfelpmreset_in;
  input gt3_rxlpmen_in;
  input gt3_rxmcommaalignen_in;
  input gt3_rxpcommaalignen_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxpolarity_in;
  input gt3_rxprbscntreset_in;
  input gt3_rxuserrdy_in;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  input gt3_txinhibit_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  input gt3_txpolarity_in;
  input gt3_txprbsforceerr_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input [15:0]gt3_drpdi_in;
  input [1:0]gt3_rxmonitorsel_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_rxsysclksel_in;
  input [1:0]gt3_txpd_in;
  input [1:0]gt3_txsysclksel_in;
  input [2:0]gt3_loopback_in;
  input [2:0]gt3_rxprbssel_in;
  input [2:0]gt3_txprbssel_in;
  input [3:0]gt3_txdiffctrl_in;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input [31:0]gt3_txdata_in;
  input [3:0]gt3_txcharisk_in;
  input [8:0]gt3_drpaddr_in;

  wire GT0_QPLLOUTCLK_IN;
  wire GT0_QPLLOUTREFCLK_IN;
  wire [0:0]data_sync_reg4;
  wire gt3_cpllfbclklost_out;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllpd_in;
  wire gt3_cpllreset_in;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_in;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [2:0]gt3_loopback_in;
  wire gt3_rxbufreset_in;
  wire [2:0]gt3_rxbufstatus_out;
  wire gt3_rxbyteisaligned_out;
  wire gt3_rxbyterealign_out;
  wire gt3_rxcdrhold_in;
  wire [3:0]gt3_rxchariscomma_out;
  wire [3:0]gt3_rxcharisk_out;
  wire gt3_rxcommadet_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelpmreset_in;
  wire [3:0]gt3_rxdisperr_out;
  wire gt3_rxlpmen_in;
  wire gt3_rxmcommaalignen_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpcommaalignen_in;
  wire gt3_rxpcsreset_in;
  wire [1:0]gt3_rxpd_in;
  wire gt3_rxpmareset_in;
  wire gt3_rxpolarity_in;
  wire gt3_rxprbscntreset_in;
  wire gt3_rxprbserr_out;
  wire [2:0]gt3_rxprbssel_in;
  wire gt3_rxresetdone_out;
  wire [2:0]gt3_rxstatus_out;
  wire [1:0]gt3_rxsysclksel_in;
  wire gt3_rxuserrdy_in;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire [1:0]gt3_txbufstatus_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire [3:0]gt3_txdiffctrl_in;
  wire gt3_txinhibit_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txpcsreset_in;
  wire [1:0]gt3_txpd_in;
  wire gt3_txpmareset_in;
  wire gt3_txpolarity_in;
  wire [4:0]gt3_txpostcursor_in;
  wire gt3_txprbsforceerr_in;
  wire [2:0]gt3_txprbssel_in;
  wire [4:0]gt3_txprecursor_in;
  wire gt3_txresetdone_out;
  wire [1:0]gt3_txsysclksel_in;
  wire gt3_txuserrdy_in;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;
  wire gtxe2_i_n_2;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(4),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(10),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(10),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt3_cpllfbclklost_out),
        .CPLLLOCK(gt3_cplllock_out),
        .CPLLLOCKDETCLK(gt3_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt3_cpllpd_in),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt3_cpllreset_in),
        .DMONITOROUT(gt3_dmonitorout_out),
        .DRPADDR(gt3_drpaddr_in),
        .DRPCLK(gt3_drpclk_in),
        .DRPDI(gt3_drpdi_in),
        .DRPDO(gt3_drpdo_out),
        .DRPEN(gt3_drpen_in),
        .DRPRDY(gt3_drprdy_out),
        .DRPWE(gt3_drpwe_in),
        .EYESCANDATAERROR(gt3_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt3_eyescanreset_in),
        .EYESCANTRIGGER(gt3_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt3_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt3_gtnorthrefclk1_in),
        .GTREFCLK0(gt3_gtrefclk0_in),
        .GTREFCLK1(gt3_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(data_sync_reg4),
        .GTSOUTHREFCLK0(gt3_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt3_gtsouthrefclk1_in),
        .GTTXRESET(gt3_gttxreset_in),
        .GTXRXN(gt3_gtxrxn_in),
        .GTXRXP(gt3_gtxrxp_in),
        .GTXTXN(gt3_gtxtxn_out),
        .GTXTXP(gt3_gtxtxp_out),
        .LOOPBACK(gt3_loopback_in),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(GT0_QPLLOUTCLK_IN),
        .QPLLREFCLK(GT0_QPLLOUTREFCLK_IN),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(gt3_rxbufreset_in),
        .RXBUFSTATUS(gt3_rxbufstatus_out),
        .RXBYTEISALIGNED(gt3_rxbyteisaligned_out),
        .RXBYTEREALIGN(gt3_rxbyterealign_out),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(gt3_rxcdrhold_in),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gt3_rxchariscomma_out}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt3_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gt3_rxcommadet_out),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt3_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(gt3_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt3_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(gt3_rxlpmen_in),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt3_rxmcommaalignen_in),
        .RXMONITOROUT(gt3_rxmonitorout_out),
        .RXMONITORSEL(gt3_rxmonitorsel_in),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt3_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt3_rxoutclk_out),
        .RXOUTCLKFABRIC(gt3_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt3_rxpcommaalignen_in),
        .RXPCSRESET(gt3_rxpcsreset_in),
        .RXPD(gt3_rxpd_in),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt3_rxpmareset_in),
        .RXPOLARITY(gt3_rxpolarity_in),
        .RXPRBSCNTRESET(gt3_rxprbscntreset_in),
        .RXPRBSERR(gt3_rxprbserr_out),
        .RXPRBSSEL(gt3_rxprbssel_in),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt3_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(gt3_rxstatus_out),
        .RXSYSCLKSEL(gt3_rxsysclksel_in),
        .RXUSERRDY(gt3_rxuserrdy_in),
        .RXUSRCLK(gt3_rxusrclk_in),
        .RXUSRCLK2(gt3_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(gt3_txbufstatus_out),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt3_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt3_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL(gt3_txdiffctrl_in),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(gt3_txinhibit_in),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt3_txoutclk_out),
        .TXOUTCLKFABRIC(gt3_txoutclkfabric_out),
        .TXOUTCLKPCS(gt3_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(gt3_txpcsreset_in),
        .TXPD(gt3_txpd_in),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(gt3_txpmareset_in),
        .TXPOLARITY(gt3_txpolarity_in),
        .TXPOSTCURSOR(gt3_txpostcursor_in),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(gt3_txprbsforceerr_in),
        .TXPRBSSEL(gt3_txprbssel_in),
        .TXPRECURSOR(gt3_txprecursor_in),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt3_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL(gt3_txsysclksel_in),
        .TXUSERRDY(gt3_txuserrdy_in),
        .TXUSRCLK(gt3_txusrclk_in),
        .TXUSRCLK2(gt3_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_RX_STARTUP_FSM" *) 
module jesd204_phy_1_jesd204_phy_1_gt_RX_STARTUP_FSM
   (GT_RX_FSM_RESET_DONE_OUT,
    SR,
    \gt2_rx_cdrlock_counter_reg[9] ,
    \gt3_rx_cdrlock_counter_reg[9] ,
    \gt0_rx_cdrlock_counter_reg[9] ,
    GT0_QPLLRESET_OUT,
    gt1_rx_cdrlocked_reg,
    gt2_rx_cdrlocked_reg,
    gt3_rx_cdrlocked_reg,
    gt0_rx_cdrlocked_reg,
    gt2_cpllreset_in,
    gt0_cpllreset_in,
    gt1_cpllreset_in,
    gt3_cpllreset_in,
    gt0_rxuserrdy_in,
    gt1_rxuserrdy_in,
    gt2_rxuserrdy_in,
    gt3_rxuserrdy_in,
    SYSCLK_IN,
    gt0_rxusrclk_in,
    SOFT_RESET_RX_IN,
    GT1_DATA_VALID_IN,
    GT2_DATA_VALID_IN,
    GT0_DATA_VALID_IN,
    GT3_DATA_VALID_IN,
    gt0_rxsysclksel_in,
    gt0_txsysclksel_in,
    DONT_RESET_ON_DATA_ERROR_IN,
    gt1_gtrxreset_in,
    gt2_gtrxreset_in,
    gt3_gtrxreset_in,
    gt0_gtrxreset_in,
    gt_tx_qpllreset_t,
    gt3_rx_cdrlocked_reg_0,
    gt0_rx_cdrlocked_reg_0,
    gt2_rx_cdrlocked_reg_0,
    gt1_rx_cdrlocked_reg_0,
    \gt1_rx_cdrlock_counter_reg[0] ,
    \gt1_rx_cdrlock_counter_reg[7] ,
    \gt2_rx_cdrlock_counter_reg[0] ,
    \gt2_rx_cdrlock_counter_reg[7] ,
    \gt3_rx_cdrlock_counter_reg[0] ,
    \gt3_rx_cdrlock_counter_reg[7] ,
    \gt0_rx_cdrlock_counter_reg[0] ,
    \gt0_rx_cdrlock_counter_reg[7] ,
    data_in,
    GT0_QPLLLOCK_IN,
    CPLL_RESET,
    UNCONN_IN,
    UNCONN_IN_0,
    UNCONN_IN_1,
    UNCONN_IN_2,
    UNCONN_IN_3,
    UNCONN_IN_4,
    UNCONN_IN_5,
    UNCONN_IN_6);
  output GT_RX_FSM_RESET_DONE_OUT;
  output [0:0]SR;
  output [0:0]\gt2_rx_cdrlock_counter_reg[9] ;
  output [0:0]\gt3_rx_cdrlock_counter_reg[9] ;
  output [0:0]\gt0_rx_cdrlock_counter_reg[9] ;
  output GT0_QPLLRESET_OUT;
  output gt1_rx_cdrlocked_reg;
  output gt2_rx_cdrlocked_reg;
  output gt3_rx_cdrlocked_reg;
  output gt0_rx_cdrlocked_reg;
  output gt2_cpllreset_in;
  output gt0_cpllreset_in;
  output gt1_cpllreset_in;
  output gt3_cpllreset_in;
  output gt0_rxuserrdy_in;
  output gt1_rxuserrdy_in;
  output gt2_rxuserrdy_in;
  output gt3_rxuserrdy_in;
  input SYSCLK_IN;
  input gt0_rxusrclk_in;
  input SOFT_RESET_RX_IN;
  input GT1_DATA_VALID_IN;
  input GT2_DATA_VALID_IN;
  input GT0_DATA_VALID_IN;
  input GT3_DATA_VALID_IN;
  input [0:0]gt0_rxsysclksel_in;
  input [0:0]gt0_txsysclksel_in;
  input DONT_RESET_ON_DATA_ERROR_IN;
  input gt1_gtrxreset_in;
  input gt2_gtrxreset_in;
  input gt3_gtrxreset_in;
  input gt0_gtrxreset_in;
  input gt_tx_qpllreset_t;
  input gt3_rx_cdrlocked_reg_0;
  input gt0_rx_cdrlocked_reg_0;
  input gt2_rx_cdrlocked_reg_0;
  input gt1_rx_cdrlocked_reg_0;
  input \gt1_rx_cdrlock_counter_reg[0] ;
  input \gt1_rx_cdrlock_counter_reg[7] ;
  input \gt2_rx_cdrlock_counter_reg[0] ;
  input \gt2_rx_cdrlock_counter_reg[7] ;
  input \gt3_rx_cdrlock_counter_reg[0] ;
  input \gt3_rx_cdrlock_counter_reg[7] ;
  input \gt0_rx_cdrlock_counter_reg[0] ;
  input \gt0_rx_cdrlock_counter_reg[7] ;
  input data_in;
  input GT0_QPLLLOCK_IN;
  input CPLL_RESET;
  input UNCONN_IN;
  input UNCONN_IN_0;
  input UNCONN_IN_1;
  input UNCONN_IN_2;
  input UNCONN_IN_3;
  input UNCONN_IN_4;
  input UNCONN_IN_5;
  input UNCONN_IN_6;

  wire CPLL_RESET;
  wire CPLL_RESET_i_1__0_n_0;
  wire CPLL_RESET_i_2_n_0;
  wire DONT_RESET_ON_DATA_ERROR_IN;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire GT0_DATA_VALID_IN;
  wire GT0_QPLLLOCK_IN;
  wire GT0_QPLLRESET_OUT;
  wire GT1_DATA_VALID_IN;
  wire GT2_DATA_VALID_IN;
  wire GT3_DATA_VALID_IN;
  wire GT_RX_FSM_RESET_DONE_OUT;
  wire QPLL_RESET;
  wire QPLL_RESET_i_1__0_n_0;
  wire QPLL_RESET_i_3_n_0;
  wire RXUSERRDY_i_1_n_0;
  wire SOFT_RESET_RX_IN;
  wire [0:0]SR;
  wire SYSCLK_IN;
  wire UNCONN_IN;
  wire UNCONN_IN_0;
  wire UNCONN_IN_1;
  wire UNCONN_IN_2;
  wire UNCONN_IN_3;
  wire UNCONN_IN_4;
  wire UNCONN_IN_5;
  wire UNCONN_IN_6;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire cplllock_sync;
  wire data_in;
  wire data_out;
  wire data_valid_sync;
  wire gt0_cpllreset_in;
  wire gt0_gtrxreset_in;
  wire \gt0_rx_cdrlock_counter_reg[0] ;
  wire \gt0_rx_cdrlock_counter_reg[7] ;
  wire [0:0]\gt0_rx_cdrlock_counter_reg[9] ;
  wire gt0_rx_cdrlocked_reg;
  wire gt0_rx_cdrlocked_reg_0;
  wire [0:0]gt0_rxsysclksel_in;
  wire gt0_rxuserrdy_in;
  wire gt0_rxusrclk_in;
  wire [0:0]gt0_txsysclksel_in;
  wire gt1_cpllreset_in;
  wire gt1_gtrxreset_in;
  wire \gt1_rx_cdrlock_counter_reg[0] ;
  wire \gt1_rx_cdrlock_counter_reg[7] ;
  wire gt1_rx_cdrlocked_reg;
  wire gt1_rx_cdrlocked_reg_0;
  wire gt1_rxuserrdy_in;
  wire gt2_cpllreset_in;
  wire gt2_gtrxreset_in;
  wire \gt2_rx_cdrlock_counter_reg[0] ;
  wire \gt2_rx_cdrlock_counter_reg[7] ;
  wire [0:0]\gt2_rx_cdrlock_counter_reg[9] ;
  wire gt2_rx_cdrlocked_reg;
  wire gt2_rx_cdrlocked_reg_0;
  wire gt2_rxuserrdy_in;
  wire gt3_cpllreset_in;
  wire gt3_gtrxreset_in;
  wire \gt3_rx_cdrlock_counter_reg[0] ;
  wire \gt3_rx_cdrlock_counter_reg[7] ;
  wire [0:0]\gt3_rx_cdrlock_counter_reg[9] ;
  wire gt3_rx_cdrlocked_reg;
  wire gt3_rx_cdrlocked_reg_0;
  wire gt3_rxuserrdy_in;
  wire gt_gtrxreset_t;
  wire gt_rx_cpllreset_t;
  wire gt_rxuserrdy_t;
  wire gt_tx_qpllreset_t;
  wire gtrxreset_i_i_1_n_0;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[5]_i_1__0_n_0 ;
  wire [5:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_i_2__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1__0_n_0 ;
  wire \mmcm_lock_count[3]_i_1__0_n_0 ;
  wire \mmcm_lock_count[4]_i_1__0_n_0 ;
  wire \mmcm_lock_count[5]_i_1__0_n_0 ;
  wire \mmcm_lock_count[6]_i_1__0_n_0 ;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[7]_i_3__0_n_0 ;
  wire \mmcm_lock_count[7]_i_4__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire [5:1]p_0_in;
  wire [1:0]p_0_in__0;
  wire p_23_in;
  wire pll_reset_asserted_i_1__0_n_0;
  wire pll_reset_asserted_i_2_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_i_8_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  (* RTL_KEEP = "yes" *) wire [3:0]rx_state;
  wire rx_state01_out;
  wire rx_state128_out;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_QPLLLOCK_n_1;
  wire sync_QPLLLOCK_n_2;
  wire sync_data_valid_n_1;
  wire sync_data_valid_n_2;
  wire sync_data_valid_n_3;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_8_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire time_tlock_max1_carry__0_i_1_n_0;
  wire time_tlock_max1_carry__0_i_2_n_0;
  wire time_tlock_max1_carry__0_i_3_n_0;
  wire time_tlock_max1_carry__0_i_4_n_0;
  wire time_tlock_max1_carry__0_i_5_n_0;
  wire time_tlock_max1_carry__0_i_6_n_0;
  wire time_tlock_max1_carry__0_n_0;
  wire time_tlock_max1_carry__0_n_1;
  wire time_tlock_max1_carry__0_n_2;
  wire time_tlock_max1_carry__0_n_3;
  wire time_tlock_max1_carry__1_i_1_n_0;
  wire time_tlock_max1_carry__1_i_2_n_0;
  wire time_tlock_max1_carry_i_1_n_0;
  wire time_tlock_max1_carry_i_2_n_0;
  wire time_tlock_max1_carry_i_3_n_0;
  wire time_tlock_max1_carry_i_4_n_0;
  wire time_tlock_max1_carry_i_5_n_0;
  wire time_tlock_max1_carry_i_6_n_0;
  wire time_tlock_max1_carry_i_7_n_0;
  wire time_tlock_max1_carry_n_0;
  wire time_tlock_max1_carry_n_1;
  wire time_tlock_max1_carry_n_2;
  wire time_tlock_max1_carry_n_3;
  wire time_tlock_max_i_1_n_0;
  wire \wait_bypass_count[0]_i_10__0_n_0 ;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire \wait_bypass_count[0]_i_8__0_n_0 ;
  wire \wait_bypass_count[0]_i_9__0_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire [0:0]wait_time_cnt0;
  wire wait_time_cnt0_0;
  wire \wait_time_cnt[1]_i_1__0_n_0 ;
  wire \wait_time_cnt[2]_i_1__0_n_0 ;
  wire \wait_time_cnt[3]_i_1__0_n_0 ;
  wire \wait_time_cnt[4]_i_1__0_n_0 ;
  wire \wait_time_cnt[5]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
  wire \wait_time_cnt[6]_i_3__0_n_0 ;
  wire \wait_time_cnt[6]_i_4__0_n_0 ;
  wire [6:0]wait_time_cnt_reg__0;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_time_tlock_max1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFF7FF00000400)) 
    CPLL_RESET_i_1__0
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(CPLL_RESET_i_2_n_0),
        .I4(QPLL_RESET_i_3_n_0),
        .I5(gt_rx_cpllreset_t),
        .O(CPLL_RESET_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    CPLL_RESET_i_2
       (.I0(gt0_txsysclksel_in),
        .I1(gt0_rxsysclksel_in),
        .O(CPLL_RESET_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(CPLL_RESET_i_1__0_n_0),
        .Q(gt_rx_cpllreset_t),
        .R(SOFT_RESET_RX_IN));
  LUT6 #(
    .INIT(64'h4E0AEE2A4E0ACE0A)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(time_out_2ms_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .I5(time_tlock_max),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111004015150040)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(rx_state[2]),
        .I5(rx_state128_out),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(time_tlock_max),
        .I1(reset_time_out_reg_n_0),
        .O(rx_state128_out));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(reset_time_out_i_8_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(init_wait_done_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[0] 
       (.C(SYSCLK_IN),
        .CE(sync_data_valid_n_5),
        .D(sync_data_valid_n_4),
        .Q(rx_state[0]),
        .R(SOFT_RESET_RX_IN));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[1] 
       (.C(SYSCLK_IN),
        .CE(sync_data_valid_n_5),
        .D(sync_data_valid_n_3),
        .Q(rx_state[1]),
        .R(SOFT_RESET_RX_IN));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[2] 
       (.C(SYSCLK_IN),
        .CE(sync_data_valid_n_5),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(SOFT_RESET_RX_IN));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[3] 
       (.C(SYSCLK_IN),
        .CE(sync_data_valid_n_5),
        .D(sync_data_valid_n_2),
        .Q(rx_state[3]),
        .R(SOFT_RESET_RX_IN));
  LUT2 #(
    .INIT(4'hE)) 
    GT0_QPLLRESET_OUT_INST_0
       (.I0(QPLL_RESET),
        .I1(gt_tx_qpllreset_t),
        .O(GT0_QPLLRESET_OUT));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000400)) 
    QPLL_RESET_i_1__0
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(p_23_in),
        .I4(QPLL_RESET_i_3_n_0),
        .I5(QPLL_RESET),
        .O(QPLL_RESET_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    QPLL_RESET_i_2__0
       (.I0(gt0_rxsysclksel_in),
        .I1(gt0_txsysclksel_in),
        .O(p_23_in));
  LUT2 #(
    .INIT(4'hE)) 
    QPLL_RESET_i_3
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .O(QPLL_RESET_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    QPLL_RESET_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(QPLL_RESET_i_1__0_n_0),
        .Q(QPLL_RESET),
        .R(SOFT_RESET_RX_IN));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(gt_rxuserrdy_t),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt_rxuserrdy_t),
        .R(SOFT_RESET_RX_IN));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(SOFT_RESET_RX_IN));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h000000AE)) 
    gt0_rx_cdrlocked_i_1
       (.I0(gt0_rx_cdrlocked_reg_0),
        .I1(\gt0_rx_cdrlock_counter_reg[0] ),
        .I2(\gt0_rx_cdrlock_counter_reg[7] ),
        .I3(gt_gtrxreset_t),
        .I4(gt0_gtrxreset_in),
        .O(gt0_rx_cdrlocked_reg));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h000000AE)) 
    gt1_rx_cdrlocked_i_1
       (.I0(gt1_rx_cdrlocked_reg_0),
        .I1(\gt1_rx_cdrlock_counter_reg[0] ),
        .I2(\gt1_rx_cdrlock_counter_reg[7] ),
        .I3(gt_gtrxreset_t),
        .I4(gt1_gtrxreset_in),
        .O(gt1_rx_cdrlocked_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h000000AE)) 
    gt2_rx_cdrlocked_i_1
       (.I0(gt2_rx_cdrlocked_reg_0),
        .I1(\gt2_rx_cdrlock_counter_reg[0] ),
        .I2(\gt2_rx_cdrlock_counter_reg[7] ),
        .I3(gt_gtrxreset_t),
        .I4(gt2_gtrxreset_in),
        .O(gt2_rx_cdrlocked_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000000AE)) 
    gt3_rx_cdrlocked_i_1
       (.I0(gt3_rx_cdrlocked_reg_0),
        .I1(\gt3_rx_cdrlock_counter_reg[0] ),
        .I2(\gt3_rx_cdrlock_counter_reg[7] ),
        .I3(gt_gtrxreset_t),
        .I4(gt3_gtrxreset_in),
        .O(gt3_rx_cdrlocked_reg));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(gt_gtrxreset_t),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(gt_gtrxreset_t),
        .R(SOFT_RESET_RX_IN));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    gtxe2_i_i_1
       (.I0(gt_rx_cpllreset_t),
        .I1(CPLL_RESET),
        .I2(UNCONN_IN),
        .O(gt2_cpllreset_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    gtxe2_i_i_1__0
       (.I0(gt_rx_cpllreset_t),
        .I1(CPLL_RESET),
        .I2(UNCONN_IN_0),
        .O(gt0_cpllreset_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    gtxe2_i_i_1__1
       (.I0(gt_rx_cpllreset_t),
        .I1(CPLL_RESET),
        .I2(UNCONN_IN_1),
        .O(gt1_cpllreset_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    gtxe2_i_i_1__2
       (.I0(gt_rx_cpllreset_t),
        .I1(CPLL_RESET),
        .I2(UNCONN_IN_2),
        .O(gt3_cpllreset_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_2
       (.I0(gt1_gtrxreset_in),
        .I1(gt_gtrxreset_t),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_2__0
       (.I0(gt2_gtrxreset_in),
        .I1(gt_gtrxreset_t),
        .O(\gt2_rx_cdrlock_counter_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_2__1
       (.I0(gt3_gtrxreset_in),
        .I1(gt_gtrxreset_t),
        .O(\gt3_rx_cdrlock_counter_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_2__2
       (.I0(gt0_gtrxreset_in),
        .I1(gt_gtrxreset_t),
        .O(\gt0_rx_cdrlock_counter_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_4
       (.I0(UNCONN_IN_3),
        .I1(gt_rxuserrdy_t),
        .O(gt0_rxuserrdy_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_4__0
       (.I0(UNCONN_IN_4),
        .I1(gt_rxuserrdy_t),
        .O(gt1_rxuserrdy_in));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_4__1
       (.I0(gt_rxuserrdy_t),
        .I1(UNCONN_IN_5),
        .O(gt2_rxuserrdy_in));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_4__2
       (.I0(gt_rxuserrdy_t),
        .I1(UNCONN_IN_6),
        .O(gt3_rxuserrdy_in));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[5]),
        .O(\init_wait_count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_2__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[5]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(SOFT_RESET_RX_IN),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(SOFT_RESET_RX_IN),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(SOFT_RESET_RX_IN),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(SOFT_RESET_RX_IN),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(SOFT_RESET_RX_IN),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(SOFT_RESET_RX_IN),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    init_wait_done_i_1__0
       (.I0(init_wait_done_i_2__0_n_0),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[5]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .O(init_wait_done_i_2__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .CLR(SOFT_RESET_RX_IN),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(\mmcm_lock_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(\mmcm_lock_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\mmcm_lock_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .O(\mmcm_lock_count[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[7]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[2]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[3]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[4]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[5]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[6]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[7]_i_3__0_n_0 ),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFC0001)) 
    pll_reset_asserted_i_1__0
       (.I0(rx_state[1]),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .I3(pll_reset_asserted_i_2_n_0),
        .I4(pll_reset_asserted_reg_n_0),
        .O(pll_reset_asserted_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h00EBFFFF)) 
    pll_reset_asserted_i_2
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt0_rxsysclksel_in),
        .I2(gt0_txsysclksel_in),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(pll_reset_asserted_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1__0_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(SOFT_RESET_RX_IN));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    reset_time_out_i_2__0
       (.I0(gt3_rx_cdrlocked_reg_0),
        .I1(gt0_rx_cdrlocked_reg_0),
        .I2(gt2_rx_cdrlocked_reg_0),
        .I3(gt1_rx_cdrlocked_reg_0),
        .I4(rx_state[0]),
        .I5(rx_state[3]),
        .O(reset_time_out_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h44400040)) 
    reset_time_out_i_4
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(mmcm_lock_reclocked),
        .I3(rx_state[1]),
        .I4(rxresetdone_s3),
        .O(reset_time_out_i_4_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    reset_time_out_i_8
       (.I0(gt3_rx_cdrlocked_reg_0),
        .I1(gt0_rx_cdrlocked_reg_0),
        .I2(gt2_rx_cdrlocked_reg_0),
        .I3(gt1_rx_cdrlocked_reg_0),
        .I4(rx_state[3]),
        .O(reset_time_out_i_8_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(sync_QPLLLOCK_n_2),
        .Q(reset_time_out_reg_n_0),
        .S(SOFT_RESET_RX_IN));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(SOFT_RESET_RX_IN));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(sync_data_valid_n_1),
        .Q(GT_RX_FSM_RESET_DONE_OUT),
        .R(SOFT_RESET_RX_IN));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_16 sync_CPLLLOCK
       (.SYSCLK_IN(SYSCLK_IN),
        .data_out(cplllock_sync));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_17 sync_QPLLLOCK
       (.\FSM_sequential_rx_state_reg[0] (sync_QPLLLOCK_n_1),
        .\FSM_sequential_rx_state_reg[3] (reset_time_out_i_4_n_0),
        .GT0_QPLLLOCK_IN(GT0_QPLLLOCK_IN),
        .SYSCLK_IN(SYSCLK_IN),
        .data_out(cplllock_sync),
        .data_sync_reg6_0(data_valid_sync),
        .gt0_rxsysclksel_in(gt0_rxsysclksel_in),
        .gt0_txsysclksel_in(gt0_txsysclksel_in),
        .gt3_rx_cdrlocked_reg(reset_time_out_i_2__0_n_0),
        .gt3_rx_cdrlocked_reg_0(reset_time_out_i_8_n_0),
        .out(rx_state),
        .pll_reset_asserted_reg(pll_reset_asserted_reg_n_0),
        .reset_time_out_reg(sync_QPLLLOCK_n_2),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .rx_state01_out(rx_state01_out),
        .rxresetdone_s3(rxresetdone_s3),
        .time_out_2ms_reg(time_out_2ms_reg_n_0));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_18 sync_RXRESETDONE
       (.SYSCLK_IN(SYSCLK_IN),
        .data_in(data_in),
        .data_out(rxresetdone_s2));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_19 sync_data_valid
       (.D({sync_data_valid_n_2,sync_data_valid_n_3,sync_data_valid_n_4}),
        .DONT_RESET_ON_DATA_ERROR_IN(DONT_RESET_ON_DATA_ERROR_IN),
        .E(sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[2] (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[2]_0 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .GT0_DATA_VALID_IN(GT0_DATA_VALID_IN),
        .GT1_DATA_VALID_IN(GT1_DATA_VALID_IN),
        .GT2_DATA_VALID_IN(GT2_DATA_VALID_IN),
        .GT3_DATA_VALID_IN(GT3_DATA_VALID_IN),
        .GT_RX_FSM_RESET_DONE_OUT(GT_RX_FSM_RESET_DONE_OUT),
        .Q(wait_time_cnt_reg__0[6]),
        .SYSCLK_IN(SYSCLK_IN),
        .data_out(data_valid_sync),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(rx_state),
        .reset_time_out_reg(reset_time_out_reg_n_0),
        .rx_fsm_reset_done_int_reg(sync_data_valid_n_1),
        .rx_state01_out(rx_state01_out),
        .rx_state128_out(rx_state128_out),
        .time_out_100us_reg(time_out_100us_reg_n_0),
        .time_out_1us_reg(time_out_1us_reg_n_0),
        .time_out_2ms_reg(sync_QPLLLOCK_n_1),
        .time_out_2ms_reg_0(time_out_2ms_reg_n_0),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3),
        .\wait_time_cnt_reg[4] (\wait_time_cnt[6]_i_4__0_n_0 ));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_20 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .SYSCLK_IN(SYSCLK_IN),
        .\mmcm_lock_count_reg[4] (\mmcm_lock_count[7]_i_4__0_n_0 ),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_21 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .gt0_rxusrclk_in(gt0_rxusrclk_in));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_22 sync_rx_fsm_reset_done_int
       (.GT_RX_FSM_RESET_DONE_OUT(GT_RX_FSM_RESET_DONE_OUT),
        .data_out(rx_fsm_reset_done_int_s2),
        .gt0_rxusrclk_in(gt0_rxusrclk_in));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_23 sync_time_out_wait_bypass
       (.SYSCLK_IN(SYSCLK_IN),
        .data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2));
  LUT4 #(
    .INIT(16'hFF02)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(\time_out_counter[0]_i_3_n_0 ),
        .I3(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    time_out_100us_i_2
       (.I0(time_out_100us_i_4_n_0),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[6]),
        .O(time_out_100us_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[7]),
        .O(time_out_100us_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_out_100us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    time_out_1us_i_1
       (.I0(\time_out_counter[0]_i_4_n_0 ),
        .I1(time_out_1us_i_2_n_0),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[10]),
        .O(time_out_1us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    time_out_2ms_i_1
       (.I0(\time_out_counter[0]_i_4_n_0 ),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[11]),
        .I4(\time_out_counter[0]_i_3_n_0 ),
        .I5(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \time_out_counter[0]_i_1 
       (.I0(\time_out_counter[0]_i_3_n_0 ),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[11]),
        .I4(\time_out_counter[0]_i_4_n_0 ),
        .O(time_out_counter));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[8]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_100us_i_3_n_0),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__0
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1__0_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  CARRY4 time_tlock_max1_carry
       (.CI(1'b0),
        .CO({time_tlock_max1_carry_n_0,time_tlock_max1_carry_n_1,time_tlock_max1_carry_n_2,time_tlock_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry_i_1_n_0,time_out_counter_reg[5],time_tlock_max1_carry_i_2_n_0,time_tlock_max1_carry_i_3_n_0}),
        .O(NLW_time_tlock_max1_carry_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry_i_4_n_0,time_tlock_max1_carry_i_5_n_0,time_tlock_max1_carry_i_6_n_0,time_tlock_max1_carry_i_7_n_0}));
  CARRY4 time_tlock_max1_carry__0
       (.CI(time_tlock_max1_carry_n_0),
        .CO({time_tlock_max1_carry__0_n_0,time_tlock_max1_carry__0_n_1,time_tlock_max1_carry__0_n_2,time_tlock_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry__0_i_1_n_0,time_tlock_max1_carry__0_i_2_n_0,time_out_counter_reg[11],1'b0}),
        .O(NLW_time_tlock_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry__0_i_3_n_0,time_tlock_max1_carry__0_i_4_n_0,time_tlock_max1_carry__0_i_5_n_0,time_tlock_max1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_1
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(time_tlock_max1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_2
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .O(time_tlock_max1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_4
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_5
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_6
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max1_carry__0_i_6_n_0));
  CARRY4 time_tlock_max1_carry__1
       (.CI(time_tlock_max1_carry__0_n_0),
        .CO({NLW_time_tlock_max1_carry__1_CO_UNCONNECTED[3:1],time_tlock_max1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,time_tlock_max1_carry__1_i_1_n_0}),
        .O(NLW_time_tlock_max1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,time_tlock_max1_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_1
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_tlock_max1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_tlock_max1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_1
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_tlock_max1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_2
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_3
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(time_tlock_max1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(time_tlock_max1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_6
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_tlock_max1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_7
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_tlock_max1_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    time_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_tlock_max1),
        .I2(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \wait_bypass_count[0]_i_10__0 
       (.I0(wait_bypass_count_reg[2]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[4]),
        .I3(wait_bypass_count_reg[10]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[11]),
        .O(\wait_bypass_count[0]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(\wait_bypass_count[0]_i_9__0_n_0 ),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[0]),
        .I4(\wait_bypass_count[0]_i_10__0_n_0 ),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_8__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wait_bypass_count[0]_i_9__0 
       (.I0(wait_bypass_count_reg[3]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[7]),
        .O(\wait_bypass_count[0]_i_9__0_n_0 ));
  FDRE \wait_bypass_count_reg[0] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_8__0_n_0 }));
  FDRE \wait_bypass_count_reg[10] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[11] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[12] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE \wait_bypass_count_reg[1] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[2] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[3] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[4] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE \wait_bypass_count_reg[5] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[6] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[7] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE \wait_bypass_count_reg[8] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE \wait_bypass_count_reg[9] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .O(\wait_time_cnt[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .O(\wait_time_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg__0[2]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[3]),
        .O(\wait_time_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg__0[3]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[2]),
        .I4(wait_time_cnt_reg__0[4]),
        .O(\wait_time_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .I4(wait_time_cnt_reg__0[3]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\wait_time_cnt[5]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[6]_i_1__0 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(wait_time_cnt0_0));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2__0 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\wait_time_cnt[6]_i_4__0_n_0 ),
        .O(\wait_time_cnt[6]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3__0 
       (.I0(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I1(wait_time_cnt_reg__0[6]),
        .O(\wait_time_cnt[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .I4(wait_time_cnt_reg__0[3]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\wait_time_cnt[6]_i_4__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0),
        .Q(wait_time_cnt_reg__0[0]),
        .R(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[1] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[1]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg__0[1]),
        .R(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[2] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[2]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg__0[2]),
        .S(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[3] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[3]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg__0[3]),
        .R(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[4] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[4]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg__0[4]),
        .R(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[5] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[5]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg__0[5]),
        .S(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[6] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[6]_i_3__0_n_0 ),
        .Q(wait_time_cnt_reg__0[6]),
        .S(wait_time_cnt0_0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_TX_STARTUP_FSM" *) 
module jesd204_phy_1_jesd204_phy_1_gt_TX_STARTUP_FSM
   (gt_tx_qpllreset_t,
    CPLL_RESET,
    GT_TX_FSM_RESET_DONE_OUT,
    gt0_gttxreset_in,
    gt1_gttxreset_in,
    gt2_gttxreset_in,
    gt3_gttxreset_in,
    gt0_txuserrdy_in,
    gt1_txuserrdy_in,
    gt2_txuserrdy_in,
    gt3_txuserrdy_in,
    SYSCLK_IN,
    gt0_txusrclk_in,
    SOFT_RESET_TX_IN,
    gt0_txsysclksel_in,
    data_in,
    GT0_QPLLLOCK_IN,
    data_sync_reg4,
    data_sync_reg4_0,
    data_sync_reg4_1,
    data_sync_reg4_2,
    UNCONN_IN,
    UNCONN_IN_0,
    UNCONN_IN_1,
    UNCONN_IN_2);
  output gt_tx_qpllreset_t;
  output CPLL_RESET;
  output GT_TX_FSM_RESET_DONE_OUT;
  output gt0_gttxreset_in;
  output gt1_gttxreset_in;
  output gt2_gttxreset_in;
  output gt3_gttxreset_in;
  output gt0_txuserrdy_in;
  output gt1_txuserrdy_in;
  output gt2_txuserrdy_in;
  output gt3_txuserrdy_in;
  input SYSCLK_IN;
  input gt0_txusrclk_in;
  input SOFT_RESET_TX_IN;
  input [0:0]gt0_txsysclksel_in;
  input data_in;
  input GT0_QPLLLOCK_IN;
  input data_sync_reg4;
  input data_sync_reg4_0;
  input data_sync_reg4_1;
  input data_sync_reg4_2;
  input UNCONN_IN;
  input UNCONN_IN_0;
  input UNCONN_IN_1;
  input UNCONN_IN_2;

  wire CPLL_RESET;
  wire CPLL_RESET_i_1_n_0;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire GT0_QPLLLOCK_IN;
  wire GT_TX_FSM_RESET_DONE_OUT;
  wire QPLL_RESET_i_1_n_0;
  wire QPLL_RESET_i_2_n_0;
  wire SOFT_RESET_TX_IN;
  wire SYSCLK_IN;
  wire TXUSERRDY_i_1_n_0;
  wire UNCONN_IN;
  wire UNCONN_IN_0;
  wire UNCONN_IN_1;
  wire UNCONN_IN_2;
  wire clear;
  wire cplllock_sync;
  wire data_in;
  wire data_out;
  wire data_sync_reg4;
  wire data_sync_reg4_0;
  wire data_sync_reg4_1;
  wire data_sync_reg4_2;
  wire gt0_gttxreset_in;
  wire [0:0]gt0_txsysclksel_in;
  wire gt0_txuserrdy_in;
  wire gt0_txusrclk_in;
  wire gt1_gttxreset_in;
  wire gt1_txuserrdy_in;
  wire gt2_gttxreset_in;
  wire gt2_txuserrdy_in;
  wire gt3_gttxreset_in;
  wire gt3_txuserrdy_in;
  wire gt_gttxreset_t;
  wire gt_tx_qpllreset_t;
  wire gt_txuserrdy_t;
  wire gttxreset_i_i_1_n_0;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[5]_i_1_n_0 ;
  wire [5:0]init_wait_count_reg__0;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_i_2_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1_n_0 ;
  wire \mmcm_lock_count[3]_i_1_n_0 ;
  wire \mmcm_lock_count[4]_i_1_n_0 ;
  wire \mmcm_lock_count[5]_i_1_n_0 ;
  wire \mmcm_lock_count[6]_i_1_n_0 ;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[7]_i_3_n_0 ;
  wire \mmcm_lock_count[7]_i_4_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire [5:1]p_0_in;
  wire [1:0]p_0_in__0;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire qplllock_sync;
  wire reset_time_out;
  wire reset_time_out_i_5_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3;
  wire sync_CPLLLOCK_n_1;
  wire sync_QPLLLOCK_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire time_out_2ms_i_1__0_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_10_n_0 ;
  wire \time_out_counter[0]_i_11_n_0 ;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire \time_out_counter[0]_i_9_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1__0_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  (* RTL_KEEP = "yes" *) wire [3:0]tx_state;
  wire tx_state111_out;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_bypass_count[0]_i_10_n_0 ;
  wire \wait_bypass_count[0]_i_11_n_0 ;
  wire \wait_bypass_count[0]_i_12_n_0 ;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire \wait_bypass_count[0]_i_8_n_0 ;
  wire \wait_bypass_count[0]_i_9_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire [0:0]wait_time_cnt0;
  wire wait_time_cnt0_0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[2]_i_1_n_0 ;
  wire \wait_time_cnt[3]_i_1_n_0 ;
  wire \wait_time_cnt[4]_i_1_n_0 ;
  wire \wait_time_cnt[5]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2_n_0 ;
  wire \wait_time_cnt[6]_i_3_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg__0;
  wire wait_time_done;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    CPLL_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(gt0_txsysclksel_in),
        .I4(QPLL_RESET_i_2_n_0),
        .I5(CPLL_RESET),
        .O(CPLL_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(CPLL_RESET_i_1_n_0),
        .Q(CPLL_RESET),
        .R(SOFT_RESET_TX_IN));
  LUT6 #(
    .INIT(64'h2222220222220A0A)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3B33BBBBBBBBBBBB)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(tx_state[0]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .I4(tx_state[1]),
        .I5(tx_state[2]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11110444)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state111_out),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_tx_state[1]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out),
        .I2(time_tlock_max_reg_n_0),
        .O(tx_state111_out));
  LUT6 #(
    .INIT(64'h1111004055550040)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF02)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[1]),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_sequential_tx_state[3]_i_12 
       (.I0(reset_time_out),
        .I1(time_out_500us_reg_n_0),
        .I2(txresetdone_s3),
        .O(\FSM_sequential_tx_state[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00A00B00)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I1(time_out_wait_bypass_s3),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg__0[6]),
        .O(wait_time_done));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(tx_state[0]),
        .I1(reset_time_out),
        .I2(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(SYSCLK_IN),
        .CE(sync_CPLLLOCK_n_1),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(SOFT_RESET_TX_IN));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(SYSCLK_IN),
        .CE(sync_CPLLLOCK_n_1),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]),
        .R(SOFT_RESET_TX_IN));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(SYSCLK_IN),
        .CE(sync_CPLLLOCK_n_1),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(SOFT_RESET_TX_IN));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[3] 
       (.C(SYSCLK_IN),
        .CE(sync_CPLLLOCK_n_1),
        .D(\FSM_sequential_tx_state[3]_i_2_n_0 ),
        .Q(tx_state[3]),
        .R(SOFT_RESET_TX_IN));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000400)) 
    QPLL_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(gt0_txsysclksel_in),
        .I4(QPLL_RESET_i_2_n_0),
        .I5(gt_tx_qpllreset_t),
        .O(QPLL_RESET_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    QPLL_RESET_i_2
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .O(QPLL_RESET_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    QPLL_RESET_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(QPLL_RESET_i_1_n_0),
        .Q(gt_tx_qpllreset_t),
        .R(SOFT_RESET_TX_IN));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt_txuserrdy_t),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt_txuserrdy_t),
        .R(SOFT_RESET_TX_IN));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gttxreset_i_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .I4(gt_gttxreset_t),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt_gttxreset_t),
        .R(SOFT_RESET_TX_IN));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_3
       (.I0(data_sync_reg4),
        .I1(gt_gttxreset_t),
        .O(gt0_gttxreset_in));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_3__0
       (.I0(gt_gttxreset_t),
        .I1(data_sync_reg4_0),
        .O(gt1_gttxreset_in));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_3__1
       (.I0(data_sync_reg4_1),
        .I1(gt_gttxreset_t),
        .O(gt2_gttxreset_in));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_3__2
       (.I0(gt_gttxreset_t),
        .I1(data_sync_reg4_2),
        .O(gt3_gttxreset_in));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_5
       (.I0(UNCONN_IN),
        .I1(gt_txuserrdy_t),
        .O(gt0_txuserrdy_in));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_5__0
       (.I0(gt_txuserrdy_t),
        .I1(UNCONN_IN_0),
        .O(gt1_txuserrdy_in));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_5__1
       (.I0(UNCONN_IN_1),
        .I1(gt_txuserrdy_t),
        .O(gt2_txuserrdy_in));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_5__2
       (.I0(gt_txuserrdy_t),
        .I1(UNCONN_IN_2),
        .O(gt3_txuserrdy_in));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[5]),
        .O(\init_wait_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_2 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[5]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(SOFT_RESET_TX_IN),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(SOFT_RESET_TX_IN),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(SOFT_RESET_TX_IN),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(SOFT_RESET_TX_IN),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(SOFT_RESET_TX_IN),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(SYSCLK_IN),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(SOFT_RESET_TX_IN),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    init_wait_done_i_1
       (.I0(init_wait_done_i_2_n_0),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[5]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[4]),
        .O(init_wait_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .CLR(SOFT_RESET_TX_IN),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(\mmcm_lock_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(\mmcm_lock_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\mmcm_lock_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(\mmcm_lock_count[7]_i_4_n_0 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .O(\mmcm_lock_count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(\mmcm_lock_count[7]_i_4_n_0 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\mmcm_lock_count[7]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[7]_i_4 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\mmcm_lock_count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[2]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[3]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[4]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[5]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[6]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(SYSCLK_IN),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[7]_i_3_n_0 ),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEF00FF10)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(pll_reset_asserted_reg_n_0),
        .I4(tx_state[1]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(SOFT_RESET_TX_IN));
  LUT4 #(
    .INIT(16'hB833)) 
    reset_time_out_i_5
       (.I0(txresetdone_s3),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[2]),
        .O(reset_time_out_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(sync_QPLLLOCK_n_1),
        .Q(reset_time_out),
        .R(SOFT_RESET_TX_IN));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(SOFT_RESET_TX_IN));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block sync_CPLLLOCK
       (.E(sync_CPLLLOCK_n_1),
        .\FSM_sequential_tx_state_reg[1] (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .SYSCLK_IN(SYSCLK_IN),
        .data_out(cplllock_sync),
        .data_sync_reg6_0(qplllock_sync),
        .gt0_txsysclksel_in(gt0_txsysclksel_in),
        .init_wait_done_reg(init_wait_done_reg_n_0),
        .out(tx_state),
        .pll_reset_asserted_reg(pll_reset_asserted_reg_n_0),
        .reset_time_out_reg(\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .reset_time_out_reg_0(\FSM_sequential_tx_state[3]_i_12_n_0 ),
        .time_out_2ms_reg(time_out_2ms_reg_n_0),
        .wait_time_done(wait_time_done));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_10 sync_QPLLLOCK
       (.GT0_QPLLLOCK_IN(GT0_QPLLLOCK_IN),
        .SYSCLK_IN(SYSCLK_IN),
        .data_out(qplllock_sync),
        .data_sync_reg6_0(cplllock_sync),
        .gt0_txsysclksel_in(gt0_txsysclksel_in),
        .init_wait_done_reg(init_wait_done_reg_n_0),
        .out(tx_state),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_QPLLLOCK_n_1),
        .txresetdone_s3_reg(reset_time_out_i_5_n_0));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_11 sync_TXRESETDONE
       (.SYSCLK_IN(SYSCLK_IN),
        .data_in(data_in),
        .data_out(txresetdone_s2));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_12 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .SYSCLK_IN(SYSCLK_IN),
        .\mmcm_lock_count_reg[4] (\mmcm_lock_count[7]_i_4_n_0 ),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_13 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .gt0_txusrclk_in(gt0_txusrclk_in));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_14 sync_time_out_wait_bypass
       (.SYSCLK_IN(SYSCLK_IN),
        .data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2));
  jesd204_phy_1_jesd204_phy_1_gt_sync_block_15 sync_tx_fsm_reset_done_int
       (.GT_TX_FSM_RESET_DONE_OUT(GT_TX_FSM_RESET_DONE_OUT),
        .data_out(tx_fsm_reset_done_int_s2),
        .gt0_txusrclk_in(gt0_txusrclk_in));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1__0
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2_n_0),
        .I2(\time_out_counter[0]_i_3__0_n_0 ),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[4]),
        .I5(\time_out_counter[0]_i_4__0_n_0 ),
        .O(time_out_2ms_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_out_2ms_i_1__0_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[9]),
        .I4(\time_out_counter[0]_i_3__0_n_0 ),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \time_out_counter[0]_i_10 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[12]),
        .O(\time_out_counter[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_11 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(\time_out_counter[0]_i_3__0_n_0 ),
        .I1(time_out_counter_reg[11]),
        .I2(\time_out_counter[0]_i_4__0_n_0 ),
        .I3(time_out_counter_reg[9]),
        .I4(\time_out_counter[0]_i_5_n_0 ),
        .I5(time_out_counter_reg[4]),
        .O(time_out_counter));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[13]),
        .I2(\time_out_counter[0]_i_10_n_0 ),
        .I3(\time_out_counter[0]_i_11_n_0 ),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[10]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(SYSCLK_IN),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(\wait_bypass_count[0]_i_4_n_0 ),
        .I2(tx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    time_tlock_max_i_1__0
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_out_counter_reg[4]),
        .I3(\time_out_counter[0]_i_4__0_n_0 ),
        .I4(time_tlock_max_i_3_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[1]),
        .I4(\time_out_counter[0]_i_10_n_0 ),
        .O(time_tlock_max_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_tlock_max_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(time_tlock_max_i_1__0_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(GT_TX_FSM_RESET_DONE_OUT),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(GT_TX_FSM_RESET_DONE_OUT),
        .R(SOFT_RESET_TX_IN));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \wait_bypass_count[0]_i_10 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[16]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wait_bypass_count[0]_i_11 
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[14]),
        .I3(wait_bypass_count_reg[13]),
        .O(\wait_bypass_count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \wait_bypass_count[0]_i_12 
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[9]),
        .O(\wait_bypass_count[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(\wait_bypass_count[0]_i_4_n_0 ),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_bypass_count[0]_i_4 
       (.I0(\wait_bypass_count[0]_i_9_n_0 ),
        .I1(\wait_bypass_count[0]_i_10_n_0 ),
        .I2(\wait_bypass_count[0]_i_11_n_0 ),
        .I3(\wait_bypass_count[0]_i_12_n_0 ),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[5]),
        .O(\wait_bypass_count[0]_i_9_n_0 ));
  FDRE \wait_bypass_count_reg[0] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_8_n_0 }));
  FDRE \wait_bypass_count_reg[10] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE \wait_bypass_count_reg[11] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE \wait_bypass_count_reg[12] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE \wait_bypass_count_reg[13] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE \wait_bypass_count_reg[14] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE \wait_bypass_count_reg[15] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE \wait_bypass_count_reg[16] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE \wait_bypass_count_reg[1] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE \wait_bypass_count_reg[2] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE \wait_bypass_count_reg[3] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE \wait_bypass_count_reg[4] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE \wait_bypass_count_reg[5] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE \wait_bypass_count_reg[6] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE \wait_bypass_count_reg[7] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE \wait_bypass_count_reg[8] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE \wait_bypass_count_reg[9] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .O(\wait_time_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .O(\wait_time_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg__0[2]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[3]),
        .O(\wait_time_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg__0[3]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[2]),
        .I4(wait_time_cnt_reg__0[4]),
        .O(\wait_time_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .I4(wait_time_cnt_reg__0[3]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\wait_time_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h004C)) 
    \wait_time_cnt[6]_i_1 
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .O(wait_time_cnt0_0));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\wait_time_cnt[6]_i_4_n_0 ),
        .O(\wait_time_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3 
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg__0[6]),
        .O(\wait_time_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .I4(wait_time_cnt_reg__0[3]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\wait_time_cnt[6]_i_4_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(wait_time_cnt0),
        .Q(wait_time_cnt_reg__0[0]),
        .R(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[1] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[1]_i_1_n_0 ),
        .Q(wait_time_cnt_reg__0[1]),
        .R(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[2] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[2]_i_1_n_0 ),
        .Q(wait_time_cnt_reg__0[2]),
        .S(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[3] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[3]_i_1_n_0 ),
        .Q(wait_time_cnt_reg__0[3]),
        .R(wait_time_cnt0_0));
  FDRE \wait_time_cnt_reg[4] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[4]_i_1_n_0 ),
        .Q(wait_time_cnt_reg__0[4]),
        .R(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[5] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[5]_i_1_n_0 ),
        .Q(wait_time_cnt_reg__0[5]),
        .S(wait_time_cnt0_0));
  FDSE \wait_time_cnt_reg[6] 
       (.C(SYSCLK_IN),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[6]_i_3_n_0 ),
        .Q(wait_time_cnt_reg__0[6]),
        .S(wait_time_cnt0_0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_common_wrapper" *) 
module jesd204_phy_1_jesd204_phy_1_gt_common_wrapper
   (common0_qpll_lock_out,
    common0_qpll_clk_out,
    common0_qpll_refclk_out,
    qpll_refclk,
    drpclk,
    qpll_reset_out);
  output common0_qpll_lock_out;
  output common0_qpll_clk_out;
  output common0_qpll_refclk_out;
  input qpll_refclk;
  input drpclk;
  input qpll_reset_out;

  wire common0_qpll_clk_out;
  wire common0_qpll_lock_out;
  wire common0_qpll_refclk_out;
  wire drpclk;
  wire qpll_refclk;
  wire qpll_reset_out;

  jesd204_phy_1_jesd204_phy_1_gtwizard_0_common jesd204_0_common
       (.common0_qpll_clk_out(common0_qpll_clk_out),
        .common0_qpll_lock_out(common0_qpll_lock_out),
        .common0_qpll_refclk_out(common0_qpll_refclk_out),
        .drpclk(drpclk),
        .qpll_refclk(qpll_refclk),
        .qpll_reset_out(qpll_reset_out));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) (* EXAMPLE_SIM_GTRESET_SPEEDUP = "TRUE" *) 
(* EXAMPLE_USE_CHIPSCOPE = "1" *) (* ORIG_REF_NAME = "jesd204_phy_1_gt_init" *) (* STABLE_CLOCK_PERIOD = "10" *) 
module jesd204_phy_1_jesd204_phy_1_gt_init
   (SYSCLK_IN,
    SOFT_RESET_TX_IN,
    SOFT_RESET_RX_IN,
    DONT_RESET_ON_DATA_ERROR_IN,
    GT_TX_FSM_RESET_DONE_OUT,
    GT_RX_FSM_RESET_DONE_OUT,
    GT0_DATA_VALID_IN,
    GT1_DATA_VALID_IN,
    GT2_DATA_VALID_IN,
    GT3_DATA_VALID_IN,
    gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cplllockdetclk_in,
    gt0_cpllpd_in,
    gt0_cpllreset_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_rxsysclksel_in,
    gt0_txsysclksel_in,
    gt0_dmonitorout_out,
    gt0_loopback_in,
    gt0_rxpd_in,
    gt0_txpd_in,
    gt0_eyescanreset_in,
    gt0_rxuserrdy_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxcdrhold_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_rxdata_out,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_rxprbscntreset_in,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_gtxrxp_in,
    gt0_gtxrxn_in,
    gt0_rxbufreset_in,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxmcommaalignen_in,
    gt0_rxpcommaalignen_in,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_gtrxreset_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxlpmen_in,
    gt0_rxpolarity_in,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxresetdone_out,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_gttxreset_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_txprbsforceerr_in,
    gt0_txbufstatus_out,
    gt0_txdiffctrl_in,
    gt0_txinhibit_in,
    gt0_txdata_in,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txcharisk_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txresetdone_out,
    gt0_txpolarity_in,
    gt0_txprbssel_in,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cplllockdetclk_in,
    gt1_cpllpd_in,
    gt1_cpllreset_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_drpaddr_in,
    gt1_drpclk_in,
    gt1_drpdi_in,
    gt1_drpdo_out,
    gt1_drpen_in,
    gt1_drprdy_out,
    gt1_drpwe_in,
    gt1_rxsysclksel_in,
    gt1_txsysclksel_in,
    gt1_dmonitorout_out,
    gt1_loopback_in,
    gt1_rxpd_in,
    gt1_txpd_in,
    gt1_eyescanreset_in,
    gt1_rxuserrdy_in,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_rxcdrhold_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_rxdata_out,
    gt1_rxprbserr_out,
    gt1_rxprbssel_in,
    gt1_rxprbscntreset_in,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    gt1_gtxrxp_in,
    gt1_gtxrxn_in,
    gt1_rxbufreset_in,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_rxmcommaalignen_in,
    gt1_rxpcommaalignen_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_gtrxreset_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxlpmen_in,
    gt1_rxpolarity_in,
    gt1_rxchariscomma_out,
    gt1_rxcharisk_out,
    gt1_rxresetdone_out,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_gttxreset_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_txprbsforceerr_in,
    gt1_txbufstatus_out,
    gt1_txdiffctrl_in,
    gt1_txinhibit_in,
    gt1_txdata_in,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txcharisk_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txresetdone_out,
    gt1_txpolarity_in,
    gt1_txprbssel_in,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cplllockdetclk_in,
    gt2_cpllpd_in,
    gt2_cpllreset_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_drpaddr_in,
    gt2_drpclk_in,
    gt2_drpdi_in,
    gt2_drpdo_out,
    gt2_drpen_in,
    gt2_drprdy_out,
    gt2_drpwe_in,
    gt2_rxsysclksel_in,
    gt2_txsysclksel_in,
    gt2_dmonitorout_out,
    gt2_loopback_in,
    gt2_rxpd_in,
    gt2_txpd_in,
    gt2_eyescanreset_in,
    gt2_rxuserrdy_in,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_rxcdrhold_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_rxdata_out,
    gt2_rxprbserr_out,
    gt2_rxprbssel_in,
    gt2_rxprbscntreset_in,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt2_gtxrxp_in,
    gt2_gtxrxn_in,
    gt2_rxbufreset_in,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_rxmcommaalignen_in,
    gt2_rxpcommaalignen_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_gtrxreset_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxlpmen_in,
    gt2_rxpolarity_in,
    gt2_rxchariscomma_out,
    gt2_rxcharisk_out,
    gt2_rxresetdone_out,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_gttxreset_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_txprbsforceerr_in,
    gt2_txbufstatus_out,
    gt2_txdiffctrl_in,
    gt2_txinhibit_in,
    gt2_txdata_in,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txcharisk_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txresetdone_out,
    gt2_txpolarity_in,
    gt2_txprbssel_in,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cplllockdetclk_in,
    gt3_cpllpd_in,
    gt3_cpllreset_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_drpaddr_in,
    gt3_drpclk_in,
    gt3_drpdi_in,
    gt3_drpdo_out,
    gt3_drpen_in,
    gt3_drprdy_out,
    gt3_drpwe_in,
    gt3_rxsysclksel_in,
    gt3_txsysclksel_in,
    gt3_dmonitorout_out,
    gt3_loopback_in,
    gt3_rxpd_in,
    gt3_txpd_in,
    gt3_eyescanreset_in,
    gt3_rxuserrdy_in,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_rxcdrhold_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_rxdata_out,
    gt3_rxprbserr_out,
    gt3_rxprbssel_in,
    gt3_rxprbscntreset_in,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gt3_gtxrxp_in,
    gt3_gtxrxn_in,
    gt3_rxbufreset_in,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_rxmcommaalignen_in,
    gt3_rxpcommaalignen_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_gtrxreset_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxlpmen_in,
    gt3_rxpolarity_in,
    gt3_rxchariscomma_out,
    gt3_rxcharisk_out,
    gt3_rxresetdone_out,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_gttxreset_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_txprbsforceerr_in,
    gt3_txbufstatus_out,
    gt3_txdiffctrl_in,
    gt3_txinhibit_in,
    gt3_txdata_in,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txcharisk_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txresetdone_out,
    gt3_txpolarity_in,
    gt3_txprbssel_in,
    GT0_QPLLLOCK_IN,
    GT0_QPLLREFCLKLOST_IN,
    GT0_QPLLRESET_OUT,
    GT0_QPLLOUTCLK_IN,
    GT0_QPLLOUTREFCLK_IN);
  input SYSCLK_IN;
  input SOFT_RESET_TX_IN;
  input SOFT_RESET_RX_IN;
  input DONT_RESET_ON_DATA_ERROR_IN;
  output GT_TX_FSM_RESET_DONE_OUT;
  output GT_RX_FSM_RESET_DONE_OUT;
  input GT0_DATA_VALID_IN;
  input GT1_DATA_VALID_IN;
  input GT2_DATA_VALID_IN;
  input GT3_DATA_VALID_IN;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllpd_in;
  input gt0_cpllreset_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  input [1:0]gt0_rxsysclksel_in;
  input [1:0]gt0_txsysclksel_in;
  output [7:0]gt0_dmonitorout_out;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxcdrhold_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  output [31:0]gt0_rxdata_out;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  input gt0_rxbufreset_in;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcommaalignen_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxpolarity_in;
  output [3:0]gt0_rxchariscomma_out;
  output [3:0]gt0_rxcharisk_out;
  output gt0_rxresetdone_out;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input gt0_txprbsforceerr_in;
  output [1:0]gt0_txbufstatus_out;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txinhibit_in;
  input [31:0]gt0_txdata_in;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  input [3:0]gt0_txcharisk_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  output gt0_txresetdone_out;
  input gt0_txpolarity_in;
  input [2:0]gt0_txprbssel_in;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  input gt1_cplllockdetclk_in;
  input gt1_cpllpd_in;
  input gt1_cpllreset_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input [8:0]gt1_drpaddr_in;
  input gt1_drpclk_in;
  input [15:0]gt1_drpdi_in;
  output [15:0]gt1_drpdo_out;
  input gt1_drpen_in;
  output gt1_drprdy_out;
  input gt1_drpwe_in;
  input [1:0]gt1_rxsysclksel_in;
  input [1:0]gt1_txsysclksel_in;
  output [7:0]gt1_dmonitorout_out;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input gt1_eyescanreset_in;
  input gt1_rxuserrdy_in;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_rxcdrhold_in;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  output [31:0]gt1_rxdata_out;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  input gt1_gtxrxp_in;
  input gt1_gtxrxn_in;
  input gt1_rxbufreset_in;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  input gt1_rxmcommaalignen_in;
  input gt1_rxpcommaalignen_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  input gt1_gtrxreset_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxpolarity_in;
  output [3:0]gt1_rxchariscomma_out;
  output [3:0]gt1_rxcharisk_out;
  output gt1_rxresetdone_out;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input gt1_gttxreset_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input gt1_txprbsforceerr_in;
  output [1:0]gt1_txbufstatus_out;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txinhibit_in;
  input [31:0]gt1_txdata_in;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  input [3:0]gt1_txcharisk_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  output gt1_txresetdone_out;
  input gt1_txpolarity_in;
  input [2:0]gt1_txprbssel_in;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  input gt2_cplllockdetclk_in;
  input gt2_cpllpd_in;
  input gt2_cpllreset_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input [8:0]gt2_drpaddr_in;
  input gt2_drpclk_in;
  input [15:0]gt2_drpdi_in;
  output [15:0]gt2_drpdo_out;
  input gt2_drpen_in;
  output gt2_drprdy_out;
  input gt2_drpwe_in;
  input [1:0]gt2_rxsysclksel_in;
  input [1:0]gt2_txsysclksel_in;
  output [7:0]gt2_dmonitorout_out;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input gt2_eyescanreset_in;
  input gt2_rxuserrdy_in;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_rxcdrhold_in;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  output [31:0]gt2_rxdata_out;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  input gt2_gtxrxp_in;
  input gt2_gtxrxn_in;
  input gt2_rxbufreset_in;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  input gt2_rxmcommaalignen_in;
  input gt2_rxpcommaalignen_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  input gt2_gtrxreset_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxpolarity_in;
  output [3:0]gt2_rxchariscomma_out;
  output [3:0]gt2_rxcharisk_out;
  output gt2_rxresetdone_out;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input gt2_gttxreset_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input gt2_txprbsforceerr_in;
  output [1:0]gt2_txbufstatus_out;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txinhibit_in;
  input [31:0]gt2_txdata_in;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  input [3:0]gt2_txcharisk_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  output gt2_txresetdone_out;
  input gt2_txpolarity_in;
  input [2:0]gt2_txprbssel_in;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  input gt3_cplllockdetclk_in;
  input gt3_cpllpd_in;
  input gt3_cpllreset_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input [8:0]gt3_drpaddr_in;
  input gt3_drpclk_in;
  input [15:0]gt3_drpdi_in;
  output [15:0]gt3_drpdo_out;
  input gt3_drpen_in;
  output gt3_drprdy_out;
  input gt3_drpwe_in;
  input [1:0]gt3_rxsysclksel_in;
  input [1:0]gt3_txsysclksel_in;
  output [7:0]gt3_dmonitorout_out;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input gt3_eyescanreset_in;
  input gt3_rxuserrdy_in;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_rxcdrhold_in;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  output [31:0]gt3_rxdata_out;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  input gt3_gtxrxp_in;
  input gt3_gtxrxn_in;
  input gt3_rxbufreset_in;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  input gt3_rxmcommaalignen_in;
  input gt3_rxpcommaalignen_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  input gt3_gtrxreset_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxpolarity_in;
  output [3:0]gt3_rxchariscomma_out;
  output [3:0]gt3_rxcharisk_out;
  output gt3_rxresetdone_out;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input gt3_gttxreset_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input gt3_txprbsforceerr_in;
  output [1:0]gt3_txbufstatus_out;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txinhibit_in;
  input [31:0]gt3_txdata_in;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  input [3:0]gt3_txcharisk_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  output gt3_txresetdone_out;
  input gt3_txpolarity_in;
  input [2:0]gt3_txprbssel_in;
  input GT0_QPLLLOCK_IN;
  input GT0_QPLLREFCLKLOST_IN;
  output GT0_QPLLRESET_OUT;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;

  wire CPLL_RESET;
  wire DONT_RESET_ON_DATA_ERROR_IN;
  wire GT0_DATA_VALID_IN;
  wire GT0_QPLLLOCK_IN;
  wire GT0_QPLLOUTCLK_IN;
  wire GT0_QPLLOUTREFCLK_IN;
  wire GT0_QPLLRESET_OUT;
  wire GT1_DATA_VALID_IN;
  wire GT2_DATA_VALID_IN;
  wire GT3_DATA_VALID_IN;
  wire GT_RX_FSM_RESET_DONE_OUT;
  wire GT_TX_FSM_RESET_DONE_OUT;
  wire RXRESETDONE;
  wire SOFT_RESET_RX_IN;
  wire SOFT_RESET_TX_IN;
  wire SYSCLK_IN;
  wire TXRESETDONE;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllpd_in;
  wire gt0_cpllreset_in;
  wire gt0_cpllreset_in19_out;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtrxreset_in;
  wire gt0_gtrxreset_in17_out;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_in;
  wire gt0_gttxreset_in16_out;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire [2:0]gt0_loopback_in;
  wire gt0_rx_cdrlock_counter;
  wire \gt0_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt0_rx_cdrlock_counter[8]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[9]_i_3_n_0 ;
  wire [9:0]gt0_rx_cdrlock_counter_reg__0;
  wire gt0_rx_cdrlocked_i_2_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [3:0]gt0_rxchariscomma_out;
  wire [3:0]gt0_rxcharisk_out;
  wire gt0_rxcommadet_out;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelpmreset_in;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpcommaalignen_in;
  wire gt0_rxpcsreset_in;
  wire [1:0]gt0_rxpd_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [2:0]gt0_rxstatus_out;
  wire [1:0]gt0_rxsysclksel_in;
  wire gt0_rxuserrdy_in;
  wire gt0_rxuserrdy_in18_out;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txinhibit_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txpcsreset_in;
  wire [1:0]gt0_txpd_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire [1:0]gt0_txsysclksel_in;
  wire gt0_txuserrdy_in;
  wire gt0_txuserrdy_in15_out;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire gt1_cpllfbclklost_out;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllpd_in;
  wire gt1_cpllreset_in;
  wire gt1_cpllreset_in14_out;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtrxreset_in;
  wire gt1_gtrxreset_in12_out;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_in;
  wire gt1_gttxreset_in11_out;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [2:0]gt1_loopback_in;
  wire gt1_rx_cdrlock_counter;
  wire \gt1_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt1_rx_cdrlock_counter[8]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter[9]_i_3_n_0 ;
  wire [9:0]gt1_rx_cdrlock_counter_reg__0;
  wire gt1_rx_cdrlocked_i_2_n_0;
  wire gt1_rx_cdrlocked_reg_n_0;
  wire gt1_rxbufreset_in;
  wire [2:0]gt1_rxbufstatus_out;
  wire gt1_rxbyteisaligned_out;
  wire gt1_rxbyterealign_out;
  wire gt1_rxcdrhold_in;
  wire [3:0]gt1_rxchariscomma_out;
  wire [3:0]gt1_rxcharisk_out;
  wire gt1_rxcommadet_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelpmreset_in;
  wire [3:0]gt1_rxdisperr_out;
  wire gt1_rxlpmen_in;
  wire gt1_rxmcommaalignen_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpcommaalignen_in;
  wire gt1_rxpcsreset_in;
  wire [1:0]gt1_rxpd_in;
  wire gt1_rxpmareset_in;
  wire gt1_rxpolarity_in;
  wire gt1_rxprbscntreset_in;
  wire gt1_rxprbserr_out;
  wire [2:0]gt1_rxprbssel_in;
  wire gt1_rxresetdone_out;
  wire [2:0]gt1_rxstatus_out;
  wire [1:0]gt1_rxsysclksel_in;
  wire gt1_rxuserrdy_in;
  wire gt1_rxuserrdy_in13_out;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire [1:0]gt1_txbufstatus_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire [3:0]gt1_txdiffctrl_in;
  wire gt1_txinhibit_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txpcsreset_in;
  wire [1:0]gt1_txpd_in;
  wire gt1_txpmareset_in;
  wire gt1_txpolarity_in;
  wire [4:0]gt1_txpostcursor_in;
  wire gt1_txprbsforceerr_in;
  wire [2:0]gt1_txprbssel_in;
  wire [4:0]gt1_txprecursor_in;
  wire gt1_txresetdone_out;
  wire [1:0]gt1_txsysclksel_in;
  wire gt1_txuserrdy_in;
  wire gt1_txuserrdy_in10_out;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire gt2_cpllfbclklost_out;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllpd_in;
  wire gt2_cpllreset_in;
  wire gt2_cpllreset_in9_out;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtrxreset_in;
  wire gt2_gtrxreset_in7_out;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_in;
  wire gt2_gttxreset_in6_out;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [2:0]gt2_loopback_in;
  wire gt2_rx_cdrlock_counter;
  wire \gt2_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt2_rx_cdrlock_counter[8]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter[9]_i_3_n_0 ;
  wire [9:0]gt2_rx_cdrlock_counter_reg__0;
  wire gt2_rx_cdrlocked_i_2_n_0;
  wire gt2_rx_cdrlocked_reg_n_0;
  wire gt2_rxbufreset_in;
  wire [2:0]gt2_rxbufstatus_out;
  wire gt2_rxbyteisaligned_out;
  wire gt2_rxbyterealign_out;
  wire gt2_rxcdrhold_in;
  wire [3:0]gt2_rxchariscomma_out;
  wire [3:0]gt2_rxcharisk_out;
  wire gt2_rxcommadet_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelpmreset_in;
  wire [3:0]gt2_rxdisperr_out;
  wire gt2_rxlpmen_in;
  wire gt2_rxmcommaalignen_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpcommaalignen_in;
  wire gt2_rxpcsreset_in;
  wire [1:0]gt2_rxpd_in;
  wire gt2_rxpmareset_in;
  wire gt2_rxpolarity_in;
  wire gt2_rxprbscntreset_in;
  wire gt2_rxprbserr_out;
  wire [2:0]gt2_rxprbssel_in;
  wire gt2_rxresetdone_out;
  wire [2:0]gt2_rxstatus_out;
  wire [1:0]gt2_rxsysclksel_in;
  wire gt2_rxuserrdy_in;
  wire gt2_rxuserrdy_in8_out;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire [1:0]gt2_txbufstatus_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire [3:0]gt2_txdiffctrl_in;
  wire gt2_txinhibit_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txpcsreset_in;
  wire [1:0]gt2_txpd_in;
  wire gt2_txpmareset_in;
  wire gt2_txpolarity_in;
  wire [4:0]gt2_txpostcursor_in;
  wire gt2_txprbsforceerr_in;
  wire [2:0]gt2_txprbssel_in;
  wire [4:0]gt2_txprecursor_in;
  wire gt2_txresetdone_out;
  wire [1:0]gt2_txsysclksel_in;
  wire gt2_txuserrdy_in;
  wire gt2_txuserrdy_in5_out;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire gt3_cpllfbclklost_out;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllpd_in;
  wire gt3_cpllreset_in;
  wire gt3_cpllreset_in4_out;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtrxreset_in;
  wire gt3_gtrxreset_in2_out;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_in;
  wire gt3_gttxreset_in1_out;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [2:0]gt3_loopback_in;
  wire gt3_rx_cdrlock_counter;
  wire \gt3_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt3_rx_cdrlock_counter[8]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter[9]_i_3_n_0 ;
  wire [9:0]gt3_rx_cdrlock_counter_reg__0;
  wire gt3_rx_cdrlocked_i_2_n_0;
  wire gt3_rx_cdrlocked_reg_n_0;
  wire gt3_rxbufreset_in;
  wire [2:0]gt3_rxbufstatus_out;
  wire gt3_rxbyteisaligned_out;
  wire gt3_rxbyterealign_out;
  wire gt3_rxcdrhold_in;
  wire [3:0]gt3_rxchariscomma_out;
  wire [3:0]gt3_rxcharisk_out;
  wire gt3_rxcommadet_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelpmreset_in;
  wire [3:0]gt3_rxdisperr_out;
  wire gt3_rxlpmen_in;
  wire gt3_rxmcommaalignen_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpcommaalignen_in;
  wire gt3_rxpcsreset_in;
  wire [1:0]gt3_rxpd_in;
  wire gt3_rxpmareset_in;
  wire gt3_rxpolarity_in;
  wire gt3_rxprbscntreset_in;
  wire gt3_rxprbserr_out;
  wire [2:0]gt3_rxprbssel_in;
  wire gt3_rxresetdone_out;
  wire [2:0]gt3_rxstatus_out;
  wire [1:0]gt3_rxsysclksel_in;
  wire gt3_rxuserrdy_in;
  wire gt3_rxuserrdy_in3_out;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire [1:0]gt3_txbufstatus_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire [3:0]gt3_txdiffctrl_in;
  wire gt3_txinhibit_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txpcsreset_in;
  wire [1:0]gt3_txpd_in;
  wire gt3_txpmareset_in;
  wire gt3_txpolarity_in;
  wire [4:0]gt3_txpostcursor_in;
  wire gt3_txprbsforceerr_in;
  wire [2:0]gt3_txprbssel_in;
  wire [4:0]gt3_txprecursor_in;
  wire gt3_txresetdone_out;
  wire [1:0]gt3_txsysclksel_in;
  wire gt3_txuserrdy_in;
  wire gt3_txuserrdy_in0_out;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;
  wire gt_rxresetfsm_i_n_6;
  wire gt_rxresetfsm_i_n_7;
  wire gt_rxresetfsm_i_n_8;
  wire gt_rxresetfsm_i_n_9;
  wire gt_tx_qpllreset_t;
  wire [9:1]p_0_in;
  wire [9:1]p_0_in__0;
  wire [9:1]p_0_in__1;
  wire [9:1]p_0_in__2;

  LUT1 #(
    .INIT(2'h1)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[0]),
        .O(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[0]),
        .I1(gt0_rx_cdrlock_counter_reg__0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[1]),
        .I1(gt0_rx_cdrlock_counter_reg__0[0]),
        .I2(gt0_rx_cdrlock_counter_reg__0[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[2]),
        .I1(gt0_rx_cdrlock_counter_reg__0[0]),
        .I2(gt0_rx_cdrlock_counter_reg__0[1]),
        .I3(gt0_rx_cdrlock_counter_reg__0[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[3]),
        .I1(gt0_rx_cdrlock_counter_reg__0[1]),
        .I2(gt0_rx_cdrlock_counter_reg__0[0]),
        .I3(gt0_rx_cdrlock_counter_reg__0[2]),
        .I4(gt0_rx_cdrlock_counter_reg__0[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[3]),
        .I1(gt0_rx_cdrlock_counter_reg__0[2]),
        .I2(gt0_rx_cdrlock_counter_reg__0[0]),
        .I3(gt0_rx_cdrlock_counter_reg__0[1]),
        .I4(gt0_rx_cdrlock_counter_reg__0[4]),
        .I5(gt0_rx_cdrlock_counter_reg__0[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[3]),
        .I1(gt0_rx_cdrlock_counter_reg__0[5]),
        .I2(\gt0_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I3(gt0_rx_cdrlock_counter_reg__0[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[5]),
        .I1(gt0_rx_cdrlock_counter_reg__0[3]),
        .I2(gt0_rx_cdrlock_counter_reg__0[6]),
        .I3(\gt0_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I4(gt0_rx_cdrlock_counter_reg__0[7]),
        .O(p_0_in__2[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[6]),
        .I1(gt0_rx_cdrlock_counter_reg__0[3]),
        .I2(gt0_rx_cdrlock_counter_reg__0[5]),
        .I3(gt0_rx_cdrlock_counter_reg__0[7]),
        .I4(\gt0_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I5(gt0_rx_cdrlock_counter_reg__0[8]),
        .O(p_0_in__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gt0_rx_cdrlock_counter[8]_i_2 
       (.I0(gt0_rx_cdrlock_counter_reg__0[2]),
        .I1(gt0_rx_cdrlock_counter_reg__0[0]),
        .I2(gt0_rx_cdrlock_counter_reg__0[1]),
        .I3(gt0_rx_cdrlock_counter_reg__0[4]),
        .O(\gt0_rx_cdrlock_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(gt0_rx_cdrlock_counter_reg__0[9]),
        .I1(gt0_rx_cdrlock_counter_reg__0[4]),
        .I2(gt0_rx_cdrlock_counter_reg__0[0]),
        .I3(gt0_rx_cdrlock_counter_reg__0[1]),
        .I4(\gt0_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I5(gt0_rx_cdrlock_counter_reg__0[2]),
        .O(gt0_rx_cdrlock_counter));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \gt0_rx_cdrlock_counter[9]_i_2 
       (.I0(\gt0_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I1(gt0_rx_cdrlock_counter_reg__0[2]),
        .I2(gt0_rx_cdrlock_counter_reg__0[0]),
        .I3(gt0_rx_cdrlock_counter_reg__0[1]),
        .I4(gt0_rx_cdrlock_counter_reg__0[4]),
        .I5(gt0_rx_cdrlock_counter_reg__0[9]),
        .O(p_0_in__2[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gt0_rx_cdrlock_counter[9]_i_3 
       (.I0(gt0_rx_cdrlock_counter_reg__0[7]),
        .I1(gt0_rx_cdrlock_counter_reg__0[5]),
        .I2(gt0_rx_cdrlock_counter_reg__0[3]),
        .I3(gt0_rx_cdrlock_counter_reg__0[6]),
        .I4(gt0_rx_cdrlock_counter_reg__0[8]),
        .O(\gt0_rx_cdrlock_counter[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(gt0_rx_cdrlock_counter_reg__0[0]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[1]),
        .Q(gt0_rx_cdrlock_counter_reg__0[1]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[2]),
        .Q(gt0_rx_cdrlock_counter_reg__0[2]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[3]),
        .Q(gt0_rx_cdrlock_counter_reg__0[3]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[4]),
        .Q(gt0_rx_cdrlock_counter_reg__0[4]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[5]),
        .Q(gt0_rx_cdrlock_counter_reg__0[5]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[6]),
        .Q(gt0_rx_cdrlock_counter_reg__0[6]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[7]),
        .Q(gt0_rx_cdrlock_counter_reg__0[7]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[8]),
        .Q(gt0_rx_cdrlock_counter_reg__0[8]),
        .R(gt0_gtrxreset_in17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(SYSCLK_IN),
        .CE(gt0_rx_cdrlock_counter),
        .D(p_0_in__2[9]),
        .Q(gt0_rx_cdrlock_counter_reg__0[9]),
        .R(gt0_gtrxreset_in17_out));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    gt0_rx_cdrlocked_i_2
       (.I0(gt0_rx_cdrlock_counter_reg__0[0]),
        .I1(gt0_rx_cdrlock_counter_reg__0[1]),
        .I2(gt0_rx_cdrlock_counter_reg__0[2]),
        .I3(gt0_rx_cdrlock_counter_reg__0[4]),
        .I4(gt0_rx_cdrlock_counter_reg__0[9]),
        .O(gt0_rx_cdrlocked_i_2_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(gt_rxresetfsm_i_n_9),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gt1_rx_cdrlock_counter[0]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[0]),
        .O(\gt1_rx_cdrlock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gt1_rx_cdrlock_counter[1]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[0]),
        .I1(gt1_rx_cdrlock_counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gt1_rx_cdrlock_counter[2]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[1]),
        .I1(gt1_rx_cdrlock_counter_reg__0[0]),
        .I2(gt1_rx_cdrlock_counter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt1_rx_cdrlock_counter[3]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[2]),
        .I1(gt1_rx_cdrlock_counter_reg__0[0]),
        .I2(gt1_rx_cdrlock_counter_reg__0[1]),
        .I3(gt1_rx_cdrlock_counter_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt1_rx_cdrlock_counter[4]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[3]),
        .I1(gt1_rx_cdrlock_counter_reg__0[1]),
        .I2(gt1_rx_cdrlock_counter_reg__0[0]),
        .I3(gt1_rx_cdrlock_counter_reg__0[2]),
        .I4(gt1_rx_cdrlock_counter_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt1_rx_cdrlock_counter[5]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[3]),
        .I1(gt1_rx_cdrlock_counter_reg__0[2]),
        .I2(gt1_rx_cdrlock_counter_reg__0[0]),
        .I3(gt1_rx_cdrlock_counter_reg__0[1]),
        .I4(gt1_rx_cdrlock_counter_reg__0[4]),
        .I5(gt1_rx_cdrlock_counter_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt1_rx_cdrlock_counter[6]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[3]),
        .I1(gt1_rx_cdrlock_counter_reg__0[5]),
        .I2(\gt1_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I3(gt1_rx_cdrlock_counter_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt1_rx_cdrlock_counter[7]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[5]),
        .I1(gt1_rx_cdrlock_counter_reg__0[3]),
        .I2(gt1_rx_cdrlock_counter_reg__0[6]),
        .I3(\gt1_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I4(gt1_rx_cdrlock_counter_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt1_rx_cdrlock_counter[8]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[6]),
        .I1(gt1_rx_cdrlock_counter_reg__0[3]),
        .I2(gt1_rx_cdrlock_counter_reg__0[5]),
        .I3(gt1_rx_cdrlock_counter_reg__0[7]),
        .I4(\gt1_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I5(gt1_rx_cdrlock_counter_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gt1_rx_cdrlock_counter[8]_i_2 
       (.I0(gt1_rx_cdrlock_counter_reg__0[2]),
        .I1(gt1_rx_cdrlock_counter_reg__0[0]),
        .I2(gt1_rx_cdrlock_counter_reg__0[1]),
        .I3(gt1_rx_cdrlock_counter_reg__0[4]),
        .O(\gt1_rx_cdrlock_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \gt1_rx_cdrlock_counter[9]_i_1 
       (.I0(gt1_rx_cdrlock_counter_reg__0[9]),
        .I1(gt1_rx_cdrlock_counter_reg__0[4]),
        .I2(gt1_rx_cdrlock_counter_reg__0[0]),
        .I3(gt1_rx_cdrlock_counter_reg__0[1]),
        .I4(\gt1_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I5(gt1_rx_cdrlock_counter_reg__0[2]),
        .O(gt1_rx_cdrlock_counter));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \gt1_rx_cdrlock_counter[9]_i_2 
       (.I0(\gt1_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I1(gt1_rx_cdrlock_counter_reg__0[2]),
        .I2(gt1_rx_cdrlock_counter_reg__0[0]),
        .I3(gt1_rx_cdrlock_counter_reg__0[1]),
        .I4(gt1_rx_cdrlock_counter_reg__0[4]),
        .I5(gt1_rx_cdrlock_counter_reg__0[9]),
        .O(p_0_in[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gt1_rx_cdrlock_counter[9]_i_3 
       (.I0(gt1_rx_cdrlock_counter_reg__0[7]),
        .I1(gt1_rx_cdrlock_counter_reg__0[5]),
        .I2(gt1_rx_cdrlock_counter_reg__0[3]),
        .I3(gt1_rx_cdrlock_counter_reg__0[6]),
        .I4(gt1_rx_cdrlock_counter_reg__0[8]),
        .O(\gt1_rx_cdrlock_counter[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[0] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(\gt1_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(gt1_rx_cdrlock_counter_reg__0[0]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[1] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[1]),
        .Q(gt1_rx_cdrlock_counter_reg__0[1]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[2] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[2]),
        .Q(gt1_rx_cdrlock_counter_reg__0[2]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[3] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[3]),
        .Q(gt1_rx_cdrlock_counter_reg__0[3]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[4] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[4]),
        .Q(gt1_rx_cdrlock_counter_reg__0[4]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[5] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[5]),
        .Q(gt1_rx_cdrlock_counter_reg__0[5]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[6] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[6]),
        .Q(gt1_rx_cdrlock_counter_reg__0[6]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[7] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[7]),
        .Q(gt1_rx_cdrlock_counter_reg__0[7]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[8] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[8]),
        .Q(gt1_rx_cdrlock_counter_reg__0[8]),
        .R(gt1_gtrxreset_in12_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[9] 
       (.C(SYSCLK_IN),
        .CE(gt1_rx_cdrlock_counter),
        .D(p_0_in[9]),
        .Q(gt1_rx_cdrlock_counter_reg__0[9]),
        .R(gt1_gtrxreset_in12_out));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    gt1_rx_cdrlocked_i_2
       (.I0(gt1_rx_cdrlock_counter_reg__0[0]),
        .I1(gt1_rx_cdrlock_counter_reg__0[1]),
        .I2(gt1_rx_cdrlock_counter_reg__0[2]),
        .I3(gt1_rx_cdrlock_counter_reg__0[4]),
        .I4(gt1_rx_cdrlock_counter_reg__0[9]),
        .O(gt1_rx_cdrlocked_i_2_n_0));
  FDRE gt1_rx_cdrlocked_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(gt_rxresetfsm_i_n_6),
        .Q(gt1_rx_cdrlocked_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gt2_rx_cdrlock_counter[0]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[0]),
        .O(\gt2_rx_cdrlock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gt2_rx_cdrlock_counter[1]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[0]),
        .I1(gt2_rx_cdrlock_counter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gt2_rx_cdrlock_counter[2]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[1]),
        .I1(gt2_rx_cdrlock_counter_reg__0[0]),
        .I2(gt2_rx_cdrlock_counter_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt2_rx_cdrlock_counter[3]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[2]),
        .I1(gt2_rx_cdrlock_counter_reg__0[0]),
        .I2(gt2_rx_cdrlock_counter_reg__0[1]),
        .I3(gt2_rx_cdrlock_counter_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt2_rx_cdrlock_counter[4]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[3]),
        .I1(gt2_rx_cdrlock_counter_reg__0[1]),
        .I2(gt2_rx_cdrlock_counter_reg__0[0]),
        .I3(gt2_rx_cdrlock_counter_reg__0[2]),
        .I4(gt2_rx_cdrlock_counter_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt2_rx_cdrlock_counter[5]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[3]),
        .I1(gt2_rx_cdrlock_counter_reg__0[2]),
        .I2(gt2_rx_cdrlock_counter_reg__0[0]),
        .I3(gt2_rx_cdrlock_counter_reg__0[1]),
        .I4(gt2_rx_cdrlock_counter_reg__0[4]),
        .I5(gt2_rx_cdrlock_counter_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt2_rx_cdrlock_counter[6]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[3]),
        .I1(gt2_rx_cdrlock_counter_reg__0[5]),
        .I2(\gt2_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I3(gt2_rx_cdrlock_counter_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt2_rx_cdrlock_counter[7]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[5]),
        .I1(gt2_rx_cdrlock_counter_reg__0[3]),
        .I2(gt2_rx_cdrlock_counter_reg__0[6]),
        .I3(\gt2_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I4(gt2_rx_cdrlock_counter_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt2_rx_cdrlock_counter[8]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[6]),
        .I1(gt2_rx_cdrlock_counter_reg__0[3]),
        .I2(gt2_rx_cdrlock_counter_reg__0[5]),
        .I3(gt2_rx_cdrlock_counter_reg__0[7]),
        .I4(\gt2_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I5(gt2_rx_cdrlock_counter_reg__0[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gt2_rx_cdrlock_counter[8]_i_2 
       (.I0(gt2_rx_cdrlock_counter_reg__0[2]),
        .I1(gt2_rx_cdrlock_counter_reg__0[0]),
        .I2(gt2_rx_cdrlock_counter_reg__0[1]),
        .I3(gt2_rx_cdrlock_counter_reg__0[4]),
        .O(\gt2_rx_cdrlock_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \gt2_rx_cdrlock_counter[9]_i_1 
       (.I0(gt2_rx_cdrlock_counter_reg__0[9]),
        .I1(gt2_rx_cdrlock_counter_reg__0[4]),
        .I2(gt2_rx_cdrlock_counter_reg__0[0]),
        .I3(gt2_rx_cdrlock_counter_reg__0[1]),
        .I4(\gt2_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I5(gt2_rx_cdrlock_counter_reg__0[2]),
        .O(gt2_rx_cdrlock_counter));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \gt2_rx_cdrlock_counter[9]_i_2 
       (.I0(\gt2_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I1(gt2_rx_cdrlock_counter_reg__0[2]),
        .I2(gt2_rx_cdrlock_counter_reg__0[0]),
        .I3(gt2_rx_cdrlock_counter_reg__0[1]),
        .I4(gt2_rx_cdrlock_counter_reg__0[4]),
        .I5(gt2_rx_cdrlock_counter_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gt2_rx_cdrlock_counter[9]_i_3 
       (.I0(gt2_rx_cdrlock_counter_reg__0[7]),
        .I1(gt2_rx_cdrlock_counter_reg__0[5]),
        .I2(gt2_rx_cdrlock_counter_reg__0[3]),
        .I3(gt2_rx_cdrlock_counter_reg__0[6]),
        .I4(gt2_rx_cdrlock_counter_reg__0[8]),
        .O(\gt2_rx_cdrlock_counter[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[0] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(\gt2_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(gt2_rx_cdrlock_counter_reg__0[0]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[1] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[1]),
        .Q(gt2_rx_cdrlock_counter_reg__0[1]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[2] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[2]),
        .Q(gt2_rx_cdrlock_counter_reg__0[2]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[3] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[3]),
        .Q(gt2_rx_cdrlock_counter_reg__0[3]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[4] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[4]),
        .Q(gt2_rx_cdrlock_counter_reg__0[4]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[5] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[5]),
        .Q(gt2_rx_cdrlock_counter_reg__0[5]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[6] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[6]),
        .Q(gt2_rx_cdrlock_counter_reg__0[6]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[7] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[7]),
        .Q(gt2_rx_cdrlock_counter_reg__0[7]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[8] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[8]),
        .Q(gt2_rx_cdrlock_counter_reg__0[8]),
        .R(gt2_gtrxreset_in7_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[9] 
       (.C(SYSCLK_IN),
        .CE(gt2_rx_cdrlock_counter),
        .D(p_0_in__0[9]),
        .Q(gt2_rx_cdrlock_counter_reg__0[9]),
        .R(gt2_gtrxreset_in7_out));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    gt2_rx_cdrlocked_i_2
       (.I0(gt2_rx_cdrlock_counter_reg__0[0]),
        .I1(gt2_rx_cdrlock_counter_reg__0[1]),
        .I2(gt2_rx_cdrlock_counter_reg__0[2]),
        .I3(gt2_rx_cdrlock_counter_reg__0[4]),
        .I4(gt2_rx_cdrlock_counter_reg__0[9]),
        .O(gt2_rx_cdrlocked_i_2_n_0));
  FDRE gt2_rx_cdrlocked_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(gt_rxresetfsm_i_n_7),
        .Q(gt2_rx_cdrlocked_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gt3_rx_cdrlock_counter[0]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[0]),
        .O(\gt3_rx_cdrlock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gt3_rx_cdrlock_counter[1]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[0]),
        .I1(gt3_rx_cdrlock_counter_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gt3_rx_cdrlock_counter[2]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[1]),
        .I1(gt3_rx_cdrlock_counter_reg__0[0]),
        .I2(gt3_rx_cdrlock_counter_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt3_rx_cdrlock_counter[3]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[2]),
        .I1(gt3_rx_cdrlock_counter_reg__0[0]),
        .I2(gt3_rx_cdrlock_counter_reg__0[1]),
        .I3(gt3_rx_cdrlock_counter_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt3_rx_cdrlock_counter[4]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[3]),
        .I1(gt3_rx_cdrlock_counter_reg__0[1]),
        .I2(gt3_rx_cdrlock_counter_reg__0[0]),
        .I3(gt3_rx_cdrlock_counter_reg__0[2]),
        .I4(gt3_rx_cdrlock_counter_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt3_rx_cdrlock_counter[5]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[3]),
        .I1(gt3_rx_cdrlock_counter_reg__0[2]),
        .I2(gt3_rx_cdrlock_counter_reg__0[0]),
        .I3(gt3_rx_cdrlock_counter_reg__0[1]),
        .I4(gt3_rx_cdrlock_counter_reg__0[4]),
        .I5(gt3_rx_cdrlock_counter_reg__0[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gt3_rx_cdrlock_counter[6]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[3]),
        .I1(gt3_rx_cdrlock_counter_reg__0[5]),
        .I2(\gt3_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I3(gt3_rx_cdrlock_counter_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gt3_rx_cdrlock_counter[7]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[5]),
        .I1(gt3_rx_cdrlock_counter_reg__0[3]),
        .I2(gt3_rx_cdrlock_counter_reg__0[6]),
        .I3(\gt3_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I4(gt3_rx_cdrlock_counter_reg__0[7]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gt3_rx_cdrlock_counter[8]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[6]),
        .I1(gt3_rx_cdrlock_counter_reg__0[3]),
        .I2(gt3_rx_cdrlock_counter_reg__0[5]),
        .I3(gt3_rx_cdrlock_counter_reg__0[7]),
        .I4(\gt3_rx_cdrlock_counter[8]_i_2_n_0 ),
        .I5(gt3_rx_cdrlock_counter_reg__0[8]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gt3_rx_cdrlock_counter[8]_i_2 
       (.I0(gt3_rx_cdrlock_counter_reg__0[2]),
        .I1(gt3_rx_cdrlock_counter_reg__0[0]),
        .I2(gt3_rx_cdrlock_counter_reg__0[1]),
        .I3(gt3_rx_cdrlock_counter_reg__0[4]),
        .O(\gt3_rx_cdrlock_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \gt3_rx_cdrlock_counter[9]_i_1 
       (.I0(gt3_rx_cdrlock_counter_reg__0[9]),
        .I1(gt3_rx_cdrlock_counter_reg__0[4]),
        .I2(gt3_rx_cdrlock_counter_reg__0[0]),
        .I3(gt3_rx_cdrlock_counter_reg__0[1]),
        .I4(\gt3_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I5(gt3_rx_cdrlock_counter_reg__0[2]),
        .O(gt3_rx_cdrlock_counter));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \gt3_rx_cdrlock_counter[9]_i_2 
       (.I0(\gt3_rx_cdrlock_counter[9]_i_3_n_0 ),
        .I1(gt3_rx_cdrlock_counter_reg__0[2]),
        .I2(gt3_rx_cdrlock_counter_reg__0[0]),
        .I3(gt3_rx_cdrlock_counter_reg__0[1]),
        .I4(gt3_rx_cdrlock_counter_reg__0[4]),
        .I5(gt3_rx_cdrlock_counter_reg__0[9]),
        .O(p_0_in__1[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gt3_rx_cdrlock_counter[9]_i_3 
       (.I0(gt3_rx_cdrlock_counter_reg__0[7]),
        .I1(gt3_rx_cdrlock_counter_reg__0[5]),
        .I2(gt3_rx_cdrlock_counter_reg__0[3]),
        .I3(gt3_rx_cdrlock_counter_reg__0[6]),
        .I4(gt3_rx_cdrlock_counter_reg__0[8]),
        .O(\gt3_rx_cdrlock_counter[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[0] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(\gt3_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(gt3_rx_cdrlock_counter_reg__0[0]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[1] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[1]),
        .Q(gt3_rx_cdrlock_counter_reg__0[1]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[2] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[2]),
        .Q(gt3_rx_cdrlock_counter_reg__0[2]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[3] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[3]),
        .Q(gt3_rx_cdrlock_counter_reg__0[3]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[4] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[4]),
        .Q(gt3_rx_cdrlock_counter_reg__0[4]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[5] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[5]),
        .Q(gt3_rx_cdrlock_counter_reg__0[5]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[6] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[6]),
        .Q(gt3_rx_cdrlock_counter_reg__0[6]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[7] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[7]),
        .Q(gt3_rx_cdrlock_counter_reg__0[7]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[8] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[8]),
        .Q(gt3_rx_cdrlock_counter_reg__0[8]),
        .R(gt3_gtrxreset_in2_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[9] 
       (.C(SYSCLK_IN),
        .CE(gt3_rx_cdrlock_counter),
        .D(p_0_in__1[9]),
        .Q(gt3_rx_cdrlock_counter_reg__0[9]),
        .R(gt3_gtrxreset_in2_out));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    gt3_rx_cdrlocked_i_2
       (.I0(gt3_rx_cdrlock_counter_reg__0[0]),
        .I1(gt3_rx_cdrlock_counter_reg__0[1]),
        .I2(gt3_rx_cdrlock_counter_reg__0[2]),
        .I3(gt3_rx_cdrlock_counter_reg__0[4]),
        .I4(gt3_rx_cdrlock_counter_reg__0[9]),
        .O(gt3_rx_cdrlocked_i_2_n_0));
  FDRE gt3_rx_cdrlocked_reg
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(gt_rxresetfsm_i_n_8),
        .Q(gt3_rx_cdrlocked_reg_n_0),
        .R(1'b0));
  jesd204_phy_1_jesd204_phy_1_gt_RX_STARTUP_FSM gt_rxresetfsm_i
       (.CPLL_RESET(CPLL_RESET),
        .DONT_RESET_ON_DATA_ERROR_IN(DONT_RESET_ON_DATA_ERROR_IN),
        .GT0_DATA_VALID_IN(GT0_DATA_VALID_IN),
        .GT0_QPLLLOCK_IN(GT0_QPLLLOCK_IN),
        .GT0_QPLLRESET_OUT(GT0_QPLLRESET_OUT),
        .GT1_DATA_VALID_IN(GT1_DATA_VALID_IN),
        .GT2_DATA_VALID_IN(GT2_DATA_VALID_IN),
        .GT3_DATA_VALID_IN(GT3_DATA_VALID_IN),
        .GT_RX_FSM_RESET_DONE_OUT(GT_RX_FSM_RESET_DONE_OUT),
        .SOFT_RESET_RX_IN(SOFT_RESET_RX_IN),
        .SR(gt1_gtrxreset_in12_out),
        .SYSCLK_IN(SYSCLK_IN),
        .UNCONN_IN(gt2_cpllreset_in),
        .UNCONN_IN_0(gt0_cpllreset_in),
        .UNCONN_IN_1(gt1_cpllreset_in),
        .UNCONN_IN_2(gt3_cpllreset_in),
        .UNCONN_IN_3(gt0_rxuserrdy_in),
        .UNCONN_IN_4(gt1_rxuserrdy_in),
        .UNCONN_IN_5(gt2_rxuserrdy_in),
        .UNCONN_IN_6(gt3_rxuserrdy_in),
        .data_in(RXRESETDONE),
        .gt0_cpllreset_in(gt0_cpllreset_in19_out),
        .gt0_gtrxreset_in(gt0_gtrxreset_in),
        .\gt0_rx_cdrlock_counter_reg[0] (gt0_rx_cdrlocked_i_2_n_0),
        .\gt0_rx_cdrlock_counter_reg[7] (\gt0_rx_cdrlock_counter[9]_i_3_n_0 ),
        .\gt0_rx_cdrlock_counter_reg[9] (gt0_gtrxreset_in17_out),
        .gt0_rx_cdrlocked_reg(gt_rxresetfsm_i_n_9),
        .gt0_rx_cdrlocked_reg_0(gt0_rx_cdrlocked_reg_n_0),
        .gt0_rxsysclksel_in(gt0_rxsysclksel_in[0]),
        .gt0_rxuserrdy_in(gt0_rxuserrdy_in18_out),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txsysclksel_in(gt0_txsysclksel_in[0]),
        .gt1_cpllreset_in(gt1_cpllreset_in14_out),
        .gt1_gtrxreset_in(gt1_gtrxreset_in),
        .\gt1_rx_cdrlock_counter_reg[0] (gt1_rx_cdrlocked_i_2_n_0),
        .\gt1_rx_cdrlock_counter_reg[7] (\gt1_rx_cdrlock_counter[9]_i_3_n_0 ),
        .gt1_rx_cdrlocked_reg(gt_rxresetfsm_i_n_6),
        .gt1_rx_cdrlocked_reg_0(gt1_rx_cdrlocked_reg_n_0),
        .gt1_rxuserrdy_in(gt1_rxuserrdy_in13_out),
        .gt2_cpllreset_in(gt2_cpllreset_in9_out),
        .gt2_gtrxreset_in(gt2_gtrxreset_in),
        .\gt2_rx_cdrlock_counter_reg[0] (gt2_rx_cdrlocked_i_2_n_0),
        .\gt2_rx_cdrlock_counter_reg[7] (\gt2_rx_cdrlock_counter[9]_i_3_n_0 ),
        .\gt2_rx_cdrlock_counter_reg[9] (gt2_gtrxreset_in7_out),
        .gt2_rx_cdrlocked_reg(gt_rxresetfsm_i_n_7),
        .gt2_rx_cdrlocked_reg_0(gt2_rx_cdrlocked_reg_n_0),
        .gt2_rxuserrdy_in(gt2_rxuserrdy_in8_out),
        .gt3_cpllreset_in(gt3_cpllreset_in4_out),
        .gt3_gtrxreset_in(gt3_gtrxreset_in),
        .\gt3_rx_cdrlock_counter_reg[0] (gt3_rx_cdrlocked_i_2_n_0),
        .\gt3_rx_cdrlock_counter_reg[7] (\gt3_rx_cdrlock_counter[9]_i_3_n_0 ),
        .\gt3_rx_cdrlock_counter_reg[9] (gt3_gtrxreset_in2_out),
        .gt3_rx_cdrlocked_reg(gt_rxresetfsm_i_n_8),
        .gt3_rx_cdrlocked_reg_0(gt3_rx_cdrlocked_reg_n_0),
        .gt3_rxuserrdy_in(gt3_rxuserrdy_in3_out),
        .gt_tx_qpllreset_t(gt_tx_qpllreset_t));
  jesd204_phy_1_jesd204_phy_1_gt_TX_STARTUP_FSM gt_txresetfsm_i
       (.CPLL_RESET(CPLL_RESET),
        .GT0_QPLLLOCK_IN(GT0_QPLLLOCK_IN),
        .GT_TX_FSM_RESET_DONE_OUT(GT_TX_FSM_RESET_DONE_OUT),
        .SOFT_RESET_TX_IN(SOFT_RESET_TX_IN),
        .SYSCLK_IN(SYSCLK_IN),
        .UNCONN_IN(gt0_txuserrdy_in),
        .UNCONN_IN_0(gt1_txuserrdy_in),
        .UNCONN_IN_1(gt2_txuserrdy_in),
        .UNCONN_IN_2(gt3_txuserrdy_in),
        .data_in(TXRESETDONE),
        .data_sync_reg4(gt0_gttxreset_in),
        .data_sync_reg4_0(gt1_gttxreset_in),
        .data_sync_reg4_1(gt2_gttxreset_in),
        .data_sync_reg4_2(gt3_gttxreset_in),
        .gt0_gttxreset_in(gt0_gttxreset_in16_out),
        .gt0_txsysclksel_in(gt0_txsysclksel_in[0]),
        .gt0_txuserrdy_in(gt0_txuserrdy_in15_out),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_gttxreset_in(gt1_gttxreset_in11_out),
        .gt1_txuserrdy_in(gt1_txuserrdy_in10_out),
        .gt2_gttxreset_in(gt2_gttxreset_in6_out),
        .gt2_txuserrdy_in(gt2_txuserrdy_in5_out),
        .gt3_gttxreset_in(gt3_gttxreset_in1_out),
        .gt3_txuserrdy_in(gt3_txuserrdy_in0_out),
        .gt_tx_qpllreset_t(gt_tx_qpllreset_t));
  jesd204_phy_1_jesd204_phy_1_gt_multi_gt jesd204_phy_1_gt_i
       (.GT0_QPLLOUTCLK_IN(GT0_QPLLOUTCLK_IN),
        .GT0_QPLLOUTREFCLK_IN(GT0_QPLLOUTREFCLK_IN),
        .SR(gt0_gtrxreset_in17_out),
        .data_in(TXRESETDONE),
        .data_sync_reg1(RXRESETDONE),
        .data_sync_reg4(gt1_gtrxreset_in12_out),
        .data_sync_reg4_0(gt2_gtrxreset_in7_out),
        .data_sync_reg4_1(gt3_gtrxreset_in2_out),
        .gt0_cpllfbclklost_out(gt0_cpllfbclklost_out),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cplllockdetclk_in(gt0_cplllockdetclk_in),
        .gt0_cpllpd_in(gt0_cpllpd_in),
        .gt0_cpllreset_in(gt0_cpllreset_in19_out),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtnorthrefclk0_in(gt0_gtnorthrefclk0_in),
        .gt0_gtnorthrefclk1_in(gt0_gtnorthrefclk1_in),
        .gt0_gtrefclk0_in(gt0_gtrefclk0_in),
        .gt0_gtrefclk1_in(gt0_gtrefclk1_in),
        .gt0_gtsouthrefclk0_in(gt0_gtsouthrefclk0_in),
        .gt0_gtsouthrefclk1_in(gt0_gtsouthrefclk1_in),
        .gt0_gttxreset_in(gt0_gttxreset_in16_out),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcdrhold_in(gt0_rxcdrhold_in),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxoutclkfabric_out(gt0_rxoutclkfabric_out),
        .gt0_rxpcommaalignen_in(gt0_rxpcommaalignen_in),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxstatus_out(gt0_rxstatus_out),
        .gt0_rxsysclksel_in(gt0_rxsysclksel_in),
        .gt0_rxuserrdy_in(gt0_rxuserrdy_in18_out),
        .gt0_rxusrclk2_in(gt0_rxusrclk2_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txcharisk_in(gt0_txcharisk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txinhibit_in(gt0_txinhibit_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txoutclkfabric_out(gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out(gt0_txoutclkpcs_out),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txsysclksel_in(gt0_txsysclksel_in),
        .gt0_txuserrdy_in(gt0_txuserrdy_in15_out),
        .gt0_txusrclk2_in(gt0_txusrclk2_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_cpllfbclklost_out(gt1_cpllfbclklost_out),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cplllockdetclk_in(gt1_cplllockdetclk_in),
        .gt1_cpllpd_in(gt1_cpllpd_in),
        .gt1_cpllreset_in(gt1_cpllreset_in14_out),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr_in(gt1_drpaddr_in),
        .gt1_drpclk_in(gt1_drpclk_in),
        .gt1_drpdi_in(gt1_drpdi_in),
        .gt1_drpdo_out(gt1_drpdo_out),
        .gt1_drpen_in(gt1_drpen_in),
        .gt1_drprdy_out(gt1_drprdy_out),
        .gt1_drpwe_in(gt1_drpwe_in),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_gtnorthrefclk0_in(gt1_gtnorthrefclk0_in),
        .gt1_gtnorthrefclk1_in(gt1_gtnorthrefclk1_in),
        .gt1_gtrefclk0_in(gt1_gtrefclk0_in),
        .gt1_gtrefclk1_in(gt1_gtrefclk1_in),
        .gt1_gtsouthrefclk0_in(gt1_gtsouthrefclk0_in),
        .gt1_gtsouthrefclk1_in(gt1_gtsouthrefclk1_in),
        .gt1_gttxreset_in(gt1_gttxreset_in11_out),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_loopback_in(gt1_loopback_in),
        .gt1_rxbufreset_in(gt1_rxbufreset_in),
        .gt1_rxbufstatus_out(gt1_rxbufstatus_out),
        .gt1_rxbyteisaligned_out(gt1_rxbyteisaligned_out),
        .gt1_rxbyterealign_out(gt1_rxbyterealign_out),
        .gt1_rxcdrhold_in(gt1_rxcdrhold_in),
        .gt1_rxchariscomma_out(gt1_rxchariscomma_out),
        .gt1_rxcharisk_out(gt1_rxcharisk_out),
        .gt1_rxcommadet_out(gt1_rxcommadet_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxdisperr_out(gt1_rxdisperr_out),
        .gt1_rxlpmen_in(gt1_rxlpmen_in),
        .gt1_rxmcommaalignen_in(gt1_rxmcommaalignen_in),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxnotintable_out(gt1_rxnotintable_out),
        .gt1_rxoutclk_out(gt1_rxoutclk_out),
        .gt1_rxoutclkfabric_out(gt1_rxoutclkfabric_out),
        .gt1_rxpcommaalignen_in(gt1_rxpcommaalignen_in),
        .gt1_rxpcsreset_in(gt1_rxpcsreset_in),
        .gt1_rxpd_in(gt1_rxpd_in),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxpolarity_in(gt1_rxpolarity_in),
        .gt1_rxprbscntreset_in(gt1_rxprbscntreset_in),
        .gt1_rxprbserr_out(gt1_rxprbserr_out),
        .gt1_rxprbssel_in(gt1_rxprbssel_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxstatus_out(gt1_rxstatus_out),
        .gt1_rxsysclksel_in(gt1_rxsysclksel_in),
        .gt1_rxuserrdy_in(gt1_rxuserrdy_in13_out),
        .gt1_rxusrclk2_in(gt1_rxusrclk2_in),
        .gt1_rxusrclk_in(gt1_rxusrclk_in),
        .gt1_txbufstatus_out(gt1_txbufstatus_out),
        .gt1_txcharisk_in(gt1_txcharisk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txdiffctrl_in(gt1_txdiffctrl_in),
        .gt1_txinhibit_in(gt1_txinhibit_in),
        .gt1_txoutclk_out(gt1_txoutclk_out),
        .gt1_txoutclkfabric_out(gt1_txoutclkfabric_out),
        .gt1_txoutclkpcs_out(gt1_txoutclkpcs_out),
        .gt1_txpcsreset_in(gt1_txpcsreset_in),
        .gt1_txpd_in(gt1_txpd_in),
        .gt1_txpmareset_in(gt1_txpmareset_in),
        .gt1_txpolarity_in(gt1_txpolarity_in),
        .gt1_txpostcursor_in(gt1_txpostcursor_in),
        .gt1_txprbsforceerr_in(gt1_txprbsforceerr_in),
        .gt1_txprbssel_in(gt1_txprbssel_in),
        .gt1_txprecursor_in(gt1_txprecursor_in),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txsysclksel_in(gt1_txsysclksel_in),
        .gt1_txuserrdy_in(gt1_txuserrdy_in10_out),
        .gt1_txusrclk2_in(gt1_txusrclk2_in),
        .gt1_txusrclk_in(gt1_txusrclk_in),
        .gt2_cpllfbclklost_out(gt2_cpllfbclklost_out),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cplllockdetclk_in(gt2_cplllockdetclk_in),
        .gt2_cpllpd_in(gt2_cpllpd_in),
        .gt2_cpllreset_in(gt2_cpllreset_in9_out),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr_in(gt2_drpaddr_in),
        .gt2_drpclk_in(gt2_drpclk_in),
        .gt2_drpdi_in(gt2_drpdi_in),
        .gt2_drpdo_out(gt2_drpdo_out),
        .gt2_drpen_in(gt2_drpen_in),
        .gt2_drprdy_out(gt2_drprdy_out),
        .gt2_drpwe_in(gt2_drpwe_in),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_gtnorthrefclk0_in(gt2_gtnorthrefclk0_in),
        .gt2_gtnorthrefclk1_in(gt2_gtnorthrefclk1_in),
        .gt2_gtrefclk0_in(gt2_gtrefclk0_in),
        .gt2_gtrefclk1_in(gt2_gtrefclk1_in),
        .gt2_gtsouthrefclk0_in(gt2_gtsouthrefclk0_in),
        .gt2_gtsouthrefclk1_in(gt2_gtsouthrefclk1_in),
        .gt2_gttxreset_in(gt2_gttxreset_in6_out),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_loopback_in(gt2_loopback_in),
        .gt2_rxbufreset_in(gt2_rxbufreset_in),
        .gt2_rxbufstatus_out(gt2_rxbufstatus_out),
        .gt2_rxbyteisaligned_out(gt2_rxbyteisaligned_out),
        .gt2_rxbyterealign_out(gt2_rxbyterealign_out),
        .gt2_rxcdrhold_in(gt2_rxcdrhold_in),
        .gt2_rxchariscomma_out(gt2_rxchariscomma_out),
        .gt2_rxcharisk_out(gt2_rxcharisk_out),
        .gt2_rxcommadet_out(gt2_rxcommadet_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxdisperr_out(gt2_rxdisperr_out),
        .gt2_rxlpmen_in(gt2_rxlpmen_in),
        .gt2_rxmcommaalignen_in(gt2_rxmcommaalignen_in),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxnotintable_out(gt2_rxnotintable_out),
        .gt2_rxoutclk_out(gt2_rxoutclk_out),
        .gt2_rxoutclkfabric_out(gt2_rxoutclkfabric_out),
        .gt2_rxpcommaalignen_in(gt2_rxpcommaalignen_in),
        .gt2_rxpcsreset_in(gt2_rxpcsreset_in),
        .gt2_rxpd_in(gt2_rxpd_in),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxpolarity_in(gt2_rxpolarity_in),
        .gt2_rxprbscntreset_in(gt2_rxprbscntreset_in),
        .gt2_rxprbserr_out(gt2_rxprbserr_out),
        .gt2_rxprbssel_in(gt2_rxprbssel_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxstatus_out(gt2_rxstatus_out),
        .gt2_rxsysclksel_in(gt2_rxsysclksel_in),
        .gt2_rxuserrdy_in(gt2_rxuserrdy_in8_out),
        .gt2_rxusrclk2_in(gt2_rxusrclk2_in),
        .gt2_rxusrclk_in(gt2_rxusrclk_in),
        .gt2_txbufstatus_out(gt2_txbufstatus_out),
        .gt2_txcharisk_in(gt2_txcharisk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txdiffctrl_in(gt2_txdiffctrl_in),
        .gt2_txinhibit_in(gt2_txinhibit_in),
        .gt2_txoutclk_out(gt2_txoutclk_out),
        .gt2_txoutclkfabric_out(gt2_txoutclkfabric_out),
        .gt2_txoutclkpcs_out(gt2_txoutclkpcs_out),
        .gt2_txpcsreset_in(gt2_txpcsreset_in),
        .gt2_txpd_in(gt2_txpd_in),
        .gt2_txpmareset_in(gt2_txpmareset_in),
        .gt2_txpolarity_in(gt2_txpolarity_in),
        .gt2_txpostcursor_in(gt2_txpostcursor_in),
        .gt2_txprbsforceerr_in(gt2_txprbsforceerr_in),
        .gt2_txprbssel_in(gt2_txprbssel_in),
        .gt2_txprecursor_in(gt2_txprecursor_in),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txsysclksel_in(gt2_txsysclksel_in),
        .gt2_txuserrdy_in(gt2_txuserrdy_in5_out),
        .gt2_txusrclk2_in(gt2_txusrclk2_in),
        .gt2_txusrclk_in(gt2_txusrclk_in),
        .gt3_cpllfbclklost_out(gt3_cpllfbclklost_out),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cplllockdetclk_in(gt3_cplllockdetclk_in),
        .gt3_cpllpd_in(gt3_cpllpd_in),
        .gt3_cpllreset_in(gt3_cpllreset_in4_out),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr_in(gt3_drpaddr_in),
        .gt3_drpclk_in(gt3_drpclk_in),
        .gt3_drpdi_in(gt3_drpdi_in),
        .gt3_drpdo_out(gt3_drpdo_out),
        .gt3_drpen_in(gt3_drpen_in),
        .gt3_drprdy_out(gt3_drprdy_out),
        .gt3_drpwe_in(gt3_drpwe_in),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_gtnorthrefclk0_in(gt3_gtnorthrefclk0_in),
        .gt3_gtnorthrefclk1_in(gt3_gtnorthrefclk1_in),
        .gt3_gtrefclk0_in(gt3_gtrefclk0_in),
        .gt3_gtrefclk1_in(gt3_gtrefclk1_in),
        .gt3_gtsouthrefclk0_in(gt3_gtsouthrefclk0_in),
        .gt3_gtsouthrefclk1_in(gt3_gtsouthrefclk1_in),
        .gt3_gttxreset_in(gt3_gttxreset_in1_out),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_loopback_in(gt3_loopback_in),
        .gt3_rxbufreset_in(gt3_rxbufreset_in),
        .gt3_rxbufstatus_out(gt3_rxbufstatus_out),
        .gt3_rxbyteisaligned_out(gt3_rxbyteisaligned_out),
        .gt3_rxbyterealign_out(gt3_rxbyterealign_out),
        .gt3_rxcdrhold_in(gt3_rxcdrhold_in),
        .gt3_rxchariscomma_out(gt3_rxchariscomma_out),
        .gt3_rxcharisk_out(gt3_rxcharisk_out),
        .gt3_rxcommadet_out(gt3_rxcommadet_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxdisperr_out(gt3_rxdisperr_out),
        .gt3_rxlpmen_in(gt3_rxlpmen_in),
        .gt3_rxmcommaalignen_in(gt3_rxmcommaalignen_in),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxnotintable_out(gt3_rxnotintable_out),
        .gt3_rxoutclk_out(gt3_rxoutclk_out),
        .gt3_rxoutclkfabric_out(gt3_rxoutclkfabric_out),
        .gt3_rxpcommaalignen_in(gt3_rxpcommaalignen_in),
        .gt3_rxpcsreset_in(gt3_rxpcsreset_in),
        .gt3_rxpd_in(gt3_rxpd_in),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxpolarity_in(gt3_rxpolarity_in),
        .gt3_rxprbscntreset_in(gt3_rxprbscntreset_in),
        .gt3_rxprbserr_out(gt3_rxprbserr_out),
        .gt3_rxprbssel_in(gt3_rxprbssel_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxstatus_out(gt3_rxstatus_out),
        .gt3_rxsysclksel_in(gt3_rxsysclksel_in),
        .gt3_rxuserrdy_in(gt3_rxuserrdy_in3_out),
        .gt3_rxusrclk2_in(gt3_rxusrclk2_in),
        .gt3_rxusrclk_in(gt3_rxusrclk_in),
        .gt3_txbufstatus_out(gt3_txbufstatus_out),
        .gt3_txcharisk_in(gt3_txcharisk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txdiffctrl_in(gt3_txdiffctrl_in),
        .gt3_txinhibit_in(gt3_txinhibit_in),
        .gt3_txoutclk_out(gt3_txoutclk_out),
        .gt3_txoutclkfabric_out(gt3_txoutclkfabric_out),
        .gt3_txoutclkpcs_out(gt3_txoutclkpcs_out),
        .gt3_txpcsreset_in(gt3_txpcsreset_in),
        .gt3_txpd_in(gt3_txpd_in),
        .gt3_txpmareset_in(gt3_txpmareset_in),
        .gt3_txpolarity_in(gt3_txpolarity_in),
        .gt3_txpostcursor_in(gt3_txpostcursor_in),
        .gt3_txprbsforceerr_in(gt3_txprbsforceerr_in),
        .gt3_txprbssel_in(gt3_txprbssel_in),
        .gt3_txprecursor_in(gt3_txprecursor_in),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txsysclksel_in(gt3_txsysclksel_in),
        .gt3_txuserrdy_in(gt3_txuserrdy_in0_out),
        .gt3_txusrclk2_in(gt3_txusrclk2_in),
        .gt3_txusrclk_in(gt3_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_multi_gt" *) 
module jesd204_phy_1_jesd204_phy_1_gt_multi_gt
   (data_in,
    gt1_txresetdone_out,
    gt2_txresetdone_out,
    gt0_txresetdone_out,
    gt3_txresetdone_out,
    data_sync_reg1,
    gt1_rxresetdone_out,
    gt2_rxresetdone_out,
    gt0_rxresetdone_out,
    gt3_rxresetdone_out,
    gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_rxprbserr_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_drpdo_out,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxdata_out,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_drprdy_out,
    gt1_eyescandataerror_out,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_rxprbserr_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_drpdo_out,
    gt1_txbufstatus_out,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxdata_out,
    gt1_rxmonitorout_out,
    gt1_dmonitorout_out,
    gt1_rxchariscomma_out,
    gt1_rxcharisk_out,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_drprdy_out,
    gt2_eyescandataerror_out,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_rxprbserr_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_drpdo_out,
    gt2_txbufstatus_out,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxdata_out,
    gt2_rxmonitorout_out,
    gt2_dmonitorout_out,
    gt2_rxchariscomma_out,
    gt2_rxcharisk_out,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_drprdy_out,
    gt3_eyescandataerror_out,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_rxprbserr_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_drpdo_out,
    gt3_txbufstatus_out,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxdata_out,
    gt3_rxmonitorout_out,
    gt3_dmonitorout_out,
    gt3_rxchariscomma_out,
    gt3_rxcharisk_out,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gt0_cplllockdetclk_in,
    gt0_cpllpd_in,
    gt0_cpllreset_in,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    SR,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_gttxreset_in,
    gt0_gtxrxn_in,
    gt0_gtxrxp_in,
    GT0_QPLLOUTCLK_IN,
    GT0_QPLLOUTREFCLK_IN,
    gt0_rxbufreset_in,
    gt0_rxcdrhold_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxmcommaalignen_in,
    gt0_rxpcommaalignen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    gt0_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_txinhibit_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    gt0_rxpd_in,
    gt0_rxsysclksel_in,
    gt0_txpd_in,
    gt0_txsysclksel_in,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_txdata_in,
    gt0_txcharisk_in,
    gt0_drpaddr_in,
    gt1_cplllockdetclk_in,
    gt1_cpllpd_in,
    gt1_cpllreset_in,
    gt1_drpclk_in,
    gt1_drpen_in,
    gt1_drpwe_in,
    gt1_eyescanreset_in,
    gt1_eyescantrigger_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    data_sync_reg4,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_gttxreset_in,
    gt1_gtxrxn_in,
    gt1_gtxrxp_in,
    gt1_rxbufreset_in,
    gt1_rxcdrhold_in,
    gt1_rxdfelpmreset_in,
    gt1_rxlpmen_in,
    gt1_rxmcommaalignen_in,
    gt1_rxpcommaalignen_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxpolarity_in,
    gt1_rxprbscntreset_in,
    gt1_rxuserrdy_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_txinhibit_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txpolarity_in,
    gt1_txprbsforceerr_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_drpdi_in,
    gt1_rxmonitorsel_in,
    gt1_rxpd_in,
    gt1_rxsysclksel_in,
    gt1_txpd_in,
    gt1_txsysclksel_in,
    gt1_loopback_in,
    gt1_rxprbssel_in,
    gt1_txprbssel_in,
    gt1_txdiffctrl_in,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_txdata_in,
    gt1_txcharisk_in,
    gt1_drpaddr_in,
    gt2_cplllockdetclk_in,
    gt2_cpllpd_in,
    gt2_cpllreset_in,
    gt2_drpclk_in,
    gt2_drpen_in,
    gt2_drpwe_in,
    gt2_eyescanreset_in,
    gt2_eyescantrigger_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    data_sync_reg4_0,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_gttxreset_in,
    gt2_gtxrxn_in,
    gt2_gtxrxp_in,
    gt2_rxbufreset_in,
    gt2_rxcdrhold_in,
    gt2_rxdfelpmreset_in,
    gt2_rxlpmen_in,
    gt2_rxmcommaalignen_in,
    gt2_rxpcommaalignen_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxpolarity_in,
    gt2_rxprbscntreset_in,
    gt2_rxuserrdy_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_txinhibit_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txpolarity_in,
    gt2_txprbsforceerr_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_drpdi_in,
    gt2_rxmonitorsel_in,
    gt2_rxpd_in,
    gt2_rxsysclksel_in,
    gt2_txpd_in,
    gt2_txsysclksel_in,
    gt2_loopback_in,
    gt2_rxprbssel_in,
    gt2_txprbssel_in,
    gt2_txdiffctrl_in,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_txdata_in,
    gt2_txcharisk_in,
    gt2_drpaddr_in,
    gt3_cplllockdetclk_in,
    gt3_cpllpd_in,
    gt3_cpllreset_in,
    gt3_drpclk_in,
    gt3_drpen_in,
    gt3_drpwe_in,
    gt3_eyescanreset_in,
    gt3_eyescantrigger_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    data_sync_reg4_1,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_gttxreset_in,
    gt3_gtxrxn_in,
    gt3_gtxrxp_in,
    gt3_rxbufreset_in,
    gt3_rxcdrhold_in,
    gt3_rxdfelpmreset_in,
    gt3_rxlpmen_in,
    gt3_rxmcommaalignen_in,
    gt3_rxpcommaalignen_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxpolarity_in,
    gt3_rxprbscntreset_in,
    gt3_rxuserrdy_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_txinhibit_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txpolarity_in,
    gt3_txprbsforceerr_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_drpdi_in,
    gt3_rxmonitorsel_in,
    gt3_rxpd_in,
    gt3_rxsysclksel_in,
    gt3_txpd_in,
    gt3_txsysclksel_in,
    gt3_loopback_in,
    gt3_rxprbssel_in,
    gt3_txprbssel_in,
    gt3_txdiffctrl_in,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_txdata_in,
    gt3_txcharisk_in,
    gt3_drpaddr_in);
  output data_in;
  output gt1_txresetdone_out;
  output gt2_txresetdone_out;
  output gt0_txresetdone_out;
  output gt3_txresetdone_out;
  output data_sync_reg1;
  output gt1_rxresetdone_out;
  output gt2_rxresetdone_out;
  output gt0_rxresetdone_out;
  output gt3_rxresetdone_out;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  output gt0_rxprbserr_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  output [15:0]gt0_drpdo_out;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output [31:0]gt0_rxdata_out;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output [3:0]gt0_rxchariscomma_out;
  output [3:0]gt0_rxcharisk_out;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  output gt1_drprdy_out;
  output gt1_eyescandataerror_out;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  output gt1_rxprbserr_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  output [15:0]gt1_drpdo_out;
  output [1:0]gt1_txbufstatus_out;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output [31:0]gt1_rxdata_out;
  output [6:0]gt1_rxmonitorout_out;
  output [7:0]gt1_dmonitorout_out;
  output [3:0]gt1_rxchariscomma_out;
  output [3:0]gt1_rxcharisk_out;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  output gt2_drprdy_out;
  output gt2_eyescandataerror_out;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  output gt2_rxprbserr_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  output [15:0]gt2_drpdo_out;
  output [1:0]gt2_txbufstatus_out;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output [31:0]gt2_rxdata_out;
  output [6:0]gt2_rxmonitorout_out;
  output [7:0]gt2_dmonitorout_out;
  output [3:0]gt2_rxchariscomma_out;
  output [3:0]gt2_rxcharisk_out;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  output gt3_drprdy_out;
  output gt3_eyescandataerror_out;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  output gt3_rxprbserr_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  output [15:0]gt3_drpdo_out;
  output [1:0]gt3_txbufstatus_out;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output [31:0]gt3_rxdata_out;
  output [6:0]gt3_rxmonitorout_out;
  output [7:0]gt3_dmonitorout_out;
  output [3:0]gt3_rxchariscomma_out;
  output [3:0]gt3_rxcharisk_out;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllpd_in;
  input gt0_cpllreset_in;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input [0:0]SR;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input gt0_gttxreset_in;
  input gt0_gtxrxn_in;
  input gt0_gtxrxp_in;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;
  input gt0_rxbufreset_in;
  input gt0_rxcdrhold_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcommaalignen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input gt0_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  input gt0_txinhibit_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_rxsysclksel_in;
  input [1:0]gt0_txpd_in;
  input [1:0]gt0_txsysclksel_in;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [31:0]gt0_txdata_in;
  input [3:0]gt0_txcharisk_in;
  input [8:0]gt0_drpaddr_in;
  input gt1_cplllockdetclk_in;
  input gt1_cpllpd_in;
  input gt1_cpllreset_in;
  input gt1_drpclk_in;
  input gt1_drpen_in;
  input gt1_drpwe_in;
  input gt1_eyescanreset_in;
  input gt1_eyescantrigger_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input [0:0]data_sync_reg4;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input gt1_gttxreset_in;
  input gt1_gtxrxn_in;
  input gt1_gtxrxp_in;
  input gt1_rxbufreset_in;
  input gt1_rxcdrhold_in;
  input gt1_rxdfelpmreset_in;
  input gt1_rxlpmen_in;
  input gt1_rxmcommaalignen_in;
  input gt1_rxpcommaalignen_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxpolarity_in;
  input gt1_rxprbscntreset_in;
  input gt1_rxuserrdy_in;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  input gt1_txinhibit_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  input gt1_txpolarity_in;
  input gt1_txprbsforceerr_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input [15:0]gt1_drpdi_in;
  input [1:0]gt1_rxmonitorsel_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_rxsysclksel_in;
  input [1:0]gt1_txpd_in;
  input [1:0]gt1_txsysclksel_in;
  input [2:0]gt1_loopback_in;
  input [2:0]gt1_rxprbssel_in;
  input [2:0]gt1_txprbssel_in;
  input [3:0]gt1_txdiffctrl_in;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input [31:0]gt1_txdata_in;
  input [3:0]gt1_txcharisk_in;
  input [8:0]gt1_drpaddr_in;
  input gt2_cplllockdetclk_in;
  input gt2_cpllpd_in;
  input gt2_cpllreset_in;
  input gt2_drpclk_in;
  input gt2_drpen_in;
  input gt2_drpwe_in;
  input gt2_eyescanreset_in;
  input gt2_eyescantrigger_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input [0:0]data_sync_reg4_0;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input gt2_gttxreset_in;
  input gt2_gtxrxn_in;
  input gt2_gtxrxp_in;
  input gt2_rxbufreset_in;
  input gt2_rxcdrhold_in;
  input gt2_rxdfelpmreset_in;
  input gt2_rxlpmen_in;
  input gt2_rxmcommaalignen_in;
  input gt2_rxpcommaalignen_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxpolarity_in;
  input gt2_rxprbscntreset_in;
  input gt2_rxuserrdy_in;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  input gt2_txinhibit_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  input gt2_txpolarity_in;
  input gt2_txprbsforceerr_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input [15:0]gt2_drpdi_in;
  input [1:0]gt2_rxmonitorsel_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_rxsysclksel_in;
  input [1:0]gt2_txpd_in;
  input [1:0]gt2_txsysclksel_in;
  input [2:0]gt2_loopback_in;
  input [2:0]gt2_rxprbssel_in;
  input [2:0]gt2_txprbssel_in;
  input [3:0]gt2_txdiffctrl_in;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input [31:0]gt2_txdata_in;
  input [3:0]gt2_txcharisk_in;
  input [8:0]gt2_drpaddr_in;
  input gt3_cplllockdetclk_in;
  input gt3_cpllpd_in;
  input gt3_cpllreset_in;
  input gt3_drpclk_in;
  input gt3_drpen_in;
  input gt3_drpwe_in;
  input gt3_eyescanreset_in;
  input gt3_eyescantrigger_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input [0:0]data_sync_reg4_1;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input gt3_gttxreset_in;
  input gt3_gtxrxn_in;
  input gt3_gtxrxp_in;
  input gt3_rxbufreset_in;
  input gt3_rxcdrhold_in;
  input gt3_rxdfelpmreset_in;
  input gt3_rxlpmen_in;
  input gt3_rxmcommaalignen_in;
  input gt3_rxpcommaalignen_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxpolarity_in;
  input gt3_rxprbscntreset_in;
  input gt3_rxuserrdy_in;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  input gt3_txinhibit_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  input gt3_txpolarity_in;
  input gt3_txprbsforceerr_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input [15:0]gt3_drpdi_in;
  input [1:0]gt3_rxmonitorsel_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_rxsysclksel_in;
  input [1:0]gt3_txpd_in;
  input [1:0]gt3_txsysclksel_in;
  input [2:0]gt3_loopback_in;
  input [2:0]gt3_rxprbssel_in;
  input [2:0]gt3_txprbssel_in;
  input [3:0]gt3_txdiffctrl_in;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input [31:0]gt3_txdata_in;
  input [3:0]gt3_txcharisk_in;
  input [8:0]gt3_drpaddr_in;

  wire GT0_QPLLOUTCLK_IN;
  wire GT0_QPLLOUTREFCLK_IN;
  wire [0:0]SR;
  wire data_in;
  wire data_sync_reg1;
  wire [0:0]data_sync_reg4;
  wire [0:0]data_sync_reg4_0;
  wire [0:0]data_sync_reg4_1;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllpd_in;
  wire gt0_cpllreset_in;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire [2:0]gt0_loopback_in;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [3:0]gt0_rxchariscomma_out;
  wire [3:0]gt0_rxcharisk_out;
  wire gt0_rxcommadet_out;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelpmreset_in;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpcommaalignen_in;
  wire gt0_rxpcsreset_in;
  wire [1:0]gt0_rxpd_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [2:0]gt0_rxstatus_out;
  wire [1:0]gt0_rxsysclksel_in;
  wire gt0_rxuserrdy_in;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txinhibit_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txpcsreset_in;
  wire [1:0]gt0_txpd_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire [1:0]gt0_txsysclksel_in;
  wire gt0_txuserrdy_in;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire gt1_cpllfbclklost_out;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllpd_in;
  wire gt1_cpllreset_in;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [2:0]gt1_loopback_in;
  wire gt1_rxbufreset_in;
  wire [2:0]gt1_rxbufstatus_out;
  wire gt1_rxbyteisaligned_out;
  wire gt1_rxbyterealign_out;
  wire gt1_rxcdrhold_in;
  wire [3:0]gt1_rxchariscomma_out;
  wire [3:0]gt1_rxcharisk_out;
  wire gt1_rxcommadet_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelpmreset_in;
  wire [3:0]gt1_rxdisperr_out;
  wire gt1_rxlpmen_in;
  wire gt1_rxmcommaalignen_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpcommaalignen_in;
  wire gt1_rxpcsreset_in;
  wire [1:0]gt1_rxpd_in;
  wire gt1_rxpmareset_in;
  wire gt1_rxpolarity_in;
  wire gt1_rxprbscntreset_in;
  wire gt1_rxprbserr_out;
  wire [2:0]gt1_rxprbssel_in;
  wire gt1_rxresetdone_out;
  wire [2:0]gt1_rxstatus_out;
  wire [1:0]gt1_rxsysclksel_in;
  wire gt1_rxuserrdy_in;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire [1:0]gt1_txbufstatus_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire [3:0]gt1_txdiffctrl_in;
  wire gt1_txinhibit_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txpcsreset_in;
  wire [1:0]gt1_txpd_in;
  wire gt1_txpmareset_in;
  wire gt1_txpolarity_in;
  wire [4:0]gt1_txpostcursor_in;
  wire gt1_txprbsforceerr_in;
  wire [2:0]gt1_txprbssel_in;
  wire [4:0]gt1_txprecursor_in;
  wire gt1_txresetdone_out;
  wire [1:0]gt1_txsysclksel_in;
  wire gt1_txuserrdy_in;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire gt2_cpllfbclklost_out;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllpd_in;
  wire gt2_cpllreset_in;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_in;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [2:0]gt2_loopback_in;
  wire gt2_rxbufreset_in;
  wire [2:0]gt2_rxbufstatus_out;
  wire gt2_rxbyteisaligned_out;
  wire gt2_rxbyterealign_out;
  wire gt2_rxcdrhold_in;
  wire [3:0]gt2_rxchariscomma_out;
  wire [3:0]gt2_rxcharisk_out;
  wire gt2_rxcommadet_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelpmreset_in;
  wire [3:0]gt2_rxdisperr_out;
  wire gt2_rxlpmen_in;
  wire gt2_rxmcommaalignen_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpcommaalignen_in;
  wire gt2_rxpcsreset_in;
  wire [1:0]gt2_rxpd_in;
  wire gt2_rxpmareset_in;
  wire gt2_rxpolarity_in;
  wire gt2_rxprbscntreset_in;
  wire gt2_rxprbserr_out;
  wire [2:0]gt2_rxprbssel_in;
  wire gt2_rxresetdone_out;
  wire [2:0]gt2_rxstatus_out;
  wire [1:0]gt2_rxsysclksel_in;
  wire gt2_rxuserrdy_in;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire [1:0]gt2_txbufstatus_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire [3:0]gt2_txdiffctrl_in;
  wire gt2_txinhibit_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txpcsreset_in;
  wire [1:0]gt2_txpd_in;
  wire gt2_txpmareset_in;
  wire gt2_txpolarity_in;
  wire [4:0]gt2_txpostcursor_in;
  wire gt2_txprbsforceerr_in;
  wire [2:0]gt2_txprbssel_in;
  wire [4:0]gt2_txprecursor_in;
  wire gt2_txresetdone_out;
  wire [1:0]gt2_txsysclksel_in;
  wire gt2_txuserrdy_in;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire gt3_cpllfbclklost_out;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllpd_in;
  wire gt3_cpllreset_in;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_in;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [2:0]gt3_loopback_in;
  wire gt3_rxbufreset_in;
  wire [2:0]gt3_rxbufstatus_out;
  wire gt3_rxbyteisaligned_out;
  wire gt3_rxbyterealign_out;
  wire gt3_rxcdrhold_in;
  wire [3:0]gt3_rxchariscomma_out;
  wire [3:0]gt3_rxcharisk_out;
  wire gt3_rxcommadet_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelpmreset_in;
  wire [3:0]gt3_rxdisperr_out;
  wire gt3_rxlpmen_in;
  wire gt3_rxmcommaalignen_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpcommaalignen_in;
  wire gt3_rxpcsreset_in;
  wire [1:0]gt3_rxpd_in;
  wire gt3_rxpmareset_in;
  wire gt3_rxpolarity_in;
  wire gt3_rxprbscntreset_in;
  wire gt3_rxprbserr_out;
  wire [2:0]gt3_rxprbssel_in;
  wire gt3_rxresetdone_out;
  wire [2:0]gt3_rxstatus_out;
  wire [1:0]gt3_rxsysclksel_in;
  wire gt3_rxuserrdy_in;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire [1:0]gt3_txbufstatus_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire [3:0]gt3_txdiffctrl_in;
  wire gt3_txinhibit_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txpcsreset_in;
  wire [1:0]gt3_txpd_in;
  wire gt3_txpmareset_in;
  wire gt3_txpolarity_in;
  wire [4:0]gt3_txpostcursor_in;
  wire gt3_txprbsforceerr_in;
  wire [2:0]gt3_txprbssel_in;
  wire [4:0]gt3_txprecursor_in;
  wire gt3_txresetdone_out;
  wire [1:0]gt3_txsysclksel_in;
  wire gt3_txuserrdy_in;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;

  jesd204_phy_1_jesd204_phy_1_gt_GT gt0_jesd204_phy_1_gt_i
       (.GT0_QPLLOUTCLK_IN(GT0_QPLLOUTCLK_IN),
        .GT0_QPLLOUTREFCLK_IN(GT0_QPLLOUTREFCLK_IN),
        .SR(SR),
        .gt0_cpllfbclklost_out(gt0_cpllfbclklost_out),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cplllockdetclk_in(gt0_cplllockdetclk_in),
        .gt0_cpllpd_in(gt0_cpllpd_in),
        .gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtnorthrefclk0_in(gt0_gtnorthrefclk0_in),
        .gt0_gtnorthrefclk1_in(gt0_gtnorthrefclk1_in),
        .gt0_gtrefclk0_in(gt0_gtrefclk0_in),
        .gt0_gtrefclk1_in(gt0_gtrefclk1_in),
        .gt0_gtsouthrefclk0_in(gt0_gtsouthrefclk0_in),
        .gt0_gtsouthrefclk1_in(gt0_gtsouthrefclk1_in),
        .gt0_gttxreset_in(gt0_gttxreset_in),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcdrhold_in(gt0_rxcdrhold_in),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxoutclkfabric_out(gt0_rxoutclkfabric_out),
        .gt0_rxpcommaalignen_in(gt0_rxpcommaalignen_in),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxstatus_out(gt0_rxstatus_out),
        .gt0_rxsysclksel_in(gt0_rxsysclksel_in),
        .gt0_rxuserrdy_in(gt0_rxuserrdy_in),
        .gt0_rxusrclk2_in(gt0_rxusrclk2_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txcharisk_in(gt0_txcharisk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txinhibit_in(gt0_txinhibit_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txoutclkfabric_out(gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out(gt0_txoutclkpcs_out),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txsysclksel_in(gt0_txsysclksel_in),
        .gt0_txuserrdy_in(gt0_txuserrdy_in),
        .gt0_txusrclk2_in(gt0_txusrclk2_in),
        .gt0_txusrclk_in(gt0_txusrclk_in));
  jesd204_phy_1_jesd204_phy_1_gt_GT_7 gt1_jesd204_phy_1_gt_i
       (.GT0_QPLLOUTCLK_IN(GT0_QPLLOUTCLK_IN),
        .GT0_QPLLOUTREFCLK_IN(GT0_QPLLOUTREFCLK_IN),
        .data_in(data_in),
        .data_sync_reg1(data_sync_reg1),
        .data_sync_reg4(data_sync_reg4),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt1_cpllfbclklost_out(gt1_cpllfbclklost_out),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cplllockdetclk_in(gt1_cplllockdetclk_in),
        .gt1_cpllpd_in(gt1_cpllpd_in),
        .gt1_cpllreset_in(gt1_cpllreset_in),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr_in(gt1_drpaddr_in),
        .gt1_drpclk_in(gt1_drpclk_in),
        .gt1_drpdi_in(gt1_drpdi_in),
        .gt1_drpdo_out(gt1_drpdo_out),
        .gt1_drpen_in(gt1_drpen_in),
        .gt1_drprdy_out(gt1_drprdy_out),
        .gt1_drpwe_in(gt1_drpwe_in),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_gtnorthrefclk0_in(gt1_gtnorthrefclk0_in),
        .gt1_gtnorthrefclk1_in(gt1_gtnorthrefclk1_in),
        .gt1_gtrefclk0_in(gt1_gtrefclk0_in),
        .gt1_gtrefclk1_in(gt1_gtrefclk1_in),
        .gt1_gtsouthrefclk0_in(gt1_gtsouthrefclk0_in),
        .gt1_gtsouthrefclk1_in(gt1_gtsouthrefclk1_in),
        .gt1_gttxreset_in(gt1_gttxreset_in),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_loopback_in(gt1_loopback_in),
        .gt1_rxbufreset_in(gt1_rxbufreset_in),
        .gt1_rxbufstatus_out(gt1_rxbufstatus_out),
        .gt1_rxbyteisaligned_out(gt1_rxbyteisaligned_out),
        .gt1_rxbyterealign_out(gt1_rxbyterealign_out),
        .gt1_rxcdrhold_in(gt1_rxcdrhold_in),
        .gt1_rxchariscomma_out(gt1_rxchariscomma_out),
        .gt1_rxcharisk_out(gt1_rxcharisk_out),
        .gt1_rxcommadet_out(gt1_rxcommadet_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxdisperr_out(gt1_rxdisperr_out),
        .gt1_rxlpmen_in(gt1_rxlpmen_in),
        .gt1_rxmcommaalignen_in(gt1_rxmcommaalignen_in),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxnotintable_out(gt1_rxnotintable_out),
        .gt1_rxoutclk_out(gt1_rxoutclk_out),
        .gt1_rxoutclkfabric_out(gt1_rxoutclkfabric_out),
        .gt1_rxpcommaalignen_in(gt1_rxpcommaalignen_in),
        .gt1_rxpcsreset_in(gt1_rxpcsreset_in),
        .gt1_rxpd_in(gt1_rxpd_in),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxpolarity_in(gt1_rxpolarity_in),
        .gt1_rxprbscntreset_in(gt1_rxprbscntreset_in),
        .gt1_rxprbserr_out(gt1_rxprbserr_out),
        .gt1_rxprbssel_in(gt1_rxprbssel_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxstatus_out(gt1_rxstatus_out),
        .gt1_rxsysclksel_in(gt1_rxsysclksel_in),
        .gt1_rxuserrdy_in(gt1_rxuserrdy_in),
        .gt1_rxusrclk2_in(gt1_rxusrclk2_in),
        .gt1_rxusrclk_in(gt1_rxusrclk_in),
        .gt1_txbufstatus_out(gt1_txbufstatus_out),
        .gt1_txcharisk_in(gt1_txcharisk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txdiffctrl_in(gt1_txdiffctrl_in),
        .gt1_txinhibit_in(gt1_txinhibit_in),
        .gt1_txoutclk_out(gt1_txoutclk_out),
        .gt1_txoutclkfabric_out(gt1_txoutclkfabric_out),
        .gt1_txoutclkpcs_out(gt1_txoutclkpcs_out),
        .gt1_txpcsreset_in(gt1_txpcsreset_in),
        .gt1_txpd_in(gt1_txpd_in),
        .gt1_txpmareset_in(gt1_txpmareset_in),
        .gt1_txpolarity_in(gt1_txpolarity_in),
        .gt1_txpostcursor_in(gt1_txpostcursor_in),
        .gt1_txprbsforceerr_in(gt1_txprbsforceerr_in),
        .gt1_txprbssel_in(gt1_txprbssel_in),
        .gt1_txprecursor_in(gt1_txprecursor_in),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txsysclksel_in(gt1_txsysclksel_in),
        .gt1_txuserrdy_in(gt1_txuserrdy_in),
        .gt1_txusrclk2_in(gt1_txusrclk2_in),
        .gt1_txusrclk_in(gt1_txusrclk_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_txresetdone_out(gt3_txresetdone_out));
  jesd204_phy_1_jesd204_phy_1_gt_GT_8 gt2_jesd204_phy_1_gt_i
       (.GT0_QPLLOUTCLK_IN(GT0_QPLLOUTCLK_IN),
        .GT0_QPLLOUTREFCLK_IN(GT0_QPLLOUTREFCLK_IN),
        .data_sync_reg4(data_sync_reg4_0),
        .gt2_cpllfbclklost_out(gt2_cpllfbclklost_out),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cplllockdetclk_in(gt2_cplllockdetclk_in),
        .gt2_cpllpd_in(gt2_cpllpd_in),
        .gt2_cpllreset_in(gt2_cpllreset_in),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr_in(gt2_drpaddr_in),
        .gt2_drpclk_in(gt2_drpclk_in),
        .gt2_drpdi_in(gt2_drpdi_in),
        .gt2_drpdo_out(gt2_drpdo_out),
        .gt2_drpen_in(gt2_drpen_in),
        .gt2_drprdy_out(gt2_drprdy_out),
        .gt2_drpwe_in(gt2_drpwe_in),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_gtnorthrefclk0_in(gt2_gtnorthrefclk0_in),
        .gt2_gtnorthrefclk1_in(gt2_gtnorthrefclk1_in),
        .gt2_gtrefclk0_in(gt2_gtrefclk0_in),
        .gt2_gtrefclk1_in(gt2_gtrefclk1_in),
        .gt2_gtsouthrefclk0_in(gt2_gtsouthrefclk0_in),
        .gt2_gtsouthrefclk1_in(gt2_gtsouthrefclk1_in),
        .gt2_gttxreset_in(gt2_gttxreset_in),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_loopback_in(gt2_loopback_in),
        .gt2_rxbufreset_in(gt2_rxbufreset_in),
        .gt2_rxbufstatus_out(gt2_rxbufstatus_out),
        .gt2_rxbyteisaligned_out(gt2_rxbyteisaligned_out),
        .gt2_rxbyterealign_out(gt2_rxbyterealign_out),
        .gt2_rxcdrhold_in(gt2_rxcdrhold_in),
        .gt2_rxchariscomma_out(gt2_rxchariscomma_out),
        .gt2_rxcharisk_out(gt2_rxcharisk_out),
        .gt2_rxcommadet_out(gt2_rxcommadet_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxdisperr_out(gt2_rxdisperr_out),
        .gt2_rxlpmen_in(gt2_rxlpmen_in),
        .gt2_rxmcommaalignen_in(gt2_rxmcommaalignen_in),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxnotintable_out(gt2_rxnotintable_out),
        .gt2_rxoutclk_out(gt2_rxoutclk_out),
        .gt2_rxoutclkfabric_out(gt2_rxoutclkfabric_out),
        .gt2_rxpcommaalignen_in(gt2_rxpcommaalignen_in),
        .gt2_rxpcsreset_in(gt2_rxpcsreset_in),
        .gt2_rxpd_in(gt2_rxpd_in),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxpolarity_in(gt2_rxpolarity_in),
        .gt2_rxprbscntreset_in(gt2_rxprbscntreset_in),
        .gt2_rxprbserr_out(gt2_rxprbserr_out),
        .gt2_rxprbssel_in(gt2_rxprbssel_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxstatus_out(gt2_rxstatus_out),
        .gt2_rxsysclksel_in(gt2_rxsysclksel_in),
        .gt2_rxuserrdy_in(gt2_rxuserrdy_in),
        .gt2_rxusrclk2_in(gt2_rxusrclk2_in),
        .gt2_rxusrclk_in(gt2_rxusrclk_in),
        .gt2_txbufstatus_out(gt2_txbufstatus_out),
        .gt2_txcharisk_in(gt2_txcharisk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txdiffctrl_in(gt2_txdiffctrl_in),
        .gt2_txinhibit_in(gt2_txinhibit_in),
        .gt2_txoutclk_out(gt2_txoutclk_out),
        .gt2_txoutclkfabric_out(gt2_txoutclkfabric_out),
        .gt2_txoutclkpcs_out(gt2_txoutclkpcs_out),
        .gt2_txpcsreset_in(gt2_txpcsreset_in),
        .gt2_txpd_in(gt2_txpd_in),
        .gt2_txpmareset_in(gt2_txpmareset_in),
        .gt2_txpolarity_in(gt2_txpolarity_in),
        .gt2_txpostcursor_in(gt2_txpostcursor_in),
        .gt2_txprbsforceerr_in(gt2_txprbsforceerr_in),
        .gt2_txprbssel_in(gt2_txprbssel_in),
        .gt2_txprecursor_in(gt2_txprecursor_in),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txsysclksel_in(gt2_txsysclksel_in),
        .gt2_txuserrdy_in(gt2_txuserrdy_in),
        .gt2_txusrclk2_in(gt2_txusrclk2_in),
        .gt2_txusrclk_in(gt2_txusrclk_in));
  jesd204_phy_1_jesd204_phy_1_gt_GT_9 gt3_jesd204_phy_1_gt_i
       (.GT0_QPLLOUTCLK_IN(GT0_QPLLOUTCLK_IN),
        .GT0_QPLLOUTREFCLK_IN(GT0_QPLLOUTREFCLK_IN),
        .data_sync_reg4(data_sync_reg4_1),
        .gt3_cpllfbclklost_out(gt3_cpllfbclklost_out),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cplllockdetclk_in(gt3_cplllockdetclk_in),
        .gt3_cpllpd_in(gt3_cpllpd_in),
        .gt3_cpllreset_in(gt3_cpllreset_in),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr_in(gt3_drpaddr_in),
        .gt3_drpclk_in(gt3_drpclk_in),
        .gt3_drpdi_in(gt3_drpdi_in),
        .gt3_drpdo_out(gt3_drpdo_out),
        .gt3_drpen_in(gt3_drpen_in),
        .gt3_drprdy_out(gt3_drprdy_out),
        .gt3_drpwe_in(gt3_drpwe_in),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_gtnorthrefclk0_in(gt3_gtnorthrefclk0_in),
        .gt3_gtnorthrefclk1_in(gt3_gtnorthrefclk1_in),
        .gt3_gtrefclk0_in(gt3_gtrefclk0_in),
        .gt3_gtrefclk1_in(gt3_gtrefclk1_in),
        .gt3_gtsouthrefclk0_in(gt3_gtsouthrefclk0_in),
        .gt3_gtsouthrefclk1_in(gt3_gtsouthrefclk1_in),
        .gt3_gttxreset_in(gt3_gttxreset_in),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_loopback_in(gt3_loopback_in),
        .gt3_rxbufreset_in(gt3_rxbufreset_in),
        .gt3_rxbufstatus_out(gt3_rxbufstatus_out),
        .gt3_rxbyteisaligned_out(gt3_rxbyteisaligned_out),
        .gt3_rxbyterealign_out(gt3_rxbyterealign_out),
        .gt3_rxcdrhold_in(gt3_rxcdrhold_in),
        .gt3_rxchariscomma_out(gt3_rxchariscomma_out),
        .gt3_rxcharisk_out(gt3_rxcharisk_out),
        .gt3_rxcommadet_out(gt3_rxcommadet_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxdisperr_out(gt3_rxdisperr_out),
        .gt3_rxlpmen_in(gt3_rxlpmen_in),
        .gt3_rxmcommaalignen_in(gt3_rxmcommaalignen_in),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxnotintable_out(gt3_rxnotintable_out),
        .gt3_rxoutclk_out(gt3_rxoutclk_out),
        .gt3_rxoutclkfabric_out(gt3_rxoutclkfabric_out),
        .gt3_rxpcommaalignen_in(gt3_rxpcommaalignen_in),
        .gt3_rxpcsreset_in(gt3_rxpcsreset_in),
        .gt3_rxpd_in(gt3_rxpd_in),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxpolarity_in(gt3_rxpolarity_in),
        .gt3_rxprbscntreset_in(gt3_rxprbscntreset_in),
        .gt3_rxprbserr_out(gt3_rxprbserr_out),
        .gt3_rxprbssel_in(gt3_rxprbssel_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxstatus_out(gt3_rxstatus_out),
        .gt3_rxsysclksel_in(gt3_rxsysclksel_in),
        .gt3_rxuserrdy_in(gt3_rxuserrdy_in),
        .gt3_rxusrclk2_in(gt3_rxusrclk2_in),
        .gt3_rxusrclk_in(gt3_rxusrclk_in),
        .gt3_txbufstatus_out(gt3_txbufstatus_out),
        .gt3_txcharisk_in(gt3_txcharisk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txdiffctrl_in(gt3_txdiffctrl_in),
        .gt3_txinhibit_in(gt3_txinhibit_in),
        .gt3_txoutclk_out(gt3_txoutclk_out),
        .gt3_txoutclkfabric_out(gt3_txoutclkfabric_out),
        .gt3_txoutclkpcs_out(gt3_txoutclkpcs_out),
        .gt3_txpcsreset_in(gt3_txpcsreset_in),
        .gt3_txpd_in(gt3_txpd_in),
        .gt3_txpmareset_in(gt3_txpmareset_in),
        .gt3_txpolarity_in(gt3_txpolarity_in),
        .gt3_txpostcursor_in(gt3_txpostcursor_in),
        .gt3_txprbsforceerr_in(gt3_txprbsforceerr_in),
        .gt3_txprbssel_in(gt3_txprbssel_in),
        .gt3_txprecursor_in(gt3_txprecursor_in),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txsysclksel_in(gt3_txsysclksel_in),
        .gt3_txuserrdy_in(gt3_txuserrdy_in),
        .gt3_txusrclk2_in(gt3_txusrclk2_in),
        .gt3_txusrclk_in(gt3_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block
   (data_out,
    E,
    gt0_txsysclksel_in,
    data_sync_reg6_0,
    time_out_2ms_reg,
    pll_reset_asserted_reg,
    out,
    wait_time_done,
    \FSM_sequential_tx_state_reg[1] ,
    init_wait_done_reg,
    reset_time_out_reg,
    reset_time_out_reg_0,
    SYSCLK_IN);
  output data_out;
  output [0:0]E;
  input [0:0]gt0_txsysclksel_in;
  input data_sync_reg6_0;
  input time_out_2ms_reg;
  input pll_reset_asserted_reg;
  input [3:0]out;
  input wait_time_done;
  input \FSM_sequential_tx_state_reg[1] ;
  input init_wait_done_reg;
  input reset_time_out_reg;
  input reset_time_out_reg_0;
  input SYSCLK_IN;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_state_reg[1] ;
  wire \FSM_sequential_tx_state_reg[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state_reg[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state_reg[3]_i_8_n_0 ;
  wire SYSCLK_IN;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire [0:0]gt0_txsysclksel_in;
  wire init_wait_done_reg;
  wire [3:0]out;
  wire pll_reset_asserted_reg;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire time_out_2ms_reg;
  wire tx_state04_out;
  wire wait_time_done;

  LUT6 #(
    .INIT(64'h0033B8BB0033B888)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[3]_i_3_n_0 ),
        .I1(out[0]),
        .I2(wait_time_done),
        .I3(\FSM_sequential_tx_state_reg[1] ),
        .I4(out[3]),
        .I5(init_wait_done_reg),
        .O(E));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \FSM_sequential_tx_state[3]_i_11 
       (.I0(data_out),
        .I1(gt0_txsysclksel_in),
        .I2(data_sync_reg6_0),
        .I3(time_out_2ms_reg),
        .O(\FSM_sequential_tx_state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(pll_reset_asserted_reg),
        .I1(data_out),
        .I2(gt0_txsysclksel_in),
        .I3(data_sync_reg6_0),
        .O(tx_state04_out));
  MUXF8 \FSM_sequential_tx_state_reg[3]_i_3 
       (.I0(\FSM_sequential_tx_state_reg[3]_i_7_n_0 ),
        .I1(\FSM_sequential_tx_state_reg[3]_i_8_n_0 ),
        .O(\FSM_sequential_tx_state_reg[3]_i_3_n_0 ),
        .S(out[1]));
  MUXF7 \FSM_sequential_tx_state_reg[3]_i_7 
       (.I0(tx_state04_out),
        .I1(reset_time_out_reg),
        .O(\FSM_sequential_tx_state_reg[3]_i_7_n_0 ),
        .S(out[2]));
  MUXF7 \FSM_sequential_tx_state_reg[3]_i_8 
       (.I0(\FSM_sequential_tx_state[3]_i_11_n_0 ),
        .I1(reset_time_out_reg_0),
        .O(\FSM_sequential_tx_state_reg[3]_i_8_n_0 ),
        .S(out[2]));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_10
   (data_out,
    reset_time_out_reg,
    gt0_txsysclksel_in,
    data_sync_reg6_0,
    reset_time_out,
    txresetdone_s3_reg,
    out,
    init_wait_done_reg,
    GT0_QPLLLOCK_IN,
    SYSCLK_IN);
  output data_out;
  output reset_time_out_reg;
  input [0:0]gt0_txsysclksel_in;
  input data_sync_reg6_0;
  input reset_time_out;
  input txresetdone_s3_reg;
  input [3:0]out;
  input init_wait_done_reg;
  input GT0_QPLLLOCK_IN;
  input SYSCLK_IN;

  wire GT0_QPLLLOCK_IN;
  wire SYSCLK_IN;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire [0:0]gt0_txsysclksel_in;
  wire init_wait_done_reg;
  wire [3:0]out;
  wire reset_time_out;
  wire reset_time_out_1;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_reg;
  wire tx_state0;
  wire txresetdone_s3_reg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(GT0_QPLLLOCK_IN),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_time_out_i_1
       (.I0(reset_time_out_1),
        .I1(reset_time_out_i_3_n_0),
        .I2(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h00CFC0EF00C0C0E0)) 
    reset_time_out_i_2
       (.I0(tx_state0),
        .I1(txresetdone_s3_reg),
        .I2(out[0]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(init_wait_done_reg),
        .O(reset_time_out_1));
  LUT6 #(
    .INIT(64'h303030302020FFFC)) 
    reset_time_out_i_3
       (.I0(tx_state0),
        .I1(out[3]),
        .I2(out[0]),
        .I3(init_wait_done_reg),
        .I4(out[1]),
        .I5(out[2]),
        .O(reset_time_out_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_time_out_i_4__0
       (.I0(data_out),
        .I1(gt0_txsysclksel_in),
        .I2(data_sync_reg6_0),
        .O(tx_state0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_11
   (data_out,
    data_in,
    SYSCLK_IN);
  output data_out;
  input data_in;
  input SYSCLK_IN;

  wire SYSCLK_IN;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_12
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    \mmcm_lock_count_reg[4] ,
    SYSCLK_IN);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input \mmcm_lock_count_reg[4] ;
  input SYSCLK_IN;

  wire [1:0]Q;
  wire [0:0]SR;
  wire SYSCLK_IN;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire \mmcm_lock_count_reg[4] ;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\mmcm_lock_count_reg[4] ),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_13
   (data_out,
    data_in,
    gt0_txusrclk_in);
  output data_out;
  input data_in;
  input gt0_txusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_14
   (data_out,
    data_in,
    SYSCLK_IN);
  output data_out;
  input data_in;
  input SYSCLK_IN;

  wire SYSCLK_IN;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_15
   (data_out,
    GT_TX_FSM_RESET_DONE_OUT,
    gt0_txusrclk_in);
  output data_out;
  input GT_TX_FSM_RESET_DONE_OUT;
  input gt0_txusrclk_in;

  wire GT_TX_FSM_RESET_DONE_OUT;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(GT_TX_FSM_RESET_DONE_OUT),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_16
   (data_out,
    SYSCLK_IN);
  output data_out;
  input SYSCLK_IN;

  wire SYSCLK_IN;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_17
   (rx_state01_out,
    \FSM_sequential_rx_state_reg[0] ,
    reset_time_out_reg,
    data_out,
    pll_reset_asserted_reg,
    gt0_txsysclksel_in,
    gt0_rxsysclksel_in,
    time_out_2ms_reg,
    out,
    rxresetdone_s3,
    reset_time_out_reg_0,
    gt3_rx_cdrlocked_reg,
    \FSM_sequential_rx_state_reg[3] ,
    data_sync_reg6_0,
    gt3_rx_cdrlocked_reg_0,
    GT0_QPLLLOCK_IN,
    SYSCLK_IN);
  output rx_state01_out;
  output \FSM_sequential_rx_state_reg[0] ;
  output reset_time_out_reg;
  input data_out;
  input pll_reset_asserted_reg;
  input [0:0]gt0_txsysclksel_in;
  input [0:0]gt0_rxsysclksel_in;
  input time_out_2ms_reg;
  input [3:0]out;
  input rxresetdone_s3;
  input reset_time_out_reg_0;
  input gt3_rx_cdrlocked_reg;
  input \FSM_sequential_rx_state_reg[3] ;
  input data_sync_reg6_0;
  input gt3_rx_cdrlocked_reg_0;
  input GT0_QPLLLOCK_IN;
  input SYSCLK_IN;

  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire GT0_QPLLLOCK_IN;
  wire SYSCLK_IN;
  wire adapt_count_reset;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire [0:0]gt0_rxsysclksel_in;
  wire [0:0]gt0_txsysclksel_in;
  wire gt3_rx_cdrlocked_reg;
  wire gt3_rx_cdrlocked_reg_0;
  wire [3:0]out;
  wire pll_reset_asserted_reg;
  wire qplllock_sync;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_i_5__0_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire rx_state01_out;
  wire rxresetdone_s3;
  wire time_out_2ms_reg;

  LUT6 #(
    .INIT(64'h00000000FE0EFEAE)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(time_out_2ms_reg),
        .I1(adapt_count_reset),
        .I2(out[2]),
        .I3(rxresetdone_s3),
        .I4(reset_time_out_reg_0),
        .I5(out[3]),
        .O(\FSM_sequential_rx_state_reg[0] ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(GT0_QPLLLOCK_IN),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(qplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEAEFFFFFEAE0000)) 
    reset_time_out_i_1__0
       (.I0(gt3_rx_cdrlocked_reg),
        .I1(reset_time_out_i_3__0_n_0),
        .I2(out[2]),
        .I3(\FSM_sequential_rx_state_reg[3] ),
        .I4(reset_time_out_i_5__0_n_0),
        .I5(reset_time_out_reg_0),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h303FBBBF303F888C)) 
    reset_time_out_i_3__0
       (.I0(adapt_count_reset),
        .I1(out[1]),
        .I2(data_sync_reg6_0),
        .I3(out[0]),
        .I4(out[3]),
        .I5(rx_state01_out),
        .O(reset_time_out_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0F30BFB80F30BCB8)) 
    reset_time_out_i_5__0
       (.I0(gt3_rx_cdrlocked_reg_0),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(rx_state01_out),
        .O(reset_time_out_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    reset_time_out_i_6
       (.I0(qplllock_sync),
        .I1(gt0_rxsysclksel_in),
        .I2(data_out),
        .O(adapt_count_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF5030FF)) 
    reset_time_out_i_7
       (.I0(qplllock_sync),
        .I1(data_out),
        .I2(pll_reset_asserted_reg),
        .I3(gt0_txsysclksel_in),
        .I4(gt0_rxsysclksel_in),
        .O(rx_state01_out));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_18
   (data_out,
    data_in,
    SYSCLK_IN);
  output data_out;
  input data_in;
  input SYSCLK_IN;

  wire SYSCLK_IN;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_19
   (data_out,
    rx_fsm_reset_done_int_reg,
    D,
    E,
    GT1_DATA_VALID_IN,
    GT2_DATA_VALID_IN,
    GT0_DATA_VALID_IN,
    GT3_DATA_VALID_IN,
    DONT_RESET_ON_DATA_ERROR_IN,
    time_out_100us_reg,
    reset_time_out_reg,
    out,
    GT_RX_FSM_RESET_DONE_OUT,
    \FSM_sequential_rx_state_reg[2] ,
    \FSM_sequential_rx_state_reg[2]_0 ,
    \wait_time_cnt_reg[4] ,
    Q,
    time_out_2ms_reg,
    mmcm_lock_reclocked,
    rx_state128_out,
    rx_state01_out,
    time_out_1us_reg,
    time_out_wait_bypass_s3,
    time_out_2ms_reg_0,
    SYSCLK_IN);
  output data_out;
  output rx_fsm_reset_done_int_reg;
  output [2:0]D;
  output [0:0]E;
  input GT1_DATA_VALID_IN;
  input GT2_DATA_VALID_IN;
  input GT0_DATA_VALID_IN;
  input GT3_DATA_VALID_IN;
  input DONT_RESET_ON_DATA_ERROR_IN;
  input time_out_100us_reg;
  input reset_time_out_reg;
  input [3:0]out;
  input GT_RX_FSM_RESET_DONE_OUT;
  input \FSM_sequential_rx_state_reg[2] ;
  input \FSM_sequential_rx_state_reg[2]_0 ;
  input \wait_time_cnt_reg[4] ;
  input [0:0]Q;
  input time_out_2ms_reg;
  input mmcm_lock_reclocked;
  input rx_state128_out;
  input rx_state01_out;
  input time_out_1us_reg;
  input time_out_wait_bypass_s3;
  input time_out_2ms_reg_0;
  input SYSCLK_IN;

  wire [2:0]D;
  wire DATA_VALID;
  wire DONT_RESET_ON_DATA_ERROR_IN;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state_reg[2] ;
  wire \FSM_sequential_rx_state_reg[2]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state_reg[3]_i_4_n_0 ;
  wire GT0_DATA_VALID_IN;
  wire GT1_DATA_VALID_IN;
  wire GT2_DATA_VALID_IN;
  wire GT3_DATA_VALID_IN;
  wire GT_RX_FSM_RESET_DONE_OUT;
  wire [0:0]Q;
  wire SYSCLK_IN;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_reclocked;
  wire [3:0]out;
  wire reset_time_out_reg;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_state01_out;
  wire rx_state126_out;
  wire rx_state128_out;
  wire time_out_100us_reg;
  wire time_out_1us_reg;
  wire time_out_2ms_reg;
  wire time_out_2ms_reg_0;
  wire time_out_wait_bypass_s3;
  wire \wait_time_cnt_reg[4] ;

  LUT6 #(
    .INIT(64'h0C0C5DFD0C0C5D5D)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_rx_state_reg[2] ),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(rx_state126_out),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000050000FF7700)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(out[2]),
        .I1(rx_state128_out),
        .I2(rx_state126_out),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(DONT_RESET_ON_DATA_ERROR_IN),
        .I1(time_out_100us_reg),
        .I2(reset_time_out_reg),
        .I3(data_out),
        .O(rx_state126_out));
  LUT6 #(
    .INIT(64'h55AA00A2000000A2)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(out[3]),
        .I1(time_out_wait_bypass_s3),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB0B0000F)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(reset_time_out_reg),
        .I1(time_out_2ms_reg_0),
        .I2(out[1]),
        .I3(rx_state126_out),
        .I4(out[2]),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h1010101F)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(out[2]),
        .I1(data_out),
        .I2(out[3]),
        .I3(\wait_time_cnt_reg[4] ),
        .I4(Q),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F00EFEF0F00E0E0)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state128_out),
        .I2(out[2]),
        .I3(rx_fsm_reset_done_int_i_4_n_0),
        .I4(out[3]),
        .I5(rx_state01_out),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  MUXF8 \FSM_sequential_rx_state_reg[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[3]_i_3_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[3]_i_4_n_0 ),
        .O(E),
        .S(out[0]));
  MUXF7 \FSM_sequential_rx_state_reg[3]_i_3 
       (.I0(\FSM_sequential_rx_state_reg[2]_0 ),
        .I1(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .O(\FSM_sequential_rx_state_reg[3]_i_3_n_0 ),
        .S(out[1]));
  MUXF7 \FSM_sequential_rx_state_reg[3]_i_4 
       (.I0(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I1(time_out_2ms_reg),
        .O(\FSM_sequential_rx_state_reg[3]_i_4_n_0 ),
        .S(out[1]));
  LUT4 #(
    .INIT(16'h8000)) 
    data_sync1_i_1__1
       (.I0(GT1_DATA_VALID_IN),
        .I1(GT2_DATA_VALID_IN),
        .I2(GT0_DATA_VALID_IN),
        .I3(GT3_DATA_VALID_IN),
        .O(DATA_VALID));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(DATA_VALID),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(out[2]),
        .I2(out[3]),
        .I3(rx_fsm_reset_done_int_i_3_n_0),
        .I4(GT_RX_FSM_RESET_DONE_OUT),
        .O(rx_fsm_reset_done_int_reg));
  LUT5 #(
    .INIT(32'h00000008)) 
    rx_fsm_reset_done_int_i_2
       (.I0(data_out),
        .I1(time_out_1us_reg),
        .I2(reset_time_out_reg),
        .I3(out[0]),
        .I4(out[2]),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0838083838380838)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_i_4_n_0),
        .I1(out[0]),
        .I2(out[1]),
        .I3(data_out),
        .I4(time_out_1us_reg),
        .I5(reset_time_out_reg),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    rx_fsm_reset_done_int_i_4
       (.I0(DONT_RESET_ON_DATA_ERROR_IN),
        .I1(time_out_100us_reg),
        .I2(reset_time_out_reg),
        .I3(data_out),
        .O(rx_fsm_reset_done_int_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_20
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    \mmcm_lock_count_reg[4] ,
    SYSCLK_IN);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input \mmcm_lock_count_reg[4] ;
  input SYSCLK_IN;

  wire [1:0]Q;
  wire [0:0]SR;
  wire SYSCLK_IN;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire \mmcm_lock_count_reg[4] ;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\mmcm_lock_count_reg[4] ),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_21
   (data_out,
    data_in,
    gt0_rxusrclk_in);
  output data_out;
  input data_in;
  input gt0_rxusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_22
   (data_out,
    GT_RX_FSM_RESET_DONE_OUT,
    gt0_rxusrclk_in);
  output data_out;
  input GT_RX_FSM_RESET_DONE_OUT;
  input gt0_rxusrclk_in;

  wire GT_RX_FSM_RESET_DONE_OUT;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(GT_RX_FSM_RESET_DONE_OUT),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gt_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_gt_sync_block_23
   (data_out,
    data_in,
    SYSCLK_IN);
  output data_out;
  input data_in;
  input SYSCLK_IN;

  wire SYSCLK_IN;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(SYSCLK_IN),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_gtwizard_0_common" *) 
module jesd204_phy_1_jesd204_phy_1_gtwizard_0_common
   (common0_qpll_lock_out,
    common0_qpll_clk_out,
    common0_qpll_refclk_out,
    qpll_refclk,
    drpclk,
    qpll_reset_out);
  output common0_qpll_lock_out;
  output common0_qpll_clk_out;
  output common0_qpll_refclk_out;
  input qpll_refclk;
  input drpclk;
  input qpll_reset_out;

  wire common0_qpll_clk_out;
  wire common0_qpll_lock_out;
  wire common0_qpll_refclk_out;
  wire drpclk;
  wire gtxe2_common_i_n_0;
  wire gtxe2_common_i_n_10;
  wire gtxe2_common_i_n_11;
  wire gtxe2_common_i_n_12;
  wire gtxe2_common_i_n_13;
  wire gtxe2_common_i_n_14;
  wire gtxe2_common_i_n_15;
  wire gtxe2_common_i_n_16;
  wire gtxe2_common_i_n_17;
  wire gtxe2_common_i_n_18;
  wire gtxe2_common_i_n_19;
  wire gtxe2_common_i_n_20;
  wire gtxe2_common_i_n_21;
  wire gtxe2_common_i_n_22;
  wire gtxe2_common_i_n_5;
  wire gtxe2_common_i_n_7;
  wire gtxe2_common_i_n_8;
  wire gtxe2_common_i_n_9;
  wire qpll_refclk;
  wire qpll_reset_out;
  wire NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED;
  wire NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED;
  wire [7:0]NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_COMMON #(
    .BIAS_CFG(64'h0000040000001000),
    .COMMON_CFG(32'h00000000),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_QPLLLOCKDETCLK_INVERTED(1'b0),
    .QPLL_CFG(27'h0680181),
    .QPLL_CLKOUT_CFG(4'b0000),
    .QPLL_COARSE_FREQ_OVRD(6'b010000),
    .QPLL_COARSE_FREQ_OVRD_EN(1'b0),
    .QPLL_CP(10'b0000011111),
    .QPLL_CP_MONITOR_EN(1'b0),
    .QPLL_DMONITOR_SEL(1'b0),
    .QPLL_FBDIV(10'b0010000000),
    .QPLL_FBDIV_MONITOR_EN(1'b0),
    .QPLL_FBDIV_RATIO(1'b1),
    .QPLL_INIT_CFG(24'h000006),
    .QPLL_LOCK_CFG(16'h21E8),
    .QPLL_LPF(4'b1111),
    .QPLL_REFCLK_DIV(1),
    .SIM_QPLLREFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_VERSION("4.0")) 
    gtxe2_common_i
       (.BGBYPASSB(1'b1),
        .BGMONITORENB(1'b1),
        .BGPDB(1'b1),
        .BGRCALOVRD({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(1'b0),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_common_i_n_7,gtxe2_common_i_n_8,gtxe2_common_i_n_9,gtxe2_common_i_n_10,gtxe2_common_i_n_11,gtxe2_common_i_n_12,gtxe2_common_i_n_13,gtxe2_common_i_n_14,gtxe2_common_i_n_15,gtxe2_common_i_n_16,gtxe2_common_i_n_17,gtxe2_common_i_n_18,gtxe2_common_i_n_19,gtxe2_common_i_n_20,gtxe2_common_i_n_21,gtxe2_common_i_n_22}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_common_i_n_0),
        .DRPWE(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(qpll_refclk),
        .GTREFCLK1(1'b0),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .PMARSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLDMONITOR(NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED[7:0]),
        .QPLLFBCLKLOST(NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED),
        .QPLLLOCK(common0_qpll_lock_out),
        .QPLLLOCKDETCLK(drpclk),
        .QPLLLOCKEN(1'b1),
        .QPLLOUTCLK(common0_qpll_clk_out),
        .QPLLOUTREFCLK(common0_qpll_refclk_out),
        .QPLLOUTRESET(1'b0),
        .QPLLPD(1'b0),
        .QPLLREFCLKLOST(gtxe2_common_i_n_5),
        .QPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .QPLLRESET(qpll_reset_out),
        .QPLLRSVD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLRSVD2({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RCALENB(1'b1),
        .REFCLKOUTMONITOR(NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "jesd204_phy_1_support" *) 
module jesd204_phy_1_jesd204_phy_1_support
   (gt0_txresetdone_out,
    gt0_rxresetdone_out,
    gt0_cplllock_out,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_eyescanreset_in,
    gt0_txprbsforceerr_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txbufstatus_out,
    gt0_rxcdrhold_in,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_rxprbscntreset_in,
    gt0_rxbufreset_in,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_dmonitorout_out,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxlpmen_in,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_loopback_in,
    gt0_rxpd_in,
    gt0_txpd_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_txdiffctrl_in,
    gt0_txpolarity_in,
    gt0_txinhibit_in,
    gt0_rxpolarity_in,
    gt0_drpaddr,
    gt0_drpdi,
    gt0_drpen,
    gt0_drpwe,
    gt0_drpdo,
    gt0_drprdy,
    gt1_txresetdone_out,
    gt1_rxresetdone_out,
    gt1_cplllock_out,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_eyescanreset_in,
    gt1_txprbsforceerr_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txbufstatus_out,
    gt1_rxcdrhold_in,
    gt1_rxprbserr_out,
    gt1_rxprbssel_in,
    gt1_rxprbscntreset_in,
    gt1_rxbufreset_in,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_dmonitorout_out,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxlpmen_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_loopback_in,
    gt1_rxpd_in,
    gt1_txpd_in,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_txdiffctrl_in,
    gt1_txpolarity_in,
    gt1_txinhibit_in,
    gt1_rxpolarity_in,
    gt1_drpaddr,
    gt1_drpdi,
    gt1_drpen,
    gt1_drpwe,
    gt1_drpdo,
    gt1_drprdy,
    gt2_txresetdone_out,
    gt2_rxresetdone_out,
    gt2_cplllock_out,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_eyescanreset_in,
    gt2_txprbsforceerr_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txbufstatus_out,
    gt2_rxcdrhold_in,
    gt2_rxprbserr_out,
    gt2_rxprbssel_in,
    gt2_rxprbscntreset_in,
    gt2_rxbufreset_in,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_dmonitorout_out,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxlpmen_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_loopback_in,
    gt2_rxpd_in,
    gt2_txpd_in,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_txdiffctrl_in,
    gt2_txpolarity_in,
    gt2_txinhibit_in,
    gt2_rxpolarity_in,
    gt2_drpaddr,
    gt2_drpdi,
    gt2_drpen,
    gt2_drpwe,
    gt2_drpdo,
    gt2_drprdy,
    gt3_txresetdone_out,
    gt3_rxresetdone_out,
    gt3_cplllock_out,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_eyescanreset_in,
    gt3_txprbsforceerr_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txbufstatus_out,
    gt3_rxcdrhold_in,
    gt3_rxprbserr_out,
    gt3_rxprbssel_in,
    gt3_rxprbscntreset_in,
    gt3_rxbufreset_in,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_dmonitorout_out,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxlpmen_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_loopback_in,
    gt3_rxpd_in,
    gt3_txpd_in,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_txdiffctrl_in,
    gt3_txpolarity_in,
    gt3_txinhibit_in,
    gt3_rxpolarity_in,
    gt3_drpaddr,
    gt3_drpdi,
    gt3_drpen,
    gt3_drpwe,
    gt3_drpdo,
    gt3_drprdy,
    tx_sys_reset,
    rx_sys_reset,
    tx_reset_gt,
    rx_reset_gt,
    tx_reset_done,
    rx_reset_done,
    qpll_refclk,
    common0_qpll_lock_out,
    common0_qpll_refclk_out,
    common0_qpll_clk_out,
    rxencommaalign,
    tx_core_clk,
    txoutclk,
    rx_core_clk,
    rxoutclk,
    drpclk,
    gt_prbssel,
    gt0_txdata,
    gt0_txcharisk,
    gt1_txdata,
    gt1_txcharisk,
    gt2_txdata,
    gt2_txcharisk,
    gt3_txdata,
    gt3_txcharisk,
    gt0_rxdata,
    gt0_rxcharisk,
    gt0_rxdisperr,
    gt0_rxnotintable,
    gt1_rxdata,
    gt1_rxcharisk,
    gt1_rxdisperr,
    gt1_rxnotintable,
    gt2_rxdata,
    gt2_rxcharisk,
    gt2_rxdisperr,
    gt2_rxnotintable,
    gt3_rxdata,
    gt3_rxcharisk,
    gt3_rxdisperr,
    gt3_rxnotintable,
    rxn_in,
    rxp_in,
    txn_out,
    txp_out);
  output gt0_txresetdone_out;
  output gt0_rxresetdone_out;
  output gt0_cplllock_out;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_eyescanreset_in;
  input gt0_txprbsforceerr_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  output [1:0]gt0_txbufstatus_out;
  input gt0_rxcdrhold_in;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  input gt0_rxbufreset_in;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output [7:0]gt0_dmonitorout_out;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txpolarity_in;
  input gt0_txinhibit_in;
  input gt0_rxpolarity_in;
  input [8:0]gt0_drpaddr;
  input [15:0]gt0_drpdi;
  input gt0_drpen;
  input gt0_drpwe;
  output [15:0]gt0_drpdo;
  output gt0_drprdy;
  output gt1_txresetdone_out;
  output gt1_rxresetdone_out;
  output gt1_cplllock_out;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_eyescanreset_in;
  input gt1_txprbsforceerr_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  output [1:0]gt1_txbufstatus_out;
  input gt1_rxcdrhold_in;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  input gt1_rxbufreset_in;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  output [7:0]gt1_dmonitorout_out;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txpolarity_in;
  input gt1_txinhibit_in;
  input gt1_rxpolarity_in;
  input [8:0]gt1_drpaddr;
  input [15:0]gt1_drpdi;
  input gt1_drpen;
  input gt1_drpwe;
  output [15:0]gt1_drpdo;
  output gt1_drprdy;
  output gt2_txresetdone_out;
  output gt2_rxresetdone_out;
  output gt2_cplllock_out;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_eyescanreset_in;
  input gt2_txprbsforceerr_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  output [1:0]gt2_txbufstatus_out;
  input gt2_rxcdrhold_in;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  input gt2_rxbufreset_in;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  output [7:0]gt2_dmonitorout_out;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txpolarity_in;
  input gt2_txinhibit_in;
  input gt2_rxpolarity_in;
  input [8:0]gt2_drpaddr;
  input [15:0]gt2_drpdi;
  input gt2_drpen;
  input gt2_drpwe;
  output [15:0]gt2_drpdo;
  output gt2_drprdy;
  output gt3_txresetdone_out;
  output gt3_rxresetdone_out;
  output gt3_cplllock_out;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_eyescanreset_in;
  input gt3_txprbsforceerr_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  output [1:0]gt3_txbufstatus_out;
  input gt3_rxcdrhold_in;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  input gt3_rxbufreset_in;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  output [7:0]gt3_dmonitorout_out;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txpolarity_in;
  input gt3_txinhibit_in;
  input gt3_rxpolarity_in;
  input [8:0]gt3_drpaddr;
  input [15:0]gt3_drpdi;
  input gt3_drpen;
  input gt3_drpwe;
  output [15:0]gt3_drpdo;
  output gt3_drprdy;
  input tx_sys_reset;
  input rx_sys_reset;
  input tx_reset_gt;
  input rx_reset_gt;
  output tx_reset_done;
  output rx_reset_done;
  input qpll_refclk;
  output common0_qpll_lock_out;
  output common0_qpll_refclk_out;
  output common0_qpll_clk_out;
  input rxencommaalign;
  input tx_core_clk;
  output txoutclk;
  input rx_core_clk;
  output rxoutclk;
  input drpclk;
  input [2:0]gt_prbssel;
  input [31:0]gt0_txdata;
  input [3:0]gt0_txcharisk;
  input [31:0]gt1_txdata;
  input [3:0]gt1_txcharisk;
  input [31:0]gt2_txdata;
  input [3:0]gt2_txcharisk;
  input [31:0]gt3_txdata;
  input [3:0]gt3_txcharisk;
  output [31:0]gt0_rxdata;
  output [3:0]gt0_rxcharisk;
  output [3:0]gt0_rxdisperr;
  output [3:0]gt0_rxnotintable;
  output [31:0]gt1_rxdata;
  output [3:0]gt1_rxcharisk;
  output [3:0]gt1_rxdisperr;
  output [3:0]gt1_rxnotintable;
  output [31:0]gt2_rxdata;
  output [3:0]gt2_rxcharisk;
  output [3:0]gt2_rxdisperr;
  output [3:0]gt2_rxnotintable;
  output [31:0]gt3_rxdata;
  output [3:0]gt3_rxcharisk;
  output [3:0]gt3_rxdisperr;
  output [3:0]gt3_rxnotintable;
  input [3:0]rxn_in;
  input [3:0]rxp_in;
  output [3:0]txn_out;
  output [3:0]txp_out;

  wire common0_qpll_clk_out;
  wire common0_qpll_lock_out;
  wire common0_qpll_refclk_out;
  wire drpclk;
  wire gt0_cplllock_out;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr;
  wire [15:0]gt0_drpdi;
  wire [15:0]gt0_drpdo;
  wire gt0_drpen;
  wire gt0_drprdy;
  wire gt0_drpwe;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire [2:0]gt0_loopback_in;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [3:0]gt0_rxcharisk;
  wire gt0_rxcommadet_out;
  wire [31:0]gt0_rxdata;
  wire gt0_rxdfelpmreset_in;
  wire [3:0]gt0_rxdisperr;
  wire gt0_rxlpmen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [3:0]gt0_rxnotintable;
  wire gt0_rxpcsreset_in;
  wire [1:0]gt0_rxpd_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [2:0]gt0_rxstatus_out;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txcharisk;
  wire [31:0]gt0_txdata;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txinhibit_in;
  wire gt0_txpcsreset_in;
  wire [1:0]gt0_txpd_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire gt1_cplllock_out;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr;
  wire [15:0]gt1_drpdi;
  wire [15:0]gt1_drpdo;
  wire gt1_drpen;
  wire gt1_drprdy;
  wire gt1_drpwe;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire [2:0]gt1_loopback_in;
  wire gt1_rxbufreset_in;
  wire [2:0]gt1_rxbufstatus_out;
  wire gt1_rxbyteisaligned_out;
  wire gt1_rxbyterealign_out;
  wire gt1_rxcdrhold_in;
  wire [3:0]gt1_rxcharisk;
  wire gt1_rxcommadet_out;
  wire [31:0]gt1_rxdata;
  wire gt1_rxdfelpmreset_in;
  wire [3:0]gt1_rxdisperr;
  wire gt1_rxlpmen_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire [3:0]gt1_rxnotintable;
  wire gt1_rxpcsreset_in;
  wire [1:0]gt1_rxpd_in;
  wire gt1_rxpmareset_in;
  wire gt1_rxpolarity_in;
  wire gt1_rxprbscntreset_in;
  wire gt1_rxprbserr_out;
  wire [2:0]gt1_rxprbssel_in;
  wire gt1_rxresetdone_out;
  wire [2:0]gt1_rxstatus_out;
  wire [1:0]gt1_txbufstatus_out;
  wire [3:0]gt1_txcharisk;
  wire [31:0]gt1_txdata;
  wire [3:0]gt1_txdiffctrl_in;
  wire gt1_txinhibit_in;
  wire gt1_txpcsreset_in;
  wire [1:0]gt1_txpd_in;
  wire gt1_txpmareset_in;
  wire gt1_txpolarity_in;
  wire [4:0]gt1_txpostcursor_in;
  wire gt1_txprbsforceerr_in;
  wire [4:0]gt1_txprecursor_in;
  wire gt1_txresetdone_out;
  wire gt2_cplllock_out;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr;
  wire [15:0]gt2_drpdi;
  wire [15:0]gt2_drpdo;
  wire gt2_drpen;
  wire gt2_drprdy;
  wire gt2_drpwe;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire [2:0]gt2_loopback_in;
  wire gt2_rxbufreset_in;
  wire [2:0]gt2_rxbufstatus_out;
  wire gt2_rxbyteisaligned_out;
  wire gt2_rxbyterealign_out;
  wire gt2_rxcdrhold_in;
  wire [3:0]gt2_rxcharisk;
  wire gt2_rxcommadet_out;
  wire [31:0]gt2_rxdata;
  wire gt2_rxdfelpmreset_in;
  wire [3:0]gt2_rxdisperr;
  wire gt2_rxlpmen_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire [3:0]gt2_rxnotintable;
  wire gt2_rxpcsreset_in;
  wire [1:0]gt2_rxpd_in;
  wire gt2_rxpmareset_in;
  wire gt2_rxpolarity_in;
  wire gt2_rxprbscntreset_in;
  wire gt2_rxprbserr_out;
  wire [2:0]gt2_rxprbssel_in;
  wire gt2_rxresetdone_out;
  wire [2:0]gt2_rxstatus_out;
  wire [1:0]gt2_txbufstatus_out;
  wire [3:0]gt2_txcharisk;
  wire [31:0]gt2_txdata;
  wire [3:0]gt2_txdiffctrl_in;
  wire gt2_txinhibit_in;
  wire gt2_txpcsreset_in;
  wire [1:0]gt2_txpd_in;
  wire gt2_txpmareset_in;
  wire gt2_txpolarity_in;
  wire [4:0]gt2_txpostcursor_in;
  wire gt2_txprbsforceerr_in;
  wire [4:0]gt2_txprecursor_in;
  wire gt2_txresetdone_out;
  wire gt3_cplllock_out;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr;
  wire [15:0]gt3_drpdi;
  wire [15:0]gt3_drpdo;
  wire gt3_drpen;
  wire gt3_drprdy;
  wire gt3_drpwe;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire [2:0]gt3_loopback_in;
  wire gt3_rxbufreset_in;
  wire [2:0]gt3_rxbufstatus_out;
  wire gt3_rxbyteisaligned_out;
  wire gt3_rxbyterealign_out;
  wire gt3_rxcdrhold_in;
  wire [3:0]gt3_rxcharisk;
  wire gt3_rxcommadet_out;
  wire [31:0]gt3_rxdata;
  wire gt3_rxdfelpmreset_in;
  wire [3:0]gt3_rxdisperr;
  wire gt3_rxlpmen_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire [3:0]gt3_rxnotintable;
  wire gt3_rxpcsreset_in;
  wire [1:0]gt3_rxpd_in;
  wire gt3_rxpmareset_in;
  wire gt3_rxpolarity_in;
  wire gt3_rxprbscntreset_in;
  wire gt3_rxprbserr_out;
  wire [2:0]gt3_rxprbssel_in;
  wire gt3_rxresetdone_out;
  wire [2:0]gt3_rxstatus_out;
  wire [1:0]gt3_txbufstatus_out;
  wire [3:0]gt3_txcharisk;
  wire [31:0]gt3_txdata;
  wire [3:0]gt3_txdiffctrl_in;
  wire gt3_txinhibit_in;
  wire gt3_txpcsreset_in;
  wire [1:0]gt3_txpd_in;
  wire gt3_txpmareset_in;
  wire gt3_txpolarity_in;
  wire [4:0]gt3_txpostcursor_in;
  wire gt3_txprbsforceerr_in;
  wire [4:0]gt3_txprecursor_in;
  wire gt3_txresetdone_out;
  wire [2:0]gt_prbssel;
  wire qpll_refclk;
  wire qpll_reset_i;
  wire rx_core_clk;
  wire rx_reset_done;
  wire rx_reset_gt;
  wire rx_sys_reset;
  wire rxencommaalign;
  wire [3:0]rxn_in;
  wire rxoutclk;
  wire [3:0]rxp_in;
  wire tx_core_clk;
  wire tx_reset_done;
  wire tx_reset_gt;
  wire tx_sys_reset;
  wire [3:0]txn_out;
  wire txoutclk;
  wire [3:0]txp_out;

  jesd204_phy_1_jesd204_phy_1_block jesd204_phy_block_i
       (.common0_qpll_clk_out(common0_qpll_clk_out),
        .common0_qpll_lock_out(common0_qpll_lock_out),
        .common0_qpll_refclk_out(common0_qpll_refclk_out),
        .drpclk(drpclk),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr(gt0_drpaddr),
        .gt0_drpdi(gt0_drpdi),
        .gt0_drpdo(gt0_drpdo),
        .gt0_drpen(gt0_drpen),
        .gt0_drprdy(gt0_drprdy),
        .gt0_drpwe(gt0_drpwe),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcdrhold_in(gt0_rxcdrhold_in),
        .gt0_rxcharisk(gt0_rxcharisk),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdata(gt0_rxdata),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr(gt0_rxdisperr),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable(gt0_rxnotintable),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxstatus_out(gt0_rxstatus_out),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txcharisk(gt0_txcharisk),
        .gt0_txdata(gt0_txdata),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txinhibit_in(gt0_txinhibit_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr(gt1_drpaddr),
        .gt1_drpdi(gt1_drpdi),
        .gt1_drpdo(gt1_drpdo),
        .gt1_drpen(gt1_drpen),
        .gt1_drprdy(gt1_drprdy),
        .gt1_drpwe(gt1_drpwe),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_loopback_in(gt1_loopback_in),
        .gt1_rxbufreset_in(gt1_rxbufreset_in),
        .gt1_rxbufstatus_out(gt1_rxbufstatus_out),
        .gt1_rxbyteisaligned_out(gt1_rxbyteisaligned_out),
        .gt1_rxbyterealign_out(gt1_rxbyterealign_out),
        .gt1_rxcdrhold_in(gt1_rxcdrhold_in),
        .gt1_rxcharisk(gt1_rxcharisk),
        .gt1_rxcommadet_out(gt1_rxcommadet_out),
        .gt1_rxdata(gt1_rxdata),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxdisperr(gt1_rxdisperr),
        .gt1_rxlpmen_in(gt1_rxlpmen_in),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxnotintable(gt1_rxnotintable),
        .gt1_rxpcsreset_in(gt1_rxpcsreset_in),
        .gt1_rxpd_in(gt1_rxpd_in),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxpolarity_in(gt1_rxpolarity_in),
        .gt1_rxprbscntreset_in(gt1_rxprbscntreset_in),
        .gt1_rxprbserr_out(gt1_rxprbserr_out),
        .gt1_rxprbssel_in(gt1_rxprbssel_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxstatus_out(gt1_rxstatus_out),
        .gt1_txbufstatus_out(gt1_txbufstatus_out),
        .gt1_txcharisk(gt1_txcharisk),
        .gt1_txdata(gt1_txdata),
        .gt1_txdiffctrl_in(gt1_txdiffctrl_in),
        .gt1_txinhibit_in(gt1_txinhibit_in),
        .gt1_txpcsreset_in(gt1_txpcsreset_in),
        .gt1_txpd_in(gt1_txpd_in),
        .gt1_txpmareset_in(gt1_txpmareset_in),
        .gt1_txpolarity_in(gt1_txpolarity_in),
        .gt1_txpostcursor_in(gt1_txpostcursor_in),
        .gt1_txprbsforceerr_in(gt1_txprbsforceerr_in),
        .gt1_txprecursor_in(gt1_txprecursor_in),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr(gt2_drpaddr),
        .gt2_drpdi(gt2_drpdi),
        .gt2_drpdo(gt2_drpdo),
        .gt2_drpen(gt2_drpen),
        .gt2_drprdy(gt2_drprdy),
        .gt2_drpwe(gt2_drpwe),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_loopback_in(gt2_loopback_in),
        .gt2_rxbufreset_in(gt2_rxbufreset_in),
        .gt2_rxbufstatus_out(gt2_rxbufstatus_out),
        .gt2_rxbyteisaligned_out(gt2_rxbyteisaligned_out),
        .gt2_rxbyterealign_out(gt2_rxbyterealign_out),
        .gt2_rxcdrhold_in(gt2_rxcdrhold_in),
        .gt2_rxcharisk(gt2_rxcharisk),
        .gt2_rxcommadet_out(gt2_rxcommadet_out),
        .gt2_rxdata(gt2_rxdata),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxdisperr(gt2_rxdisperr),
        .gt2_rxlpmen_in(gt2_rxlpmen_in),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxnotintable(gt2_rxnotintable),
        .gt2_rxpcsreset_in(gt2_rxpcsreset_in),
        .gt2_rxpd_in(gt2_rxpd_in),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxpolarity_in(gt2_rxpolarity_in),
        .gt2_rxprbscntreset_in(gt2_rxprbscntreset_in),
        .gt2_rxprbserr_out(gt2_rxprbserr_out),
        .gt2_rxprbssel_in(gt2_rxprbssel_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxstatus_out(gt2_rxstatus_out),
        .gt2_txbufstatus_out(gt2_txbufstatus_out),
        .gt2_txcharisk(gt2_txcharisk),
        .gt2_txdata(gt2_txdata),
        .gt2_txdiffctrl_in(gt2_txdiffctrl_in),
        .gt2_txinhibit_in(gt2_txinhibit_in),
        .gt2_txpcsreset_in(gt2_txpcsreset_in),
        .gt2_txpd_in(gt2_txpd_in),
        .gt2_txpmareset_in(gt2_txpmareset_in),
        .gt2_txpolarity_in(gt2_txpolarity_in),
        .gt2_txpostcursor_in(gt2_txpostcursor_in),
        .gt2_txprbsforceerr_in(gt2_txprbsforceerr_in),
        .gt2_txprecursor_in(gt2_txprecursor_in),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr(gt3_drpaddr),
        .gt3_drpdi(gt3_drpdi),
        .gt3_drpdo(gt3_drpdo),
        .gt3_drpen(gt3_drpen),
        .gt3_drprdy(gt3_drprdy),
        .gt3_drpwe(gt3_drpwe),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_loopback_in(gt3_loopback_in),
        .gt3_rxbufreset_in(gt3_rxbufreset_in),
        .gt3_rxbufstatus_out(gt3_rxbufstatus_out),
        .gt3_rxbyteisaligned_out(gt3_rxbyteisaligned_out),
        .gt3_rxbyterealign_out(gt3_rxbyterealign_out),
        .gt3_rxcdrhold_in(gt3_rxcdrhold_in),
        .gt3_rxcharisk(gt3_rxcharisk),
        .gt3_rxcommadet_out(gt3_rxcommadet_out),
        .gt3_rxdata(gt3_rxdata),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxdisperr(gt3_rxdisperr),
        .gt3_rxlpmen_in(gt3_rxlpmen_in),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxnotintable(gt3_rxnotintable),
        .gt3_rxpcsreset_in(gt3_rxpcsreset_in),
        .gt3_rxpd_in(gt3_rxpd_in),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxpolarity_in(gt3_rxpolarity_in),
        .gt3_rxprbscntreset_in(gt3_rxprbscntreset_in),
        .gt3_rxprbserr_out(gt3_rxprbserr_out),
        .gt3_rxprbssel_in(gt3_rxprbssel_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxstatus_out(gt3_rxstatus_out),
        .gt3_txbufstatus_out(gt3_txbufstatus_out),
        .gt3_txcharisk(gt3_txcharisk),
        .gt3_txdata(gt3_txdata),
        .gt3_txdiffctrl_in(gt3_txdiffctrl_in),
        .gt3_txinhibit_in(gt3_txinhibit_in),
        .gt3_txpcsreset_in(gt3_txpcsreset_in),
        .gt3_txpd_in(gt3_txpd_in),
        .gt3_txpmareset_in(gt3_txpmareset_in),
        .gt3_txpolarity_in(gt3_txpolarity_in),
        .gt3_txpostcursor_in(gt3_txpostcursor_in),
        .gt3_txprbsforceerr_in(gt3_txprbsforceerr_in),
        .gt3_txprecursor_in(gt3_txprecursor_in),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt_prbssel(gt_prbssel),
        .qpll_reset_out(qpll_reset_i),
        .rx_core_clk(rx_core_clk),
        .rx_reset_done(rx_reset_done),
        .rx_reset_gt(rx_reset_gt),
        .rx_sys_reset(rx_sys_reset),
        .rxencommaalign(rxencommaalign),
        .rxn_in(rxn_in),
        .rxoutclk(rxoutclk),
        .rxp_in(rxp_in),
        .tx_core_clk(tx_core_clk),
        .tx_reset_done(tx_reset_done),
        .tx_reset_gt(tx_reset_gt),
        .tx_sys_reset(tx_sys_reset),
        .txn_out(txn_out),
        .txoutclk(txoutclk),
        .txp_out(txp_out));
  jesd204_phy_1_jesd204_phy_1_gt_common_wrapper jesd204_phy_gt_common_i
       (.common0_qpll_clk_out(common0_qpll_clk_out),
        .common0_qpll_lock_out(common0_qpll_lock_out),
        .common0_qpll_refclk_out(common0_qpll_refclk_out),
        .drpclk(drpclk),
        .qpll_refclk(qpll_refclk),
        .qpll_reset_out(qpll_reset_i));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block
   (rx_reset_done_r0,
    GT_RX_FSM_RESET_DONE_OUT,
    O23,
    drpclk);
  output rx_reset_done_r0;
  input GT_RX_FSM_RESET_DONE_OUT;
  input O23;
  input drpclk;

  wire GT_RX_FSM_RESET_DONE_OUT;
  wire O23;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;
  wire rx_chan_rst_done_sync;
  wire rx_reset_done_r0;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(O23),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(rx_chan_rst_done_sync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    rx_reset_done_r_i_1
       (.I0(GT_RX_FSM_RESET_DONE_OUT),
        .I1(rx_chan_rst_done_sync),
        .O(rx_reset_done_r0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block_0
   (data_out,
    O24,
    drpclk);
  output data_out;
  input O24;
  input drpclk;

  wire O24;
  wire data_out;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(O24),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block_1
   (gt_rxreset0,
    data_out,
    GT_RX_FSM_RESET_DONE_OUT,
    rx_sys_reset,
    drpclk);
  output gt_rxreset0;
  input data_out;
  input GT_RX_FSM_RESET_DONE_OUT;
  input rx_sys_reset;
  input drpclk;

  wire GT_RX_FSM_RESET_DONE_OUT;
  wire data_out;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;
  wire gt_rxreset0;
  wire rx_rst_all_sync;
  wire rx_sys_reset;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(rx_sys_reset),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(rx_rst_all_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    gt_rxreset_i_1
       (.I0(rx_rst_all_sync),
        .I1(data_out),
        .I2(GT_RX_FSM_RESET_DONE_OUT),
        .O(gt_rxreset0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block_2
   (data_out,
    rx_reset_gt,
    drpclk);
  output data_out;
  input rx_reset_gt;
  input drpclk;

  wire data_out;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;
  wire rx_reset_gt;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(rx_reset_gt),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block_3
   (tx_reset_done_r0,
    GT_TX_FSM_RESET_DONE_OUT,
    data_in,
    drpclk);
  output tx_reset_done_r0;
  input GT_TX_FSM_RESET_DONE_OUT;
  input data_in;
  input drpclk;

  wire GT_TX_FSM_RESET_DONE_OUT;
  wire data_in;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;
  wire tx_chan_rst_done_sync;
  wire tx_reset_done_r0;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(tx_chan_rst_done_sync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    tx_reset_done_r_i_1
       (.I0(GT_TX_FSM_RESET_DONE_OUT),
        .I1(tx_chan_rst_done_sync),
        .O(tx_reset_done_r0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block_4
   (data_out,
    O24,
    drpclk);
  output data_out;
  input O24;
  input drpclk;

  wire O24;
  wire data_out;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(O24),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block_5
   (gt_txreset0,
    data_out,
    GT_TX_FSM_RESET_DONE_OUT,
    tx_sys_reset,
    drpclk);
  output gt_txreset0;
  input data_out;
  input GT_TX_FSM_RESET_DONE_OUT;
  input tx_sys_reset;
  input drpclk;

  wire GT_TX_FSM_RESET_DONE_OUT;
  wire data_out;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;
  wire gt_txreset0;
  wire tx_rst_all_sync;
  wire tx_sys_reset;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(tx_sys_reset),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(tx_rst_all_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    gt_txreset_i_1
       (.I0(tx_rst_all_sync),
        .I1(data_out),
        .I2(GT_TX_FSM_RESET_DONE_OUT),
        .O(gt_txreset0));
endmodule

(* ORIG_REF_NAME = "jesd204_phy_1_sync_block" *) 
module jesd204_phy_1_jesd204_phy_1_sync_block_6
   (data_out,
    tx_reset_gt,
    drpclk);
  output data_out;
  input tx_reset_gt;
  input drpclk;

  wire data_out;
  wire data_sync0;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire drpclk;
  wire tx_reset_gt;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg0
       (.C(drpclk),
        .CE(1'b1),
        .D(tx_reset_gt),
        .Q(data_sync0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(drpclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_out),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif

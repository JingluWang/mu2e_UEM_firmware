// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Mon Nov 13 22:03:56 2023
// Host        : Ryan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/gtwizard_0/gtwizard_0_stub.v
// Design      : gtwizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k420tffg1156-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gtwizard_0,gtwizard_v3_6_3,{protocol_file=Start_from_scratch}" *)
module gtwizard_0(SOFT_RESET_TX_IN, SOFT_RESET_RX_IN, DONT_RESET_ON_DATA_ERROR_IN, Q1_CLK0_GTREFCLK_PAD_N_IN, Q1_CLK0_GTREFCLK_PAD_P_IN, GT0_TX_FSM_RESET_DONE_OUT, GT0_RX_FSM_RESET_DONE_OUT, GT0_DATA_VALID_IN, GT0_TXUSRCLK_OUT, GT0_TXUSRCLK2_OUT, GT0_RXUSRCLK_OUT, GT0_RXUSRCLK2_OUT, gt0_cpllfbclklost_out, gt0_cplllock_out, gt0_cpllreset_in, gt0_drpaddr_in, gt0_drpdi_in, gt0_drpdo_out, gt0_drpen_in, gt0_drprdy_out, gt0_drpwe_in, gt0_dmonitorout_out, gt0_eyescanreset_in, gt0_rxuserrdy_in, gt0_eyescandataerror_out, gt0_eyescantrigger_in, gt0_rxdata_out, gt0_rxdisperr_out, gt0_rxnotintable_out, gt0_gtxrxp_in, gt0_gtxrxn_in, gt0_rxbyteisaligned_out, gt0_rxdfelpmreset_in, gt0_rxmonitorout_out, gt0_rxmonitorsel_in, gt0_rxoutclkfabric_out, gt0_gtrxreset_in, gt0_rxpmareset_in, gt0_rxcharisk_out, gt0_rxresetdone_out, gt0_gttxreset_in, gt0_txuserrdy_in, gt0_txdata_in, gt0_gtxtxn_out, gt0_gtxtxp_out, gt0_txoutclkfabric_out, gt0_txoutclkpcs_out, gt0_txcharisk_in, gt0_txresetdone_out, GT0_QPLLOUTCLK_OUT, GT0_QPLLOUTREFCLK_OUT, sysclk_in)
/* synthesis syn_black_box black_box_pad_pin="SOFT_RESET_TX_IN,SOFT_RESET_RX_IN,DONT_RESET_ON_DATA_ERROR_IN,Q1_CLK0_GTREFCLK_PAD_N_IN,Q1_CLK0_GTREFCLK_PAD_P_IN,GT0_TX_FSM_RESET_DONE_OUT,GT0_RX_FSM_RESET_DONE_OUT,GT0_DATA_VALID_IN,GT0_TXUSRCLK_OUT,GT0_TXUSRCLK2_OUT,GT0_RXUSRCLK_OUT,GT0_RXUSRCLK2_OUT,gt0_cpllfbclklost_out,gt0_cplllock_out,gt0_cpllreset_in,gt0_drpaddr_in[8:0],gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_dmonitorout_out[7:0],gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxdata_out[15:0],gt0_rxdisperr_out[1:0],gt0_rxnotintable_out[1:0],gt0_gtxrxp_in,gt0_gtxrxn_in,gt0_rxbyteisaligned_out,gt0_rxdfelpmreset_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt0_rxoutclkfabric_out,gt0_gtrxreset_in,gt0_rxpmareset_in,gt0_rxcharisk_out[1:0],gt0_rxresetdone_out,gt0_gttxreset_in,gt0_txuserrdy_in,gt0_txdata_in[15:0],gt0_gtxtxn_out,gt0_gtxtxp_out,gt0_txoutclkfabric_out,gt0_txoutclkpcs_out,gt0_txcharisk_in[1:0],gt0_txresetdone_out,GT0_QPLLOUTCLK_OUT,GT0_QPLLOUTREFCLK_OUT,sysclk_in" */;
  input SOFT_RESET_TX_IN;
  input SOFT_RESET_RX_IN;
  input DONT_RESET_ON_DATA_ERROR_IN;
  input Q1_CLK0_GTREFCLK_PAD_N_IN;
  input Q1_CLK0_GTREFCLK_PAD_P_IN;
  output GT0_TX_FSM_RESET_DONE_OUT;
  output GT0_RX_FSM_RESET_DONE_OUT;
  input GT0_DATA_VALID_IN;
  output GT0_TXUSRCLK_OUT;
  output GT0_TXUSRCLK2_OUT;
  output GT0_RXUSRCLK_OUT;
  output GT0_RXUSRCLK2_OUT;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cpllreset_in;
  input [8:0]gt0_drpaddr_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  output [7:0]gt0_dmonitorout_out;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  output [15:0]gt0_rxdata_out;
  output [1:0]gt0_rxdisperr_out;
  output [1:0]gt0_rxnotintable_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  output gt0_rxbyteisaligned_out;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpmareset_in;
  output [1:0]gt0_rxcharisk_out;
  output gt0_rxresetdone_out;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input [15:0]gt0_txdata_in;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  input [1:0]gt0_txcharisk_in;
  output gt0_txresetdone_out;
  output GT0_QPLLOUTCLK_OUT;
  output GT0_QPLLOUTREFCLK_OUT;
  input sysclk_in;
endmodule

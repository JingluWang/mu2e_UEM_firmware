-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Mon Nov 13 22:04:24 2023
-- Host        : Ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/jesd204_phy_1/jesd204_phy_1_sim_netlist.vhdl
-- Design      : jesd204_phy_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k420tffg1156-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_GT is
  port (
    gt0_cpllfbclklost_out : out STD_LOGIC;
    gt0_cplllock_out : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_gtxtxn_out : out STD_LOGIC;
    gt0_gtxtxp_out : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxoutclk_out : out STD_LOGIC;
    gt0_rxoutclkfabric_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txoutclkfabric_out : out STD_LOGIC;
    gt0_txoutclkpcs_out : out STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_cplllockdetclk_in : in STD_LOGIC;
    gt0_cpllpd_in : in STD_LOGIC;
    gt0_cpllreset_in : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_gtnorthrefclk0_in : in STD_LOGIC;
    gt0_gtnorthrefclk1_in : in STD_LOGIC;
    gt0_gtrefclk0_in : in STD_LOGIC;
    gt0_gtrefclk1_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtsouthrefclk0_in : in STD_LOGIC;
    gt0_gtsouthrefclk1_in : in STD_LOGIC;
    gt0_gttxreset_in : in STD_LOGIC;
    gt0_gtxrxn_in : in STD_LOGIC;
    gt0_gtxrxp_in : in STD_LOGIC;
    GT0_QPLLOUTCLK_IN : in STD_LOGIC;
    GT0_QPLLOUTREFCLK_IN : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcommaalignen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxuserrdy_in : in STD_LOGIC;
    gt0_rxusrclk_in : in STD_LOGIC;
    gt0_rxusrclk2_in : in STD_LOGIC;
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txuserrdy_in : in STD_LOGIC;
    gt0_txusrclk_in : in STD_LOGIC;
    gt0_txusrclk2_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_GT : entity is "jesd204_phy_1_gt_GT";
end jesd204_phy_1_jesd204_phy_1_gt_GT;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_GT is
  signal gtxe2_i_n_2 : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtxe2_i : label is "PRIMITIVE";
begin
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 4,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 12,
      CLK_COR_MIN_LAT => 8,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"3C",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"001E7080",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 57,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 3,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0B000023FF10400020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 10,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 40,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0104",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 1,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"111",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"111",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 10,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 40,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => gt0_cpllfbclklost_out,
      CPLLLOCK => gt0_cplllock_out,
      CPLLLOCKDETCLK => gt0_cplllockdetclk_in,
      CPLLLOCKEN => '1',
      CPLLPD => gt0_cpllpd_in,
      CPLLREFCLKLOST => gtxe2_i_n_2,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => gt0_cpllreset_in,
      DMONITOROUT(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      DRPCLK => gt0_drpclk_in,
      DRPDI(15 downto 0) => gt0_drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => gt0_drpdo_out(15 downto 0),
      DRPEN => gt0_drpen_in,
      DRPRDY => gt0_drprdy_out,
      DRPWE => gt0_drpwe_in,
      EYESCANDATAERROR => gt0_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt0_eyescanreset_in,
      EYESCANTRIGGER => gt0_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => gt0_gtnorthrefclk0_in,
      GTNORTHREFCLK1 => gt0_gtnorthrefclk1_in,
      GTREFCLK0 => gt0_gtrefclk0_in,
      GTREFCLK1 => gt0_gtrefclk1_in,
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => SR(0),
      GTSOUTHREFCLK0 => gt0_gtsouthrefclk0_in,
      GTSOUTHREFCLK1 => gt0_gtsouthrefclk1_in,
      GTTXRESET => gt0_gttxreset_in,
      GTXRXN => gt0_gtxrxn_in,
      GTXRXP => gt0_gtxrxp_in,
      GTXTXN => gt0_gtxtxn_out,
      GTXTXP => gt0_gtxtxp_out,
      LOOPBACK(2 downto 0) => gt0_loopback_in(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => GT0_QPLLOUTCLK_IN,
      QPLLREFCLK => GT0_QPLLOUTREFCLK_IN,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt0_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => gt0_rxbyteisaligned_out,
      RXBYTEREALIGN => gt0_rxbyterealign_out,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt0_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 4) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 4),
      RXCHARISCOMMA(3 downto 0) => gt0_rxchariscomma_out(3 downto 0),
      RXCHARISK(7 downto 4) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 4),
      RXCHARISK(3 downto 0) => gt0_rxcharisk_out(3 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED(1 downto 0),
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt0_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 32) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 32),
      RXDATA(31 downto 0) => gt0_rxdata_out(31 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt0_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 4) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 4),
      RXDISPERR(3 downto 0) => gt0_rxdisperr_out(3 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt0_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => gt0_rxmcommaalignen_in,
      RXMONITOROUT(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 4) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 4),
      RXNOTINTABLE(3 downto 0) => gt0_rxnotintable_out(3 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gt0_rxoutclk_out,
      RXOUTCLKFABRIC => gt0_rxoutclkfabric_out,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => gt0_rxpcommaalignen_in,
      RXPCSRESET => gt0_rxpcsreset_in,
      RXPD(1 downto 0) => gt0_rxpd_in(1 downto 0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt0_rxpmareset_in,
      RXPOLARITY => gt0_rxpolarity_in,
      RXPRBSCNTRESET => gt0_rxprbscntreset_in,
      RXPRBSERR => gt0_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => gt0_rxresetdone_out,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => gt0_rxstatus_out(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => gt0_rxsysclksel_in(1 downto 0),
      RXUSERRDY => gt0_rxuserrdy_in,
      RXUSRCLK => gt0_rxusrclk_in,
      RXUSRCLK2 => gt0_rxusrclk2_in,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 4) => B"0000",
      TXCHARISK(3 downto 0) => gt0_txcharisk_in(3 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 32) => B"00000000000000000000000000000000",
      TXDATA(31 downto 0) => gt0_txdata_in(31 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => '0',
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt0_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gt0_txoutclk_out,
      TXOUTCLKFABRIC => gt0_txoutclkfabric_out,
      TXOUTCLKPCS => gt0_txoutclkpcs_out,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => gt0_txpcsreset_in,
      TXPD(1 downto 0) => gt0_txpd_in(1 downto 0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt0_txpmareset_in,
      TXPOLARITY => gt0_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt0_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => gt0_txresetdone_out,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => gt0_txsysclksel_in(1 downto 0),
      TXUSERRDY => gt0_txuserrdy_in,
      TXUSRCLK => gt0_txusrclk_in,
      TXUSRCLK2 => gt0_txusrclk2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_GT_7 is
  port (
    gt1_cpllfbclklost_out : out STD_LOGIC;
    gt1_cplllock_out : out STD_LOGIC;
    gt1_drprdy_out : out STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_gtxtxn_out : out STD_LOGIC;
    gt1_gtxtxp_out : out STD_LOGIC;
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxoutclk_out : out STD_LOGIC;
    gt1_rxoutclkfabric_out : out STD_LOGIC;
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txoutclk_out : out STD_LOGIC;
    gt1_txoutclkfabric_out : out STD_LOGIC;
    gt1_txoutclkpcs_out : out STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt1_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in : out STD_LOGIC;
    data_sync_reg1 : out STD_LOGIC;
    gt1_cplllockdetclk_in : in STD_LOGIC;
    gt1_cpllpd_in : in STD_LOGIC;
    gt1_cpllreset_in : in STD_LOGIC;
    gt1_drpclk_in : in STD_LOGIC;
    gt1_drpen_in : in STD_LOGIC;
    gt1_drpwe_in : in STD_LOGIC;
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_gtnorthrefclk0_in : in STD_LOGIC;
    gt1_gtnorthrefclk1_in : in STD_LOGIC;
    gt1_gtrefclk0_in : in STD_LOGIC;
    gt1_gtrefclk1_in : in STD_LOGIC;
    data_sync_reg4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt1_gtsouthrefclk0_in : in STD_LOGIC;
    gt1_gtsouthrefclk1_in : in STD_LOGIC;
    gt1_gttxreset_in : in STD_LOGIC;
    gt1_gtxrxn_in : in STD_LOGIC;
    gt1_gtxrxp_in : in STD_LOGIC;
    GT0_QPLLOUTCLK_IN : in STD_LOGIC;
    GT0_QPLLOUTREFCLK_IN : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxmcommaalignen_in : in STD_LOGIC;
    gt1_rxpcommaalignen_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxuserrdy_in : in STD_LOGIC;
    gt1_rxusrclk_in : in STD_LOGIC;
    gt1_rxusrclk2_in : in STD_LOGIC;
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txuserrdy_in : in STD_LOGIC;
    gt1_txusrclk_in : in STD_LOGIC;
    gt1_txusrclk2_in : in STD_LOGIC;
    gt1_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_txresetdone_out : in STD_LOGIC;
    gt0_txresetdone_out : in STD_LOGIC;
    gt3_txresetdone_out : in STD_LOGIC;
    gt2_rxresetdone_out : in STD_LOGIC;
    gt0_rxresetdone_out : in STD_LOGIC;
    gt3_rxresetdone_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_GT_7 : entity is "jesd204_phy_1_gt_GT";
end jesd204_phy_1_jesd204_phy_1_gt_GT_7;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_GT_7 is
  signal \^gt1_rxresetdone_out\ : STD_LOGIC;
  signal \^gt1_txresetdone_out\ : STD_LOGIC;
  signal gtxe2_i_n_2 : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtxe2_i : label is "PRIMITIVE";
begin
  gt1_rxresetdone_out <= \^gt1_rxresetdone_out\;
  gt1_txresetdone_out <= \^gt1_txresetdone_out\;
data_sync1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^gt1_txresetdone_out\,
      I1 => gt2_txresetdone_out,
      I2 => gt0_txresetdone_out,
      I3 => gt3_txresetdone_out,
      O => data_in
    );
\data_sync1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^gt1_rxresetdone_out\,
      I1 => gt2_rxresetdone_out,
      I2 => gt0_rxresetdone_out,
      I3 => gt3_rxresetdone_out,
      O => data_sync_reg1
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 4,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 12,
      CLK_COR_MIN_LAT => 8,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"3C",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"001E7080",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 57,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 3,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0B000023FF10400020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 10,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 40,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0104",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 1,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"111",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"111",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 10,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 40,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => gt1_cpllfbclklost_out,
      CPLLLOCK => gt1_cplllock_out,
      CPLLLOCKDETCLK => gt1_cplllockdetclk_in,
      CPLLLOCKEN => '1',
      CPLLPD => gt1_cpllpd_in,
      CPLLREFCLKLOST => gtxe2_i_n_2,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => gt1_cpllreset_in,
      DMONITOROUT(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt1_drpaddr_in(8 downto 0),
      DRPCLK => gt1_drpclk_in,
      DRPDI(15 downto 0) => gt1_drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => gt1_drpdo_out(15 downto 0),
      DRPEN => gt1_drpen_in,
      DRPRDY => gt1_drprdy_out,
      DRPWE => gt1_drpwe_in,
      EYESCANDATAERROR => gt1_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt1_eyescanreset_in,
      EYESCANTRIGGER => gt1_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => gt1_gtnorthrefclk0_in,
      GTNORTHREFCLK1 => gt1_gtnorthrefclk1_in,
      GTREFCLK0 => gt1_gtrefclk0_in,
      GTREFCLK1 => gt1_gtrefclk1_in,
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => data_sync_reg4(0),
      GTSOUTHREFCLK0 => gt1_gtsouthrefclk0_in,
      GTSOUTHREFCLK1 => gt1_gtsouthrefclk1_in,
      GTTXRESET => gt1_gttxreset_in,
      GTXRXN => gt1_gtxrxn_in,
      GTXRXP => gt1_gtxrxp_in,
      GTXTXN => gt1_gtxtxn_out,
      GTXTXP => gt1_gtxtxp_out,
      LOOPBACK(2 downto 0) => gt1_loopback_in(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => GT0_QPLLOUTCLK_IN,
      QPLLREFCLK => GT0_QPLLOUTREFCLK_IN,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt1_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => gt1_rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => gt1_rxbyteisaligned_out,
      RXBYTEREALIGN => gt1_rxbyterealign_out,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt1_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 4) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 4),
      RXCHARISCOMMA(3 downto 0) => gt1_rxchariscomma_out(3 downto 0),
      RXCHARISK(7 downto 4) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 4),
      RXCHARISK(3 downto 0) => gt1_rxcharisk_out(3 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED(1 downto 0),
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt1_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 32) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 32),
      RXDATA(31 downto 0) => gt1_rxdata_out(31 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt1_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 4) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 4),
      RXDISPERR(3 downto 0) => gt1_rxdisperr_out(3 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt1_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => gt1_rxmcommaalignen_in,
      RXMONITOROUT(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 4) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 4),
      RXNOTINTABLE(3 downto 0) => gt1_rxnotintable_out(3 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gt1_rxoutclk_out,
      RXOUTCLKFABRIC => gt1_rxoutclkfabric_out,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => gt1_rxpcommaalignen_in,
      RXPCSRESET => gt1_rxpcsreset_in,
      RXPD(1 downto 0) => gt1_rxpd_in(1 downto 0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt1_rxpmareset_in,
      RXPOLARITY => gt1_rxpolarity_in,
      RXPRBSCNTRESET => gt1_rxprbscntreset_in,
      RXPRBSERR => gt1_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => \^gt1_rxresetdone_out\,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => gt1_rxstatus_out(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => gt1_rxsysclksel_in(1 downto 0),
      RXUSERRDY => gt1_rxuserrdy_in,
      RXUSRCLK => gt1_rxusrclk_in,
      RXUSRCLK2 => gt1_rxusrclk2_in,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => gt1_txbufstatus_out(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 4) => B"0000",
      TXCHARISK(3 downto 0) => gt1_txcharisk_in(3 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 32) => B"00000000000000000000000000000000",
      TXDATA(31 downto 0) => gt1_txdata_in(31 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => '0',
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt1_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gt1_txoutclk_out,
      TXOUTCLKFABRIC => gt1_txoutclkfabric_out,
      TXOUTCLKPCS => gt1_txoutclkpcs_out,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => gt1_txpcsreset_in,
      TXPD(1 downto 0) => gt1_txpd_in(1 downto 0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt1_txpmareset_in,
      TXPOLARITY => gt1_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt1_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt1_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => \^gt1_txresetdone_out\,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => gt1_txsysclksel_in(1 downto 0),
      TXUSERRDY => gt1_txuserrdy_in,
      TXUSRCLK => gt1_txusrclk_in,
      TXUSRCLK2 => gt1_txusrclk2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_GT_8 is
  port (
    gt2_cpllfbclklost_out : out STD_LOGIC;
    gt2_cplllock_out : out STD_LOGIC;
    gt2_drprdy_out : out STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_gtxtxn_out : out STD_LOGIC;
    gt2_gtxtxp_out : out STD_LOGIC;
    gt2_rxbyteisaligned_out : out STD_LOGIC;
    gt2_rxbyterealign_out : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxoutclk_out : out STD_LOGIC;
    gt2_rxoutclkfabric_out : out STD_LOGIC;
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_txoutclk_out : out STD_LOGIC;
    gt2_txoutclkfabric_out : out STD_LOGIC;
    gt2_txoutclkpcs_out : out STD_LOGIC;
    gt2_txresetdone_out : out STD_LOGIC;
    gt2_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_cplllockdetclk_in : in STD_LOGIC;
    gt2_cpllpd_in : in STD_LOGIC;
    gt2_cpllreset_in : in STD_LOGIC;
    gt2_drpclk_in : in STD_LOGIC;
    gt2_drpen_in : in STD_LOGIC;
    gt2_drpwe_in : in STD_LOGIC;
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_gtnorthrefclk0_in : in STD_LOGIC;
    gt2_gtnorthrefclk1_in : in STD_LOGIC;
    gt2_gtrefclk0_in : in STD_LOGIC;
    gt2_gtrefclk1_in : in STD_LOGIC;
    data_sync_reg4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt2_gtsouthrefclk0_in : in STD_LOGIC;
    gt2_gtsouthrefclk1_in : in STD_LOGIC;
    gt2_gttxreset_in : in STD_LOGIC;
    gt2_gtxrxn_in : in STD_LOGIC;
    gt2_gtxrxp_in : in STD_LOGIC;
    GT0_QPLLOUTCLK_IN : in STD_LOGIC;
    GT0_QPLLOUTREFCLK_IN : in STD_LOGIC;
    gt2_rxbufreset_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxmcommaalignen_in : in STD_LOGIC;
    gt2_rxpcommaalignen_in : in STD_LOGIC;
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxuserrdy_in : in STD_LOGIC;
    gt2_rxusrclk_in : in STD_LOGIC;
    gt2_rxusrclk2_in : in STD_LOGIC;
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_txuserrdy_in : in STD_LOGIC;
    gt2_txusrclk_in : in STD_LOGIC;
    gt2_txusrclk2_in : in STD_LOGIC;
    gt2_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_GT_8 : entity is "jesd204_phy_1_gt_GT";
end jesd204_phy_1_jesd204_phy_1_gt_GT_8;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_GT_8 is
  signal gtxe2_i_n_2 : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtxe2_i : label is "PRIMITIVE";
begin
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 4,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 12,
      CLK_COR_MIN_LAT => 8,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"3C",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"001E7080",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 57,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 3,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0B000023FF10400020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 10,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 40,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0104",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 1,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"111",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"111",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 10,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 40,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => gt2_cpllfbclklost_out,
      CPLLLOCK => gt2_cplllock_out,
      CPLLLOCKDETCLK => gt2_cplllockdetclk_in,
      CPLLLOCKEN => '1',
      CPLLPD => gt2_cpllpd_in,
      CPLLREFCLKLOST => gtxe2_i_n_2,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => gt2_cpllreset_in,
      DMONITOROUT(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt2_drpaddr_in(8 downto 0),
      DRPCLK => gt2_drpclk_in,
      DRPDI(15 downto 0) => gt2_drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => gt2_drpdo_out(15 downto 0),
      DRPEN => gt2_drpen_in,
      DRPRDY => gt2_drprdy_out,
      DRPWE => gt2_drpwe_in,
      EYESCANDATAERROR => gt2_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt2_eyescanreset_in,
      EYESCANTRIGGER => gt2_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => gt2_gtnorthrefclk0_in,
      GTNORTHREFCLK1 => gt2_gtnorthrefclk1_in,
      GTREFCLK0 => gt2_gtrefclk0_in,
      GTREFCLK1 => gt2_gtrefclk1_in,
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => data_sync_reg4(0),
      GTSOUTHREFCLK0 => gt2_gtsouthrefclk0_in,
      GTSOUTHREFCLK1 => gt2_gtsouthrefclk1_in,
      GTTXRESET => gt2_gttxreset_in,
      GTXRXN => gt2_gtxrxn_in,
      GTXRXP => gt2_gtxrxp_in,
      GTXTXN => gt2_gtxtxn_out,
      GTXTXP => gt2_gtxtxp_out,
      LOOPBACK(2 downto 0) => gt2_loopback_in(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => GT0_QPLLOUTCLK_IN,
      QPLLREFCLK => GT0_QPLLOUTREFCLK_IN,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt2_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => gt2_rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => gt2_rxbyteisaligned_out,
      RXBYTEREALIGN => gt2_rxbyterealign_out,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt2_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 4) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 4),
      RXCHARISCOMMA(3 downto 0) => gt2_rxchariscomma_out(3 downto 0),
      RXCHARISK(7 downto 4) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 4),
      RXCHARISK(3 downto 0) => gt2_rxcharisk_out(3 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED(1 downto 0),
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt2_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 32) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 32),
      RXDATA(31 downto 0) => gt2_rxdata_out(31 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt2_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 4) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 4),
      RXDISPERR(3 downto 0) => gt2_rxdisperr_out(3 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt2_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => gt2_rxmcommaalignen_in,
      RXMONITOROUT(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 4) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 4),
      RXNOTINTABLE(3 downto 0) => gt2_rxnotintable_out(3 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gt2_rxoutclk_out,
      RXOUTCLKFABRIC => gt2_rxoutclkfabric_out,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => gt2_rxpcommaalignen_in,
      RXPCSRESET => gt2_rxpcsreset_in,
      RXPD(1 downto 0) => gt2_rxpd_in(1 downto 0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt2_rxpmareset_in,
      RXPOLARITY => gt2_rxpolarity_in,
      RXPRBSCNTRESET => gt2_rxprbscntreset_in,
      RXPRBSERR => gt2_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => gt2_rxresetdone_out,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => gt2_rxstatus_out(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => gt2_rxsysclksel_in(1 downto 0),
      RXUSERRDY => gt2_rxuserrdy_in,
      RXUSRCLK => gt2_rxusrclk_in,
      RXUSRCLK2 => gt2_rxusrclk2_in,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => gt2_txbufstatus_out(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 4) => B"0000",
      TXCHARISK(3 downto 0) => gt2_txcharisk_in(3 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 32) => B"00000000000000000000000000000000",
      TXDATA(31 downto 0) => gt2_txdata_in(31 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => '0',
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt2_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gt2_txoutclk_out,
      TXOUTCLKFABRIC => gt2_txoutclkfabric_out,
      TXOUTCLKPCS => gt2_txoutclkpcs_out,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => gt2_txpcsreset_in,
      TXPD(1 downto 0) => gt2_txpd_in(1 downto 0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt2_txpmareset_in,
      TXPOLARITY => gt2_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt2_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt2_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => gt2_txresetdone_out,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => gt2_txsysclksel_in(1 downto 0),
      TXUSERRDY => gt2_txuserrdy_in,
      TXUSRCLK => gt2_txusrclk_in,
      TXUSRCLK2 => gt2_txusrclk2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_GT_9 is
  port (
    gt3_cpllfbclklost_out : out STD_LOGIC;
    gt3_cplllock_out : out STD_LOGIC;
    gt3_drprdy_out : out STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_gtxtxn_out : out STD_LOGIC;
    gt3_gtxtxp_out : out STD_LOGIC;
    gt3_rxbyteisaligned_out : out STD_LOGIC;
    gt3_rxbyterealign_out : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxoutclk_out : out STD_LOGIC;
    gt3_rxoutclkfabric_out : out STD_LOGIC;
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_txoutclk_out : out STD_LOGIC;
    gt3_txoutclkfabric_out : out STD_LOGIC;
    gt3_txoutclkpcs_out : out STD_LOGIC;
    gt3_txresetdone_out : out STD_LOGIC;
    gt3_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_cplllockdetclk_in : in STD_LOGIC;
    gt3_cpllpd_in : in STD_LOGIC;
    gt3_cpllreset_in : in STD_LOGIC;
    gt3_drpclk_in : in STD_LOGIC;
    gt3_drpen_in : in STD_LOGIC;
    gt3_drpwe_in : in STD_LOGIC;
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_gtnorthrefclk0_in : in STD_LOGIC;
    gt3_gtnorthrefclk1_in : in STD_LOGIC;
    gt3_gtrefclk0_in : in STD_LOGIC;
    gt3_gtrefclk1_in : in STD_LOGIC;
    data_sync_reg4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt3_gtsouthrefclk0_in : in STD_LOGIC;
    gt3_gtsouthrefclk1_in : in STD_LOGIC;
    gt3_gttxreset_in : in STD_LOGIC;
    gt3_gtxrxn_in : in STD_LOGIC;
    gt3_gtxrxp_in : in STD_LOGIC;
    GT0_QPLLOUTCLK_IN : in STD_LOGIC;
    GT0_QPLLOUTREFCLK_IN : in STD_LOGIC;
    gt3_rxbufreset_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxmcommaalignen_in : in STD_LOGIC;
    gt3_rxpcommaalignen_in : in STD_LOGIC;
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxuserrdy_in : in STD_LOGIC;
    gt3_rxusrclk_in : in STD_LOGIC;
    gt3_rxusrclk2_in : in STD_LOGIC;
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    gt3_txusrclk_in : in STD_LOGIC;
    gt3_txusrclk2_in : in STD_LOGIC;
    gt3_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_GT_9 : entity is "jesd204_phy_1_gt_GT";
end jesd204_phy_1_jesd204_phy_1_gt_GT_9;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_GT_9 is
  signal gtxe2_i_n_2 : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtxe2_i : label is "PRIMITIVE";
begin
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 4,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 12,
      CLK_COR_MIN_LAT => 8,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"3C",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"001E7080",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 57,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 3,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0B000023FF10400020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 10,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 40,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0104",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 1,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"111",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"111",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 10,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 40,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => gt3_cpllfbclklost_out,
      CPLLLOCK => gt3_cplllock_out,
      CPLLLOCKDETCLK => gt3_cplllockdetclk_in,
      CPLLLOCKEN => '1',
      CPLLPD => gt3_cpllpd_in,
      CPLLREFCLKLOST => gtxe2_i_n_2,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => gt3_cpllreset_in,
      DMONITOROUT(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt3_drpaddr_in(8 downto 0),
      DRPCLK => gt3_drpclk_in,
      DRPDI(15 downto 0) => gt3_drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => gt3_drpdo_out(15 downto 0),
      DRPEN => gt3_drpen_in,
      DRPRDY => gt3_drprdy_out,
      DRPWE => gt3_drpwe_in,
      EYESCANDATAERROR => gt3_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt3_eyescanreset_in,
      EYESCANTRIGGER => gt3_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => gt3_gtnorthrefclk0_in,
      GTNORTHREFCLK1 => gt3_gtnorthrefclk1_in,
      GTREFCLK0 => gt3_gtrefclk0_in,
      GTREFCLK1 => gt3_gtrefclk1_in,
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => data_sync_reg4(0),
      GTSOUTHREFCLK0 => gt3_gtsouthrefclk0_in,
      GTSOUTHREFCLK1 => gt3_gtsouthrefclk1_in,
      GTTXRESET => gt3_gttxreset_in,
      GTXRXN => gt3_gtxrxn_in,
      GTXRXP => gt3_gtxrxp_in,
      GTXTXN => gt3_gtxtxn_out,
      GTXTXP => gt3_gtxtxp_out,
      LOOPBACK(2 downto 0) => gt3_loopback_in(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => GT0_QPLLOUTCLK_IN,
      QPLLREFCLK => GT0_QPLLOUTREFCLK_IN,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt3_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => gt3_rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => gt3_rxbyteisaligned_out,
      RXBYTEREALIGN => gt3_rxbyterealign_out,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt3_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 4) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 4),
      RXCHARISCOMMA(3 downto 0) => gt3_rxchariscomma_out(3 downto 0),
      RXCHARISK(7 downto 4) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 4),
      RXCHARISK(3 downto 0) => gt3_rxcharisk_out(3 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED(1 downto 0),
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt3_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 32) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 32),
      RXDATA(31 downto 0) => gt3_rxdata_out(31 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt3_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 4) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 4),
      RXDISPERR(3 downto 0) => gt3_rxdisperr_out(3 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt3_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => gt3_rxmcommaalignen_in,
      RXMONITOROUT(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 4) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 4),
      RXNOTINTABLE(3 downto 0) => gt3_rxnotintable_out(3 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gt3_rxoutclk_out,
      RXOUTCLKFABRIC => gt3_rxoutclkfabric_out,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => gt3_rxpcommaalignen_in,
      RXPCSRESET => gt3_rxpcsreset_in,
      RXPD(1 downto 0) => gt3_rxpd_in(1 downto 0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt3_rxpmareset_in,
      RXPOLARITY => gt3_rxpolarity_in,
      RXPRBSCNTRESET => gt3_rxprbscntreset_in,
      RXPRBSERR => gt3_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => gt3_rxresetdone_out,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => gt3_rxstatus_out(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => gt3_rxsysclksel_in(1 downto 0),
      RXUSERRDY => gt3_rxuserrdy_in,
      RXUSRCLK => gt3_rxusrclk_in,
      RXUSRCLK2 => gt3_rxusrclk2_in,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => gt3_txbufstatus_out(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 4) => B"0000",
      TXCHARISK(3 downto 0) => gt3_txcharisk_in(3 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 32) => B"00000000000000000000000000000000",
      TXDATA(31 downto 0) => gt3_txdata_in(31 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => '0',
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt3_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gt3_txoutclk_out,
      TXOUTCLKFABRIC => gt3_txoutclkfabric_out,
      TXOUTCLKPCS => gt3_txoutclkpcs_out,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => gt3_txpcsreset_in,
      TXPD(1 downto 0) => gt3_txpd_in(1 downto 0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt3_txpmareset_in,
      TXPOLARITY => gt3_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt3_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt3_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => gt3_txresetdone_out,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => gt3_txsysclksel_in(1 downto 0),
      TXUSERRDY => gt3_txuserrdy_in,
      TXUSRCLK => gt3_txusrclk_in,
      TXUSRCLK2 => gt3_txusrclk2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block is
  port (
    data_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_sync_reg6_0 : in STD_LOGIC;
    time_out_2ms_reg : in STD_LOGIC;
    pll_reset_asserted_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wait_time_done : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[1]\ : in STD_LOGIC;
    init_wait_done_reg : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block is
  signal \FSM_sequential_tx_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal tx_state04_out : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
  data_out <= \^data_out\;
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8BB0033B888"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[3]_i_3_n_0\,
      I1 => \out\(0),
      I2 => wait_time_done,
      I3 => \FSM_sequential_tx_state_reg[1]\,
      I4 => \out\(3),
      I5 => init_wait_done_reg,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \^data_out\,
      I1 => gt0_txsysclksel_in(0),
      I2 => data_sync_reg6_0,
      I3 => time_out_2ms_reg,
      O => \FSM_sequential_tx_state[3]_i_11_n_0\
    );
\FSM_sequential_tx_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => pll_reset_asserted_reg,
      I1 => \^data_out\,
      I2 => gt0_txsysclksel_in(0),
      I3 => data_sync_reg6_0,
      O => tx_state04_out
    );
\FSM_sequential_tx_state_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_tx_state_reg[3]_i_7_n_0\,
      I1 => \FSM_sequential_tx_state_reg[3]_i_8_n_0\,
      O => \FSM_sequential_tx_state_reg[3]_i_3_n_0\,
      S => \out\(1)
    );
\FSM_sequential_tx_state_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => tx_state04_out,
      I1 => reset_time_out_reg,
      O => \FSM_sequential_tx_state_reg[3]_i_7_n_0\,
      S => \out\(2)
    );
\FSM_sequential_tx_state_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_tx_state[3]_i_11_n_0\,
      I1 => reset_time_out_reg_0,
      O => \FSM_sequential_tx_state_reg[3]_i_8_n_0\,
      S => \out\(2)
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => '1',
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    reset_time_out_reg : out STD_LOGIC;
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_sync_reg6_0 : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    txresetdone_s3_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    init_wait_done_reg : in STD_LOGIC;
    GT0_QPLLLOCK_IN : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_10 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_10;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_10 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal reset_time_out_1 : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal tx_state0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => GT0_QPLLLOCK_IN,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reset_time_out_1,
      I1 => reset_time_out_i_3_n_0,
      I2 => reset_time_out,
      O => reset_time_out_reg
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CFC0EF00C0C0E0"
    )
        port map (
      I0 => tx_state0,
      I1 => txresetdone_s3_reg,
      I2 => \out\(0),
      I3 => \out\(3),
      I4 => \out\(2),
      I5 => init_wait_done_reg,
      O => reset_time_out_1
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303030302020FFFC"
    )
        port map (
      I0 => tx_state0,
      I1 => \out\(3),
      I2 => \out\(0),
      I3 => init_wait_done_reg,
      I4 => \out\(1),
      I5 => \out\(2),
      O => reset_time_out_i_3_n_0
    );
\reset_time_out_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_out\,
      I1 => gt0_txsysclksel_in(0),
      I2 => data_sync_reg6_0,
      O => tx_state0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_11 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_11 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_11;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_11 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_12 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mmcm_lock_count_reg[4]\ : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_12 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_12;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_12 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal mmcm_lock_i : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_1 : label is "soft_lutpair22";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => '1',
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => mmcm_lock_i,
      R => '0'
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_i,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \mmcm_lock_count_reg[4]\,
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_13 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    gt0_txusrclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_13 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_13;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_13 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_14 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_14 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_14;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_14 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_15 is
  port (
    data_out : out STD_LOGIC;
    GT_TX_FSM_RESET_DONE_OUT : in STD_LOGIC;
    gt0_txusrclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_15 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_15;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_15 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => GT_TX_FSM_RESET_DONE_OUT,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_16 is
  port (
    data_out : out STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_16 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_16;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_16 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => '1',
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_17 is
  port (
    rx_state01_out : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : out STD_LOGIC;
    reset_time_out_reg : out STD_LOGIC;
    data_out : in STD_LOGIC;
    pll_reset_asserted_reg : in STD_LOGIC;
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxsysclksel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    time_out_2ms_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxresetdone_s3 : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    gt3_rx_cdrlocked_reg : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]\ : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC;
    gt3_rx_cdrlocked_reg_0 : in STD_LOGIC;
    GT0_QPLLLOCK_IN : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_17 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_17;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_17 is
  signal adapt_count_reset : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal qplllock_sync : STD_LOGIC;
  signal \reset_time_out_i_3__0_n_0\ : STD_LOGIC;
  signal \reset_time_out_i_5__0_n_0\ : STD_LOGIC;
  signal \^rx_state01_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of reset_time_out_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of reset_time_out_i_7 : label is "soft_lutpair0";
begin
  rx_state01_out <= \^rx_state01_out\;
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE0EFEAE"
    )
        port map (
      I0 => time_out_2ms_reg,
      I1 => adapt_count_reset,
      I2 => \out\(2),
      I3 => rxresetdone_s3,
      I4 => reset_time_out_reg_0,
      I5 => \out\(3),
      O => \FSM_sequential_rx_state_reg[0]\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => GT0_QPLLLOCK_IN,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => qplllock_sync,
      R => '0'
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFFFFFEAE0000"
    )
        port map (
      I0 => gt3_rx_cdrlocked_reg,
      I1 => \reset_time_out_i_3__0_n_0\,
      I2 => \out\(2),
      I3 => \FSM_sequential_rx_state_reg[3]\,
      I4 => \reset_time_out_i_5__0_n_0\,
      I5 => reset_time_out_reg_0,
      O => reset_time_out_reg
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303FBBBF303F888C"
    )
        port map (
      I0 => adapt_count_reset,
      I1 => \out\(1),
      I2 => data_sync_reg6_0,
      I3 => \out\(0),
      I4 => \out\(3),
      I5 => \^rx_state01_out\,
      O => \reset_time_out_i_3__0_n_0\
    );
\reset_time_out_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F30BFB80F30BCB8"
    )
        port map (
      I0 => gt3_rx_cdrlocked_reg_0,
      I1 => \out\(2),
      I2 => \out\(3),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \^rx_state01_out\,
      O => \reset_time_out_i_5__0_n_0\
    );
reset_time_out_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => qplllock_sync,
      I1 => gt0_rxsysclksel_in(0),
      I2 => data_out,
      O => adapt_count_reset
    );
reset_time_out_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5030FF"
    )
        port map (
      I0 => qplllock_sync,
      I1 => data_out,
      I2 => pll_reset_asserted_reg,
      I3 => gt0_txsysclksel_in(0),
      I4 => gt0_rxsysclksel_in(0),
      O => \^rx_state01_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_18 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_18 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_18;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_18 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_19 is
  port (
    data_out : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    GT1_DATA_VALID_IN : in STD_LOGIC;
    GT2_DATA_VALID_IN : in STD_LOGIC;
    GT0_DATA_VALID_IN : in STD_LOGIC;
    GT3_DATA_VALID_IN : in STD_LOGIC;
    DONT_RESET_ON_DATA_ERROR_IN : in STD_LOGIC;
    time_out_100us_reg : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    GT_RX_FSM_RESET_DONE_OUT : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[2]_0\ : in STD_LOGIC;
    \wait_time_cnt_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    time_out_2ms_reg : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    rx_state128_out : in STD_LOGIC;
    rx_state01_out : in STD_LOGIC;
    time_out_1us_reg : in STD_LOGIC;
    time_out_wait_bypass_s3 : in STD_LOGIC;
    time_out_2ms_reg_0 : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_19 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_19;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_19 is
  signal DATA_VALID : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_4_n_0 : STD_LOGIC;
  signal rx_state126_out : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[1]_i_2\ : label is "soft_lutpair1";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute SOFT_HLUTNM of rx_fsm_reset_done_int_i_4 : label is "soft_lutpair1";
begin
  data_out <= \^data_out\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C5DFD0C0C5D5D"
    )
        port map (
      I0 => \out\(0),
      I1 => \FSM_sequential_rx_state_reg[2]\,
      I2 => \out\(3),
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => rx_state126_out,
      O => D(0)
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000050000FF7700"
    )
        port map (
      I0 => \out\(2),
      I1 => rx_state128_out,
      I2 => rx_state126_out,
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \out\(3),
      O => D(1)
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => DONT_RESET_ON_DATA_ERROR_IN,
      I1 => time_out_100us_reg,
      I2 => reset_time_out_reg,
      I3 => \^data_out\,
      O => rx_state126_out
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA00A2000000A2"
    )
        port map (
      I0 => \out\(3),
      I1 => time_out_wait_bypass_s3,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => \FSM_sequential_rx_state[3]_i_5_n_0\,
      O => D(2)
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0B0000F"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => time_out_2ms_reg_0,
      I2 => \out\(1),
      I3 => rx_state126_out,
      I4 => \out\(2),
      O => \FSM_sequential_rx_state[3]_i_5_n_0\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010101F"
    )
        port map (
      I0 => \out\(2),
      I1 => \^data_out\,
      I2 => \out\(3),
      I3 => \wait_time_cnt_reg[4]\,
      I4 => Q(0),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00EFEF0F00E0E0"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => rx_state128_out,
      I2 => \out\(2),
      I3 => rx_fsm_reset_done_int_i_4_n_0,
      I4 => \out\(3),
      I5 => rx_state01_out,
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
\FSM_sequential_rx_state_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_rx_state_reg[3]_i_3_n_0\,
      I1 => \FSM_sequential_rx_state_reg[3]_i_4_n_0\,
      O => E(0),
      S => \out\(0)
    );
\FSM_sequential_rx_state_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_rx_state_reg[2]_0\,
      I1 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      O => \FSM_sequential_rx_state_reg[3]_i_3_n_0\,
      S => \out\(1)
    );
\FSM_sequential_rx_state_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_rx_state[3]_i_8_n_0\,
      I1 => time_out_2ms_reg,
      O => \FSM_sequential_rx_state_reg[3]_i_4_n_0\,
      S => \out\(1)
    );
\data_sync1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => GT1_DATA_VALID_IN,
      I1 => GT2_DATA_VALID_IN,
      I2 => GT0_DATA_VALID_IN,
      I3 => GT3_DATA_VALID_IN,
      O => DATA_VALID
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => DATA_VALID,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => rx_fsm_reset_done_int,
      I1 => \out\(2),
      I2 => \out\(3),
      I3 => rx_fsm_reset_done_int_i_3_n_0,
      I4 => GT_RX_FSM_RESET_DONE_OUT,
      O => rx_fsm_reset_done_int_reg
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^data_out\,
      I1 => time_out_1us_reg,
      I2 => reset_time_out_reg,
      I3 => \out\(0),
      I4 => \out\(2),
      O => rx_fsm_reset_done_int
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0838083838380838"
    )
        port map (
      I0 => rx_fsm_reset_done_int_i_4_n_0,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^data_out\,
      I4 => time_out_1us_reg,
      I5 => reset_time_out_reg,
      O => rx_fsm_reset_done_int_i_3_n_0
    );
rx_fsm_reset_done_int_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => DONT_RESET_ON_DATA_ERROR_IN,
      I1 => time_out_100us_reg,
      I2 => reset_time_out_reg,
      I3 => \^data_out\,
      O => rx_fsm_reset_done_int_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_20 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mmcm_lock_count_reg[4]\ : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_20 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_20;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_20 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal mmcm_lock_i : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mmcm_lock_reclocked_i_1__0\ : label is "soft_lutpair2";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => '1',
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => mmcm_lock_i,
      R => '0'
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_i,
      O => SR(0)
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \mmcm_lock_count_reg[4]\,
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_21 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    gt0_rxusrclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_21 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_21;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_21 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_22 is
  port (
    data_out : out STD_LOGIC;
    GT_RX_FSM_RESET_DONE_OUT : in STD_LOGIC;
    gt0_rxusrclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_22 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_22;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_22 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => GT_RX_FSM_RESET_DONE_OUT,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_sync_block_23 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_sync_block_23 : entity is "jesd204_phy_1_gt_sync_block";
end jesd204_phy_1_jesd204_phy_1_gt_sync_block_23;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_sync_block_23 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gtwizard_0_common is
  port (
    common0_qpll_lock_out : out STD_LOGIC;
    common0_qpll_clk_out : out STD_LOGIC;
    common0_qpll_refclk_out : out STD_LOGIC;
    qpll_refclk : in STD_LOGIC;
    drpclk : in STD_LOGIC;
    qpll_reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gtwizard_0_common : entity is "jesd204_phy_1_gtwizard_0_common";
end jesd204_phy_1_jesd204_phy_1_gtwizard_0_common;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gtwizard_0_common is
  signal gtxe2_common_i_n_0 : STD_LOGIC;
  signal gtxe2_common_i_n_10 : STD_LOGIC;
  signal gtxe2_common_i_n_11 : STD_LOGIC;
  signal gtxe2_common_i_n_12 : STD_LOGIC;
  signal gtxe2_common_i_n_13 : STD_LOGIC;
  signal gtxe2_common_i_n_14 : STD_LOGIC;
  signal gtxe2_common_i_n_15 : STD_LOGIC;
  signal gtxe2_common_i_n_16 : STD_LOGIC;
  signal gtxe2_common_i_n_17 : STD_LOGIC;
  signal gtxe2_common_i_n_18 : STD_LOGIC;
  signal gtxe2_common_i_n_19 : STD_LOGIC;
  signal gtxe2_common_i_n_20 : STD_LOGIC;
  signal gtxe2_common_i_n_21 : STD_LOGIC;
  signal gtxe2_common_i_n_22 : STD_LOGIC;
  signal gtxe2_common_i_n_5 : STD_LOGIC;
  signal gtxe2_common_i_n_7 : STD_LOGIC;
  signal gtxe2_common_i_n_8 : STD_LOGIC;
  signal gtxe2_common_i_n_9 : STD_LOGIC;
  signal NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtxe2_common_i : label is "PRIMITIVE";
begin
gtxe2_common_i: unisim.vcomponents.GTXE2_COMMON
    generic map(
      BIAS_CFG => X"0000040000001000",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_QPLLLOCKDETCLK_INVERTED => '0',
      QPLL_CFG => X"0680181",
      QPLL_CLKOUT_CFG => B"0000",
      QPLL_COARSE_FREQ_OVRD => B"010000",
      QPLL_COARSE_FREQ_OVRD_EN => '0',
      QPLL_CP => B"0000011111",
      QPLL_CP_MONITOR_EN => '0',
      QPLL_DMONITOR_SEL => '0',
      QPLL_FBDIV => B"0010000000",
      QPLL_FBDIV_MONITOR_EN => '0',
      QPLL_FBDIV_RATIO => '1',
      QPLL_INIT_CFG => X"000006",
      QPLL_LOCK_CFG => X"21E8",
      QPLL_LPF => B"1111",
      QPLL_REFCLK_DIV => 1,
      SIM_QPLLREFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_VERSION => "4.0"
    )
        port map (
      BGBYPASSB => '1',
      BGMONITORENB => '1',
      BGPDB => '1',
      BGRCALOVRD(4 downto 0) => B"11111",
      DRPADDR(7 downto 0) => B"00000000",
      DRPCLK => '0',
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15) => gtxe2_common_i_n_7,
      DRPDO(14) => gtxe2_common_i_n_8,
      DRPDO(13) => gtxe2_common_i_n_9,
      DRPDO(12) => gtxe2_common_i_n_10,
      DRPDO(11) => gtxe2_common_i_n_11,
      DRPDO(10) => gtxe2_common_i_n_12,
      DRPDO(9) => gtxe2_common_i_n_13,
      DRPDO(8) => gtxe2_common_i_n_14,
      DRPDO(7) => gtxe2_common_i_n_15,
      DRPDO(6) => gtxe2_common_i_n_16,
      DRPDO(5) => gtxe2_common_i_n_17,
      DRPDO(4) => gtxe2_common_i_n_18,
      DRPDO(3) => gtxe2_common_i_n_19,
      DRPDO(2) => gtxe2_common_i_n_20,
      DRPDO(1) => gtxe2_common_i_n_21,
      DRPDO(0) => gtxe2_common_i_n_22,
      DRPEN => '0',
      DRPRDY => gtxe2_common_i_n_0,
      DRPWE => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => qpll_refclk,
      GTREFCLK1 => '0',
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      PMARSVD(7 downto 0) => B"00000000",
      QPLLDMONITOR(7 downto 0) => NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED(7 downto 0),
      QPLLFBCLKLOST => NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED,
      QPLLLOCK => common0_qpll_lock_out,
      QPLLLOCKDETCLK => drpclk,
      QPLLLOCKEN => '1',
      QPLLOUTCLK => common0_qpll_clk_out,
      QPLLOUTREFCLK => common0_qpll_refclk_out,
      QPLLOUTRESET => '0',
      QPLLPD => '0',
      QPLLREFCLKLOST => gtxe2_common_i_n_5,
      QPLLREFCLKSEL(2 downto 0) => B"001",
      QPLLRESET => qpll_reset_out,
      QPLLRSVD1(15 downto 0) => B"0000000000000000",
      QPLLRSVD2(4 downto 0) => B"11111",
      RCALENB => '1',
      REFCLKOUTMONITOR => NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block is
  port (
    rx_reset_done_r0 : out STD_LOGIC;
    GT_RX_FSM_RESET_DONE_OUT : in STD_LOGIC;
    O23 : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal rx_chan_rst_done_sync : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => O23,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => rx_chan_rst_done_sync,
      R => '0'
    );
rx_reset_done_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => GT_RX_FSM_RESET_DONE_OUT,
      I1 => rx_chan_rst_done_sync,
      O => rx_reset_done_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block_0 is
  port (
    data_out : out STD_LOGIC;
    O24 : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block_0 : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block_0;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block_0 is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => O24,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block_1 is
  port (
    gt_rxreset0 : out STD_LOGIC;
    data_out : in STD_LOGIC;
    GT_RX_FSM_RESET_DONE_OUT : in STD_LOGIC;
    rx_sys_reset : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block_1 : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block_1;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block_1 is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal rx_rst_all_sync : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => rx_sys_reset,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => rx_rst_all_sync,
      R => '0'
    );
gt_rxreset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rx_rst_all_sync,
      I1 => data_out,
      I2 => GT_RX_FSM_RESET_DONE_OUT,
      O => gt_rxreset0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block_2 is
  port (
    data_out : out STD_LOGIC;
    rx_reset_gt : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block_2 : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block_2;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block_2 is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => rx_reset_gt,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block_3 is
  port (
    tx_reset_done_r0 : out STD_LOGIC;
    GT_TX_FSM_RESET_DONE_OUT : in STD_LOGIC;
    data_in : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block_3 : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block_3;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block_3 is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal tx_chan_rst_done_sync : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_in,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => tx_chan_rst_done_sync,
      R => '0'
    );
tx_reset_done_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => GT_TX_FSM_RESET_DONE_OUT,
      I1 => tx_chan_rst_done_sync,
      O => tx_reset_done_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block_4 is
  port (
    data_out : out STD_LOGIC;
    O24 : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block_4 : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block_4;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block_4 is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => O24,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block_5 is
  port (
    gt_txreset0 : out STD_LOGIC;
    data_out : in STD_LOGIC;
    GT_TX_FSM_RESET_DONE_OUT : in STD_LOGIC;
    tx_sys_reset : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block_5 : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block_5;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block_5 is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal tx_rst_all_sync : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => tx_sys_reset,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => tx_rst_all_sync,
      R => '0'
    );
gt_txreset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => tx_rst_all_sync,
      I1 => data_out,
      I2 => GT_TX_FSM_RESET_DONE_OUT,
      O => gt_txreset0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_sync_block_6 is
  port (
    data_out : out STD_LOGIC;
    tx_reset_gt : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_sync_block_6 : entity is "jesd204_phy_1_sync_block";
end jesd204_phy_1_jesd204_phy_1_sync_block_6;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_sync_block_6 is
  signal data_sync0 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg0 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg0 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg0 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg0 : label is "FD";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
begin
data_sync_reg0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => tx_reset_gt,
      Q => data_sync0,
      R => '0'
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk,
      CE => '1',
      D => data_sync3,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_RX_STARTUP_FSM is
  port (
    GT_RX_FSM_RESET_DONE_OUT : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gt2_rx_cdrlock_counter_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gt3_rx_cdrlock_counter_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gt0_rx_cdrlock_counter_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    GT0_QPLLRESET_OUT : out STD_LOGIC;
    gt1_rx_cdrlocked_reg : out STD_LOGIC;
    gt2_rx_cdrlocked_reg : out STD_LOGIC;
    gt3_rx_cdrlocked_reg : out STD_LOGIC;
    gt0_rx_cdrlocked_reg : out STD_LOGIC;
    gt2_cpllreset_in : out STD_LOGIC;
    gt0_cpllreset_in : out STD_LOGIC;
    gt1_cpllreset_in : out STD_LOGIC;
    gt3_cpllreset_in : out STD_LOGIC;
    gt0_rxuserrdy_in : out STD_LOGIC;
    gt1_rxuserrdy_in : out STD_LOGIC;
    gt2_rxuserrdy_in : out STD_LOGIC;
    gt3_rxuserrdy_in : out STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC;
    gt0_rxusrclk_in : in STD_LOGIC;
    SOFT_RESET_RX_IN : in STD_LOGIC;
    GT1_DATA_VALID_IN : in STD_LOGIC;
    GT2_DATA_VALID_IN : in STD_LOGIC;
    GT0_DATA_VALID_IN : in STD_LOGIC;
    GT3_DATA_VALID_IN : in STD_LOGIC;
    gt0_rxsysclksel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    DONT_RESET_ON_DATA_ERROR_IN : in STD_LOGIC;
    gt1_gtrxreset_in : in STD_LOGIC;
    gt2_gtrxreset_in : in STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    gt0_gtrxreset_in : in STD_LOGIC;
    gt_tx_qpllreset_t : in STD_LOGIC;
    gt3_rx_cdrlocked_reg_0 : in STD_LOGIC;
    gt0_rx_cdrlocked_reg_0 : in STD_LOGIC;
    gt2_rx_cdrlocked_reg_0 : in STD_LOGIC;
    gt1_rx_cdrlocked_reg_0 : in STD_LOGIC;
    \gt1_rx_cdrlock_counter_reg[0]\ : in STD_LOGIC;
    \gt1_rx_cdrlock_counter_reg[7]\ : in STD_LOGIC;
    \gt2_rx_cdrlock_counter_reg[0]\ : in STD_LOGIC;
    \gt2_rx_cdrlock_counter_reg[7]\ : in STD_LOGIC;
    \gt3_rx_cdrlock_counter_reg[0]\ : in STD_LOGIC;
    \gt3_rx_cdrlock_counter_reg[7]\ : in STD_LOGIC;
    \gt0_rx_cdrlock_counter_reg[0]\ : in STD_LOGIC;
    \gt0_rx_cdrlock_counter_reg[7]\ : in STD_LOGIC;
    data_in : in STD_LOGIC;
    GT0_QPLLLOCK_IN : in STD_LOGIC;
    CPLL_RESET : in STD_LOGIC;
    UNCONN_IN : in STD_LOGIC;
    UNCONN_IN_0 : in STD_LOGIC;
    UNCONN_IN_1 : in STD_LOGIC;
    UNCONN_IN_2 : in STD_LOGIC;
    UNCONN_IN_3 : in STD_LOGIC;
    UNCONN_IN_4 : in STD_LOGIC;
    UNCONN_IN_5 : in STD_LOGIC;
    UNCONN_IN_6 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_RX_STARTUP_FSM : entity is "jesd204_phy_1_gt_RX_STARTUP_FSM";
end jesd204_phy_1_jesd204_phy_1_gt_RX_STARTUP_FSM;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_RX_STARTUP_FSM is
  signal \CPLL_RESET_i_1__0_n_0\ : STD_LOGIC;
  signal CPLL_RESET_i_2_n_0 : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \^gt_rx_fsm_reset_done_out\ : STD_LOGIC;
  signal QPLL_RESET : STD_LOGIC;
  signal \QPLL_RESET_i_1__0_n_0\ : STD_LOGIC;
  signal QPLL_RESET_i_3_n_0 : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal cplllock_sync : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal gt_gtrxreset_t : STD_LOGIC;
  signal gt_rx_cpllreset_t : STD_LOGIC;
  signal gt_rxuserrdy_t : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_done_i_2__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_23_in : STD_LOGIC;
  signal \pll_reset_asserted_i_1__0_n_0\ : STD_LOGIC;
  signal pll_reset_asserted_i_2_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  signal reset_time_out_i_8_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of rx_state : signal is "yes";
  signal rx_state01_out : STD_LOGIC;
  signal rx_state128_out : STD_LOGIC;
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_QPLLLOCK_n_1 : STD_LOGIC;
  signal sync_QPLLLOCK_n_2 : STD_LOGIC;
  signal sync_data_valid_n_1 : STD_LOGIC;
  signal sync_data_valid_n_2 : STD_LOGIC;
  signal sync_data_valid_n_3 : STD_LOGIC;
  signal sync_data_valid_n_4 : STD_LOGIC;
  signal sync_data_valid_n_5 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_1 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_i_4_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_1\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_2\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_3\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal time_tlock_max1_carry_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_6_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_7_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_1 : STD_LOGIC;
  signal time_tlock_max1_carry_n_2 : STD_LOGIC;
  signal time_tlock_max1_carry_n_3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_9__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wait_time_cnt0_0 : STD_LOGIC;
  signal \wait_time_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_time_tlock_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CPLL_RESET_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_2\ : label is "soft_lutpair12";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \QPLL_RESET_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of gt0_rx_cdrlocked_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of gt1_rx_cdrlocked_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of gt2_rx_cdrlocked_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of gt3_rx_cdrlocked_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of gtxe2_i_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gtxe2_i_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gtxe2_i_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gtxe2_i_i_1__2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of gtxe2_i_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gtxe2_i_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gtxe2_i_i_2__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gtxe2_i_i_2__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of gtxe2_i_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gtxe2_i_i_4__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gtxe2_i_i_4__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gtxe2_i_i_4__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \init_wait_done_i_2__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of time_out_100us_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of time_out_1us_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair4";
begin
  GT_RX_FSM_RESET_DONE_OUT <= \^gt_rx_fsm_reset_done_out\;
\CPLL_RESET_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000400"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => CPLL_RESET_i_2_n_0,
      I4 => QPLL_RESET_i_3_n_0,
      I5 => gt_rx_cpllreset_t,
      O => \CPLL_RESET_i_1__0_n_0\
    );
CPLL_RESET_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gt0_txsysclksel_in(0),
      I1 => gt0_rxsysclksel_in(0),
      O => CPLL_RESET_i_2_n_0
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => \CPLL_RESET_i_1__0_n_0\,
      Q => gt_rx_cpllreset_t,
      R => SOFT_RESET_RX_IN
    );
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4E0AEE2A4E0ACE0A"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => time_out_2ms_reg_n_0,
      I4 => reset_time_out_reg_n_0,
      I5 => time_tlock_max,
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111004015150040"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => rx_state(2),
      I5 => rx_state128_out,
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_tlock_max,
      I1 => reset_time_out_reg_n_0,
      O => rx_state128_out
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => reset_time_out_i_8_n_0,
      I1 => rx_state(2),
      I2 => rx_state(3),
      I3 => init_wait_done_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_6_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_data_valid_n_5,
      D => sync_data_valid_n_4,
      Q => rx_state(0),
      R => SOFT_RESET_RX_IN
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_data_valid_n_5,
      D => sync_data_valid_n_3,
      Q => rx_state(1),
      R => SOFT_RESET_RX_IN
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_data_valid_n_5,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2),
      R => SOFT_RESET_RX_IN
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_data_valid_n_5,
      D => sync_data_valid_n_2,
      Q => rx_state(3),
      R => SOFT_RESET_RX_IN
    );
GT0_QPLLRESET_OUT_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => QPLL_RESET,
      I1 => gt_tx_qpllreset_t,
      O => GT0_QPLLRESET_OUT
    );
\QPLL_RESET_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000400"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => p_23_in,
      I4 => QPLL_RESET_i_3_n_0,
      I5 => QPLL_RESET,
      O => \QPLL_RESET_i_1__0_n_0\
    );
\QPLL_RESET_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gt0_rxsysclksel_in(0),
      I1 => gt0_txsysclksel_in(0),
      O => p_23_in
    );
QPLL_RESET_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      O => QPLL_RESET_i_3_n_0
    );
QPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => \QPLL_RESET_i_1__0_n_0\,
      Q => QPLL_RESET,
      R => SOFT_RESET_RX_IN
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => gt_rxuserrdy_t,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => gt_rxuserrdy_t,
      R => SOFT_RESET_RX_IN
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => rx_state(3),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => SOFT_RESET_RX_IN
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => gt0_rx_cdrlocked_reg_0,
      I1 => \gt0_rx_cdrlock_counter_reg[0]\,
      I2 => \gt0_rx_cdrlock_counter_reg[7]\,
      I3 => gt_gtrxreset_t,
      I4 => gt0_gtrxreset_in,
      O => gt0_rx_cdrlocked_reg
    );
gt1_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => gt1_rx_cdrlocked_reg_0,
      I1 => \gt1_rx_cdrlock_counter_reg[0]\,
      I2 => \gt1_rx_cdrlock_counter_reg[7]\,
      I3 => gt_gtrxreset_t,
      I4 => gt1_gtrxreset_in,
      O => gt1_rx_cdrlocked_reg
    );
gt2_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => gt2_rx_cdrlocked_reg_0,
      I1 => \gt2_rx_cdrlock_counter_reg[0]\,
      I2 => \gt2_rx_cdrlock_counter_reg[7]\,
      I3 => gt_gtrxreset_t,
      I4 => gt2_gtrxreset_in,
      O => gt2_rx_cdrlocked_reg
    );
gt3_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => gt3_rx_cdrlocked_reg_0,
      I1 => \gt3_rx_cdrlock_counter_reg[0]\,
      I2 => \gt3_rx_cdrlock_counter_reg[7]\,
      I3 => gt_gtrxreset_t,
      I4 => gt3_gtrxreset_in,
      O => gt3_rx_cdrlocked_reg
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => rx_state(3),
      I4 => gt_gtrxreset_t,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => gt_gtrxreset_t,
      R => SOFT_RESET_RX_IN
    );
gtxe2_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gt_rx_cpllreset_t,
      I1 => CPLL_RESET,
      I2 => UNCONN_IN,
      O => gt2_cpllreset_in
    );
\gtxe2_i_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gt_rx_cpllreset_t,
      I1 => CPLL_RESET,
      I2 => UNCONN_IN_0,
      O => gt0_cpllreset_in
    );
\gtxe2_i_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gt_rx_cpllreset_t,
      I1 => CPLL_RESET,
      I2 => UNCONN_IN_1,
      O => gt1_cpllreset_in
    );
\gtxe2_i_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gt_rx_cpllreset_t,
      I1 => CPLL_RESET,
      I2 => UNCONN_IN_2,
      O => gt3_cpllreset_in
    );
gtxe2_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt1_gtrxreset_in,
      I1 => gt_gtrxreset_t,
      O => SR(0)
    );
\gtxe2_i_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt2_gtrxreset_in,
      I1 => gt_gtrxreset_t,
      O => \gt2_rx_cdrlock_counter_reg[9]\(0)
    );
\gtxe2_i_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt3_gtrxreset_in,
      I1 => gt_gtrxreset_t,
      O => \gt3_rx_cdrlock_counter_reg[9]\(0)
    );
\gtxe2_i_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt0_gtrxreset_in,
      I1 => gt_gtrxreset_t,
      O => \gt0_rx_cdrlock_counter_reg[9]\(0)
    );
gtxe2_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => UNCONN_IN_3,
      I1 => gt_rxuserrdy_t,
      O => gt0_rxuserrdy_in
    );
\gtxe2_i_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => UNCONN_IN_4,
      I1 => gt_rxuserrdy_t,
      O => gt1_rxuserrdy_in
    );
\gtxe2_i_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt_rxuserrdy_t,
      I1 => UNCONN_IN_5,
      O => gt2_rxuserrdy_in
    );
\gtxe2_i_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt_rxuserrdy_t,
      I1 => UNCONN_IN_6,
      O => gt3_rxuserrdy_in
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => p_0_in(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(2),
      O => p_0_in(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(3),
      O => p_0_in(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(4),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(1),
      I5 => \init_wait_count_reg__0\(5),
      O => \init_wait_count[5]_i_1__0_n_0\
    );
\init_wait_count[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(1),
      I5 => \init_wait_count_reg__0\(5),
      O => p_0_in(5)
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => SOFT_RESET_RX_IN,
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => SOFT_RESET_RX_IN,
      D => p_0_in(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => SOFT_RESET_RX_IN,
      D => p_0_in(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => SOFT_RESET_RX_IN,
      D => p_0_in(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => SOFT_RESET_RX_IN,
      D => p_0_in(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => SOFT_RESET_RX_IN,
      D => p_0_in(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => \init_wait_done_i_2__0_n_0\,
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(5),
      I3 => \init_wait_count_reg__0\(0),
      I4 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
\init_wait_done_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(4),
      O => \init_wait_done_i_2__0_n_0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      CLR => SOFT_RESET_RX_IN,
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(2),
      O => \mmcm_lock_count[2]_i_1__0_n_0\
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(3),
      O => \mmcm_lock_count[3]_i_1__0_n_0\
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \mmcm_lock_count[4]_i_1__0_n_0\
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \mmcm_lock_count[5]_i_1__0_n_0\
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I1 => \mmcm_lock_count_reg__0\(6),
      O => \mmcm_lock_count[6]_i_1__0_n_0\
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count_reg__0\(7),
      O => \mmcm_lock_count[7]_i_2__0_n_0\
    );
\mmcm_lock_count[7]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I2 => \mmcm_lock_count_reg__0\(7),
      O => \mmcm_lock_count[7]_i_3__0_n_0\
    );
\mmcm_lock_count[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \mmcm_lock_count[7]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__0\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__0\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[2]_i_1__0_n_0\,
      Q => \mmcm_lock_count_reg__0\(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[3]_i_1__0_n_0\,
      Q => \mmcm_lock_count_reg__0\(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[4]_i_1__0_n_0\,
      Q => \mmcm_lock_count_reg__0\(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[5]_i_1__0_n_0\,
      Q => \mmcm_lock_count_reg__0\(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[6]_i_1__0_n_0\,
      Q => \mmcm_lock_count_reg__0\(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[7]_i_3__0_n_0\,
      Q => \mmcm_lock_count_reg__0\(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => sync_mmcm_lock_reclocked_n_1,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\pll_reset_asserted_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFC0001"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(3),
      I2 => rx_state(2),
      I3 => pll_reset_asserted_i_2_n_0,
      I4 => pll_reset_asserted_reg_n_0,
      O => \pll_reset_asserted_i_1__0_n_0\
    );
pll_reset_asserted_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EBFFFF"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => gt0_rxsysclksel_in(0),
      I2 => gt0_txsysclksel_in(0),
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => pll_reset_asserted_i_2_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => \pll_reset_asserted_i_1__0_n_0\,
      Q => pll_reset_asserted_reg_n_0,
      R => SOFT_RESET_RX_IN
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => gt3_rx_cdrlocked_reg_0,
      I1 => gt0_rx_cdrlocked_reg_0,
      I2 => gt2_rx_cdrlocked_reg_0,
      I3 => gt1_rx_cdrlocked_reg_0,
      I4 => rx_state(0),
      I5 => rx_state(3),
      O => \reset_time_out_i_2__0_n_0\
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => mmcm_lock_reclocked,
      I3 => rx_state(1),
      I4 => rxresetdone_s3,
      O => reset_time_out_i_4_n_0
    );
reset_time_out_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => gt3_rx_cdrlocked_reg_0,
      I1 => gt0_rx_cdrlocked_reg_0,
      I2 => gt2_rx_cdrlocked_reg_0,
      I3 => gt1_rx_cdrlocked_reg_0,
      I4 => rx_state(3),
      O => reset_time_out_i_8_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => sync_QPLLLOCK_n_2,
      Q => reset_time_out_reg_n_0,
      S => SOFT_RESET_RX_IN
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => SOFT_RESET_RX_IN
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => data_out,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => sync_data_valid_n_1,
      Q => \^gt_rx_fsm_reset_done_out\,
      R => SOFT_RESET_RX_IN
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_CPLLLOCK: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_16
     port map (
      SYSCLK_IN => SYSCLK_IN,
      data_out => cplllock_sync
    );
sync_QPLLLOCK: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_17
     port map (
      \FSM_sequential_rx_state_reg[0]\ => sync_QPLLLOCK_n_1,
      \FSM_sequential_rx_state_reg[3]\ => reset_time_out_i_4_n_0,
      GT0_QPLLLOCK_IN => GT0_QPLLLOCK_IN,
      SYSCLK_IN => SYSCLK_IN,
      data_out => cplllock_sync,
      data_sync_reg6_0 => data_valid_sync,
      gt0_rxsysclksel_in(0) => gt0_rxsysclksel_in(0),
      gt0_txsysclksel_in(0) => gt0_txsysclksel_in(0),
      gt3_rx_cdrlocked_reg => \reset_time_out_i_2__0_n_0\,
      gt3_rx_cdrlocked_reg_0 => reset_time_out_i_8_n_0,
      \out\(3 downto 0) => rx_state(3 downto 0),
      pll_reset_asserted_reg => pll_reset_asserted_reg_n_0,
      reset_time_out_reg => sync_QPLLLOCK_n_2,
      reset_time_out_reg_0 => reset_time_out_reg_n_0,
      rx_state01_out => rx_state01_out,
      rxresetdone_s3 => rxresetdone_s3,
      time_out_2ms_reg => time_out_2ms_reg_n_0
    );
sync_RXRESETDONE: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_18
     port map (
      SYSCLK_IN => SYSCLK_IN,
      data_in => data_in,
      data_out => rxresetdone_s2
    );
sync_data_valid: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_19
     port map (
      D(2) => sync_data_valid_n_2,
      D(1) => sync_data_valid_n_3,
      D(0) => sync_data_valid_n_4,
      DONT_RESET_ON_DATA_ERROR_IN => DONT_RESET_ON_DATA_ERROR_IN,
      E(0) => sync_data_valid_n_5,
      \FSM_sequential_rx_state_reg[2]\ => \FSM_sequential_rx_state[0]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[2]_0\ => \FSM_sequential_rx_state[3]_i_6_n_0\,
      GT0_DATA_VALID_IN => GT0_DATA_VALID_IN,
      GT1_DATA_VALID_IN => GT1_DATA_VALID_IN,
      GT2_DATA_VALID_IN => GT2_DATA_VALID_IN,
      GT3_DATA_VALID_IN => GT3_DATA_VALID_IN,
      GT_RX_FSM_RESET_DONE_OUT => \^gt_rx_fsm_reset_done_out\,
      Q(0) => \wait_time_cnt_reg__0\(6),
      SYSCLK_IN => SYSCLK_IN,
      data_out => data_valid_sync,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => rx_state(3 downto 0),
      reset_time_out_reg => reset_time_out_reg_n_0,
      rx_fsm_reset_done_int_reg => sync_data_valid_n_1,
      rx_state01_out => rx_state01_out,
      rx_state128_out => rx_state128_out,
      time_out_100us_reg => time_out_100us_reg_n_0,
      time_out_1us_reg => time_out_1us_reg_n_0,
      time_out_2ms_reg => sync_QPLLLOCK_n_1,
      time_out_2ms_reg_0 => time_out_2ms_reg_n_0,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3,
      \wait_time_cnt_reg[4]\ => \wait_time_cnt[6]_i_4__0_n_0\
    );
sync_mmcm_lock_reclocked: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_20
     port map (
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(7 downto 6),
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      SYSCLK_IN => SYSCLK_IN,
      \mmcm_lock_count_reg[4]\ => \mmcm_lock_count[7]_i_4__0_n_0\,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_n_1
    );
sync_run_phase_alignment_int: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_21
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      gt0_rxusrclk_in => gt0_rxusrclk_in
    );
sync_rx_fsm_reset_done_int: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_22
     port map (
      GT_RX_FSM_RESET_DONE_OUT => \^gt_rx_fsm_reset_done_out\,
      data_out => rx_fsm_reset_done_int_s2,
      gt0_rxusrclk_in => gt0_rxusrclk_in
    );
sync_time_out_wait_bypass: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_23
     port map (
      SYSCLK_IN => SYSCLK_IN,
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2
    );
time_out_100us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => time_out_100us_i_2_n_0,
      I1 => time_out_100us_i_3_n_0,
      I2 => \time_out_counter[0]_i_3_n_0\,
      I3 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => time_out_100us_i_4_n_0,
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(9),
      I5 => time_out_counter_reg(6),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(1),
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(7),
      O => time_out_100us_i_3_n_0
    );
time_out_100us_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => time_out_100us_i_4_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => \time_out_counter[0]_i_4_n_0\,
      I1 => time_out_1us_i_2_n_0,
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(16),
      I4 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(2),
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(11),
      I5 => time_out_counter_reg(10),
      O => time_out_1us_i_2_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004000"
    )
        port map (
      I0 => \time_out_counter[0]_i_4_n_0\,
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(11),
      I4 => \time_out_counter[0]_i_3_n_0\,
      I5 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \time_out_counter[0]_i_3_n_0\,
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(11),
      I4 => \time_out_counter[0]_i_4_n_0\,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(8),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(6),
      I4 => time_out_100us_i_3_n_0,
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_8_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_8_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => time_out_counter_reg(17 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \wait_bypass_count[0]_i_4__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => \time_out_wait_bypass_i_1__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_rxusrclk_in,
      CE => '1',
      D => \time_out_wait_bypass_i_1__0_n_0\,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => time_tlock_max1_carry_n_0,
      CO(2) => time_tlock_max1_carry_n_1,
      CO(1) => time_tlock_max1_carry_n_2,
      CO(0) => time_tlock_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => time_tlock_max1_carry_i_1_n_0,
      DI(2) => time_out_counter_reg(5),
      DI(1) => time_tlock_max1_carry_i_2_n_0,
      DI(0) => time_tlock_max1_carry_i_3_n_0,
      O(3 downto 0) => NLW_time_tlock_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => time_tlock_max1_carry_i_4_n_0,
      S(2) => time_tlock_max1_carry_i_5_n_0,
      S(1) => time_tlock_max1_carry_i_6_n_0,
      S(0) => time_tlock_max1_carry_i_7_n_0
    );
\time_tlock_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => time_tlock_max1_carry_n_0,
      CO(3) => \time_tlock_max1_carry__0_n_0\,
      CO(2) => \time_tlock_max1_carry__0_n_1\,
      CO(1) => \time_tlock_max1_carry__0_n_2\,
      CO(0) => \time_tlock_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \time_tlock_max1_carry__0_i_1_n_0\,
      DI(2) => \time_tlock_max1_carry__0_i_2_n_0\,
      DI(1) => time_out_counter_reg(11),
      DI(0) => '0',
      O(3 downto 0) => \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \time_tlock_max1_carry__0_i_3_n_0\,
      S(2) => \time_tlock_max1_carry__0_i_4_n_0\,
      S(1) => \time_tlock_max1_carry__0_i_5_n_0\,
      S(0) => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => \time_tlock_max1_carry__0_i_1_n_0\
    );
\time_tlock_max1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => \time_tlock_max1_carry__0_i_2_n_0\
    );
\time_tlock_max1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      O => \time_tlock_max1_carry__0_i_3_n_0\
    );
\time_tlock_max1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => \time_tlock_max1_carry__0_i_4_n_0\
    );
\time_tlock_max1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      O => \time_tlock_max1_carry__0_i_5_n_0\
    );
\time_tlock_max1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      O => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_tlock_max1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => time_tlock_max1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \time_tlock_max1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \time_tlock_max1_carry__1_i_2_n_0\
    );
\time_tlock_max1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_tlock_max1_carry__1_i_1_n_0\
    );
\time_tlock_max1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => \time_tlock_max1_carry__1_i_2_n_0\
    );
time_tlock_max1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_tlock_max1_carry_i_1_n_0
    );
time_tlock_max1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => time_tlock_max1_carry_i_2_n_0
    );
time_tlock_max1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_tlock_max1_carry_i_3_n_0
    );
time_tlock_max1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => time_tlock_max1_carry_i_4_n_0
    );
time_tlock_max1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      O => time_tlock_max1_carry_i_5_n_0
    );
time_tlock_max1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => time_tlock_max1_carry_i_6_n_0
    );
time_tlock_max1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_tlock_max1_carry_i_7_n_0
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => check_tlock_max_reg_n_0,
      I1 => time_tlock_max1,
      I2 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
\wait_bypass_count[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => wait_bypass_count_reg(2),
      I1 => wait_bypass_count_reg(12),
      I2 => wait_bypass_count_reg(4),
      I3 => wait_bypass_count_reg(10),
      I4 => wait_bypass_count_reg(6),
      I5 => wait_bypass_count_reg(11),
      O => \wait_bypass_count[0]_i_10__0_n_0\
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_9__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(8),
      I3 => wait_bypass_count_reg(0),
      I4 => \wait_bypass_count[0]_i_10__0_n_0\,
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_8__0_n_0\
    );
\wait_bypass_count[0]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(3),
      I1 => wait_bypass_count_reg(5),
      I2 => wait_bypass_count_reg(9),
      I3 => wait_bypass_count_reg(7),
      O => \wait_bypass_count[0]_i_9__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_8__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_rxusrclk_in,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      O => \wait_time_cnt[1]_i_1__0_n_0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      O => \wait_time_cnt[2]_i_1__0_n_0\
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(2),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(3),
      O => \wait_time_cnt[3]_i_1__0_n_0\
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(3),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(2),
      I4 => \wait_time_cnt_reg__0\(4),
      O => \wait_time_cnt[4]_i_1__0_n_0\
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      I4 => \wait_time_cnt_reg__0\(3),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \wait_time_cnt[5]_i_1__0_n_0\
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(1),
      I2 => rx_state(3),
      O => wait_time_cnt0_0
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \wait_time_cnt[6]_i_4__0_n_0\,
      O => \wait_time_cnt[6]_i_2__0_n_0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4__0_n_0\,
      I1 => \wait_time_cnt_reg__0\(6),
      O => \wait_time_cnt[6]_i_3__0_n_0\
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      I4 => \wait_time_cnt_reg__0\(3),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \wait_time_cnt[6]_i_4__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => wait_time_cnt0(0),
      Q => \wait_time_cnt_reg__0\(0),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[1]_i_1__0_n_0\,
      Q => \wait_time_cnt_reg__0\(1),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[2]_i_1__0_n_0\,
      Q => \wait_time_cnt_reg__0\(2),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[3]_i_1__0_n_0\,
      Q => \wait_time_cnt_reg__0\(3),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[4]_i_1__0_n_0\,
      Q => \wait_time_cnt_reg__0\(4),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[5]_i_1__0_n_0\,
      Q => \wait_time_cnt_reg__0\(5),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[6]_i_3__0_n_0\,
      Q => \wait_time_cnt_reg__0\(6),
      S => wait_time_cnt0_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_TX_STARTUP_FSM is
  port (
    gt_tx_qpllreset_t : out STD_LOGIC;
    CPLL_RESET : out STD_LOGIC;
    GT_TX_FSM_RESET_DONE_OUT : out STD_LOGIC;
    gt0_gttxreset_in : out STD_LOGIC;
    gt1_gttxreset_in : out STD_LOGIC;
    gt2_gttxreset_in : out STD_LOGIC;
    gt3_gttxreset_in : out STD_LOGIC;
    gt0_txuserrdy_in : out STD_LOGIC;
    gt1_txuserrdy_in : out STD_LOGIC;
    gt2_txuserrdy_in : out STD_LOGIC;
    gt3_txuserrdy_in : out STD_LOGIC;
    SYSCLK_IN : in STD_LOGIC;
    gt0_txusrclk_in : in STD_LOGIC;
    SOFT_RESET_TX_IN : in STD_LOGIC;
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC;
    GT0_QPLLLOCK_IN : in STD_LOGIC;
    data_sync_reg4 : in STD_LOGIC;
    data_sync_reg4_0 : in STD_LOGIC;
    data_sync_reg4_1 : in STD_LOGIC;
    data_sync_reg4_2 : in STD_LOGIC;
    UNCONN_IN : in STD_LOGIC;
    UNCONN_IN_0 : in STD_LOGIC;
    UNCONN_IN_1 : in STD_LOGIC;
    UNCONN_IN_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_TX_STARTUP_FSM : entity is "jesd204_phy_1_gt_TX_STARTUP_FSM";
end jesd204_phy_1_jesd204_phy_1_gt_TX_STARTUP_FSM;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_TX_STARTUP_FSM is
  signal \^cpll_reset\ : STD_LOGIC;
  signal CPLL_RESET_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \^gt_tx_fsm_reset_done_out\ : STD_LOGIC;
  signal QPLL_RESET_i_1_n_0 : STD_LOGIC;
  signal QPLL_RESET_i_2_n_0 : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal cplllock_sync : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal gt_gttxreset_t : STD_LOGIC;
  signal \^gt_tx_qpllreset_t\ : STD_LOGIC;
  signal gt_txuserrdy_t : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_i_2_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal qplllock_sync : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal reset_time_out_i_5_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sync_CPLLLOCK_n_1 : STD_LOGIC;
  signal sync_QPLLLOCK_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_1 : STD_LOGIC;
  signal \time_out_2ms_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal \time_tlock_max_i_1__0_n_0\ : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of tx_state : signal is "yes";
  signal tx_state111_out : STD_LOGIC;
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_12_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_9_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wait_time_cnt0_0 : STD_LOGIC;
  signal \wait_time_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wait_time_done : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_4\ : label is "soft_lutpair30";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_tx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of gtxe2_i_i_3 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gtxe2_i_i_3__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gtxe2_i_i_3__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gtxe2_i_i_3__2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of gtxe2_i_i_5 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gtxe2_i_i_5__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gtxe2_i_i_5__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gtxe2_i_i_5__2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_11\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of time_tlock_max_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_3\ : label is "soft_lutpair30";
begin
  CPLL_RESET <= \^cpll_reset\;
  GT_TX_FSM_RESET_DONE_OUT <= \^gt_tx_fsm_reset_done_out\;
  gt_tx_qpllreset_t <= \^gt_tx_qpllreset_t\;
CPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000004"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => gt0_txsysclksel_in(0),
      I4 => QPLL_RESET_i_2_n_0,
      I5 => \^cpll_reset\,
      O => CPLL_RESET_i_1_n_0
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => CPLL_RESET_i_1_n_0,
      Q => \^cpll_reset\,
      R => SOFT_RESET_TX_IN
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222220222220A0A"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B33BBBBBBBBBBBB"
    )
        port map (
      I0 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I1 => tx_state(0),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      I4 => tx_state(1),
      I5 => tx_state(2),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11110444"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state111_out,
      I3 => tx_state(2),
      I4 => tx_state(1),
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => reset_time_out,
      I2 => time_tlock_max_reg_n_0,
      O => tx_state111_out
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111004055550040"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      I5 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => reset_time_out,
      I2 => mmcm_lock_reclocked,
      I3 => tx_state(1),
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      I2 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[3]_i_10_n_0\
    );
\FSM_sequential_tx_state[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_out_500us_reg_n_0,
      I2 => txresetdone_s3,
      O => \FSM_sequential_tx_state[3]_i_12_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00B00"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I1 => time_out_wait_bypass_s3,
      I2 => tx_state(2),
      I3 => tx_state(3),
      I4 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4_n_0\,
      I1 => \wait_time_cnt_reg__0\(6),
      O => wait_time_done
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => tx_state(0),
      I1 => reset_time_out,
      I2 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_CPLLLOCK_n_1,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => SOFT_RESET_TX_IN
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_CPLLLOCK_n_1,
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => tx_state(1),
      R => SOFT_RESET_TX_IN
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_CPLLLOCK_n_1,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => tx_state(2),
      R => SOFT_RESET_TX_IN
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => sync_CPLLLOCK_n_1,
      D => \FSM_sequential_tx_state[3]_i_2_n_0\,
      Q => tx_state(3),
      R => SOFT_RESET_TX_IN
    );
QPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000400"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => gt0_txsysclksel_in(0),
      I4 => QPLL_RESET_i_2_n_0,
      I5 => \^gt_tx_qpllreset_t\,
      O => QPLL_RESET_i_1_n_0
    );
QPLL_RESET_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(1),
      O => QPLL_RESET_i_2_n_0
    );
QPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => QPLL_RESET_i_1_n_0,
      Q => \^gt_tx_qpllreset_t\,
      R => SOFT_RESET_TX_IN
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => gt_txuserrdy_t,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => gt_txuserrdy_t,
      R => SOFT_RESET_TX_IN
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(3),
      I4 => gt_gttxreset_t,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => gt_gttxreset_t,
      R => SOFT_RESET_TX_IN
    );
gtxe2_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_sync_reg4,
      I1 => gt_gttxreset_t,
      O => gt0_gttxreset_in
    );
\gtxe2_i_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt_gttxreset_t,
      I1 => data_sync_reg4_0,
      O => gt1_gttxreset_in
    );
\gtxe2_i_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_sync_reg4_1,
      I1 => gt_gttxreset_t,
      O => gt2_gttxreset_in
    );
\gtxe2_i_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt_gttxreset_t,
      I1 => data_sync_reg4_2,
      O => gt3_gttxreset_in
    );
gtxe2_i_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => UNCONN_IN,
      I1 => gt_txuserrdy_t,
      O => gt0_txuserrdy_in
    );
\gtxe2_i_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt_txuserrdy_t,
      I1 => UNCONN_IN_0,
      O => gt1_txuserrdy_in
    );
\gtxe2_i_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => UNCONN_IN_1,
      I1 => gt_txuserrdy_t,
      O => gt2_txuserrdy_in
    );
\gtxe2_i_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gt_txuserrdy_t,
      I1 => UNCONN_IN_2,
      O => gt3_txuserrdy_in
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => p_0_in(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(2),
      O => p_0_in(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(3),
      O => p_0_in(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(4),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(1),
      I5 => \init_wait_count_reg__0\(5),
      O => \init_wait_count[5]_i_1_n_0\
    );
\init_wait_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(1),
      I5 => \init_wait_count_reg__0\(5),
      O => p_0_in(5)
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => SOFT_RESET_TX_IN,
      D => \init_wait_count[0]_i_1_n_0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => SOFT_RESET_TX_IN,
      D => p_0_in(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => SOFT_RESET_TX_IN,
      D => p_0_in(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => SOFT_RESET_TX_IN,
      D => p_0_in(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => SOFT_RESET_TX_IN,
      D => p_0_in(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => SOFT_RESET_TX_IN,
      D => p_0_in(5),
      Q => \init_wait_count_reg__0\(5)
    );
init_wait_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => init_wait_done_i_2_n_0,
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(5),
      I3 => \init_wait_count_reg__0\(0),
      I4 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(4),
      O => init_wait_done_i_2_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      CLR => SOFT_RESET_TX_IN,
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(2),
      O => \mmcm_lock_count[2]_i_1_n_0\
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(3),
      O => \mmcm_lock_count[3]_i_1_n_0\
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \mmcm_lock_count[4]_i_1_n_0\
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \mmcm_lock_count[5]_i_1_n_0\
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mmcm_lock_count[7]_i_4_n_0\,
      I1 => \mmcm_lock_count_reg__0\(6),
      O => \mmcm_lock_count[6]_i_1_n_0\
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \mmcm_lock_count[7]_i_4_n_0\,
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count_reg__0\(7),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \mmcm_lock_count[7]_i_4_n_0\,
      I2 => \mmcm_lock_count_reg__0\(7),
      O => \mmcm_lock_count[7]_i_3_n_0\
    );
\mmcm_lock_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \mmcm_lock_count[7]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[2]_i_1_n_0\,
      Q => \mmcm_lock_count_reg__0\(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[3]_i_1_n_0\,
      Q => \mmcm_lock_count_reg__0\(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[4]_i_1_n_0\,
      Q => \mmcm_lock_count_reg__0\(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[5]_i_1_n_0\,
      Q => \mmcm_lock_count_reg__0\(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[6]_i_1_n_0\,
      Q => \mmcm_lock_count_reg__0\(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[7]_i_3_n_0\,
      Q => \mmcm_lock_count_reg__0\(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => sync_mmcm_lock_reclocked_n_1,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF00FF10"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => pll_reset_asserted_reg_n_0,
      I4 => tx_state(1),
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => SOFT_RESET_TX_IN
    );
reset_time_out_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => tx_state(1),
      I2 => mmcm_lock_reclocked,
      I3 => tx_state(2),
      O => reset_time_out_i_5_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => sync_QPLLLOCK_n_1,
      Q => reset_time_out,
      R => SOFT_RESET_TX_IN
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => run_phase_alignment_int_reg_n_0,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int_reg_n_0,
      R => SOFT_RESET_TX_IN
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => data_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_CPLLLOCK: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block
     port map (
      E(0) => sync_CPLLLOCK_n_1,
      \FSM_sequential_tx_state_reg[1]\ => \FSM_sequential_tx_state[3]_i_5_n_0\,
      SYSCLK_IN => SYSCLK_IN,
      data_out => cplllock_sync,
      data_sync_reg6_0 => qplllock_sync,
      gt0_txsysclksel_in(0) => gt0_txsysclksel_in(0),
      init_wait_done_reg => init_wait_done_reg_n_0,
      \out\(3 downto 0) => tx_state(3 downto 0),
      pll_reset_asserted_reg => pll_reset_asserted_reg_n_0,
      reset_time_out_reg => \FSM_sequential_tx_state[3]_i_10_n_0\,
      reset_time_out_reg_0 => \FSM_sequential_tx_state[3]_i_12_n_0\,
      time_out_2ms_reg => time_out_2ms_reg_n_0,
      wait_time_done => wait_time_done
    );
sync_QPLLLOCK: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_10
     port map (
      GT0_QPLLLOCK_IN => GT0_QPLLLOCK_IN,
      SYSCLK_IN => SYSCLK_IN,
      data_out => qplllock_sync,
      data_sync_reg6_0 => cplllock_sync,
      gt0_txsysclksel_in(0) => gt0_txsysclksel_in(0),
      init_wait_done_reg => init_wait_done_reg_n_0,
      \out\(3 downto 0) => tx_state(3 downto 0),
      reset_time_out => reset_time_out,
      reset_time_out_reg => sync_QPLLLOCK_n_1,
      txresetdone_s3_reg => reset_time_out_i_5_n_0
    );
sync_TXRESETDONE: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_11
     port map (
      SYSCLK_IN => SYSCLK_IN,
      data_in => data_in,
      data_out => txresetdone_s2
    );
sync_mmcm_lock_reclocked: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_12
     port map (
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(7 downto 6),
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      SYSCLK_IN => SYSCLK_IN,
      \mmcm_lock_count_reg[4]\ => \mmcm_lock_count[7]_i_4_n_0\,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_n_1
    );
sync_run_phase_alignment_int: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_13
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      gt0_txusrclk_in => gt0_txusrclk_in
    );
sync_time_out_wait_bypass: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_14
     port map (
      SYSCLK_IN => SYSCLK_IN,
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2
    );
sync_tx_fsm_reset_done_int: entity work.jesd204_phy_1_jesd204_phy_1_gt_sync_block_15
     port map (
      GT_TX_FSM_RESET_DONE_OUT => \^gt_tx_fsm_reset_done_out\,
      data_out => tx_fsm_reset_done_int_s2,
      gt0_txusrclk_in => gt0_txusrclk_in
    );
\time_out_2ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms_i_2_n_0,
      I2 => \time_out_counter[0]_i_3__0_n_0\,
      I3 => reset_time_out,
      O => \time_out_2ms_i_1__0_n_0\
    );
time_out_2ms_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(4),
      I5 => \time_out_counter[0]_i_4__0_n_0\,
      O => time_out_2ms_i_2_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => \time_out_2ms_i_1__0_n_0\,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEAAA"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(9),
      I4 => \time_out_counter[0]_i_3__0_n_0\,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(16),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(12),
      O => \time_out_counter[0]_i_10_n_0\
    );
\time_out_counter[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(2),
      O => \time_out_counter[0]_i_11_n_0\
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \time_out_counter[0]_i_3__0_n_0\,
      I1 => time_out_counter_reg(11),
      I2 => \time_out_counter[0]_i_4__0_n_0\,
      I3 => time_out_counter_reg(9),
      I4 => \time_out_counter[0]_i_5_n_0\,
      I5 => time_out_counter_reg(4),
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(13),
      I2 => \time_out_counter[0]_i_10_n_0\,
      I3 => \time_out_counter[0]_i_11_n_0\,
      O => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(10),
      O => \time_out_counter[0]_i_4__0_n_0\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_out_counter[0]_i_5_n_0\
    );
\time_out_counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_9_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_9_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \time_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \time_out_counter_reg[16]_i_1_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => time_out_counter_reg(17 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => \wait_bypass_count[0]_i_4_n_0\,
      I2 => tx_fsm_reset_done_int_s3,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
\time_tlock_max_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAAAAA"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => time_tlock_max_i_2_n_0,
      I2 => time_out_counter_reg(4),
      I3 => \time_out_counter[0]_i_4__0_n_0\,
      I4 => time_tlock_max_i_3_n_0,
      I5 => reset_time_out,
      O => \time_tlock_max_i_1__0_n_0\
    );
time_tlock_max_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(1),
      I4 => \time_out_counter[0]_i_10_n_0\,
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(6),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(16),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => \time_tlock_max_i_1__0_n_0\,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => \^gt_tx_fsm_reset_done_out\,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => \^gt_tx_fsm_reset_done_out\,
      R => SOFT_RESET_TX_IN
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt0_txusrclk_in,
      CE => '1',
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      I1 => wait_bypass_count_reg(15),
      I2 => wait_bypass_count_reg(16),
      I3 => wait_bypass_count_reg(2),
      I4 => wait_bypass_count_reg(1),
      O => \wait_bypass_count[0]_i_10_n_0\
    );
\wait_bypass_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(12),
      I1 => wait_bypass_count_reg(11),
      I2 => wait_bypass_count_reg(14),
      I3 => wait_bypass_count_reg(13),
      O => \wait_bypass_count[0]_i_11_n_0\
    );
\wait_bypass_count[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(10),
      I3 => wait_bypass_count_reg(9),
      O => \wait_bypass_count[0]_i_12_n_0\
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4_n_0\,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_9_n_0\,
      I1 => \wait_bypass_count[0]_i_10_n_0\,
      I2 => \wait_bypass_count[0]_i_11_n_0\,
      I3 => \wait_bypass_count[0]_i_12_n_0\,
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(3),
      I2 => wait_bypass_count_reg(6),
      I3 => wait_bypass_count_reg(5),
      O => \wait_bypass_count[0]_i_9_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(16)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gt0_txusrclk_in,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      O => \wait_time_cnt[1]_i_1_n_0\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      O => \wait_time_cnt[2]_i_1_n_0\
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(2),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(3),
      O => \wait_time_cnt[3]_i_1_n_0\
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(3),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(2),
      I4 => \wait_time_cnt_reg__0\(4),
      O => \wait_time_cnt[4]_i_1_n_0\
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      I4 => \wait_time_cnt_reg__0\(3),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \wait_time_cnt[5]_i_1_n_0\
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004C"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(3),
      O => wait_time_cnt0_0
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \wait_time_cnt[6]_i_4_n_0\,
      O => \wait_time_cnt[6]_i_2_n_0\
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4_n_0\,
      I1 => \wait_time_cnt_reg__0\(6),
      O => \wait_time_cnt[6]_i_3_n_0\
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      I4 => \wait_time_cnt_reg__0\(3),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \wait_time_cnt[6]_i_4_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => wait_time_cnt0(0),
      Q => \wait_time_cnt_reg__0\(0),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => \wait_time_cnt_reg__0\(1),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[2]_i_1_n_0\,
      Q => \wait_time_cnt_reg__0\(2),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[3]_i_1_n_0\,
      Q => \wait_time_cnt_reg__0\(3),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[4]_i_1_n_0\,
      Q => \wait_time_cnt_reg__0\(4),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[5]_i_1_n_0\,
      Q => \wait_time_cnt_reg__0\(5),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => SYSCLK_IN,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[6]_i_3_n_0\,
      Q => \wait_time_cnt_reg__0\(6),
      S => wait_time_cnt0_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_common_wrapper is
  port (
    common0_qpll_lock_out : out STD_LOGIC;
    common0_qpll_clk_out : out STD_LOGIC;
    common0_qpll_refclk_out : out STD_LOGIC;
    qpll_refclk : in STD_LOGIC;
    drpclk : in STD_LOGIC;
    qpll_reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_common_wrapper : entity is "jesd204_phy_1_gt_common_wrapper";
end jesd204_phy_1_jesd204_phy_1_gt_common_wrapper;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_common_wrapper is
begin
jesd204_0_common: entity work.jesd204_phy_1_jesd204_phy_1_gtwizard_0_common
     port map (
      common0_qpll_clk_out => common0_qpll_clk_out,
      common0_qpll_lock_out => common0_qpll_lock_out,
      common0_qpll_refclk_out => common0_qpll_refclk_out,
      drpclk => drpclk,
      qpll_refclk => qpll_refclk,
      qpll_reset_out => qpll_reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_multi_gt is
  port (
    data_in : out STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt2_txresetdone_out : out STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt3_txresetdone_out : out STD_LOGIC;
    data_sync_reg1 : out STD_LOGIC;
    gt1_rxresetdone_out : out STD_LOGIC;
    gt2_rxresetdone_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt3_rxresetdone_out : out STD_LOGIC;
    gt0_cpllfbclklost_out : out STD_LOGIC;
    gt0_cplllock_out : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_gtxtxn_out : out STD_LOGIC;
    gt0_gtxtxp_out : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxoutclk_out : out STD_LOGIC;
    gt0_rxoutclkfabric_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txoutclkfabric_out : out STD_LOGIC;
    gt0_txoutclkpcs_out : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_cpllfbclklost_out : out STD_LOGIC;
    gt1_cplllock_out : out STD_LOGIC;
    gt1_drprdy_out : out STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_gtxtxn_out : out STD_LOGIC;
    gt1_gtxtxp_out : out STD_LOGIC;
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxoutclk_out : out STD_LOGIC;
    gt1_rxoutclkfabric_out : out STD_LOGIC;
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_txoutclk_out : out STD_LOGIC;
    gt1_txoutclkfabric_out : out STD_LOGIC;
    gt1_txoutclkpcs_out : out STD_LOGIC;
    gt1_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_cpllfbclklost_out : out STD_LOGIC;
    gt2_cplllock_out : out STD_LOGIC;
    gt2_drprdy_out : out STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_gtxtxn_out : out STD_LOGIC;
    gt2_gtxtxp_out : out STD_LOGIC;
    gt2_rxbyteisaligned_out : out STD_LOGIC;
    gt2_rxbyterealign_out : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxoutclk_out : out STD_LOGIC;
    gt2_rxoutclkfabric_out : out STD_LOGIC;
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_txoutclk_out : out STD_LOGIC;
    gt2_txoutclkfabric_out : out STD_LOGIC;
    gt2_txoutclkpcs_out : out STD_LOGIC;
    gt2_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_cpllfbclklost_out : out STD_LOGIC;
    gt3_cplllock_out : out STD_LOGIC;
    gt3_drprdy_out : out STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_gtxtxn_out : out STD_LOGIC;
    gt3_gtxtxp_out : out STD_LOGIC;
    gt3_rxbyteisaligned_out : out STD_LOGIC;
    gt3_rxbyterealign_out : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxoutclk_out : out STD_LOGIC;
    gt3_rxoutclkfabric_out : out STD_LOGIC;
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_txoutclk_out : out STD_LOGIC;
    gt3_txoutclkfabric_out : out STD_LOGIC;
    gt3_txoutclkpcs_out : out STD_LOGIC;
    gt3_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_cplllockdetclk_in : in STD_LOGIC;
    gt0_cpllpd_in : in STD_LOGIC;
    gt0_cpllreset_in : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_gtnorthrefclk0_in : in STD_LOGIC;
    gt0_gtnorthrefclk1_in : in STD_LOGIC;
    gt0_gtrefclk0_in : in STD_LOGIC;
    gt0_gtrefclk1_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtsouthrefclk0_in : in STD_LOGIC;
    gt0_gtsouthrefclk1_in : in STD_LOGIC;
    gt0_gttxreset_in : in STD_LOGIC;
    gt0_gtxrxn_in : in STD_LOGIC;
    gt0_gtxrxp_in : in STD_LOGIC;
    GT0_QPLLOUTCLK_IN : in STD_LOGIC;
    GT0_QPLLOUTREFCLK_IN : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcommaalignen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxuserrdy_in : in STD_LOGIC;
    gt0_rxusrclk_in : in STD_LOGIC;
    gt0_rxusrclk2_in : in STD_LOGIC;
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txuserrdy_in : in STD_LOGIC;
    gt0_txusrclk_in : in STD_LOGIC;
    gt0_txusrclk2_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_cplllockdetclk_in : in STD_LOGIC;
    gt1_cpllpd_in : in STD_LOGIC;
    gt1_cpllreset_in : in STD_LOGIC;
    gt1_drpclk_in : in STD_LOGIC;
    gt1_drpen_in : in STD_LOGIC;
    gt1_drpwe_in : in STD_LOGIC;
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_gtnorthrefclk0_in : in STD_LOGIC;
    gt1_gtnorthrefclk1_in : in STD_LOGIC;
    gt1_gtrefclk0_in : in STD_LOGIC;
    gt1_gtrefclk1_in : in STD_LOGIC;
    data_sync_reg4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt1_gtsouthrefclk0_in : in STD_LOGIC;
    gt1_gtsouthrefclk1_in : in STD_LOGIC;
    gt1_gttxreset_in : in STD_LOGIC;
    gt1_gtxrxn_in : in STD_LOGIC;
    gt1_gtxrxp_in : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxmcommaalignen_in : in STD_LOGIC;
    gt1_rxpcommaalignen_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxuserrdy_in : in STD_LOGIC;
    gt1_rxusrclk_in : in STD_LOGIC;
    gt1_rxusrclk2_in : in STD_LOGIC;
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txuserrdy_in : in STD_LOGIC;
    gt1_txusrclk_in : in STD_LOGIC;
    gt1_txusrclk2_in : in STD_LOGIC;
    gt1_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_cplllockdetclk_in : in STD_LOGIC;
    gt2_cpllpd_in : in STD_LOGIC;
    gt2_cpllreset_in : in STD_LOGIC;
    gt2_drpclk_in : in STD_LOGIC;
    gt2_drpen_in : in STD_LOGIC;
    gt2_drpwe_in : in STD_LOGIC;
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_gtnorthrefclk0_in : in STD_LOGIC;
    gt2_gtnorthrefclk1_in : in STD_LOGIC;
    gt2_gtrefclk0_in : in STD_LOGIC;
    gt2_gtrefclk1_in : in STD_LOGIC;
    data_sync_reg4_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt2_gtsouthrefclk0_in : in STD_LOGIC;
    gt2_gtsouthrefclk1_in : in STD_LOGIC;
    gt2_gttxreset_in : in STD_LOGIC;
    gt2_gtxrxn_in : in STD_LOGIC;
    gt2_gtxrxp_in : in STD_LOGIC;
    gt2_rxbufreset_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxmcommaalignen_in : in STD_LOGIC;
    gt2_rxpcommaalignen_in : in STD_LOGIC;
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxuserrdy_in : in STD_LOGIC;
    gt2_rxusrclk_in : in STD_LOGIC;
    gt2_rxusrclk2_in : in STD_LOGIC;
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_txuserrdy_in : in STD_LOGIC;
    gt2_txusrclk_in : in STD_LOGIC;
    gt2_txusrclk2_in : in STD_LOGIC;
    gt2_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_cplllockdetclk_in : in STD_LOGIC;
    gt3_cpllpd_in : in STD_LOGIC;
    gt3_cpllreset_in : in STD_LOGIC;
    gt3_drpclk_in : in STD_LOGIC;
    gt3_drpen_in : in STD_LOGIC;
    gt3_drpwe_in : in STD_LOGIC;
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_gtnorthrefclk0_in : in STD_LOGIC;
    gt3_gtnorthrefclk1_in : in STD_LOGIC;
    gt3_gtrefclk0_in : in STD_LOGIC;
    gt3_gtrefclk1_in : in STD_LOGIC;
    data_sync_reg4_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt3_gtsouthrefclk0_in : in STD_LOGIC;
    gt3_gtsouthrefclk1_in : in STD_LOGIC;
    gt3_gttxreset_in : in STD_LOGIC;
    gt3_gtxrxn_in : in STD_LOGIC;
    gt3_gtxrxp_in : in STD_LOGIC;
    gt3_rxbufreset_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxmcommaalignen_in : in STD_LOGIC;
    gt3_rxpcommaalignen_in : in STD_LOGIC;
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxuserrdy_in : in STD_LOGIC;
    gt3_rxusrclk_in : in STD_LOGIC;
    gt3_rxusrclk2_in : in STD_LOGIC;
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    gt3_txusrclk_in : in STD_LOGIC;
    gt3_txusrclk2_in : in STD_LOGIC;
    gt3_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_multi_gt : entity is "jesd204_phy_1_gt_multi_gt";
end jesd204_phy_1_jesd204_phy_1_gt_multi_gt;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_multi_gt is
  signal \^gt0_rxresetdone_out\ : STD_LOGIC;
  signal \^gt0_txresetdone_out\ : STD_LOGIC;
  signal \^gt2_rxresetdone_out\ : STD_LOGIC;
  signal \^gt2_txresetdone_out\ : STD_LOGIC;
  signal \^gt3_rxresetdone_out\ : STD_LOGIC;
  signal \^gt3_txresetdone_out\ : STD_LOGIC;
begin
  gt0_rxresetdone_out <= \^gt0_rxresetdone_out\;
  gt0_txresetdone_out <= \^gt0_txresetdone_out\;
  gt2_rxresetdone_out <= \^gt2_rxresetdone_out\;
  gt2_txresetdone_out <= \^gt2_txresetdone_out\;
  gt3_rxresetdone_out <= \^gt3_rxresetdone_out\;
  gt3_txresetdone_out <= \^gt3_txresetdone_out\;
gt0_jesd204_phy_1_gt_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_GT
     port map (
      GT0_QPLLOUTCLK_IN => GT0_QPLLOUTCLK_IN,
      GT0_QPLLOUTREFCLK_IN => GT0_QPLLOUTREFCLK_IN,
      SR(0) => SR(0),
      gt0_cpllfbclklost_out => gt0_cpllfbclklost_out,
      gt0_cplllock_out => gt0_cplllock_out,
      gt0_cplllockdetclk_in => gt0_cplllockdetclk_in,
      gt0_cpllpd_in => gt0_cpllpd_in,
      gt0_cpllreset_in => gt0_cpllreset_in,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_gtnorthrefclk0_in => gt0_gtnorthrefclk0_in,
      gt0_gtnorthrefclk1_in => gt0_gtnorthrefclk1_in,
      gt0_gtrefclk0_in => gt0_gtrefclk0_in,
      gt0_gtrefclk1_in => gt0_gtrefclk1_in,
      gt0_gtsouthrefclk0_in => gt0_gtsouthrefclk0_in,
      gt0_gtsouthrefclk1_in => gt0_gtsouthrefclk1_in,
      gt0_gttxreset_in => gt0_gttxreset_in,
      gt0_gtxrxn_in => gt0_gtxrxn_in,
      gt0_gtxrxp_in => gt0_gtxrxp_in,
      gt0_gtxtxn_out => gt0_gtxtxn_out,
      gt0_gtxtxp_out => gt0_gtxtxp_out,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxchariscomma_out(3 downto 0) => gt0_rxchariscomma_out(3 downto 0),
      gt0_rxcharisk_out(3 downto 0) => gt0_rxcharisk_out(3 downto 0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdata_out(31 downto 0) => gt0_rxdata_out(31 downto 0),
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr_out(3 downto 0) => gt0_rxdisperr_out(3 downto 0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => gt0_rxmcommaalignen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable_out(3 downto 0) => gt0_rxnotintable_out(3 downto 0),
      gt0_rxoutclk_out => gt0_rxoutclk_out,
      gt0_rxoutclkfabric_out => gt0_rxoutclkfabric_out,
      gt0_rxpcommaalignen_in => gt0_rxpcommaalignen_in,
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpd_in(1 downto 0) => gt0_rxpd_in(1 downto 0),
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxresetdone_out => \^gt0_rxresetdone_out\,
      gt0_rxstatus_out(2 downto 0) => gt0_rxstatus_out(2 downto 0),
      gt0_rxsysclksel_in(1 downto 0) => gt0_rxsysclksel_in(1 downto 0),
      gt0_rxuserrdy_in => gt0_rxuserrdy_in,
      gt0_rxusrclk2_in => gt0_rxusrclk2_in,
      gt0_rxusrclk_in => gt0_rxusrclk_in,
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txcharisk_in(3 downto 0) => gt0_txcharisk_in(3 downto 0),
      gt0_txdata_in(31 downto 0) => gt0_txdata_in(31 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txinhibit_in => gt0_txinhibit_in,
      gt0_txoutclk_out => gt0_txoutclk_out,
      gt0_txoutclkfabric_out => gt0_txoutclkfabric_out,
      gt0_txoutclkpcs_out => gt0_txoutclkpcs_out,
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpd_in(1 downto 0) => gt0_txpd_in(1 downto 0),
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt0_txresetdone_out => \^gt0_txresetdone_out\,
      gt0_txsysclksel_in(1 downto 0) => gt0_txsysclksel_in(1 downto 0),
      gt0_txuserrdy_in => gt0_txuserrdy_in,
      gt0_txusrclk2_in => gt0_txusrclk2_in,
      gt0_txusrclk_in => gt0_txusrclk_in
    );
gt1_jesd204_phy_1_gt_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_GT_7
     port map (
      GT0_QPLLOUTCLK_IN => GT0_QPLLOUTCLK_IN,
      GT0_QPLLOUTREFCLK_IN => GT0_QPLLOUTREFCLK_IN,
      data_in => data_in,
      data_sync_reg1 => data_sync_reg1,
      data_sync_reg4(0) => data_sync_reg4(0),
      gt0_rxresetdone_out => \^gt0_rxresetdone_out\,
      gt0_txresetdone_out => \^gt0_txresetdone_out\,
      gt1_cpllfbclklost_out => gt1_cpllfbclklost_out,
      gt1_cplllock_out => gt1_cplllock_out,
      gt1_cplllockdetclk_in => gt1_cplllockdetclk_in,
      gt1_cpllpd_in => gt1_cpllpd_in,
      gt1_cpllreset_in => gt1_cpllreset_in,
      gt1_dmonitorout_out(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      gt1_drpaddr_in(8 downto 0) => gt1_drpaddr_in(8 downto 0),
      gt1_drpclk_in => gt1_drpclk_in,
      gt1_drpdi_in(15 downto 0) => gt1_drpdi_in(15 downto 0),
      gt1_drpdo_out(15 downto 0) => gt1_drpdo_out(15 downto 0),
      gt1_drpen_in => gt1_drpen_in,
      gt1_drprdy_out => gt1_drprdy_out,
      gt1_drpwe_in => gt1_drpwe_in,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_eyescanreset_in => gt1_eyescanreset_in,
      gt1_eyescantrigger_in => gt1_eyescantrigger_in,
      gt1_gtnorthrefclk0_in => gt1_gtnorthrefclk0_in,
      gt1_gtnorthrefclk1_in => gt1_gtnorthrefclk1_in,
      gt1_gtrefclk0_in => gt1_gtrefclk0_in,
      gt1_gtrefclk1_in => gt1_gtrefclk1_in,
      gt1_gtsouthrefclk0_in => gt1_gtsouthrefclk0_in,
      gt1_gtsouthrefclk1_in => gt1_gtsouthrefclk1_in,
      gt1_gttxreset_in => gt1_gttxreset_in,
      gt1_gtxrxn_in => gt1_gtxrxn_in,
      gt1_gtxrxp_in => gt1_gtxrxp_in,
      gt1_gtxtxn_out => gt1_gtxtxn_out,
      gt1_gtxtxp_out => gt1_gtxtxp_out,
      gt1_loopback_in(2 downto 0) => gt1_loopback_in(2 downto 0),
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt1_rxbufstatus_out(2 downto 0) => gt1_rxbufstatus_out(2 downto 0),
      gt1_rxbyteisaligned_out => gt1_rxbyteisaligned_out,
      gt1_rxbyterealign_out => gt1_rxbyterealign_out,
      gt1_rxcdrhold_in => gt1_rxcdrhold_in,
      gt1_rxchariscomma_out(3 downto 0) => gt1_rxchariscomma_out(3 downto 0),
      gt1_rxcharisk_out(3 downto 0) => gt1_rxcharisk_out(3 downto 0),
      gt1_rxcommadet_out => gt1_rxcommadet_out,
      gt1_rxdata_out(31 downto 0) => gt1_rxdata_out(31 downto 0),
      gt1_rxdfelpmreset_in => gt1_rxdfelpmreset_in,
      gt1_rxdisperr_out(3 downto 0) => gt1_rxdisperr_out(3 downto 0),
      gt1_rxlpmen_in => gt1_rxlpmen_in,
      gt1_rxmcommaalignen_in => gt1_rxmcommaalignen_in,
      gt1_rxmonitorout_out(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      gt1_rxnotintable_out(3 downto 0) => gt1_rxnotintable_out(3 downto 0),
      gt1_rxoutclk_out => gt1_rxoutclk_out,
      gt1_rxoutclkfabric_out => gt1_rxoutclkfabric_out,
      gt1_rxpcommaalignen_in => gt1_rxpcommaalignen_in,
      gt1_rxpcsreset_in => gt1_rxpcsreset_in,
      gt1_rxpd_in(1 downto 0) => gt1_rxpd_in(1 downto 0),
      gt1_rxpmareset_in => gt1_rxpmareset_in,
      gt1_rxpolarity_in => gt1_rxpolarity_in,
      gt1_rxprbscntreset_in => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out => gt1_rxprbserr_out,
      gt1_rxprbssel_in(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      gt1_rxresetdone_out => gt1_rxresetdone_out,
      gt1_rxstatus_out(2 downto 0) => gt1_rxstatus_out(2 downto 0),
      gt1_rxsysclksel_in(1 downto 0) => gt1_rxsysclksel_in(1 downto 0),
      gt1_rxuserrdy_in => gt1_rxuserrdy_in,
      gt1_rxusrclk2_in => gt1_rxusrclk2_in,
      gt1_rxusrclk_in => gt1_rxusrclk_in,
      gt1_txbufstatus_out(1 downto 0) => gt1_txbufstatus_out(1 downto 0),
      gt1_txcharisk_in(3 downto 0) => gt1_txcharisk_in(3 downto 0),
      gt1_txdata_in(31 downto 0) => gt1_txdata_in(31 downto 0),
      gt1_txdiffctrl_in(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      gt1_txinhibit_in => gt1_txinhibit_in,
      gt1_txoutclk_out => gt1_txoutclk_out,
      gt1_txoutclkfabric_out => gt1_txoutclkfabric_out,
      gt1_txoutclkpcs_out => gt1_txoutclkpcs_out,
      gt1_txpcsreset_in => gt1_txpcsreset_in,
      gt1_txpd_in(1 downto 0) => gt1_txpd_in(1 downto 0),
      gt1_txpmareset_in => gt1_txpmareset_in,
      gt1_txpolarity_in => gt1_txpolarity_in,
      gt1_txpostcursor_in(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      gt1_txprbsforceerr_in => gt1_txprbsforceerr_in,
      gt1_txprbssel_in(2 downto 0) => gt1_txprbssel_in(2 downto 0),
      gt1_txprecursor_in(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      gt1_txresetdone_out => gt1_txresetdone_out,
      gt1_txsysclksel_in(1 downto 0) => gt1_txsysclksel_in(1 downto 0),
      gt1_txuserrdy_in => gt1_txuserrdy_in,
      gt1_txusrclk2_in => gt1_txusrclk2_in,
      gt1_txusrclk_in => gt1_txusrclk_in,
      gt2_rxresetdone_out => \^gt2_rxresetdone_out\,
      gt2_txresetdone_out => \^gt2_txresetdone_out\,
      gt3_rxresetdone_out => \^gt3_rxresetdone_out\,
      gt3_txresetdone_out => \^gt3_txresetdone_out\
    );
gt2_jesd204_phy_1_gt_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_GT_8
     port map (
      GT0_QPLLOUTCLK_IN => GT0_QPLLOUTCLK_IN,
      GT0_QPLLOUTREFCLK_IN => GT0_QPLLOUTREFCLK_IN,
      data_sync_reg4(0) => data_sync_reg4_0(0),
      gt2_cpllfbclklost_out => gt2_cpllfbclklost_out,
      gt2_cplllock_out => gt2_cplllock_out,
      gt2_cplllockdetclk_in => gt2_cplllockdetclk_in,
      gt2_cpllpd_in => gt2_cpllpd_in,
      gt2_cpllreset_in => gt2_cpllreset_in,
      gt2_dmonitorout_out(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      gt2_drpaddr_in(8 downto 0) => gt2_drpaddr_in(8 downto 0),
      gt2_drpclk_in => gt2_drpclk_in,
      gt2_drpdi_in(15 downto 0) => gt2_drpdi_in(15 downto 0),
      gt2_drpdo_out(15 downto 0) => gt2_drpdo_out(15 downto 0),
      gt2_drpen_in => gt2_drpen_in,
      gt2_drprdy_out => gt2_drprdy_out,
      gt2_drpwe_in => gt2_drpwe_in,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_eyescanreset_in => gt2_eyescanreset_in,
      gt2_eyescantrigger_in => gt2_eyescantrigger_in,
      gt2_gtnorthrefclk0_in => gt2_gtnorthrefclk0_in,
      gt2_gtnorthrefclk1_in => gt2_gtnorthrefclk1_in,
      gt2_gtrefclk0_in => gt2_gtrefclk0_in,
      gt2_gtrefclk1_in => gt2_gtrefclk1_in,
      gt2_gtsouthrefclk0_in => gt2_gtsouthrefclk0_in,
      gt2_gtsouthrefclk1_in => gt2_gtsouthrefclk1_in,
      gt2_gttxreset_in => gt2_gttxreset_in,
      gt2_gtxrxn_in => gt2_gtxrxn_in,
      gt2_gtxrxp_in => gt2_gtxrxp_in,
      gt2_gtxtxn_out => gt2_gtxtxn_out,
      gt2_gtxtxp_out => gt2_gtxtxp_out,
      gt2_loopback_in(2 downto 0) => gt2_loopback_in(2 downto 0),
      gt2_rxbufreset_in => gt2_rxbufreset_in,
      gt2_rxbufstatus_out(2 downto 0) => gt2_rxbufstatus_out(2 downto 0),
      gt2_rxbyteisaligned_out => gt2_rxbyteisaligned_out,
      gt2_rxbyterealign_out => gt2_rxbyterealign_out,
      gt2_rxcdrhold_in => gt2_rxcdrhold_in,
      gt2_rxchariscomma_out(3 downto 0) => gt2_rxchariscomma_out(3 downto 0),
      gt2_rxcharisk_out(3 downto 0) => gt2_rxcharisk_out(3 downto 0),
      gt2_rxcommadet_out => gt2_rxcommadet_out,
      gt2_rxdata_out(31 downto 0) => gt2_rxdata_out(31 downto 0),
      gt2_rxdfelpmreset_in => gt2_rxdfelpmreset_in,
      gt2_rxdisperr_out(3 downto 0) => gt2_rxdisperr_out(3 downto 0),
      gt2_rxlpmen_in => gt2_rxlpmen_in,
      gt2_rxmcommaalignen_in => gt2_rxmcommaalignen_in,
      gt2_rxmonitorout_out(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      gt2_rxnotintable_out(3 downto 0) => gt2_rxnotintable_out(3 downto 0),
      gt2_rxoutclk_out => gt2_rxoutclk_out,
      gt2_rxoutclkfabric_out => gt2_rxoutclkfabric_out,
      gt2_rxpcommaalignen_in => gt2_rxpcommaalignen_in,
      gt2_rxpcsreset_in => gt2_rxpcsreset_in,
      gt2_rxpd_in(1 downto 0) => gt2_rxpd_in(1 downto 0),
      gt2_rxpmareset_in => gt2_rxpmareset_in,
      gt2_rxpolarity_in => gt2_rxpolarity_in,
      gt2_rxprbscntreset_in => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out => gt2_rxprbserr_out,
      gt2_rxprbssel_in(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      gt2_rxresetdone_out => \^gt2_rxresetdone_out\,
      gt2_rxstatus_out(2 downto 0) => gt2_rxstatus_out(2 downto 0),
      gt2_rxsysclksel_in(1 downto 0) => gt2_rxsysclksel_in(1 downto 0),
      gt2_rxuserrdy_in => gt2_rxuserrdy_in,
      gt2_rxusrclk2_in => gt2_rxusrclk2_in,
      gt2_rxusrclk_in => gt2_rxusrclk_in,
      gt2_txbufstatus_out(1 downto 0) => gt2_txbufstatus_out(1 downto 0),
      gt2_txcharisk_in(3 downto 0) => gt2_txcharisk_in(3 downto 0),
      gt2_txdata_in(31 downto 0) => gt2_txdata_in(31 downto 0),
      gt2_txdiffctrl_in(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      gt2_txinhibit_in => gt2_txinhibit_in,
      gt2_txoutclk_out => gt2_txoutclk_out,
      gt2_txoutclkfabric_out => gt2_txoutclkfabric_out,
      gt2_txoutclkpcs_out => gt2_txoutclkpcs_out,
      gt2_txpcsreset_in => gt2_txpcsreset_in,
      gt2_txpd_in(1 downto 0) => gt2_txpd_in(1 downto 0),
      gt2_txpmareset_in => gt2_txpmareset_in,
      gt2_txpolarity_in => gt2_txpolarity_in,
      gt2_txpostcursor_in(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      gt2_txprbsforceerr_in => gt2_txprbsforceerr_in,
      gt2_txprbssel_in(2 downto 0) => gt2_txprbssel_in(2 downto 0),
      gt2_txprecursor_in(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      gt2_txresetdone_out => \^gt2_txresetdone_out\,
      gt2_txsysclksel_in(1 downto 0) => gt2_txsysclksel_in(1 downto 0),
      gt2_txuserrdy_in => gt2_txuserrdy_in,
      gt2_txusrclk2_in => gt2_txusrclk2_in,
      gt2_txusrclk_in => gt2_txusrclk_in
    );
gt3_jesd204_phy_1_gt_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_GT_9
     port map (
      GT0_QPLLOUTCLK_IN => GT0_QPLLOUTCLK_IN,
      GT0_QPLLOUTREFCLK_IN => GT0_QPLLOUTREFCLK_IN,
      data_sync_reg4(0) => data_sync_reg4_1(0),
      gt3_cpllfbclklost_out => gt3_cpllfbclklost_out,
      gt3_cplllock_out => gt3_cplllock_out,
      gt3_cplllockdetclk_in => gt3_cplllockdetclk_in,
      gt3_cpllpd_in => gt3_cpllpd_in,
      gt3_cpllreset_in => gt3_cpllreset_in,
      gt3_dmonitorout_out(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      gt3_drpaddr_in(8 downto 0) => gt3_drpaddr_in(8 downto 0),
      gt3_drpclk_in => gt3_drpclk_in,
      gt3_drpdi_in(15 downto 0) => gt3_drpdi_in(15 downto 0),
      gt3_drpdo_out(15 downto 0) => gt3_drpdo_out(15 downto 0),
      gt3_drpen_in => gt3_drpen_in,
      gt3_drprdy_out => gt3_drprdy_out,
      gt3_drpwe_in => gt3_drpwe_in,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_eyescanreset_in => gt3_eyescanreset_in,
      gt3_eyescantrigger_in => gt3_eyescantrigger_in,
      gt3_gtnorthrefclk0_in => gt3_gtnorthrefclk0_in,
      gt3_gtnorthrefclk1_in => gt3_gtnorthrefclk1_in,
      gt3_gtrefclk0_in => gt3_gtrefclk0_in,
      gt3_gtrefclk1_in => gt3_gtrefclk1_in,
      gt3_gtsouthrefclk0_in => gt3_gtsouthrefclk0_in,
      gt3_gtsouthrefclk1_in => gt3_gtsouthrefclk1_in,
      gt3_gttxreset_in => gt3_gttxreset_in,
      gt3_gtxrxn_in => gt3_gtxrxn_in,
      gt3_gtxrxp_in => gt3_gtxrxp_in,
      gt3_gtxtxn_out => gt3_gtxtxn_out,
      gt3_gtxtxp_out => gt3_gtxtxp_out,
      gt3_loopback_in(2 downto 0) => gt3_loopback_in(2 downto 0),
      gt3_rxbufreset_in => gt3_rxbufreset_in,
      gt3_rxbufstatus_out(2 downto 0) => gt3_rxbufstatus_out(2 downto 0),
      gt3_rxbyteisaligned_out => gt3_rxbyteisaligned_out,
      gt3_rxbyterealign_out => gt3_rxbyterealign_out,
      gt3_rxcdrhold_in => gt3_rxcdrhold_in,
      gt3_rxchariscomma_out(3 downto 0) => gt3_rxchariscomma_out(3 downto 0),
      gt3_rxcharisk_out(3 downto 0) => gt3_rxcharisk_out(3 downto 0),
      gt3_rxcommadet_out => gt3_rxcommadet_out,
      gt3_rxdata_out(31 downto 0) => gt3_rxdata_out(31 downto 0),
      gt3_rxdfelpmreset_in => gt3_rxdfelpmreset_in,
      gt3_rxdisperr_out(3 downto 0) => gt3_rxdisperr_out(3 downto 0),
      gt3_rxlpmen_in => gt3_rxlpmen_in,
      gt3_rxmcommaalignen_in => gt3_rxmcommaalignen_in,
      gt3_rxmonitorout_out(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      gt3_rxnotintable_out(3 downto 0) => gt3_rxnotintable_out(3 downto 0),
      gt3_rxoutclk_out => gt3_rxoutclk_out,
      gt3_rxoutclkfabric_out => gt3_rxoutclkfabric_out,
      gt3_rxpcommaalignen_in => gt3_rxpcommaalignen_in,
      gt3_rxpcsreset_in => gt3_rxpcsreset_in,
      gt3_rxpd_in(1 downto 0) => gt3_rxpd_in(1 downto 0),
      gt3_rxpmareset_in => gt3_rxpmareset_in,
      gt3_rxpolarity_in => gt3_rxpolarity_in,
      gt3_rxprbscntreset_in => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out => gt3_rxprbserr_out,
      gt3_rxprbssel_in(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      gt3_rxresetdone_out => \^gt3_rxresetdone_out\,
      gt3_rxstatus_out(2 downto 0) => gt3_rxstatus_out(2 downto 0),
      gt3_rxsysclksel_in(1 downto 0) => gt3_rxsysclksel_in(1 downto 0),
      gt3_rxuserrdy_in => gt3_rxuserrdy_in,
      gt3_rxusrclk2_in => gt3_rxusrclk2_in,
      gt3_rxusrclk_in => gt3_rxusrclk_in,
      gt3_txbufstatus_out(1 downto 0) => gt3_txbufstatus_out(1 downto 0),
      gt3_txcharisk_in(3 downto 0) => gt3_txcharisk_in(3 downto 0),
      gt3_txdata_in(31 downto 0) => gt3_txdata_in(31 downto 0),
      gt3_txdiffctrl_in(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      gt3_txinhibit_in => gt3_txinhibit_in,
      gt3_txoutclk_out => gt3_txoutclk_out,
      gt3_txoutclkfabric_out => gt3_txoutclkfabric_out,
      gt3_txoutclkpcs_out => gt3_txoutclkpcs_out,
      gt3_txpcsreset_in => gt3_txpcsreset_in,
      gt3_txpd_in(1 downto 0) => gt3_txpd_in(1 downto 0),
      gt3_txpmareset_in => gt3_txpmareset_in,
      gt3_txpolarity_in => gt3_txpolarity_in,
      gt3_txpostcursor_in(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      gt3_txprbsforceerr_in => gt3_txprbsforceerr_in,
      gt3_txprbssel_in(2 downto 0) => gt3_txprbssel_in(2 downto 0),
      gt3_txprecursor_in(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      gt3_txresetdone_out => \^gt3_txresetdone_out\,
      gt3_txsysclksel_in(1 downto 0) => gt3_txsysclksel_in(1 downto 0),
      gt3_txuserrdy_in => gt3_txuserrdy_in,
      gt3_txusrclk2_in => gt3_txusrclk2_in,
      gt3_txusrclk_in => gt3_txusrclk_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt_init is
  port (
    SYSCLK_IN : in STD_LOGIC;
    SOFT_RESET_TX_IN : in STD_LOGIC;
    SOFT_RESET_RX_IN : in STD_LOGIC;
    DONT_RESET_ON_DATA_ERROR_IN : in STD_LOGIC;
    GT_TX_FSM_RESET_DONE_OUT : out STD_LOGIC;
    GT_RX_FSM_RESET_DONE_OUT : out STD_LOGIC;
    GT0_DATA_VALID_IN : in STD_LOGIC;
    GT1_DATA_VALID_IN : in STD_LOGIC;
    GT2_DATA_VALID_IN : in STD_LOGIC;
    GT3_DATA_VALID_IN : in STD_LOGIC;
    gt0_cpllfbclklost_out : out STD_LOGIC;
    gt0_cplllock_out : out STD_LOGIC;
    gt0_cplllockdetclk_in : in STD_LOGIC;
    gt0_cpllpd_in : in STD_LOGIC;
    gt0_cpllreset_in : in STD_LOGIC;
    gt0_gtnorthrefclk0_in : in STD_LOGIC;
    gt0_gtnorthrefclk1_in : in STD_LOGIC;
    gt0_gtrefclk0_in : in STD_LOGIC;
    gt0_gtrefclk1_in : in STD_LOGIC;
    gt0_gtsouthrefclk0_in : in STD_LOGIC;
    gt0_gtsouthrefclk1_in : in STD_LOGIC;
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen_in : in STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_rxuserrdy_in : in STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxusrclk_in : in STD_LOGIC;
    gt0_rxusrclk2_in : in STD_LOGIC;
    gt0_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_gtxrxp_in : in STD_LOGIC;
    gt0_gtxrxn_in : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcommaalignen_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxoutclk_out : out STD_LOGIC;
    gt0_rxoutclkfabric_out : out STD_LOGIC;
    gt0_gtrxreset_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_gttxreset_in : in STD_LOGIC;
    gt0_txuserrdy_in : in STD_LOGIC;
    gt0_txusrclk_in : in STD_LOGIC;
    gt0_txusrclk2_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_gtxtxn_out : out STD_LOGIC;
    gt0_gtxtxp_out : out STD_LOGIC;
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txoutclkfabric_out : out STD_LOGIC;
    gt0_txoutclkpcs_out : out STD_LOGIC;
    gt0_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_cpllfbclklost_out : out STD_LOGIC;
    gt1_cplllock_out : out STD_LOGIC;
    gt1_cplllockdetclk_in : in STD_LOGIC;
    gt1_cpllpd_in : in STD_LOGIC;
    gt1_cpllreset_in : in STD_LOGIC;
    gt1_gtnorthrefclk0_in : in STD_LOGIC;
    gt1_gtnorthrefclk1_in : in STD_LOGIC;
    gt1_gtrefclk0_in : in STD_LOGIC;
    gt1_gtrefclk1_in : in STD_LOGIC;
    gt1_gtsouthrefclk0_in : in STD_LOGIC;
    gt1_gtsouthrefclk1_in : in STD_LOGIC;
    gt1_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpclk_in : in STD_LOGIC;
    gt1_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpen_in : in STD_LOGIC;
    gt1_drprdy_out : out STD_LOGIC;
    gt1_drpwe_in : in STD_LOGIC;
    gt1_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_rxuserrdy_in : in STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxusrclk_in : in STD_LOGIC;
    gt1_rxusrclk2_in : in STD_LOGIC;
    gt1_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_gtxrxp_in : in STD_LOGIC;
    gt1_gtxrxn_in : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxmcommaalignen_in : in STD_LOGIC;
    gt1_rxpcommaalignen_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxoutclk_out : out STD_LOGIC;
    gt1_rxoutclkfabric_out : out STD_LOGIC;
    gt1_gtrxreset_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_gttxreset_in : in STD_LOGIC;
    gt1_txuserrdy_in : in STD_LOGIC;
    gt1_txusrclk_in : in STD_LOGIC;
    gt1_txusrclk2_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_gtxtxn_out : out STD_LOGIC;
    gt1_gtxtxp_out : out STD_LOGIC;
    gt1_txoutclk_out : out STD_LOGIC;
    gt1_txoutclkfabric_out : out STD_LOGIC;
    gt1_txoutclkpcs_out : out STD_LOGIC;
    gt1_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_cpllfbclklost_out : out STD_LOGIC;
    gt2_cplllock_out : out STD_LOGIC;
    gt2_cplllockdetclk_in : in STD_LOGIC;
    gt2_cpllpd_in : in STD_LOGIC;
    gt2_cpllreset_in : in STD_LOGIC;
    gt2_gtnorthrefclk0_in : in STD_LOGIC;
    gt2_gtnorthrefclk1_in : in STD_LOGIC;
    gt2_gtrefclk0_in : in STD_LOGIC;
    gt2_gtrefclk1_in : in STD_LOGIC;
    gt2_gtsouthrefclk0_in : in STD_LOGIC;
    gt2_gtsouthrefclk1_in : in STD_LOGIC;
    gt2_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_drpclk_in : in STD_LOGIC;
    gt2_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpen_in : in STD_LOGIC;
    gt2_drprdy_out : out STD_LOGIC;
    gt2_drpwe_in : in STD_LOGIC;
    gt2_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_rxuserrdy_in : in STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxusrclk_in : in STD_LOGIC;
    gt2_rxusrclk2_in : in STD_LOGIC;
    gt2_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_gtxrxp_in : in STD_LOGIC;
    gt2_gtxrxn_in : in STD_LOGIC;
    gt2_rxbufreset_in : in STD_LOGIC;
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxbyteisaligned_out : out STD_LOGIC;
    gt2_rxbyterealign_out : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxmcommaalignen_in : in STD_LOGIC;
    gt2_rxpcommaalignen_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxoutclk_out : out STD_LOGIC;
    gt2_rxoutclkfabric_out : out STD_LOGIC;
    gt2_gtrxreset_in : in STD_LOGIC;
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_gttxreset_in : in STD_LOGIC;
    gt2_txuserrdy_in : in STD_LOGIC;
    gt2_txusrclk_in : in STD_LOGIC;
    gt2_txusrclk2_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_gtxtxn_out : out STD_LOGIC;
    gt2_gtxtxp_out : out STD_LOGIC;
    gt2_txoutclk_out : out STD_LOGIC;
    gt2_txoutclkfabric_out : out STD_LOGIC;
    gt2_txoutclkpcs_out : out STD_LOGIC;
    gt2_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txresetdone_out : out STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_cpllfbclklost_out : out STD_LOGIC;
    gt3_cplllock_out : out STD_LOGIC;
    gt3_cplllockdetclk_in : in STD_LOGIC;
    gt3_cpllpd_in : in STD_LOGIC;
    gt3_cpllreset_in : in STD_LOGIC;
    gt3_gtnorthrefclk0_in : in STD_LOGIC;
    gt3_gtnorthrefclk1_in : in STD_LOGIC;
    gt3_gtrefclk0_in : in STD_LOGIC;
    gt3_gtrefclk1_in : in STD_LOGIC;
    gt3_gtsouthrefclk0_in : in STD_LOGIC;
    gt3_gtsouthrefclk1_in : in STD_LOGIC;
    gt3_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_drpclk_in : in STD_LOGIC;
    gt3_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpen_in : in STD_LOGIC;
    gt3_drprdy_out : out STD_LOGIC;
    gt3_drpwe_in : in STD_LOGIC;
    gt3_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_rxuserrdy_in : in STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxusrclk_in : in STD_LOGIC;
    gt3_rxusrclk2_in : in STD_LOGIC;
    gt3_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_gtxrxp_in : in STD_LOGIC;
    gt3_gtxrxn_in : in STD_LOGIC;
    gt3_rxbufreset_in : in STD_LOGIC;
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxbyteisaligned_out : out STD_LOGIC;
    gt3_rxbyterealign_out : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxmcommaalignen_in : in STD_LOGIC;
    gt3_rxpcommaalignen_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxoutclk_out : out STD_LOGIC;
    gt3_rxoutclkfabric_out : out STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_gttxreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    gt3_txusrclk_in : in STD_LOGIC;
    gt3_txusrclk2_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_gtxtxn_out : out STD_LOGIC;
    gt3_gtxtxp_out : out STD_LOGIC;
    gt3_txoutclk_out : out STD_LOGIC;
    gt3_txoutclkfabric_out : out STD_LOGIC;
    gt3_txoutclkpcs_out : out STD_LOGIC;
    gt3_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txresetdone_out : out STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    GT0_QPLLLOCK_IN : in STD_LOGIC;
    GT0_QPLLREFCLKLOST_IN : in STD_LOGIC;
    GT0_QPLLRESET_OUT : out STD_LOGIC;
    GT0_QPLLOUTCLK_IN : in STD_LOGIC;
    GT0_QPLLOUTREFCLK_IN : in STD_LOGIC
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of jesd204_phy_1_jesd204_phy_1_gt_init : entity is "yes";
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of jesd204_phy_1_jesd204_phy_1_gt_init : entity is 0;
  attribute EXAMPLE_SIM_GTRESET_SPEEDUP : string;
  attribute EXAMPLE_SIM_GTRESET_SPEEDUP of jesd204_phy_1_jesd204_phy_1_gt_init : entity is "TRUE";
  attribute EXAMPLE_USE_CHIPSCOPE : integer;
  attribute EXAMPLE_USE_CHIPSCOPE of jesd204_phy_1_jesd204_phy_1_gt_init : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt_init : entity is "jesd204_phy_1_gt_init";
  attribute STABLE_CLOCK_PERIOD : integer;
  attribute STABLE_CLOCK_PERIOD of jesd204_phy_1_jesd204_phy_1_gt_init : entity is 10;
end jesd204_phy_1_jesd204_phy_1_gt_init;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt_init is
  signal CPLL_RESET : STD_LOGIC;
  signal RXRESETDONE : STD_LOGIC;
  signal TXRESETDONE : STD_LOGIC;
  signal gt0_cpllreset_in19_out : STD_LOGIC;
  signal gt0_gtrxreset_in17_out : STD_LOGIC;
  signal gt0_gttxreset_in16_out : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gt0_rx_cdrlocked_i_2_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt0_rxuserrdy_in18_out : STD_LOGIC;
  signal gt0_txuserrdy_in15_out : STD_LOGIC;
  signal gt1_cpllreset_in14_out : STD_LOGIC;
  signal gt1_gtrxreset_in12_out : STD_LOGIC;
  signal gt1_gttxreset_in11_out : STD_LOGIC;
  signal gt1_rx_cdrlock_counter : STD_LOGIC;
  signal \gt1_rx_cdrlock_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \gt1_rx_cdrlock_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \gt1_rx_cdrlock_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \gt1_rx_cdrlock_counter_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gt1_rx_cdrlocked_i_2_n_0 : STD_LOGIC;
  signal gt1_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt1_rxuserrdy_in13_out : STD_LOGIC;
  signal gt1_txuserrdy_in10_out : STD_LOGIC;
  signal gt2_cpllreset_in9_out : STD_LOGIC;
  signal gt2_gtrxreset_in7_out : STD_LOGIC;
  signal gt2_gttxreset_in6_out : STD_LOGIC;
  signal gt2_rx_cdrlock_counter : STD_LOGIC;
  signal \gt2_rx_cdrlock_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \gt2_rx_cdrlock_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \gt2_rx_cdrlock_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \gt2_rx_cdrlock_counter_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gt2_rx_cdrlocked_i_2_n_0 : STD_LOGIC;
  signal gt2_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt2_rxuserrdy_in8_out : STD_LOGIC;
  signal gt2_txuserrdy_in5_out : STD_LOGIC;
  signal gt3_cpllreset_in4_out : STD_LOGIC;
  signal gt3_gtrxreset_in2_out : STD_LOGIC;
  signal gt3_gttxreset_in1_out : STD_LOGIC;
  signal gt3_rx_cdrlock_counter : STD_LOGIC;
  signal \gt3_rx_cdrlock_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \gt3_rx_cdrlock_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \gt3_rx_cdrlock_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \gt3_rx_cdrlock_counter_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gt3_rx_cdrlocked_i_2_n_0 : STD_LOGIC;
  signal gt3_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt3_rxuserrdy_in3_out : STD_LOGIC;
  signal gt3_txuserrdy_in0_out : STD_LOGIC;
  signal gt_rxresetfsm_i_n_6 : STD_LOGIC;
  signal gt_rxresetfsm_i_n_7 : STD_LOGIC;
  signal gt_rxresetfsm_i_n_8 : STD_LOGIC;
  signal gt_rxresetfsm_i_n_9 : STD_LOGIC;
  signal gt_tx_qpllreset_t : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[8]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of gt0_rx_cdrlocked_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gt1_rx_cdrlock_counter[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gt1_rx_cdrlock_counter[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gt1_rx_cdrlock_counter[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gt1_rx_cdrlock_counter[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gt1_rx_cdrlock_counter[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gt1_rx_cdrlock_counter[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gt1_rx_cdrlock_counter[8]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of gt1_rx_cdrlocked_i_2 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gt2_rx_cdrlock_counter[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gt2_rx_cdrlock_counter[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gt2_rx_cdrlock_counter[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gt2_rx_cdrlock_counter[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gt2_rx_cdrlock_counter[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gt2_rx_cdrlock_counter[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gt2_rx_cdrlock_counter[8]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of gt2_rx_cdrlocked_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gt3_rx_cdrlock_counter[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gt3_rx_cdrlock_counter[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gt3_rx_cdrlock_counter[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gt3_rx_cdrlock_counter[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gt3_rx_cdrlock_counter[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gt3_rx_cdrlock_counter[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gt3_rx_cdrlock_counter[8]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of gt3_rx_cdrlocked_i_2 : label is "soft_lutpair39";
begin
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(0),
      O => \gt0_rx_cdrlock_counter[0]_i_1_n_0\
    );
\gt0_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\gt0_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(2),
      O => \p_0_in__2\(2)
    );
\gt0_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(3),
      O => \p_0_in__2\(3)
    );
\gt0_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(2),
      I4 => \gt0_rx_cdrlock_counter_reg__0\(4),
      O => \p_0_in__2\(4)
    );
\gt0_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt0_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt0_rx_cdrlock_counter_reg__0\(5),
      O => \p_0_in__2\(5)
    );
\gt0_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt0_rx_cdrlock_counter[8]_i_2_n_0\,
      I3 => \gt0_rx_cdrlock_counter_reg__0\(6),
      O => \p_0_in__2\(6)
    );
\gt0_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(5),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(6),
      I3 => \gt0_rx_cdrlock_counter[8]_i_2_n_0\,
      I4 => \gt0_rx_cdrlock_counter_reg__0\(7),
      O => \p_0_in__2\(7)
    );
\gt0_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(6),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(5),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(7),
      I4 => \gt0_rx_cdrlock_counter[8]_i_2_n_0\,
      I5 => \gt0_rx_cdrlock_counter_reg__0\(8),
      O => \p_0_in__2\(8)
    );
\gt0_rx_cdrlock_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(4),
      O => \gt0_rx_cdrlock_counter[8]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(9),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(4),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt0_rx_cdrlock_counter[9]_i_3_n_0\,
      I5 => \gt0_rx_cdrlock_counter_reg__0\(2),
      O => gt0_rx_cdrlock_counter
    );
\gt0_rx_cdrlock_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[9]_i_3_n_0\,
      I1 => \gt0_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt0_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt0_rx_cdrlock_counter_reg__0\(9),
      O => \p_0_in__2\(9)
    );
\gt0_rx_cdrlock_counter[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(7),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(3),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(6),
      I4 => \gt0_rx_cdrlock_counter_reg__0\(8),
      O => \gt0_rx_cdrlock_counter[9]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter[0]_i_1_n_0\,
      Q => \gt0_rx_cdrlock_counter_reg__0\(0),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(1),
      Q => \gt0_rx_cdrlock_counter_reg__0\(1),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(2),
      Q => \gt0_rx_cdrlock_counter_reg__0\(2),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(3),
      Q => \gt0_rx_cdrlock_counter_reg__0\(3),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(4),
      Q => \gt0_rx_cdrlock_counter_reg__0\(4),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(5),
      Q => \gt0_rx_cdrlock_counter_reg__0\(5),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(6),
      Q => \gt0_rx_cdrlock_counter_reg__0\(6),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(7),
      Q => \gt0_rx_cdrlock_counter_reg__0\(7),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(8),
      Q => \gt0_rx_cdrlock_counter_reg__0\(8),
      R => gt0_gtrxreset_in17_out
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt0_rx_cdrlock_counter,
      D => \p_0_in__2\(9),
      Q => \gt0_rx_cdrlock_counter_reg__0\(9),
      R => gt0_gtrxreset_in17_out
    );
gt0_rx_cdrlocked_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt0_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt0_rx_cdrlock_counter_reg__0\(2),
      I3 => \gt0_rx_cdrlock_counter_reg__0\(4),
      I4 => \gt0_rx_cdrlock_counter_reg__0\(9),
      O => gt0_rx_cdrlocked_i_2_n_0
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => '1',
      D => gt_rxresetfsm_i_n_9,
      Q => gt0_rx_cdrlocked_reg_n_0,
      R => '0'
    );
\gt1_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(0),
      O => \gt1_rx_cdrlock_counter[0]_i_1_n_0\
    );
\gt1_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(1),
      O => p_0_in(1)
    );
\gt1_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(2),
      O => p_0_in(2)
    );
\gt1_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(3),
      O => p_0_in(3)
    );
\gt1_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(2),
      I4 => \gt1_rx_cdrlock_counter_reg__0\(4),
      O => p_0_in(4)
    );
\gt1_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt1_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt1_rx_cdrlock_counter_reg__0\(5),
      O => p_0_in(5)
    );
\gt1_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt1_rx_cdrlock_counter[8]_i_2_n_0\,
      I3 => \gt1_rx_cdrlock_counter_reg__0\(6),
      O => p_0_in(6)
    );
\gt1_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(5),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(6),
      I3 => \gt1_rx_cdrlock_counter[8]_i_2_n_0\,
      I4 => \gt1_rx_cdrlock_counter_reg__0\(7),
      O => p_0_in(7)
    );
\gt1_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(6),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(5),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(7),
      I4 => \gt1_rx_cdrlock_counter[8]_i_2_n_0\,
      I5 => \gt1_rx_cdrlock_counter_reg__0\(8),
      O => p_0_in(8)
    );
\gt1_rx_cdrlock_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(4),
      O => \gt1_rx_cdrlock_counter[8]_i_2_n_0\
    );
\gt1_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(9),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(4),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt1_rx_cdrlock_counter[9]_i_3_n_0\,
      I5 => \gt1_rx_cdrlock_counter_reg__0\(2),
      O => gt1_rx_cdrlock_counter
    );
\gt1_rx_cdrlock_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter[9]_i_3_n_0\,
      I1 => \gt1_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt1_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt1_rx_cdrlock_counter_reg__0\(9),
      O => p_0_in(9)
    );
\gt1_rx_cdrlock_counter[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(7),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(3),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(6),
      I4 => \gt1_rx_cdrlock_counter_reg__0\(8),
      O => \gt1_rx_cdrlock_counter[9]_i_3_n_0\
    );
\gt1_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => \gt1_rx_cdrlock_counter[0]_i_1_n_0\,
      Q => \gt1_rx_cdrlock_counter_reg__0\(0),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(1),
      Q => \gt1_rx_cdrlock_counter_reg__0\(1),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(2),
      Q => \gt1_rx_cdrlock_counter_reg__0\(2),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(3),
      Q => \gt1_rx_cdrlock_counter_reg__0\(3),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(4),
      Q => \gt1_rx_cdrlock_counter_reg__0\(4),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(5),
      Q => \gt1_rx_cdrlock_counter_reg__0\(5),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(6),
      Q => \gt1_rx_cdrlock_counter_reg__0\(6),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(7),
      Q => \gt1_rx_cdrlock_counter_reg__0\(7),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(8),
      Q => \gt1_rx_cdrlock_counter_reg__0\(8),
      R => gt1_gtrxreset_in12_out
    );
\gt1_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt1_rx_cdrlock_counter,
      D => p_0_in(9),
      Q => \gt1_rx_cdrlock_counter_reg__0\(9),
      R => gt1_gtrxreset_in12_out
    );
gt1_rx_cdrlocked_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \gt1_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt1_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt1_rx_cdrlock_counter_reg__0\(2),
      I3 => \gt1_rx_cdrlock_counter_reg__0\(4),
      I4 => \gt1_rx_cdrlock_counter_reg__0\(9),
      O => gt1_rx_cdrlocked_i_2_n_0
    );
gt1_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => '1',
      D => gt_rxresetfsm_i_n_6,
      Q => gt1_rx_cdrlocked_reg_n_0,
      R => '0'
    );
\gt2_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(0),
      O => \gt2_rx_cdrlock_counter[0]_i_1_n_0\
    );
\gt2_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\gt2_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\gt2_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\gt2_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(2),
      I4 => \gt2_rx_cdrlock_counter_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\gt2_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt2_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt2_rx_cdrlock_counter_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\gt2_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt2_rx_cdrlock_counter[8]_i_2_n_0\,
      I3 => \gt2_rx_cdrlock_counter_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\gt2_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(5),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(6),
      I3 => \gt2_rx_cdrlock_counter[8]_i_2_n_0\,
      I4 => \gt2_rx_cdrlock_counter_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\gt2_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(6),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(5),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(7),
      I4 => \gt2_rx_cdrlock_counter[8]_i_2_n_0\,
      I5 => \gt2_rx_cdrlock_counter_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\gt2_rx_cdrlock_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(4),
      O => \gt2_rx_cdrlock_counter[8]_i_2_n_0\
    );
\gt2_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(9),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(4),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt2_rx_cdrlock_counter[9]_i_3_n_0\,
      I5 => \gt2_rx_cdrlock_counter_reg__0\(2),
      O => gt2_rx_cdrlock_counter
    );
\gt2_rx_cdrlock_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter[9]_i_3_n_0\,
      I1 => \gt2_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt2_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt2_rx_cdrlock_counter_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\gt2_rx_cdrlock_counter[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(7),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(3),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(6),
      I4 => \gt2_rx_cdrlock_counter_reg__0\(8),
      O => \gt2_rx_cdrlock_counter[9]_i_3_n_0\
    );
\gt2_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \gt2_rx_cdrlock_counter[0]_i_1_n_0\,
      Q => \gt2_rx_cdrlock_counter_reg__0\(0),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(1),
      Q => \gt2_rx_cdrlock_counter_reg__0\(1),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(2),
      Q => \gt2_rx_cdrlock_counter_reg__0\(2),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(3),
      Q => \gt2_rx_cdrlock_counter_reg__0\(3),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(4),
      Q => \gt2_rx_cdrlock_counter_reg__0\(4),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(5),
      Q => \gt2_rx_cdrlock_counter_reg__0\(5),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(6),
      Q => \gt2_rx_cdrlock_counter_reg__0\(6),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(7),
      Q => \gt2_rx_cdrlock_counter_reg__0\(7),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(8),
      Q => \gt2_rx_cdrlock_counter_reg__0\(8),
      R => gt2_gtrxreset_in7_out
    );
\gt2_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt2_rx_cdrlock_counter,
      D => \p_0_in__0\(9),
      Q => \gt2_rx_cdrlock_counter_reg__0\(9),
      R => gt2_gtrxreset_in7_out
    );
gt2_rx_cdrlocked_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \gt2_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt2_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt2_rx_cdrlock_counter_reg__0\(2),
      I3 => \gt2_rx_cdrlock_counter_reg__0\(4),
      I4 => \gt2_rx_cdrlock_counter_reg__0\(9),
      O => gt2_rx_cdrlocked_i_2_n_0
    );
gt2_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => '1',
      D => gt_rxresetfsm_i_n_7,
      Q => gt2_rx_cdrlocked_reg_n_0,
      R => '0'
    );
\gt3_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(0),
      O => \gt3_rx_cdrlock_counter[0]_i_1_n_0\
    );
\gt3_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\gt3_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\gt3_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\gt3_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(2),
      I4 => \gt3_rx_cdrlock_counter_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\gt3_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt3_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt3_rx_cdrlock_counter_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\gt3_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(3),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt3_rx_cdrlock_counter[8]_i_2_n_0\,
      I3 => \gt3_rx_cdrlock_counter_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\gt3_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(5),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(6),
      I3 => \gt3_rx_cdrlock_counter[8]_i_2_n_0\,
      I4 => \gt3_rx_cdrlock_counter_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\gt3_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(6),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(3),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(5),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(7),
      I4 => \gt3_rx_cdrlock_counter[8]_i_2_n_0\,
      I5 => \gt3_rx_cdrlock_counter_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\gt3_rx_cdrlock_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(2),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(4),
      O => \gt3_rx_cdrlock_counter[8]_i_2_n_0\
    );
\gt3_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(9),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(4),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt3_rx_cdrlock_counter[9]_i_3_n_0\,
      I5 => \gt3_rx_cdrlock_counter_reg__0\(2),
      O => gt3_rx_cdrlock_counter
    );
\gt3_rx_cdrlock_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter[9]_i_3_n_0\,
      I1 => \gt3_rx_cdrlock_counter_reg__0\(2),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I4 => \gt3_rx_cdrlock_counter_reg__0\(4),
      I5 => \gt3_rx_cdrlock_counter_reg__0\(9),
      O => \p_0_in__1\(9)
    );
\gt3_rx_cdrlock_counter[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(7),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(5),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(3),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(6),
      I4 => \gt3_rx_cdrlock_counter_reg__0\(8),
      O => \gt3_rx_cdrlock_counter[9]_i_3_n_0\
    );
\gt3_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \gt3_rx_cdrlock_counter[0]_i_1_n_0\,
      Q => \gt3_rx_cdrlock_counter_reg__0\(0),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(1),
      Q => \gt3_rx_cdrlock_counter_reg__0\(1),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(2),
      Q => \gt3_rx_cdrlock_counter_reg__0\(2),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(3),
      Q => \gt3_rx_cdrlock_counter_reg__0\(3),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(4),
      Q => \gt3_rx_cdrlock_counter_reg__0\(4),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(5),
      Q => \gt3_rx_cdrlock_counter_reg__0\(5),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(6),
      Q => \gt3_rx_cdrlock_counter_reg__0\(6),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(7),
      Q => \gt3_rx_cdrlock_counter_reg__0\(7),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(8),
      Q => \gt3_rx_cdrlock_counter_reg__0\(8),
      R => gt3_gtrxreset_in2_out
    );
\gt3_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK_IN,
      CE => gt3_rx_cdrlock_counter,
      D => \p_0_in__1\(9),
      Q => \gt3_rx_cdrlock_counter_reg__0\(9),
      R => gt3_gtrxreset_in2_out
    );
gt3_rx_cdrlocked_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \gt3_rx_cdrlock_counter_reg__0\(0),
      I1 => \gt3_rx_cdrlock_counter_reg__0\(1),
      I2 => \gt3_rx_cdrlock_counter_reg__0\(2),
      I3 => \gt3_rx_cdrlock_counter_reg__0\(4),
      I4 => \gt3_rx_cdrlock_counter_reg__0\(9),
      O => gt3_rx_cdrlocked_i_2_n_0
    );
gt3_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK_IN,
      CE => '1',
      D => gt_rxresetfsm_i_n_8,
      Q => gt3_rx_cdrlocked_reg_n_0,
      R => '0'
    );
gt_rxresetfsm_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_RX_STARTUP_FSM
     port map (
      CPLL_RESET => CPLL_RESET,
      DONT_RESET_ON_DATA_ERROR_IN => DONT_RESET_ON_DATA_ERROR_IN,
      GT0_DATA_VALID_IN => GT0_DATA_VALID_IN,
      GT0_QPLLLOCK_IN => GT0_QPLLLOCK_IN,
      GT0_QPLLRESET_OUT => GT0_QPLLRESET_OUT,
      GT1_DATA_VALID_IN => GT1_DATA_VALID_IN,
      GT2_DATA_VALID_IN => GT2_DATA_VALID_IN,
      GT3_DATA_VALID_IN => GT3_DATA_VALID_IN,
      GT_RX_FSM_RESET_DONE_OUT => GT_RX_FSM_RESET_DONE_OUT,
      SOFT_RESET_RX_IN => SOFT_RESET_RX_IN,
      SR(0) => gt1_gtrxreset_in12_out,
      SYSCLK_IN => SYSCLK_IN,
      UNCONN_IN => gt2_cpllreset_in,
      UNCONN_IN_0 => gt0_cpllreset_in,
      UNCONN_IN_1 => gt1_cpllreset_in,
      UNCONN_IN_2 => gt3_cpllreset_in,
      UNCONN_IN_3 => gt0_rxuserrdy_in,
      UNCONN_IN_4 => gt1_rxuserrdy_in,
      UNCONN_IN_5 => gt2_rxuserrdy_in,
      UNCONN_IN_6 => gt3_rxuserrdy_in,
      data_in => RXRESETDONE,
      gt0_cpllreset_in => gt0_cpllreset_in19_out,
      gt0_gtrxreset_in => gt0_gtrxreset_in,
      \gt0_rx_cdrlock_counter_reg[0]\ => gt0_rx_cdrlocked_i_2_n_0,
      \gt0_rx_cdrlock_counter_reg[7]\ => \gt0_rx_cdrlock_counter[9]_i_3_n_0\,
      \gt0_rx_cdrlock_counter_reg[9]\(0) => gt0_gtrxreset_in17_out,
      gt0_rx_cdrlocked_reg => gt_rxresetfsm_i_n_9,
      gt0_rx_cdrlocked_reg_0 => gt0_rx_cdrlocked_reg_n_0,
      gt0_rxsysclksel_in(0) => gt0_rxsysclksel_in(0),
      gt0_rxuserrdy_in => gt0_rxuserrdy_in18_out,
      gt0_rxusrclk_in => gt0_rxusrclk_in,
      gt0_txsysclksel_in(0) => gt0_txsysclksel_in(0),
      gt1_cpllreset_in => gt1_cpllreset_in14_out,
      gt1_gtrxreset_in => gt1_gtrxreset_in,
      \gt1_rx_cdrlock_counter_reg[0]\ => gt1_rx_cdrlocked_i_2_n_0,
      \gt1_rx_cdrlock_counter_reg[7]\ => \gt1_rx_cdrlock_counter[9]_i_3_n_0\,
      gt1_rx_cdrlocked_reg => gt_rxresetfsm_i_n_6,
      gt1_rx_cdrlocked_reg_0 => gt1_rx_cdrlocked_reg_n_0,
      gt1_rxuserrdy_in => gt1_rxuserrdy_in13_out,
      gt2_cpllreset_in => gt2_cpllreset_in9_out,
      gt2_gtrxreset_in => gt2_gtrxreset_in,
      \gt2_rx_cdrlock_counter_reg[0]\ => gt2_rx_cdrlocked_i_2_n_0,
      \gt2_rx_cdrlock_counter_reg[7]\ => \gt2_rx_cdrlock_counter[9]_i_3_n_0\,
      \gt2_rx_cdrlock_counter_reg[9]\(0) => gt2_gtrxreset_in7_out,
      gt2_rx_cdrlocked_reg => gt_rxresetfsm_i_n_7,
      gt2_rx_cdrlocked_reg_0 => gt2_rx_cdrlocked_reg_n_0,
      gt2_rxuserrdy_in => gt2_rxuserrdy_in8_out,
      gt3_cpllreset_in => gt3_cpllreset_in4_out,
      gt3_gtrxreset_in => gt3_gtrxreset_in,
      \gt3_rx_cdrlock_counter_reg[0]\ => gt3_rx_cdrlocked_i_2_n_0,
      \gt3_rx_cdrlock_counter_reg[7]\ => \gt3_rx_cdrlock_counter[9]_i_3_n_0\,
      \gt3_rx_cdrlock_counter_reg[9]\(0) => gt3_gtrxreset_in2_out,
      gt3_rx_cdrlocked_reg => gt_rxresetfsm_i_n_8,
      gt3_rx_cdrlocked_reg_0 => gt3_rx_cdrlocked_reg_n_0,
      gt3_rxuserrdy_in => gt3_rxuserrdy_in3_out,
      gt_tx_qpllreset_t => gt_tx_qpllreset_t
    );
gt_txresetfsm_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_TX_STARTUP_FSM
     port map (
      CPLL_RESET => CPLL_RESET,
      GT0_QPLLLOCK_IN => GT0_QPLLLOCK_IN,
      GT_TX_FSM_RESET_DONE_OUT => GT_TX_FSM_RESET_DONE_OUT,
      SOFT_RESET_TX_IN => SOFT_RESET_TX_IN,
      SYSCLK_IN => SYSCLK_IN,
      UNCONN_IN => gt0_txuserrdy_in,
      UNCONN_IN_0 => gt1_txuserrdy_in,
      UNCONN_IN_1 => gt2_txuserrdy_in,
      UNCONN_IN_2 => gt3_txuserrdy_in,
      data_in => TXRESETDONE,
      data_sync_reg4 => gt0_gttxreset_in,
      data_sync_reg4_0 => gt1_gttxreset_in,
      data_sync_reg4_1 => gt2_gttxreset_in,
      data_sync_reg4_2 => gt3_gttxreset_in,
      gt0_gttxreset_in => gt0_gttxreset_in16_out,
      gt0_txsysclksel_in(0) => gt0_txsysclksel_in(0),
      gt0_txuserrdy_in => gt0_txuserrdy_in15_out,
      gt0_txusrclk_in => gt0_txusrclk_in,
      gt1_gttxreset_in => gt1_gttxreset_in11_out,
      gt1_txuserrdy_in => gt1_txuserrdy_in10_out,
      gt2_gttxreset_in => gt2_gttxreset_in6_out,
      gt2_txuserrdy_in => gt2_txuserrdy_in5_out,
      gt3_gttxreset_in => gt3_gttxreset_in1_out,
      gt3_txuserrdy_in => gt3_txuserrdy_in0_out,
      gt_tx_qpllreset_t => gt_tx_qpllreset_t
    );
jesd204_phy_1_gt_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_multi_gt
     port map (
      GT0_QPLLOUTCLK_IN => GT0_QPLLOUTCLK_IN,
      GT0_QPLLOUTREFCLK_IN => GT0_QPLLOUTREFCLK_IN,
      SR(0) => gt0_gtrxreset_in17_out,
      data_in => TXRESETDONE,
      data_sync_reg1 => RXRESETDONE,
      data_sync_reg4(0) => gt1_gtrxreset_in12_out,
      data_sync_reg4_0(0) => gt2_gtrxreset_in7_out,
      data_sync_reg4_1(0) => gt3_gtrxreset_in2_out,
      gt0_cpllfbclklost_out => gt0_cpllfbclklost_out,
      gt0_cplllock_out => gt0_cplllock_out,
      gt0_cplllockdetclk_in => gt0_cplllockdetclk_in,
      gt0_cpllpd_in => gt0_cpllpd_in,
      gt0_cpllreset_in => gt0_cpllreset_in19_out,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_gtnorthrefclk0_in => gt0_gtnorthrefclk0_in,
      gt0_gtnorthrefclk1_in => gt0_gtnorthrefclk1_in,
      gt0_gtrefclk0_in => gt0_gtrefclk0_in,
      gt0_gtrefclk1_in => gt0_gtrefclk1_in,
      gt0_gtsouthrefclk0_in => gt0_gtsouthrefclk0_in,
      gt0_gtsouthrefclk1_in => gt0_gtsouthrefclk1_in,
      gt0_gttxreset_in => gt0_gttxreset_in16_out,
      gt0_gtxrxn_in => gt0_gtxrxn_in,
      gt0_gtxrxp_in => gt0_gtxrxp_in,
      gt0_gtxtxn_out => gt0_gtxtxn_out,
      gt0_gtxtxp_out => gt0_gtxtxp_out,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxchariscomma_out(3 downto 0) => gt0_rxchariscomma_out(3 downto 0),
      gt0_rxcharisk_out(3 downto 0) => gt0_rxcharisk_out(3 downto 0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdata_out(31 downto 0) => gt0_rxdata_out(31 downto 0),
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr_out(3 downto 0) => gt0_rxdisperr_out(3 downto 0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => gt0_rxmcommaalignen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable_out(3 downto 0) => gt0_rxnotintable_out(3 downto 0),
      gt0_rxoutclk_out => gt0_rxoutclk_out,
      gt0_rxoutclkfabric_out => gt0_rxoutclkfabric_out,
      gt0_rxpcommaalignen_in => gt0_rxpcommaalignen_in,
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpd_in(1 downto 0) => gt0_rxpd_in(1 downto 0),
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      gt0_rxstatus_out(2 downto 0) => gt0_rxstatus_out(2 downto 0),
      gt0_rxsysclksel_in(1 downto 0) => gt0_rxsysclksel_in(1 downto 0),
      gt0_rxuserrdy_in => gt0_rxuserrdy_in18_out,
      gt0_rxusrclk2_in => gt0_rxusrclk2_in,
      gt0_rxusrclk_in => gt0_rxusrclk_in,
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txcharisk_in(3 downto 0) => gt0_txcharisk_in(3 downto 0),
      gt0_txdata_in(31 downto 0) => gt0_txdata_in(31 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txinhibit_in => gt0_txinhibit_in,
      gt0_txoutclk_out => gt0_txoutclk_out,
      gt0_txoutclkfabric_out => gt0_txoutclkfabric_out,
      gt0_txoutclkpcs_out => gt0_txoutclkpcs_out,
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpd_in(1 downto 0) => gt0_txpd_in(1 downto 0),
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt0_txresetdone_out => gt0_txresetdone_out,
      gt0_txsysclksel_in(1 downto 0) => gt0_txsysclksel_in(1 downto 0),
      gt0_txuserrdy_in => gt0_txuserrdy_in15_out,
      gt0_txusrclk2_in => gt0_txusrclk2_in,
      gt0_txusrclk_in => gt0_txusrclk_in,
      gt1_cpllfbclklost_out => gt1_cpllfbclklost_out,
      gt1_cplllock_out => gt1_cplllock_out,
      gt1_cplllockdetclk_in => gt1_cplllockdetclk_in,
      gt1_cpllpd_in => gt1_cpllpd_in,
      gt1_cpllreset_in => gt1_cpllreset_in14_out,
      gt1_dmonitorout_out(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      gt1_drpaddr_in(8 downto 0) => gt1_drpaddr_in(8 downto 0),
      gt1_drpclk_in => gt1_drpclk_in,
      gt1_drpdi_in(15 downto 0) => gt1_drpdi_in(15 downto 0),
      gt1_drpdo_out(15 downto 0) => gt1_drpdo_out(15 downto 0),
      gt1_drpen_in => gt1_drpen_in,
      gt1_drprdy_out => gt1_drprdy_out,
      gt1_drpwe_in => gt1_drpwe_in,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_eyescanreset_in => gt1_eyescanreset_in,
      gt1_eyescantrigger_in => gt1_eyescantrigger_in,
      gt1_gtnorthrefclk0_in => gt1_gtnorthrefclk0_in,
      gt1_gtnorthrefclk1_in => gt1_gtnorthrefclk1_in,
      gt1_gtrefclk0_in => gt1_gtrefclk0_in,
      gt1_gtrefclk1_in => gt1_gtrefclk1_in,
      gt1_gtsouthrefclk0_in => gt1_gtsouthrefclk0_in,
      gt1_gtsouthrefclk1_in => gt1_gtsouthrefclk1_in,
      gt1_gttxreset_in => gt1_gttxreset_in11_out,
      gt1_gtxrxn_in => gt1_gtxrxn_in,
      gt1_gtxrxp_in => gt1_gtxrxp_in,
      gt1_gtxtxn_out => gt1_gtxtxn_out,
      gt1_gtxtxp_out => gt1_gtxtxp_out,
      gt1_loopback_in(2 downto 0) => gt1_loopback_in(2 downto 0),
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt1_rxbufstatus_out(2 downto 0) => gt1_rxbufstatus_out(2 downto 0),
      gt1_rxbyteisaligned_out => gt1_rxbyteisaligned_out,
      gt1_rxbyterealign_out => gt1_rxbyterealign_out,
      gt1_rxcdrhold_in => gt1_rxcdrhold_in,
      gt1_rxchariscomma_out(3 downto 0) => gt1_rxchariscomma_out(3 downto 0),
      gt1_rxcharisk_out(3 downto 0) => gt1_rxcharisk_out(3 downto 0),
      gt1_rxcommadet_out => gt1_rxcommadet_out,
      gt1_rxdata_out(31 downto 0) => gt1_rxdata_out(31 downto 0),
      gt1_rxdfelpmreset_in => gt1_rxdfelpmreset_in,
      gt1_rxdisperr_out(3 downto 0) => gt1_rxdisperr_out(3 downto 0),
      gt1_rxlpmen_in => gt1_rxlpmen_in,
      gt1_rxmcommaalignen_in => gt1_rxmcommaalignen_in,
      gt1_rxmonitorout_out(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      gt1_rxnotintable_out(3 downto 0) => gt1_rxnotintable_out(3 downto 0),
      gt1_rxoutclk_out => gt1_rxoutclk_out,
      gt1_rxoutclkfabric_out => gt1_rxoutclkfabric_out,
      gt1_rxpcommaalignen_in => gt1_rxpcommaalignen_in,
      gt1_rxpcsreset_in => gt1_rxpcsreset_in,
      gt1_rxpd_in(1 downto 0) => gt1_rxpd_in(1 downto 0),
      gt1_rxpmareset_in => gt1_rxpmareset_in,
      gt1_rxpolarity_in => gt1_rxpolarity_in,
      gt1_rxprbscntreset_in => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out => gt1_rxprbserr_out,
      gt1_rxprbssel_in(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      gt1_rxresetdone_out => gt1_rxresetdone_out,
      gt1_rxstatus_out(2 downto 0) => gt1_rxstatus_out(2 downto 0),
      gt1_rxsysclksel_in(1 downto 0) => gt1_rxsysclksel_in(1 downto 0),
      gt1_rxuserrdy_in => gt1_rxuserrdy_in13_out,
      gt1_rxusrclk2_in => gt1_rxusrclk2_in,
      gt1_rxusrclk_in => gt1_rxusrclk_in,
      gt1_txbufstatus_out(1 downto 0) => gt1_txbufstatus_out(1 downto 0),
      gt1_txcharisk_in(3 downto 0) => gt1_txcharisk_in(3 downto 0),
      gt1_txdata_in(31 downto 0) => gt1_txdata_in(31 downto 0),
      gt1_txdiffctrl_in(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      gt1_txinhibit_in => gt1_txinhibit_in,
      gt1_txoutclk_out => gt1_txoutclk_out,
      gt1_txoutclkfabric_out => gt1_txoutclkfabric_out,
      gt1_txoutclkpcs_out => gt1_txoutclkpcs_out,
      gt1_txpcsreset_in => gt1_txpcsreset_in,
      gt1_txpd_in(1 downto 0) => gt1_txpd_in(1 downto 0),
      gt1_txpmareset_in => gt1_txpmareset_in,
      gt1_txpolarity_in => gt1_txpolarity_in,
      gt1_txpostcursor_in(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      gt1_txprbsforceerr_in => gt1_txprbsforceerr_in,
      gt1_txprbssel_in(2 downto 0) => gt1_txprbssel_in(2 downto 0),
      gt1_txprecursor_in(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      gt1_txresetdone_out => gt1_txresetdone_out,
      gt1_txsysclksel_in(1 downto 0) => gt1_txsysclksel_in(1 downto 0),
      gt1_txuserrdy_in => gt1_txuserrdy_in10_out,
      gt1_txusrclk2_in => gt1_txusrclk2_in,
      gt1_txusrclk_in => gt1_txusrclk_in,
      gt2_cpllfbclklost_out => gt2_cpllfbclklost_out,
      gt2_cplllock_out => gt2_cplllock_out,
      gt2_cplllockdetclk_in => gt2_cplllockdetclk_in,
      gt2_cpllpd_in => gt2_cpllpd_in,
      gt2_cpllreset_in => gt2_cpllreset_in9_out,
      gt2_dmonitorout_out(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      gt2_drpaddr_in(8 downto 0) => gt2_drpaddr_in(8 downto 0),
      gt2_drpclk_in => gt2_drpclk_in,
      gt2_drpdi_in(15 downto 0) => gt2_drpdi_in(15 downto 0),
      gt2_drpdo_out(15 downto 0) => gt2_drpdo_out(15 downto 0),
      gt2_drpen_in => gt2_drpen_in,
      gt2_drprdy_out => gt2_drprdy_out,
      gt2_drpwe_in => gt2_drpwe_in,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_eyescanreset_in => gt2_eyescanreset_in,
      gt2_eyescantrigger_in => gt2_eyescantrigger_in,
      gt2_gtnorthrefclk0_in => gt2_gtnorthrefclk0_in,
      gt2_gtnorthrefclk1_in => gt2_gtnorthrefclk1_in,
      gt2_gtrefclk0_in => gt2_gtrefclk0_in,
      gt2_gtrefclk1_in => gt2_gtrefclk1_in,
      gt2_gtsouthrefclk0_in => gt2_gtsouthrefclk0_in,
      gt2_gtsouthrefclk1_in => gt2_gtsouthrefclk1_in,
      gt2_gttxreset_in => gt2_gttxreset_in6_out,
      gt2_gtxrxn_in => gt2_gtxrxn_in,
      gt2_gtxrxp_in => gt2_gtxrxp_in,
      gt2_gtxtxn_out => gt2_gtxtxn_out,
      gt2_gtxtxp_out => gt2_gtxtxp_out,
      gt2_loopback_in(2 downto 0) => gt2_loopback_in(2 downto 0),
      gt2_rxbufreset_in => gt2_rxbufreset_in,
      gt2_rxbufstatus_out(2 downto 0) => gt2_rxbufstatus_out(2 downto 0),
      gt2_rxbyteisaligned_out => gt2_rxbyteisaligned_out,
      gt2_rxbyterealign_out => gt2_rxbyterealign_out,
      gt2_rxcdrhold_in => gt2_rxcdrhold_in,
      gt2_rxchariscomma_out(3 downto 0) => gt2_rxchariscomma_out(3 downto 0),
      gt2_rxcharisk_out(3 downto 0) => gt2_rxcharisk_out(3 downto 0),
      gt2_rxcommadet_out => gt2_rxcommadet_out,
      gt2_rxdata_out(31 downto 0) => gt2_rxdata_out(31 downto 0),
      gt2_rxdfelpmreset_in => gt2_rxdfelpmreset_in,
      gt2_rxdisperr_out(3 downto 0) => gt2_rxdisperr_out(3 downto 0),
      gt2_rxlpmen_in => gt2_rxlpmen_in,
      gt2_rxmcommaalignen_in => gt2_rxmcommaalignen_in,
      gt2_rxmonitorout_out(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      gt2_rxnotintable_out(3 downto 0) => gt2_rxnotintable_out(3 downto 0),
      gt2_rxoutclk_out => gt2_rxoutclk_out,
      gt2_rxoutclkfabric_out => gt2_rxoutclkfabric_out,
      gt2_rxpcommaalignen_in => gt2_rxpcommaalignen_in,
      gt2_rxpcsreset_in => gt2_rxpcsreset_in,
      gt2_rxpd_in(1 downto 0) => gt2_rxpd_in(1 downto 0),
      gt2_rxpmareset_in => gt2_rxpmareset_in,
      gt2_rxpolarity_in => gt2_rxpolarity_in,
      gt2_rxprbscntreset_in => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out => gt2_rxprbserr_out,
      gt2_rxprbssel_in(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      gt2_rxresetdone_out => gt2_rxresetdone_out,
      gt2_rxstatus_out(2 downto 0) => gt2_rxstatus_out(2 downto 0),
      gt2_rxsysclksel_in(1 downto 0) => gt2_rxsysclksel_in(1 downto 0),
      gt2_rxuserrdy_in => gt2_rxuserrdy_in8_out,
      gt2_rxusrclk2_in => gt2_rxusrclk2_in,
      gt2_rxusrclk_in => gt2_rxusrclk_in,
      gt2_txbufstatus_out(1 downto 0) => gt2_txbufstatus_out(1 downto 0),
      gt2_txcharisk_in(3 downto 0) => gt2_txcharisk_in(3 downto 0),
      gt2_txdata_in(31 downto 0) => gt2_txdata_in(31 downto 0),
      gt2_txdiffctrl_in(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      gt2_txinhibit_in => gt2_txinhibit_in,
      gt2_txoutclk_out => gt2_txoutclk_out,
      gt2_txoutclkfabric_out => gt2_txoutclkfabric_out,
      gt2_txoutclkpcs_out => gt2_txoutclkpcs_out,
      gt2_txpcsreset_in => gt2_txpcsreset_in,
      gt2_txpd_in(1 downto 0) => gt2_txpd_in(1 downto 0),
      gt2_txpmareset_in => gt2_txpmareset_in,
      gt2_txpolarity_in => gt2_txpolarity_in,
      gt2_txpostcursor_in(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      gt2_txprbsforceerr_in => gt2_txprbsforceerr_in,
      gt2_txprbssel_in(2 downto 0) => gt2_txprbssel_in(2 downto 0),
      gt2_txprecursor_in(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      gt2_txresetdone_out => gt2_txresetdone_out,
      gt2_txsysclksel_in(1 downto 0) => gt2_txsysclksel_in(1 downto 0),
      gt2_txuserrdy_in => gt2_txuserrdy_in5_out,
      gt2_txusrclk2_in => gt2_txusrclk2_in,
      gt2_txusrclk_in => gt2_txusrclk_in,
      gt3_cpllfbclklost_out => gt3_cpllfbclklost_out,
      gt3_cplllock_out => gt3_cplllock_out,
      gt3_cplllockdetclk_in => gt3_cplllockdetclk_in,
      gt3_cpllpd_in => gt3_cpllpd_in,
      gt3_cpllreset_in => gt3_cpllreset_in4_out,
      gt3_dmonitorout_out(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      gt3_drpaddr_in(8 downto 0) => gt3_drpaddr_in(8 downto 0),
      gt3_drpclk_in => gt3_drpclk_in,
      gt3_drpdi_in(15 downto 0) => gt3_drpdi_in(15 downto 0),
      gt3_drpdo_out(15 downto 0) => gt3_drpdo_out(15 downto 0),
      gt3_drpen_in => gt3_drpen_in,
      gt3_drprdy_out => gt3_drprdy_out,
      gt3_drpwe_in => gt3_drpwe_in,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_eyescanreset_in => gt3_eyescanreset_in,
      gt3_eyescantrigger_in => gt3_eyescantrigger_in,
      gt3_gtnorthrefclk0_in => gt3_gtnorthrefclk0_in,
      gt3_gtnorthrefclk1_in => gt3_gtnorthrefclk1_in,
      gt3_gtrefclk0_in => gt3_gtrefclk0_in,
      gt3_gtrefclk1_in => gt3_gtrefclk1_in,
      gt3_gtsouthrefclk0_in => gt3_gtsouthrefclk0_in,
      gt3_gtsouthrefclk1_in => gt3_gtsouthrefclk1_in,
      gt3_gttxreset_in => gt3_gttxreset_in1_out,
      gt3_gtxrxn_in => gt3_gtxrxn_in,
      gt3_gtxrxp_in => gt3_gtxrxp_in,
      gt3_gtxtxn_out => gt3_gtxtxn_out,
      gt3_gtxtxp_out => gt3_gtxtxp_out,
      gt3_loopback_in(2 downto 0) => gt3_loopback_in(2 downto 0),
      gt3_rxbufreset_in => gt3_rxbufreset_in,
      gt3_rxbufstatus_out(2 downto 0) => gt3_rxbufstatus_out(2 downto 0),
      gt3_rxbyteisaligned_out => gt3_rxbyteisaligned_out,
      gt3_rxbyterealign_out => gt3_rxbyterealign_out,
      gt3_rxcdrhold_in => gt3_rxcdrhold_in,
      gt3_rxchariscomma_out(3 downto 0) => gt3_rxchariscomma_out(3 downto 0),
      gt3_rxcharisk_out(3 downto 0) => gt3_rxcharisk_out(3 downto 0),
      gt3_rxcommadet_out => gt3_rxcommadet_out,
      gt3_rxdata_out(31 downto 0) => gt3_rxdata_out(31 downto 0),
      gt3_rxdfelpmreset_in => gt3_rxdfelpmreset_in,
      gt3_rxdisperr_out(3 downto 0) => gt3_rxdisperr_out(3 downto 0),
      gt3_rxlpmen_in => gt3_rxlpmen_in,
      gt3_rxmcommaalignen_in => gt3_rxmcommaalignen_in,
      gt3_rxmonitorout_out(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      gt3_rxnotintable_out(3 downto 0) => gt3_rxnotintable_out(3 downto 0),
      gt3_rxoutclk_out => gt3_rxoutclk_out,
      gt3_rxoutclkfabric_out => gt3_rxoutclkfabric_out,
      gt3_rxpcommaalignen_in => gt3_rxpcommaalignen_in,
      gt3_rxpcsreset_in => gt3_rxpcsreset_in,
      gt3_rxpd_in(1 downto 0) => gt3_rxpd_in(1 downto 0),
      gt3_rxpmareset_in => gt3_rxpmareset_in,
      gt3_rxpolarity_in => gt3_rxpolarity_in,
      gt3_rxprbscntreset_in => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out => gt3_rxprbserr_out,
      gt3_rxprbssel_in(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      gt3_rxresetdone_out => gt3_rxresetdone_out,
      gt3_rxstatus_out(2 downto 0) => gt3_rxstatus_out(2 downto 0),
      gt3_rxsysclksel_in(1 downto 0) => gt3_rxsysclksel_in(1 downto 0),
      gt3_rxuserrdy_in => gt3_rxuserrdy_in3_out,
      gt3_rxusrclk2_in => gt3_rxusrclk2_in,
      gt3_rxusrclk_in => gt3_rxusrclk_in,
      gt3_txbufstatus_out(1 downto 0) => gt3_txbufstatus_out(1 downto 0),
      gt3_txcharisk_in(3 downto 0) => gt3_txcharisk_in(3 downto 0),
      gt3_txdata_in(31 downto 0) => gt3_txdata_in(31 downto 0),
      gt3_txdiffctrl_in(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      gt3_txinhibit_in => gt3_txinhibit_in,
      gt3_txoutclk_out => gt3_txoutclk_out,
      gt3_txoutclkfabric_out => gt3_txoutclkfabric_out,
      gt3_txoutclkpcs_out => gt3_txoutclkpcs_out,
      gt3_txpcsreset_in => gt3_txpcsreset_in,
      gt3_txpd_in(1 downto 0) => gt3_txpd_in(1 downto 0),
      gt3_txpmareset_in => gt3_txpmareset_in,
      gt3_txpolarity_in => gt3_txpolarity_in,
      gt3_txpostcursor_in(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      gt3_txprbsforceerr_in => gt3_txprbsforceerr_in,
      gt3_txprbssel_in(2 downto 0) => gt3_txprbssel_in(2 downto 0),
      gt3_txprecursor_in(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      gt3_txresetdone_out => gt3_txresetdone_out,
      gt3_txsysclksel_in(1 downto 0) => gt3_txsysclksel_in(1 downto 0),
      gt3_txuserrdy_in => gt3_txuserrdy_in0_out,
      gt3_txusrclk2_in => gt3_txusrclk2_in,
      gt3_txusrclk_in => gt3_txusrclk_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_gt is
  port (
    SYSCLK_IN : in STD_LOGIC;
    SOFT_RESET_TX_IN : in STD_LOGIC;
    SOFT_RESET_RX_IN : in STD_LOGIC;
    DONT_RESET_ON_DATA_ERROR_IN : in STD_LOGIC;
    GT0_DATA_VALID_IN : in STD_LOGIC;
    GT1_DATA_VALID_IN : in STD_LOGIC;
    GT2_DATA_VALID_IN : in STD_LOGIC;
    GT3_DATA_VALID_IN : in STD_LOGIC;
    GT_TX_FSM_RESET_DONE_OUT : out STD_LOGIC;
    GT_RX_FSM_RESET_DONE_OUT : out STD_LOGIC;
    gt0_cpllfbclklost_out : out STD_LOGIC;
    gt0_cplllock_out : out STD_LOGIC;
    gt0_cplllockdetclk_in : in STD_LOGIC;
    gt0_cpllpd_in : in STD_LOGIC;
    gt0_cpllreset_in : in STD_LOGIC;
    gt0_gtnorthrefclk0_in : in STD_LOGIC;
    gt0_gtnorthrefclk1_in : in STD_LOGIC;
    gt0_gtrefclk0_in : in STD_LOGIC;
    gt0_gtrefclk1_in : in STD_LOGIC;
    gt0_gtsouthrefclk0_in : in STD_LOGIC;
    gt0_gtsouthrefclk1_in : in STD_LOGIC;
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen_in : in STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_rxuserrdy_in : in STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxusrclk_in : in STD_LOGIC;
    gt0_rxusrclk2_in : in STD_LOGIC;
    gt0_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_gtxrxp_in : in STD_LOGIC;
    gt0_gtxrxn_in : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcommaalignen_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxoutclk_out : out STD_LOGIC;
    gt0_rxoutclkfabric_out : out STD_LOGIC;
    gt0_gtrxreset_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_gttxreset_in : in STD_LOGIC;
    gt0_txuserrdy_in : in STD_LOGIC;
    gt0_txusrclk_in : in STD_LOGIC;
    gt0_txusrclk2_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_gtxtxn_out : out STD_LOGIC;
    gt0_gtxtxp_out : out STD_LOGIC;
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txoutclkfabric_out : out STD_LOGIC;
    gt0_txoutclkpcs_out : out STD_LOGIC;
    gt0_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_cpllfbclklost_out : out STD_LOGIC;
    gt1_cplllock_out : out STD_LOGIC;
    gt1_cplllockdetclk_in : in STD_LOGIC;
    gt1_cpllpd_in : in STD_LOGIC;
    gt1_cpllreset_in : in STD_LOGIC;
    gt1_gtnorthrefclk0_in : in STD_LOGIC;
    gt1_gtnorthrefclk1_in : in STD_LOGIC;
    gt1_gtrefclk0_in : in STD_LOGIC;
    gt1_gtrefclk1_in : in STD_LOGIC;
    gt1_gtsouthrefclk0_in : in STD_LOGIC;
    gt1_gtsouthrefclk1_in : in STD_LOGIC;
    gt1_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpclk_in : in STD_LOGIC;
    gt1_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpen_in : in STD_LOGIC;
    gt1_drprdy_out : out STD_LOGIC;
    gt1_drpwe_in : in STD_LOGIC;
    gt1_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_rxuserrdy_in : in STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxusrclk_in : in STD_LOGIC;
    gt1_rxusrclk2_in : in STD_LOGIC;
    gt1_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_gtxrxp_in : in STD_LOGIC;
    gt1_gtxrxn_in : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxmcommaalignen_in : in STD_LOGIC;
    gt1_rxpcommaalignen_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxoutclk_out : out STD_LOGIC;
    gt1_rxoutclkfabric_out : out STD_LOGIC;
    gt1_gtrxreset_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_gttxreset_in : in STD_LOGIC;
    gt1_txuserrdy_in : in STD_LOGIC;
    gt1_txusrclk_in : in STD_LOGIC;
    gt1_txusrclk2_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_gtxtxn_out : out STD_LOGIC;
    gt1_gtxtxp_out : out STD_LOGIC;
    gt1_txoutclk_out : out STD_LOGIC;
    gt1_txoutclkfabric_out : out STD_LOGIC;
    gt1_txoutclkpcs_out : out STD_LOGIC;
    gt1_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_cpllfbclklost_out : out STD_LOGIC;
    gt2_cplllock_out : out STD_LOGIC;
    gt2_cplllockdetclk_in : in STD_LOGIC;
    gt2_cpllpd_in : in STD_LOGIC;
    gt2_cpllreset_in : in STD_LOGIC;
    gt2_gtnorthrefclk0_in : in STD_LOGIC;
    gt2_gtnorthrefclk1_in : in STD_LOGIC;
    gt2_gtrefclk0_in : in STD_LOGIC;
    gt2_gtrefclk1_in : in STD_LOGIC;
    gt2_gtsouthrefclk0_in : in STD_LOGIC;
    gt2_gtsouthrefclk1_in : in STD_LOGIC;
    gt2_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_drpclk_in : in STD_LOGIC;
    gt2_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpen_in : in STD_LOGIC;
    gt2_drprdy_out : out STD_LOGIC;
    gt2_drpwe_in : in STD_LOGIC;
    gt2_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_rxuserrdy_in : in STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxusrclk_in : in STD_LOGIC;
    gt2_rxusrclk2_in : in STD_LOGIC;
    gt2_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_gtxrxp_in : in STD_LOGIC;
    gt2_gtxrxn_in : in STD_LOGIC;
    gt2_rxbufreset_in : in STD_LOGIC;
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxbyteisaligned_out : out STD_LOGIC;
    gt2_rxbyterealign_out : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxmcommaalignen_in : in STD_LOGIC;
    gt2_rxpcommaalignen_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxoutclk_out : out STD_LOGIC;
    gt2_rxoutclkfabric_out : out STD_LOGIC;
    gt2_gtrxreset_in : in STD_LOGIC;
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_gttxreset_in : in STD_LOGIC;
    gt2_txuserrdy_in : in STD_LOGIC;
    gt2_txusrclk_in : in STD_LOGIC;
    gt2_txusrclk2_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_gtxtxn_out : out STD_LOGIC;
    gt2_gtxtxp_out : out STD_LOGIC;
    gt2_txoutclk_out : out STD_LOGIC;
    gt2_txoutclkfabric_out : out STD_LOGIC;
    gt2_txoutclkpcs_out : out STD_LOGIC;
    gt2_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txresetdone_out : out STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_cpllfbclklost_out : out STD_LOGIC;
    gt3_cplllock_out : out STD_LOGIC;
    gt3_cplllockdetclk_in : in STD_LOGIC;
    gt3_cpllpd_in : in STD_LOGIC;
    gt3_cpllreset_in : in STD_LOGIC;
    gt3_gtnorthrefclk0_in : in STD_LOGIC;
    gt3_gtnorthrefclk1_in : in STD_LOGIC;
    gt3_gtrefclk0_in : in STD_LOGIC;
    gt3_gtrefclk1_in : in STD_LOGIC;
    gt3_gtsouthrefclk0_in : in STD_LOGIC;
    gt3_gtsouthrefclk1_in : in STD_LOGIC;
    gt3_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_drpclk_in : in STD_LOGIC;
    gt3_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpen_in : in STD_LOGIC;
    gt3_drprdy_out : out STD_LOGIC;
    gt3_drpwe_in : in STD_LOGIC;
    gt3_rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_rxuserrdy_in : in STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxusrclk_in : in STD_LOGIC;
    gt3_rxusrclk2_in : in STD_LOGIC;
    gt3_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_gtxrxp_in : in STD_LOGIC;
    gt3_gtxrxn_in : in STD_LOGIC;
    gt3_rxbufreset_in : in STD_LOGIC;
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxbyteisaligned_out : out STD_LOGIC;
    gt3_rxbyterealign_out : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxmcommaalignen_in : in STD_LOGIC;
    gt3_rxpcommaalignen_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxoutclk_out : out STD_LOGIC;
    gt3_rxoutclkfabric_out : out STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_gttxreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    gt3_txusrclk_in : in STD_LOGIC;
    gt3_txusrclk2_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_gtxtxn_out : out STD_LOGIC;
    gt3_gtxtxp_out : out STD_LOGIC;
    gt3_txoutclk_out : out STD_LOGIC;
    gt3_txoutclkfabric_out : out STD_LOGIC;
    gt3_txoutclkpcs_out : out STD_LOGIC;
    gt3_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txresetdone_out : out STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    GT0_QPLLLOCK_IN : in STD_LOGIC;
    GT0_QPLLREFCLKLOST_IN : in STD_LOGIC;
    GT0_QPLLRESET_OUT : out STD_LOGIC;
    GT0_QPLLOUTCLK_IN : in STD_LOGIC;
    GT0_QPLLOUTREFCLK_IN : in STD_LOGIC
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of jesd204_phy_1_jesd204_phy_1_gt : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_gt : entity is "jesd204_phy_1_gt";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of jesd204_phy_1_jesd204_phy_1_gt : entity is "jesd204_phy_1_gt,gtwizard_v3_6_3,{protocol_file=JESD204}";
end jesd204_phy_1_jesd204_phy_1_gt;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_gt is
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of U0 : label is 0;
  attribute EXAMPLE_SIM_GTRESET_SPEEDUP : string;
  attribute EXAMPLE_SIM_GTRESET_SPEEDUP of U0 : label is "TRUE";
  attribute EXAMPLE_USE_CHIPSCOPE : integer;
  attribute EXAMPLE_USE_CHIPSCOPE of U0 : label is 1;
  attribute STABLE_CLOCK_PERIOD : integer;
  attribute STABLE_CLOCK_PERIOD of U0 : label is 10;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.jesd204_phy_1_jesd204_phy_1_gt_init
     port map (
      DONT_RESET_ON_DATA_ERROR_IN => DONT_RESET_ON_DATA_ERROR_IN,
      GT0_DATA_VALID_IN => GT0_DATA_VALID_IN,
      GT0_QPLLLOCK_IN => GT0_QPLLLOCK_IN,
      GT0_QPLLOUTCLK_IN => GT0_QPLLOUTCLK_IN,
      GT0_QPLLOUTREFCLK_IN => GT0_QPLLOUTREFCLK_IN,
      GT0_QPLLREFCLKLOST_IN => GT0_QPLLREFCLKLOST_IN,
      GT0_QPLLRESET_OUT => GT0_QPLLRESET_OUT,
      GT1_DATA_VALID_IN => GT1_DATA_VALID_IN,
      GT2_DATA_VALID_IN => GT2_DATA_VALID_IN,
      GT3_DATA_VALID_IN => GT3_DATA_VALID_IN,
      GT_RX_FSM_RESET_DONE_OUT => GT_RX_FSM_RESET_DONE_OUT,
      GT_TX_FSM_RESET_DONE_OUT => GT_TX_FSM_RESET_DONE_OUT,
      SOFT_RESET_RX_IN => SOFT_RESET_RX_IN,
      SOFT_RESET_TX_IN => SOFT_RESET_TX_IN,
      SYSCLK_IN => SYSCLK_IN,
      gt0_cpllfbclklost_out => gt0_cpllfbclklost_out,
      gt0_cplllock_out => gt0_cplllock_out,
      gt0_cplllockdetclk_in => gt0_cplllockdetclk_in,
      gt0_cpllpd_in => gt0_cpllpd_in,
      gt0_cpllreset_in => gt0_cpllreset_in,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_gtnorthrefclk0_in => gt0_gtnorthrefclk0_in,
      gt0_gtnorthrefclk1_in => gt0_gtnorthrefclk1_in,
      gt0_gtrefclk0_in => gt0_gtrefclk0_in,
      gt0_gtrefclk1_in => gt0_gtrefclk1_in,
      gt0_gtrxreset_in => gt0_gtrxreset_in,
      gt0_gtsouthrefclk0_in => gt0_gtsouthrefclk0_in,
      gt0_gtsouthrefclk1_in => gt0_gtsouthrefclk1_in,
      gt0_gttxreset_in => gt0_gttxreset_in,
      gt0_gtxrxn_in => gt0_gtxrxn_in,
      gt0_gtxrxp_in => gt0_gtxrxp_in,
      gt0_gtxtxn_out => gt0_gtxtxn_out,
      gt0_gtxtxp_out => gt0_gtxtxp_out,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxchariscomma_out(3 downto 0) => gt0_rxchariscomma_out(3 downto 0),
      gt0_rxcharisk_out(3 downto 0) => gt0_rxcharisk_out(3 downto 0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdata_out(31 downto 0) => gt0_rxdata_out(31 downto 0),
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr_out(3 downto 0) => gt0_rxdisperr_out(3 downto 0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => gt0_rxmcommaalignen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable_out(3 downto 0) => gt0_rxnotintable_out(3 downto 0),
      gt0_rxoutclk_out => gt0_rxoutclk_out,
      gt0_rxoutclkfabric_out => gt0_rxoutclkfabric_out,
      gt0_rxpcommaalignen_in => gt0_rxpcommaalignen_in,
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpd_in(1 downto 0) => gt0_rxpd_in(1 downto 0),
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      gt0_rxstatus_out(2 downto 0) => gt0_rxstatus_out(2 downto 0),
      gt0_rxsysclksel_in(1 downto 0) => gt0_rxsysclksel_in(1 downto 0),
      gt0_rxuserrdy_in => gt0_rxuserrdy_in,
      gt0_rxusrclk2_in => gt0_rxusrclk2_in,
      gt0_rxusrclk_in => gt0_rxusrclk_in,
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txcharisk_in(3 downto 0) => gt0_txcharisk_in(3 downto 0),
      gt0_txdata_in(31 downto 0) => gt0_txdata_in(31 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txinhibit_in => gt0_txinhibit_in,
      gt0_txoutclk_out => gt0_txoutclk_out,
      gt0_txoutclkfabric_out => gt0_txoutclkfabric_out,
      gt0_txoutclkpcs_out => gt0_txoutclkpcs_out,
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpd_in(1 downto 0) => gt0_txpd_in(1 downto 0),
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt0_txresetdone_out => gt0_txresetdone_out,
      gt0_txsysclksel_in(1 downto 0) => gt0_txsysclksel_in(1 downto 0),
      gt0_txuserrdy_in => gt0_txuserrdy_in,
      gt0_txusrclk2_in => gt0_txusrclk2_in,
      gt0_txusrclk_in => gt0_txusrclk_in,
      gt1_cpllfbclklost_out => gt1_cpllfbclklost_out,
      gt1_cplllock_out => gt1_cplllock_out,
      gt1_cplllockdetclk_in => gt1_cplllockdetclk_in,
      gt1_cpllpd_in => gt1_cpllpd_in,
      gt1_cpllreset_in => gt1_cpllreset_in,
      gt1_dmonitorout_out(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      gt1_drpaddr_in(8 downto 0) => gt1_drpaddr_in(8 downto 0),
      gt1_drpclk_in => gt1_drpclk_in,
      gt1_drpdi_in(15 downto 0) => gt1_drpdi_in(15 downto 0),
      gt1_drpdo_out(15 downto 0) => gt1_drpdo_out(15 downto 0),
      gt1_drpen_in => gt1_drpen_in,
      gt1_drprdy_out => gt1_drprdy_out,
      gt1_drpwe_in => gt1_drpwe_in,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_eyescanreset_in => gt1_eyescanreset_in,
      gt1_eyescantrigger_in => gt1_eyescantrigger_in,
      gt1_gtnorthrefclk0_in => gt1_gtnorthrefclk0_in,
      gt1_gtnorthrefclk1_in => gt1_gtnorthrefclk1_in,
      gt1_gtrefclk0_in => gt1_gtrefclk0_in,
      gt1_gtrefclk1_in => gt1_gtrefclk1_in,
      gt1_gtrxreset_in => gt1_gtrxreset_in,
      gt1_gtsouthrefclk0_in => gt1_gtsouthrefclk0_in,
      gt1_gtsouthrefclk1_in => gt1_gtsouthrefclk1_in,
      gt1_gttxreset_in => gt1_gttxreset_in,
      gt1_gtxrxn_in => gt1_gtxrxn_in,
      gt1_gtxrxp_in => gt1_gtxrxp_in,
      gt1_gtxtxn_out => gt1_gtxtxn_out,
      gt1_gtxtxp_out => gt1_gtxtxp_out,
      gt1_loopback_in(2 downto 0) => gt1_loopback_in(2 downto 0),
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt1_rxbufstatus_out(2 downto 0) => gt1_rxbufstatus_out(2 downto 0),
      gt1_rxbyteisaligned_out => gt1_rxbyteisaligned_out,
      gt1_rxbyterealign_out => gt1_rxbyterealign_out,
      gt1_rxcdrhold_in => gt1_rxcdrhold_in,
      gt1_rxchariscomma_out(3 downto 0) => gt1_rxchariscomma_out(3 downto 0),
      gt1_rxcharisk_out(3 downto 0) => gt1_rxcharisk_out(3 downto 0),
      gt1_rxcommadet_out => gt1_rxcommadet_out,
      gt1_rxdata_out(31 downto 0) => gt1_rxdata_out(31 downto 0),
      gt1_rxdfelpmreset_in => gt1_rxdfelpmreset_in,
      gt1_rxdisperr_out(3 downto 0) => gt1_rxdisperr_out(3 downto 0),
      gt1_rxlpmen_in => gt1_rxlpmen_in,
      gt1_rxmcommaalignen_in => gt1_rxmcommaalignen_in,
      gt1_rxmonitorout_out(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      gt1_rxnotintable_out(3 downto 0) => gt1_rxnotintable_out(3 downto 0),
      gt1_rxoutclk_out => gt1_rxoutclk_out,
      gt1_rxoutclkfabric_out => gt1_rxoutclkfabric_out,
      gt1_rxpcommaalignen_in => gt1_rxpcommaalignen_in,
      gt1_rxpcsreset_in => gt1_rxpcsreset_in,
      gt1_rxpd_in(1 downto 0) => gt1_rxpd_in(1 downto 0),
      gt1_rxpmareset_in => gt1_rxpmareset_in,
      gt1_rxpolarity_in => gt1_rxpolarity_in,
      gt1_rxprbscntreset_in => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out => gt1_rxprbserr_out,
      gt1_rxprbssel_in(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      gt1_rxresetdone_out => gt1_rxresetdone_out,
      gt1_rxstatus_out(2 downto 0) => gt1_rxstatus_out(2 downto 0),
      gt1_rxsysclksel_in(1 downto 0) => gt1_rxsysclksel_in(1 downto 0),
      gt1_rxuserrdy_in => gt1_rxuserrdy_in,
      gt1_rxusrclk2_in => gt1_rxusrclk2_in,
      gt1_rxusrclk_in => gt1_rxusrclk_in,
      gt1_txbufstatus_out(1 downto 0) => gt1_txbufstatus_out(1 downto 0),
      gt1_txcharisk_in(3 downto 0) => gt1_txcharisk_in(3 downto 0),
      gt1_txdata_in(31 downto 0) => gt1_txdata_in(31 downto 0),
      gt1_txdiffctrl_in(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      gt1_txinhibit_in => gt1_txinhibit_in,
      gt1_txoutclk_out => gt1_txoutclk_out,
      gt1_txoutclkfabric_out => gt1_txoutclkfabric_out,
      gt1_txoutclkpcs_out => gt1_txoutclkpcs_out,
      gt1_txpcsreset_in => gt1_txpcsreset_in,
      gt1_txpd_in(1 downto 0) => gt1_txpd_in(1 downto 0),
      gt1_txpmareset_in => gt1_txpmareset_in,
      gt1_txpolarity_in => gt1_txpolarity_in,
      gt1_txpostcursor_in(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      gt1_txprbsforceerr_in => gt1_txprbsforceerr_in,
      gt1_txprbssel_in(2 downto 0) => gt1_txprbssel_in(2 downto 0),
      gt1_txprecursor_in(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      gt1_txresetdone_out => gt1_txresetdone_out,
      gt1_txsysclksel_in(1 downto 0) => gt1_txsysclksel_in(1 downto 0),
      gt1_txuserrdy_in => gt1_txuserrdy_in,
      gt1_txusrclk2_in => gt1_txusrclk2_in,
      gt1_txusrclk_in => gt1_txusrclk_in,
      gt2_cpllfbclklost_out => gt2_cpllfbclklost_out,
      gt2_cplllock_out => gt2_cplllock_out,
      gt2_cplllockdetclk_in => gt2_cplllockdetclk_in,
      gt2_cpllpd_in => gt2_cpllpd_in,
      gt2_cpllreset_in => gt2_cpllreset_in,
      gt2_dmonitorout_out(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      gt2_drpaddr_in(8 downto 0) => gt2_drpaddr_in(8 downto 0),
      gt2_drpclk_in => gt2_drpclk_in,
      gt2_drpdi_in(15 downto 0) => gt2_drpdi_in(15 downto 0),
      gt2_drpdo_out(15 downto 0) => gt2_drpdo_out(15 downto 0),
      gt2_drpen_in => gt2_drpen_in,
      gt2_drprdy_out => gt2_drprdy_out,
      gt2_drpwe_in => gt2_drpwe_in,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_eyescanreset_in => gt2_eyescanreset_in,
      gt2_eyescantrigger_in => gt2_eyescantrigger_in,
      gt2_gtnorthrefclk0_in => gt2_gtnorthrefclk0_in,
      gt2_gtnorthrefclk1_in => gt2_gtnorthrefclk1_in,
      gt2_gtrefclk0_in => gt2_gtrefclk0_in,
      gt2_gtrefclk1_in => gt2_gtrefclk1_in,
      gt2_gtrxreset_in => gt2_gtrxreset_in,
      gt2_gtsouthrefclk0_in => gt2_gtsouthrefclk0_in,
      gt2_gtsouthrefclk1_in => gt2_gtsouthrefclk1_in,
      gt2_gttxreset_in => gt2_gttxreset_in,
      gt2_gtxrxn_in => gt2_gtxrxn_in,
      gt2_gtxrxp_in => gt2_gtxrxp_in,
      gt2_gtxtxn_out => gt2_gtxtxn_out,
      gt2_gtxtxp_out => gt2_gtxtxp_out,
      gt2_loopback_in(2 downto 0) => gt2_loopback_in(2 downto 0),
      gt2_rxbufreset_in => gt2_rxbufreset_in,
      gt2_rxbufstatus_out(2 downto 0) => gt2_rxbufstatus_out(2 downto 0),
      gt2_rxbyteisaligned_out => gt2_rxbyteisaligned_out,
      gt2_rxbyterealign_out => gt2_rxbyterealign_out,
      gt2_rxcdrhold_in => gt2_rxcdrhold_in,
      gt2_rxchariscomma_out(3 downto 0) => gt2_rxchariscomma_out(3 downto 0),
      gt2_rxcharisk_out(3 downto 0) => gt2_rxcharisk_out(3 downto 0),
      gt2_rxcommadet_out => gt2_rxcommadet_out,
      gt2_rxdata_out(31 downto 0) => gt2_rxdata_out(31 downto 0),
      gt2_rxdfelpmreset_in => gt2_rxdfelpmreset_in,
      gt2_rxdisperr_out(3 downto 0) => gt2_rxdisperr_out(3 downto 0),
      gt2_rxlpmen_in => gt2_rxlpmen_in,
      gt2_rxmcommaalignen_in => gt2_rxmcommaalignen_in,
      gt2_rxmonitorout_out(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      gt2_rxnotintable_out(3 downto 0) => gt2_rxnotintable_out(3 downto 0),
      gt2_rxoutclk_out => gt2_rxoutclk_out,
      gt2_rxoutclkfabric_out => gt2_rxoutclkfabric_out,
      gt2_rxpcommaalignen_in => gt2_rxpcommaalignen_in,
      gt2_rxpcsreset_in => gt2_rxpcsreset_in,
      gt2_rxpd_in(1 downto 0) => gt2_rxpd_in(1 downto 0),
      gt2_rxpmareset_in => gt2_rxpmareset_in,
      gt2_rxpolarity_in => gt2_rxpolarity_in,
      gt2_rxprbscntreset_in => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out => gt2_rxprbserr_out,
      gt2_rxprbssel_in(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      gt2_rxresetdone_out => gt2_rxresetdone_out,
      gt2_rxstatus_out(2 downto 0) => gt2_rxstatus_out(2 downto 0),
      gt2_rxsysclksel_in(1 downto 0) => gt2_rxsysclksel_in(1 downto 0),
      gt2_rxuserrdy_in => gt2_rxuserrdy_in,
      gt2_rxusrclk2_in => gt2_rxusrclk2_in,
      gt2_rxusrclk_in => gt2_rxusrclk_in,
      gt2_txbufstatus_out(1 downto 0) => gt2_txbufstatus_out(1 downto 0),
      gt2_txcharisk_in(3 downto 0) => gt2_txcharisk_in(3 downto 0),
      gt2_txdata_in(31 downto 0) => gt2_txdata_in(31 downto 0),
      gt2_txdiffctrl_in(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      gt2_txinhibit_in => gt2_txinhibit_in,
      gt2_txoutclk_out => gt2_txoutclk_out,
      gt2_txoutclkfabric_out => gt2_txoutclkfabric_out,
      gt2_txoutclkpcs_out => gt2_txoutclkpcs_out,
      gt2_txpcsreset_in => gt2_txpcsreset_in,
      gt2_txpd_in(1 downto 0) => gt2_txpd_in(1 downto 0),
      gt2_txpmareset_in => gt2_txpmareset_in,
      gt2_txpolarity_in => gt2_txpolarity_in,
      gt2_txpostcursor_in(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      gt2_txprbsforceerr_in => gt2_txprbsforceerr_in,
      gt2_txprbssel_in(2 downto 0) => gt2_txprbssel_in(2 downto 0),
      gt2_txprecursor_in(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      gt2_txresetdone_out => gt2_txresetdone_out,
      gt2_txsysclksel_in(1 downto 0) => gt2_txsysclksel_in(1 downto 0),
      gt2_txuserrdy_in => gt2_txuserrdy_in,
      gt2_txusrclk2_in => gt2_txusrclk2_in,
      gt2_txusrclk_in => gt2_txusrclk_in,
      gt3_cpllfbclklost_out => gt3_cpllfbclklost_out,
      gt3_cplllock_out => gt3_cplllock_out,
      gt3_cplllockdetclk_in => gt3_cplllockdetclk_in,
      gt3_cpllpd_in => gt3_cpllpd_in,
      gt3_cpllreset_in => gt3_cpllreset_in,
      gt3_dmonitorout_out(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      gt3_drpaddr_in(8 downto 0) => gt3_drpaddr_in(8 downto 0),
      gt3_drpclk_in => gt3_drpclk_in,
      gt3_drpdi_in(15 downto 0) => gt3_drpdi_in(15 downto 0),
      gt3_drpdo_out(15 downto 0) => gt3_drpdo_out(15 downto 0),
      gt3_drpen_in => gt3_drpen_in,
      gt3_drprdy_out => gt3_drprdy_out,
      gt3_drpwe_in => gt3_drpwe_in,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_eyescanreset_in => gt3_eyescanreset_in,
      gt3_eyescantrigger_in => gt3_eyescantrigger_in,
      gt3_gtnorthrefclk0_in => gt3_gtnorthrefclk0_in,
      gt3_gtnorthrefclk1_in => gt3_gtnorthrefclk1_in,
      gt3_gtrefclk0_in => gt3_gtrefclk0_in,
      gt3_gtrefclk1_in => gt3_gtrefclk1_in,
      gt3_gtrxreset_in => gt3_gtrxreset_in,
      gt3_gtsouthrefclk0_in => gt3_gtsouthrefclk0_in,
      gt3_gtsouthrefclk1_in => gt3_gtsouthrefclk1_in,
      gt3_gttxreset_in => gt3_gttxreset_in,
      gt3_gtxrxn_in => gt3_gtxrxn_in,
      gt3_gtxrxp_in => gt3_gtxrxp_in,
      gt3_gtxtxn_out => gt3_gtxtxn_out,
      gt3_gtxtxp_out => gt3_gtxtxp_out,
      gt3_loopback_in(2 downto 0) => gt3_loopback_in(2 downto 0),
      gt3_rxbufreset_in => gt3_rxbufreset_in,
      gt3_rxbufstatus_out(2 downto 0) => gt3_rxbufstatus_out(2 downto 0),
      gt3_rxbyteisaligned_out => gt3_rxbyteisaligned_out,
      gt3_rxbyterealign_out => gt3_rxbyterealign_out,
      gt3_rxcdrhold_in => gt3_rxcdrhold_in,
      gt3_rxchariscomma_out(3 downto 0) => gt3_rxchariscomma_out(3 downto 0),
      gt3_rxcharisk_out(3 downto 0) => gt3_rxcharisk_out(3 downto 0),
      gt3_rxcommadet_out => gt3_rxcommadet_out,
      gt3_rxdata_out(31 downto 0) => gt3_rxdata_out(31 downto 0),
      gt3_rxdfelpmreset_in => gt3_rxdfelpmreset_in,
      gt3_rxdisperr_out(3 downto 0) => gt3_rxdisperr_out(3 downto 0),
      gt3_rxlpmen_in => gt3_rxlpmen_in,
      gt3_rxmcommaalignen_in => gt3_rxmcommaalignen_in,
      gt3_rxmonitorout_out(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      gt3_rxnotintable_out(3 downto 0) => gt3_rxnotintable_out(3 downto 0),
      gt3_rxoutclk_out => gt3_rxoutclk_out,
      gt3_rxoutclkfabric_out => gt3_rxoutclkfabric_out,
      gt3_rxpcommaalignen_in => gt3_rxpcommaalignen_in,
      gt3_rxpcsreset_in => gt3_rxpcsreset_in,
      gt3_rxpd_in(1 downto 0) => gt3_rxpd_in(1 downto 0),
      gt3_rxpmareset_in => gt3_rxpmareset_in,
      gt3_rxpolarity_in => gt3_rxpolarity_in,
      gt3_rxprbscntreset_in => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out => gt3_rxprbserr_out,
      gt3_rxprbssel_in(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      gt3_rxresetdone_out => gt3_rxresetdone_out,
      gt3_rxstatus_out(2 downto 0) => gt3_rxstatus_out(2 downto 0),
      gt3_rxsysclksel_in(1 downto 0) => gt3_rxsysclksel_in(1 downto 0),
      gt3_rxuserrdy_in => gt3_rxuserrdy_in,
      gt3_rxusrclk2_in => gt3_rxusrclk2_in,
      gt3_rxusrclk_in => gt3_rxusrclk_in,
      gt3_txbufstatus_out(1 downto 0) => gt3_txbufstatus_out(1 downto 0),
      gt3_txcharisk_in(3 downto 0) => gt3_txcharisk_in(3 downto 0),
      gt3_txdata_in(31 downto 0) => gt3_txdata_in(31 downto 0),
      gt3_txdiffctrl_in(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      gt3_txinhibit_in => gt3_txinhibit_in,
      gt3_txoutclk_out => gt3_txoutclk_out,
      gt3_txoutclkfabric_out => gt3_txoutclkfabric_out,
      gt3_txoutclkpcs_out => gt3_txoutclkpcs_out,
      gt3_txpcsreset_in => gt3_txpcsreset_in,
      gt3_txpd_in(1 downto 0) => gt3_txpd_in(1 downto 0),
      gt3_txpmareset_in => gt3_txpmareset_in,
      gt3_txpolarity_in => gt3_txpolarity_in,
      gt3_txpostcursor_in(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      gt3_txprbsforceerr_in => gt3_txprbsforceerr_in,
      gt3_txprbssel_in(2 downto 0) => gt3_txprbssel_in(2 downto 0),
      gt3_txprecursor_in(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      gt3_txresetdone_out => gt3_txresetdone_out,
      gt3_txsysclksel_in(1 downto 0) => gt3_txsysclksel_in(1 downto 0),
      gt3_txuserrdy_in => gt3_txuserrdy_in,
      gt3_txusrclk2_in => gt3_txusrclk2_in,
      gt3_txusrclk_in => gt3_txusrclk_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_block is
  port (
    gt0_cplllock_out : out STD_LOGIC;
    gt0_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drprdy : out STD_LOGIC;
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rxoutclk : out STD_LOGIC;
    gt0_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txp_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txoutclk : out STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt1_cplllock_out : out STD_LOGIC;
    gt1_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drprdy : out STD_LOGIC;
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txresetdone_out : out STD_LOGIC;
    gt2_cplllock_out : out STD_LOGIC;
    gt2_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drprdy : out STD_LOGIC;
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxbyteisaligned_out : out STD_LOGIC;
    gt2_rxbyterealign_out : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txresetdone_out : out STD_LOGIC;
    gt3_cplllock_out : out STD_LOGIC;
    gt3_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drprdy : out STD_LOGIC;
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxbyteisaligned_out : out STD_LOGIC;
    gt3_rxbyterealign_out : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txresetdone_out : out STD_LOGIC;
    qpll_reset_out : out STD_LOGIC;
    tx_reset_done : out STD_LOGIC;
    rx_reset_done : out STD_LOGIC;
    tx_reset_gt : in STD_LOGIC;
    drpclk : in STD_LOGIC;
    rx_reset_gt : in STD_LOGIC;
    tx_sys_reset : in STD_LOGIC;
    rx_sys_reset : in STD_LOGIC;
    gt0_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen : in STD_LOGIC;
    gt0_drpwe : in STD_LOGIC;
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    rx_core_clk : in STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbscntreset_in : in STD_LOGIC;
    rxp_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxn_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxbufreset_in : in STD_LOGIC;
    rxencommaalign : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    tx_core_clk : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt_prbssel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpen : in STD_LOGIC;
    gt1_drpwe : in STD_LOGIC;
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt2_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpen : in STD_LOGIC;
    gt2_drpwe : in STD_LOGIC;
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxbufreset_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt3_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpen : in STD_LOGIC;
    gt3_drpwe : in STD_LOGIC;
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxbufreset_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    common0_qpll_lock_out : in STD_LOGIC;
    common0_qpll_clk_out : in STD_LOGIC;
    common0_qpll_refclk_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_block : entity is "jesd204_phy_1_block";
end jesd204_phy_1_jesd204_phy_1_block;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_block is
  signal \^gt0_rxresetdone_out\ : STD_LOGIC;
  signal \^gt0_txresetdone_out\ : STD_LOGIC;
  signal \^gt1_rxresetdone_out\ : STD_LOGIC;
  signal \^gt1_txresetdone_out\ : STD_LOGIC;
  signal \^gt2_rxresetdone_out\ : STD_LOGIC;
  signal \^gt2_txresetdone_out\ : STD_LOGIC;
  signal \^gt3_rxresetdone_out\ : STD_LOGIC;
  signal \^gt3_txresetdone_out\ : STD_LOGIC;
  signal gt_rxfsmdone : STD_LOGIC;
  signal gt_rxreset : STD_LOGIC;
  signal gt_rxreset0 : STD_LOGIC;
  signal gt_txfsmdone : STD_LOGIC;
  signal gt_txreset : STD_LOGIC;
  signal gt_txreset0 : STD_LOGIC;
  signal \rx_chan_rst_done__0\ : STD_LOGIC;
  signal rx_chan_rst_done_r : STD_LOGIC;
  signal rx_pll_lock_i_reg_n_0 : STD_LOGIC;
  signal rx_pll_lock_sync : STD_LOGIC;
  signal rx_reset_done_r0 : STD_LOGIC;
  signal rx_rst_gt_data_sync : STD_LOGIC;
  signal \tx_chan_rst_done__0\ : STD_LOGIC;
  signal tx_chan_rst_done_r : STD_LOGIC;
  signal tx_pll_lock_sync : STD_LOGIC;
  signal tx_reset_done_r0 : STD_LOGIC;
  signal tx_rst_gt_data_sync : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt0_cpllfbclklost_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt0_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt0_txoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt0_txoutclkpcs_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt1_cpllfbclklost_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt1_rxoutclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt1_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt1_txoutclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt1_txoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt1_txoutclkpcs_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt2_cpllfbclklost_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt2_rxoutclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt2_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt2_txoutclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt2_txoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt2_txoutclkpcs_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt3_cpllfbclklost_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt3_rxoutclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt3_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt3_txoutclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt3_txoutclkfabric_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt3_txoutclkpcs_out_UNCONNECTED : STD_LOGIC;
  signal NLW_jesd204_phy_1_gt_gt0_rxchariscomma_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_jesd204_phy_1_gt_gt1_rxchariscomma_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_jesd204_phy_1_gt_gt2_rxchariscomma_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_jesd204_phy_1_gt_gt3_rxchariscomma_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of jesd204_phy_1_gt : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of jesd204_phy_1_gt : label is "jesd204_phy_1_gt,gtwizard_v3_6_3,{protocol_file=JESD204}";
begin
  gt0_rxresetdone_out <= \^gt0_rxresetdone_out\;
  gt0_txresetdone_out <= \^gt0_txresetdone_out\;
  gt1_rxresetdone_out <= \^gt1_rxresetdone_out\;
  gt1_txresetdone_out <= \^gt1_txresetdone_out\;
  gt2_rxresetdone_out <= \^gt2_rxresetdone_out\;
  gt2_txresetdone_out <= \^gt2_txresetdone_out\;
  gt3_rxresetdone_out <= \^gt3_rxresetdone_out\;
  gt3_txresetdone_out <= \^gt3_txresetdone_out\;
gt_rxreset_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk,
      CE => '1',
      D => gt_rxreset0,
      Q => gt_rxreset,
      R => '0'
    );
gt_txreset_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk,
      CE => '1',
      D => gt_txreset0,
      Q => gt_txreset,
      R => '0'
    );
jesd204_phy_1_gt: entity work.jesd204_phy_1_jesd204_phy_1_gt
     port map (
      DONT_RESET_ON_DATA_ERROR_IN => '0',
      GT0_DATA_VALID_IN => '1',
      GT0_QPLLLOCK_IN => common0_qpll_lock_out,
      GT0_QPLLOUTCLK_IN => common0_qpll_clk_out,
      GT0_QPLLOUTREFCLK_IN => common0_qpll_refclk_out,
      GT0_QPLLREFCLKLOST_IN => '0',
      GT0_QPLLRESET_OUT => qpll_reset_out,
      GT1_DATA_VALID_IN => '1',
      GT2_DATA_VALID_IN => '1',
      GT3_DATA_VALID_IN => '1',
      GT_RX_FSM_RESET_DONE_OUT => gt_rxfsmdone,
      GT_TX_FSM_RESET_DONE_OUT => gt_txfsmdone,
      SOFT_RESET_RX_IN => gt_rxreset,
      SOFT_RESET_TX_IN => gt_txreset,
      SYSCLK_IN => drpclk,
      gt0_cpllfbclklost_out => NLW_jesd204_phy_1_gt_gt0_cpllfbclklost_out_UNCONNECTED,
      gt0_cplllock_out => gt0_cplllock_out,
      gt0_cplllockdetclk_in => drpclk,
      gt0_cpllpd_in => '1',
      gt0_cpllreset_in => '0',
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr(8 downto 0),
      gt0_drpclk_in => drpclk,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo(15 downto 0),
      gt0_drpen_in => gt0_drpen,
      gt0_drprdy_out => gt0_drprdy,
      gt0_drpwe_in => gt0_drpwe,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_gtnorthrefclk0_in => '0',
      gt0_gtnorthrefclk1_in => '0',
      gt0_gtrefclk0_in => '0',
      gt0_gtrefclk1_in => '0',
      gt0_gtrxreset_in => rx_rst_gt_data_sync,
      gt0_gtsouthrefclk0_in => '0',
      gt0_gtsouthrefclk1_in => '0',
      gt0_gttxreset_in => tx_rst_gt_data_sync,
      gt0_gtxrxn_in => rxn_in(0),
      gt0_gtxrxp_in => rxp_in(0),
      gt0_gtxtxn_out => txn_out(0),
      gt0_gtxtxp_out => txp_out(0),
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxchariscomma_out(3 downto 0) => NLW_jesd204_phy_1_gt_gt0_rxchariscomma_out_UNCONNECTED(3 downto 0),
      gt0_rxcharisk_out(3 downto 0) => gt0_rxcharisk(3 downto 0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdata_out(31 downto 0) => gt0_rxdata(31 downto 0),
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr_out(3 downto 0) => gt0_rxdisperr(3 downto 0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => rxencommaalign,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable_out(3 downto 0) => gt0_rxnotintable(3 downto 0),
      gt0_rxoutclk_out => rxoutclk,
      gt0_rxoutclkfabric_out => NLW_jesd204_phy_1_gt_gt0_rxoutclkfabric_out_UNCONNECTED,
      gt0_rxpcommaalignen_in => rxencommaalign,
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpd_in(1 downto 0) => gt0_rxpd_in(1 downto 0),
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxresetdone_out => \^gt0_rxresetdone_out\,
      gt0_rxstatus_out(2 downto 0) => gt0_rxstatus_out(2 downto 0),
      gt0_rxsysclksel_in(1 downto 0) => B"11",
      gt0_rxuserrdy_in => '1',
      gt0_rxusrclk2_in => rx_core_clk,
      gt0_rxusrclk_in => rx_core_clk,
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txcharisk_in(3 downto 0) => gt0_txcharisk(3 downto 0),
      gt0_txdata_in(31 downto 0) => gt0_txdata(31 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txinhibit_in => gt0_txinhibit_in,
      gt0_txoutclk_out => txoutclk,
      gt0_txoutclkfabric_out => NLW_jesd204_phy_1_gt_gt0_txoutclkfabric_out_UNCONNECTED,
      gt0_txoutclkpcs_out => NLW_jesd204_phy_1_gt_gt0_txoutclkpcs_out_UNCONNECTED,
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpd_in(1 downto 0) => gt0_txpd_in(1 downto 0),
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt_prbssel(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt0_txresetdone_out => \^gt0_txresetdone_out\,
      gt0_txsysclksel_in(1 downto 0) => B"11",
      gt0_txuserrdy_in => '1',
      gt0_txusrclk2_in => tx_core_clk,
      gt0_txusrclk_in => tx_core_clk,
      gt1_cpllfbclklost_out => NLW_jesd204_phy_1_gt_gt1_cpllfbclklost_out_UNCONNECTED,
      gt1_cplllock_out => gt1_cplllock_out,
      gt1_cplllockdetclk_in => drpclk,
      gt1_cpllpd_in => '1',
      gt1_cpllreset_in => '0',
      gt1_dmonitorout_out(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      gt1_drpaddr_in(8 downto 0) => gt1_drpaddr(8 downto 0),
      gt1_drpclk_in => drpclk,
      gt1_drpdi_in(15 downto 0) => gt1_drpdi(15 downto 0),
      gt1_drpdo_out(15 downto 0) => gt1_drpdo(15 downto 0),
      gt1_drpen_in => gt1_drpen,
      gt1_drprdy_out => gt1_drprdy,
      gt1_drpwe_in => gt1_drpwe,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_eyescanreset_in => gt1_eyescanreset_in,
      gt1_eyescantrigger_in => gt1_eyescantrigger_in,
      gt1_gtnorthrefclk0_in => '0',
      gt1_gtnorthrefclk1_in => '0',
      gt1_gtrefclk0_in => '0',
      gt1_gtrefclk1_in => '0',
      gt1_gtrxreset_in => rx_rst_gt_data_sync,
      gt1_gtsouthrefclk0_in => '0',
      gt1_gtsouthrefclk1_in => '0',
      gt1_gttxreset_in => tx_rst_gt_data_sync,
      gt1_gtxrxn_in => rxn_in(1),
      gt1_gtxrxp_in => rxp_in(1),
      gt1_gtxtxn_out => txn_out(1),
      gt1_gtxtxp_out => txp_out(1),
      gt1_loopback_in(2 downto 0) => gt1_loopback_in(2 downto 0),
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt1_rxbufstatus_out(2 downto 0) => gt1_rxbufstatus_out(2 downto 0),
      gt1_rxbyteisaligned_out => gt1_rxbyteisaligned_out,
      gt1_rxbyterealign_out => gt1_rxbyterealign_out,
      gt1_rxcdrhold_in => gt1_rxcdrhold_in,
      gt1_rxchariscomma_out(3 downto 0) => NLW_jesd204_phy_1_gt_gt1_rxchariscomma_out_UNCONNECTED(3 downto 0),
      gt1_rxcharisk_out(3 downto 0) => gt1_rxcharisk(3 downto 0),
      gt1_rxcommadet_out => gt1_rxcommadet_out,
      gt1_rxdata_out(31 downto 0) => gt1_rxdata(31 downto 0),
      gt1_rxdfelpmreset_in => gt1_rxdfelpmreset_in,
      gt1_rxdisperr_out(3 downto 0) => gt1_rxdisperr(3 downto 0),
      gt1_rxlpmen_in => gt1_rxlpmen_in,
      gt1_rxmcommaalignen_in => rxencommaalign,
      gt1_rxmonitorout_out(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      gt1_rxnotintable_out(3 downto 0) => gt1_rxnotintable(3 downto 0),
      gt1_rxoutclk_out => NLW_jesd204_phy_1_gt_gt1_rxoutclk_out_UNCONNECTED,
      gt1_rxoutclkfabric_out => NLW_jesd204_phy_1_gt_gt1_rxoutclkfabric_out_UNCONNECTED,
      gt1_rxpcommaalignen_in => rxencommaalign,
      gt1_rxpcsreset_in => gt1_rxpcsreset_in,
      gt1_rxpd_in(1 downto 0) => gt1_rxpd_in(1 downto 0),
      gt1_rxpmareset_in => gt1_rxpmareset_in,
      gt1_rxpolarity_in => gt1_rxpolarity_in,
      gt1_rxprbscntreset_in => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out => gt1_rxprbserr_out,
      gt1_rxprbssel_in(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      gt1_rxresetdone_out => \^gt1_rxresetdone_out\,
      gt1_rxstatus_out(2 downto 0) => gt1_rxstatus_out(2 downto 0),
      gt1_rxsysclksel_in(1 downto 0) => B"11",
      gt1_rxuserrdy_in => '1',
      gt1_rxusrclk2_in => rx_core_clk,
      gt1_rxusrclk_in => rx_core_clk,
      gt1_txbufstatus_out(1 downto 0) => gt1_txbufstatus_out(1 downto 0),
      gt1_txcharisk_in(3 downto 0) => gt1_txcharisk(3 downto 0),
      gt1_txdata_in(31 downto 0) => gt1_txdata(31 downto 0),
      gt1_txdiffctrl_in(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      gt1_txinhibit_in => gt1_txinhibit_in,
      gt1_txoutclk_out => NLW_jesd204_phy_1_gt_gt1_txoutclk_out_UNCONNECTED,
      gt1_txoutclkfabric_out => NLW_jesd204_phy_1_gt_gt1_txoutclkfabric_out_UNCONNECTED,
      gt1_txoutclkpcs_out => NLW_jesd204_phy_1_gt_gt1_txoutclkpcs_out_UNCONNECTED,
      gt1_txpcsreset_in => gt1_txpcsreset_in,
      gt1_txpd_in(1 downto 0) => gt1_txpd_in(1 downto 0),
      gt1_txpmareset_in => gt1_txpmareset_in,
      gt1_txpolarity_in => gt1_txpolarity_in,
      gt1_txpostcursor_in(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      gt1_txprbsforceerr_in => gt1_txprbsforceerr_in,
      gt1_txprbssel_in(2 downto 0) => gt_prbssel(2 downto 0),
      gt1_txprecursor_in(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      gt1_txresetdone_out => \^gt1_txresetdone_out\,
      gt1_txsysclksel_in(1 downto 0) => B"11",
      gt1_txuserrdy_in => '1',
      gt1_txusrclk2_in => tx_core_clk,
      gt1_txusrclk_in => tx_core_clk,
      gt2_cpllfbclklost_out => NLW_jesd204_phy_1_gt_gt2_cpllfbclklost_out_UNCONNECTED,
      gt2_cplllock_out => gt2_cplllock_out,
      gt2_cplllockdetclk_in => drpclk,
      gt2_cpllpd_in => '1',
      gt2_cpllreset_in => '0',
      gt2_dmonitorout_out(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      gt2_drpaddr_in(8 downto 0) => gt2_drpaddr(8 downto 0),
      gt2_drpclk_in => drpclk,
      gt2_drpdi_in(15 downto 0) => gt2_drpdi(15 downto 0),
      gt2_drpdo_out(15 downto 0) => gt2_drpdo(15 downto 0),
      gt2_drpen_in => gt2_drpen,
      gt2_drprdy_out => gt2_drprdy,
      gt2_drpwe_in => gt2_drpwe,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_eyescanreset_in => gt2_eyescanreset_in,
      gt2_eyescantrigger_in => gt2_eyescantrigger_in,
      gt2_gtnorthrefclk0_in => '0',
      gt2_gtnorthrefclk1_in => '0',
      gt2_gtrefclk0_in => '0',
      gt2_gtrefclk1_in => '0',
      gt2_gtrxreset_in => rx_rst_gt_data_sync,
      gt2_gtsouthrefclk0_in => '0',
      gt2_gtsouthrefclk1_in => '0',
      gt2_gttxreset_in => tx_rst_gt_data_sync,
      gt2_gtxrxn_in => rxn_in(2),
      gt2_gtxrxp_in => rxp_in(2),
      gt2_gtxtxn_out => txn_out(2),
      gt2_gtxtxp_out => txp_out(2),
      gt2_loopback_in(2 downto 0) => gt2_loopback_in(2 downto 0),
      gt2_rxbufreset_in => gt2_rxbufreset_in,
      gt2_rxbufstatus_out(2 downto 0) => gt2_rxbufstatus_out(2 downto 0),
      gt2_rxbyteisaligned_out => gt2_rxbyteisaligned_out,
      gt2_rxbyterealign_out => gt2_rxbyterealign_out,
      gt2_rxcdrhold_in => gt2_rxcdrhold_in,
      gt2_rxchariscomma_out(3 downto 0) => NLW_jesd204_phy_1_gt_gt2_rxchariscomma_out_UNCONNECTED(3 downto 0),
      gt2_rxcharisk_out(3 downto 0) => gt2_rxcharisk(3 downto 0),
      gt2_rxcommadet_out => gt2_rxcommadet_out,
      gt2_rxdata_out(31 downto 0) => gt2_rxdata(31 downto 0),
      gt2_rxdfelpmreset_in => gt2_rxdfelpmreset_in,
      gt2_rxdisperr_out(3 downto 0) => gt2_rxdisperr(3 downto 0),
      gt2_rxlpmen_in => gt2_rxlpmen_in,
      gt2_rxmcommaalignen_in => rxencommaalign,
      gt2_rxmonitorout_out(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      gt2_rxnotintable_out(3 downto 0) => gt2_rxnotintable(3 downto 0),
      gt2_rxoutclk_out => NLW_jesd204_phy_1_gt_gt2_rxoutclk_out_UNCONNECTED,
      gt2_rxoutclkfabric_out => NLW_jesd204_phy_1_gt_gt2_rxoutclkfabric_out_UNCONNECTED,
      gt2_rxpcommaalignen_in => rxencommaalign,
      gt2_rxpcsreset_in => gt2_rxpcsreset_in,
      gt2_rxpd_in(1 downto 0) => gt2_rxpd_in(1 downto 0),
      gt2_rxpmareset_in => gt2_rxpmareset_in,
      gt2_rxpolarity_in => gt2_rxpolarity_in,
      gt2_rxprbscntreset_in => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out => gt2_rxprbserr_out,
      gt2_rxprbssel_in(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      gt2_rxresetdone_out => \^gt2_rxresetdone_out\,
      gt2_rxstatus_out(2 downto 0) => gt2_rxstatus_out(2 downto 0),
      gt2_rxsysclksel_in(1 downto 0) => B"11",
      gt2_rxuserrdy_in => '1',
      gt2_rxusrclk2_in => rx_core_clk,
      gt2_rxusrclk_in => rx_core_clk,
      gt2_txbufstatus_out(1 downto 0) => gt2_txbufstatus_out(1 downto 0),
      gt2_txcharisk_in(3 downto 0) => gt2_txcharisk(3 downto 0),
      gt2_txdata_in(31 downto 0) => gt2_txdata(31 downto 0),
      gt2_txdiffctrl_in(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      gt2_txinhibit_in => gt2_txinhibit_in,
      gt2_txoutclk_out => NLW_jesd204_phy_1_gt_gt2_txoutclk_out_UNCONNECTED,
      gt2_txoutclkfabric_out => NLW_jesd204_phy_1_gt_gt2_txoutclkfabric_out_UNCONNECTED,
      gt2_txoutclkpcs_out => NLW_jesd204_phy_1_gt_gt2_txoutclkpcs_out_UNCONNECTED,
      gt2_txpcsreset_in => gt2_txpcsreset_in,
      gt2_txpd_in(1 downto 0) => gt2_txpd_in(1 downto 0),
      gt2_txpmareset_in => gt2_txpmareset_in,
      gt2_txpolarity_in => gt2_txpolarity_in,
      gt2_txpostcursor_in(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      gt2_txprbsforceerr_in => gt2_txprbsforceerr_in,
      gt2_txprbssel_in(2 downto 0) => gt_prbssel(2 downto 0),
      gt2_txprecursor_in(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      gt2_txresetdone_out => \^gt2_txresetdone_out\,
      gt2_txsysclksel_in(1 downto 0) => B"11",
      gt2_txuserrdy_in => '1',
      gt2_txusrclk2_in => tx_core_clk,
      gt2_txusrclk_in => tx_core_clk,
      gt3_cpllfbclklost_out => NLW_jesd204_phy_1_gt_gt3_cpllfbclklost_out_UNCONNECTED,
      gt3_cplllock_out => gt3_cplllock_out,
      gt3_cplllockdetclk_in => drpclk,
      gt3_cpllpd_in => '1',
      gt3_cpllreset_in => '0',
      gt3_dmonitorout_out(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      gt3_drpaddr_in(8 downto 0) => gt3_drpaddr(8 downto 0),
      gt3_drpclk_in => drpclk,
      gt3_drpdi_in(15 downto 0) => gt3_drpdi(15 downto 0),
      gt3_drpdo_out(15 downto 0) => gt3_drpdo(15 downto 0),
      gt3_drpen_in => gt3_drpen,
      gt3_drprdy_out => gt3_drprdy,
      gt3_drpwe_in => gt3_drpwe,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_eyescanreset_in => gt3_eyescanreset_in,
      gt3_eyescantrigger_in => gt3_eyescantrigger_in,
      gt3_gtnorthrefclk0_in => '0',
      gt3_gtnorthrefclk1_in => '0',
      gt3_gtrefclk0_in => '0',
      gt3_gtrefclk1_in => '0',
      gt3_gtrxreset_in => rx_rst_gt_data_sync,
      gt3_gtsouthrefclk0_in => '0',
      gt3_gtsouthrefclk1_in => '0',
      gt3_gttxreset_in => tx_rst_gt_data_sync,
      gt3_gtxrxn_in => rxn_in(3),
      gt3_gtxrxp_in => rxp_in(3),
      gt3_gtxtxn_out => txn_out(3),
      gt3_gtxtxp_out => txp_out(3),
      gt3_loopback_in(2 downto 0) => gt3_loopback_in(2 downto 0),
      gt3_rxbufreset_in => gt3_rxbufreset_in,
      gt3_rxbufstatus_out(2 downto 0) => gt3_rxbufstatus_out(2 downto 0),
      gt3_rxbyteisaligned_out => gt3_rxbyteisaligned_out,
      gt3_rxbyterealign_out => gt3_rxbyterealign_out,
      gt3_rxcdrhold_in => gt3_rxcdrhold_in,
      gt3_rxchariscomma_out(3 downto 0) => NLW_jesd204_phy_1_gt_gt3_rxchariscomma_out_UNCONNECTED(3 downto 0),
      gt3_rxcharisk_out(3 downto 0) => gt3_rxcharisk(3 downto 0),
      gt3_rxcommadet_out => gt3_rxcommadet_out,
      gt3_rxdata_out(31 downto 0) => gt3_rxdata(31 downto 0),
      gt3_rxdfelpmreset_in => gt3_rxdfelpmreset_in,
      gt3_rxdisperr_out(3 downto 0) => gt3_rxdisperr(3 downto 0),
      gt3_rxlpmen_in => gt3_rxlpmen_in,
      gt3_rxmcommaalignen_in => rxencommaalign,
      gt3_rxmonitorout_out(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      gt3_rxnotintable_out(3 downto 0) => gt3_rxnotintable(3 downto 0),
      gt3_rxoutclk_out => NLW_jesd204_phy_1_gt_gt3_rxoutclk_out_UNCONNECTED,
      gt3_rxoutclkfabric_out => NLW_jesd204_phy_1_gt_gt3_rxoutclkfabric_out_UNCONNECTED,
      gt3_rxpcommaalignen_in => rxencommaalign,
      gt3_rxpcsreset_in => gt3_rxpcsreset_in,
      gt3_rxpd_in(1 downto 0) => gt3_rxpd_in(1 downto 0),
      gt3_rxpmareset_in => gt3_rxpmareset_in,
      gt3_rxpolarity_in => gt3_rxpolarity_in,
      gt3_rxprbscntreset_in => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out => gt3_rxprbserr_out,
      gt3_rxprbssel_in(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      gt3_rxresetdone_out => \^gt3_rxresetdone_out\,
      gt3_rxstatus_out(2 downto 0) => gt3_rxstatus_out(2 downto 0),
      gt3_rxsysclksel_in(1 downto 0) => B"11",
      gt3_rxuserrdy_in => '1',
      gt3_rxusrclk2_in => rx_core_clk,
      gt3_rxusrclk_in => rx_core_clk,
      gt3_txbufstatus_out(1 downto 0) => gt3_txbufstatus_out(1 downto 0),
      gt3_txcharisk_in(3 downto 0) => gt3_txcharisk(3 downto 0),
      gt3_txdata_in(31 downto 0) => gt3_txdata(31 downto 0),
      gt3_txdiffctrl_in(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      gt3_txinhibit_in => gt3_txinhibit_in,
      gt3_txoutclk_out => NLW_jesd204_phy_1_gt_gt3_txoutclk_out_UNCONNECTED,
      gt3_txoutclkfabric_out => NLW_jesd204_phy_1_gt_gt3_txoutclkfabric_out_UNCONNECTED,
      gt3_txoutclkpcs_out => NLW_jesd204_phy_1_gt_gt3_txoutclkpcs_out_UNCONNECTED,
      gt3_txpcsreset_in => gt3_txpcsreset_in,
      gt3_txpd_in(1 downto 0) => gt3_txpd_in(1 downto 0),
      gt3_txpmareset_in => gt3_txpmareset_in,
      gt3_txpolarity_in => gt3_txpolarity_in,
      gt3_txpostcursor_in(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      gt3_txprbsforceerr_in => gt3_txprbsforceerr_in,
      gt3_txprbssel_in(2 downto 0) => gt_prbssel(2 downto 0),
      gt3_txprecursor_in(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      gt3_txresetdone_out => \^gt3_txresetdone_out\,
      gt3_txsysclksel_in(1 downto 0) => B"11",
      gt3_txuserrdy_in => '1',
      gt3_txusrclk2_in => tx_core_clk,
      gt3_txusrclk_in => tx_core_clk
    );
rx_chan_rst_done: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^gt1_rxresetdone_out\,
      I1 => \^gt2_rxresetdone_out\,
      I2 => \^gt0_rxresetdone_out\,
      I3 => \^gt3_rxresetdone_out\,
      O => \rx_chan_rst_done__0\
    );
rx_chan_rst_done_r_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_core_clk,
      CE => '1',
      D => \rx_chan_rst_done__0\,
      Q => rx_chan_rst_done_r,
      R => '0'
    );
rx_pll_lock_i_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk,
      CE => '1',
      D => common0_qpll_lock_out,
      Q => rx_pll_lock_i_reg_n_0,
      R => '0'
    );
rx_reset_done_r_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk,
      CE => '1',
      D => rx_reset_done_r0,
      Q => rx_reset_done,
      R => '0'
    );
sync_rx_chan_rst_done: entity work.jesd204_phy_1_jesd204_phy_1_sync_block
     port map (
      GT_RX_FSM_RESET_DONE_OUT => gt_rxfsmdone,
      O23 => rx_chan_rst_done_r,
      drpclk => drpclk,
      rx_reset_done_r0 => rx_reset_done_r0
    );
sync_rx_pll_lock: entity work.jesd204_phy_1_jesd204_phy_1_sync_block_0
     port map (
      O24 => rx_pll_lock_i_reg_n_0,
      data_out => rx_pll_lock_sync,
      drpclk => drpclk
    );
sync_rx_reset_all: entity work.jesd204_phy_1_jesd204_phy_1_sync_block_1
     port map (
      GT_RX_FSM_RESET_DONE_OUT => gt_rxfsmdone,
      data_out => rx_pll_lock_sync,
      drpclk => drpclk,
      gt_rxreset0 => gt_rxreset0,
      rx_sys_reset => rx_sys_reset
    );
sync_rx_reset_data: entity work.jesd204_phy_1_jesd204_phy_1_sync_block_2
     port map (
      data_out => rx_rst_gt_data_sync,
      drpclk => drpclk,
      rx_reset_gt => rx_reset_gt
    );
sync_tx_chan_rst_done: entity work.jesd204_phy_1_jesd204_phy_1_sync_block_3
     port map (
      GT_TX_FSM_RESET_DONE_OUT => gt_txfsmdone,
      data_in => tx_chan_rst_done_r,
      drpclk => drpclk,
      tx_reset_done_r0 => tx_reset_done_r0
    );
sync_tx_pll_lock: entity work.jesd204_phy_1_jesd204_phy_1_sync_block_4
     port map (
      O24 => rx_pll_lock_i_reg_n_0,
      data_out => tx_pll_lock_sync,
      drpclk => drpclk
    );
sync_tx_reset_all: entity work.jesd204_phy_1_jesd204_phy_1_sync_block_5
     port map (
      GT_TX_FSM_RESET_DONE_OUT => gt_txfsmdone,
      data_out => tx_pll_lock_sync,
      drpclk => drpclk,
      gt_txreset0 => gt_txreset0,
      tx_sys_reset => tx_sys_reset
    );
sync_tx_reset_data: entity work.jesd204_phy_1_jesd204_phy_1_sync_block_6
     port map (
      data_out => tx_rst_gt_data_sync,
      drpclk => drpclk,
      tx_reset_gt => tx_reset_gt
    );
tx_chan_rst_done: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^gt1_txresetdone_out\,
      I1 => \^gt2_txresetdone_out\,
      I2 => \^gt0_txresetdone_out\,
      I3 => \^gt3_txresetdone_out\,
      O => \tx_chan_rst_done__0\
    );
tx_chan_rst_done_r_reg: unisim.vcomponents.FDRE
     port map (
      C => tx_core_clk,
      CE => '1',
      D => \tx_chan_rst_done__0\,
      Q => tx_chan_rst_done_r,
      R => '0'
    );
tx_reset_done_r_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk,
      CE => '1',
      D => tx_reset_done_r0,
      Q => tx_reset_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1_jesd204_phy_1_support is
  port (
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_cplllock_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen : in STD_LOGIC;
    gt0_drpwe : in STD_LOGIC;
    gt0_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drprdy : out STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_cplllock_out : out STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpen : in STD_LOGIC;
    gt1_drpwe : in STD_LOGIC;
    gt1_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drprdy : out STD_LOGIC;
    gt2_txresetdone_out : out STD_LOGIC;
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_cplllock_out : out STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxbufreset_in : in STD_LOGIC;
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxbyteisaligned_out : out STD_LOGIC;
    gt2_rxbyterealign_out : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpen : in STD_LOGIC;
    gt2_drpwe : in STD_LOGIC;
    gt2_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drprdy : out STD_LOGIC;
    gt3_txresetdone_out : out STD_LOGIC;
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_cplllock_out : out STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxbufreset_in : in STD_LOGIC;
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxbyteisaligned_out : out STD_LOGIC;
    gt3_rxbyterealign_out : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpen : in STD_LOGIC;
    gt3_drpwe : in STD_LOGIC;
    gt3_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drprdy : out STD_LOGIC;
    tx_sys_reset : in STD_LOGIC;
    rx_sys_reset : in STD_LOGIC;
    tx_reset_gt : in STD_LOGIC;
    rx_reset_gt : in STD_LOGIC;
    tx_reset_done : out STD_LOGIC;
    rx_reset_done : out STD_LOGIC;
    qpll_refclk : in STD_LOGIC;
    common0_qpll_lock_out : out STD_LOGIC;
    common0_qpll_refclk_out : out STD_LOGIC;
    common0_qpll_clk_out : out STD_LOGIC;
    rxencommaalign : in STD_LOGIC;
    tx_core_clk : in STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rx_core_clk : in STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    drpclk : in STD_LOGIC;
    gt_prbssel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxn_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxp_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txn_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txp_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of jesd204_phy_1_jesd204_phy_1_support : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jesd204_phy_1_jesd204_phy_1_support : entity is "jesd204_phy_1_support";
end jesd204_phy_1_jesd204_phy_1_support;

architecture STRUCTURE of jesd204_phy_1_jesd204_phy_1_support is
  signal \^common0_qpll_clk_out\ : STD_LOGIC;
  signal \^common0_qpll_lock_out\ : STD_LOGIC;
  signal \^common0_qpll_refclk_out\ : STD_LOGIC;
  signal qpll_reset_i : STD_LOGIC;
begin
  common0_qpll_clk_out <= \^common0_qpll_clk_out\;
  common0_qpll_lock_out <= \^common0_qpll_lock_out\;
  common0_qpll_refclk_out <= \^common0_qpll_refclk_out\;
jesd204_phy_block_i: entity work.jesd204_phy_1_jesd204_phy_1_block
     port map (
      common0_qpll_clk_out => \^common0_qpll_clk_out\,
      common0_qpll_lock_out => \^common0_qpll_lock_out\,
      common0_qpll_refclk_out => \^common0_qpll_refclk_out\,
      drpclk => drpclk,
      gt0_cplllock_out => gt0_cplllock_out,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr(8 downto 0) => gt0_drpaddr(8 downto 0),
      gt0_drpdi(15 downto 0) => gt0_drpdi(15 downto 0),
      gt0_drpdo(15 downto 0) => gt0_drpdo(15 downto 0),
      gt0_drpen => gt0_drpen,
      gt0_drprdy => gt0_drprdy,
      gt0_drpwe => gt0_drpwe,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxcharisk(3 downto 0) => gt0_rxcharisk(3 downto 0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdata(31 downto 0) => gt0_rxdata(31 downto 0),
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr(3 downto 0) => gt0_rxdisperr(3 downto 0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable(3 downto 0) => gt0_rxnotintable(3 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpd_in(1 downto 0) => gt0_rxpd_in(1 downto 0),
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      gt0_rxstatus_out(2 downto 0) => gt0_rxstatus_out(2 downto 0),
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txcharisk(3 downto 0) => gt0_txcharisk(3 downto 0),
      gt0_txdata(31 downto 0) => gt0_txdata(31 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txinhibit_in => gt0_txinhibit_in,
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpd_in(1 downto 0) => gt0_txpd_in(1 downto 0),
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt0_txresetdone_out => gt0_txresetdone_out,
      gt1_cplllock_out => gt1_cplllock_out,
      gt1_dmonitorout_out(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      gt1_drpaddr(8 downto 0) => gt1_drpaddr(8 downto 0),
      gt1_drpdi(15 downto 0) => gt1_drpdi(15 downto 0),
      gt1_drpdo(15 downto 0) => gt1_drpdo(15 downto 0),
      gt1_drpen => gt1_drpen,
      gt1_drprdy => gt1_drprdy,
      gt1_drpwe => gt1_drpwe,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_eyescanreset_in => gt1_eyescanreset_in,
      gt1_eyescantrigger_in => gt1_eyescantrigger_in,
      gt1_loopback_in(2 downto 0) => gt1_loopback_in(2 downto 0),
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt1_rxbufstatus_out(2 downto 0) => gt1_rxbufstatus_out(2 downto 0),
      gt1_rxbyteisaligned_out => gt1_rxbyteisaligned_out,
      gt1_rxbyterealign_out => gt1_rxbyterealign_out,
      gt1_rxcdrhold_in => gt1_rxcdrhold_in,
      gt1_rxcharisk(3 downto 0) => gt1_rxcharisk(3 downto 0),
      gt1_rxcommadet_out => gt1_rxcommadet_out,
      gt1_rxdata(31 downto 0) => gt1_rxdata(31 downto 0),
      gt1_rxdfelpmreset_in => gt1_rxdfelpmreset_in,
      gt1_rxdisperr(3 downto 0) => gt1_rxdisperr(3 downto 0),
      gt1_rxlpmen_in => gt1_rxlpmen_in,
      gt1_rxmonitorout_out(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      gt1_rxnotintable(3 downto 0) => gt1_rxnotintable(3 downto 0),
      gt1_rxpcsreset_in => gt1_rxpcsreset_in,
      gt1_rxpd_in(1 downto 0) => gt1_rxpd_in(1 downto 0),
      gt1_rxpmareset_in => gt1_rxpmareset_in,
      gt1_rxpolarity_in => gt1_rxpolarity_in,
      gt1_rxprbscntreset_in => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out => gt1_rxprbserr_out,
      gt1_rxprbssel_in(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      gt1_rxresetdone_out => gt1_rxresetdone_out,
      gt1_rxstatus_out(2 downto 0) => gt1_rxstatus_out(2 downto 0),
      gt1_txbufstatus_out(1 downto 0) => gt1_txbufstatus_out(1 downto 0),
      gt1_txcharisk(3 downto 0) => gt1_txcharisk(3 downto 0),
      gt1_txdata(31 downto 0) => gt1_txdata(31 downto 0),
      gt1_txdiffctrl_in(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      gt1_txinhibit_in => gt1_txinhibit_in,
      gt1_txpcsreset_in => gt1_txpcsreset_in,
      gt1_txpd_in(1 downto 0) => gt1_txpd_in(1 downto 0),
      gt1_txpmareset_in => gt1_txpmareset_in,
      gt1_txpolarity_in => gt1_txpolarity_in,
      gt1_txpostcursor_in(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      gt1_txprbsforceerr_in => gt1_txprbsforceerr_in,
      gt1_txprecursor_in(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      gt1_txresetdone_out => gt1_txresetdone_out,
      gt2_cplllock_out => gt2_cplllock_out,
      gt2_dmonitorout_out(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      gt2_drpaddr(8 downto 0) => gt2_drpaddr(8 downto 0),
      gt2_drpdi(15 downto 0) => gt2_drpdi(15 downto 0),
      gt2_drpdo(15 downto 0) => gt2_drpdo(15 downto 0),
      gt2_drpen => gt2_drpen,
      gt2_drprdy => gt2_drprdy,
      gt2_drpwe => gt2_drpwe,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_eyescanreset_in => gt2_eyescanreset_in,
      gt2_eyescantrigger_in => gt2_eyescantrigger_in,
      gt2_loopback_in(2 downto 0) => gt2_loopback_in(2 downto 0),
      gt2_rxbufreset_in => gt2_rxbufreset_in,
      gt2_rxbufstatus_out(2 downto 0) => gt2_rxbufstatus_out(2 downto 0),
      gt2_rxbyteisaligned_out => gt2_rxbyteisaligned_out,
      gt2_rxbyterealign_out => gt2_rxbyterealign_out,
      gt2_rxcdrhold_in => gt2_rxcdrhold_in,
      gt2_rxcharisk(3 downto 0) => gt2_rxcharisk(3 downto 0),
      gt2_rxcommadet_out => gt2_rxcommadet_out,
      gt2_rxdata(31 downto 0) => gt2_rxdata(31 downto 0),
      gt2_rxdfelpmreset_in => gt2_rxdfelpmreset_in,
      gt2_rxdisperr(3 downto 0) => gt2_rxdisperr(3 downto 0),
      gt2_rxlpmen_in => gt2_rxlpmen_in,
      gt2_rxmonitorout_out(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      gt2_rxnotintable(3 downto 0) => gt2_rxnotintable(3 downto 0),
      gt2_rxpcsreset_in => gt2_rxpcsreset_in,
      gt2_rxpd_in(1 downto 0) => gt2_rxpd_in(1 downto 0),
      gt2_rxpmareset_in => gt2_rxpmareset_in,
      gt2_rxpolarity_in => gt2_rxpolarity_in,
      gt2_rxprbscntreset_in => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out => gt2_rxprbserr_out,
      gt2_rxprbssel_in(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      gt2_rxresetdone_out => gt2_rxresetdone_out,
      gt2_rxstatus_out(2 downto 0) => gt2_rxstatus_out(2 downto 0),
      gt2_txbufstatus_out(1 downto 0) => gt2_txbufstatus_out(1 downto 0),
      gt2_txcharisk(3 downto 0) => gt2_txcharisk(3 downto 0),
      gt2_txdata(31 downto 0) => gt2_txdata(31 downto 0),
      gt2_txdiffctrl_in(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      gt2_txinhibit_in => gt2_txinhibit_in,
      gt2_txpcsreset_in => gt2_txpcsreset_in,
      gt2_txpd_in(1 downto 0) => gt2_txpd_in(1 downto 0),
      gt2_txpmareset_in => gt2_txpmareset_in,
      gt2_txpolarity_in => gt2_txpolarity_in,
      gt2_txpostcursor_in(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      gt2_txprbsforceerr_in => gt2_txprbsforceerr_in,
      gt2_txprecursor_in(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      gt2_txresetdone_out => gt2_txresetdone_out,
      gt3_cplllock_out => gt3_cplllock_out,
      gt3_dmonitorout_out(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      gt3_drpaddr(8 downto 0) => gt3_drpaddr(8 downto 0),
      gt3_drpdi(15 downto 0) => gt3_drpdi(15 downto 0),
      gt3_drpdo(15 downto 0) => gt3_drpdo(15 downto 0),
      gt3_drpen => gt3_drpen,
      gt3_drprdy => gt3_drprdy,
      gt3_drpwe => gt3_drpwe,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_eyescanreset_in => gt3_eyescanreset_in,
      gt3_eyescantrigger_in => gt3_eyescantrigger_in,
      gt3_loopback_in(2 downto 0) => gt3_loopback_in(2 downto 0),
      gt3_rxbufreset_in => gt3_rxbufreset_in,
      gt3_rxbufstatus_out(2 downto 0) => gt3_rxbufstatus_out(2 downto 0),
      gt3_rxbyteisaligned_out => gt3_rxbyteisaligned_out,
      gt3_rxbyterealign_out => gt3_rxbyterealign_out,
      gt3_rxcdrhold_in => gt3_rxcdrhold_in,
      gt3_rxcharisk(3 downto 0) => gt3_rxcharisk(3 downto 0),
      gt3_rxcommadet_out => gt3_rxcommadet_out,
      gt3_rxdata(31 downto 0) => gt3_rxdata(31 downto 0),
      gt3_rxdfelpmreset_in => gt3_rxdfelpmreset_in,
      gt3_rxdisperr(3 downto 0) => gt3_rxdisperr(3 downto 0),
      gt3_rxlpmen_in => gt3_rxlpmen_in,
      gt3_rxmonitorout_out(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      gt3_rxnotintable(3 downto 0) => gt3_rxnotintable(3 downto 0),
      gt3_rxpcsreset_in => gt3_rxpcsreset_in,
      gt3_rxpd_in(1 downto 0) => gt3_rxpd_in(1 downto 0),
      gt3_rxpmareset_in => gt3_rxpmareset_in,
      gt3_rxpolarity_in => gt3_rxpolarity_in,
      gt3_rxprbscntreset_in => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out => gt3_rxprbserr_out,
      gt3_rxprbssel_in(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      gt3_rxresetdone_out => gt3_rxresetdone_out,
      gt3_rxstatus_out(2 downto 0) => gt3_rxstatus_out(2 downto 0),
      gt3_txbufstatus_out(1 downto 0) => gt3_txbufstatus_out(1 downto 0),
      gt3_txcharisk(3 downto 0) => gt3_txcharisk(3 downto 0),
      gt3_txdata(31 downto 0) => gt3_txdata(31 downto 0),
      gt3_txdiffctrl_in(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      gt3_txinhibit_in => gt3_txinhibit_in,
      gt3_txpcsreset_in => gt3_txpcsreset_in,
      gt3_txpd_in(1 downto 0) => gt3_txpd_in(1 downto 0),
      gt3_txpmareset_in => gt3_txpmareset_in,
      gt3_txpolarity_in => gt3_txpolarity_in,
      gt3_txpostcursor_in(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      gt3_txprbsforceerr_in => gt3_txprbsforceerr_in,
      gt3_txprecursor_in(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      gt3_txresetdone_out => gt3_txresetdone_out,
      gt_prbssel(2 downto 0) => gt_prbssel(2 downto 0),
      qpll_reset_out => qpll_reset_i,
      rx_core_clk => rx_core_clk,
      rx_reset_done => rx_reset_done,
      rx_reset_gt => rx_reset_gt,
      rx_sys_reset => rx_sys_reset,
      rxencommaalign => rxencommaalign,
      rxn_in(3 downto 0) => rxn_in(3 downto 0),
      rxoutclk => rxoutclk,
      rxp_in(3 downto 0) => rxp_in(3 downto 0),
      tx_core_clk => tx_core_clk,
      tx_reset_done => tx_reset_done,
      tx_reset_gt => tx_reset_gt,
      tx_sys_reset => tx_sys_reset,
      txn_out(3 downto 0) => txn_out(3 downto 0),
      txoutclk => txoutclk,
      txp_out(3 downto 0) => txp_out(3 downto 0)
    );
jesd204_phy_gt_common_i: entity work.jesd204_phy_1_jesd204_phy_1_gt_common_wrapper
     port map (
      common0_qpll_clk_out => \^common0_qpll_clk_out\,
      common0_qpll_lock_out => \^common0_qpll_lock_out\,
      common0_qpll_refclk_out => \^common0_qpll_refclk_out\,
      drpclk => drpclk,
      qpll_refclk => qpll_refclk,
      qpll_reset_out => qpll_reset_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jesd204_phy_1 is
  port (
    tx_sys_reset : in STD_LOGIC;
    rx_sys_reset : in STD_LOGIC;
    tx_reset_gt : in STD_LOGIC;
    rx_reset_gt : in STD_LOGIC;
    tx_reset_done : out STD_LOGIC;
    rx_reset_done : out STD_LOGIC;
    qpll_refclk : in STD_LOGIC;
    common0_qpll_lock_out : out STD_LOGIC;
    common0_qpll_refclk_out : out STD_LOGIC;
    common0_qpll_clk_out : out STD_LOGIC;
    rxencommaalign : in STD_LOGIC;
    tx_core_clk : in STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rx_core_clk : in STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    drpclk : in STD_LOGIC;
    gt_prbssel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_txcharisk : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt2_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt3_rxcharisk : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxdisperr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_rxnotintable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxn_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxp_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txn_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txp_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of jesd204_phy_1 : entity is true;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of jesd204_phy_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of jesd204_phy_1 : entity is "jesd204_phy_v3_1_1,Vivado 2016.2";
end jesd204_phy_1;

architecture STRUCTURE of jesd204_phy_1 is
  signal NLW_inst_gt0_cplllock_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_rxbyterealign_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_cplllock_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_rxbyterealign_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_cplllock_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_rxbyterealign_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_cplllock_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_rxbyterealign_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_gt0_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_gt0_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt0_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_gt0_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt0_txbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_gt1_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_gt1_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_gt1_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt1_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_gt1_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt1_txbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_gt2_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_gt2_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_gt2_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt2_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_gt2_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt2_txbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_gt3_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_gt3_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_gt3_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt3_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_gt3_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt3_txbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
begin
inst: entity work.jesd204_phy_1_jesd204_phy_1_support
     port map (
      common0_qpll_clk_out => common0_qpll_clk_out,
      common0_qpll_lock_out => common0_qpll_lock_out,
      common0_qpll_refclk_out => common0_qpll_refclk_out,
      drpclk => drpclk,
      gt0_cplllock_out => NLW_inst_gt0_cplllock_out_UNCONNECTED,
      gt0_dmonitorout_out(7 downto 0) => NLW_inst_gt0_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt0_drpaddr(8 downto 0) => B"000000000",
      gt0_drpdi(15 downto 0) => B"0000000000000000",
      gt0_drpdo(15 downto 0) => NLW_inst_gt0_drpdo_UNCONNECTED(15 downto 0),
      gt0_drpen => '0',
      gt0_drprdy => NLW_inst_gt0_drprdy_UNCONNECTED,
      gt0_drpwe => '0',
      gt0_eyescandataerror_out => NLW_inst_gt0_eyescandataerror_out_UNCONNECTED,
      gt0_eyescanreset_in => '0',
      gt0_eyescantrigger_in => '0',
      gt0_loopback_in(2 downto 0) => B"000",
      gt0_rxbufreset_in => '0',
      gt0_rxbufstatus_out(2 downto 0) => NLW_inst_gt0_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt0_rxbyteisaligned_out => NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED,
      gt0_rxbyterealign_out => NLW_inst_gt0_rxbyterealign_out_UNCONNECTED,
      gt0_rxcdrhold_in => '0',
      gt0_rxcharisk(3 downto 0) => gt0_rxcharisk(3 downto 0),
      gt0_rxcommadet_out => NLW_inst_gt0_rxcommadet_out_UNCONNECTED,
      gt0_rxdata(31 downto 0) => gt0_rxdata(31 downto 0),
      gt0_rxdfelpmreset_in => '0',
      gt0_rxdisperr(3 downto 0) => gt0_rxdisperr(3 downto 0),
      gt0_rxlpmen_in => '1',
      gt0_rxmonitorout_out(6 downto 0) => NLW_inst_gt0_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => B"00",
      gt0_rxnotintable(3 downto 0) => gt0_rxnotintable(3 downto 0),
      gt0_rxpcsreset_in => '0',
      gt0_rxpd_in(1 downto 0) => B"00",
      gt0_rxpmareset_in => '0',
      gt0_rxpolarity_in => '0',
      gt0_rxprbscntreset_in => '0',
      gt0_rxprbserr_out => NLW_inst_gt0_rxprbserr_out_UNCONNECTED,
      gt0_rxprbssel_in(2 downto 0) => B"000",
      gt0_rxresetdone_out => NLW_inst_gt0_rxresetdone_out_UNCONNECTED,
      gt0_rxstatus_out(2 downto 0) => NLW_inst_gt0_rxstatus_out_UNCONNECTED(2 downto 0),
      gt0_txbufstatus_out(1 downto 0) => NLW_inst_gt0_txbufstatus_out_UNCONNECTED(1 downto 0),
      gt0_txcharisk(3 downto 0) => gt0_txcharisk(3 downto 0),
      gt0_txdata(31 downto 0) => gt0_txdata(31 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => B"1000",
      gt0_txinhibit_in => '0',
      gt0_txpcsreset_in => '0',
      gt0_txpd_in(1 downto 0) => B"00",
      gt0_txpmareset_in => '0',
      gt0_txpolarity_in => '0',
      gt0_txpostcursor_in(4 downto 0) => B"00000",
      gt0_txprbsforceerr_in => '0',
      gt0_txprecursor_in(4 downto 0) => B"00000",
      gt0_txresetdone_out => NLW_inst_gt0_txresetdone_out_UNCONNECTED,
      gt1_cplllock_out => NLW_inst_gt1_cplllock_out_UNCONNECTED,
      gt1_dmonitorout_out(7 downto 0) => NLW_inst_gt1_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt1_drpaddr(8 downto 0) => B"000000000",
      gt1_drpdi(15 downto 0) => B"0000000000000000",
      gt1_drpdo(15 downto 0) => NLW_inst_gt1_drpdo_UNCONNECTED(15 downto 0),
      gt1_drpen => '0',
      gt1_drprdy => NLW_inst_gt1_drprdy_UNCONNECTED,
      gt1_drpwe => '0',
      gt1_eyescandataerror_out => NLW_inst_gt1_eyescandataerror_out_UNCONNECTED,
      gt1_eyescanreset_in => '0',
      gt1_eyescantrigger_in => '0',
      gt1_loopback_in(2 downto 0) => B"000",
      gt1_rxbufreset_in => '0',
      gt1_rxbufstatus_out(2 downto 0) => NLW_inst_gt1_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt1_rxbyteisaligned_out => NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED,
      gt1_rxbyterealign_out => NLW_inst_gt1_rxbyterealign_out_UNCONNECTED,
      gt1_rxcdrhold_in => '0',
      gt1_rxcharisk(3 downto 0) => gt1_rxcharisk(3 downto 0),
      gt1_rxcommadet_out => NLW_inst_gt1_rxcommadet_out_UNCONNECTED,
      gt1_rxdata(31 downto 0) => gt1_rxdata(31 downto 0),
      gt1_rxdfelpmreset_in => '0',
      gt1_rxdisperr(3 downto 0) => gt1_rxdisperr(3 downto 0),
      gt1_rxlpmen_in => '1',
      gt1_rxmonitorout_out(6 downto 0) => NLW_inst_gt1_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => B"00",
      gt1_rxnotintable(3 downto 0) => gt1_rxnotintable(3 downto 0),
      gt1_rxpcsreset_in => '0',
      gt1_rxpd_in(1 downto 0) => B"00",
      gt1_rxpmareset_in => '0',
      gt1_rxpolarity_in => '0',
      gt1_rxprbscntreset_in => '0',
      gt1_rxprbserr_out => NLW_inst_gt1_rxprbserr_out_UNCONNECTED,
      gt1_rxprbssel_in(2 downto 0) => B"000",
      gt1_rxresetdone_out => NLW_inst_gt1_rxresetdone_out_UNCONNECTED,
      gt1_rxstatus_out(2 downto 0) => NLW_inst_gt1_rxstatus_out_UNCONNECTED(2 downto 0),
      gt1_txbufstatus_out(1 downto 0) => NLW_inst_gt1_txbufstatus_out_UNCONNECTED(1 downto 0),
      gt1_txcharisk(3 downto 0) => gt1_txcharisk(3 downto 0),
      gt1_txdata(31 downto 0) => gt1_txdata(31 downto 0),
      gt1_txdiffctrl_in(3 downto 0) => B"1000",
      gt1_txinhibit_in => '0',
      gt1_txpcsreset_in => '0',
      gt1_txpd_in(1 downto 0) => B"00",
      gt1_txpmareset_in => '0',
      gt1_txpolarity_in => '0',
      gt1_txpostcursor_in(4 downto 0) => B"00000",
      gt1_txprbsforceerr_in => '0',
      gt1_txprecursor_in(4 downto 0) => B"00000",
      gt1_txresetdone_out => NLW_inst_gt1_txresetdone_out_UNCONNECTED,
      gt2_cplllock_out => NLW_inst_gt2_cplllock_out_UNCONNECTED,
      gt2_dmonitorout_out(7 downto 0) => NLW_inst_gt2_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt2_drpaddr(8 downto 0) => B"000000000",
      gt2_drpdi(15 downto 0) => B"0000000000000000",
      gt2_drpdo(15 downto 0) => NLW_inst_gt2_drpdo_UNCONNECTED(15 downto 0),
      gt2_drpen => '0',
      gt2_drprdy => NLW_inst_gt2_drprdy_UNCONNECTED,
      gt2_drpwe => '0',
      gt2_eyescandataerror_out => NLW_inst_gt2_eyescandataerror_out_UNCONNECTED,
      gt2_eyescanreset_in => '0',
      gt2_eyescantrigger_in => '0',
      gt2_loopback_in(2 downto 0) => B"000",
      gt2_rxbufreset_in => '0',
      gt2_rxbufstatus_out(2 downto 0) => NLW_inst_gt2_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt2_rxbyteisaligned_out => NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED,
      gt2_rxbyterealign_out => NLW_inst_gt2_rxbyterealign_out_UNCONNECTED,
      gt2_rxcdrhold_in => '0',
      gt2_rxcharisk(3 downto 0) => gt2_rxcharisk(3 downto 0),
      gt2_rxcommadet_out => NLW_inst_gt2_rxcommadet_out_UNCONNECTED,
      gt2_rxdata(31 downto 0) => gt2_rxdata(31 downto 0),
      gt2_rxdfelpmreset_in => '0',
      gt2_rxdisperr(3 downto 0) => gt2_rxdisperr(3 downto 0),
      gt2_rxlpmen_in => '1',
      gt2_rxmonitorout_out(6 downto 0) => NLW_inst_gt2_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => B"00",
      gt2_rxnotintable(3 downto 0) => gt2_rxnotintable(3 downto 0),
      gt2_rxpcsreset_in => '0',
      gt2_rxpd_in(1 downto 0) => B"00",
      gt2_rxpmareset_in => '0',
      gt2_rxpolarity_in => '0',
      gt2_rxprbscntreset_in => '0',
      gt2_rxprbserr_out => NLW_inst_gt2_rxprbserr_out_UNCONNECTED,
      gt2_rxprbssel_in(2 downto 0) => B"000",
      gt2_rxresetdone_out => NLW_inst_gt2_rxresetdone_out_UNCONNECTED,
      gt2_rxstatus_out(2 downto 0) => NLW_inst_gt2_rxstatus_out_UNCONNECTED(2 downto 0),
      gt2_txbufstatus_out(1 downto 0) => NLW_inst_gt2_txbufstatus_out_UNCONNECTED(1 downto 0),
      gt2_txcharisk(3 downto 0) => gt2_txcharisk(3 downto 0),
      gt2_txdata(31 downto 0) => gt2_txdata(31 downto 0),
      gt2_txdiffctrl_in(3 downto 0) => B"1000",
      gt2_txinhibit_in => '0',
      gt2_txpcsreset_in => '0',
      gt2_txpd_in(1 downto 0) => B"00",
      gt2_txpmareset_in => '0',
      gt2_txpolarity_in => '0',
      gt2_txpostcursor_in(4 downto 0) => B"00000",
      gt2_txprbsforceerr_in => '0',
      gt2_txprecursor_in(4 downto 0) => B"00000",
      gt2_txresetdone_out => NLW_inst_gt2_txresetdone_out_UNCONNECTED,
      gt3_cplllock_out => NLW_inst_gt3_cplllock_out_UNCONNECTED,
      gt3_dmonitorout_out(7 downto 0) => NLW_inst_gt3_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt3_drpaddr(8 downto 0) => B"000000000",
      gt3_drpdi(15 downto 0) => B"0000000000000000",
      gt3_drpdo(15 downto 0) => NLW_inst_gt3_drpdo_UNCONNECTED(15 downto 0),
      gt3_drpen => '0',
      gt3_drprdy => NLW_inst_gt3_drprdy_UNCONNECTED,
      gt3_drpwe => '0',
      gt3_eyescandataerror_out => NLW_inst_gt3_eyescandataerror_out_UNCONNECTED,
      gt3_eyescanreset_in => '0',
      gt3_eyescantrigger_in => '0',
      gt3_loopback_in(2 downto 0) => B"000",
      gt3_rxbufreset_in => '0',
      gt3_rxbufstatus_out(2 downto 0) => NLW_inst_gt3_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt3_rxbyteisaligned_out => NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED,
      gt3_rxbyterealign_out => NLW_inst_gt3_rxbyterealign_out_UNCONNECTED,
      gt3_rxcdrhold_in => '0',
      gt3_rxcharisk(3 downto 0) => gt3_rxcharisk(3 downto 0),
      gt3_rxcommadet_out => NLW_inst_gt3_rxcommadet_out_UNCONNECTED,
      gt3_rxdata(31 downto 0) => gt3_rxdata(31 downto 0),
      gt3_rxdfelpmreset_in => '0',
      gt3_rxdisperr(3 downto 0) => gt3_rxdisperr(3 downto 0),
      gt3_rxlpmen_in => '1',
      gt3_rxmonitorout_out(6 downto 0) => NLW_inst_gt3_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => B"00",
      gt3_rxnotintable(3 downto 0) => gt3_rxnotintable(3 downto 0),
      gt3_rxpcsreset_in => '0',
      gt3_rxpd_in(1 downto 0) => B"00",
      gt3_rxpmareset_in => '0',
      gt3_rxpolarity_in => '0',
      gt3_rxprbscntreset_in => '0',
      gt3_rxprbserr_out => NLW_inst_gt3_rxprbserr_out_UNCONNECTED,
      gt3_rxprbssel_in(2 downto 0) => B"000",
      gt3_rxresetdone_out => NLW_inst_gt3_rxresetdone_out_UNCONNECTED,
      gt3_rxstatus_out(2 downto 0) => NLW_inst_gt3_rxstatus_out_UNCONNECTED(2 downto 0),
      gt3_txbufstatus_out(1 downto 0) => NLW_inst_gt3_txbufstatus_out_UNCONNECTED(1 downto 0),
      gt3_txcharisk(3 downto 0) => gt3_txcharisk(3 downto 0),
      gt3_txdata(31 downto 0) => gt3_txdata(31 downto 0),
      gt3_txdiffctrl_in(3 downto 0) => B"1000",
      gt3_txinhibit_in => '0',
      gt3_txpcsreset_in => '0',
      gt3_txpd_in(1 downto 0) => B"00",
      gt3_txpmareset_in => '0',
      gt3_txpolarity_in => '0',
      gt3_txpostcursor_in(4 downto 0) => B"00000",
      gt3_txprbsforceerr_in => '0',
      gt3_txprecursor_in(4 downto 0) => B"00000",
      gt3_txresetdone_out => NLW_inst_gt3_txresetdone_out_UNCONNECTED,
      gt_prbssel(2 downto 0) => gt_prbssel(2 downto 0),
      qpll_refclk => qpll_refclk,
      rx_core_clk => rx_core_clk,
      rx_reset_done => rx_reset_done,
      rx_reset_gt => rx_reset_gt,
      rx_sys_reset => rx_sys_reset,
      rxencommaalign => rxencommaalign,
      rxn_in(3 downto 0) => rxn_in(3 downto 0),
      rxoutclk => rxoutclk,
      rxp_in(3 downto 0) => rxp_in(3 downto 0),
      tx_core_clk => tx_core_clk,
      tx_reset_done => tx_reset_done,
      tx_reset_gt => tx_reset_gt,
      tx_sys_reset => tx_sys_reset,
      txn_out(3 downto 0) => txn_out(3 downto 0),
      txoutclk => txoutclk,
      txp_out(3 downto 0) => txp_out(3 downto 0)
    );
end STRUCTURE;

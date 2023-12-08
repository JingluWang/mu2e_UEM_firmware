-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jesd204_phy_1 is
  Port ( 
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

end jesd204_phy_1;

architecture stub of jesd204_phy_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "jesd204_phy_v3_1_1,Vivado 2016.2";
begin
end;

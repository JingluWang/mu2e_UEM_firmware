-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xaui_0 is
  Port ( 
    dclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk156_out : out STD_LOGIC;
    clk156_lock : out STD_LOGIC;
    refclk : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    xaui_tx_l0_p : out STD_LOGIC;
    xaui_tx_l0_n : out STD_LOGIC;
    xaui_tx_l1_p : out STD_LOGIC;
    xaui_tx_l1_n : out STD_LOGIC;
    xaui_tx_l2_p : out STD_LOGIC;
    xaui_tx_l2_n : out STD_LOGIC;
    xaui_tx_l3_p : out STD_LOGIC;
    xaui_tx_l3_n : out STD_LOGIC;
    xaui_rx_l0_p : in STD_LOGIC;
    xaui_rx_l0_n : in STD_LOGIC;
    xaui_rx_l1_p : in STD_LOGIC;
    xaui_rx_l1_n : in STD_LOGIC;
    xaui_rx_l2_p : in STD_LOGIC;
    xaui_rx_l2_n : in STD_LOGIC;
    xaui_rx_l3_p : in STD_LOGIC;
    xaui_rx_l3_n : in STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 5 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 6 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end xaui_0;

architecture stub of xaui_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xaui_v12_2_5,Vivado 2016.2";
begin
end;

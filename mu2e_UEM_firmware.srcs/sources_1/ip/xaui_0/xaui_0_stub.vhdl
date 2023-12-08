-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Mon Nov 13 22:00:46 2023
-- Host        : Ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/xaui_0/xaui_0_stub.vhdl
-- Design      : xaui_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k420tffg1156-2
-- --------------------------------------------------------------------------------
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
attribute black_box_pad_pin of stub : architecture is "dclk,reset,clk156_out,clk156_lock,refclk,xgmii_txd[63:0],xgmii_txc[7:0],xgmii_rxd[63:0],xgmii_rxc[7:0],xaui_tx_l0_p,xaui_tx_l0_n,xaui_tx_l1_p,xaui_tx_l1_n,xaui_tx_l2_p,xaui_tx_l2_n,xaui_tx_l3_p,xaui_tx_l3_n,xaui_rx_l0_p,xaui_rx_l0_n,xaui_rx_l1_p,xaui_rx_l1_n,xaui_rx_l2_p,xaui_rx_l2_n,xaui_rx_l3_p,xaui_rx_l3_n,signal_detect[3:0],debug[5:0],configuration_vector[6:0],status_vector[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xaui_v12_2_5,Vivado 2016.2";
begin
end;

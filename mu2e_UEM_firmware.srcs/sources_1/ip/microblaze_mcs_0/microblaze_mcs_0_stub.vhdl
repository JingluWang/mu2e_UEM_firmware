-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Mon Nov 13 22:03:23 2023
-- Host        : Ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/microblaze_mcs_0/microblaze_mcs_0_stub.vhdl
-- Design      : microblaze_mcs_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k420tffg1156-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze_mcs_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    UART_Interrupt : out STD_LOGIC;
    FIT1_Toggle : out STD_LOGIC;
    INTC_Interrupt : in STD_LOGIC_VECTOR ( 0 to 0 );
    INTC_IRQ : out STD_LOGIC;
    IO_addr_strobe : out STD_LOGIC;
    IO_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_byte_enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_read_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_read_strobe : out STD_LOGIC;
    IO_ready : in STD_LOGIC;
    IO_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_write_strobe : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC
  );

end microblaze_mcs_0;

architecture stub of microblaze_mcs_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,UART_Interrupt,FIT1_Toggle,INTC_Interrupt[0:0],INTC_IRQ,IO_addr_strobe,IO_address[31:0],IO_byte_enable[3:0],IO_read_data[31:0],IO_read_strobe,IO_ready,IO_write_data[31:0],IO_write_strobe,UART_rxd,UART_txd";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_fc5c,Vivado 2016.2";
begin
end;

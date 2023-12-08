-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Mon Nov 13 22:03:23 2023
-- Host        : Ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/microblaze_mcs_0/microblaze_mcs_0_sim_netlist.vhdl
-- Design      : microblaze_mcs_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k420tffg1156-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_dlmb_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 63 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 1 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 1 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 1 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 1 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_dlmb_0 : entity is "bd_fc5c_dlmb_0";
end microblaze_mcs_0_bd_fc5c_dlmb_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_dlmb_0 is
begin
  LMB_AddrStrobe <= 'Z';
  LMB_CE <= 'Z';
  LMB_ReadStrobe <= 'Z';
  LMB_Ready <= 'Z';
  LMB_Rst <= 'Z';
  LMB_UE <= 'Z';
  LMB_Wait <= 'Z';
  LMB_WriteStrobe <= 'Z';
  LMB_ABus(31) <= 'Z';
  LMB_ABus(30) <= 'Z';
  LMB_ABus(29) <= 'Z';
  LMB_ABus(28) <= 'Z';
  LMB_ABus(27) <= 'Z';
  LMB_ABus(26) <= 'Z';
  LMB_ABus(25) <= 'Z';
  LMB_ABus(24) <= 'Z';
  LMB_ABus(23) <= 'Z';
  LMB_ABus(22) <= 'Z';
  LMB_ABus(21) <= 'Z';
  LMB_ABus(20) <= 'Z';
  LMB_ABus(19) <= 'Z';
  LMB_ABus(18) <= 'Z';
  LMB_ABus(17) <= 'Z';
  LMB_ABus(16) <= 'Z';
  LMB_ABus(15) <= 'Z';
  LMB_ABus(14) <= 'Z';
  LMB_ABus(13) <= 'Z';
  LMB_ABus(12) <= 'Z';
  LMB_ABus(11) <= 'Z';
  LMB_ABus(10) <= 'Z';
  LMB_ABus(9) <= 'Z';
  LMB_ABus(8) <= 'Z';
  LMB_ABus(7) <= 'Z';
  LMB_ABus(6) <= 'Z';
  LMB_ABus(5) <= 'Z';
  LMB_ABus(4) <= 'Z';
  LMB_ABus(3) <= 'Z';
  LMB_ABus(2) <= 'Z';
  LMB_ABus(1) <= 'Z';
  LMB_ABus(0) <= 'Z';
  LMB_BE(3) <= 'Z';
  LMB_BE(2) <= 'Z';
  LMB_BE(1) <= 'Z';
  LMB_BE(0) <= 'Z';
  LMB_ReadDBus(31) <= 'Z';
  LMB_ReadDBus(30) <= 'Z';
  LMB_ReadDBus(29) <= 'Z';
  LMB_ReadDBus(28) <= 'Z';
  LMB_ReadDBus(27) <= 'Z';
  LMB_ReadDBus(26) <= 'Z';
  LMB_ReadDBus(25) <= 'Z';
  LMB_ReadDBus(24) <= 'Z';
  LMB_ReadDBus(23) <= 'Z';
  LMB_ReadDBus(22) <= 'Z';
  LMB_ReadDBus(21) <= 'Z';
  LMB_ReadDBus(20) <= 'Z';
  LMB_ReadDBus(19) <= 'Z';
  LMB_ReadDBus(18) <= 'Z';
  LMB_ReadDBus(17) <= 'Z';
  LMB_ReadDBus(16) <= 'Z';
  LMB_ReadDBus(15) <= 'Z';
  LMB_ReadDBus(14) <= 'Z';
  LMB_ReadDBus(13) <= 'Z';
  LMB_ReadDBus(12) <= 'Z';
  LMB_ReadDBus(11) <= 'Z';
  LMB_ReadDBus(10) <= 'Z';
  LMB_ReadDBus(9) <= 'Z';
  LMB_ReadDBus(8) <= 'Z';
  LMB_ReadDBus(7) <= 'Z';
  LMB_ReadDBus(6) <= 'Z';
  LMB_ReadDBus(5) <= 'Z';
  LMB_ReadDBus(4) <= 'Z';
  LMB_ReadDBus(3) <= 'Z';
  LMB_ReadDBus(2) <= 'Z';
  LMB_ReadDBus(1) <= 'Z';
  LMB_ReadDBus(0) <= 'Z';
  LMB_WriteDBus(31) <= 'Z';
  LMB_WriteDBus(30) <= 'Z';
  LMB_WriteDBus(29) <= 'Z';
  LMB_WriteDBus(28) <= 'Z';
  LMB_WriteDBus(27) <= 'Z';
  LMB_WriteDBus(26) <= 'Z';
  LMB_WriteDBus(25) <= 'Z';
  LMB_WriteDBus(24) <= 'Z';
  LMB_WriteDBus(23) <= 'Z';
  LMB_WriteDBus(22) <= 'Z';
  LMB_WriteDBus(21) <= 'Z';
  LMB_WriteDBus(20) <= 'Z';
  LMB_WriteDBus(19) <= 'Z';
  LMB_WriteDBus(18) <= 'Z';
  LMB_WriteDBus(17) <= 'Z';
  LMB_WriteDBus(16) <= 'Z';
  LMB_WriteDBus(15) <= 'Z';
  LMB_WriteDBus(14) <= 'Z';
  LMB_WriteDBus(13) <= 'Z';
  LMB_WriteDBus(12) <= 'Z';
  LMB_WriteDBus(11) <= 'Z';
  LMB_WriteDBus(10) <= 'Z';
  LMB_WriteDBus(9) <= 'Z';
  LMB_WriteDBus(8) <= 'Z';
  LMB_WriteDBus(7) <= 'Z';
  LMB_WriteDBus(6) <= 'Z';
  LMB_WriteDBus(5) <= 'Z';
  LMB_WriteDBus(4) <= 'Z';
  LMB_WriteDBus(3) <= 'Z';
  LMB_WriteDBus(2) <= 'Z';
  LMB_WriteDBus(1) <= 'Z';
  LMB_WriteDBus(0) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_dlmb_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_dlmb_cntlr_0 : entity is "bd_fc5c_dlmb_cntlr_0";
end microblaze_mcs_0_bd_fc5c_dlmb_cntlr_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_dlmb_cntlr_0 is
begin
  BRAM_Clk_A <= 'Z';
  BRAM_EN_A <= 'Z';
  BRAM_Rst_A <= 'Z';
  Sl_CE <= 'Z';
  Sl_Ready <= 'Z';
  Sl_UE <= 'Z';
  Sl_Wait <= 'Z';
  BRAM_Addr_A(31) <= 'Z';
  BRAM_Addr_A(30) <= 'Z';
  BRAM_Addr_A(29) <= 'Z';
  BRAM_Addr_A(28) <= 'Z';
  BRAM_Addr_A(27) <= 'Z';
  BRAM_Addr_A(26) <= 'Z';
  BRAM_Addr_A(25) <= 'Z';
  BRAM_Addr_A(24) <= 'Z';
  BRAM_Addr_A(23) <= 'Z';
  BRAM_Addr_A(22) <= 'Z';
  BRAM_Addr_A(21) <= 'Z';
  BRAM_Addr_A(20) <= 'Z';
  BRAM_Addr_A(19) <= 'Z';
  BRAM_Addr_A(18) <= 'Z';
  BRAM_Addr_A(17) <= 'Z';
  BRAM_Addr_A(16) <= 'Z';
  BRAM_Addr_A(15) <= 'Z';
  BRAM_Addr_A(14) <= 'Z';
  BRAM_Addr_A(13) <= 'Z';
  BRAM_Addr_A(12) <= 'Z';
  BRAM_Addr_A(11) <= 'Z';
  BRAM_Addr_A(10) <= 'Z';
  BRAM_Addr_A(9) <= 'Z';
  BRAM_Addr_A(8) <= 'Z';
  BRAM_Addr_A(7) <= 'Z';
  BRAM_Addr_A(6) <= 'Z';
  BRAM_Addr_A(5) <= 'Z';
  BRAM_Addr_A(4) <= 'Z';
  BRAM_Addr_A(3) <= 'Z';
  BRAM_Addr_A(2) <= 'Z';
  BRAM_Addr_A(1) <= 'Z';
  BRAM_Addr_A(0) <= 'Z';
  BRAM_Dout_A(31) <= 'Z';
  BRAM_Dout_A(30) <= 'Z';
  BRAM_Dout_A(29) <= 'Z';
  BRAM_Dout_A(28) <= 'Z';
  BRAM_Dout_A(27) <= 'Z';
  BRAM_Dout_A(26) <= 'Z';
  BRAM_Dout_A(25) <= 'Z';
  BRAM_Dout_A(24) <= 'Z';
  BRAM_Dout_A(23) <= 'Z';
  BRAM_Dout_A(22) <= 'Z';
  BRAM_Dout_A(21) <= 'Z';
  BRAM_Dout_A(20) <= 'Z';
  BRAM_Dout_A(19) <= 'Z';
  BRAM_Dout_A(18) <= 'Z';
  BRAM_Dout_A(17) <= 'Z';
  BRAM_Dout_A(16) <= 'Z';
  BRAM_Dout_A(15) <= 'Z';
  BRAM_Dout_A(14) <= 'Z';
  BRAM_Dout_A(13) <= 'Z';
  BRAM_Dout_A(12) <= 'Z';
  BRAM_Dout_A(11) <= 'Z';
  BRAM_Dout_A(10) <= 'Z';
  BRAM_Dout_A(9) <= 'Z';
  BRAM_Dout_A(8) <= 'Z';
  BRAM_Dout_A(7) <= 'Z';
  BRAM_Dout_A(6) <= 'Z';
  BRAM_Dout_A(5) <= 'Z';
  BRAM_Dout_A(4) <= 'Z';
  BRAM_Dout_A(3) <= 'Z';
  BRAM_Dout_A(2) <= 'Z';
  BRAM_Dout_A(1) <= 'Z';
  BRAM_Dout_A(0) <= 'Z';
  BRAM_WEN_A(3) <= 'Z';
  BRAM_WEN_A(2) <= 'Z';
  BRAM_WEN_A(1) <= 'Z';
  BRAM_WEN_A(0) <= 'Z';
  Sl_DBus(31) <= 'Z';
  Sl_DBus(30) <= 'Z';
  Sl_DBus(29) <= 'Z';
  Sl_DBus(28) <= 'Z';
  Sl_DBus(27) <= 'Z';
  Sl_DBus(26) <= 'Z';
  Sl_DBus(25) <= 'Z';
  Sl_DBus(24) <= 'Z';
  Sl_DBus(23) <= 'Z';
  Sl_DBus(22) <= 'Z';
  Sl_DBus(21) <= 'Z';
  Sl_DBus(20) <= 'Z';
  Sl_DBus(19) <= 'Z';
  Sl_DBus(18) <= 'Z';
  Sl_DBus(17) <= 'Z';
  Sl_DBus(16) <= 'Z';
  Sl_DBus(15) <= 'Z';
  Sl_DBus(14) <= 'Z';
  Sl_DBus(13) <= 'Z';
  Sl_DBus(12) <= 'Z';
  Sl_DBus(11) <= 'Z';
  Sl_DBus(10) <= 'Z';
  Sl_DBus(9) <= 'Z';
  Sl_DBus(8) <= 'Z';
  Sl_DBus(7) <= 'Z';
  Sl_DBus(6) <= 'Z';
  Sl_DBus(5) <= 'Z';
  Sl_DBus(4) <= 'Z';
  Sl_DBus(3) <= 'Z';
  Sl_DBus(2) <= 'Z';
  Sl_DBus(1) <= 'Z';
  Sl_DBus(0) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_ilmb_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_ilmb_0 : entity is "bd_fc5c_ilmb_0";
end microblaze_mcs_0_bd_fc5c_ilmb_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_ilmb_0 is
begin
  LMB_AddrStrobe <= 'Z';
  LMB_CE <= 'Z';
  LMB_ReadStrobe <= 'Z';
  LMB_Ready <= 'Z';
  LMB_Rst <= 'Z';
  LMB_UE <= 'Z';
  LMB_Wait <= 'Z';
  LMB_WriteStrobe <= 'Z';
  LMB_ABus(31) <= 'Z';
  LMB_ABus(30) <= 'Z';
  LMB_ABus(29) <= 'Z';
  LMB_ABus(28) <= 'Z';
  LMB_ABus(27) <= 'Z';
  LMB_ABus(26) <= 'Z';
  LMB_ABus(25) <= 'Z';
  LMB_ABus(24) <= 'Z';
  LMB_ABus(23) <= 'Z';
  LMB_ABus(22) <= 'Z';
  LMB_ABus(21) <= 'Z';
  LMB_ABus(20) <= 'Z';
  LMB_ABus(19) <= 'Z';
  LMB_ABus(18) <= 'Z';
  LMB_ABus(17) <= 'Z';
  LMB_ABus(16) <= 'Z';
  LMB_ABus(15) <= 'Z';
  LMB_ABus(14) <= 'Z';
  LMB_ABus(13) <= 'Z';
  LMB_ABus(12) <= 'Z';
  LMB_ABus(11) <= 'Z';
  LMB_ABus(10) <= 'Z';
  LMB_ABus(9) <= 'Z';
  LMB_ABus(8) <= 'Z';
  LMB_ABus(7) <= 'Z';
  LMB_ABus(6) <= 'Z';
  LMB_ABus(5) <= 'Z';
  LMB_ABus(4) <= 'Z';
  LMB_ABus(3) <= 'Z';
  LMB_ABus(2) <= 'Z';
  LMB_ABus(1) <= 'Z';
  LMB_ABus(0) <= 'Z';
  LMB_BE(3) <= 'Z';
  LMB_BE(2) <= 'Z';
  LMB_BE(1) <= 'Z';
  LMB_BE(0) <= 'Z';
  LMB_ReadDBus(31) <= 'Z';
  LMB_ReadDBus(30) <= 'Z';
  LMB_ReadDBus(29) <= 'Z';
  LMB_ReadDBus(28) <= 'Z';
  LMB_ReadDBus(27) <= 'Z';
  LMB_ReadDBus(26) <= 'Z';
  LMB_ReadDBus(25) <= 'Z';
  LMB_ReadDBus(24) <= 'Z';
  LMB_ReadDBus(23) <= 'Z';
  LMB_ReadDBus(22) <= 'Z';
  LMB_ReadDBus(21) <= 'Z';
  LMB_ReadDBus(20) <= 'Z';
  LMB_ReadDBus(19) <= 'Z';
  LMB_ReadDBus(18) <= 'Z';
  LMB_ReadDBus(17) <= 'Z';
  LMB_ReadDBus(16) <= 'Z';
  LMB_ReadDBus(15) <= 'Z';
  LMB_ReadDBus(14) <= 'Z';
  LMB_ReadDBus(13) <= 'Z';
  LMB_ReadDBus(12) <= 'Z';
  LMB_ReadDBus(11) <= 'Z';
  LMB_ReadDBus(10) <= 'Z';
  LMB_ReadDBus(9) <= 'Z';
  LMB_ReadDBus(8) <= 'Z';
  LMB_ReadDBus(7) <= 'Z';
  LMB_ReadDBus(6) <= 'Z';
  LMB_ReadDBus(5) <= 'Z';
  LMB_ReadDBus(4) <= 'Z';
  LMB_ReadDBus(3) <= 'Z';
  LMB_ReadDBus(2) <= 'Z';
  LMB_ReadDBus(1) <= 'Z';
  LMB_ReadDBus(0) <= 'Z';
  LMB_WriteDBus(31) <= 'Z';
  LMB_WriteDBus(30) <= 'Z';
  LMB_WriteDBus(29) <= 'Z';
  LMB_WriteDBus(28) <= 'Z';
  LMB_WriteDBus(27) <= 'Z';
  LMB_WriteDBus(26) <= 'Z';
  LMB_WriteDBus(25) <= 'Z';
  LMB_WriteDBus(24) <= 'Z';
  LMB_WriteDBus(23) <= 'Z';
  LMB_WriteDBus(22) <= 'Z';
  LMB_WriteDBus(21) <= 'Z';
  LMB_WriteDBus(20) <= 'Z';
  LMB_WriteDBus(19) <= 'Z';
  LMB_WriteDBus(18) <= 'Z';
  LMB_WriteDBus(17) <= 'Z';
  LMB_WriteDBus(16) <= 'Z';
  LMB_WriteDBus(15) <= 'Z';
  LMB_WriteDBus(14) <= 'Z';
  LMB_WriteDBus(13) <= 'Z';
  LMB_WriteDBus(12) <= 'Z';
  LMB_WriteDBus(11) <= 'Z';
  LMB_WriteDBus(10) <= 'Z';
  LMB_WriteDBus(9) <= 'Z';
  LMB_WriteDBus(8) <= 'Z';
  LMB_WriteDBus(7) <= 'Z';
  LMB_WriteDBus(6) <= 'Z';
  LMB_WriteDBus(5) <= 'Z';
  LMB_WriteDBus(4) <= 'Z';
  LMB_WriteDBus(3) <= 'Z';
  LMB_WriteDBus(2) <= 'Z';
  LMB_WriteDBus(1) <= 'Z';
  LMB_WriteDBus(0) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_ilmb_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_ilmb_cntlr_0 : entity is "bd_fc5c_ilmb_cntlr_0";
end microblaze_mcs_0_bd_fc5c_ilmb_cntlr_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_ilmb_cntlr_0 is
begin
  BRAM_Clk_A <= 'Z';
  BRAM_EN_A <= 'Z';
  BRAM_Rst_A <= 'Z';
  Sl_CE <= 'Z';
  Sl_Ready <= 'Z';
  Sl_UE <= 'Z';
  Sl_Wait <= 'Z';
  BRAM_Addr_A(31) <= 'Z';
  BRAM_Addr_A(30) <= 'Z';
  BRAM_Addr_A(29) <= 'Z';
  BRAM_Addr_A(28) <= 'Z';
  BRAM_Addr_A(27) <= 'Z';
  BRAM_Addr_A(26) <= 'Z';
  BRAM_Addr_A(25) <= 'Z';
  BRAM_Addr_A(24) <= 'Z';
  BRAM_Addr_A(23) <= 'Z';
  BRAM_Addr_A(22) <= 'Z';
  BRAM_Addr_A(21) <= 'Z';
  BRAM_Addr_A(20) <= 'Z';
  BRAM_Addr_A(19) <= 'Z';
  BRAM_Addr_A(18) <= 'Z';
  BRAM_Addr_A(17) <= 'Z';
  BRAM_Addr_A(16) <= 'Z';
  BRAM_Addr_A(15) <= 'Z';
  BRAM_Addr_A(14) <= 'Z';
  BRAM_Addr_A(13) <= 'Z';
  BRAM_Addr_A(12) <= 'Z';
  BRAM_Addr_A(11) <= 'Z';
  BRAM_Addr_A(10) <= 'Z';
  BRAM_Addr_A(9) <= 'Z';
  BRAM_Addr_A(8) <= 'Z';
  BRAM_Addr_A(7) <= 'Z';
  BRAM_Addr_A(6) <= 'Z';
  BRAM_Addr_A(5) <= 'Z';
  BRAM_Addr_A(4) <= 'Z';
  BRAM_Addr_A(3) <= 'Z';
  BRAM_Addr_A(2) <= 'Z';
  BRAM_Addr_A(1) <= 'Z';
  BRAM_Addr_A(0) <= 'Z';
  BRAM_Dout_A(31) <= 'Z';
  BRAM_Dout_A(30) <= 'Z';
  BRAM_Dout_A(29) <= 'Z';
  BRAM_Dout_A(28) <= 'Z';
  BRAM_Dout_A(27) <= 'Z';
  BRAM_Dout_A(26) <= 'Z';
  BRAM_Dout_A(25) <= 'Z';
  BRAM_Dout_A(24) <= 'Z';
  BRAM_Dout_A(23) <= 'Z';
  BRAM_Dout_A(22) <= 'Z';
  BRAM_Dout_A(21) <= 'Z';
  BRAM_Dout_A(20) <= 'Z';
  BRAM_Dout_A(19) <= 'Z';
  BRAM_Dout_A(18) <= 'Z';
  BRAM_Dout_A(17) <= 'Z';
  BRAM_Dout_A(16) <= 'Z';
  BRAM_Dout_A(15) <= 'Z';
  BRAM_Dout_A(14) <= 'Z';
  BRAM_Dout_A(13) <= 'Z';
  BRAM_Dout_A(12) <= 'Z';
  BRAM_Dout_A(11) <= 'Z';
  BRAM_Dout_A(10) <= 'Z';
  BRAM_Dout_A(9) <= 'Z';
  BRAM_Dout_A(8) <= 'Z';
  BRAM_Dout_A(7) <= 'Z';
  BRAM_Dout_A(6) <= 'Z';
  BRAM_Dout_A(5) <= 'Z';
  BRAM_Dout_A(4) <= 'Z';
  BRAM_Dout_A(3) <= 'Z';
  BRAM_Dout_A(2) <= 'Z';
  BRAM_Dout_A(1) <= 'Z';
  BRAM_Dout_A(0) <= 'Z';
  BRAM_WEN_A(3) <= 'Z';
  BRAM_WEN_A(2) <= 'Z';
  BRAM_WEN_A(1) <= 'Z';
  BRAM_WEN_A(0) <= 'Z';
  Sl_DBus(31) <= 'Z';
  Sl_DBus(30) <= 'Z';
  Sl_DBus(29) <= 'Z';
  Sl_DBus(28) <= 'Z';
  Sl_DBus(27) <= 'Z';
  Sl_DBus(26) <= 'Z';
  Sl_DBus(25) <= 'Z';
  Sl_DBus(24) <= 'Z';
  Sl_DBus(23) <= 'Z';
  Sl_DBus(22) <= 'Z';
  Sl_DBus(21) <= 'Z';
  Sl_DBus(20) <= 'Z';
  Sl_DBus(19) <= 'Z';
  Sl_DBus(18) <= 'Z';
  Sl_DBus(17) <= 'Z';
  Sl_DBus(16) <= 'Z';
  Sl_DBus(15) <= 'Z';
  Sl_DBus(14) <= 'Z';
  Sl_DBus(13) <= 'Z';
  Sl_DBus(12) <= 'Z';
  Sl_DBus(11) <= 'Z';
  Sl_DBus(10) <= 'Z';
  Sl_DBus(9) <= 'Z';
  Sl_DBus(8) <= 'Z';
  Sl_DBus(7) <= 'Z';
  Sl_DBus(6) <= 'Z';
  Sl_DBus(5) <= 'Z';
  Sl_DBus(4) <= 'Z';
  Sl_DBus(3) <= 'Z';
  Sl_DBus(2) <= 'Z';
  Sl_DBus(1) <= 'Z';
  Sl_DBus(0) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_iomodule_0_0 is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    IO_Addr_Strobe : out STD_LOGIC;
    IO_Read_Strobe : out STD_LOGIC;
    IO_Write_Strobe : out STD_LOGIC;
    IO_Address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Byte_Enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_Write_Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Read_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_Ready : in STD_LOGIC;
    UART_Rx : in STD_LOGIC;
    UART_Tx : out STD_LOGIC;
    UART_Interrupt : out STD_LOGIC;
    FIT1_Toggle : out STD_LOGIC;
    INTC_Interrupt : in STD_LOGIC_VECTOR ( 0 to 0 );
    INTC_IRQ : out STD_LOGIC;
    INTC_Processor_Ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    INTC_Interrupt_Address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    INTC_IRQ_OUT : out STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_iomodule_0_0 : entity is "bd_fc5c_iomodule_0_0";
end microblaze_mcs_0_bd_fc5c_iomodule_0_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_iomodule_0_0 is
begin
  FIT1_Toggle <= 'Z';
  INTC_IRQ <= 'Z';
  INTC_IRQ_OUT <= 'Z';
  IO_Addr_Strobe <= 'Z';
  IO_Read_Strobe <= 'Z';
  IO_Write_Strobe <= 'Z';
  Sl_CE <= 'Z';
  Sl_Ready <= 'Z';
  Sl_UE <= 'Z';
  Sl_Wait <= 'Z';
  UART_Interrupt <= 'Z';
  UART_Tx <= 'Z';
  INTC_Interrupt_Address(0) <= 'Z';
  INTC_Interrupt_Address(1) <= 'Z';
  INTC_Interrupt_Address(2) <= 'Z';
  INTC_Interrupt_Address(3) <= 'Z';
  INTC_Interrupt_Address(4) <= 'Z';
  INTC_Interrupt_Address(5) <= 'Z';
  INTC_Interrupt_Address(6) <= 'Z';
  INTC_Interrupt_Address(7) <= 'Z';
  INTC_Interrupt_Address(8) <= 'Z';
  INTC_Interrupt_Address(9) <= 'Z';
  INTC_Interrupt_Address(10) <= 'Z';
  INTC_Interrupt_Address(11) <= 'Z';
  INTC_Interrupt_Address(12) <= 'Z';
  INTC_Interrupt_Address(13) <= 'Z';
  INTC_Interrupt_Address(14) <= 'Z';
  INTC_Interrupt_Address(15) <= 'Z';
  INTC_Interrupt_Address(16) <= 'Z';
  INTC_Interrupt_Address(17) <= 'Z';
  INTC_Interrupt_Address(18) <= 'Z';
  INTC_Interrupt_Address(19) <= 'Z';
  INTC_Interrupt_Address(20) <= 'Z';
  INTC_Interrupt_Address(21) <= 'Z';
  INTC_Interrupt_Address(22) <= 'Z';
  INTC_Interrupt_Address(23) <= 'Z';
  INTC_Interrupt_Address(24) <= 'Z';
  INTC_Interrupt_Address(25) <= 'Z';
  INTC_Interrupt_Address(26) <= 'Z';
  INTC_Interrupt_Address(27) <= 'Z';
  INTC_Interrupt_Address(28) <= 'Z';
  INTC_Interrupt_Address(29) <= 'Z';
  INTC_Interrupt_Address(30) <= 'Z';
  INTC_Interrupt_Address(31) <= 'Z';
  IO_Address(0) <= 'Z';
  IO_Address(1) <= 'Z';
  IO_Address(2) <= 'Z';
  IO_Address(3) <= 'Z';
  IO_Address(4) <= 'Z';
  IO_Address(5) <= 'Z';
  IO_Address(6) <= 'Z';
  IO_Address(7) <= 'Z';
  IO_Address(8) <= 'Z';
  IO_Address(9) <= 'Z';
  IO_Address(10) <= 'Z';
  IO_Address(11) <= 'Z';
  IO_Address(12) <= 'Z';
  IO_Address(13) <= 'Z';
  IO_Address(14) <= 'Z';
  IO_Address(15) <= 'Z';
  IO_Address(16) <= 'Z';
  IO_Address(17) <= 'Z';
  IO_Address(18) <= 'Z';
  IO_Address(19) <= 'Z';
  IO_Address(20) <= 'Z';
  IO_Address(21) <= 'Z';
  IO_Address(22) <= 'Z';
  IO_Address(23) <= 'Z';
  IO_Address(24) <= 'Z';
  IO_Address(25) <= 'Z';
  IO_Address(26) <= 'Z';
  IO_Address(27) <= 'Z';
  IO_Address(28) <= 'Z';
  IO_Address(29) <= 'Z';
  IO_Address(30) <= 'Z';
  IO_Address(31) <= 'Z';
  IO_Byte_Enable(0) <= 'Z';
  IO_Byte_Enable(1) <= 'Z';
  IO_Byte_Enable(2) <= 'Z';
  IO_Byte_Enable(3) <= 'Z';
  IO_Write_Data(0) <= 'Z';
  IO_Write_Data(1) <= 'Z';
  IO_Write_Data(2) <= 'Z';
  IO_Write_Data(3) <= 'Z';
  IO_Write_Data(4) <= 'Z';
  IO_Write_Data(5) <= 'Z';
  IO_Write_Data(6) <= 'Z';
  IO_Write_Data(7) <= 'Z';
  IO_Write_Data(8) <= 'Z';
  IO_Write_Data(9) <= 'Z';
  IO_Write_Data(10) <= 'Z';
  IO_Write_Data(11) <= 'Z';
  IO_Write_Data(12) <= 'Z';
  IO_Write_Data(13) <= 'Z';
  IO_Write_Data(14) <= 'Z';
  IO_Write_Data(15) <= 'Z';
  IO_Write_Data(16) <= 'Z';
  IO_Write_Data(17) <= 'Z';
  IO_Write_Data(18) <= 'Z';
  IO_Write_Data(19) <= 'Z';
  IO_Write_Data(20) <= 'Z';
  IO_Write_Data(21) <= 'Z';
  IO_Write_Data(22) <= 'Z';
  IO_Write_Data(23) <= 'Z';
  IO_Write_Data(24) <= 'Z';
  IO_Write_Data(25) <= 'Z';
  IO_Write_Data(26) <= 'Z';
  IO_Write_Data(27) <= 'Z';
  IO_Write_Data(28) <= 'Z';
  IO_Write_Data(29) <= 'Z';
  IO_Write_Data(30) <= 'Z';
  IO_Write_Data(31) <= 'Z';
  Sl_DBus(31) <= 'Z';
  Sl_DBus(30) <= 'Z';
  Sl_DBus(29) <= 'Z';
  Sl_DBus(28) <= 'Z';
  Sl_DBus(27) <= 'Z';
  Sl_DBus(26) <= 'Z';
  Sl_DBus(25) <= 'Z';
  Sl_DBus(24) <= 'Z';
  Sl_DBus(23) <= 'Z';
  Sl_DBus(22) <= 'Z';
  Sl_DBus(21) <= 'Z';
  Sl_DBus(20) <= 'Z';
  Sl_DBus(19) <= 'Z';
  Sl_DBus(18) <= 'Z';
  Sl_DBus(17) <= 'Z';
  Sl_DBus(16) <= 'Z';
  Sl_DBus(15) <= 'Z';
  Sl_DBus(14) <= 'Z';
  Sl_DBus(13) <= 'Z';
  Sl_DBus(12) <= 'Z';
  Sl_DBus(11) <= 'Z';
  Sl_DBus(10) <= 'Z';
  Sl_DBus(9) <= 'Z';
  Sl_DBus(8) <= 'Z';
  Sl_DBus(7) <= 'Z';
  Sl_DBus(6) <= 'Z';
  Sl_DBus(5) <= 'Z';
  Sl_DBus(4) <= 'Z';
  Sl_DBus(3) <= 'Z';
  Sl_DBus(2) <= 'Z';
  Sl_DBus(1) <= 'Z';
  Sl_DBus(0) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_lmb_bram_I_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_lmb_bram_I_0 : entity is "bd_fc5c_lmb_bram_I_0";
end microblaze_mcs_0_bd_fc5c_lmb_bram_I_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_lmb_bram_I_0 is
begin
  douta(0) <= 'Z';
  douta(1) <= 'Z';
  douta(2) <= 'Z';
  douta(3) <= 'Z';
  douta(4) <= 'Z';
  douta(5) <= 'Z';
  douta(6) <= 'Z';
  douta(7) <= 'Z';
  douta(8) <= 'Z';
  douta(9) <= 'Z';
  douta(10) <= 'Z';
  douta(11) <= 'Z';
  douta(12) <= 'Z';
  douta(13) <= 'Z';
  douta(14) <= 'Z';
  douta(15) <= 'Z';
  douta(16) <= 'Z';
  douta(17) <= 'Z';
  douta(18) <= 'Z';
  douta(19) <= 'Z';
  douta(20) <= 'Z';
  douta(21) <= 'Z';
  douta(22) <= 'Z';
  douta(23) <= 'Z';
  douta(24) <= 'Z';
  douta(25) <= 'Z';
  douta(26) <= 'Z';
  douta(27) <= 'Z';
  douta(28) <= 'Z';
  douta(29) <= 'Z';
  douta(30) <= 'Z';
  douta(31) <= 'Z';
  doutb(0) <= 'Z';
  doutb(1) <= 'Z';
  doutb(2) <= 'Z';
  doutb(3) <= 'Z';
  doutb(4) <= 'Z';
  doutb(5) <= 'Z';
  doutb(6) <= 'Z';
  doutb(7) <= 'Z';
  doutb(8) <= 'Z';
  doutb(9) <= 'Z';
  doutb(10) <= 'Z';
  doutb(11) <= 'Z';
  doutb(12) <= 'Z';
  doutb(13) <= 'Z';
  doutb(14) <= 'Z';
  doutb(15) <= 'Z';
  doutb(16) <= 'Z';
  doutb(17) <= 'Z';
  doutb(18) <= 'Z';
  doutb(19) <= 'Z';
  doutb(20) <= 'Z';
  doutb(21) <= 'Z';
  doutb(22) <= 'Z';
  doutb(23) <= 'Z';
  doutb(24) <= 'Z';
  doutb(25) <= 'Z';
  doutb(26) <= 'Z';
  doutb(27) <= 'Z';
  doutb(28) <= 'Z';
  doutb(29) <= 'Z';
  doutb(30) <= 'Z';
  doutb(31) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_microblaze_I_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_microblaze_I_0 : entity is "bd_fc5c_microblaze_I_0";
end microblaze_mcs_0_bd_fc5c_microblaze_I_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_microblaze_I_0 is
begin
  D_AS <= 'Z';
  IFetch <= 'Z';
  I_AS <= 'Z';
  Read_Strobe <= 'Z';
  Write_Strobe <= 'Z';
  Byte_Enable(3) <= 'Z';
  Byte_Enable(2) <= 'Z';
  Byte_Enable(1) <= 'Z';
  Byte_Enable(0) <= 'Z';
  Data_Addr(31) <= 'Z';
  Data_Addr(30) <= 'Z';
  Data_Addr(29) <= 'Z';
  Data_Addr(28) <= 'Z';
  Data_Addr(27) <= 'Z';
  Data_Addr(26) <= 'Z';
  Data_Addr(25) <= 'Z';
  Data_Addr(24) <= 'Z';
  Data_Addr(23) <= 'Z';
  Data_Addr(22) <= 'Z';
  Data_Addr(21) <= 'Z';
  Data_Addr(20) <= 'Z';
  Data_Addr(19) <= 'Z';
  Data_Addr(18) <= 'Z';
  Data_Addr(17) <= 'Z';
  Data_Addr(16) <= 'Z';
  Data_Addr(15) <= 'Z';
  Data_Addr(14) <= 'Z';
  Data_Addr(13) <= 'Z';
  Data_Addr(12) <= 'Z';
  Data_Addr(11) <= 'Z';
  Data_Addr(10) <= 'Z';
  Data_Addr(9) <= 'Z';
  Data_Addr(8) <= 'Z';
  Data_Addr(7) <= 'Z';
  Data_Addr(6) <= 'Z';
  Data_Addr(5) <= 'Z';
  Data_Addr(4) <= 'Z';
  Data_Addr(3) <= 'Z';
  Data_Addr(2) <= 'Z';
  Data_Addr(1) <= 'Z';
  Data_Addr(0) <= 'Z';
  Data_Write(31) <= 'Z';
  Data_Write(30) <= 'Z';
  Data_Write(29) <= 'Z';
  Data_Write(28) <= 'Z';
  Data_Write(27) <= 'Z';
  Data_Write(26) <= 'Z';
  Data_Write(25) <= 'Z';
  Data_Write(24) <= 'Z';
  Data_Write(23) <= 'Z';
  Data_Write(22) <= 'Z';
  Data_Write(21) <= 'Z';
  Data_Write(20) <= 'Z';
  Data_Write(19) <= 'Z';
  Data_Write(18) <= 'Z';
  Data_Write(17) <= 'Z';
  Data_Write(16) <= 'Z';
  Data_Write(15) <= 'Z';
  Data_Write(14) <= 'Z';
  Data_Write(13) <= 'Z';
  Data_Write(12) <= 'Z';
  Data_Write(11) <= 'Z';
  Data_Write(10) <= 'Z';
  Data_Write(9) <= 'Z';
  Data_Write(8) <= 'Z';
  Data_Write(7) <= 'Z';
  Data_Write(6) <= 'Z';
  Data_Write(5) <= 'Z';
  Data_Write(4) <= 'Z';
  Data_Write(3) <= 'Z';
  Data_Write(2) <= 'Z';
  Data_Write(1) <= 'Z';
  Data_Write(0) <= 'Z';
  Instr_Addr(31) <= 'Z';
  Instr_Addr(30) <= 'Z';
  Instr_Addr(29) <= 'Z';
  Instr_Addr(28) <= 'Z';
  Instr_Addr(27) <= 'Z';
  Instr_Addr(26) <= 'Z';
  Instr_Addr(25) <= 'Z';
  Instr_Addr(24) <= 'Z';
  Instr_Addr(23) <= 'Z';
  Instr_Addr(22) <= 'Z';
  Instr_Addr(21) <= 'Z';
  Instr_Addr(20) <= 'Z';
  Instr_Addr(19) <= 'Z';
  Instr_Addr(18) <= 'Z';
  Instr_Addr(17) <= 'Z';
  Instr_Addr(16) <= 'Z';
  Instr_Addr(15) <= 'Z';
  Instr_Addr(14) <= 'Z';
  Instr_Addr(13) <= 'Z';
  Instr_Addr(12) <= 'Z';
  Instr_Addr(11) <= 'Z';
  Instr_Addr(10) <= 'Z';
  Instr_Addr(9) <= 'Z';
  Instr_Addr(8) <= 'Z';
  Instr_Addr(7) <= 'Z';
  Instr_Addr(6) <= 'Z';
  Instr_Addr(5) <= 'Z';
  Instr_Addr(4) <= 'Z';
  Instr_Addr(3) <= 'Z';
  Instr_Addr(2) <= 'Z';
  Instr_Addr(1) <= 'Z';
  Instr_Addr(0) <= 'Z';
  Interrupt_Ack(1) <= 'Z';
  Interrupt_Ack(0) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c_rst_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c_rst_0_0 : entity is "bd_fc5c_rst_0_0";
end microblaze_mcs_0_bd_fc5c_rst_0_0;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c_rst_0_0 is
begin
  mb_reset <= 'Z';
  bus_struct_reset(0) <= 'Z';
  interconnect_aresetn(0) <= 'Z';
  peripheral_aresetn(0) <= 'Z';
  peripheral_reset(0) <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0_bd_fc5c is
  port (
    Clk : in STD_LOGIC;
    FIT1_Toggle : out STD_LOGIC;
    INTC_IRQ : out STD_LOGIC;
    INTC_Interrupt : in STD_LOGIC_VECTOR ( 0 to 0 );
    IO_addr_strobe : out STD_LOGIC;
    IO_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_byte_enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_read_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_read_strobe : out STD_LOGIC;
    IO_ready : in STD_LOGIC;
    IO_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_write_strobe : out STD_LOGIC;
    Reset : in STD_LOGIC;
    UART_Interrupt : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_mcs_0_bd_fc5c : entity is "bd_fc5c";
  attribute hw_handoff : string;
  attribute hw_handoff of microblaze_mcs_0_bd_fc5c : entity is "microblaze_mcs_0.hwdef";
end microblaze_mcs_0_bd_fc5c;

architecture STRUCTURE of microblaze_mcs_0_bd_fc5c is
  signal IO_Rst : STD_LOGIC;
  signal LMB_Rst : STD_LOGIC;
  signal MB_Reset : STD_LOGIC;
  signal dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_ADDRSTROBE : STD_LOGIC;
  signal dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal dlmb_CE : STD_LOGIC;
  signal dlmb_LMB_Rst : STD_LOGIC;
  signal dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_READSTROBE : STD_LOGIC;
  signal dlmb_READY : STD_LOGIC;
  signal dlmb_UE : STD_LOGIC;
  signal dlmb_WAIT : STD_LOGIC;
  signal dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_WRITESTROBE : STD_LOGIC;
  signal dlmb_port_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_port_CLK : STD_LOGIC;
  signal dlmb_port_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_port_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dlmb_port_EN : STD_LOGIC;
  signal dlmb_port_RST : STD_LOGIC;
  signal dlmb_port_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal dlmb_sl_0_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_sl_0_ADDRSTROBE : STD_LOGIC;
  signal dlmb_sl_0_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal dlmb_sl_0_CE : STD_LOGIC;
  signal dlmb_sl_0_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_sl_0_READSTROBE : STD_LOGIC;
  signal dlmb_sl_0_READY : STD_LOGIC;
  signal dlmb_sl_0_UE : STD_LOGIC;
  signal dlmb_sl_0_WAIT : STD_LOGIC;
  signal dlmb_sl_0_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_sl_0_WRITESTROBE : STD_LOGIC;
  signal dlmb_sl_1_CE : STD_LOGIC;
  signal dlmb_sl_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_sl_1_READY : STD_LOGIC;
  signal dlmb_sl_1_UE : STD_LOGIC;
  signal dlmb_sl_1_WAIT : STD_LOGIC;
  signal ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_ADDRSTROBE : STD_LOGIC;
  signal ilmb_CE : STD_LOGIC;
  signal ilmb_LMB_Rst : STD_LOGIC;
  signal ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_READSTROBE : STD_LOGIC;
  signal ilmb_READY : STD_LOGIC;
  signal ilmb_UE : STD_LOGIC;
  signal ilmb_WAIT : STD_LOGIC;
  signal ilmb_port_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_port_CLK : STD_LOGIC;
  signal ilmb_port_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_port_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ilmb_port_EN : STD_LOGIC;
  signal ilmb_port_RST : STD_LOGIC;
  signal ilmb_port_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal ilmb_sl_0_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_sl_0_ADDRSTROBE : STD_LOGIC;
  signal ilmb_sl_0_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal ilmb_sl_0_CE : STD_LOGIC;
  signal ilmb_sl_0_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_sl_0_READSTROBE : STD_LOGIC;
  signal ilmb_sl_0_READY : STD_LOGIC;
  signal ilmb_sl_0_UE : STD_LOGIC;
  signal ilmb_sl_0_WAIT : STD_LOGIC;
  signal ilmb_sl_0_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_sl_0_WRITESTROBE : STD_LOGIC;
  signal iomodule_0_INTC_Irq_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal iomodule_0_INTC_Irq_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal iomodule_0_INTC_Irq_INTERRUPT : STD_LOGIC;
  signal NLW_rst_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of dlmb : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of dlmb : label is "lmb_v10,Vivado 2016.2";
  attribute bmm_info_address_space : string;
  attribute bmm_info_address_space of dlmb_cntlr : label is "byte  0x00000000 32 > bd_fc5c lmb_bram_I";
  attribute syn_black_box of dlmb_cntlr : label is "TRUE";
  attribute x_core_info of dlmb_cntlr : label is "lmb_bram_if_cntlr,Vivado 2016.2";
  attribute syn_black_box of ilmb : label is "TRUE";
  attribute x_core_info of ilmb : label is "lmb_v10,Vivado 2016.2";
  attribute syn_black_box of ilmb_cntlr : label is "TRUE";
  attribute x_core_info of ilmb_cntlr : label is "lmb_bram_if_cntlr,Vivado 2016.2";
  attribute syn_black_box of iomodule_0 : label is "TRUE";
  attribute x_core_info of iomodule_0 : label is "iomodule,Vivado 2016.2";
  attribute syn_black_box of lmb_bram_I : label is "TRUE";
  attribute x_core_info of lmb_bram_I : label is "blk_mem_gen_v8_3_3,Vivado 2016.2";
  attribute bmm_info_processor : string;
  attribute bmm_info_processor of microblaze_I : label is "microblaze-le > bd_fc5c dlmb_cntlr";
  attribute syn_black_box of microblaze_I : label is "TRUE";
  attribute x_core_info of microblaze_I : label is "MicroBlaze,Vivado 2016.2";
  attribute syn_black_box of rst_0 : label is "TRUE";
  attribute x_core_info of rst_0 : label is "proc_sys_reset,Vivado 2016.2";
begin
dlmb: entity work.microblaze_mcs_0_bd_fc5c_dlmb_0
     port map (
      LMB_ABus(0 to 31) => dlmb_sl_0_ABUS(0 to 31),
      LMB_AddrStrobe => dlmb_sl_0_ADDRSTROBE,
      LMB_BE(0 to 3) => dlmb_sl_0_BE(0 to 3),
      LMB_CE => dlmb_CE,
      LMB_Clk => Clk,
      LMB_ReadDBus(0 to 31) => dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => dlmb_sl_0_READSTROBE,
      LMB_Ready => dlmb_READY,
      LMB_Rst => dlmb_LMB_Rst,
      LMB_UE => dlmb_UE,
      LMB_Wait => dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => dlmb_sl_0_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => dlmb_sl_0_WRITESTROBE,
      M_ABus(0 to 31) => dlmb_ABUS(0 to 31),
      M_AddrStrobe => dlmb_ADDRSTROBE,
      M_BE(0 to 3) => dlmb_BE(0 to 3),
      M_DBus(0 to 31) => dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => dlmb_READSTROBE,
      M_WriteStrobe => dlmb_WRITESTROBE,
      SYS_Rst => LMB_Rst,
      Sl_CE(0) => dlmb_sl_0_CE,
      Sl_CE(1) => dlmb_sl_1_CE,
      Sl_DBus(0 to 31) => dlmb_sl_0_READDBUS(0 to 31),
      Sl_DBus(32 to 63) => dlmb_sl_1_READDBUS(0 to 31),
      Sl_Ready(0) => dlmb_sl_0_READY,
      Sl_Ready(1) => dlmb_sl_1_READY,
      Sl_UE(0) => dlmb_sl_0_UE,
      Sl_UE(1) => dlmb_sl_1_UE,
      Sl_Wait(0) => dlmb_sl_0_WAIT,
      Sl_Wait(1) => dlmb_sl_1_WAIT
    );
dlmb_cntlr: entity work.microblaze_mcs_0_bd_fc5c_dlmb_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => dlmb_port_ADDR(0 to 31),
      BRAM_Clk_A => dlmb_port_CLK,
      BRAM_Din_A(0) => dlmb_port_DOUT(31),
      BRAM_Din_A(1) => dlmb_port_DOUT(30),
      BRAM_Din_A(2) => dlmb_port_DOUT(29),
      BRAM_Din_A(3) => dlmb_port_DOUT(28),
      BRAM_Din_A(4) => dlmb_port_DOUT(27),
      BRAM_Din_A(5) => dlmb_port_DOUT(26),
      BRAM_Din_A(6) => dlmb_port_DOUT(25),
      BRAM_Din_A(7) => dlmb_port_DOUT(24),
      BRAM_Din_A(8) => dlmb_port_DOUT(23),
      BRAM_Din_A(9) => dlmb_port_DOUT(22),
      BRAM_Din_A(10) => dlmb_port_DOUT(21),
      BRAM_Din_A(11) => dlmb_port_DOUT(20),
      BRAM_Din_A(12) => dlmb_port_DOUT(19),
      BRAM_Din_A(13) => dlmb_port_DOUT(18),
      BRAM_Din_A(14) => dlmb_port_DOUT(17),
      BRAM_Din_A(15) => dlmb_port_DOUT(16),
      BRAM_Din_A(16) => dlmb_port_DOUT(15),
      BRAM_Din_A(17) => dlmb_port_DOUT(14),
      BRAM_Din_A(18) => dlmb_port_DOUT(13),
      BRAM_Din_A(19) => dlmb_port_DOUT(12),
      BRAM_Din_A(20) => dlmb_port_DOUT(11),
      BRAM_Din_A(21) => dlmb_port_DOUT(10),
      BRAM_Din_A(22) => dlmb_port_DOUT(9),
      BRAM_Din_A(23) => dlmb_port_DOUT(8),
      BRAM_Din_A(24) => dlmb_port_DOUT(7),
      BRAM_Din_A(25) => dlmb_port_DOUT(6),
      BRAM_Din_A(26) => dlmb_port_DOUT(5),
      BRAM_Din_A(27) => dlmb_port_DOUT(4),
      BRAM_Din_A(28) => dlmb_port_DOUT(3),
      BRAM_Din_A(29) => dlmb_port_DOUT(2),
      BRAM_Din_A(30) => dlmb_port_DOUT(1),
      BRAM_Din_A(31) => dlmb_port_DOUT(0),
      BRAM_Dout_A(0 to 31) => dlmb_port_DIN(0 to 31),
      BRAM_EN_A => dlmb_port_EN,
      BRAM_Rst_A => dlmb_port_RST,
      BRAM_WEN_A(0 to 3) => dlmb_port_WE(0 to 3),
      LMB_ABus(0 to 31) => dlmb_sl_0_ABUS(0 to 31),
      LMB_AddrStrobe => dlmb_sl_0_ADDRSTROBE,
      LMB_BE(0 to 3) => dlmb_sl_0_BE(0 to 3),
      LMB_Clk => Clk,
      LMB_ReadStrobe => dlmb_sl_0_READSTROBE,
      LMB_Rst => dlmb_LMB_Rst,
      LMB_WriteDBus(0 to 31) => dlmb_sl_0_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => dlmb_sl_0_WRITESTROBE,
      Sl_CE => dlmb_sl_0_CE,
      Sl_DBus(0 to 31) => dlmb_sl_0_READDBUS(0 to 31),
      Sl_Ready => dlmb_sl_0_READY,
      Sl_UE => dlmb_sl_0_UE,
      Sl_Wait => dlmb_sl_0_WAIT
    );
ilmb: entity work.microblaze_mcs_0_bd_fc5c_ilmb_0
     port map (
      LMB_ABus(0 to 31) => ilmb_sl_0_ABUS(0 to 31),
      LMB_AddrStrobe => ilmb_sl_0_ADDRSTROBE,
      LMB_BE(0 to 3) => ilmb_sl_0_BE(0 to 3),
      LMB_CE => ilmb_CE,
      LMB_Clk => Clk,
      LMB_ReadDBus(0 to 31) => ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => ilmb_sl_0_READSTROBE,
      LMB_Ready => ilmb_READY,
      LMB_Rst => ilmb_LMB_Rst,
      LMB_UE => ilmb_UE,
      LMB_Wait => ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => ilmb_sl_0_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => ilmb_sl_0_WRITESTROBE,
      M_ABus(0 to 31) => ilmb_ABUS(0 to 31),
      M_AddrStrobe => ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => LMB_Rst,
      Sl_CE(0) => ilmb_sl_0_CE,
      Sl_DBus(0 to 31) => ilmb_sl_0_READDBUS(0 to 31),
      Sl_Ready(0) => ilmb_sl_0_READY,
      Sl_UE(0) => ilmb_sl_0_UE,
      Sl_Wait(0) => ilmb_sl_0_WAIT
    );
ilmb_cntlr: entity work.microblaze_mcs_0_bd_fc5c_ilmb_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => ilmb_port_ADDR(0 to 31),
      BRAM_Clk_A => ilmb_port_CLK,
      BRAM_Din_A(0) => ilmb_port_DOUT(31),
      BRAM_Din_A(1) => ilmb_port_DOUT(30),
      BRAM_Din_A(2) => ilmb_port_DOUT(29),
      BRAM_Din_A(3) => ilmb_port_DOUT(28),
      BRAM_Din_A(4) => ilmb_port_DOUT(27),
      BRAM_Din_A(5) => ilmb_port_DOUT(26),
      BRAM_Din_A(6) => ilmb_port_DOUT(25),
      BRAM_Din_A(7) => ilmb_port_DOUT(24),
      BRAM_Din_A(8) => ilmb_port_DOUT(23),
      BRAM_Din_A(9) => ilmb_port_DOUT(22),
      BRAM_Din_A(10) => ilmb_port_DOUT(21),
      BRAM_Din_A(11) => ilmb_port_DOUT(20),
      BRAM_Din_A(12) => ilmb_port_DOUT(19),
      BRAM_Din_A(13) => ilmb_port_DOUT(18),
      BRAM_Din_A(14) => ilmb_port_DOUT(17),
      BRAM_Din_A(15) => ilmb_port_DOUT(16),
      BRAM_Din_A(16) => ilmb_port_DOUT(15),
      BRAM_Din_A(17) => ilmb_port_DOUT(14),
      BRAM_Din_A(18) => ilmb_port_DOUT(13),
      BRAM_Din_A(19) => ilmb_port_DOUT(12),
      BRAM_Din_A(20) => ilmb_port_DOUT(11),
      BRAM_Din_A(21) => ilmb_port_DOUT(10),
      BRAM_Din_A(22) => ilmb_port_DOUT(9),
      BRAM_Din_A(23) => ilmb_port_DOUT(8),
      BRAM_Din_A(24) => ilmb_port_DOUT(7),
      BRAM_Din_A(25) => ilmb_port_DOUT(6),
      BRAM_Din_A(26) => ilmb_port_DOUT(5),
      BRAM_Din_A(27) => ilmb_port_DOUT(4),
      BRAM_Din_A(28) => ilmb_port_DOUT(3),
      BRAM_Din_A(29) => ilmb_port_DOUT(2),
      BRAM_Din_A(30) => ilmb_port_DOUT(1),
      BRAM_Din_A(31) => ilmb_port_DOUT(0),
      BRAM_Dout_A(0 to 31) => ilmb_port_DIN(0 to 31),
      BRAM_EN_A => ilmb_port_EN,
      BRAM_Rst_A => ilmb_port_RST,
      BRAM_WEN_A(0 to 3) => ilmb_port_WE(0 to 3),
      LMB_ABus(0 to 31) => ilmb_sl_0_ABUS(0 to 31),
      LMB_AddrStrobe => ilmb_sl_0_ADDRSTROBE,
      LMB_BE(0 to 3) => ilmb_sl_0_BE(0 to 3),
      LMB_Clk => Clk,
      LMB_ReadStrobe => ilmb_sl_0_READSTROBE,
      LMB_Rst => ilmb_LMB_Rst,
      LMB_WriteDBus(0 to 31) => ilmb_sl_0_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => ilmb_sl_0_WRITESTROBE,
      Sl_CE => ilmb_sl_0_CE,
      Sl_DBus(0 to 31) => ilmb_sl_0_READDBUS(0 to 31),
      Sl_Ready => ilmb_sl_0_READY,
      Sl_UE => ilmb_sl_0_UE,
      Sl_Wait => ilmb_sl_0_WAIT
    );
iomodule_0: entity work.microblaze_mcs_0_bd_fc5c_iomodule_0_0
     port map (
      Clk => Clk,
      FIT1_Toggle => FIT1_Toggle,
      INTC_IRQ => iomodule_0_INTC_Irq_INTERRUPT,
      INTC_IRQ_OUT => INTC_IRQ,
      INTC_Interrupt(0) => INTC_Interrupt(0),
      INTC_Interrupt_Address(31 downto 0) => iomodule_0_INTC_Irq_ADDRESS(31 downto 0),
      INTC_Processor_Ack(1) => iomodule_0_INTC_Irq_ACK(0),
      INTC_Processor_Ack(0) => iomodule_0_INTC_Irq_ACK(1),
      IO_Addr_Strobe => IO_addr_strobe,
      IO_Address(31 downto 0) => IO_address(31 downto 0),
      IO_Byte_Enable(3 downto 0) => IO_byte_enable(3 downto 0),
      IO_Read_Data(31 downto 0) => IO_read_data(31 downto 0),
      IO_Read_Strobe => IO_read_strobe,
      IO_Ready => IO_ready,
      IO_Write_Data(31 downto 0) => IO_write_data(31 downto 0),
      IO_Write_Strobe => IO_write_strobe,
      LMB_ABus(0 to 31) => dlmb_sl_0_ABUS(0 to 31),
      LMB_AddrStrobe => dlmb_sl_0_ADDRSTROBE,
      LMB_BE(0 to 3) => dlmb_sl_0_BE(0 to 3),
      LMB_ReadStrobe => dlmb_sl_0_READSTROBE,
      LMB_WriteDBus(0 to 31) => dlmb_sl_0_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => dlmb_sl_0_WRITESTROBE,
      Rst => IO_Rst,
      Sl_CE => dlmb_sl_1_CE,
      Sl_DBus(0 to 31) => dlmb_sl_1_READDBUS(0 to 31),
      Sl_Ready => dlmb_sl_1_READY,
      Sl_UE => dlmb_sl_1_UE,
      Sl_Wait => dlmb_sl_1_WAIT,
      UART_Interrupt => UART_Interrupt,
      UART_Rx => UART_rxd,
      UART_Tx => UART_txd
    );
lmb_bram_I: entity work.microblaze_mcs_0_bd_fc5c_lmb_bram_I_0
     port map (
      addra(31) => dlmb_port_ADDR(0),
      addra(30) => dlmb_port_ADDR(1),
      addra(29) => dlmb_port_ADDR(2),
      addra(28) => dlmb_port_ADDR(3),
      addra(27) => dlmb_port_ADDR(4),
      addra(26) => dlmb_port_ADDR(5),
      addra(25) => dlmb_port_ADDR(6),
      addra(24) => dlmb_port_ADDR(7),
      addra(23) => dlmb_port_ADDR(8),
      addra(22) => dlmb_port_ADDR(9),
      addra(21) => dlmb_port_ADDR(10),
      addra(20) => dlmb_port_ADDR(11),
      addra(19) => dlmb_port_ADDR(12),
      addra(18) => dlmb_port_ADDR(13),
      addra(17) => dlmb_port_ADDR(14),
      addra(16) => dlmb_port_ADDR(15),
      addra(15) => dlmb_port_ADDR(16),
      addra(14) => dlmb_port_ADDR(17),
      addra(13) => dlmb_port_ADDR(18),
      addra(12) => dlmb_port_ADDR(19),
      addra(11) => dlmb_port_ADDR(20),
      addra(10) => dlmb_port_ADDR(21),
      addra(9) => dlmb_port_ADDR(22),
      addra(8) => dlmb_port_ADDR(23),
      addra(7) => dlmb_port_ADDR(24),
      addra(6) => dlmb_port_ADDR(25),
      addra(5) => dlmb_port_ADDR(26),
      addra(4) => dlmb_port_ADDR(27),
      addra(3) => dlmb_port_ADDR(28),
      addra(2) => dlmb_port_ADDR(29),
      addra(1) => dlmb_port_ADDR(30),
      addra(0) => dlmb_port_ADDR(31),
      addrb(31) => ilmb_port_ADDR(0),
      addrb(30) => ilmb_port_ADDR(1),
      addrb(29) => ilmb_port_ADDR(2),
      addrb(28) => ilmb_port_ADDR(3),
      addrb(27) => ilmb_port_ADDR(4),
      addrb(26) => ilmb_port_ADDR(5),
      addrb(25) => ilmb_port_ADDR(6),
      addrb(24) => ilmb_port_ADDR(7),
      addrb(23) => ilmb_port_ADDR(8),
      addrb(22) => ilmb_port_ADDR(9),
      addrb(21) => ilmb_port_ADDR(10),
      addrb(20) => ilmb_port_ADDR(11),
      addrb(19) => ilmb_port_ADDR(12),
      addrb(18) => ilmb_port_ADDR(13),
      addrb(17) => ilmb_port_ADDR(14),
      addrb(16) => ilmb_port_ADDR(15),
      addrb(15) => ilmb_port_ADDR(16),
      addrb(14) => ilmb_port_ADDR(17),
      addrb(13) => ilmb_port_ADDR(18),
      addrb(12) => ilmb_port_ADDR(19),
      addrb(11) => ilmb_port_ADDR(20),
      addrb(10) => ilmb_port_ADDR(21),
      addrb(9) => ilmb_port_ADDR(22),
      addrb(8) => ilmb_port_ADDR(23),
      addrb(7) => ilmb_port_ADDR(24),
      addrb(6) => ilmb_port_ADDR(25),
      addrb(5) => ilmb_port_ADDR(26),
      addrb(4) => ilmb_port_ADDR(27),
      addrb(3) => ilmb_port_ADDR(28),
      addrb(2) => ilmb_port_ADDR(29),
      addrb(1) => ilmb_port_ADDR(30),
      addrb(0) => ilmb_port_ADDR(31),
      clka => dlmb_port_CLK,
      clkb => ilmb_port_CLK,
      dina(31) => dlmb_port_DIN(0),
      dina(30) => dlmb_port_DIN(1),
      dina(29) => dlmb_port_DIN(2),
      dina(28) => dlmb_port_DIN(3),
      dina(27) => dlmb_port_DIN(4),
      dina(26) => dlmb_port_DIN(5),
      dina(25) => dlmb_port_DIN(6),
      dina(24) => dlmb_port_DIN(7),
      dina(23) => dlmb_port_DIN(8),
      dina(22) => dlmb_port_DIN(9),
      dina(21) => dlmb_port_DIN(10),
      dina(20) => dlmb_port_DIN(11),
      dina(19) => dlmb_port_DIN(12),
      dina(18) => dlmb_port_DIN(13),
      dina(17) => dlmb_port_DIN(14),
      dina(16) => dlmb_port_DIN(15),
      dina(15) => dlmb_port_DIN(16),
      dina(14) => dlmb_port_DIN(17),
      dina(13) => dlmb_port_DIN(18),
      dina(12) => dlmb_port_DIN(19),
      dina(11) => dlmb_port_DIN(20),
      dina(10) => dlmb_port_DIN(21),
      dina(9) => dlmb_port_DIN(22),
      dina(8) => dlmb_port_DIN(23),
      dina(7) => dlmb_port_DIN(24),
      dina(6) => dlmb_port_DIN(25),
      dina(5) => dlmb_port_DIN(26),
      dina(4) => dlmb_port_DIN(27),
      dina(3) => dlmb_port_DIN(28),
      dina(2) => dlmb_port_DIN(29),
      dina(1) => dlmb_port_DIN(30),
      dina(0) => dlmb_port_DIN(31),
      dinb(31) => ilmb_port_DIN(0),
      dinb(30) => ilmb_port_DIN(1),
      dinb(29) => ilmb_port_DIN(2),
      dinb(28) => ilmb_port_DIN(3),
      dinb(27) => ilmb_port_DIN(4),
      dinb(26) => ilmb_port_DIN(5),
      dinb(25) => ilmb_port_DIN(6),
      dinb(24) => ilmb_port_DIN(7),
      dinb(23) => ilmb_port_DIN(8),
      dinb(22) => ilmb_port_DIN(9),
      dinb(21) => ilmb_port_DIN(10),
      dinb(20) => ilmb_port_DIN(11),
      dinb(19) => ilmb_port_DIN(12),
      dinb(18) => ilmb_port_DIN(13),
      dinb(17) => ilmb_port_DIN(14),
      dinb(16) => ilmb_port_DIN(15),
      dinb(15) => ilmb_port_DIN(16),
      dinb(14) => ilmb_port_DIN(17),
      dinb(13) => ilmb_port_DIN(18),
      dinb(12) => ilmb_port_DIN(19),
      dinb(11) => ilmb_port_DIN(20),
      dinb(10) => ilmb_port_DIN(21),
      dinb(9) => ilmb_port_DIN(22),
      dinb(8) => ilmb_port_DIN(23),
      dinb(7) => ilmb_port_DIN(24),
      dinb(6) => ilmb_port_DIN(25),
      dinb(5) => ilmb_port_DIN(26),
      dinb(4) => ilmb_port_DIN(27),
      dinb(3) => ilmb_port_DIN(28),
      dinb(2) => ilmb_port_DIN(29),
      dinb(1) => ilmb_port_DIN(30),
      dinb(0) => ilmb_port_DIN(31),
      douta(31 downto 0) => dlmb_port_DOUT(31 downto 0),
      doutb(31 downto 0) => ilmb_port_DOUT(31 downto 0),
      ena => dlmb_port_EN,
      enb => ilmb_port_EN,
      rsta => dlmb_port_RST,
      rstb => ilmb_port_RST,
      wea(3) => dlmb_port_WE(0),
      wea(2) => dlmb_port_WE(1),
      wea(1) => dlmb_port_WE(2),
      wea(0) => dlmb_port_WE(3),
      web(3) => ilmb_port_WE(0),
      web(2) => ilmb_port_WE(1),
      web(1) => ilmb_port_WE(2),
      web(0) => ilmb_port_WE(3)
    );
microblaze_I: entity work.microblaze_mcs_0_bd_fc5c_microblaze_I_0
     port map (
      Byte_Enable(0 to 3) => dlmb_BE(0 to 3),
      Clk => Clk,
      DCE => dlmb_CE,
      DReady => dlmb_READY,
      DUE => dlmb_UE,
      DWait => dlmb_WAIT,
      D_AS => dlmb_ADDRSTROBE,
      Data_Addr(0 to 31) => dlmb_ABUS(0 to 31),
      Data_Read(0 to 31) => dlmb_READDBUS(0 to 31),
      Data_Write(0 to 31) => dlmb_WRITEDBUS(0 to 31),
      ICE => ilmb_CE,
      IFetch => ilmb_READSTROBE,
      IReady => ilmb_READY,
      IUE => ilmb_UE,
      IWAIT => ilmb_WAIT,
      I_AS => ilmb_ADDRSTROBE,
      Instr(0 to 31) => ilmb_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => ilmb_ABUS(0 to 31),
      Interrupt => iomodule_0_INTC_Irq_INTERRUPT,
      Interrupt_Ack(0 to 1) => iomodule_0_INTC_Irq_ACK(0 to 1),
      Interrupt_Address(0) => iomodule_0_INTC_Irq_ADDRESS(31),
      Interrupt_Address(1) => iomodule_0_INTC_Irq_ADDRESS(30),
      Interrupt_Address(2) => iomodule_0_INTC_Irq_ADDRESS(29),
      Interrupt_Address(3) => iomodule_0_INTC_Irq_ADDRESS(28),
      Interrupt_Address(4) => iomodule_0_INTC_Irq_ADDRESS(27),
      Interrupt_Address(5) => iomodule_0_INTC_Irq_ADDRESS(26),
      Interrupt_Address(6) => iomodule_0_INTC_Irq_ADDRESS(25),
      Interrupt_Address(7) => iomodule_0_INTC_Irq_ADDRESS(24),
      Interrupt_Address(8) => iomodule_0_INTC_Irq_ADDRESS(23),
      Interrupt_Address(9) => iomodule_0_INTC_Irq_ADDRESS(22),
      Interrupt_Address(10) => iomodule_0_INTC_Irq_ADDRESS(21),
      Interrupt_Address(11) => iomodule_0_INTC_Irq_ADDRESS(20),
      Interrupt_Address(12) => iomodule_0_INTC_Irq_ADDRESS(19),
      Interrupt_Address(13) => iomodule_0_INTC_Irq_ADDRESS(18),
      Interrupt_Address(14) => iomodule_0_INTC_Irq_ADDRESS(17),
      Interrupt_Address(15) => iomodule_0_INTC_Irq_ADDRESS(16),
      Interrupt_Address(16) => iomodule_0_INTC_Irq_ADDRESS(15),
      Interrupt_Address(17) => iomodule_0_INTC_Irq_ADDRESS(14),
      Interrupt_Address(18) => iomodule_0_INTC_Irq_ADDRESS(13),
      Interrupt_Address(19) => iomodule_0_INTC_Irq_ADDRESS(12),
      Interrupt_Address(20) => iomodule_0_INTC_Irq_ADDRESS(11),
      Interrupt_Address(21) => iomodule_0_INTC_Irq_ADDRESS(10),
      Interrupt_Address(22) => iomodule_0_INTC_Irq_ADDRESS(9),
      Interrupt_Address(23) => iomodule_0_INTC_Irq_ADDRESS(8),
      Interrupt_Address(24) => iomodule_0_INTC_Irq_ADDRESS(7),
      Interrupt_Address(25) => iomodule_0_INTC_Irq_ADDRESS(6),
      Interrupt_Address(26) => iomodule_0_INTC_Irq_ADDRESS(5),
      Interrupt_Address(27) => iomodule_0_INTC_Irq_ADDRESS(4),
      Interrupt_Address(28) => iomodule_0_INTC_Irq_ADDRESS(3),
      Interrupt_Address(29) => iomodule_0_INTC_Irq_ADDRESS(2),
      Interrupt_Address(30) => iomodule_0_INTC_Irq_ADDRESS(1),
      Interrupt_Address(31) => iomodule_0_INTC_Irq_ADDRESS(0),
      Read_Strobe => dlmb_READSTROBE,
      Reset => MB_Reset,
      Write_Strobe => dlmb_WRITESTROBE
    );
rst_0: entity work.microblaze_mcs_0_bd_fc5c_rst_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => LMB_Rst,
      dcm_locked => '1',
      ext_reset_in => Reset,
      interconnect_aresetn(0) => NLW_rst_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => MB_Reset,
      peripheral_aresetn(0) => NLW_rst_0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => IO_Rst,
      slowest_sync_clk => Clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_mcs_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of microblaze_mcs_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_mcs_0 : entity is "microblaze_mcs_0,bd_fc5c,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_mcs_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of microblaze_mcs_0 : entity is "bd_fc5c,Vivado 2016.2";
end microblaze_mcs_0;

architecture STRUCTURE of microblaze_mcs_0 is
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "microblaze_mcs_0.hwdef";
begin
U0: entity work.microblaze_mcs_0_bd_fc5c
     port map (
      Clk => Clk,
      FIT1_Toggle => FIT1_Toggle,
      INTC_IRQ => INTC_IRQ,
      INTC_Interrupt(0) => INTC_Interrupt(0),
      IO_addr_strobe => IO_addr_strobe,
      IO_address(31 downto 0) => IO_address(31 downto 0),
      IO_byte_enable(3 downto 0) => IO_byte_enable(3 downto 0),
      IO_read_data(31 downto 0) => IO_read_data(31 downto 0),
      IO_read_strobe => IO_read_strobe,
      IO_ready => IO_ready,
      IO_write_data(31 downto 0) => IO_write_data(31 downto 0),
      IO_write_strobe => IO_write_strobe,
      Reset => Reset,
      UART_Interrupt => UART_Interrupt,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd
    );
end STRUCTURE;

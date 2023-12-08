-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Mon Nov 13 22:01:49 2023
-- Host        : Ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/decoder_10b8b_rom/decoder_10b8b_rom_stub.vhdl
-- Design      : decoder_10b8b_rom
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k420tffg1156-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_10b8b_rom is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

end decoder_10b8b_rom;

architecture stub of decoder_10b8b_rom is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[9:0],douta[9:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_3,Vivado 2016.2";
begin
end;

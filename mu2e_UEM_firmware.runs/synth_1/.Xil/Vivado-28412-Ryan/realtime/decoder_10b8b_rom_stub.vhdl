-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
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
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_3,Vivado 2016.2";
begin
end;

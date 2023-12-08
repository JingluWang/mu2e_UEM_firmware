----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2019 10:00:14 AM
-- Design Name: 
-- Module Name: adc_stream_buffer_testbend - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adc_stream_buffer_testbend is
--  Port ( );
end adc_stream_buffer_testbend;

architecture Behavioral of adc_stream_buffer_testbend is
         component adc_buffer_streamer
               port(
               rst : in std_logic;
               clk : in std_logic
 
                     );
         end component;
         signal rst : std_logic := '0';
         signal clk : std_logic := '0';            

begin

   UUT: adc_buffer_streamer port map (rst => rst,
                                      clk => clk);
                                      
   process 
       begin
       clk <= '0';
       wait for 5 ns;
       clk <= not clk;
   end process;


end Behavioral;

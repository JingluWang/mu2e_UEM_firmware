----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2019 10:39:58 AM
-- Design Name: 
-- Module Name: add8_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add8_tb is
--  Port ( );
end add8_tb;

architecture Behavioral of add8_tb is

  component add8 is 
    port (
      a : in std_logic_vector(7 downto 0);
      b : in std_logic_vector(7 downto 0);
      clk : in std_logic;
      c_in : in std_logic;
      ce : in std_logic;
      sclr : in std_logic;
      c_out : out std_logic;
      s : out std_logic_vector(7 downto 0)
     );
  end component;
  
  signal a : std_logic_vector (7 downto 0);
  signal b : std_logic_vector (7 downto 0);
  signal clk : std_logic;
  signal c_in : std_logic;
  signal ce : std_logic;
  signal c_out : std_logic;
  signal s : std_logic_vector (7 downto 0);
  

begin
  uut : add8 port map (
         a => a,
         b => b,
         clk => clk,
         c_in => c_in,
         ce => ce,
         sclr => sclr,
         c_out => c_out,
         s => s
        );
   clk_process : process
   begin 
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
   end process;

end Behavioral;

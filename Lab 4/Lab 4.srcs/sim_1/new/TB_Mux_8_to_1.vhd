----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 06:16:30 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT Mux_8_to_1
Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
       D : in STD_LOGIC_VECTOR (7 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC);
END COMPONENT;

signal s : STD_LOGIC_VECTOR(2 downto 0);
signal d : STD_LOGIC_VECTOR(7 downto 0);
signal en : STD_LOGIC;
signal y : STD_LOGIC;

begin
UUT: Mux_8_to_1 Port Map(
    S=>s,
    D=>d,
    EN=>en,
    Y=>y);
    
process
begin
    s<="101";
    d<= "10001101";
    en<='1';
    
    WAIT FOR 100 ns;
    s<="011";
    d<= "10001101";
    
    WAIT FOR 100 ns;
    s<="111";
    d<= "10001101";
    
    WAIT FOR 100 ns;
    s<="101";
    d<= "00111011";
    
    WAIT FOR 100 ns;
    s<="011";
    d<= "00111011";
    
    WAIT FOR 100 ns;
    s<="111";
    d<= "00111011";

    WAIT FOR 100 ns;
     s<="001";
     d<= "11000110";
    
    WAIT FOR 100 ns;
    s<="000";
    d<= "11100010";
    
    WAIT FOR 100 ns;
    s<="101";
    d<= "10001101";
    en<='0';
    
    WAIT FOR 100 ns;
     s<="011";
     d<= "10101010";
     en<='0';
     
     
         WAIT;
    end process;
    

end Behavioral;

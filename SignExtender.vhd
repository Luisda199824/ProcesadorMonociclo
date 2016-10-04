library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SignExtender is
    Port ( A : in  STD_LOGIC_VECTOR (12 downto 0);
			  clk : in  STD_LOGIC;
           SEOut : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtender;

architecture Behavioral of SignExtender is

signal most : std_logic := '0'; -- Señal que toma el bit más significativo de A
signal aux : std_logic_vector(31 downto 0) := (others => '0');

begin

most <= A(12);

process(clk)
	begin
		if (most = '0') then
			SEOut <= "0000000000000000000"&A;
		else
			SEOut <= "1111111111111111111"&A;
		end if;
	end process;

end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SignExtender is
    Port ( A : in  STD_LOGIC_VECTOR (12 downto 0);
           SEOut : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtender;

architecture Behavioral of SignExtender is

begin

process(A)
	begin
		if (A(12) = '0') then
			SEOut <= "0000000000000000000"&A;
		else
			SEOut <= "1111111111111111111"&A;
		end if;
	end process;

end Behavioral;
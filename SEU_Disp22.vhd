library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SEU_Disp22 is
    Port ( Disp22 : in  STD_LOGIC_VECTOR (21 downto 0);
           Seu_Disp22 : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU_Disp22;

architecture Behavioral of SEU_Disp22 is

begin

process(Disp22)
	begin
		if (Disp22(21) = '0') then
			Seu_Disp22 <= "0000000000"&Disp22;
		else
			Seu_Disp22 <= "1111111111"&Disp22;
		end if;
	end process;

end Behavioral;
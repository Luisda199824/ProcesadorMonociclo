library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SEU_Disp30 is
    Port ( Disp30 : in  STD_LOGIC_VECTOR (29 downto 0);
           SEU_Disp30 : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU_Disp30_Out;

architecture Behavioral of SEU_Disp30 is

begin

process(Disp30)
	begin
		if (Disp30(21) = '0') then
			Seu_Disp30_Out <= "00"&Disp30;
		else
			Seu_Disp30_Out <= "11"&Disp30;
		end if;
	end process;

end Behavioral;
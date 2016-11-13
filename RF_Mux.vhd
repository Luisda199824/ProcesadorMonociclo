library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RD_Mux is
    Port ( RfDest : in  STD_LOGIC;
           RD : in  STD_LOGIC;
           nRD : out  STD_LOGIC_VECTOR (5 downto 0));
end RD_Mux;

architecture Behavioral of RD_Mux is

begin

process(RfDest, RD)
begin
	if (RfDest = '1') then
		nRD <= "001111";
	else
		nRD <= RD;
	end if;
end process;

end Behavioral;
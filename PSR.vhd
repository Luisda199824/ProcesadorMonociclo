library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR is
    Port ( nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  ncwp: in STD_LOGIC;
           carry : out  STD_LOGIC;
			  cwp : out STD_LOGIC);
end PSR;

architecture Behavioral of PSR is

begin

process(rst, clk, nzvc, ncwp)
	begin
		if rst='1' then
			carry <= '0';
			cwp <= '0';
		else
			if rising_edge(clk) then
				carry<=nzvc(0);
				if ((not (ncwp = '0')) and (not (ncwp = '1'))) then
					cwp <= '0';
				else
					cwp<=ncwp;
				end if;
			end if;
		end if;
	end process;

end Behavioral;
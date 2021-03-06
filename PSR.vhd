library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR is
    Port ( nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  ncwp: in STD_LOGIC;
			  cond : in STD_LOGIC_VECTOR (3 downto 0);
           carry : out  STD_LOGIC;
			  cwp : out STD_LOGIC;
			  icc : out STD_LOGIC_VECTOR (3 downto 0));
end PSR;

architecture Behavioral of PSR is

begin

process(rst, clk, nzvc, cond, ncwp)
	begin
		if rst='1' then
			carry <= '0';
			cwp <= '0';
			icc <= "0000";
		else
			if rising_edge(clk) then
				carry<=nzvc(0);
			end if;
			cwp <= ncwp;
			icc <= nzvc;
		end if;
	end process;

end Behavioral;
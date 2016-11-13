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
			  icc : out STD_LOGIC);
end PSR;

architecture Behavioral of PSR is

begin

process(rst, clk, nzvc)
	begin
		if rst='1' then
			carry <= '0';
			cwp <= '0';
			icc <= '0';
		else
			if rising_edge(clk) then
				carry<=nzvc(0);
			end if;
			cwp <= ncwp;
			case cond is
				when "1000" =>
					icc <= '1';
				when "0000" =>
					icc <= '0';
			end case;
		end if;
	end process;

end Behavioral;
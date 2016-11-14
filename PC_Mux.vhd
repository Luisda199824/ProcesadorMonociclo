library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC_Mux is
    Port ( clk : in  STD_LOGIC;
			  PcSource : in  STD_LOGIC_VECTOR (1 downto 0);
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
           Pc : in  STD_LOGIC_VECTOR (31 downto 0);
           Pc_Disp22 : in  STD_LOGIC_VECTOR (31 downto 0);
           Pc_Disp30 : in  STD_LOGIC_VECTOR (31 downto 0);
           nPC_Source : out  STD_LOGIC_VECTOR (31 downto 0));
end PC_Mux;

architecture Behavioral of PC_Mux is

begin

process(PcSource, AluResult, Pc, Pc_Disp22, Pc_Disp30)
begin
--	if rising_edge(clk) then
		case PcSource is
			when "00" =>
				nPC_Source <= Pc;
			when "01" =>
				nPC_Source <= Pc_Disp22;
			when "10" =>
				nPC_Source <= Pc_Disp30;
			when "11" =>
				nPC_Source <= AluResult;
			when others =>
				nPC_Source <= x"00000000";
		end case;
--	end if;
end process;

end Behavioral;
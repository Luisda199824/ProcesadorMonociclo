library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataRF_Mux is
    Port ( clk : in  STD_LOGIC;
			  RfSource : in  STD_LOGIC_VECTOR (1 downto 0);
           DataToMem : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
           PC : in  STD_LOGIC_VECTOR (31 downto 0);
           DataToReg : out  STD_LOGIC_VECTOR (31 downto 0));
end DataRF_Mux;

architecture Behavioral of DataRF_Mux is

begin

process(RfSource, PC)
begin
	case RfSource is
		when "00" =>
			DataToReg <= AluResult;
		when "01" =>
			DataToReg <= PC;
		when "10" =>
			DataToReg <= DataToMem;
		when others =>
			DataToReg <= x"00000000";
	end case;
end process;

end Behavioral;
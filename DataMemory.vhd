library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DataMemory is
    Port ( Rst : in  STD_LOGIC;
           cRD : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
           WrENMem : in  STD_LOGIC;
           RdENMem : in  STD_LOGIC;
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is

type ram is array(63 downto 0) of std_logic_vector(31 downto 0);
signal memory : ram := (others => x"00000000");

begin

process(Rst, cRd, AluResult, WrENMem, RdENMem)
	begin
		if(Rst = '1')then
			Data <= x"00000000";
			memory <= (others => x"00000000");
		else
			if(RdENMem = '1')then
				if(WrENMem = '1')then
					memory(conv_integer(AluResult(5 downto 0))) <= cRD;
				end if;
				Data <= memory(conv_integer(AluResult(5 downto 0)));
			else
				Data <= x"00000000";
			end if;
		end if;
	end process;

end Behavioral;
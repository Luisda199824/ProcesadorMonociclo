library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ProgrammingCounter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (31 downto 0);
           PCOut : out  STD_LOGIC_VECTOR (31 downto 0));
end ProgrammingCounter;

architecture Behavioral of ProgrammingCounter is

begin

process (clk, rst, dato)
begin
	if (rst = '1') then
		PCOut <= x"00000000";
	elsif ((rising_edge(clk)) or (rst = '0')) then
		PCOut <= dato;
	end if;
end process;

end Behavioral;
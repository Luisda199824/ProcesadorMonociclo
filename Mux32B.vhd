library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux32B is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Sc : in  STD_LOGIC;
           MuxOut : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux32B;

architecture Behavioral of Mux32B is

begin

process (A, B, Sc)
begin
	if (Sc = '0') then
		MuxOut <= A;
	else
		MuxOut <= B;
	end if;
end process;

end Behavioral;
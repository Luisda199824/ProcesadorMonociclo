library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Sumador32B is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           SumOut : out  STD_LOGIC_VECTOR (31 downto 0));
end Sumador32B;

architecture Behavioral of Sumador32B is

begin

	SumOut <= A + B;

end Behavioral;
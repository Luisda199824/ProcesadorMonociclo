library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Alu is
    Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           rs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is

begin

process(AluOp, rs1, rs2)
begin
	case (AluOp) is
		when "000000" => -- Add
			AluResult <= rs1 + rs2;
		when "000001" => -- Sub
			AluResult <= rs1 - rs2;
		when "000010" => -- Or
			AluResult <= rs1 or rs2;
		when "000011" => -- And
			AluResult <= rs1 and rs2;
		when "000100" => -- Xor
			AluResult <= rs1 xor rs2;
		when "000101" => -- Or n
			AluResult <= rs1 nor rs2;
		when "000110" => -- And n
			AluResult <= rs1 nand rs2;
		when "000111" => -- xnor
			AluResult <= rs1 xnor rs2;
		when others =>
			AluResult <= (others => '0');
	end case;
end process;

end Behavioral;
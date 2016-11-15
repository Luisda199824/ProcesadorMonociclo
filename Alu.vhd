library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Alu is
    Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           rs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  c : in STD_LOGIC;
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is
begin

process(AluOp, rs1, rs2, c)
	begin
		case (AluOp) is
			when "000000" => -- Add
				AluResult <= rs1 - rs2;
			when "000001" => -- Sub
				AluResult <= rs1 - rs2;
			when "000010" => -- Or
				AluResult <= rs1 or rs2;
			when "000011" => -- And
				AluResult <= rs1 and rs2;
			when "000100" => -- Xor
				AluResult <= rs1 xor rs2;
			when "000101" => -- Or n
				AluResult <= rs1 or not rs2;
			when "000110" => -- And n
				AluResult <= rs1 and not rs2;
			when "000111" => -- Xnor
				AluResult <= rs1 xnor rs2;
			when "001000" => -- Addcc
				AluResult <= rs1 + rs2;
			when "001001" => -- Subcc
				AluResult <= rs1 - rs2;
			when "001010" => -- Addx
				AluResult <= rs1 + rs2 + c;
			when "001011" => -- Addxcc
				AluResult <= rs1 + rs2 + c;
			when "001100" => -- Subx
				AluResult <= rs1 - rs2 - c;
			when "001101" => -- Subxcc
				AluResult <= rs1 - rs2 - c;
			when "001110" => -- Orcc
				AluResult <= rs1 or rs2;
			when "001111" => -- Andcc
				AluResult <= rs1 and rs2;
			when "010000" => -- Xorcc
				AluResult <= rs1 xor rs2;
			when "010001" => -- Andncc
				AluResult <= rs1 and not rs2;
			when "010010" => -- Orncc
				AluResult <= rs1 or not rs2;
			when "010011" => -- Xnorncc
				AluResult <= rs1 xnor rs2;
			when others =>
				AluResult <= (others => '0');
		end case;
	end process;

end Behavioral;
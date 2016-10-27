library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UnityControl is
    Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           AluOp : out  STD_LOGIC_VECTOR (5 downto 0));
end UnityControl;

architecture Behavioral of UnityControl is

begin

process(Op, Op3)
begin
--	Add  		10 000000
--	Sub  		10 000100
--	And  		10 000001
--	Or   		10 000010
--	Xor  		10 000011
--	Orn  		10 000110
--	Andn 		10 000101
--	Xnor 		10 000111
-- Addcc		10	010000
-- Subcc		10	010100
-- Addx		10 001000
-- Addxcc	10 011000
-- Subx		10 001100
-- Subxcc	10 011100
-- Orcc		10	010010
-- Andcc		10 010001
-- Xorcc		10	010011
-- Andncc	10 010101
-- Orncc		10	010110
-- Xnorncc	10 010111
-- SLL		10 100101
-- SRL		10 100111

	if (Op = "10") then
		case (Op3) is
			when "000000" => -- Add
				AluOp <= "000000";
			when "000100" => -- Sub
				AluOp <= "000001";
			when "000001" => -- And
				AluOp <= "000011";
			when "000010" => -- Or
				AluOp <= "000010";
			when "000011" => -- Xor
				AluOp <= "000100";
			when "000110" => -- Orn
				AluOp <= "000101";
			when "000101" => -- Andn
				AluOp <= "000110";
			when "000111" => -- Xnor
				AluOp <= "000111";
			when "010000" => -- Addcc
				AluOp <= "001000";
			when "010100" => -- Subcc
				AluOp <= "001001";
			when "001000" => -- Addx
				AluOp <= "001010";
			when "011000" => -- Addxcc
				AluOp <= "001011";
			when "001100" => -- Subx
				AluOp <= "001100";
			when "011100" => -- Subxcc
				AluOp <= "001101";
			when "010010" => -- Orcc
				AluOp <= "001110";
			when "010001" => -- Andcc
				AluOp <= "001111";
			when "010011" => -- Xorcc
				AluOp <= "010000";
			when "010101" => -- Andncc
				AluOp <= "010001";
			when "010110" => -- Orncc
				AluOp <= "010010";
			when "010111" => -- Xnorncc
				AluOp <= "010011";
			when "100101" => -- SLL
				AluOp <= "010100";
			when "100111" => -- SRL
				AluOp <= "010101";
			when others =>
				AluOp <= "000000";
		end case;
	end if;
end process;

end Behavioral;
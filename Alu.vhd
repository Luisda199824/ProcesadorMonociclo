library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Alu is
    Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           rs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  c : STD_LOGIC;
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
		when "001000" => --ADDx
			AluResult <= rs1 + rs2 + c;
		when "011000" => --ADDxcc
			AluResult <= rs1 + rs2 + c;
		when "010000" => --ADDcc 
			AluResult <= rs1 + rs2;	
		when "010100" => --SUBcc
			AluResult <= rs1 - rs2;
		when "001100" => -- SUBx
			AluResult <= rs1 - rs2 - c;
		when "011100" => --SUBxcc
			AluResult <= rs1 - rs2 - c;
		when "010001" => --ANDcc
			AluResult <= rs1 and rs2;
		when "010101" => --ANDNcc
			AluResult <= rs1 and not rs2;
		when "010010" => --ORcc
			AluResult <= rs1 or rs2;
		when "010110" => --ORNcc
			AluResult <= rs1 or not rs2;
		when "010011" => --XORcc
			AluResult <= rs1 xor rs2;
		when "010111" => --XNORcc
			AluResult <= rs1 xnor rs2;
		when others =>
			AluResult <= (others => '0');
	end case;
end process;

end Behavioral;
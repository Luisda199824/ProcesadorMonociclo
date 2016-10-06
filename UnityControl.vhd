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
--	add  10 000000
--	sub  10 000100
--	and  10 000001
--	or   10 000010
--	xor  10 000011
--	orn  10 000110
--	andn 10 000101
--	xnor 10 000111
	if (Op = "10") then
		case (Op3) is
			when "000000" => -- add
				AluOp <= "000000";
			when "000100" => -- sub
				AluOp <= "000001";
			when "000001" => -- and
				AluOp <= "000011";
			when "000010" => -- or
				AluOp <= "000010";
			when "000011" => -- xor
				AluOp <= "000100";
			when "000110" => -- orn
				AluOp <= "000101";
			when "000101" => -- andn
				AluOp <= "000110";
			when "000111" => -- xnor
				AluOp <= "000111";
			when others =>
				AluOp <= "000000";
		end case;
	end if;
end process;

end Behavioral;
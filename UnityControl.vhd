library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UnityControl is
    Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
			  cond : in  STD_LOGIC_VECTOR (3 downto 0);
			  icc : in  STD_LOGIC;
			  we : out  STD_LOGIC;
			  RFDest : out  STD_LOGIC;
			  WrENMemory : out  STD_LOGIC;
			  ReENMemory : out  STD_LOGIC;
			  RfSource : out  STD_LOGIC_VECTOR(1 downto 0);
			  PcSource : out  STD_LOGIC_VECTOR(1 downto 0);
           AluOp : out  STD_LOGIC_VECTOR (5 downto 0));
end UnityControl;

architecture Behavioral of UnityControl is

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

-- Branchs
-- BA			00 1000
-- BN			00 0000
-- BNE		00 1001
-- BE			00 0001
-- BG			00 1010
-- BLE		00 0010
-- BGE		00 1011
-- BL			00 0011
-- BGU		00 1100
-- BLEU		00 0100
-- BCC		00 1101
-- BCS		00 0101
-- BPOS		00 1110
-- BNEG		00 0110
-- BVC		00 1111
-- BVS		00 0111

-- Jump and Link
-- jmpl		10 111000

-- Call 		01 disp22
process(Op, Op3)
begin
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
			when "111000" => -- Jmpl
				AluOp <= "000000";
			when others =>
				AluOp <= "000000"; -- Error
		end case;
		if (Op3 = "111000") then
			RfSource <= "01";
			RFDest <= '1';
		else
			RfSource <= "00";
			RFDest <= '0';
		end if;
		we <= '1';
		RFDest <= '0';
		WrENMemory <= '0';
		ReENMemory <= '0';
		PcSource <= "00";
	elsif (op = "00") then -- Branch
		we <= '0';
		RFDest <= '0';
		WrENMemory <= '0';
		ReENMemory <= '0';
		RfSource <= "00";
		if (icc = '1') then
			PcSource <= "01";
		else
			PcSource <= "00";
		end if;
	elsif (op = "01") then -- Call
		we <= '0';
		RFDest <= '0';
		WrENMemory <= '0';
		ReENMemory <= '0';
		RfSource <= "00";
		PcSource <= "10";
	end if;
end process;

end Behavioral;
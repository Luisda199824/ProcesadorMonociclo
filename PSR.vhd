library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR is
    Port ( nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  ncwp: in STD_LOGIC;
			  cond : in STD_LOGIC_VECTOR (3 downto 0);
           carry : out  STD_LOGIC;
			  cwp : out STD_LOGIC;
			  icc : out STD_LOGIC);
end PSR;

architecture Behavioral of PSR is

begin

process(rst, clk, nzvc, cond, ncwp)
	begin
		if rst='1' then
			carry <= '0';
			cwp <= '0';
			icc <= '0';
		else
			if rising_edge(clk) then
				carry<=nzvc(0);
			end if;
			cwp <= ncwp;
			case cond is
				when "1000" => -- BA
					icc <= '1';
				when "0000" => -- BN
					icc <= '0';
				when "1001" => -- BNE
					icc <= not nzvc(2);
				when "0001" => -- BE
					icc <= nzvc(2);
				when "1010" => -- BG
					icc <= not (nzvc(2) or (nzvc(3) xor nzvc(1)));
				when "0010" => -- BLE
					icc <= nzvc(2) or (nzvc(3) xor nzvc(1));
				when "1011" => -- BGE
					icc <= not (nzvc(3) xor nzvc(1));
				when "0011" => -- BL
					icc <= nzvc(3) xor nzvc(1);
				when "1100" => -- BGU
					icc <= not (nzvc(0) or nzvc(2));
				when "0100" => -- BLEU
					icc <= nzvc(0) or nzvc(2);
				when "1101" => -- BCC
					icc <= not nzvc(0);
				when "0101" => -- BCS
					icc <= nzvc(0);
				when "1110" => -- BPOS
					icc <= not nzvc(3);
				when "0110" => -- BNEG
					icc <= nzvc(0);
				when "1111" => -- BVC
					icc <= not nzvc(1);
				when "0111" => -- BVS
					icc <= nzvc(1);
				when others =>
					icc <= '0';
			end case;
		end if;
	end process;

end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- ADDcc : 010000
-- ADDxcc : 011000
-- SUBcc:  010100
-- SUBxcc: 011100
-- ANDcc : 010001
-- ANDNcc : 010101
-- ORcc : 010010
-- ORNcc : 010110
-- XORcc : 010011
-- XNORcc : 010111


entity PSR_Modifier is
    Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  Crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Result : in  STD_LOGIC_VECTOR (31 downto 0);
           nzvc : out  STD_LOGIC_VECTOR (3 downto 0);
			  rst: in STD_LOGIC
			  );
end PSR_Modifier;

architecture Behavioral of PSR_Modifier is

begin

	process(AluOp, ALU_Result, Crs1, Crs2, rst)
	begin
		if (rst = '1') then
			nzvc <= "0000";
		else
			-- ANDcc o ANDNcc, ORcc, ORNcc, XORcc, XNORcc
			if (AluOp="001111" OR AluOp="010001" OR AluOp="001110" OR AluOp="010010" OR AluOp="010000" OR AluOp="010011") then
				nzvc(3) <= ALU_result(31);--asignacion del bit mas significativo, al bit que indica si es negativo o positivo
				if (conv_integer(ALU_result)=0) then--si el resultado de la alu es igual a 0 
					nzvc(2) <= '1';--el bit que indica que son iguales es 1
				else
					nzvc(2) <= '0';
				end if;
				nzvc(1) <= '0';--los bits de carry y overflow siguen siendo 0
				nzvc(0) <= '0';
			end if;
			
			-- ADDcc o ADDxcc
			if (AluOp="001000" or AluOp="001011") then
				nzvc(3) <= ALU_result(31);--lo mismo se asigna el primer bit a n
				if (conv_integer(ALU_result)=0) then
					nzvc(2) <= '1';
				else
					nzvc(2) <= '0';
				end if;
				nzvc(1) <= (Crs1(31) and Crs2(31) and (not ALU_result(31))) or ((not Crs1(31)) and (not Crs2(31)) and ALU_result(31));
				nzvc(0) <= (Crs1(31) and Crs2(31)) or ((not ALU_result(31)) and (Crs1(31) or Crs2(31)) );
			end if;
			
			--SUBcc or SUBxcc
			if (AluOp="001001" or AluOp="001101") then
				nzvc(3) <= ALU_result(31);
				if (conv_integer(ALU_result)=0) then
					nzvc(2) <= '1';
				else
					nzvc(2) <= '0';
				end if;
				nzvc(1) <= (Crs1(31) and (not Crs2(31)) and (not ALU_result(31))) or ((not Crs1(31)) and Crs2(31) and ALU_result(31));
				nzvc(0) <= ((not Crs1(31)) and Crs2(31)) or (ALU_result(31) and ((not Crs1(31)) or Crs2(31)));
			end if;
		end if;
		
	end process;
	
end Behavioral;
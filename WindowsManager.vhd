library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.ALL;


entity WindowsManager is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           cwp : in  STD_LOGIC;
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           nrs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           ncwp : out  STD_LOGIC;
           nrd : out  STD_LOGIC_VECTOR (5 downto 0));
end WindowsManager;

architecture Behavioral of windowsmanager is


begin
process(rs1,rs2,rd, cwp)
begin
		if (rs1>="01000" and rs1<="10111" and cwp<='0') then--se aumenta en un bit la direccion
			nrs1<= '0'&rs1;
		end if;
		if (rs1>="01000" and rs1<="10111" and cwp<='1') then--si cwp se toma el registro original y se le suman 16
			nrs1<= '0'&rs1+ "010000";
		end if;
		if (rs2>="01000" and rs2<="10111" and cwp<='0') then--se aumenta en un bit la direccion
			nrs2<= '0'&rs2;
		end if;
		if (rs2>="01000" and rs2<="10111" and cwp<='1') then--si cwp se toma el registro original y se le suman 16
			nrs2<= '0'&rs2+ "010000";
		end if;
		if (rd>="01000" and rd<="10111" and cwp<='0') then--se aumenta en un bit la direccion
			nrd<= '0'&rd;
		end if;
		if (rd>="01000" and rd<="10111" and cwp<='1') then--si cwp se toma el registro original y se le suman 16
			nrd<= '0'&rd+ "010000";
		end if;

		--los registros de entrada van desde 24 a 31 en la ventana 0
		--en la ventana 1 seran de 15 a 24
		if (rs1>="11000" and rs1<="11111" and cwp<='0') then
			nrs1<='0'&rs1;
		end if;
		if (rs1>="11000" and rs1<="11111" and cwp<='1') then
			nrs1<='0'&rs1- "010000";
		end if;
		
		if (rs2>="11000" and rs2<="11111" and cwp<= '0') then
			nrs2<='0'&rs2;
		end if;
		if(rs2>="11000" and rs2<="11111" and cwp<= '1') then
			nrs2<='0'&rs2- "010000";
		end if;
		if (rd>="11000" and rd<="11111" and cwp<='0') then
			nrd<='0'&rd;
		end if;
		if(rd>="11000" and rd<="11111" and cwp<='1') then
			nrd<='0'&rd- "010000";
		end if;
		
		--si es globales unicamente se le agrega un bit en 0 para que sea de 6 bits 
		--no se modifica sirve para las dos ventanas
		if (rs1>="00000" and rs1<="00111") then
			nrs1<='0'&rs1;
		end if;
		if (rs2>="00000" and rs2<="00111") then
			nrs2<='0'&rs2;
		end if;
		if (rd>="00000" and rd<="00111") then
			nrd<='0'&rd;
		end if;
end process;

process(op,op3,cwp)
	begin
		--formato3
		if (op="10") then
			--save
			if (op3="111100")then
				ncwp<='0';
			end if;
			--restore
			if (op3="111101")then
				ncwp<='1';
			end if;
		end if;
		
end process;

end Behavioral;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
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

architecture Behavioral of WindowsManager is

begin

process(cwp,rs1,rs2,rd,op,op3)
	begin
		if(op = "10") then
			if(op3= "111100") then --Save (Resto)
				ncwp<= '0';
			elsif(op3="111101") then --Restore (Sumo)
				ncwp<= '1';
			else
				ncwp<=cwp;
			end if;
		end if;
			
		-- Globales
		if (conv_integer(rs1)>=0) and (conv_integer(rs1)<7) then
			nrs1 <= '0'&rs1;
		end if;
		if (conv_integer(rs2)>=0) and (conv_integer(rs2)<7) then
			nrs2 <= '0'&rs2;
		end if;
		if (conv_integer(rd)>=0) and (conv_integer(rd)<7) then
			nrd <= '0'&rd;
		end if;
		
		-- Registros de salida y locales
		if (conv_integer(rs1)>=8) and (conv_integer(rs1)<24) then
			if (cwp = '1') then
				if ((conv_integer(rs1)+16)<32) then
					nrs1 <= '0'&(rs1+16);
				else
					nrs1 <= rs1+16;
				end if;
			else
				nrs1 <= '0'&rs1;
			end if;
		end if;
		if (conv_integer(rs2)>=8) and (conv_integer(rs2)<24) then
			if (cwp = '1') then
				if ((conv_integer(rs2)+16)<32) then
					nrs2 <= '0'&(rs2+16);
				else
					nrs2 <= rs2+16;
				end if;
			else
				nrs2 <= '0'&rs2;
			end if;
		end if;
		if (conv_integer(rd)>=8) and (conv_integer(rd)<24) then
			if (cwp = '1') then
				if ((conv_integer(rd)+16)<32) then
					nrd <= '0'&(rd+16);
				else
					nrd <= rd+16;
				end if;
			else
				nrd <= '0'&rd;
			end if;
		end if;
		
		-- Registros de entrada
		if (conv_integer(rs1)>=24) and (conv_integer(rs1)<32) then
			if (cwp = '1') then
				nrs1 <= rs1+16;
			else
				nrs1 <= '0'&rs1;
			end if;
		end if;
		if (conv_integer(rs2)>=24) and (conv_integer(rs2)<32) then
			if (cwp = '1') then
				nrs2 <= rs2+16;
			else
				nrs2 <= '0'&rs2;
			end if;
		end if;
		if (conv_integer(rd)>=24) and (conv_integer(rd)<32) then
			if (cwp = '1') then
				nrd <= '0'&(rd-16);
			else
				nrd <= '0'&rd;
			end if;
		end if;
	end process;

end Behavioral;
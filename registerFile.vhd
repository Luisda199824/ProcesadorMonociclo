library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registerFile is
    Port ( rs1 : in  STD_LOGIC_VECTOR (5 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (5 downto 0);
           rd : in  STD_LOGIC_VECTOR (5 downto 0);
           rst : in  STD_LOGIC;
           dataToWrite : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end registerFile;

architecture Behavioral of registerFile is

type ram_type is array (0 to 31) of std_logic_vector(31 downto 0);

signal ceros : std_logic_vector (31 downto 0) := (others=>'0');
signal regFile : ram_type := (
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000"
);

begin

process(rs1,rs2,rd,rst,dataToWrite)
begin
	if (rst = '1') then
		CRs1 <= ceros;
		CRs2 <= ceros;
	else
		CRs1 <= regFile(conv_integer(rs1));
		CRs2 <= regFile(conv_integer(rs2));
		if (not (rd = "00000")) then
			regFile(conv_integer(rd)) <= dataToWrite;
		end if;
	end if;
end process;

end Behavioral;
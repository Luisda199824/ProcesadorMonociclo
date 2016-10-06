library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unionModulos is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end unionModulos;

architecture Behavioral of unionModulos is

	signal aux1, aux2, aux3, aux4, aux6, aux7, aux8, aux9, aux10: std_logic_vector(31 downto 0) := (others => '0');
	signal aux5:  std_logic_vector(5 downto 0) := (others => '0');

	component ProgrammingCounter
		port (
				clk : in  STD_LOGIC;
				rst : in  STD_LOGIC;
				dato : in  STD_LOGIC_VECTOR (31 downto 0); -- addres
				PCOut : out  STD_LOGIC_VECTOR (31 downto 0) -- sig
		);
	end component;
	
	component Sumador32B
		port (
			A : in  STD_LOGIC_VECTOR (31 downto 0);
		   B : in  STD_LOGIC_VECTOR (31 downto 0);
         SumOut : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	component instructionMemory
		port (
			address : in  STD_LOGIC_VECTOR (31 downto 0);
         rst : in  STD_LOGIC;
         outInstruction : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	component registerFile
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           rst : in  STD_LOGIC;
           dataToWrite : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	component UnityControl
		Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
				  Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
				  AluOp : out  STD_LOGIC_VECTOR (5 downto 0)
		);
	end component;

	component Alu
		Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           rs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	component Mux32B
		Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
			  B : in  STD_LOGIC_VECTOR (31 downto 0);
			  Sc : in  STD_LOGIC;
			  MuxOut : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;

	component SignExtender
		 Port ( A : in  STD_LOGIC_VECTOR (12 downto 0);
				  SEOut : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
begin

	Inst_pc: ProgrammingCounter port map (
		clk => clk,
		rst => rst,
		dato => aux2,
		PCOut => aux1
	);

	Inst_pc_next: ProgrammingCounter port map (
		clk => clk,
		rst => rst,
		dato => aux1,
		PCOut => aux3
	);

	Inst_sum32b: Sumador32B port map (
		A => aux1,
		B => x"00000001",
		SumOut => aux2
	);
	
	Inst_instructionMemory: instructionMemory port map (
		address => aux3,
		rst => rst,
		outInstruction => aux4
	);
	
	Inst_register_file: registerFile port map(
		rs1 => aux4(18 downto 14),
		rs2 => aux4(4 downto 0),
		rd => aux4(29 downto 25),
		rst => rst,
		dataToWrite => aux9,
		CRs1 => aux6,
		CRs2 => aux7
	);
	
	Inst_UC: UnityControl Port Map(
		Op => aux4(31 downto 30),
	   Op3=>aux4(24 downto 19),
      AluOp =>aux5
	);
	
	Inst_Sign_ext_unit: SignExtender port map (
		A => aux4(12 downto 0),
		SEOut => aux10
	);
	
	Inst_mux32b: Mux32B port map (
		A => aux7,
		B => aux10,
		Sc => aux4(13),
		MuxOut => aux8
	);
	
	Inst_ALU: Alu port map (
		AluOp => aux5,
		rs1 => aux6,
		rs2 => aux8,
		AluResult => aux9
	);
	
	salida <= aux9;
	
end Behavioral;
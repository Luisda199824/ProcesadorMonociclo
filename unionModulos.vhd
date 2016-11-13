library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unionModulos is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end unionModulos;

architecture Behavioral of unionModulos is

	signal aux1, aux2, address, instruction, Crs1, Crs2, aux7, AluResult, aux10: std_logic_vector(31 downto 0) := (others => '0');
	signal AluOp, Op3, NRs1, NRs2, NRd:  std_logic_vector(5 downto 0) := (others => '0');
	signal rs1, rs2, rd : std_logic_vector(4 downto 0) := (others => '0');
	signal Op: std_logic_vector(1 downto 0) := (others => '0');
	signal ncwp, cwp, Carry, icc: std_logic := '0';
	signal imm13: std_logic_vector(12 downto 0) := (others => '0');
	signal NZVC, cond: std_logic_vector(3 downto 0) := (others => '0');

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
    Port ( rs1 : in  STD_LOGIC_VECTOR (5 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (5 downto 0);
           rd : in  STD_LOGIC_VECTOR (5 downto 0);
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
			  c : in STD_LOGIC;
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	component WindowsManager
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
	end component;
	
	component PSR_Modifier
		Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  Crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Result : in  STD_LOGIC_VECTOR (31 downto 0);
           nzvc : out  STD_LOGIC_VECTOR (3 downto 0);
			  rst: in STD_LOGIC);
	end component;
	
	component PSR
    Port ( nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  ncwp: in STD_LOGIC;
			  cond : in STD_LOGIC_VECTOR (3 downto 0);
           carry : out  STD_LOGIC;
			  cwp : out STD_LOGIC;
			  icc : out STD_LOGIC);
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
		PCOut => address
	);

	Inst_sum32b: Sumador32B port map (
		A => aux1,
		B => x"00000001",
		SumOut => aux2
	);
	
	Inst_instructionMemory: instructionMemory port map (
		address => address,
		rst => rst,
		outInstruction => instruction
	);
	
	rs1 <= instruction(18 downto 14);
	rs2 <= instruction(4 downto 0);
	rd <= instruction(29 downto 25);
	Op <= instruction(31 downto 30);
	Op3 <= instruction(24 downto 19);
	imm13 <= instruction(12 downto 0);
	cond <= instruction(28 downto 25);
	
	Inst_WindowsManager: WindowsManager Port Map ( 
		rs1 => rs1,
		rs2 => rs2,
		rd => rd,
		cwp => cwp,
		op3 => Op3,
		op => Op,
		nrs1 => NRs1,
		nrs2 => NRs2, 
		ncwp => ncwp,
		nrd => NRd
	);
	
	Inst_PSR: PSR Port Map (
		nzvc => NZVC,
		rst => rst,
		clk => clk,
		ncwp => ncwp,
		cond => cond,
		carry => Carry,
		cwp => cwp,
		icc => icc
	);
	
	Inst_register_file: registerFile port map(
		rs1 => NRs1,
		rs2 => NRs2,
		rd => NRd,
		rst => rst,
		dataToWrite => AluResult,
		CRs1 => Crs1,
		CRs2 => aux7
	);
	
	Inst_UC: UnityControl Port Map(
		Op => Op,
	   Op3=> Op3,
      AluOp => AluOp
	);
	
	Inst_Sign_ext_unit: SignExtender port map (
		A => imm13,
		SEOut => aux10
	);
	
	Inst_PSR_Modifier: PSR_Modifier Port Map (
		AluOp => AluOp,
		Crs1 => Crs1,
		Crs2 => Crs2,
		ALU_Result => AluResult,
		nzvc => NZVC,
		rst => rst
	);
	
	Inst_mux32b: Mux32B port map (
		A => aux7,
		B => aux10,
		Sc => instruction(13),
		MuxOut => Crs2
	);
	
	Inst_ALU: Alu port map (
		AluOp => AluOp,
		rs1 => Crs1,
		rs2 => Crs2,
		c => Carry,
		AluResult => AluResult
	);
	
	salida <= AluResult;
	
end Behavioral;
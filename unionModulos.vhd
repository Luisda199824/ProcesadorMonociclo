library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unionModulos is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end unionModulos;

architecture Behavioral of unionModulos is

	signal PcCounterPlus, PC, aux2, address, instruction, Crs1, Crs2, cRD, aux7, AluResult, aux10, DataToMem, DataToReg, SEU_Disp30, SEU_Disp22: std_logic_vector(31 downto 0) := (others => '0');
	signal AluOp, Op3, NRs1, NRs2, NRd, Mux_NRd:  std_logic_vector(5 downto 0) := (others => '0');
	signal rs1, rs2, rd : std_logic_vector(4 downto 0) := (others => '0');
	signal Op, PcSource, RfSource, ReENMemory, WrENMemory: std_logic_vector(1 downto 0) := (others => '0');
	signal ncwp, cwp, Carry, icc, weRF, RFDest: std_logic := '0';
	signal imm13: std_logic_vector(12 downto 0) := (others => '0');
	signal NZVC, cond: std_logic_vector(3 downto 0) := (others => '0');
	signal disp30 : std_logic_vector(29 downto 0) := (others => '0');
	signal disp22 : std_logic_vector(21 downto 0) := (others => '0');

	component ProgrammingCounter
		port (
				clk : in  STD_LOGIC;
				rst : in  STD_LOGIC;
				dato : in  STD_LOGIC_VECTOR (31 downto 0); -- addres
				PCOut : out  STD_LOGIC_VECTOR (31 downto 0) -- sig
		);
	end component;
	
	component RD_Mux
		Port ( 
				RfDest : in  STD_LOGIC;
				RD : in  STD_LOGIC_VECTOR (5 downto 0);
				nRD : out  STD_LOGIC_VECTOR (5 downto 0));
	end component;
	
	component DataMemory
    Port ( Rst : in  STD_LOGIC;
           cRD : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
           WrENMem : in  STD_LOGIC;
           RdENMem : in  STD_LOGIC;
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
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
    Port ( we : in  STD_LOGIC;
			  rs1 : in  STD_LOGIC_VECTOR (5 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (5 downto 0);
           rd : in  STD_LOGIC_VECTOR (5 downto 0);
           rst : in  STD_LOGIC;
           dataToWrite : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  CRd : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component UnityControl
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
	
	component SEU_Disp30
		Port ( Disp30 : in  STD_LOGIC_VECTOR (29 downto 0);
           SEU_Disp30 : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component SEU_Disp22
		Port ( Disp22 : in  STD_LOGIC_VECTOR (21 downto 0);
           Seu_Disp22 : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component PC_Mux
		Port ( PcSource : in  STD_LOGIC_VECTOR (1 downto 0);
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
           Pc : in  STD_LOGIC_VECTOR (31 downto 0);
           Pc_Disp22 : in  STD_LOGIC_VECTOR (31 downto 0);
           Pc_Disp30 : in  STD_LOGIC_VECTOR (31 downto 0);
           nPC_Source : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component DataRF_Mux
		Port ( RfSource : in  STD_LOGIC_VECTOR (1 downto 0);
				 DataToMem : in  STD_LOGIC_VECTOR (31 downto 0);
				 AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
				 PC : in  STD_LOGIC_VECTOR (31 downto 0);
 				 DataToReg : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
begin

	Inst_pc: ProgrammingCounter port map (
		clk => clk,
		rst => rst,
		dato => aux2,
		PCOut => PC
	);

	Inst_pc_next: ProgrammingCounter port map (
		clk => clk,
		rst => rst,
		dato => PC,
		PCOut => address
	);

	Inst_sumPC: Sumador32B port map (
		A => aux1,
		B => x"00000001",
		SumOut => PcCounterPlus
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
	disp30 <= instruction(29 downto 0);
	disp22 <= instruction(21 downto 0);
	
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
	
	Inst_RD_Mux: RD_Mux Port Map ( 
		RfDest => RfDest,
		RD => NRd,
		nRD => Mux_NRd
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
		we => weRF,
		rs1 => NRs1,
		rs2 => NRs2,
		rd => Mux_NRd,
		rst => rst,
		dataToWrite => AluResult,
		CRs1 => Crs1,
		CRs2 => aux7,
		CRd => cRD
	);
	
	Inst_UC: UnityControl Port Map(
		Op => Op,
	   Op3=> Op3,
      AluOp => AluOp,
		cond => cond,
		icc => icc,
		we => weRF,
		RFDest => RFDest,
		WrENMemory => WrENMemory,
		ReENMemory => ReENMemory,
		RfSource => RfSource,
		PcSource => PcSource
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
	
	Inst_DataMemory: DataMemory port map (
		Rst => Rst,
		cRD => cRD,
		AluResult => AluResult,
		WrENMem => WrENMem,
		RdENMem => RdENMem,
		Data => DataToMem
	);
	
	Inst_DataRf_Mux: DataRF_Mux port map (
		RfSource => RfSource,
		DataToMem => DataToMem,
		AluResult => AluResult,
		PC => PC,
 		DataToReg => DataToReg
	);
	
	Inst_SeuDisp30: SEU_Disp30 port map ( 
		Disp30 => disp30,
		SEU_Disp30 => SEU_Disp30
	);
	
	Inst_SeuDisp22: SEU_Disp22 port map (
		Disp22 => disp22,
      Seu_Disp22 => Seu_Disp22
	);
	
	Inst_PcMux: PC_Mux port map (
		PcSource => PcSource,
		AluResult => AluResult,
		Pc => PcCounterPlus,
		Pc_Disp22 => Seu_Disp22,
		Pc_Disp30 => Seu_Disp30,
		nPC_Source => nPC_Source
	);
	
	salida <= AluResult;
	
end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY TB_DataMemory IS
END TB_DataMemory;
 
ARCHITECTURE behavior OF TB_DataMemory IS 
    COMPONENT DataMemory
    PORT(
         Rst : IN  std_logic;
         cRD : IN  std_logic_vector(31 downto 0);
         AluResult : IN  std_logic_vector(31 downto 0);
         WrENMem : IN  std_logic;
         RdENMem : IN  std_logic;
         Data : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal Rst : std_logic := '0';
   signal cRD : std_logic_vector(31 downto 0) := (others => '0');
   signal AluResult : std_logic_vector(31 downto 0) := (others => '0');
   signal WrENMem : std_logic := '0';
   signal RdENMem : std_logic := '0';

 	--Outputs
   signal Data : std_logic_vector(31 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: DataMemory PORT MAP (
          Rst => Rst,
          cRD => cRD,
          AluResult => AluResult,
          WrENMem => WrENMem,
          RdENMem => RdENMem,
          Data => Data
        );

   -- Stimulus process
   stim_proc: process
   begin
		Rst <= '1';
		cRD <= x"00000001";
		AluResult <= x"00000001";
		WrENMem <= '0';
		RdENMem <= '0';
		wait for 10 ns;
		Rst <= '0';
		WrENMem <= '1';
		RdENMem <= '1';
		wait for 10 ns;
		WrENMem <= '0';
		RdENMem <= '1';
		wait for 10 ns;
		WrENMem <= '0';
		RdENMem <= '0';
      wait;
   end process;

END;

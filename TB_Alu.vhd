library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY TB_Alu IS
END TB_Alu;
 
ARCHITECTURE behavior OF TB_Alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Alu
    PORT(
         AluOp : IN  std_logic_vector(5 downto 0);
         rs1 : IN  std_logic_vector(31 downto 0);
         rs2 : IN  std_logic_vector(31 downto 0);
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal AluOp : std_logic_vector(5 downto 0) := (others => '0');
   signal rs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal AluResult : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          AluOp => AluOp,
          rs1 => rs1,
          rs2 => rs2,
          AluResult => AluResult
        );

   -- Stimulus process
   stim_proc: process
   begin		
      rs1 <= x"00000000";
		rs2 <= x"0000000A";
		AluOp <= "000000";
		wait for 20 ns;
		AluOp <= "000001";
		wait for 20 ns;
		AluOp <= "000010";
		wait for 20 ns;
		AluOp <= "000011";
		wait for 20 ns;
		AluOp <= "000100";
		wait for 20 ns;
		AluOp <= "000101";
		wait for 20 ns;
		AluOp <= "000110";
		wait for 20 ns;
		AluOp <= "000111";
      wait;
   end process;

END;

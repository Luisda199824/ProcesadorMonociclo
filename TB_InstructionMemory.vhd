library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;
 
ENTITY TB_InstructionMemory IS
END TB_InstructionMemory;
 
ARCHITECTURE behavior OF TB_InstructionMemory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT instructionMemory
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         outInstruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';

 	--Outputs
   signal outInstruction : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instructionMemory PORT MAP (
          address => address,
          rst => rst,
          outInstruction => outInstruction
        );

   -- Stimulus process
   stim_proc: process
   begin
		address <= x"00000000";
		rst <= '0';
		wait for 50 ns;
		rst <= '1';
		wait for 50 ns;
		rst <= '0';
		address <= x"0000000F";
      wait;
   end process;

END;
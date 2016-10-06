library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY TB_UnityControl IS
END TB_UnityControl;
 
ARCHITECTURE behavior OF TB_UnityControl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT UnityControl
    PORT(
         Op : IN  std_logic_vector(1 downto 0);
         Op3 : IN  std_logic_vector(5 downto 0);
         AluOp : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal Op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal AluOp : std_logic_vector(5 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UnityControl PORT MAP (
          Op => Op,
          Op3 => Op3,
          AluOp => AluOp
        );
	
	-- Stimulus process
   stim_proc: process
   begin		
      Op <= "10";
		Op3 <= "000000";
		wait for 20 ns;
		Op3 <= "000100";
		wait for 20 ns;
		Op3 <= "000010";
		wait for 20 ns;
		Op3 <= "000001";
		wait for 20 ns;
		Op3 <= "000011";
		wait for 20 ns;
		Op3 <= "000110";
		wait for 20 ns;
		Op3 <= "000101";
		wait for 20 ns;
		Op3 <= "000111";
		wait for 20 ns;
		Op3 <= "000000";
      wait;
   end process;

END;

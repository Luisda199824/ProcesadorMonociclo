LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Sumador32B IS
END TB_Sumador32B;
 
ARCHITECTURE behavior OF TB_Sumador32B IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Sumador32B
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         SumOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SumOut : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador32B PORT MAP (
          A => A,
          B => B,
          SumOut => SumOut
        );

   -- Stimulus process
   stim_proc: process
   begin
		A <= "00000000000000000000000000000001";
		B <= "00000000000000000000000000000001";
		wait for 20 ns;
		A <= "00000000010100000000000000000001";
		B <= "00000000001000000000000000000001";
		wait for 20 ns;
		A <= "00000000000111110000000000000001";
		B <= "00000000000000001111110000000001";
		wait for 20 ns;
		A <= "00000000000000000000001111000001";
		B <= "00000000000000000000001111000001";
      wait;
   end process;

END;

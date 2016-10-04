LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY TB_SignExtend IS
END TB_SignExtend;
 
ARCHITECTURE behavior OF TB_SignExtend IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT SignExtender
    PORT(
         A : IN  std_logic_vector(12 downto 0);
         clk : IN  std_logic;
         SEOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal A : std_logic_vector(12 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal SEOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SignExtender PORT MAP (
          A => A,
          clk => clk,
          SEOut => SEOut
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		A <= "0000000000010";
		wait for 100 ns;
		A <= "0000000001000";
		wait for 100 ns;
		A <= "1000000000001";
		wait for 100 ns;
		A <= "1110000000001";
      wait;
   end process;

END;

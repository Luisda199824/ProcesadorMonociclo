LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Procesador IS
END TB_Procesador;
 
ARCHITECTURE behavior OF TB_Procesador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT unionModulos
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: unionModulos PORT MAP (
          clk => clk,
          rst => rst,
          salida => salida
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
		rst <= '1';
      wait for 15 ns;		
		rst <= '0';
      wait;
   end process;

END;

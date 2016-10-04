library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY TB_ProgrammingCounter IS
END TB_ProgrammingCounter;
 
ARCHITECTURE behavior OF TB_ProgrammingCounter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ProgrammingCounter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         dato : IN  std_logic_vector(31 downto 0);
         PCOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal dato : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal PCOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgrammingCounter PORT MAP (
          clk => clk,
          rst => rst,
          dato => dato,
          PCOut => PCOut
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
		dato <= x"000C0000";
      rst <= '0';
		wait for 40 ns;
		rst <= '1';
		wait for 10 ns;
		rst <= '0';
		dato <= x"A0000000";
		wait for 10 ns;
		rst <= '1';
		wait for 10 ns;
		wait;
   end process;

END;

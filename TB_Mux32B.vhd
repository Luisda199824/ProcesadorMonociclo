library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY TB_Mux32B IS
END TB_Mux32B;
 
ARCHITECTURE behavior OF TB_Mux32B IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Mux32B
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Sc : IN  std_logic;
         MuxOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Sc : std_logic := '0';

 	--Outputs
   signal MuxOut : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux32B PORT MAP (
          A => A,
          B => B,
          Sc => Sc,
          MuxOut => MuxOut
        );

   -- Stimulus process
   stim_proc: process
   begin
		A <= "00000000000000000000000000000000";
		B <= "10000000000000000000000000000000";
		Sc <= '0';
      wait for 20 ns;
		Sc <= '1';
      wait for 20 ns;
		A <= "11100000000000000000000000000000";
		B <= "00000000000000000000000000000000";
		Sc <= '0';
      wait for 20 ns;
		Sc <= '1';
      wait;
   end process;

END;

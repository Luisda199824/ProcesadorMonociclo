LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
 
ENTITY TB_registerFile IS
END TB_registerFile;
 
ARCHITECTURE behavior OF TB_registerFile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT registerFile
    PORT(
         rs1 : IN  std_logic_vector(4 downto 0);
         rs2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         rst : IN  std_logic;
         dataToWrite : IN  std_logic_vector(31 downto 0);
         CRs1 : OUT  std_logic_vector(31 downto 0);
         CRs2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal dataToWrite : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal CRs1 : std_logic_vector(31 downto 0);
   signal CRs2 : std_logic_vector(31 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          rs1 => rs1,
          rs2 => rs2,
          rd => rd,
          rst => rst,
          dataToWrite => dataToWrite,
          CRs1 => CRs1,
          CRs2 => CRs2
        );

   -- Stimulus process
   stim_proc: process
   begin
		rs1 <= "00000";
		rs2 <= "00001";
		rd <= "00000";
		dataToWrite <= x"00000001";
		wait for 20 ns;
		rd <= "00001";
		wait for 20 ns;
		dataToWrite <= x"00000002";
		rd <= "00010";
		wait for 20 ns;
		dataToWrite <= x"00000003";
		rd <= "00100";
		wait for 20 ns;
		rd <= "00000";
		rs1 <= "00001";
		rs2 <= "00010";
		wait for 40 ns;
		rs1 <= "00100";
		rs2 <= "00001";
		wait for 40 ns;
		rs1 <= "00000";
		rs2 <= "00000";
      wait;
   end process;

END;

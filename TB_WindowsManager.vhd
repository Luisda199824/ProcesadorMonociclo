LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_WindowsManager IS
END TB_WindowsManager;
 
ARCHITECTURE behavior OF TB_WindowsManager IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT WindowsManager
    PORT(
         rs1 : IN  std_logic_vector(4 downto 0);
         rs2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         cwp : IN  std_logic;
         op3 : IN  std_logic_vector(5 downto 0);
         op : IN  std_logic_vector(1 downto 0);
         nrs1 : OUT  std_logic_vector(5 downto 0);
         nrs2 : OUT  std_logic_vector(5 downto 0);
         ncwp : OUT  std_logic;
         nrd : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal cwp : std_logic := '0';
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal op : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal nrs1 : std_logic_vector(5 downto 0);
   signal nrs2 : std_logic_vector(5 downto 0);
   signal ncwp : std_logic;
   signal nrd : std_logic_vector(5 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WindowsManager PORT MAP (
          rs1 => rs1,
          rs2 => rs2,
          rd => rd,
          cwp => cwp,
          op3 => op3,
          op => op,
          nrs1 => nrs1,
          nrs2 => nrs2,
          ncwp => ncwp,
          nrd => nrd
        );

   stim_proc: process
   begin
		rs1 <= "00000";
		rs2 <= "00000";
		rd <= "00000";
		cwp <= '0';
		op3 <= "000000";
		op <= "00";
      wait;
   end process;

END;

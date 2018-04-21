--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:31 04/04/2018
-- Design Name:   
-- Module Name:   C:/Users/Thamian/OLED_display/test_bench_digit_printer.vhd
-- Project Name:  OLED_display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: digit_printer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_bench_digit_printer IS
END test_bench_digit_printer;
 
ARCHITECTURE behavior OF test_bench_digit_printer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digit_printer
    PORT(
         DIGIT : IN  std_logic_vector(3 downto 0);
         EN : IN  std_logic;
         OLED_BUSY : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         DATA_IN : IN  std_logic_vector(7 downto 0);
         PRINT : OUT  std_logic;
         BUSY : OUT  std_logic;
         ADDR : OUT  std_logic_vector(6 downto 0);
         DATA_OUT : OUT  std_logic_vector(7 downto 0);
         EN_ROM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIGIT : std_logic_vector(3 downto 0) := (others => '0');
   signal EN : std_logic := '0';
   signal OLED_BUSY : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal DATA_IN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal PRINT : std_logic;
   signal BUSY : std_logic;
   signal ADDR : std_logic_vector(6 downto 0);
   signal DATA_OUT : std_logic_vector(7 downto 0);
   signal EN_ROM : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digit_printer PORT MAP (
          DIGIT => DIGIT,
          EN => EN,
          OLED_BUSY => OLED_BUSY,
          RST => RST,
          CLK => CLK,
          DATA_IN => DATA_IN,
          PRINT => PRINT,
          BUSY => BUSY,
          ADDR => ADDR,
          DATA_OUT => DATA_OUT,
          EN_ROM => EN_ROM
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 15 ns;
		
		EN <= '1';
		
		wait for 10 ns;
		
		EN <= '0';
		
		wait for 360 ns;
		
		EN <= '1';
		
		wait for 10 ns;
		
		EN <= '0';
		
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

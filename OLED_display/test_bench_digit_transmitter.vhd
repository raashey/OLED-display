--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:26:26 04/04/2018
-- Design Name:   
-- Module Name:   C:/Users/Thamian/OLED_display/test_bench_digit_transmitter.vhd
-- Project Name:  OLED_display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: digit_transmitter
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
 
ENTITY test_bench_digit_transmitter IS
END test_bench_digit_transmitter;
 
ARCHITECTURE behavior OF test_bench_digit_transmitter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digit_transmitter
    PORT(
         DIGIT : OUT  std_logic_vector(3 downto 0);
         PRINTER_BUSY : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         EN_PRINTER : OUT  std_logic;
         BUTTON : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PRINTER_BUSY : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal BUTTON : std_logic := '0';

 	--Outputs
   signal DIGIT : std_logic_vector(3 downto 0);
   signal EN_PRINTER : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digit_transmitter PORT MAP (
          DIGIT => DIGIT,
          PRINTER_BUSY => PRINTER_BUSY,
          CLK => CLK,
          RST => RST,
          EN_PRINTER => EN_PRINTER,
          BUTTON => BUTTON
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
		BUTTON <= '1';
		wait for 200ns;
		BUTTON <= '0';
		
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:12:58 04/04/2018
-- Design Name:   
-- Module Name:   C:/Users/Thamian/OLED_display/test_bench_character_ROM.vhd
-- Project Name:  OLED_display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: character_ROM
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
 
ENTITY test_bench_character_ROM IS
END test_bench_character_ROM;
 
ARCHITECTURE behavior OF test_bench_character_ROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT character_ROM
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         ADDR : IN  std_logic_vector(6 downto 0);
         DATA : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';
   signal ADDR : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal DATA : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: character_ROM PORT MAP (
          CLK => CLK,
          EN => EN,
          ADDR => ADDR,
          DATA => DATA
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
      ADDR <= "0000001";
		
		wait for 15 ns;
		
		EN <= '1';
		
		wait for 10 ns;
		
		EN <= '0';
		
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

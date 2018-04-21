--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:12:35 04/04/2018
-- Design Name:   
-- Module Name:   C:/Users/Thamian/OLED_display/test_bench_OLED_Ctrl.vhd
-- Project Name:  OLED_display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OLED_Ctrl
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
 
ENTITY test_bench_OLED_Ctrl IS
END test_bench_OLED_Ctrl;
 
ARCHITECTURE behavior OF test_bench_OLED_Ctrl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OLED_Ctrl
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Byte : IN  std_logic_vector(7 downto 0);
         WriteByte : IN  std_logic;
         Busy : OUT  std_logic;
         I2C_Go : OUT  std_logic;
         I2C_FIFO_DI : OUT  std_logic_vector(7 downto 0);
         I2C_FIFO_Push : OUT  std_logic;
         I2C_FIFO_Full : IN  std_logic;
         I2C_Busy : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Byte : std_logic_vector(7 downto 0) := (others => '0');
   signal WriteByte : std_logic := '0';
   signal I2C_FIFO_Full : std_logic := '0';
   signal I2C_Busy : std_logic := '0';

 	--Outputs
   signal Busy : std_logic;
   signal I2C_Go : std_logic;
   signal I2C_FIFO_DI : std_logic_vector(7 downto 0);
   signal I2C_FIFO_Push : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OLED_Ctrl PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Byte => Byte,
          WriteByte => WriteByte,
          Busy => Busy,
          I2C_Go => I2C_Go,
          I2C_FIFO_DI => I2C_FIFO_DI,
          I2C_FIFO_Push => I2C_FIFO_Push,
          I2C_FIFO_Full => I2C_FIFO_Full,
          I2C_Busy => I2C_Busy
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 215 ns;
		
		Byte <= "01010101";
		WriteByte <= '1';
		
		wait for 10 ns;

		WriteByte <= '0';
		
      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

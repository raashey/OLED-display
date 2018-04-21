----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:09 03/21/2018 
-- Design Name: 
-- Module Name:    OLED_controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OLED_controller is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           DISPLAY : in  STD_LOGIC;
           BYTE : in  STD_LOGIC_VECTOR (7 downto 0);
           BUSY : out  STD_LOGIC;
           I2CM_BUSY : in  STD_LOGIC;
           I2CM_FIFO_FULL : in  STD_LOGIC;
           I2CM_FIFO_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           I2CM_GO : out  STD_LOGIC;
           I2CM_FIFO_PUSH : out  STD_LOGIC);
end OLED_controller;

architecture Behavioral of OLED_controller is

begin


end Behavioral;


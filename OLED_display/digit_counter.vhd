----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:30 04/04/2018 
-- Design Name: 
-- Module Name:    digit_counter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity digit_counter is
    Port ( CLK : in  STD_LOGIC;     -- input clock
           Counter : out  STD_LOGIC_VECTOR (2 downto 0)
			 );
end digit_counter;

architecture Behavioral of digit_counter is
    signal count   : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin

    -- clock divider
    process (CLK)
    begin
        if rising_edge(CLK) then
		if count = "110" then
		count <= "000";
		else
		count <= count + "001";
		end if;
		Counter <= count;
        end if;
    end process;
    
end Behavioral;

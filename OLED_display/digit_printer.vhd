----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:35 03/21/2018 
-- Design Name: 
-- Module Name:    digit_printer - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity digit_printer is
    Port ( DIGIT : in  STD_LOGIC_VECTOR (3 downto 0);
           EN : in  STD_LOGIC;
			  OLED_BUSY : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           DATA_IN : in  STD_LOGIC_VECTOR (7 downto 0);
			  PRINT : out  STD_LOGIC := '0';
			  BUSY : out  STD_LOGIC := '0';
			  ADDR : out  STD_LOGIC_VECTOR (6 downto 0) := "0000000";
			  DATA_OUT : out  STD_LOGIC_VECTOR (7 downto 0) := "11001100";
			  EN_ROM : out  STD_LOGIC := '0');
end digit_printer;

architecture Behavioral of digit_printer is
    type state_type is (IDLE, READY, CHECK, CONSTRUCT_ADDRESS, READ_DATA, PRINT_DATA, GO_TO_NEXT_BYTE);
	 signal state, next_state : state_type;
	 
	 --signal data : STD_LOGIC_VECTOR (7 downto 0);
	 signal byte_number : STD_LOGIC_VECTOR (2 downto 0) := "000";
	 
begin

    state_process : process(CLK)
	 begin
	   if rising_edge(CLK) then
		  if RST = '1' then
		    state <= IDLE;
		  else
		    state <= next_state;
		  end if;
		end if;
	 end process state_process;
	 
	 next_state_process : process(state, EN, OLED_BUSY, byte_number)
	 begin
	   next_state <= state;
		case state is
		  when IDLE =>
		    if EN = '1' then
			   next_state <= READY;
			 end if;
        when READY =>
          if OLED_BUSY = '0' then
            next_state <= CHECK;
          end if;  
		  when CHECK =>
			 if byte_number = "110" then
				next_state <= IDLE;
			 else
			   next_state <= CONSTRUCT_ADDRESS;
			 end if;
		  when CONSTRUCT_ADDRESS =>
		    next_state <= READ_DATA;
		  when READ_DATA =>
			 next_state <= PRINT_DATA;
		  when PRINT_DATA =>
			 next_state <= GO_TO_NEXT_BYTE;
	     when GO_TO_NEXT_BYTE =>
			 next_state <= READY;
		end case;
	 end process next_state_process;
	 
	 BUSY_process : process (state, EN, byte_number)
	 begin
       if rising_edge( Clk ) then
         case state is
           when IDLE =>
             if EN = '1' then
               BUSY <= '1';
             end if;
           when CHECK =>
             if byte_number = "110" then
               BUSY <= '0'; 
             end if;
           when others =>
         end case;
       end if;  
	 end process BUSY_process;
	 
	 ADDR_process : process(state, byte_number, DIGIT)
	 begin
		case state is
		  when CONSTRUCT_ADDRESS =>
			 ADDR <= DIGIT(3 downto 0) & byte_number(2 downto 0);
		  when others =>
          ADDR <= "0000000";
		end case;
	 end process ADDR_process;
	 
	 EN_ROM_process : process(state)
	 begin
		case state is
		  when CONSTRUCT_ADDRESS =>
			 EN_ROM <= '1';
	     when GO_TO_NEXT_BYTE =>
			 EN_ROM <= '0';
		  when others =>
          EN_ROM <= '0';
		end case;
	 end process EN_ROM_process;
	 
	 PRINT_process : process(state)
	 begin
		case state is
		  when PRINT_DATA =>
			 PRINT <= '1';
	     when GO_TO_NEXT_BYTE =>
		    PRINT <= '0';
		  when others =>
          PRINT <= '0';
		end case;
	 end process PRINT_process;
	 
--	 data_process : process(state, CLK, DATA_IN)
--	 begin
--		case state is
--		  when READ_DATA =>
--		    data <= DATA_IN;
--			 DATA_OUT <= data;
--	     when others =>
--          DATA_OUT <= data;
--		end case;
--	 end process data_process;
	 
	 byte_number_process : process(Clk,state)
	 begin
       if rising_edge( Clk ) then
         case state is
           when IDLE =>
             byte_number <= "000";
           when GO_TO_NEXT_BYTE =>
             byte_number <= byte_number + "001";
           when others =>
         end case;
       end if; 
	 end process byte_number_process;
	 
--	 next_state_process : process(CLK)
--	 begin
--	   next_state <= state;
--		case state is
--		  when IDLE =>
--		    if EN = '1' and OLED_BUSY = '0' then
--			   next_state <= CHECK;
--				BUSY <= '1';
--				digit_copy <= DIGIT;
--			 end if;
--		  when CHECK =>
--			 if byte_number = "110" then
--			   BUSY <= '0';
--          byte_number <= "000";
--				next_state <= IDLE;
--			 else
--			   next_state <= CONSTRUCT_ADDRESS;
--			 end if;
--		  when CONSTRUCT_ADDRESS =>
--			 ADDR <= DIGIT & byte_number;
--			 EN_ROM <= '1';
--		    next_state <= READ_DATA;
--		  when READ_DATA =>
--			 data <= DATA_IN;
--			 DATA_OUT <= data;
--			 next_state <= PRINT_DATA;
--		  when PRINT_DATA =>
--			 PRINT <= '1';
--			 next_state <= GO_TO_NEXT_BYTE;
--	     when GO_TO_NEXT_BYTE =>
--		    PRINT <= '0';
--			 EN_ROM <= '0';
--		    byte_number <= byte_number + "001";
--			 next_state <= CHECK;
--		end case;
--	 end process next_state_process;
	 
end Behavioral;

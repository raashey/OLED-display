----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:01 03/21/2018 
-- Design Name: 
-- Module Name:    digit_transmitter - Behavioral 
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

entity digit_transmitter is
    Port ( DIGIT : out  STD_LOGIC_VECTOR (3 downto 0);
           PRINTER_BUSY : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  EN_PRINTER : out  STD_LOGIC;
           BUTTON : in  STD_LOGIC);
end digit_transmitter;

architecture Behavioral of digit_transmitter is
    type state_type is (INIT, IDLE, PRINT, SHIFT_BYTES, DONE);
	 signal state, next_state : state_type;
	 
	 signal digit_line :  STD_LOGIC_VECTOR (83 downto 0) := X"0123456789ABCDEF01234";
	 signal digit_mask :  STD_LOGIC_VECTOR (83 downto 0) := X"FFFFFFFFFFFFFFFFFFFFF";
	 
	 signal button_current_state : STD_LOGIC := '0';
	 signal button_previous_state : STD_LOGIC := '0'; 
	 signal button_pressed : STD_LOGIC := '0';
	 
begin
	 
    state_process : process(CLK)
	 begin
	   if rising_edge(CLK) then
		  if RST = '1' then
		    state <= INIT;
		  else
		    state <= next_state;
		  end if;
		end if;
	 end process state_process;
	 
	 button_process : process(CLK)
	 begin
	   if rising_edge(CLK) then
		  button_previous_state <= button_current_state;
		  button_current_state <= BUTTON;
		  
		  if button_current_state = '1' and button_previous_state = '0' then
		    button_pressed <= '1';
		  else
		    button_pressed <= '0';
		  end if;
		end if;
	 end process button_process;
	 
	 next_state_process : process(CLK, state, digit_mask, PRINTER_BUSY, button_pressed)
	 begin
	   next_state <= state;
		case state is
		  when INIT =>
			 next_state <= IDLE;
		  when IDLE =>
			 if digit_mask(3 downto 0) /= "0000" then
			   if PRINTER_BUSY = '0' and button_pressed = '1' then
				  next_state <= PRINT;
				end if;
			 else
				next_state <= DONE;
			 end if;
		  when PRINT =>
			 next_state <= SHIFT_BYTES;
		  when SHIFT_BYTES =>
			 next_state <= IDLE;
		  when DONE =>
		    next_state <= state;
		end case;
	 end process next_state_process;
	 
	 digit_line_process : process(Clk,state)
	 begin
       if rising_edge( Clk ) then
         case state is
           when INIT =>
             digit_line <= X"0123456789ABCDEF01234";
           when SHIFT_BYTES =>
             digit_line <= "0000" & digit_line(83 downto 4);
           when others =>
         end case;
       end if; 
	 end process digit_line_process;
	 
	 digit_mask_process : process(Clk,state)
	 begin
       if rising_edge( Clk ) then
         case state is
           when INIT =>
             digit_mask <= X"FFFFFFFFFFFFFFFFFFFFF";
           when SHIFT_BYTES =>
             digit_mask <= "0000" & digit_mask(83 downto 4);
           when others =>
         end case;
      end if;
	 end process digit_mask_process;
	 
	 DIGIT_process : process(Clk,state, digit_mask, PRINTER_BUSY, digit_line, button_pressed)
	 begin
       if rising_edge( Clk ) then
         case state is
           when IDLE =>
             if digit_mask(3 downto 0) /= "0000" then
               if PRINTER_BUSY = '0' and button_pressed = '1' then
                 DIGIT <= digit_line(3 downto 0);
               end if;
             end if;
           when others =>
         end case;
       end if;  
	 end process DIGIT_process;
	 
	 EN_PRINTER_process : process(state)
	 begin
		case state is
		  when PRINT =>
			 EN_PRINTER <= '1';
		  when SHIFT_BYTES =>
			 EN_PRINTER <= '0';
		  when others =>
          EN_PRINTER <= '0';
		end case;
	 end process EN_PRINTER_process;
	 
end Behavioral;

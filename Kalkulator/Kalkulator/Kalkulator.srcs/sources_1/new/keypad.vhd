library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity keypad is
    Port(
         CLK : in std_logic;
         RESET : in std_logic;
         
         KEY_ROW : in std_logic_vector(3 downto 0);
         KEY_COL : out std_logic_vector(3 downto 0);
         
         pressed_key : inout std_logic_vector(3 downto 0)
          );
          
end keypad;

architecture Behavioral of keypad is


type KEY_DECODE_FSM is (IDLE, READ_ROW1, READ_ROW2, READ_ROW3);
signal key_decode_fsm_sig_k : KEY_DECODE_FSM;

signal saved_row_col : std_logic_vector(7 downto 0);
signal wait_cntr : unsigned(3 downto 0) := x"0";

signal init_flag : boolean := true;

begin

    KEY_DECODE: process(all)
    begin
        -- executes only when there is no delay currently
        if rising_edge(CLK) then
            if RESET = '1' then
               key_decode_fsm_sig_k <= IDLE; 
               KEY_COL <= (others => '0');
            else
                case key_decode_fsm_sig_k is            
                when IDLE =>
                    if wait_cntr = x"f" then
                        if KEY_ROW /= x"f" then
                            KEY_COL <= x"e";                   
                            key_decode_fsm_sig_k <= READ_ROW1;
                        else
                            KEY_COL <= x"0";
                            key_decode_fsm_sig_k <= IDLE;
                        end if;                   
                    end if;     
                when READ_ROW1 =>
                    if wait_cntr = x"f" then 
                        KEY_COL <= x"d";
                        key_decode_fsm_sig_k <= READ_ROW2;
                     else
                        key_decode_fsm_sig_k <= READ_ROW1;
                     end if;                
                when READ_ROW2 =>
                    if wait_cntr = x"f" then 
                        KEY_COL <= x"b";
                        key_decode_fsm_sig_k <= READ_ROW3;
                     else
                        key_decode_fsm_sig_k <= READ_ROW2;
                     end if;
                when READ_ROW3 =>
                    if wait_cntr = x"f" then
                        KEY_COL <= x"7";
                        key_decode_fsm_sig_k <= IDLE;
                     else
                        key_decode_fsm_sig_k <= READ_ROW3;
                     end if;  
                end case;
            end if;
        end if;
    end process KEY_DECODE;    
    
    WAIT_CNTR_PROC: process(all)
    begin
        if rising_edge(CLK) then 
            wait_cntr <= wait_cntr + 1;
         end if;
    end process WAIT_CNTR_PROC;
    --saved_col_row <= saved_col & saved_row;
    saved_row_col(7 downto 4) <=  KEY_ROW;
    saved_row_col(3 downto 0) <=  KEY_COL;
             
    KEY_TO_HEX : process(all)
    begin   
        if rising_edge(CLK) then
            if init_flag = true then
                pressed_key <= x"A";
                init_flag <= false;
            else
                if wait_cntr = x"f" then
                    case saved_row_col is  
                        when x"ee" =>
                            pressed_key <= x"1";
                        when x"ed" =>
                            pressed_key <= x"2";
                        when x"eb" =>
                            pressed_key <= x"3";
                        when x"e7" =>
                            pressed_key <= x"A";
                        when x"de" =>
                            pressed_key <= x"4";
                        when x"dd" =>
                            pressed_key <= x"5";
                        when x"db" =>
                            pressed_key <= x"6";
                        when x"d7" =>
                            pressed_key <= x"B";  
                        when x"be" =>
                            pressed_key <= x"7";
                        when x"bd" =>
                            pressed_key <= x"8";
                        when x"bb" =>
                            pressed_key <= x"9";
                        when x"b7" =>
                            pressed_key <= x"C";  
                        when x"7e" =>
                            pressed_key <= x"0";
                        when x"7d" =>
                            pressed_key <= x"F";
                        when x"7b" =>
                            pressed_key <= x"E";
                        when x"77" =>
                            pressed_key <= x"D";              
                        when others =>
                            pressed_key <= pressed_key;
                    end case;
                else
                    pressed_key <= pressed_key;
                end if;
            end if;
        end if;
    end process KEY_TO_HEX;


end Behavioral;

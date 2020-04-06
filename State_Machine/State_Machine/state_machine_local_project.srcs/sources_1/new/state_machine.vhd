library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
Port ( 
CLK : in std_logic;
RESET : in std_logic;

KEY_ROW : in std_logic_vector(3 downto 0);
KEY_COL : out std_logic_vector(3 downto 0);

LCD : out std_logic_vector(7 downto 0)
);
end FSM;

architecture Behavioral of FSM is

type FSM_KEY_LCD is (A,B,C);
signal CURRENT_FSM_KEY_LCD, NEXT_FSM_KEY_LCD : FSM_KEY_LCD;
type KEY_DECODE_FSM is (IDLE, READ_ROW1, READ_ROW2, READ_ROW3);
signal key_decode_fsm_sig : KEY_DECODE_FSM;
signal key_hex : std_logic_vector(3 downto 0);
signal saved_row_col : std_logic_vector(7 downto 0);
signal wait_cntr : unsigned(3 downto 0) := x"0";

signal lcd_tmp : std_logic_vector(7 downto 0) := x"00";

signal delay_LCD : integer := 0;
signal is_left_LCD : boolean := true;

signal lcd_fsm_A, lcd_fsm_B, lcd_fsm_C : std_logic_vector(7 downto 0) := x"00";

signal switch_LCD_in_A_state, switch_LCD_in_B_state, switch_LCD_in_C_state : boolean := true;


signal delay_state_A : integer := 0;
signal counter_0_99_sig1 : std_logic_vector(7 downto 0) := (others=>'0');
signal counter_0_99_sig2 : std_logic_vector(7 downto 0) := (others=>'0');
signal stop_signal : boolean := false;


signal delay_state_B : integer := 0;
signal current_letter : std_logic_vector(7 downto 0) := x"a0";
signal counter_0_9_sig : std_logic_vector(7 downto 0) := (others=>'0');


signal delay_state_C : integer := 0;
signal segments_display : std_logic_vector(7 downto 0) := b"00000001";



begin


----------------------------------------------------------------------


STATE_A : process(all)
begin
    if rising_edge(CLK) and CURRENT_FSM_KEY_LCD=A and delay_LCD=0 then
        if switch_LCD_in_A_state then
            lcd_fsm_A <= counter_0_99_sig1 + x"10";
            switch_LCD_in_A_state <= false;
        else
            lcd_fsm_A <= counter_0_99_sig2;
            switch_LCD_in_A_state <= true;
        end if;
        
        if  delay_state_A > 0 then
            delay_state_A <= delay_state_A - 1;
        else
            -- LCD1 sig1 | LCD2 sig2
            if key_hex = x"0" then
                stop_signal <= true;
            end if;
            if key_hex = x"9" then
                stop_signal <= false;
            end if;
            if counter_0_99_sig1 = x"09" and counter_0_99_sig2 = x"09" then
                counter_0_99_sig1 <= x"00";
                counter_0_99_sig2 <= x"00";
            elsif counter_0_99_sig2 = x"09" then
                counter_0_99_sig1 <= counter_0_99_sig1 + 1;
                counter_0_99_sig2 <= x"00";
            elsif stop_signal = true then
                counter_0_99_sig1 <= counter_0_99_sig1;
                counter_0_99_sig2 <= counter_0_99_sig2;
            else
                counter_0_99_sig2 <= counter_0_99_sig2 + 1;
            end if;
            
            -- 1 second delayed
            --delay_state_A <= 125000000;
             delay_state_A <= 10;
            --delay_state_A <= 30;
        end if;
    end if;
end process STATE_A;


STATE_B : process(all)
begin
    if rising_edge(CLK) and CURRENT_FSM_KEY_LCD=B and delay_LCD=0 then
        if switch_LCD_in_B_state then
            lcd_fsm_B <= current_letter;
            switch_LCD_in_B_state <= false;
        else
            lcd_fsm_B <= counter_0_9_sig;
            switch_LCD_in_B_state <= true;
        end if;
        
        if  delay_state_B > 0 then
            delay_state_B <= delay_state_B - 1;
        else
            if current_letter = x"a6" then
                current_letter <= x"a0";
                counter_0_9_sig <= x"01";
            else
                current_letter <= current_letter + 1;
                counter_0_9_sig <= counter_0_9_sig + 1;
            end if;
            
            -- delayed 0.5 s
            --delay_state_B <= 62500000;
            delay_state_B <= 40;
        end if;
    end if;
end process STATE_B;


STATE_C : process(all)
begin
    if rising_edge(CLK) and CURRENT_FSM_KEY_LCD=C and delay_LCD=0 then
        if switch_LCD_in_C_state then
            lcd_fsm_C <= (segments_display + x"d0");
            switch_LCD_in_C_state <= false;
        else
            lcd_fsm_C <= (segments_display + x"c0");
            switch_LCD_in_C_state <= true;
        end if;
        
        if  delay_state_C > 0 then
            delay_state_C <= delay_state_C - 1;
        else
            if segments_display = x"7" then
                segments_display <= x"00";
            else
                segments_display <= segments_display + 1;
                --delayed 0.25s
                --delay_state_C <= 125000000;
                delay_state_C <= 30;
            end if;
        end if;
    end if;
end process STATE_C;

--segmenty 
--A -> LCD(0), B -> LCD(1), C -> LCD(2), D -> LCD(3)
--E -> LCD(4), F-> LCD(5), G -> LCD(6), CAT -> LCD(7)
-- |-A-|
-- F   B
-- |-G-|
-- E   C
-- |-D-|

DECODE_LCD: process(all)
begin
    if rising_edge(CLK) then
        if delay_LCD > 0 then
            delay_LCD <= delay_LCD - 1;
        else
            case lcd_tmp is         
                -- LEFT LCD            
                -- numbers: 0, 1, 2, 3, 4, 5 ...
                when x"10" =>
                    LCD <= b"10111111";
                when x"11" =>
                    LCD <= b"10000110";
                when x"12" =>
                    LCD <= b"11011011";
                when x"13" =>
                    LCD <= b"11001111";
                when x"14" =>
                    LCD <= b"11100110";
                when x"15" =>
                    LCD <= b"11101101";
                when x"16" =>
                    LCD <= b"11111101";
                when x"17" =>
                    LCD <= b"10000111";
                when x"18" =>
                    LCD <= b"11111111";
                when x"19" =>
                    LCD <= b"11101111";
                    
                -- letters: M, A, L, W, I ...
                when x"a0" =>
                    LCD <= b"10110111";
                when x"a1" =>
                    LCD <= b"11110111";
                when x"a2" =>
                    LCD <= b"10111000";
                when x"a3" =>
                    LCD <= b"10111110";
                when x"a4" =>
                    LCD <= b"10110000";
                when x"a5" =>
                    LCD <= b"10110011";
                when x"a6" =>
                    LCD <= b"11110111";

                -- C states
                when x"c0" =>
                    LCD <= b"10000000";
                when x"c1" =>
                    LCD <= b"10000001";
                when x"c2" =>
                    LCD <= b"10000011";
                when x"c3" =>
                    LCD <= b"10000111";
                when x"c4" =>
                    LCD <= b"10001111";
                when x"c5" =>
                    LCD <= b"10011111";
                when x"c6" =>
                    LCD <= b"10111111";
                when x"c7" =>
                    LCD <= b"11111111";

                -- RIGHT LCD
                -- numbers: 0, 1, 2, 3, 4, 5 ...
                when x"00" =>
                    LCD <= b"00111111";
                when x"01" =>
                    LCD <= b"00000110";
                when x"02" =>
                    LCD <= b"01011011";
                when x"03" =>
                    LCD <= b"01001111";
                when x"04" =>
                    LCD <= b"01100110";
                when x"05" =>
                    LCD <= b"01101101";
                when x"06" =>
                    LCD <= b"01111101";
                when x"07" =>
                    LCD <= b"00000111";
                when x"08" =>
                    LCD <= b"01111111";
                when x"09" =>
                    LCD <= b"01101111";
                
                -- C states
                when x"d0" =>
                    LCD <= b"00000000";
                when x"d1" =>
                    LCD <= b"00000001";
                when x"d2" =>
                    LCD <= b"00000011";
                when x"d3" =>
                    LCD <= b"00000111";
                when x"d4" =>
                    LCD <= b"00001111";
                when x"d5" =>
                    LCD <= b"00011111";
                when x"d6" =>
                    LCD <= b"00111111";
                when x"d7" =>
                    LCD <= b"01111111";
                
                when others =>
                    LCD <= b"00000000";
            end case;
            -- 20 ms delayed
            --delay_LCD <= 2500000;
            delay_LCD <= 500000;
            --delay_LCD <= 3;
        end if;
    end if;
end process DECODE_LCD;


FSM_KEY_LCD_PROC: process(all)
begin
    if rising_edge(CLK) and delay_LCD=0 then
        if reset = '1' then
          CURRENT_FSM_KEY_LCD <= A;
          lcd_tmp <= lcd_fsm_A;
        else
          CURRENT_FSM_KEY_LCD <= NEXT_FSM_KEY_LCD;
          case CURRENT_FSM_KEY_LCD is
            when A =>
                lcd_tmp <= lcd_fsm_A;
            when B =>
                lcd_tmp <= lcd_fsm_B;
            when C =>
                lcd_tmp <= lcd_fsm_C;
          end case;
        end if;
     end if;
end process FSM_KEY_LCD_PROC;  

FSM_KEY_LCD_FSM: process(all)
begin
    if rising_edge(CLK) then
        case CURRENT_FSM_KEY_LCD is
            when A => 
                if key_hex = x"B" then
                    NEXT_FSM_KEY_LCD <= B;
                else
                    NEXT_FSM_KEY_LCD <= A;
                end if;
            when B => 
                if key_hex = x"C" then
                    NEXT_FSM_KEY_LCD <= C;
                elsif key_hex = x"A" then
                    NEXT_FSM_KEY_LCD <= A;
                else
                    NEXT_FSM_KEY_LCD <= B;
                end if;
            when C => 
                if key_hex = x"A" then
                    NEXT_FSM_KEY_LCD <= A;
                else
                    NEXT_FSM_KEY_LCD <= C;
                end if;     
            when others =>
               NEXT_FSM_KEY_LCD <= A;
        end case;
    end if;      
end process FSM_KEY_LCD_FSM;
                
                
                
                

-----------------------------------------------




KEY_DECODE: process(all)
begin
    -- executes only when there is no delay currently
    if rising_edge(CLK) then
        if RESET = '1' then
           key_decode_fsm_sig <= IDLE; 
           KEY_COL <= (others => '0');
        else
            case key_decode_fsm_sig is            
            when IDLE =>
                if wait_cntr = x"f" then
                    if KEY_ROW /= x"f" then
                        KEY_COL <= x"e";                   
                        key_decode_fsm_sig <= READ_ROW1;
                    else
                        KEY_COL <= x"0";
                        key_decode_fsm_sig <= IDLE;
                    end if;                   
                end if;     
            when READ_ROW1 =>
                if wait_cntr = x"f" then 
                    KEY_COL <= x"d";
                    key_decode_fsm_sig <= READ_ROW2;
                 else
                    key_decode_fsm_sig <= READ_ROW1;
                 end if;                
            when READ_ROW2 =>
                if wait_cntr = x"f" then 
                    KEY_COL <= x"b";
                    key_decode_fsm_sig <= READ_ROW3;
                 else
                    key_decode_fsm_sig <= READ_ROW2;
                 end if;
            when READ_ROW3 =>
                if wait_cntr = x"f" then
                    KEY_COL <= x"7";
                    key_decode_fsm_sig <= IDLE;
                 else
                    key_decode_fsm_sig <= READ_ROW3;
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
      if wait_cntr = x"f" then
        case saved_row_col is  
          when x"ee" =>
            key_hex <= x"1";
          when x"ed" =>
            key_hex <= x"2";
          when x"eb" =>
            key_hex <= x"3";
          when x"e7" =>
            key_hex <= x"A";
          when x"de" =>
            key_hex <= x"4";
          when x"dd" =>
            key_hex <= x"5";
          when x"db" =>
            key_hex <= x"6";
          when x"d7" =>
            key_hex <= x"B";  
          when x"be" =>
            key_hex <= x"7";
          when x"bd" =>
            key_hex <= x"8";
          when x"bb" =>
            key_hex <= x"9";
          when x"b7" =>
            key_hex <= x"C";  
          when x"7e" =>
            key_hex <= x"0";
          when x"7d" =>
            key_hex <= x"F";
          when x"7b" =>
            key_hex <= x"E";
          when x"77" =>
            key_hex <= x"D";              
          when others =>
            key_hex <= key_hex;
      end case;
    else
      key_hex <= key_hex;
    end if;
   end if;
end process KEY_TO_HEX;


end Behavioral;
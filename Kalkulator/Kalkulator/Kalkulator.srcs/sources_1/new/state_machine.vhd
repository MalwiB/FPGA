library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity state_machine is
    Port(
         CLK : in std_logic;
         RESET : in std_logic;
         
         led_tmp : inout std_logic_vector(7 downto 0);
         
         pressed_key : inout std_logic_vector(3 downto 0)
          );
end state_machine;

architecture Behavioral of state_machine is

type FSM_STATE is (F, DIGIT1, SIGN, DIGIT2, RESULT);
signal CURRENT_FSM_STATE : FSM_STATE := F;
signal NEXT_FSM_STATE : FSM_STATE;

signal reset_sig : boolean := false;
signal reset_cntr : integer := 200;

signal current_first_digit : std_logic_vector(3 downto 0);
signal current_sign : std_logic_vector(3 downto 0);
signal current_second_digit : std_logic_vector(3 downto 0);
signal current_result : std_logic_vector(7 downto 0);

signal is_new_digit1, is_new_sign, is_new_digit2 : boolean := true;

signal led_tmp_F, led_tmp_digit1, led_tmp_calc, led_tmp_digit2, led_tmp_result_one_led, led_tmp_result_two_leds : std_logic_vector(7 downto 0);

signal calculations_done : boolean := false;

signal delay_result_cntr : integer := 0;

signal time_for_operation : integer := 30;
signal is_computed : boolean := false;

signal switch_led, left_and_right_led : boolean := false;
signal left_LED_result, right_LED_result : std_logic_vector(7 downto 0);

begin

    STATE_F : process(all)
    begin
        if rising_edge(CLK) then
            if CURRENT_FSM_STATE = F then
                led_tmp_F <= x"0F";
            end if;
        end if;
    end process STATE_F;


    STATE_DIGIT1 : process(all)
    begin
        if rising_edge(CLK) then
            if CURRENT_FSM_STATE = F then
                is_new_digit1 <= true;
                current_first_digit <= x"A";
            end if;
            if CURRENT_FSM_STATE = DIGIT1 then
                if is_new_digit1 = true then
                    current_first_digit <= pressed_key;
                    is_new_digit1 <= false;
                else
                    current_first_digit <= current_first_digit;
                end if;
                led_tmp_digit1 <= (current_first_digit + x"00");
            end if;
        end if;
    end process STATE_DIGIT1;
    
    
    STATE_CALCULATION : process(all)
    begin
        if rising_edge(CLK) then
            if CURRENT_FSM_STATE = F then
                is_new_sign <= true;
                current_sign <= x"9";
            end if;
            if CURRENT_FSM_STATE = SIGN then
                if is_new_sign = true then
                    current_sign <= pressed_key;
                    is_new_sign <= false;
                else
                    current_sign <= current_sign;
                end if;
                led_tmp_calc <= (current_sign + x"00");
                current_first_digit <= current_first_digit;
            end if;
        end if;
    end process STATE_CALCULATION;
    
    
    STATE_DIGIT2 : process(all)
    begin
        if rising_edge(CLK) then
            if CURRENT_FSM_STATE = F then
                is_new_digit2 <= true;
                current_second_digit <= x"A";
            end if;
            if CURRENT_FSM_STATE = DIGIT2 then
                if is_new_digit2 = true then
                    current_second_digit <= pressed_key;
                    is_new_digit2 <= false;
                else
                    current_second_digit <= current_second_digit;
                end if;
                led_tmp_digit2 <= (current_second_digit + x"00");
                current_first_digit <= current_first_digit;
                current_sign <= current_sign;
            end if;
        end if;
    end process STATE_DIGIT2;
    
    

    
    STATE_RESULT : process(all)
    begin
        if rising_edge(CLK) then
            if CURRENT_FSM_STATE = RESULT then
                case current_sign is
                    when x"A" =>
                        current_result(current_first_digit'range) <= (current_first_digit + current_second_digit);
                        current_result(7 downto 5) <= b"000";
                        left_and_right_LED <= true;
                    when x"B" =>
                        current_result(current_first_digit'range) <= (current_first_digit - current_second_digit);
                        current_result(7 downto 4) <= b"0000";
                        left_and_right_LED <= false;
                    when x"C" =>
                        current_result <= (current_first_digit * current_second_digit);
                        left_and_right_LED <= true;
                    when x"D" =>
                        current_result(current_first_digit'range) <= std_logic_vector(unsigned(current_first_digit) / unsigned(current_second_digit));
                        current_result(7 downto 4) <= b"0000";
                        left_and_right_LED <= false;
                    when others =>
                        current_result <= x"2F"; -- others in display '-'
                        left_and_right_LED <= false;
                end case;
            end if;
        end if;
    end process STATE_RESULT;
    
    
    SHOW_RESULT_ON_ONE_LED : process (all)
    begin
        if rising_edge(CLK) then
            if CURRENT_FSM_STATE = RESULT then
                if left_and_right_LED = false then
                    led_tmp_result_one_led <= current_result;
                end if;
            end if;
        end if;
    end process SHOW_RESULT_ON_ONE_LED;
    
    
    SHOW_RESULT_ON_TWO_LEDS : process (all)
    begin
        if rising_edge(CLK) then
            if CURRENT_FSM_STATE = F then
                time_for_operation <= 30;
                is_computed <= false;
            end if;
            if CURRENT_FSM_STATE = RESULT then
                if left_and_right_LED = true then
                    if time_for_operation > 0 and is_computed = false then
                        left_LED_result <= std_logic_vector((unsigned(current_result) - unsigned(std_logic_vector(unsigned(current_result) mod 10))) / 10) + x"10";
                        right_LED_result <= std_logic_vector(unsigned(current_result) mod 10);
                        time_for_operation <= time_for_operation - 1;
                    else
                        is_computed <= true;
                        left_LED_result <= left_LED_result;
                        right_LED_result <= right_LED_result;
                        if switch_LED = true then     -- LEFT
                            led_tmp_result_two_leds <= right_LED_result;
                            switch_LED <= false;
                        else                                   -- RIGHT
                            led_tmp_result_two_leds <= left_LED_result;
                            switch_LED <= true;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process SHOW_RESULT_ON_TWO_LEDS;
    
    
    FSM_states : process (all)
    begin
        if rising_edge(CLK) then
            case CURRENT_FSM_STATE is
                when F =>
                    if pressed_key < x"A" then
                        NEXT_FSM_STATE <= DIGIT1;
                    else
                        NEXT_FSM_STATE <= F;
                        pressed_key <= x"A";
                    end if;
                when DIGIT1 =>
                    if pressed_key > x"9" then
                        NEXT_FSM_STATE <= SIGN;
                    elsif pressed_key = x"F" then
                        NEXT_FSM_STATE <= F;
                        pressed_key <= x"A";
                    else
                        NEXT_FSM_STATE <= DIGIT1;
                    end if;
                when SIGN =>
                    if pressed_key < x"A" then
                        NEXT_FSM_STATE <= DIGIT2;
                    elsif pressed_key = x"F" then
                        NEXT_FSM_STATE <= F;
                        pressed_key <= x"A";
                    else
                        NEXT_FSM_STATE <= SIGN;
                    end if;
                when DIGIT2 =>
                    if pressed_key = x"F" then
                        NEXT_FSM_STATE <= F;
                        pressed_key <= x"A";
                    elsif pressed_key = x"E" then
                        NEXT_FSM_STATE <= RESULT;
                    else
                        NEXT_FSM_STATE <= DIGIT2;
                    end if;
                when RESULT =>
                    if pressed_key = x"F" then
                        NEXT_FSM_STATE <= F;
                        pressed_key <= x"A";
                    else
                        NEXT_FSM_STATE <= RESULT;
                    end if;
            end case;
            pressed_key <= pressed_key;
        end if;
    end process FSM_states;


    LED_TMP_FSM_SYNCHRO : process(all)
    begin
        if rising_edge(CLK) then
            CURRENT_FSM_STATE <= NEXT_FSM_STATE;
            case CURRENT_FSM_STATE is
                when F =>
                    led_tmp <= led_tmp_F;
                when DIGIT1 =>
                    led_tmp <= led_tmp_DIGIT1;
                when SIGN =>
                    led_tmp <= led_tmp_CALC;
                when DIGIT2 =>
                    led_tmp <= led_tmp_DIGIT2;
                when RESULT =>
                    if left_and_right_led = true then
                        led_tmp <= led_tmp_result_two_leds;
                    else
                        led_tmp <= led_tmp_result_one_led;
                    end if;
            end case;
        end if;
    end process LED_TMP_FSM_SYNCHRO;  

end Behavioral;

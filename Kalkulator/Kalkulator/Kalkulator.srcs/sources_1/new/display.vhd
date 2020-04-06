library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display is
  Port (                             
        CLK : in std_logic;
        RESET : in std_logic;
    
        LED : out std_logic_vector(7 downto 0);
    
        led_tmp : inout std_logic_vector(7 downto 0)
  );
end display;

architecture Behavioral of display is



signal delay : integer := 0;

begin

    DECODE_LED: process(all)
    begin
        if rising_edge(CLK) then
            if delay > 0 then
                delay <= delay - 1;
            else
                case led_tmp is     -- new left - 0  
                    when x"10" =>
                        LED <= b"00111111";
                    when x"11" =>
                        LED <= b"00110000";
                    when x"12" =>
                        LED <= b"01011011";
                    when x"13" =>
                        LED <= b"01111001";
                    when x"14" =>
                        LED <= b"01110100";
                    when x"15" =>
                        LED <= b"01101101";
                    when x"16" =>
                        LED <= b"01101111";
                    when x"17" =>
                        LED <= b"00111000";
                    when x"18" =>
                        LED <= b"01111111";
                    when x"19" =>
                        LED <= b"01111101";
                        
                    when x"00" =>   -- new right - 1
                        LED <= b"10111111";
                    when x"01" =>
                        LED <= b"10110000";
                    when x"02" =>
                        LED <= b"11011011";
                    when x"03" =>
                        LED <= b"11111001";
                    when x"04" =>
                        LED <= b"11110100";
                    when x"05" =>
                        LED <= b"11101101";
                    when x"06" =>
                        LED <= b"11101111";
                    when x"07" =>
                        LED <= b"10111000";
                    when x"08" =>
                        LED <= b"11111111";
                    when x"09" =>
                        LED <= b"11111101";    
                    -- signs
                    when x"0A" =>
                        LED <= b"11111110";
                    when x"0B" =>
                        LED <= b"11111111";
                    when x"0C" =>
                        LED <= b"10001111";
                    when x"0D" =>
                        LED <= b"10111111";
                    
                    -- first state
                    when x"0F" =>
                        LED <= b"11001110";
                    
                    when others =>
                        LED <= b"01000000";
                end case;
                -- 10 ms delayed
                --delay <= 2500000;
                delay <= 1250000;
            end if;
        end if;
    end process DECODE_LED;


end Behavioral;

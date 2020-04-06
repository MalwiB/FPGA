library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity kalkulator is
    Port(   
        CLK : in std_logic;
        RESET : in std_logic;
    
        KEY_ROW : in std_logic_vector(3 downto 0);
        KEY_COL : out std_logic_vector(3 downto 0);
    
        LED : out std_logic_vector(7 downto 0)
        
        );
        
end kalkulator;

architecture Behavioral of kalkulator is

        signal led_tmp : std_logic_vector(7 downto 0);
        
        signal pressed_key : std_logic_vector(3 downto 0);  -- key_hex

COMPONENT state_machine Port(
                            CLK : in std_logic;
                            RESET : in std_logic;
                            
                            led_tmp : inout std_logic_vector(7 downto 0);

                            pressed_key : inout std_logic_vector(3 downto 0)  -- key_hex
                            );
                            end component;
                            
COMPONENT keypad Port(
                            CLK : in std_logic;
                            RESET : in std_logic;
                            
                            KEY_ROW : in std_logic_vector(3 downto 0);
                            KEY_COL : out std_logic_vector(3 downto 0);

                            pressed_key : inout std_logic_vector(3 downto 0)
                            );
                            end component;

COMPONENT display Port(
                            CLK : in std_logic;
                            RESET : in std_logic;

                            LED : out std_logic_vector(7 downto 0);
                            
                            led_tmp : inout std_logic_vector(7 downto 0)
                            );
                            end component;

begin


STATE_MACHINE1 : state_machine PORT MAP(
                                        CLK => CLK,
                                        RESET => RESET,
                                        
                                        led_tmp => led_tmp,
                                        
                                        pressed_key => pressed_key
                                        );


KEYPAD1 : keypad PORT MAP(
                                        CLK => CLK,
                                        RESET => RESET,
                                        
                                        KEY_ROW => KEY_ROW,
                                        KEY_COL => KEY_COL,
                                        
                                        pressed_key => pressed_key
                                        );


DISPLAY1 : display PORT MAP(
                                        CLK => CLK,
                                        RESET => RESET,
                                        
                                        LED => LED,
                                        
                                        led_tmp => led_tmp
                                        );


end Behavioral;

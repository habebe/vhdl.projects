

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder_3_8 is
    Port ( 
        enable : in STD_LOGIC;
        input : in STD_LOGIC_VECTOR(2 downto 0);
        output : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Decoder_3_8;

architecture Behavioral of Decoder_3_8 is
    signal lower_enable : STD_LOGIC;
    signal upper_enable : STD_LOGIC;
begin
    lower_enable <= enable and not(input(2));
    upper_enable <= enable and input(2);

    lower : entity work.Decoder_2_4 (Behavioral)
    Port map (
        enable => lower_enable,
        a1 => input(1),
        a0 => input(0),
        d3 => output(3),
        d2 => output(2),
        d1 => output(1),
        d0 => output(0)
    );
    
    upper : entity work.Decoder_2_4 (Behavioral)
    Port map (
        enable => upper_enable,
        a1 => input(1),
        a0 => input(0),
        d3 => output(7),
        d2 => output(6),
        d1 => output(5),
        d0 => output(4)
    );

end Behavioral;

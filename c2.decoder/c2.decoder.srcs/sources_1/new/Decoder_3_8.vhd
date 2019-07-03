library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder_4_16 is
 Port ( 
        enable : in STD_LOGIC;
        input : in STD_LOGIC_VECTOR(3 downto 0);
        output : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Decoder_4_16;

architecture Behavioral of Decoder_4_16 is
    signal enable_0 : STD_LOGIC;
    signal enable_1 : STD_LOGIC;
    signal enable_2 : STD_LOGIC;   
    signal enable_3 : STD_LOGIC;   
begin
    enable_0 <= enable and not(input(3)) and not(input(2));
    enable_1 <= enable and not(input(3)) and (input(2));
    enable_2 <= enable and (input(3)) and not(input(2));
    enable_3 <= enable and (input(3)) and (input(2));
    
    c0 : entity work.Decoder_2_4 (Behavioral)
    Port map (
        enable => enable_0,
        a1 => input(1),
        a0 => input(0),
        d3 => output(3),
        d2 => output(2),
        d1 => output(1),
        d0 => output(0)
    );

    c1 : entity work.Decoder_2_4 (Behavioral)
    Port map (
        enable => enable_1,
        a1 => input(1),
        a0 => input(0),
        d3 => output(7),
        d2 => output(6),
        d1 => output(5),
        d0 => output(4)
    );
    
    c2 : entity work.Decoder_2_4 (Behavioral)
    Port map (
        enable => enable_2,
        a1 => input(1),
        a0 => input(0),
        d3 => output(11),
        d2 => output(10),
        d1 => output(9),
        d0 => output(8)
    );

    c3 : entity work.Decoder_2_4 (Behavioral)
    Port map (
        enable => enable_3,
        a1 => input(1),
        a0 => input(0),
        d3 => output(15),
        d2 => output(14),
        d1 => output(13),
        d0 => output(12)
    );
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_2_4 is
    Port (
           enable: in STD_LOGIC;
           a1 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           d3 : out STD_LOGIC;
           d2 : out STD_LOGIC;
           d1 : out STD_LOGIC;
           d0 : out STD_LOGIC
           );
end Decoder_2_4;

architecture Behavioral of Decoder_2_4 is
    signal not_a0 , not_a1 : STD_LOGIC; 
begin
    not_a0 <= not(a0);
    not_a1 <= not(a1);
    d0 <= enable and not_a1 and not_a0;
    d1 <= enable and not_a1 and a0;
    d2 <= enable and a1 and not_a0;
    d3 <= enable and a1 and a0;
end Behavioral;

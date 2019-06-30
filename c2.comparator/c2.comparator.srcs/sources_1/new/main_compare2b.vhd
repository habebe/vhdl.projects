

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity main_compare2b is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           alb : out STD_LOGIC;
           aeb : out STD_LOGIC;
           agb : out STD_LOGIC);
end main_compare2b;

architecture Behavioral of main_compare2b is

begin
    uut : entity work.Compare2b(Behavioral)
    port map(
        a1 => a(1),
        a0 => a(0),
        b1 => b(1),
        b0 => b(0),
        alb => alb,
        aeb => aeb,
        agb => agb
    );
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_compare4b is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           alb : out STD_LOGIC;
           aeb : out STD_LOGIC;
           agb : out STD_LOGIC);
end top_compare4b;

architecture Behavioral of top_compare4b is

begin
 uut : entity work.Compare4b(Behavioral)
    port map(
        a => a,
        b => b,
        alb => alb,
        aeb => aeb,
        agb => agb
    );
end Behavioral;

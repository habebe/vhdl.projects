library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Compare2b is
    Port ( a1 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           alb : out STD_LOGIC;
           agb : out STD_LOGIC;
           aeb : out STD_LOGIC
           );
end Compare2b;

architecture Behavioral of Compare2b is
    signal s_agb, s_alb : STD_LOGIC;
begin
    s_agb <= ( a1 and not (b1) ) or (not(a1) and a0 and not(b1) and not(b0)) or ( a1 and a0 and b1 and not(b0) );
    s_alb <= ( not(a1) and b1  ) or (not(a1) and not(a0) and not(b1) and b0) or ( a1 and not(a0) and b1 and b0); 
    
    alb <= s_alb;
    aeb <= not(s_agb) and not(s_alb);
    agb <= s_agb;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Compare4b is
  Port ( 
   a : in STD_LOGIC_VECTOR ( 3 downto 0 );
   b : in STD_LOGIC_VECTOR ( 3 downto 0 );
   alb : out STD_LOGIC;
   aeb : out STD_LOGIC;
   agb : out STD_LOGIC
  );
end Compare4b;

architecture Behavioral of Compare4b is
    signal msb_alb,msb_aeb,msb_agb: STD_LOGIC;
    signal lsb_alb,lsb_aeb,lsb_agb: STD_LOGIC;
begin
    msb_compare : entity work.Compare2b (Behavioral)
    port map(
     a1 => a(3),
     a0 => a(2),
     b1 => b(3),
     b0 => b(2),
     alb => msb_alb,
     aeb => msb_aeb,
     agb => msb_agb
    );

    lsb_compare : entity work.Compare2b (Behavioral)
    port map(
     a1 => a(1),
     a0 => a(0),
     b1 => b(1),
     b0 => b(0),
     alb => lsb_alb,
     aeb => lsb_aeb,
     agb => lsb_agb
    );

    alb <= msb_alb or (msb_aeb and lsb_alb);
    aeb <= msb_aeb and lsb_aeb;
    agb <= msb_agb or (msb_aeb and lsb_agb) ;
    
end Behavioral;

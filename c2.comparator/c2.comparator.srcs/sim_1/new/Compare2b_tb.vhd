library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Compare2b_tb is
end Compare2b_tb;

architecture Behavioral of Compare2b_tb is
    signal a,b: STD_LOGIC_VECTOR(1 downto 0);
    signal test_agb, test_alb, test_aeb: STD_LOGIC;
begin
    uut : entity work.Compare2b(Behavioral)
    port map(
        a1 => a(1),
        a0 => a(0),
        b1 => b(1),
        b0 => b(0),
        alb => test_alb,
        aeb => test_aeb,
        agb => test_agb
    );


process
begin
a <= "00";
b <= "00";
wait for 10 ns;
a <= "00";
b <= "01";
wait for 10 ns;
a <= "00";
b <= "10";
wait for 10 ns;
a <= "00";
b <= "11";
wait for 10 ns;

a <= "01";
b <= "00";
wait for 10 ns;
a <= "01";
b <= "01";
wait for 10 ns;
a <= "01";
b <= "10";
wait for 10 ns;
a <= "01";
b <= "11";
wait for 10 ns;

a <= "10";
b <= "00";
wait for 10 ns;
a <= "10";
b <= "01";
wait for 10 ns;
a <= "10";
b <= "10";
wait for 10 ns;
a <= "10";
b <= "11";
wait for 10 ns;

a <= "11";
b <= "00";
wait for 10 ns;
a <= "11";
b <= "01";
wait for 10 ns;
a <= "11";
b <= "10";
wait for 10 ns;
a <= "11";
b <= "11";
wait for 10 ns;



assert false
    report "Simulation Completed"
severity failure;
end process;

end Behavioral;

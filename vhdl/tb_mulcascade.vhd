library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity e is
end e;

architecture beh of e is

component mulcascade is
    port ( a0, b0, a1, b1, a2, b2, a3, b3 : in unsigned(31 downto 0);
            result0, result1, result2, result3: out unsigned(63 downto 0);
            resetn, clk : in std_logic);
end component mulcascade;

signal clk : std_logic := '0';
signal resetn : std_logic := '0';

signal a0 : unsigned(31 downto 0);
signal b0 : unsigned(31 downto 0);
signal a1 : unsigned(31 downto 0);
signal b1 : unsigned(31 downto 0);
signal a2 : unsigned(31 downto 0);
signal b2 : unsigned(31 downto 0);
signal a3 : unsigned(31 downto 0);
signal b3 : unsigned(31 downto 0);
signal result0 : unsigned(63 downto 0);
signal result1 : unsigned(63 downto 0);
signal result2 : unsigned(63 downto 0);
signal result3 : unsigned(63 downto 0);

constant CLK_PERIOD : time := 5 ns;

begin
    uut : mulcascade port map (
        clk => clk,
        resetn => resetn,
        result0 => result0,
        result1 => result1,
        result2 => result2,
        result3 => result3,
        a0 => a0,
        b0 => b0,
        a1 => a1,
        b1 => b1,
        a2 => a2,
        b2 => b2,
        a3 => a3,
        b3 => b3
    );

    clk_process : process 
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    input_process : process
    begin
        resetn <= '1';
        a0 <= (others => '0');
        b0 <= (others => '0');
        a1 <= (others => '0');
        b1 <= (others => '0');
        a2 <= (others => '0');
        b2 <= (others => '0');
        a3 <= (others => '0');
        b3 <= (others => '0');
        wait for CLK_PERIOD;
        a0 <= "00000000000000000000000000000001";
        b0 <= "00000000000000000000000000000001";
        a1 <= "00000000000000000000000000000001";
        b1 <= "00000000000000000000000000000001";
        a2 <= "00000000000000000000000000000001";
        b2 <= "00000000000000000000000000000001";
        a3 <= "00000000000000000000000000000001";
        b3 <= "00000000000000000000000000000001";
        wait for CLK_PERIOD;
        a0 <= "00000000000000000000000000000010";
        b0 <= "00000000000000000000000000000010";
        a1 <= "00000000000000000000000000000011";
        b1 <= "00000000000000000000000000000011";
        a2 <= "00000000000000000000000000000110";
        b2 <= "00000000000000000000000000000110";
        a3 <= "00000000000000000000000000000101";
        b3 <= "00000000000000000000000000000101";
        wait for CLK_PERIOD;
    end process;

end architecture beh;        

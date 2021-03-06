library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mul32 is
    port ( a, b     : in unsigned(31 downto 0);
            result  : out unsigned(63 downto 0));
end entity mul32;

architecture beh of mul32 is
begin
    result <= a * b;
end architecture beh;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reg64 is
  port( d           : in  unsigned(63 downto 0);
        resetn, clk : in  std_logic;
        q           : out unsigned(63 downto 0));
end reg64;

architecture beh of reg64 is
begin
  process (resetn, clk)
  begin
    if resetn = '0' then
      q <= (others => '0');
    elsif rising_edge(clk) then
      q <= d;
    end if;
  end process;
end beh;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mulcascade is
    port ( a0, b0, a1, b1, a2, b2, a3, b3 : in unsigned(31 downto 0);
            result0, result1, result2, result3: out unsigned(63 downto 0);
            resetn, clk : in std_logic);
end mulcascade;

architecture struct of mulcascade is
signal reg0in : unsigned(63 downto 0);
signal reg1in : unsigned(63 downto 0);
signal reg2in : unsigned(63 downto 0);
signal reg3in : unsigned(63 downto 0);

component mul32 is
port (a    : in  unsigned(31 downto 0);  -- multiplicand
       b    : in  unsigned(31 downto 0);  -- multiplier
        result : out unsigned(63 downto 0)); -- product
end component mul32;
component reg64 is
port( d           : in  unsigned(63 downto 0);
        resetn, clk : in  std_logic;
        q           : out unsigned(63 downto 0));
end component reg64;

begin
    mul0: mul32 port map(a0, b0, reg0in);
    reg0: reg64 port map(reg0in, resetn, clk, result0);
    mul1: mul32 port map(a1, b1, reg1in);
    reg1: reg64 port map(reg1in, resetn, clk, result1);
    mul2: mul32 port map(a2, b2, reg2in);
    reg2: reg64 port map(reg2in, resetn, clk, result2);
    mul3: mul32 port map(a3, b3, reg3in);
    reg4: reg64 port map(reg3in, resetn, clk, result3);
end architecture struct;

library verilog;
use verilog.vl_types.all;
entity mulcascade is
    port(
        a0              : in     vl_logic_vector(31 downto 0);
        b0              : in     vl_logic_vector(31 downto 0);
        a1              : in     vl_logic_vector(31 downto 0);
        b1              : in     vl_logic_vector(31 downto 0);
        a2              : in     vl_logic_vector(31 downto 0);
        b2              : in     vl_logic_vector(31 downto 0);
        a3              : in     vl_logic_vector(31 downto 0);
        b3              : in     vl_logic_vector(31 downto 0);
        result0         : out    vl_logic_vector(63 downto 0);
        result1         : out    vl_logic_vector(63 downto 0);
        result2         : out    vl_logic_vector(63 downto 0);
        result3         : out    vl_logic_vector(63 downto 0);
        resetn          : in     vl_logic;
        clk             : in     vl_logic
    );
end mulcascade;

library verilog;
use verilog.vl_types.all;
entity reg64_2 is
    port(
        d               : in     vl_logic_vector(63 downto 0);
        resetn          : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector(63 downto 0)
    );
end reg64_2;

library verilog;
use verilog.vl_types.all;
entity mul32_0 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(63 downto 0)
    );
end mul32_0;

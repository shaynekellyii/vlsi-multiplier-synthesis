library verilog;
use verilog.vl_types.all;
entity mul32_1_DW_mult_uns_1 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        product         : out    vl_logic_vector(63 downto 0)
    );
end mul32_1_DW_mult_uns_1;

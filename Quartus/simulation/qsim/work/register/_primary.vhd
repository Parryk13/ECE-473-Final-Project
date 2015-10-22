library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        write           : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0)
    );
end \register\;

library verilog;
use verilog.vl_types.all;
entity register_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        reset           : in     vl_logic;
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end register_vlg_sample_tst;

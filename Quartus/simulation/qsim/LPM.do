onerror {quit -f}
vlib work
vlog -work work LPM.vo
vlog -work work LPM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.registerarray_vlg_vec_tst
vcd file -direction LPM.msim.vcd
vcd add -internal registerarray_vlg_vec_tst/*
vcd add -internal registerarray_vlg_vec_tst/i1/*
add wave /*
run -all

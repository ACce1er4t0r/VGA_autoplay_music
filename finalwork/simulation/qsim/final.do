onerror {quit -f}
vlib work
vlog -work work final.vo
vlog -work work final.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.final_vlg_vec_tst
vcd file -direction final.msim.vcd
vcd add -internal final_vlg_vec_tst/*
vcd add -internal final_vlg_vec_tst/i1/*
add wave /*
run -all

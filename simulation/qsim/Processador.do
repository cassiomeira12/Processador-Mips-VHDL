onerror {quit -f}
vlib work
vlog -work work Processador.vo
vlog -work work Processador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Processador_vlg_vec_tst
vcd file -direction Processador.msim.vcd
vcd add -internal Processador_vlg_vec_tst/*
vcd add -internal Processador_vlg_vec_tst/i1/*
add wave /*
run -all

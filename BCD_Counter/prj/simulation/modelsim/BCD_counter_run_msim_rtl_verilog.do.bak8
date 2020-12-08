transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/Code/FPGA_study/BCD_Counter/rtl {F:/Code/FPGA_study/BCD_Counter/rtl/BCD_Counter_top.v}
vlog -vlog01compat -work work +incdir+F:/Code/FPGA_study/BCD_Counter/rtl {F:/Code/FPGA_study/BCD_Counter/rtl/BCD_counter.v}

vlog -vlog01compat -work work +incdir+F:/Code/FPGA_study/BCD_Counter/prj/../testbensh {F:/Code/FPGA_study/BCD_Counter/prj/../testbensh/BCD_Counter_top_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  BCD_Counter_top_tb

add wave *
view structure
view signals
run -all

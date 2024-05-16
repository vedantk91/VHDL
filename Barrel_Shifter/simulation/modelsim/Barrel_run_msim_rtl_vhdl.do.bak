transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/VHDL/Barrel/db/barrels.vhd}

vcom -93 -work work {C:/VHDL/Barrel/db/barrels_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L max -L rtl_work -L work -voptargs="+acc" barrels_tb

add wave *
view structure
view signals
run -all

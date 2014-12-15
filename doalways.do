vdel -lib work -all
vlib work

vlog -reportprogress 300 -work work always.v

vsim -voptargs="+acc" testClocks
add wave -position insertpoint \
sim:/testClocks/clk \
sim:/testClocks/out \
sim:/testClocks/clock/count

run 1000
wave zoom full
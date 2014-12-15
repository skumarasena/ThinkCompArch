vdel -lib work -all
vlib work

vlog -reportprogress 300 -work work gates.v

vsim -voptargs="+acc" testGates

run 5000
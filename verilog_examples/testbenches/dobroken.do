vlog -reportprogress 300 -work work brokenadders.v

vsim -voptargs="+acc" testFullAdder

run 10000

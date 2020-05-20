#!/bin/bash

# the script accepts one argument to indidate the output file where the perf results are appended to. 
# e.g., ./run.sh perf-result-file
for i in 1
do
        echo "replace prog $i "
        taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000

done

for i in 1
do
	echo "=== test run with $i threads without hyperthreading ===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4

done
for i in 2
do
        echo "replace prog $i "
        taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000
done

for i in 2
do
	echo "=== test run with $i threads without hyperthreading ===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4,1 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4

done
for i in 3
do
        echo "replace prog $i "
       taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000

done

for i in 4
do
	echo "=== test run with $i threads without hyperthreading ===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4,1,2,3 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4

done
for i in 4
do
        echo "replace prog $i "
       taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000

done

for i in 8
do
	echo "=== test run with $i threads without hyperthreading===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4,1,2,3,5,6,7,8 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
        
done

for i in 5
do
        echo "replace prog $i "
       taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000

done

for i in 2
do
	echo "=== test run with $i threads with hyperthreading ===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4,10 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4

done
for i in 6
do
        echo "replace prog $i "
       taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000

done

for i in 4
do
	echo "=== test run with $i threads with hyperthreading ===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4,10,1,11 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4

done
for i in 7
do
        echo "replace prog $i "
      taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000

done

for i in 8
do
	echo "=== test run with $i threads with hyperthreading ===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4,10,1,11,2,12,3,13 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4

done

for i in 8
do
        echo "replace prog $i "
       taskset -c 0,4,1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19 ./treadmul 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000 4125000

done

for i in 16
do
	echo "=== test run with $i threads with hyperthreading===" >> $1  
	perf stat -e LLC-loads,LLC-load-misses -o $1 --append taskset -c 4,10,1,11,2,12,3,13,5,15,6,16,7,17,8,18 ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
        
done

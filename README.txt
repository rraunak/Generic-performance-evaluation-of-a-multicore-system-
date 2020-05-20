


Format:
    1. Three benchmark programs, parsec fluidanimate, parsec bodytrack and starbench H264dec are run and L1-dcache loads, misses, L2 cache demand data reads, misses, LLC loads, misses, instruction count, cpu cycles and execution time are collected through perf profiling command.
    2. All the benchmarks and results are collected in a particular folder for each benchmark. Parsec fluidanimate data is collected in test-case1 which has 4 scripts to calculate all the datas required. Data files collected for each iteration are collected in the following manner,
    • LLC loads,misses for Fluidanimate:
        ◦ 1st iteration-LLCA1
        ◦ 2nd iteration-LLCB1
        ◦ 3rd iteration-LLCC1
    • A,B,C specifies each of the 3 iterations and a subscript “1“after A specifies the benchmark number:
    • 1-Parsec Fluidanimate
    • 2-Parsec Bodytrack
    • 3-Starbench H264dec
e.g: L1A2- First iteration of L1 d-cache loads, misses for parsec bodytrack.
        L2C3- Third iteration of L2 cache loads, misses for starbench H264dec.
        CPUB1- Second iteration of CPU instructions, cycles for parsec fluidanimate.

4 types of files, LLC,L1,L2 and CPU for each test cases are created.



Execution:

    1. Each test-case folder contains, run scripts and a start script, make all those scripts executable by using the chmod +x command.
    2. The start script runs all the individual scripts and it creates the required files in the given format for each test-case.
    3. Compile the c program if not compiled.
    4. Run the start script to execute all the test-scripts for each individual test-cases.





Cache Clearing/Replacement:
    1. LLC cache size: 16.5 MB
    2. Total bytes: 16.5 x 10^6 bytes
    3. Data type used to allocate: unsigned long long, which takes 4 bytes of memory.
    4. Size of array to be declared: ((16.5 x 10^6)/4)=4125000
    5. Since cpu has 10 cores with 2 threads on each core and LLC is shared by all the cores, so for memory allocated for each thread running on each cpu = 4125000/10= 412500 so, size of the array should be more than 412500.
    • A multithreaded pthread program is created which takes multiple thread values in the command line argument to run the threads parallely. Each thread allocates a memory of 4125000 of unsigned long long type and a for loop of the given argument is ran which sums the each term in a sum variable along with a rand output to store a different result in the memory on each runs for each thread. Srand function is used, which creates a different random number for each specified time. 
    • In the folder the cache clearing program is specified as treadmul which is called in the script file each time between two different perf events. 
    • Each thread in the treadmul program is ran on each of the twenty threads of the ten cpu cores.
    • Instead of running on ten threads on ten cores of the cpu, running twenty threads on each of the ten cpu cores  gave better and higher cache miss results.


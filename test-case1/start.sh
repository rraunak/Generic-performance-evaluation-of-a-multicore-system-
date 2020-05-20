#!/bin/bash
#It run directly by ./start.sh

#LLC Cache
./run1.sh LLCA1
./run1.sh LLCB1
./run1.sh LLCC1

#L1-dcache
./run2.sh L1A1
./run2.sh L1B1
./run2.sh L1C1

#L2 Cache
./run3.sh L2A1
./run3.sh L2B1
./run3.sh L2C1

#CPU instructions,cycles
./run4.sh CPUA1
./run4.sh CPUB1
./run4.sh CPUC1

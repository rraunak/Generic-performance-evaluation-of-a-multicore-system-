#!/bin/bash
#It run directly by ./start.sh

#LLC Cache
./run1.sh LLCA3
./run1.sh LLCB3
./run1.sh LLCC3

#L1-dcache
./run2.sh L1A3
./run2.sh L1B3
./run2.sh L1C3

#L2 Cache
./run3.sh L2A3
./run3.sh L2B3
./run3.sh L2C3

#CPU instructions,cycles
./run4.sh CPUA3
./run4.sh CPUB3
./run4.sh CPUC3

#!/bin/bash
#It run directly by ./start.sh

#LLC Cache
./run1.sh LLCA2
./run1.sh LLCB2
./run1.sh LLCC2

#L1-dcache
./run2.sh L1A2
./run2.sh L1B2
./run2.sh L1C2

#L2 Cache
./run3.sh L2A2
./run3.sh L2B2
./run3.sh L2C2

#CPU instructions,cycles
./run4.sh CPUA2
./run4.sh CPUB2
./run4.sh CPUC2



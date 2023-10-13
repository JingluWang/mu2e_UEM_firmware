#!/bin/bash
cat << EOF  |  while read line; do echo "$line" | tee /dev/ttyUSB0; usleep 200000; done
conf ${1}
wreg ${1} 20 ffff
wreg ${1} 6  0000
wreg ${1} 1  0000
wreg ${1} 2  1800
wreg ${1} 3  0000
wreg ${1} 4  0000
wreg ${1} 5  d455
wreg ${1} 6  00d4
wreg ${1} 7  ff58
wreg ${1} 8  f258
wreg ${1} 9  00aa
wreg ${1} 10 4c4c
wreg ${1} 11 56d4
wreg ${1} 12 2600
wreg ${1} 13 0000
wreg ${1} 14 d526
wreg ${1} 15 1a96
wreg ${1} 16 0038
wreg ${1} 17 002d
wreg ${1} 18 00ff
wreg ${1} 19 0600
wreg ${1} 21 0400 
wreg ${1} 22 0000
wreg ${1} 23 0000
wreg ${1} 24 0000
wreg ${1} 25 b300
wreg ${1} 26 0002
wreg ${1} 27 8000
wreg ${1} 28 8006
wreg ${1} 29 0557
wreg ${1} 30 0000
wreg ${1} 31 f080
wreg ${1} 32 0000
wreg ${1} 33 0000
EOF

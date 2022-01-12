#!/bin/sh

make clean
make
cd bin/
echo ""
echo "Running func_2 from C"
echo ""
./call_from_c
echo ""
echo "Running func_2 from Assembler"
echo ""
./call_from_s
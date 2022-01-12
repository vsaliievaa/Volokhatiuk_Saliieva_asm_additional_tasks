#!/bin/sh

make clean
make
cd func_1/bin/
echo ""
echo "------- FUNCTION 1 -------"
echo ""
echo "Running func_1 (Transposing matrix - task A) from C"
echo ""
./call_from_c
echo ""
echo "Running func_1 (Transposing matrix - task A) from Assembler"
echo ""
./call_from_s
cd ../..
cd func_2/bin/
echo ""
echo "------- FUNCTION 2 -------"
echo ""
echo "Running func_2 (Transposing matrix - task B) from C"
echo ""
./call_from_c
echo ""
echo "Running func_2 (Transposing matrix - task B) from Assembler"
echo ""
./call_from_s
echo ""
echo "Done."
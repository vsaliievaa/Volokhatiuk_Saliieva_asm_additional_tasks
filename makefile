# Use makefile for automation of the compilation process.
# How to use it to call make in both subdirectories a.e.: https://stackoverflow.com/questions/2206128/how-to-call-makefile-from-another-makefile
C = gcc
FS = fasm
OBJ_D = obj
BIN_D = bin
SRC_D = src

all:
	$(MAKE) -C func_1
	$(MAKE) -C func_2


.PHONY : clean
clean:
	$(MAKE) -C func_1 clean
	$(MAKE) -C func_2 clean



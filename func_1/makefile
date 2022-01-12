# use makefile for automation of the compilation process.
# Detect OS/platform:
include ../include/makefile_os.inc

C = gcc
FS = ../include/fasmg.x64
OBJ_D = obj
BIN_D = bin
SRC_D = src
C_FILE = main_c
A_FILE = main_a
C_OUT = call_from_c
A_OUT = call_from_s
ASM_FILE = func

all: create_dirs $(BIN_D)/$(C_OUT) $(BIN_D)/$(A_OUT)
	echo $(BIN_D)/${OUR_FILE}

create_dirs:
	mkdir -p $(BIN_D)
	mkdir -p $(OBJ_D)

$(BIN_D)/${C_OUT}: $(OBJ_D)/$(C_FILE).o $(OBJ_D)/$(ASM_FILE).o
	${C} $^ -o $@

$(BIN_D)/${A_OUT}: $(OBJ_D)/$(A_FILE).o $(OBJ_D)/$(ASM_FILE).o
	${C} $^ -o $@ -no-pie

$(OBJ_D)/$(C_FILE).o: $(SRC_D)/$(C_FILE).c
	${C} $^ -o $@ -c

$(OBJ_D)/$(ASM_FILE).o: $(SRC_D)/$(ASM_FILE).asm
	INCLUDE=${CURDIR}/../include $(FS) $< $@

$(OBJ_D)/$(A_FILE).o: $(SRC_D)/$(A_FILE).asm
	INCLUDE=${CURDIR}/../include $(FS) $< $@

.PHONY : clean
clean:
	rm -rf bin/ obj/



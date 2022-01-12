; implement calling your 'func' function from fasm main.

include 'format/format.inc'

format ELF64

section '.text' executable


public main
extrn printf
extrn exit
extrn func

main:
    push rbp

    mov rdi, initial_matrix
    call printf

    call print_matrix

    mov rdi, matrix
    mov rsi, size

    call func

    mov rdi, transposed_matrix
    call printf

    call print_matrix

    close:
        xor rdi, rdi
        call exit

print_element:

    mov rdi, printed_element
    mov rsi, [matrix + rdx * 8]
    xor rax, rax

    push rdx
    call printf
    pop rdx

    inc rdx

    cmp rdx, size * size
    jne print_element

    ret

print_matrix:
    xor rdx, rdx

    call print_element

    ret


section '.data' writeable
matrix dq 11, 12, 13, 14, 21, 22, 23, 24, 31, 32, 33, 34, 41, 42, 43, 44

size equ 4


printed_element db "%i ",0
initial_matrix db "Initial matrix: ", 0
transposed_matrix db 0xA, "Transposed matrix: ", 0

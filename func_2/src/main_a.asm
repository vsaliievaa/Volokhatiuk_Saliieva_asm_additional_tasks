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

inner_print:
    mov rdi, printed_element
    mov r10, [matrix + 8 * r8]
    mov esi, dword[r10 + 4 * r9]
    xor rax, rax

    push r8
    push r9

    call printf

    pop r9
    pop r8

    inc r9b

    cmp r9b, size
    jne inner_print

    jmp outer_print

outer_print:
    xor r9b, r9b
    inc r8b

    cmp r8b, size
    jne inner_print

    ret


print_matrix:
    xor r8, r8
    xor r9, r9
    dec r8b

    jmp outer_print

    ret


section '.data' writeable

array1 dd 11, 12, 13
array2 dd 21, 22, 23
array3 dd 31, 32, 33

matrix dq array1, array2, array3

size equ 3

printed_element db "%i ",0
initial_matrix db "Initial matrix: ", 0
transposed_matrix db 0xA, "Transposed matrix: ", 0
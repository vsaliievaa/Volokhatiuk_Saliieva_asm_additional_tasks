; implement function in fasm.
; IMPORTANT! Function name should be 'func'!
include 'format/format.inc'

format ELF64

section '.text' executable

public func

; C prototype: void func (uint32_t** matrix, uint8_t size);
; Linux x64 calling convention:
; a --> rdi
; b --> sil
; res --> none
;
func:
    xor r8, r8
    dec r8b

    xor r9, r9
    xor r10, r10
    xor r11, r11
    xor rax, rax


    outer_for:
        inc r8b
        mov r9b, r8b
        cmp r8b, sil
        jne inner_for

        jmp close

    inner_for:
        cmp r9b, sil
        je outer_for

        mov r10, [rdi + r8 * 8]

        mov r11, [rdi + r9 * 8]


        mov ecx, dword[r10 + r9 * 4]
        xchg ecx, dword[r11 + r8 * 4]
        xchg ecx, dword[r10 + r9 * 4]

        inc r9b
        jmp inner_for


	close:
        ret

section '.data' writeable

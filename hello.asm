; hello.asm
%include "./asm_io.inc"

section .data
    hello db "Hello World!", 0

section .text
    global CMAIN

CMAIN:
    enter   0,0
    pusha

    mov     eax, hello
    call    print_string
    call    print_nl

    popa
    leave
    xor     eax, eax   ; (CMAIN returns 0 | eax <- 0)
    ret

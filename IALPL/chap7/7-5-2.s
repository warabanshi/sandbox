    segment .text
    global  main
main:
    push    rbp
    mov     rbp, rsp
    mov     rax, 0x12345678
    ror     rax, 8
    shr     rax, 4
    shl     rax, 4
    or      rax, 1010b
    rol     rax, 8
    xor     rax, rax
    leave
    ret

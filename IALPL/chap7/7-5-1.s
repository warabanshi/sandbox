    segment .text
    global  main
main:
    push    rbp
    mov     rbp, rsp
    mov     rax, 0x12345678
    shr     rax, 8
    and     rax, 0xff
    mov     rax, 0x12345678
    mov     rdx, 0xaa
    mov     rbx, 0xff
    shl     rbx, 8
    not     rbx
    and     rax, rbx
    shl     rdx, 8
    or      rax, rdx
    xor     rax, rax
    leave
    ret


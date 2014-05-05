    segment .bss
set resq    10
    segment .text
    global  main
main:
    push    rbp
    mov     rbp, rsp
    bts     qword [set], 4
    bts     qword [set], 7
    bts     qword [set], 8
    bts     qword [set+8], 12
    mov     rax, 76
    mov     rbx, rax
    shr     rbx, 6
    mov     rcx, rax
    and     rcx, 0x3f
    xor     edx, edx
    bt      [set+8*rbx], rcx
    setc    dl
    bts     [set+8*rbx], rcx
    btr     [set+8*rbx], rcx
    xor     rax, rax
    leave
    ret

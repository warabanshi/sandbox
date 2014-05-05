    segment .data
a   dq      246
b   dq      328
c   dq      410
    segment .text
    global  main
main:
    mov     rax, [a]
    imul    rax, rax
    mov     rbx, [b]
    imul    rbx, rbx
    mov     rcx, [c]
    imul    rcx, rcx
    add     rax, rbx
    sub     rax, rcx
    xor     rax, rax
    ret

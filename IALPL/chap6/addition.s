    segment .data
a   dq      161
b   dq      310
sum dq      0
    segment .text
    global      main
main:
    push        rbp
    mov     rbp,    rsp
    sub     rsp,    16
    mov     rax,    9       ; set rax to 9
    add     [a],    rax     ; set rax to a
    mov     rax,    [b]     ; set b into rax
    add     rax,    10      ; set 10 to rax
    add     rax,    [a]     ; add the contents of a
    mov     [sum],  rax     ; save the sum in sum
    mov     rax,    0
    leave
    ret

    segment .data
a   resd    12
b   resw    11
;    align   16
c   resq    2

    segment .text
    global  main
main:
    push    rbp
    mov     rbp, rsp
    movaps  xmm0, [c]
;   movups  xmm0, [c]
    leave
    ret

    segment .data
a   resd    12
b   resw    11
    align   16
c   resq    13

    segment .text
    global  main
main:
    push    rbp
    mov     rbp, rsp
    leave
    ret

        segment .data
x       dq      325     ; dividend
y       dq      16      ; divisor
quot    dq      0       ; quotient
rem     dq      0       ; remainder
        segment .text
        global  main
main:
        mov     rax, [x]
        mov     rdx, 0
        idiv    qword [y]
        mov     [quot], rax
        mov     [rem], rdx
        xor     rax, rax
        ret

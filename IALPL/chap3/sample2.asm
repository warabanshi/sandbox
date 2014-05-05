        segment     .data
a       dd          4
b       dd          4.4
c       times       10 dd 0
d       dw          1, 2
e       db          0xfb
f       db          "hello world", 0
x       dd          1001
y       dd          1001b

        segment     .bss
g       resd        1
h       resd        10
i       resd        100

        segment     .text
        global      main        ; tell linker about main
main:
        push        rbp         ; set up a stack frame
        mov         rax, 0x123456789abcdef0
        mov         eax, 100
        mov         eax, 100b
        mov         rbp, 10
        mov         rbp, rsp    ; rbp points to stack frame
        sub         rsp, 16     ; leave some room for locals
                                ; rsp on a 16 byte boudary
        xor         eax, eax    ; rax = 0 for return value
        leave                   ; undo stack frame changes
        ret

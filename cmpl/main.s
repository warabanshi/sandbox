.intel_syntax noprefix
.global main

.comm mem, 10000

.text
main:
    lea     rbx, mem
    mov     byte ptr [rbx], 0x41
    mov     rax, 1
    mov     edx, 0x1
    mov     rsi, rbx
    mov     edi, 0x1
    syscall

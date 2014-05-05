	.file	"countbits.c"
	.intel_syntax noprefix
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	mov	ecx, 64
	movabs	rdx, -81985529216486896
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L3:
	mov	esi, edx
	shr	rdx
	and	esi, 1
	add	eax, esi
	sub	ecx, 1
	jne	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (SUSE Linux) 4.8.1 20130909 [gcc-4_8-branch revision 202388]"
	.section	.note.GNU-stack,"",@progbits

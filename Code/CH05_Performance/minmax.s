	.file	"minmax.c"
	.text
	.globl	minmax1
	.type	minmax1, @function
minmax1:
.LFB0:
	.cfi_startproc
	movl	$0, %ecx
	jmp	.L2
.L3:
	addq	$1, %rcx
.L2:
	cmpq	%rdx, %rcx
	jge	.L5
	leaq	0(,%rcx,8), %rax
	leaq	(%rdi,%rax), %r9
	movq	(%r9), %r8
	addq	%rsi, %rax
	movq	(%rax), %r10
	cmpq	%r10, %r8
	jle	.L3
	movq	%r10, (%r9)
	movq	%r8, (%rax)
	jmp	.L3
.L5:
	ret
	.cfi_endproc
.LFE0:
	.size	minmax1, .-minmax1
	.globl	minmax2
	.type	minmax2, @function
minmax2:
.LFB1:
	.cfi_startproc
	movl	$0, %r9d
.L7:
	cmpq	%rdx, %r9
	jge	.L9
	leaq	0(,%r9,8), %rcx
	leaq	(%rsi,%rcx), %r10
	movq	(%r10), %rax
	addq	%rdi, %rcx
	movq	(%rcx), %r8
	cmpq	%r8, %rax
	movq	%r8, %r11
	cmovle	%rax, %r11
	cmovl	%r8, %rax
	movq	%r11, (%rcx)
	movq	%rax, (%r10)
	addq	$1, %r9
	jmp	.L7
.L9:
	ret
	.cfi_endproc
.LFE1:
	.size	minmax2, .-minmax2
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"minmaxtest.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\na:"
.LC1:
	.string	"%d "
.LC2:
	.string	"\nb:"
.LC3:
	.string	"\nc:"
.LC4:
	.string	"\nd:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$192, %rsp
	.cfi_def_cfa_offset 208
	movq	$2, 144(%rsp)
	movq	$3, 152(%rsp)
	movq	$5, 160(%rsp)
	movq	$6, 168(%rsp)
	movq	$8, 176(%rsp)
	movq	$1, 96(%rsp)
	movq	$2, 104(%rsp)
	movq	$3, 112(%rsp)
	movq	$9, 120(%rsp)
	movq	$10, 128(%rsp)
	movl	$5, %edx
	leaq	96(%rsp), %rsi
	leaq	144(%rsp), %rdi
	call	minmax1
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %ebx
.L2:
	cmpl	$4, %ebx
	jg	.L11
	movslq	%ebx, %rax
	movq	144(%rsp,%rax,8), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addl	$1, %ebx
	jmp	.L2
.L11:
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %ebx
.L4:
	cmpl	$4, %ebx
	jg	.L12
	movslq	%ebx, %rax
	movq	96(%rsp,%rax,8), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addl	$1, %ebx
	jmp	.L4
.L12:
	movq	$2, 48(%rsp)
	movq	$3, 56(%rsp)
	movq	$5, 64(%rsp)
	movq	$6, 72(%rsp)
	movq	$8, 80(%rsp)
	movq	$1, (%rsp)
	movq	$2, 8(%rsp)
	movq	$3, 16(%rsp)
	movq	$9, 24(%rsp)
	movq	$10, 32(%rsp)
	movl	$5, %edx
	movq	%rsp, %rsi
	leaq	48(%rsp), %rdi
	call	minmax2
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %ebx
.L6:
	cmpl	$4, %ebx
	jg	.L13
	movslq	%ebx, %rax
	movq	48(%rsp,%rax,8), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addl	$1, %ebx
	jmp	.L6
.L13:
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %ebx
.L8:
	cmpl	$4, %ebx
	jg	.L14
	movslq	%ebx, %rax
	movq	(%rsp,%rax,8), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addl	$1, %ebx
	jmp	.L8
.L14:
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	addq	$192, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"listtest.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	$10, 40(%rsp)
	movq	$20, 24(%rsp)
	movq	$30, 8(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rsp, 16(%rsp)
	movq	$0, (%rsp)
	leaq	32(%rsp), %rdi
	call	list_len
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

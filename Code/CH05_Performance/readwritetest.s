	.file	"readwritetest.c"
	.text
	.globl	write_read
	.type	write_read, @function
write_read:
.LFB12:
	.cfi_startproc
	movl	$0, %eax
.L2:
	testq	%rdx, %rdx
	je	.L4
	movq	%rax, (%rsi)
	movq	(%rdi), %rax
	addq	$1, %rax
	subq	$1, %rdx
	jmp	.L2
.L4:
	ret
	.cfi_endproc
.LFE12:
	.size	write_read, .-write_read
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a[0]=%ld, a[1]=%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	$-10, (%rsp)
	movq	$-17, 8(%rsp)
	leaq	8(%rsp), %rsi
	movl	$2, %edx
	movq	%rsp, %rdi
	call	write_read
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

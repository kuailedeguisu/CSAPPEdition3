	.file	"arraytest.c"
	.text
	.globl	clear_array
	.type	clear_array, @function
clear_array:
.LFB12:
	.cfi_startproc
	movl	$0, %eax
.L2:
	cmpq	%rsi, %rax
	jge	.L4
	movq	$0, (%rdi,%rax,8)
	addq	$1, %rax
	jmp	.L2
.L4:
	ret
	.cfi_endproc
.LFE12:
	.size	clear_array, .-clear_array
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld "
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movq	$10, (%rsp)
	movq	$20, 8(%rsp)
	movq	$30, 16(%rsp)
	movq	$40, 24(%rsp)
	movq	$50, 32(%rsp)
	movq	$60, 40(%rsp)
	movl	$6, %esi
	movq	%rsp, %rdi
	call	clear_array
	movl	$0, %ebx
.L6:
	cmpl	$5, %ebx
	jg	.L9
	movslq	%ebx, %rax
	movq	(%rsp,%rax,8), %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, %ebx
	jmp	.L6
.L9:
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

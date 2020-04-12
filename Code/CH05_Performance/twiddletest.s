	.file	"twiddletest.c"
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$50, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$50, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$40, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$30, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.globl	twiddle1
	.type	twiddle1, @function
twiddle1:
.LFB12:
	.cfi_startproc
	movq	(%rsi), %rax
	addq	(%rdi), %rax
	movq	%rax, (%rdi)
	addq	(%rsi), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE12:
	.size	twiddle1, .-twiddle1
	.globl	twiddle2
	.type	twiddle2, @function
twiddle2:
.LFB13:
	.cfi_startproc
	movq	(%rsi), %rax
	addq	%rax, %rax
	addq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE13:
	.size	twiddle2, .-twiddle2
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

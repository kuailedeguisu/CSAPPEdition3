	.file	"sum.c"
	.text
	.globl	sum_vec
	.type	sum_vec, @function
sum_vec:
.LFB0:
	.cfi_startproc
	movl	$0, %edx
	movl	$0, %eax
.L2:
	cmpl	$99, %edx
	jg	.L4
	movslq	%edx, %rcx
	addl	(%rdi,%rcx,4), %eax
	addl	$1, %edx
	jmp	.L2
.L4:
	ret
	.cfi_endproc
.LFE0:
	.size	sum_vec, .-sum_vec
	.globl	sum_array_rows
	.type	sum_array_rows, @function
sum_array_rows:
.LFB1:
	.cfi_startproc
	movl	$0, %eax
	movl	$0, %r8d
	jmp	.L6
.L11:
	addl	$1, %r8d
.L6:
	cmpl	$99, %r8d
	jg	.L10
	movl	$0, %ecx
.L8:
	cmpl	$99, %ecx
	jg	.L11
	movslq	%r8d, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rdx,%rdx,4), %rsi
	salq	$4, %rsi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movslq	%ecx, %rsi
	addl	(%rdx,%rsi,4), %eax
	addl	$1, %ecx
	jmp	.L8
.L10:
	ret
	.cfi_endproc
.LFE1:
	.size	sum_array_rows, .-sum_array_rows
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

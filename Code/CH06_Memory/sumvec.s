	.file	"sumvec.c"
	.text
	.globl	sum_vec
	.type	sum_vec, @function
sum_vec:
.LFB0:
	.cfi_startproc
	movl	$0, %edx
	movl	$0, %eax
.L2:
	cmpl	%esi, %edx
	jge	.L4
	movslq	%edx, %rcx
	addl	(%rdi,%rcx,4), %eax
	addl	$1, %edx
	jmp	.L2
.L4:
	ret
	.cfi_endproc
.LFE0:
	.size	sum_vec, .-sum_vec
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

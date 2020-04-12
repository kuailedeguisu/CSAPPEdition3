	.file	"list.c"
	.text
	.globl	list_len
	.type	list_len, @function
list_len:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
.L2:
	testq	%rdi, %rdi
	je	.L4
	addq	$1, %rax
	movq	(%rdi), %rdi
	jmp	.L2
.L4:
	ret
	.cfi_endproc
.LFE0:
	.size	list_len, .-list_len
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"sumtest.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sum=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$40408, %rsp
	.cfi_def_cfa_offset 40416
	leaq	40000(%rsp), %rdi
	movl	$50, %ecx
	movl	$0, %eax
	rep stosq
	movl	$1, 40000(%rsp)
	movl	$2, 40004(%rsp)
	movl	$3, 40008(%rsp)
	movl	$4, 40012(%rsp)
	movl	$5, 40016(%rsp)
	movl	$6, 40020(%rsp)
	movl	$7, 40024(%rsp)
	movl	$8, 40028(%rsp)
	movl	$9, 40032(%rsp)
	movl	$10, 40036(%rsp)
	leaq	40000(%rsp), %rdi
	call	sum_vec
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$40000, %edx
	movl	$0, %esi
	movq	%rsp, %rdi
	call	memset
	movl	$1, (%rsp)
	movl	$2, 4(%rsp)
	movl	$3, 8(%rsp)
	movl	$4, 12(%rsp)
	movl	$5, 16(%rsp)
	movl	$6, 20(%rsp)
	movl	$7, 24(%rsp)
	movl	$8, 28(%rsp)
	movl	$9, 32(%rsp)
	movl	$10, 36(%rsp)
	movl	$1, 400(%rsp)
	movl	$2, 404(%rsp)
	movl	$3, 408(%rsp)
	movl	$4, 412(%rsp)
	movl	$5, 416(%rsp)
	movl	$6, 420(%rsp)
	movl	$7, 424(%rsp)
	movl	$8, 428(%rsp)
	movl	$9, 432(%rsp)
	movl	$10, 436(%rsp)
	movl	$1, 800(%rsp)
	movl	$2, 804(%rsp)
	movl	$3, 808(%rsp)
	movl	$4, 812(%rsp)
	movl	$5, 816(%rsp)
	movl	$6, 820(%rsp)
	movl	$7, 824(%rsp)
	movl	$8, 828(%rsp)
	movl	$9, 832(%rsp)
	movl	$10, 836(%rsp)
	movl	$1, 1200(%rsp)
	movl	$2, 1204(%rsp)
	movl	$3, 1208(%rsp)
	movl	$4, 1212(%rsp)
	movl	$5, 1216(%rsp)
	movl	$6, 1220(%rsp)
	movl	$7, 1224(%rsp)
	movl	$8, 1228(%rsp)
	movl	$9, 1232(%rsp)
	movl	$10, 1236(%rsp)
	movl	$1, 1600(%rsp)
	movl	$2, 1604(%rsp)
	movl	$3, 1608(%rsp)
	movl	$4, 1612(%rsp)
	movl	$5, 1616(%rsp)
	movl	$6, 1620(%rsp)
	movl	$7, 1624(%rsp)
	movl	$8, 1628(%rsp)
	movl	$9, 1632(%rsp)
	movl	$10, 1636(%rsp)
	movl	$1, 2000(%rsp)
	movl	$2, 2004(%rsp)
	movl	$3, 2008(%rsp)
	movl	$4, 2012(%rsp)
	movl	$5, 2016(%rsp)
	movl	$6, 2020(%rsp)
	movl	$7, 2024(%rsp)
	movl	$8, 2028(%rsp)
	movl	$9, 2032(%rsp)
	movl	$10, 2036(%rsp)
	movq	%rsp, %rdi
	call	sum_array_rows
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$40408, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

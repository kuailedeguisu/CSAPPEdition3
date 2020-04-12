	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_lower1                 ## -- Begin function lower1
	.p2align	4, 0x90
_lower1:                                ## @lower1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	callq	_mystrlen
	testq	%rax, %rax
	je	LBB0_5
## %bb.1:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rbx), %eax
	movl	%eax, %ecx
	addb	$-65, %cl
	cmpb	$25, %cl
	ja	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	addb	$32, %al
	movb	%al, (%r14,%rbx)
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=1
	incq	%rbx
	movq	%r14, %rdi
	callq	_mystrlen
	cmpq	%rax, %rbx
	jb	LBB0_2
LBB0_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mystrlen               ## -- Begin function mystrlen
	.p2align	4, 0x90
_mystrlen:                              ## @mystrlen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$0, (%rdi)
	je	LBB1_1
## %bb.2:
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpb	$0, 1(%rdi,%rax)
	leaq	1(%rax), %rax
	jne	LBB1_3
## %bb.4:
	popq	%rbp
	retq
LBB1_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_lower2                 ## -- Begin function lower2
	.p2align	4, 0x90
_lower2:                                ## @lower2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	callq	_mystrlen
	testq	%rax, %rax
	jle	LBB2_5
## %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rcx), %ebx
	movl	%ebx, %edx
	addb	$-65, %dl
	cmpb	$25, %dl
	ja	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=1
	addb	$32, %bl
	movb	%bl, (%r14,%rcx)
LBB2_4:                                 ##   in Loop: Header=BB2_2 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	jne	LBB2_2
LBB2_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

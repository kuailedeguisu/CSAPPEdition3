	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_new_vec                ## -- Begin function new_vec
	.p2align	4, 0x90
_new_vec:                               ## @new_vec
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
	movl	$16, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB0_6
## %bb.1:
	movq	%rax, %rbx
	movq	%r14, (%rax)
	testq	%r14, %r14
	jle	LBB0_2
## %bb.4:
	movl	$16, %esi
	movq	%r14, %rdi
	callq	_calloc
	testq	%rax, %rax
	jne	LBB0_3
## %bb.5:
	movq	%rbx, %rdi
	callq	_free
LBB0_6:
	xorl	%ebx, %ebx
	jmp	LBB0_7
LBB0_2:
	xorl	%eax, %eax
LBB0_3:
	movq	%rax, 8(%rbx)
LBB0_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_set_vec                ## -- Begin function set_vec
	.p2align	4, 0x90
_set_vec:                               ## @set_vec
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_vec_element        ## -- Begin function get_vec_element
	.p2align	4, 0x90
_get_vec_element:                       ## @get_vec_element
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	testq	%rsi, %rsi
	js	LBB2_3
## %bb.1:
	cmpq	%rsi, (%rdi)
	jle	LBB2_3
## %bb.2:
	movq	8(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
LBB2_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_vec_length             ## -- Begin function vec_length
	.p2align	4, 0x90
_vec_length:                            ## @vec_length
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_vec_start          ## -- Begin function get_vec_start
	.p2align	4, 0x90
_get_vec_start:                         ## @get_vec_start
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_combine1               ## -- Begin function combine1
	.p2align	4, 0x90
_combine1:                              ## @combine1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	$1, (%rsi)
	callq	_vec_length
	testq	%rax, %rax
	jle	LBB5_3
## %bb.1:
	xorl	%ebx, %ebx
	leaq	-40(%rbp), %r12
	.p2align	4, 0x90
LBB5_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_get_vec_element
	movq	-40(%rbp), %rax
	imulq	(%r14), %rax
	movq	%rax, (%r14)
	incq	%rbx
	movq	%r15, %rdi
	callq	_vec_length
	cmpq	%rax, %rbx
	jl	LBB5_2
LBB5_3:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_combine2               ## -- Begin function combine2
	.p2align	4, 0x90
_combine2:                              ## @combine2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	$1, (%rsi)
	callq	_vec_length
	testq	%rax, %rax
	jle	LBB6_3
## %bb.1:
	movq	%rax, %r15
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %r13
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_get_vec_element
	movq	-48(%rbp), %rax
	imulq	(%r12), %rax
	movq	%rax, (%r12)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB6_2
LBB6_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_combine3               ## -- Begin function combine3
	.p2align	4, 0x90
_combine3:                              ## @combine3
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	$1, (%rsi)
	callq	_vec_length
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	_get_vec_start
	testq	%r14, %r14
	jle	LBB7_3
## %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB7_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rax,%rcx,8), %rdx
	imulq	(%rbx), %rdx
	movq	%rdx, (%rbx)
	incq	%rcx
	cmpq	%rcx, %r14
	jne	LBB7_2
LBB7_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_combine4               ## -- Begin function combine4
	.p2align	4, 0x90
_combine4:                              ## @combine4
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_vec_length
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_get_vec_start
	movl	$1, %ecx
	cmpq	$2, %rbx
	jl	LBB8_3
## %bb.1:
	movl	$1, %edx
	.p2align	4, 0x90
LBB8_2:                                 ## =>This Inner Loop Header: Depth=1
	imulq	(%rax,%rdx,8), %rcx
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	LBB8_2
LBB8_3:
	movq	%rcx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_combine5               ## -- Begin function combine5
	.p2align	4, 0x90
_combine5:                              ## @combine5
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_vec_length
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_get_vec_start
	movq	%rbx, %rdx
	decq	%rdx
	jle	LBB9_1
## %bb.6:
	xorl	%esi, %esi
	movl	$1, %ecx
	.p2align	4, 0x90
LBB9_7:                                 ## =>This Inner Loop Header: Depth=1
	imulq	(%rax,%rsi,8), %rcx
	imulq	8(%rax,%rsi,8), %rcx
	addq	$2, %rsi
	cmpq	%rdx, %rsi
	jl	LBB9_7
## %bb.2:
	movq	%rbx, %rdx
	andq	$-2, %rdx
	cmpq	%rbx, %rdx
	jge	LBB9_5
	.p2align	4, 0x90
LBB9_4:                                 ## =>This Inner Loop Header: Depth=1
	imulq	(%rax,%rdx,8), %rcx
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	LBB9_4
LBB9_5:
	movq	%rcx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_1:
	xorl	%edx, %edx
	movl	$1, %ecx
	cmpq	%rbx, %rdx
	jl	LBB9_4
	jmp	LBB9_5
	.cfi_endproc
                                        ## -- End function
	.globl	_combine6               ## -- Begin function combine6
	.p2align	4, 0x90
_combine6:                              ## @combine6
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_vec_length
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_get_vec_start
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	addq	$-6, %rsi
	jle	LBB10_1
	.p2align	4, 0x90
LBB10_4:                                ## =>This Inner Loop Header: Depth=1
	imulq	(%rax,%rdx,8), %rcx
	imulq	8(%rax,%rdx,8), %rcx
	imulq	16(%rax,%rdx,8), %rcx
	imulq	24(%rax,%rdx,8), %rcx
	imulq	32(%rax,%rdx,8), %rcx
	addq	$5, %rdx
	cmpq	%rsi, %rdx
	jl	LBB10_4
LBB10_1:
	cmpq	%rbx, %rdx
	jge	LBB10_3
	.p2align	4, 0x90
LBB10_2:                                ## =>This Inner Loop Header: Depth=1
	imulq	(%rax,%rdx,8), %rcx
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	LBB10_2
LBB10_3:
	movq	%rcx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

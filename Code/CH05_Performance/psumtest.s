	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movaps	L___const.main.p1(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	L___const.main.a1(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movl	$4, %edx
	callq	_psum1
	movaps	L___const.main.p2(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	L___const.main.a2(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movl	$4, %edx
	callq	_psum2
	xorl	%ebx, %ebx
	leaq	L_.str(%rip), %r14
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movss	-48(%rbp,%rbx,4), %xmm0 ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	movq	%r14, %rdi
	callq	_printf
	incq	%rbx
	cmpq	$4, %rbx
	jne	LBB0_1
## %bb.2:
	movl	$10, %edi
	callq	_putchar
	xorl	%ebx, %ebx
	leaq	L_.str.2(%rip), %r14
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movss	-80(%rbp,%rbx,4), %xmm0 ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	movq	%r14, %rdi
	callq	_printf
	incq	%rbx
	cmpq	$4, %rbx
	jne	LBB0_3
## %bb.4:
	movl	$10, %edi
	callq	_putchar
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB0_6
## %bb.5:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB0_6:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_psum1                  ## -- Begin function psum1
	.p2align	4, 0x90
_psum1:                                 ## @psum1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	cmpq	$2, %rdx
	jl	LBB1_3
## %bb.1:
	movss	(%rdi), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movl	$1, %eax
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	addss	(%rsi,%rax,4), %xmm0
	movss	%xmm0, (%rdi,%rax,4)
	incq	%rax
	cmpq	%rax, %rdx
	jne	LBB1_2
LBB1_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_psum2                  ## -- Begin function psum2
	.p2align	4, 0x90
_psum2:                                 ## @psum2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	leaq	-1(%rdx), %rcx
	cmpq	$2, %rcx
	jl	LBB2_1
## %bb.2:
	leaq	-3(%rdx), %r8
	andq	$-2, %r8
	movl	$1, %eax
	.p2align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movss	-4(%rdi,%rax,4), %xmm0  ## xmm0 = mem[0],zero,zero,zero
	addss	(%rsi,%rax,4), %xmm0
	movss	%xmm0, (%rdi,%rax,4)
	addss	4(%rsi,%rax,4), %xmm0
	movss	%xmm0, 4(%rdi,%rax,4)
	addq	$2, %rax
	cmpq	%rcx, %rax
	jl	LBB2_3
## %bb.4:
	addq	$3, %r8
	cmpq	%rdx, %r8
	jl	LBB2_6
	jmp	LBB2_7
LBB2_1:
	movl	$1, %r8d
	cmpq	%rdx, %r8
	jge	LBB2_7
LBB2_6:
	movss	-4(%rdi,%r8,4), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	addss	(%rsi,%r8,4), %xmm0
	movss	%xmm0, (%rdi,%r8,4)
LBB2_7:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## @__const.main.p1
L___const.main.p1:
	.long	1067030938              ## float 1.20000005
	.long	1075000115              ## float 2.29999995
	.long	1079613850              ## float 3.4000001
	.long	1083179008              ## float 4.5

	.p2align	4               ## @__const.main.a1
L___const.main.a1:
	.long	1075419546              ## float 2.4000001
	.long	1080452710              ## float 3.5999999
	.long	1083808154              ## float 4.80000019
	.long	1092196762              ## float 9.60000038

	.p2align	4               ## @__const.main.p2
L___const.main.p2:
	.long	1067030938              ## float 1.20000005
	.long	1075000115              ## float 2.29999995
	.long	1079613850              ## float 3.4000001
	.long	1083179008              ## float 4.5

	.p2align	4               ## @__const.main.a2
L___const.main.a2:
	.long	1075419546              ## float 2.4000001
	.long	1080452710              ## float 3.5999999
	.long	1083808154              ## float 4.80000019
	.long	1092196762              ## float 9.60000038

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f "

L_.str.2:                               ## @.str.2
	.asciz	"%f, "


.subsections_via_symbols

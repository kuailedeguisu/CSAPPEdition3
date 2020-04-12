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
	subq	$128, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$10, %edi
	callq	_new_vec
	movq	%rax, %rbx
	movq	$12, -80(%rbp)
	movq	$45, -72(%rbp)
	movq	$78, -64(%rbp)
	movq	$32, -56(%rbp)
	movq	$65, -48(%rbp)
	movq	$98, -40(%rbp)
	leaq	-80(%rbp), %rdx
	movl	$10, %esi
	movq	%rax, %rdi
	callq	_set_vec
	leaq	-136(%rbp), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	_get_vec_element
	movl	%eax, %ecx
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	_printf
	movq	-136(%rbp), %rsi
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	%rbx, %rdi
	callq	_vec_length
	movq	%rax, %rcx
	leaq	L_.str.2(%rip), %r14
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rcx, %rsi
	callq	_printf
	leaq	-128(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_combine1
	movq	-128(%rbp), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	leaq	-120(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_combine2
	movq	-120(%rbp), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	leaq	-112(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_combine3
	movq	-112(%rbp), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	leaq	-104(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_combine3
	movq	-104(%rbp), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	leaq	-96(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_combine5
	movq	-96(%rbp), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	leaq	-88(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_combine5
	movq	-88(%rbp), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB0_2
## %bb.1:
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"dest=%ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"%ld\n"


.subsections_via_symbols

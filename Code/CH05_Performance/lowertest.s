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
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movabsq	$9399091170596640, %rax ## imm = 0x21646C726F5720
	movq	%rax, -35(%rbp)
	movabsq	$8022916924116329800, %rax ## imm = 0x6F57206F6C6C6548
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	_lower1
	movabsq	$9363768820586272, %rax ## imm = 0x21444C524F5720
	movq	%rax, -51(%rbp)
	movabsq	$5717073776924706120, %rax ## imm = 0x4F57204F4C4C4548
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_lower2
	movq	%r14, %rdi
	callq	_puts
	movq	%rbx, %rdi
	callq	_puts
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB0_2
## %bb.1:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L___const.main.s1:                      ## @__const.main.s1
	.asciz	"Hello World!"

L___const.main.s2:                      ## @__const.main.s2
	.asciz	"HELLO WORLD!"


.subsections_via_symbols

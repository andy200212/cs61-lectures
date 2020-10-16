	.file	"test2.cc"
	.text
	.globl	_Z10mine_fieldv
	.type	_Z10mine_fieldv, @function
_Z10mine_fieldv:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -116(%rbp)
.L3:
	cmpl	$99, -116(%rbp)
	jg	.L2
	movl	-116(%rbp), %eax
	cltq
	movb	$33, -112(%rbp,%rax)
	addl	$1, -116(%rbp)
	jmp	.L3
.L2:
	movb	$42, -85(%rbp)
	movb	$94, -13(%rbp)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z10mine_fieldv, .-_Z10mine_fieldv
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu2) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:

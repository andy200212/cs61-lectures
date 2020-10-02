	.text
	.file	"f28.cc"
	.globl	_Z1fj                   # -- Begin function _Z1fj
	.type	_Z1fj,@function
_Z1fj:                                  # @_Z1fj
# %bb.0:
	testl	%edi, %edi
	je	.LBB0_1
# %bb.2:
	leal	-1(%rdi), %eax
	leal	-2(%rdi), %ecx
	imulq	%rax, %rcx
	imull	%eax, %eax
	shrq	%rcx
	addl	%edi, %eax
	subl	%ecx, %eax
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	_Z1fj, .Lfunc_end0-_Z1fj
                                        # -- End function
	.ident	"Ubuntu clang version 10.0.1-1"
	.section	".note.GNU-stack","",@progbits
	.addrsig

	.file	"f15.cc"
	.text
	.globl	_Z12array_accessPll
	.type	_Z12array_accessPll, @function
_Z12array_accessPll:
.LFB0:
	endbr64
	movq	(%rdi,%rsi,8), %rax
	ret
.LFE0:
	.size	_Z12array_accessPll, .-_Z12array_accessPll
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu2) 10.2.0"
	.section	.note.GNU-stack,"",@progbits

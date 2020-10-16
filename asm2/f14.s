	.file	"f14.cc"
	.text
	.globl	_Z12array_accessPil
	.type	_Z12array_accessPil, @function
_Z12array_accessPil:
.LFB0:
	endbr64
	movl	(%rdi,%rsi,4), %eax
	ret
.LFE0:
	.size	_Z12array_accessPil, .-_Z12array_accessPil
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu2) 10.2.0"
	.section	.note.GNU-stack,"",@progbits

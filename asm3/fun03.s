	.file	"fun03.cc"
	.text
	.globl	_Z3funPKc
	.type	_Z3funPKc, @function
_Z3funPKc:
.LFB0:
	endbr64
	cmpb	$0, (%rdi) // compares rdi to 0
	je	.L3 // if equal jump to L3
	movsbl	1(%rdi), %eax //else move values at %rdi + 1 into %eax
	ret
.L3:
	movl	$-1, %eax //moves -1 into register
	ret
.LFE0:
	.size	_Z3funPKc, .-_Z3funPKc
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu2) 10.2.0"
	.section	.note.GNU-stack,"",@progbits

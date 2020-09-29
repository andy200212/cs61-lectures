	.file	"fun06.cc"
	.text
	.globl	_Z3funPKc
	.type	_Z3funPKc, @function
_Z3funPKc:
.LFB27:
	endbr64
	xorl	%eax, %eax //this holds the value 0
	cmpb	$0, (%rdi) //if input is 0 return
	je	.L4
.L3:
	leal	1(%rax), %edx //load effective address doesn't dereference, assigns edx register value of %rax + 1
	cmpb	$0, (%rdi,%rdx)
	movq	%rdx, %rax //moving rdx into rax 
	jne	.L3
	andl	$3, %eax 
	ret
.L4:
	ret
.LFE27:
	.size	_Z3funPKc, .-_Z3funPKc
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu2) 10.2.0"
	.section	.note.GNU-stack,"",@progbits

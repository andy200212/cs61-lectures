	.file	"fun05.cc"
	.text
	.globl	_Z3funPKc
	.type	_Z3funPKc, @function
_Z3funPKc:
.LFB0:
	endbr64
	movzbl	(%rdi), %edx //moves the input into 3rd function argument
	testb	%dl, %dl //3rd function argument cannot be 0? 
	je	.L5 //this is not likely to be the else failed case is here
	movsbl	1(%rdi), %eax  //move the s[1] into the eax register
	cmpb	%al, %dl //compares the first and thirds function arguments but the third function argument has to be bigger than the first?
	jne	.L1
.L3: //this looks to be a while or some sort of recursive loop
	addq	$1, %rdi //moves 1 into the input register
	movl	%eax, %edx //moves return value 1 into the 3rd function argument
	movsbl	1(%rdi), %eax //moves s[1] into return
	cmpb	%dl, %al //only if dl > al does this return
	je	.L3
	ret
.L5:
	movl	$-1, %eax
.L1:
	ret
.LFE0:
	.size	_Z3funPKc, .-_Z3funPKc
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu2) 10.2.0"
	.section	.note.GNU-stack,"",@progbits

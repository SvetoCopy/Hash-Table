	.file	"List.cpp"
	.text
	.section	.rodata
	.align 4
	.type	_ZL10LIST_ERROR, @object
	.size	_ZL10LIST_ERROR, 4
_ZL10LIST_ERROR:
	.long	-1
	.align 4
	.type	_ZL11LIST_POISON, @object
	.size	_ZL11LIST_POISON, 4
_ZL11LIST_POISON:
	.long	-1
	.section	.text._Z15OptimizedStrCmpPKcS0_,"axG",@progbits,_Z15OptimizedStrCmpPKcS0_,comdat
	.weak	_Z15OptimizedStrCmpPKcS0_
	.type	_Z15OptimizedStrCmpPKcS0_, @function
_Z15OptimizedStrCmpPKcS0_:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
#APP
# 13 "RuzalLib/src/List.cpp" 1
	.intel_syntax noprefix
	vmovdqu ymm0, YMMWORD PTR [%rdx]
vptest  ymm0, YMMWORD PTR [%rcx]
setb %al
vzeroupper
.att_syntax prefix
	
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z15OptimizedStrCmpPKcS0_, .-_Z15OptimizedStrCmpPKcS0_
	.section	.rodata
	.align 8
.LC0:
	.string	"bool ListFindElem(List*, const char*)"
.LC1:
	.string	"RuzalLib/src/List.cpp"
.LC2:
	.string	"list != nullptr"
.LC3:
	.string	"str != nullptr"
.LC4:
	.string	"list->list_arr != nullptr"
	.text
	.globl	_Z12ListFindElemP4ListPKc
	.type	_Z12ListFindElemP4ListPKc, @function
_Z12ListFindElemP4ListPKc:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L4
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L4:
	cmpq	$0, -32(%rbp)
	jne	.L5
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L5:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L6:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L7
.L10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z15OptimizedStrCmpPKcS0_
	testb	%al, %al
	je	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L10
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_Z12ListFindElemP4ListPKc, .-_Z12ListFindElemP4ListPKc
	.globl	_Z8NodeCtorP4NodePciii
	.type	_Z8NodeCtorP4NodePciii, @function
_Z8NodeCtorP4NodePciii:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_Z8NodeCtorP4NodePciii, .-_Z8NodeCtorP4NodePciii
	.section	.rodata
.LC5:
	.string	"------------------------"
	.align 8
.LC6:
	.string	"|ind: %d|\n|data: %d|\n|next: %d|\n|prev: %d|\n"
	.text
	.globl	_Z8NodeDumpP4Node
	.type	_Z8NodeDumpP4Node, @function
_Z8NodeDumpP4Node:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	movl	20(%rax), %esi
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_Z8NodeDumpP4Node, .-_Z8NodeDumpP4Node
	.section	.rodata
	.align 8
.LC7:
	.string	"int ListCtor(List*, int, const char*)"
.LC8:
	.string	"w"
	.text
	.globl	_Z8ListCtorP4ListiPKc
	.type	_Z8ListCtorP4ListiPKc, @function
_Z8ListCtorP4ListiPKc:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	jne	.L16
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	movl	$24, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	movl	$73, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movq	-72(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.L18
.L21:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jne	.L19
	movl	-36(%rbp), %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %r8d
	movl	$-1, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z8NodeCtorP4NodePciii
	jmp	.L20
.L19:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z8NodeCtorP4NodePciii
.L20:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	subl	$1, -36(%rbp)
.L18:
	cmpl	$0, -36(%rbp)
	jg	.L21
	movq	-56(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 12(%rax)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_Z8ListCtorP4ListiPKc, .-_Z8ListCtorP4ListiPKc
	.globl	_Z8ListDtorP4List
	.type	_Z8ListDtorP4List, @function
_Z8ListDtorP4List:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movl	$0, %eax
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movl	$-1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 12(%rax)
	movl	$0, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_Z8ListDtorP4List, .-_Z8ListDtorP4List
	.section	.rodata
.LC9:
	.string	"int ListVerify(List*)"
.LC10:
	.string	"head > tail\n"
.LC11:
	.string	"size > capacity\n"
.LC12:
	.string	"list - nullptr\n"
.LC13:
	.string	"range error\n"
	.text
	.globl	_Z10ListVerifyP4List
	.type	_Z10ListVerifyP4List, @function
_Z10ListVerifyP4List:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L29
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	movl	$112, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L29:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	movl	$113, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L30:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jle	.L31
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$12, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L31:
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jle	.L32
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L32:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$15, %edx
	movl	$1, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L33:
	movl	$0, -4(%rbp)
	jmp	.L34
.L36:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jle	.L35
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$12, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L35:
	addl	$1, -4(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L36
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_Z10ListVerifyP4List, .-_Z10ListVerifyP4List
	.section	.rodata
.LC14:
	.string	"int ListDump(List*)"
	.align 8
.LC15:
	.string	"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	.align 8
.LC16:
	.string	"\nDUMP:\ncapacity: %d\nsize: %d\nhead: %d\ntail: %d\nfree: %d\n\n"
	.align 8
.LC17:
	.string	">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
	.text
	.globl	_Z8ListDumpP4List
	.type	_Z8ListDumpP4List, @function
_Z8ListDumpP4List:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L39
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	movl	$126, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L39:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	movq	-24(%rbp), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L40
.L41:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	_Z8NodeDumpP4Node
	addl	$1, -4(%rbp)
.L40:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L41
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	_Z8ListDumpP4List, .-_Z8ListDumpP4List
	.section	.rodata
.LC18:
	.string	"Node* FindNode(List*, int)"
	.text
	.globl	_Z8FindNodeP4Listi
	.type	_Z8FindNodeP4Listi, @function
_Z8FindNodeP4Listi:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L44
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	movl	$140, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L44:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	movl	$141, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L45:
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L46
.L47:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L46:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L47
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	_Z8FindNodeP4Listi, .-_Z8FindNodeP4Listi
	.section	.rodata
	.align 8
.LC19:
	.string	"int ListDeleteNode(List*, Node)"
	.text
	.globl	_Z14ListDeleteNodeP4List4Node
	.type	_Z14ListDeleteNodeP4List4Node, @function
_Z14ListDeleteNodeP4List4Node:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	movl	$153, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L50:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	movl	$154, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L51:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movl	16(%rcx), %eax
	movl	%eax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movl	20(%rcx), %eax
	movl	%eax, 20(%rdx)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	_Z14ListDeleteNodeP4List4Node, .-_Z14ListDeleteNodeP4List4Node
	.section	.rodata
.LC20:
	.string	"int ListDelete(List*, int)"
	.text
	.globl	_Z10ListDeleteP4Listi
	.type	_Z10ListDeleteP4Listi, @function
_Z10ListDeleteP4Listi:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	jne	.L54
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	movl	$162, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L54:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	movl	$163, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L55:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rdi
	call	_Z14ListDeleteNodeP4List4Node
	addq	$32, %rsp
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$-1, 20(%rax)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_Z10ListDeleteP4Listi, .-_Z10ListDeleteP4Listi
	.section	.rodata
.LC21:
	.string	"int ListReallocUp(List*, int)"
	.text
	.globl	_Z13ListReallocUpP4Listi
	.type	_Z13ListReallocUpP4Listi, @function
_Z13ListReallocUpP4Listi:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	jne	.L59
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	movl	$176, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L59:
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	movl	$180, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L60:
	movl	-60(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.L61
.L64:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.L62
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movl	-36(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z8NodeCtorP4NodePciii
	jmp	.L63
.L62:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z8NodeCtorP4NodePciii
.L63:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	subl	$1, -36(%rbp)
.L61:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L64
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_Z13ListReallocUpP4Listi, .-_Z13ListReallocUpP4Listi
	.globl	_Z18ListUpdateHeadTailP4List
	.type	_Z18ListUpdateHeadTailP4List, @function
_Z18ListUpdateHeadTailP4List:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_Z18ListUpdateHeadTailP4List, .-_Z18ListUpdateHeadTailP4List
	.globl	_Z14ListInsertNodeP4List4Nodei
	.type	_Z14ListInsertNodeP4List4Nodei, @function
_Z14ListInsertNodeP4List4Nodei:
.LFB28:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, 20(%rdx)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z18ListUpdateHeadTailP4List
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_Z14ListInsertNodeP4List4Nodei, .-_Z14ListInsertNodeP4List4Nodei
	.globl	_Z12GetFreePlaceP4List
	.type	_Z12GetFreePlaceP4List, @function
_Z12GetFreePlaceP4List:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L72
	movl	$-1, %eax
	jmp	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-4(%rbp), %eax
.L73:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_Z12GetFreePlaceP4List, .-_Z12GetFreePlaceP4List
	.section	.rodata
	.align 8
.LC22:
	.string	"int ListInsertStart(List*, ListElem_t)"
	.text
	.globl	_Z15ListInsertStartP4ListPc
	.type	_Z15ListInsertStartP4ListPc, @function
_Z15ListInsertStartP4ListPc:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	jne	.L75
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	movl	$222, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L75:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	movl	$223, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L76:
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jle	.L77
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z13ListReallocUpP4Listi
.L77:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12GetFreePlaceP4List
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L78
	movl	$-1, %eax
	jmp	.L80
.L78:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	20(%rax), %edx
	movl	-36(%rbp), %ecx
	movq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_Z8NodeCtorP4NodePciii
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z14ListInsertNodeP4List4Nodei
	addq	$32, %rsp
	movl	-36(%rbp), %eax
.L80:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	_Z15ListInsertStartP4ListPc, .-_Z15ListInsertStartP4ListPc
	.section	.rodata
	.align 8
.LC23:
	.string	"int ListInsertEnd(List*, ListElem_t)"
	.text
	.globl	_Z13ListInsertEndP4ListPc
	.type	_Z13ListInsertEndP4ListPc, @function
_Z13ListInsertEndP4ListPc:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	jne	.L83
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	movl	$238, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L83:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L84
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	movl	$239, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L84:
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jle	.L85
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z13ListReallocUpP4Listi
.L85:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12GetFreePlaceP4List
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L86
	movl	$-1, %eax
	jmp	.L88
.L86:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movl	-36(%rbp), %ecx
	movq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_Z8NodeCtorP4NodePciii
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z14ListInsertNodeP4List4Nodei
	addq	$32, %rsp
	movl	-36(%rbp), %eax
.L88:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	_Z13ListInsertEndP4ListPc, .-_Z13ListInsertEndP4ListPc
	.section	.rodata
	.align 8
.LC24:
	.string	"int ListInsertBefore(List*, ListElem_t, int)"
	.text
	.globl	_Z16ListInsertBeforeP4ListPci
	.type	_Z16ListInsertBeforeP4ListPci, @function
_Z16ListInsertBeforeP4ListPci:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -88(%rbp)
	jne	.L91
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	movl	$254, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L91:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	movl	$255, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L92:
	movq	-88(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jle	.L93
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z13ListReallocUpP4Listi
.L93:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12GetFreePlaceP4List
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	jne	.L94
	movl	$-1, %eax
	jmp	.L96
.L94:
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-68(%rbp), %edi
	movq	-96(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	_Z8NodeCtorP4NodePciii
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z14ListInsertNodeP4List4Nodei
	addq	$32, %rsp
	movl	-68(%rbp), %eax
.L96:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L97
	call	__stack_chk_fail@PLT
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	_Z16ListInsertBeforeP4ListPci, .-_Z16ListInsertBeforeP4ListPci
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

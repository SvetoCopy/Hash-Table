	.file	"super_io.cpp"
	.text
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	"FileInfo FileInfoCtor(const char*)"
.LC2:
	.string	"RuzalLib/src/super_io.cpp"
.LC3:
	.string	"file.input_file != NULL"
	.text
	.globl	_Z12FileInfoCtorPKc
	.type	_Z12FileInfoCtorPKc, @function
_Z12FileInfoCtorPKc:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	movl	$10, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11GetFileSizeP8FileInfo
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	addq	$1, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8ReadFileP8FileInfo
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z13GetLinesCountP8FileInfo
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11GetFileSizeP8FileInfo
	addq	$1, %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z12FileInfoCtorPKc, .-_Z12FileInfoCtorPKc
	.globl	_Z12FileInfoDtorP8FileInfo
	.type	_Z12FileInfoDtorP8FileInfo, @function
_Z12FileInfoDtorP8FileInfo:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_Z12FileInfoDtorP8FileInfo, .-_Z12FileInfoDtorP8FileInfo
	.section	.rodata
.LC4:
	.string	"void ReadBuff(FileInfo*)"
.LC5:
	.string	"file != NULL"
	.text
	.globl	_Z8ReadBuffP8FileInfo
	.type	_Z8ReadBuffP8FileInfo, @function
_Z8ReadBuffP8FileInfo:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L6:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
	jmp	.L7
.L9:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L8
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	addq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L8:
	addq	$1, -16(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L9
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_Z8ReadBuffP8FileInfo, .-_Z8ReadBuffP8FileInfo
	.section	.rodata
.LC6:
	.string	"<%s>\n"
	.text
	.globl	_Z9PrintDataPPci
	.type	_Z9PrintDataPPci, @function
_Z9PrintDataPPci:
.LFB18:
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
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -4(%rbp)
	jmp	.L11
.L12:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L11:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L12
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_Z9PrintDataPPci, .-_Z9PrintDataPPci
	.section	.rodata
.LC7:
	.string	" %s "
	.align 8
.LC8:
	.string	"left = %d right = %d mid = %d, data[mid] = %s"
	.text
	.globl	_Z10DebugPrintPPciiii
	.type	_Z10DebugPrintPPciiii, @function
_Z10DebugPrintPPciiii:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L14
.L17:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L15
	movl	$60, %edi
	call	putchar@PLT
.L15:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L16
	movl	$62, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L16:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L14:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L17
	cmpl	$0, -8(%rbp)
	jne	.L18
	movl	$62, %edi
	call	putchar@PLT
.L18:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_Z10DebugPrintPPciiii, .-_Z10DebugPrintPPciiii
	.section	.rodata
.LC9:
	.string	"size_t GetFileSize(FileInfo*)"
	.text
	.globl	_Z11GetFileSizeP8FileInfo
	.type	_Z11GetFileSizeP8FileInfo, @function
_Z11GetFileSizeP8FileInfo:
.LFB20:
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
	jne	.L20
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	movl	$86, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_Z11GetFileSizeP8FileInfo, .-_Z11GetFileSizeP8FileInfo
	.section	.rodata
	.align 8
.LC10:
	.string	"size_t GetLinesCount(FileInfo*)"
	.text
	.globl	_Z13GetLinesCountP8FileInfo
	.type	_Z13GetLinesCountP8FileInfo, @function
_Z13GetLinesCountP8FileInfo:
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
	movq	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L24
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	movl	$99, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L25
	addq	$1, -16(%rbp)
.L25:
	addq	$1, -8(%rbp)
.L24:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L26
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_Z13GetLinesCountP8FileInfo, .-_Z13GetLinesCountP8FileInfo
	.section	.rodata
.LC11:
	.string	"void ReadFile(FileInfo*)"
.LC12:
	.string	"file->input_file != NULL"
.LC13:
	.string	"file->buff != NULL"
	.text
	.globl	_Z8ReadFileP8FileInfo
	.type	_Z8ReadFileP8FileInfo, @function
_Z8ReadFileP8FileInfo:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	movl	$117, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L29:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	movl	$118, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L30:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	_Z8ReadFileP8FileInfo, .-_Z8ReadFileP8FileInfo
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

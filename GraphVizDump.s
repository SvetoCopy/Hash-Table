	.file	"GraphVizDump.cpp"
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
	.align 8
.LC0:
	.string	"info [shape=record, style=filled, fillcolor=\"darksalmon\", label = \"SIZE : %d | CAPACITY : %d\",fontcolor = \"black\", fontsize = 25];\n"
	.text
	.globl	_Z13PrintInfoNodeP4List
	.type	_Z13PrintInfoNodeP4List, @function
_Z13PrintInfoNodeP4List:
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
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z13PrintInfoNodeP4List, .-_Z13PrintInfoNodeP4List
	.section	.rodata
	.align 8
.LC1:
	.string	"\"node%d\" [shape=Mrecord, style=filled, fillcolor=darksalmon, label = \"ind: %d | data: %d | next: %d | prev: %d\"];\n"
	.align 8
.LC2:
	.string	"\"node%d\" [shape=Mrecord, style=filled, fillcolor=bisque, label = \"ind: %d | data: %d | next: %d | prev: %d\"];\n"
	.align 8
.LC3:
	.string	"\"node%d\" [shape=Mrecord, style=filled, fillcolor=darkolivegreen1, label = \"ind: %d | data: %d | next: %d | prev: %d\"];\n"
	.text
	.globl	_Z14DefineListNodeP4List
	.type	_Z14DefineListNodeP4List, @function
_Z14DefineListNodeP4List:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movl	$1, -36(%rbp)
	jmp	.L4
.L7:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	-36(%rbp), %eax
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
	movl	-12(%rbp), %eax
	cmpl	$-1, %eax
	je	.L5
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	jmp	.L6
.L5:
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L6:
	addl	$1, -36(%rbp)
.L4:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L7
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_Z14DefineListNodeP4List, .-_Z14DefineListNodeP4List
	.section	.rodata
.LC4:
	.string	"node%d->node%d;\n"
	.text
	.globl	_Z16ConnectListNodesP4List
	.type	_Z16ConnectListNodesP4List, @function
_Z16ConnectListNodesP4List:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -48(%rbp)
	jmp	.L11
.L12:
	movl	-48(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movl	-68(%rbp), %eax
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
	movl	-32(%rbp), %ecx
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.L11:
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jne	.L12
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L13
.L14:
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movl	-72(%rbp), %eax
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
	movl	-32(%rbp), %ecx
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
.L13:
	cmpl	$-1, -72(%rbp)
	jne	.L14
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_Z16ConnectListNodesP4List, .-_Z16ConnectListNodesP4List
	.section	.rodata
.LC5:
	.string	"node%d -> "
	.align 8
.LC6:
	.string	"node%d [arrowsize = 0.0, weight = 10000, color = \"cornsilk1\"];\n"
	.text
	.globl	_Z14AlignListNodesP4List
	.type	_Z14AlignListNodesP4List, @function
_Z14AlignListNodesP4List:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L18
.L19:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	-36(%rbp), %eax
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
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -36(%rbp)
.L18:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L19
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	subq	$24, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16(%rbp)
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_Z14AlignListNodesP4List, .-_Z14AlignListNodesP4List
	.section	.rodata
	.align 8
.LC7:
	.string	"head[shape = rect, label = \"HEAD\", fillcolor = \"darksalmon\", style = filled];\n"
	.align 8
.LC8:
	.string	"tail[shape = rect, label = \"TAIL\", fillcolor = \"darksalmon\", style = filled];\n"
	.align 8
.LC9:
	.string	"free_head[shape = rect, label = \"FREE_HEAD\", fillcolor = \"darksalmon\", style = filled]; \n"
	.align 8
.LC10:
	.string	"head->node%d[color = darksalmon]; \n"
	.align 8
.LC11:
	.string	"tail->node%d[color = darksalmon];\n"
	.align 8
.LC12:
	.string	"free_head->node%d[color = darksalmon]; \n"
	.text
	.globl	_Z13PrintHeadTailP4List
	.type	_Z13PrintHeadTailP4List, @function
_Z13PrintHeadTailP4List:
.LFB19:
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
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	movl	$1, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movl	$89, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %edx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_Z13PrintHeadTailP4List, .-_Z13PrintHeadTailP4List
	.section	.rodata
	.align 8
.LC13:
	.string	"digraph List \n{ bgcolor=\"cornsilk1\"; node[margin = \"0.01\"];\n rankdir = \"LR\";\n"
	.text
	.globl	_Z9PrintListP4List
	.type	_Z9PrintListP4List, @function
_Z9PrintListP4List:
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
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z13PrintInfoNodeP4List
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z14AlignListNodesP4List
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z14DefineListNodeP4List
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z16ConnectListNodesP4List
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z13PrintHeadTailP4List
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$125, %edi
	call	fputc@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_Z9PrintListP4List, .-_Z9PrintListP4List
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

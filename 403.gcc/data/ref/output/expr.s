	.file	"expr.i"
.globl do_preexpand_calls
	.data
	.align 4
	.type	do_preexpand_calls,@object
	.size	do_preexpand_calls,4
do_preexpand_calls:
	.long	1
	.text
	.align 2
	.p2align 4,,15
.globl convert_move
	.type	convert_move,@function
convert_move:
.LFB1:
	pushq	%r15
.LCFI0:
	pushq	%r14
.LCFI1:
	pushq	%r13
.LCFI2:
	pushq	%r12
.LCFI3:
	pushq	%rbp
.LCFI4:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI5:
	subq	$56, %rsp
.LCFI6:
	movq	%rdi, 24(%rsp)
	movl	%edx, 36(%rsp)
	.p2align 4,,7
.L75:
	movq	24(%rsp), %rdi
	movzbl	2(%rbp), %r13d
	xorl	%esi, %esi
	movzbl	2(%rdi), %r12d
	movslq	%r13d,%rbx
	movslq	%r12d,%r15
	cmpl	$2, mode_class(,%r15,4)
	sete	%sil
	cmpl	$2, mode_class(,%rbx,4)
	sete	%cl
	movl	%esi, 52(%rsp)
	movzbl	%cl, %edx
	movl	%edx, 48(%rsp)
	xorl	%edx, %edx
	cmpl	$0, 36(%rsp)
	setne	%dl
	addl	$99, %edx
	movl	%edx, 20(%rsp)
	movq	24(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L4
	cmpl	$55, %eax
	je	.L138
.L8:
	cmpl	$63, %eax
	je	.L11
	cmpl	$66, %eax
	je	.L11
.L7:
	movzwl	(%rbp), %eax
	cmpl	$59, %eax
	je	.L14
	cmpl	$55, %eax
	je	.L139
.L18:
	cmpl	$63, %eax
	je	.L21
	cmpl	$66, %eax
	je	.L21
.L17:
	movl	48(%rsp), %r11d
	cmpl	%r11d, 52(%rsp)
	jne	.L115
	movl	(%rbp), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L140
.L25:
	movq	24(%rsp), %rbx
	movl	(%rbx), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L115
	cmpl	%r13d, %r12d
	je	.L28
	testl	%r13d, %r13d
	jne	.L27
	movl	(%rbp), %edx
	leal	-56(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L28
	cmpw	$46, %dx
	je	.L28
	cmpw	$47, %dx
	je	.L28
	cmpw	$49, %dx
	je	.L28
	cmpw	$113, %dx
	je	.L28
.L27:
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	.L141
	movslq	%r13d,%rbx
	movl	mode_size(,%r15,4), %ecx
	leaq	0(,%rbx,4), %r14
	movq	%rbx, 40(%rsp)
	movl	mode_size(%r14), %eax
	leal	0(,%rcx,8), %edx
	sall	$3, %eax
	cmpl	%edx, %eax
	jge	.L69
	cmpl	$32, %edx
	jg	.L142
.L69:
	movq	40(%rsp), %r14
	movl	mode_size(,%r14,4), %eax
	sall	$3, %eax
	cmpl	$32, %eax
	jg	.L143
	cmpl	$3, %r12d
	je	.L144
	cmpl	$3, %r13d
	je	.L145
.L93:
	movl	mode_size(,%r15,4), %r8d
	movl	mode_size(,%rbx,4), %eax
	sall	$3, %r8d
	sall	$3, %eax
	cmpl	%eax, %r8d
	jge	.L96
	movl	(%rbp), %eax
	andl	$134283263, %eax
	cmpl	$55, %eax
	je	.L146
.L98:
	movl	(%rbp), %eax
	cmpw	$51, %ax
	je	.L97
	cmpw	$53, %ax
	je	.L97
.L96:
	movl	mode_size(,%r15,4), %esi
	movl	mode_size(,%rbx,4), %eax
	sall	$3, %esi
	sall	$3, %eax
	cmpl	%eax, %esi
	jg	.L147
	cmpl	$6, %r13d
	jne	.L111
	cmpl	$4, %r12d
	je	.L124
	cmpl	$2, %r12d
	je	.L124
	cmpl	$1, %r12d
	je	.L124
.L111:
	cmpl	$4, %r13d
	jne	.L113
	cmpl	$2, %r12d
	je	.L125
	cmpl	$1, %r12d
	je	.L125
.L113:
	cmpl	$2, %r13d
	jne	.L114
	cmpl	$1, %r12d
	jne	.L114
	movl	$2, %edi
.L121:
	movq	%rbp, %rsi
	call	force_reg
.L122:
	movq	%rax, %rbp
	jmp	.L75
.L114:
	movl	mode_size(,%r15,4), %r9d
	movl	mode_size(,%rbx,4), %eax
	sall	$3, %r9d
	sall	$3, %eax
	cmpl	%eax, %r9d
	jge	.L115
	movl	%r12d, %edi
	movq	%rbp, %rsi
	call	gen_lowpart
	movl	%r12d, %edi
	movq	%rax, %rsi
	call	force_reg
.L126:
	movq	%rax, %rsi
	movq	24(%rsp), %rdi
.L129:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	emit_move_insn
.L125:
	movl	$4, %edi
	jmp	.L121
.L124:
	movl	$6, %edi
	jmp	.L121
.L147:
	movl	36(%rsp), %edx
	xorl	%eax, %eax
	movl	%r12d, %edi
	movl	%r13d, %esi
	call	can_extend_p
	cmpl	$210, %eax
	movl	%eax, %ebx
	jne	.L137
	testl	%r13d, %r13d
	movl	%r13d, %ebx
	je	.L115
.L108:
	movl	36(%rsp), %edx
	xorl	%eax, %eax
	movl	%r12d, %edi
	movl	%ebx, %esi
	call	can_extend_p
	cmpl	$210, %eax
	je	.L105
	movl	36(%rsp), %edx
	xorl	%eax, %eax
	movl	%ebx, %edi
	movl	%r13d, %esi
	call	can_extend_p
	cmpl	$210, %eax
	jne	.L120
.L105:
	movslq	%ebx,%rdi
	movl	mode_wider_mode(,%rdi,4), %ebx
	testl	%ebx, %ebx
	jne	.L108
	jmp	.L115
.L120:
	movl	36(%rsp), %edx
	movl	%ebx, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	jmp	.L122
.L137:
	movl	optimize(%rip), %eax
	testl	%eax, %eax
	jle	.L101
	cmpw	$53, (%rbp)
	je	.L148
.L101:
	movl	%ebx, %edi
	movq	24(%rsp), %rsi
	movq	%rbp, %rdx
.L127:
	movl	20(%rsp), %ecx
.L128:
	addq	$56, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	emit_unop_insn
.L148:
	movq	%rbp, %rsi
	movl	%r13d, %edi
	call	force_reg
	movq	%rax, %rbp
	jmp	.L101
	.p2align 6,,7
.L97:
	movl	%r12d, %edi
	movq	%rbp, %rsi
	call	gen_lowpart
	jmp	.L126
	.p2align 6,,7
.L146:
	cmpb	$0, direct_load(%r15)
	je	.L98
	movq	8(%rbp), %rdi
	xorl	%eax, %eax
	call	mode_dependent_address_p
	testl	%eax, %eax
	jne	.L98
	jmp	.L97
	.p2align 6,,7
.L145:
	cmpl	$4, %r12d
	je	.L115
	movl	36(%rsp), %edx
	movq	%rbp, %rsi
	movl	$4, %edi
	xorl	%eax, %eax
	movl	$4, %r13d
	movl	$4, %ebx
	call	convert_to_mode
	movq	%rax, %rbp
	jmp	.L93
.L144:
	cmpl	$4, %r13d
	je	.L115
	movl	36(%rsp), %edx
	movl	$4, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	jmp	.L115
.L143:
	movl	word_mode(%rip), %edi
	movq	%rbp, %rsi
	call	gen_lowpart
	movl	$0, 36(%rsp)
	movq	%rax, %rbp
	jmp	.L75
.L142:
	movl	%ecx, %edi
	movl	36(%rsp), %edx
	leal	6(%rcx), %esi
	addl	$3, %edi
	movl	%edi, %r15d
	movl	%r12d, %edi
	cmovs	%esi, %r15d
	xorl	%eax, %eax
	movl	%r13d, %esi
	call	can_extend_p
	sarl	$2, %r15d
	cmpl	$210, %eax
	movl	%eax, %ebx
	jne	.L137
	movl	mode_size(%r14), %eax
	sall	$3, %eax
	cmpl	$31, %eax
	jg	.L73
	movl	word_mode(%rip), %esi
	movl	36(%rsp), %edx
	xorl	%eax, %eax
	movl	%r12d, %edi
	call	can_extend_p
	cmpl	$210, %eax
	movl	%eax, %ebx
	jne	.L149
.L73:
	call	start_sequence
	movq	40(%rsp), %r9
	movl	%r13d, %ebx
	movl	mode_size(,%r9,4), %eax
	sall	$3, %eax
	cmpl	$31, %eax
	jg	.L77
	movl	word_mode(%rip), %ebx
.L77:
	movl	36(%rsp), %edx
	movl	%ebx, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	24(%rsp), %rsi
	movl	%ebx, %edi
	movq	%rax, %r14
	call	gen_lowpart
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	emit_move_insn
	movl	36(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L80
	movq	const0_rtx(%rip), %r14
	movslq	%ebx,%r13
.L79:
	movl	mode_size(,%r13,4), %eax
	cmpl	$-1, %eax
	leal	3(%rax), %r11d
	movl	%eax, %ebx
	cmovle	%r11d, %ebx
	sarl	$2, %ebx
	cmpl	%r15d, %ebx
	jge	.L117
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	leal	-1(%rcx), %r13d
	movl	%ecx, %ebx
.L89:
	movq	24(%rsp), %rdi
	movl	%r13d, %esi
	movl	$1, %edx
	movl	%r12d, %ecx
	call	operand_subword
	testq	%rax, %rax
	je	.L115
	cmpq	%rax, %r14
	je	.L85
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
.L85:
	decl	%r13d
	decl	%ebx
	jne	.L89
.L117:
	call	get_insns
	movq	%rax, %r15
	call	end_sequence
	movl	20(%rsp), %edi
	movl	%r12d, %esi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	24(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rax, %r8
	addq	$56, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	emit_no_conflict_block
.L80:
	movslq	%ebx,%r13
	movl	mode_size(,%r13,4), %r10d
	leal	-1(,%r10,8), %edi
	call	size_int
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rcx
	movq	%r14, %rdx
	movl	$78, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	expand_shift
	movl	$1, %edx
	movl	word_mode(%rip), %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r14
	jmp	.L79
.L149:
	movl	word_mode(%rip), %edi
	movq	24(%rsp), %rsi
	call	gen_lowpart
	movl	36(%rsp), %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	convert_move
	movl	word_mode(%rip), %edi
	movq	24(%rsp), %rsi
	call	gen_lowpart
	movq	24(%rsp), %rsi
	movl	%ebx, %edi
	movq	%rax, %rdx
	jmp	.L127
	.p2align 6,,7
.L141:
	cmpl	$8, %r13d
	je	.L150
.L31:
	cmpl	$9, %r13d
	je	.L151
.L33:
	cmpl	$11, %r13d
	je	.L152
.L35:
	xorl	%edi, %edi
	cmpl	$9, %r13d
	je	.L45
	cmpl	$9, %r13d
	ja	.L67
	cmpl	$8, %r13d
	je	.L37
.L36:
	testq	%rdi, %rdi
	je	.L115
	xorl	%eax, %eax
	movl	$1, %esi
	movl	%r12d, %edx
	movl	$1, %ecx
	movq	%rbp, %r8
	movl	%r13d, %r9d
	call	emit_library_call
	movl	%r12d, %edi
	xorl	%eax, %eax
	call	hard_libcall_value
	jmp	.L126
.L37:
	cmpl	$10, %r12d
	je	.L40
	cmpl	$10, %r12d
	ja	.L44
	cmpl	$9, %r12d
	jne	.L36
	movq	extendsfdf2_libfunc(%rip), %rdi
	jmp	.L36
	.p2align 6,,7
.L44:
	cmpl	$11, %r12d
	jne	.L36
	movq	extendsftf2_libfunc(%rip), %rdi
	jmp	.L36
	.p2align 6,,7
.L40:
	movq	extendsfxf2_libfunc(%rip), %rdi
	jmp	.L36
	.p2align 6,,7
.L67:
	cmpl	$10, %r13d
	je	.L53
	cmpl	$11, %r13d
	jne	.L36
	cmpl	$8, %r12d
	je	.L61
	cmpl	$9, %r12d
	jne	.L36
	movq	trunctfdf2_libfunc(%rip), %rdi
	jmp	.L36
	.p2align 6,,7
.L61:
	movq	trunctfsf2_libfunc(%rip), %rdi
	jmp	.L36
.L53:
	cmpl	$8, %r12d
	je	.L55
	cmpl	$9, %r12d
	jne	.L36
	movq	truncxfdf2_libfunc(%rip), %rdi
	jmp	.L36
.L55:
	movq	truncxfsf2_libfunc(%rip), %rdi
	jmp	.L36
.L45:
	cmpl	$10, %r12d
	je	.L48
	cmpl	$10, %r12d
	ja	.L52
	cmpl	$8, %r12d
	jne	.L36
	movq	truncdfsf2_libfunc(%rip), %rdi
	jmp	.L36
.L52:
	cmpl	$11, %r12d
	jne	.L36
	movq	extenddftf2_libfunc(%rip), %rdi
	jmp	.L36
.L48:
	movq	extenddfxf2_libfunc(%rip), %rdi
	jmp	.L36
.L152:
	cmpl	$8, %r12d
	movl	$112, %edi
	je	.L134
	cmpl	$9, %r12d
	jne	.L35
	movl	$113, %edi
.L134:
	movq	24(%rsp), %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	jmp	.L128
.L151:
	cmpl	$11, %r12d
	movl	$110, %edi
	je	.L134
	cmpl	$8, %r12d
	movl	$111, %edi
	jne	.L33
	jmp	.L134
	.p2align 6,,7
.L150:
	cmpl	$9, %r12d
	movl	$108, %edi
	je	.L134
	cmpl	$11, %r12d
	movl	$109, %edi
	jne	.L31
	jmp	.L134
	.p2align 6,,7
.L28:
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	jmp	.L129
	.p2align 6,,7
.L140:
	movq	8(%rbp), %rdx
	movl	mode_size(,%r15,4), %eax
	movzbq	2(%rdx), %r14
	cmpl	%eax, mode_size(,%r14,4)
	jl	.L25
	movzbl	3(%rbp), %ecx
	shrb	$2, %cl
	andl	$1, %ecx
	cmpl	36(%rsp), %ecx
	jne	.L25
	movq	%rbp, %rsi
	movl	%r12d, %edi
	movl	%r12d, %r13d
	call	gen_lowpart
	movq	%rax, %rbp
	jmp	.L25
	.p2align 6,,7
.L21:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L17
	.p2align 6,,7
.L139:
	movzbl	2(%rbp), %edx
	cmpb	$16, %dl
	je	.L15
	movq	8(%rbp), %r14
	cmpw	$59, (%r14)
	je	.L153
.L15:
	cmpl	$55, %eax
	jne	.L18
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L17
.L153:
	movq	8(%r14), %r9
	movq	%r9, 8(%rbp)
	cmpq	$0, 16(%r14)
	je	.L17
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %rbp
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L17
	.p2align 6,,7
.L14:
	cmpq	$0, 16(%rbp)
	jne	.L22
	movq	8(%rbp), %rbp
	jmp	.L17
	.p2align 6,,7
.L22:
	movq	24(%rbp), %rsi
	testq	%rsi, %rsi
	je	.L23
	movq	%rsi, %rbp
	jmp	.L17
.L23:
	movq	8(%rbp), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rbp
	jmp	.L17
	.p2align 6,,7
.L11:
	movq	24(%rsp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	24(%rsp), %r10
	movq	16(%r10), %rdi
	movq	%rax, 8(%r10)
	call	protect_from_queue
	movq	24(%rsp), %r9
	movq	%rax, 16(%r9)
	jmp	.L7
	.p2align 6,,7
.L138:
	jne	.L8
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	24(%rsp), %r8
	movq	%rax, 8(%r8)
	jmp	.L7
	.p2align 6,,7
.L4:
	movq	24(%rsp), %rax
	cmpq	$0, 16(%rax)
	jne	.L12
	movq	8(%rax), %r14
	movq	%r14, 24(%rsp)
	jmp	.L7
	.p2align 6,,7
.L12:
	movq	24(%rsp), %rdx
	movq	24(%rdx), %rdi
	testq	%rdi, %rdi
	je	.L13
	movq	%rdi, 24(%rsp)
	jmp	.L7
.L13:
	movq	24(%rsp), %rdi
	movq	8(%rdi), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	24(%rsp), %r8
	movq	%rax, %rdi
	movq	8(%r8), %rsi
	movq	%rax, 24(%r8)
	call	gen_move_insn
	movq	%rax, %rdi
	movq	24(%rsp), %rax
	movq	16(%rax), %rsi
	call	emit_insn_before
	movq	24(%rsp), %rbx
	movq	24(%rbx), %rcx
	movq	%rcx, 24(%rsp)
	jmp	.L7
.L115:
	xorl	%eax, %eax
	call	abort
.LFE1:
.Lfe1:
	.size	convert_move,.Lfe1-convert_move
	.align 2
	.p2align 4,,15
.globl convert_to_mode
	.type	convert_to_mode,@function
convert_to_mode:
.LFB2:
	subq	$24, %rsp
.LCFI7:
	movq	%rbx, (%rsp)
.LCFI8:
	movq	%rbp, 8(%rsp)
.LCFI9:
	movq	%r12, 16(%rsp)
.LCFI10:
	movl	(%rsi), %eax
	movl	%edi, %ebx
	movq	%rsi, %rbp
	movl	%edx, %r12d
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L165
.L155:
	movzbl	2(%rbp), %esi
	movzbl	%sil, %edi
	cmpl	%edi, %ebx
	je	.L154
	testl	%r12d, %r12d
	je	.L163
	movslq	%ebx,%rax
	salq	$2, %rax
	cmpl	$1, mode_class(%rax)
	je	.L166
.L163:
	movl	(%rbp), %edx
.L157:
	cmpw	$46, %dx
	je	.L159
.L164:
	movslq	%ebx,%rdi
	leaq	0(,%rdi,4), %rcx
	cmpl	$1, mode_class(%rcx)
	je	.L167
.L158:
	movl	%ebx, %edi
	call	gen_reg_rtx
	movl	%r12d, %edx
	movq	%rbp, %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	convert_move
	movq	%rbx, %rbp
.L154:
	movq	%rbp, %rax
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	8(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 6,,7
.L167:
	movl	%esi, %eax
	movzbl	%al, %r9d 
	leaq	0(,%r9,4), %rax
	cmpl	$1, mode_class(%rax)
	jne	.L158
	cmpw	$47, %dx
	je	.L159
	movl	mode_size(%rax), %eax
	cmpl	%eax, mode_size(%rcx)
	jg	.L158
	movl	(%rbp), %eax
	andl	$134283263, %eax
	cmpl	$55, %eax
	je	.L168
.L160:
	cmpw	$51, %dx
	jne	.L158
	.p2align 4,,7
.L159:
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	16(%rsp), %r12
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	addq	$24, %rsp
	jmp	gen_lowpart
.L168:
	cmpb	$0, direct_load(%rdi)
	je	.L160
	jmp	.L159
	.p2align 6,,7
.L166:
	movl	mode_size(%rax), %eax
	sall	$3, %eax
	cmpl	$64, %eax
	jne	.L163
	movl	(%rbp), %edx
	cmpw	$46, %dx
	jne	.L164
	movl	8(%rbp), %edi
	testl	%edi, %edi
	jns	.L157
	movl	%ebx, %edx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	(%rsp), %rbx
	xorl	%esi, %esi
	addq	$24, %rsp
	jmp	immed_double_const
	.p2align 6,,7
.L165:
	movq	8(%rsi), %r8
	movslq	%edi,%rdx
	movl	mode_size(,%rdx,4), %eax
	movzbq	2(%r8), %rcx
	cmpl	%eax, mode_size(,%rcx,4)
	jl	.L155
	movzbl	3(%rsi), %ecx
	shrb	$2, %cl
	andl	$1, %ecx
	cmpl	%r12d, %ecx
	jne	.L155
	call	gen_lowpart
	movq	%rax, %rbp
	jmp	.L155
.LFE2:
.Lfe2:
	.size	convert_to_mode,.Lfe2-convert_to_mode
	.align 2
	.p2align 4,,15
.globl emit_move_insn
	.type	emit_move_insn,@function
emit_move_insn:
.LFB3:
	pushq	%r15
.LCFI11:
	pushq	%r14
.LCFI12:
	movq	%rdi, %r14
	pushq	%r13
.LCFI13:
	pushq	%r12
.LCFI14:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI15:
	pushq	%rbx
.LCFI16:
	subq	$24, %rsp
.LCFI17:
	movzbl	2(%rdi), %r13d
	movslq	%r13d,%r15
	movl	mode_class(,%r15,4), %eax
	movl	%eax, 20(%rsp)
	movzwl	(%rdi), %eax
	cmpl	$59, %eax
	je	.L170
	cmpl	$55, %eax
	je	.L242
.L174:
	cmpl	$63, %eax
	je	.L177
	cmpl	$66, %eax
	je	.L177
.L173:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L180
	cmpl	$55, %eax
	je	.L243
.L184:
	cmpl	$63, %eax
	je	.L187
	cmpl	$66, %eax
	je	.L187
.L183:
	cmpl	$16, %r13d
	je	.L221
	movzbl	2(%r12), %edx
	movzbl	%dl, %ebx
	cmpl	%r13d, %ebx
	je	.L190
	testb	%dl, %dl
	jne	.L221
.L190:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L193
	cmpw	$46, %dx
	je	.L193
	cmpw	$47, %dx
	je	.L239
	cmpw	$49, %dx
	je	.L193
	cmpw	$113, %dx
	je	.L193
	.p2align 4,,7
.L192:
	cmpw	$55, (%r14)
	je	.L244
.L194:
	cmpw	$55, (%r12)
	je	.L245
.L197:
	cmpl	$16, %r13d
	je	.L221
	movl	20(%rsp), %ebx
	subl	$5, %ebx
	cmpl	$1, %ebx
	jbe	.L246
.L200:
	movq	mov_optab(%rip), %rdx
	movq	%r15, %rcx
	salq	$4, %rcx
	movl	8(%rdx,%rcx), %eax
	cmpl	$210, %eax
	jne	.L247
	cmpl	$1, %ebx
	ja	.L207
	cmpl	$16, 4(%rsp)
	je	.L207
	movslq	4(%rsp),%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	cmpl	$210, 8(%rdx,%rsi)
	je	.L207
	movzbl	2(%r14), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	push_operand
	movl	%eax, %r13d
	call	get_last_insn
	cmpw	$51, (%r14)
	movq	%rax, %r15
	je	.L248
.L208:
	testl	%r13d, %r13d
	je	.L211
	movl	4(%rsp), %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	change_address
.L240:
	movl	4(%rsp), %edi
	movq	%r12, %rsi
	movq	%rax, %rbp
	call	gen_highpart
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	salq	$4, %rdx
	movq	%rax, %rsi
	addq	mov_optab(%rip), %rdx
	xorl	%eax, %eax
	movslq	8(%rdx),%r8
	call	*insn_gen_function(,%r8,8)
	movq	%rax, %rdi
	call	emit_insn
	testl	%r13d, %r13d
	je	.L215
	movl	4(%rsp), %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	change_address
.L241:
	movl	4(%rsp), %edi
	movq	%r12, %rsi
	movq	%rax, %r14
	salq	$4, %rbx
	call	gen_lowpart
	movq	%r14, %rdi
	addq	mov_optab(%rip), %rbx
	movq	%rax, %rsi
	xorl	%eax, %eax
	movslq	8(%rbx),%r12
	call	*insn_gen_function(,%r12,8)
	movq	%rax, %rdi
	call	emit_insn
	testq	%r15, %r15
	je	.L217
	movq	24(%r15), %rbp
.L218:
	call	get_last_insn
	movq	%rbp, %rdx
	movl	$6, %esi
	movq	56(%rax), %rcx
	movq	%rax, %r15
	movl	$3, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%r15, %rdx
	movl	$7, %esi
	movq	%rax, 56(%r15)
	movl	$3, %edi
	xorl	%eax, %eax
	movq	56(%rbp), %rcx
	call	gen_rtx
	movq	%rax, 56(%rbp)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	get_last_insn
.L217:
	call	get_insns
	movq	%rax, %rbp
	jmp	.L218
.L215:
	movl	4(%rsp), %edi
	movq	%r14, %rsi
	call	gen_lowpart
	jmp	.L241
.L211:
	movl	4(%rsp), %edi
	movq	%r14, %rsi
	call	gen_highpart
	jmp	.L240
.L248:
	movl	$42, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L208
	.p2align 6,,7
.L207:
	cmpl	$4, mode_size(,%r15,4)
	jle	.L221
	call	get_last_insn
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movq	%rax, 8(%rsp)
	.p2align 4,,7
.L222:
	movl	mode_size(,%r15,4), %eax
	leal	6(%rax), %r9d
	addl	$3, %eax
	cmovs	%r9d, %eax
	sarl	$2, %eax
	cmpl	%eax, %ebx
	jge	.L249
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	$1, %edx
	movl	%r13d, %ecx
	call	operand_subword
	movl	%r13d, %ecx
	movl	$1, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rax, %rbp
	call	operand_subword
	testq	%rax, %rax
	jne	.L229
	movzwl	(%r12), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L228
	cmpw	$46, %dx
	je	.L228
	cmpw	$47, %dx
	je	.L228
	cmpw	$49, %dx
	je	.L228
	cmpw	$113, %dx
	je	.L228
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	call	operand_subword_force
	.p2align 4,,7
.L229:
	testq	%rbp, %rbp
	je	.L221
	testq	%rax, %rax
	je	.L221
	movq	%rbp, %rdi
	movq	%rax, %rsi
	incl	%ebx
	call	emit_move_insn
	movq	%rax, %rbp
	jmp	.L222
	.p2align 6,,7
.L228:
	movl	%r13d, %edi
	movq	%r12, %rsi
	call	force_const_mem
	movl	%r13d, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%ebx, %esi
	movq	%rax, %r12
	call	operand_subword
	jmp	.L229
.L249:
	cmpq	$0, 8(%rsp)
	je	.L235
	movq	8(%rsp), %rbx
	movq	24(%rbx), %r12
.L236:
	call	get_last_insn
	movq	%r12, %rdx
	movl	$6, %esi
	movq	56(%rax), %rcx
	movq	%rax, %r13
	movl	$3, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%r13, %rdx
	movl	$7, %esi
	movq	%rax, 56(%r13)
	movl	$3, %edi
	xorl	%eax, %eax
	movq	56(%r12), %rcx
	call	gen_rtx
	movq	%rax, 56(%r12)
	addq	$24, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L235:
	call	get_insns
	movq	%rax, %r12
	jmp	.L236
	.p2align 6,,7
.L247:
	movslq	%eax,%r13
	movq	%r14, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	*insn_gen_function(,%r13,8)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rax, %rdi
	jmp	emit_insn
.L246:
	movl	mode_unit_size(,%r15,4), %edi
	sall	$3, %edi
	cmpl	$5, 20(%rsp)
	setne	%r11b
	xorl	%eax, %eax
	xorl	%edx, %edx
	movzbl	%r11b, %esi
	incl	%esi
	call	mode_for_size
	movl	%eax, 4(%rsp)
	jmp	.L200
.L245:
	movzbl	2(%r12), %edi
	movq	8(%r12), %rsi
	xorl	%eax, %eax
	call	memory_address_p
	testl	%eax, %eax
	je	.L198
	movl	flag_force_addr(%rip), %r8d
	testl	%r8d, %r8d
	je	.L197
	movq	8(%r12), %r10
	movzwl	(%r10), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L198
	cmpw	$46, %dx
	je	.L198
	cmpw	$47, %dx
	je	.L198
	cmpw	$49, %dx
	je	.L198
	cmpw	$113, %dx
	jne	.L197
.L198:
	movq	8(%r12), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %r12
	jmp	.L197
.L244:
	movzbl	2(%r14), %edi
	movq	8(%r14), %rsi
	xorl	%eax, %eax
	call	memory_address_p
	testl	%eax, %eax
	je	.L250
.L196:
	movl	flag_force_addr(%rip), %eax
	testl	%eax, %eax
	je	.L194
	movq	8(%r14), %rbp
	movl	(%rbp), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L195
	cmpw	$46, %dx
	je	.L195
	cmpw	$47, %dx
	je	.L195
	cmpw	$49, %dx
	je	.L195
	cmpw	$113, %dx
	jne	.L194
.L195:
	movq	8(%r14), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %r14
	jmp	.L194
.L250:
	movzbl	2(%r14), %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	call	push_operand
	testl	%eax, %eax
	je	.L195
	jmp	.L196
	.p2align 6,,7
.L193:
	cmpw	$47, %dx
	jne	.L192
.L239:
	cmpb	$0, 2(%r12)
	je	.L192
	movq	%r12, %rsi
	movl	%r13d, %edi
	call	force_const_mem
	movq	%rax, %r12
	jmp	.L192
.L187:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L183
.L243:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L181
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L251
.L181:
	cmpl	$55, %eax
	jne	.L184
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L183
.L251:
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L183
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L183
	.p2align 6,,7
.L180:
	cmpq	$0, 16(%r12)
	jne	.L188
	movq	8(%r12), %r12
	jmp	.L183
.L188:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L189
	movq	%rsi, %r12
	jmp	.L183
.L189:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L183
.L177:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L173
.L242:
	jne	.L174
	movq	8(%rdi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L173
.L170:
	cmpq	$0, 16(%rdi)
	jne	.L178
	movq	8(%rdi), %r14
	jmp	.L173
.L178:
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L179
	movq	%rdi, %r14
	jmp	.L173
.L179:
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L173
.L221:
	xorl	%eax, %eax
	call	abort
.LFE3:
.Lfe3:
	.size	emit_move_insn,.Lfe3-emit_move_insn
	.align 2
	.p2align 4,,15
.globl emit_library_call
	.type	emit_library_call,@function
emit_library_call:
.LFB4:
	pushq	%rbp
.LCFI18:
	movq	%rsp, %rbp
.LCFI19:
	pushq	%r15
.LCFI20:
	pushq	%r14
.LCFI21:
	leaq	-112(%rbp), %r15
	pushq	%r13
.LCFI22:
	pushq	%r12
.LCFI23:
	pushq	%rbx
.LCFI24:
	subq	$248, %rsp
.LCFI25:
	movl	$0, -216(%rbp)
	movq	$0, -56(%rbp)
	movl	inhibit_defer_pop(%rip), %eax
	movl	$0, -220(%rbp)
	movq	-132(%rbp), %rsi
	movl	-124(%rbp), %ebx
	movl	-120(%rbp), %ecx
	movl	%edi, -132(%rbp)
	movl	$0, -64(%rbp)
	movl	%eax, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movl	-116(%rbp), %eax
	movl	%ebx, -212(%rbp)
	movl	%ecx, -148(%rbp)
	movl	%eax, -152(%rbp)
	movslq	-152(%rbp),%rdx
	salq	$6, %rdx
	subq	%rdx, %rsp
	leaq	32(%rsp), %rax
	movq	%rax, -160(%rbp)
	movl	-152(%rbp), %eax
	cmpl	%eax, -220(%rbp)
	jge	.L495
	.p2align 4,,7
.L305:
	movq	(%r15), %rdi
	addq	$12, %r15
	movl	-4(%r15), %r12d
	cmpl	$16, %r12d
	je	.L532
	movzbl	2(%rdi), %edx
	movzbl	%dl, %r8d
	cmpl	%r12d, %r8d
	je	.L257
	testb	%dl, %dl
	jne	.L532
.L257:
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L259
	cmpw	$55, %dx
	je	.L259
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L261
	cmpw	$46, %dx
	je	.L261
	cmpw	$47, %dx
	je	.L516
	cmpw	$49, %dx
	je	.L261
	cmpw	$113, %dx
	je	.L261
.L260:
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	force_operand
	movq	%rax, %rdi
	.p2align 4,,7
.L259:
	movslq	-216(%rbp),%r13
	movq	%r13, %rax
	salq	$6, %rax
	addq	-160(%rbp), %rax
	cmpl	$11, %r12d
	movq	%rdi, (%rax)
	movl	%r12d, 8(%rax)
	je	.L532
	movl	target_flags(%rip), %edi
	leaq	16(%rax), %rbx
	testl	$32, %edi
	movl	%edi, %edx
	je	.L265
	movslq	%r12d,%r10
	cmpl	$4, mode_unit_size(,%r10,4)
	jle	.L265
	testl	$1, -220(%rbp)
	jne	.L265
	movl	-220(%rbp), %eax
	incl	%eax
	cmpl	$5, %eax
	.p2align 4,,7
.L518:
	jg	.L263
	andl	$32, %edx
	je	.L273
	movslq	%r12d,%r11
	cmpl	$4, mode_unit_size(,%r11,4)
	jle	.L273
	movl	-220(%rbp), %edx
	movl	-220(%rbp), %eax
	addl	$9, %edx
	addl	$8, %eax
	testl	$1, -220(%rbp)
	cmovne	%eax, %edx
.L274:
	movl	$51, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L264:
	movq	-160(%rbp), %rdx
	movq	%r13, %r14
	movq	%rax, (%rbx)
	salq	$6, %r14
	movq	16(%rdx,%r14), %rax
	testq	%rax, %rax
	je	.L277
	cmpw	$2, (%rax)
	je	.L532
.L277:
	movq	-160(%rbp), %rcx
	movq	%r13, %rbx
	salq	$6, %rbx
	leaq	24(%rcx,%rbx), %r14
	movl	target_flags(%rip), %ecx
	testl	$32, %ecx
	movl	%ecx, %edx
	je	.L280
	movslq	%r12d,%rsi
	cmpl	$4, mode_unit_size(,%rsi,4)
	jle	.L280
	testl	$1, -220(%rbp)
	jne	.L280
	movl	-220(%rbp), %eax
	incl	%eax
	cmpl	$5, %eax
	.p2align 4,,7
.L519:
	jg	.L278
	andl	$32, %edx
	je	.L284
	movslq	%r12d,%r8
	cmpl	$4, mode_unit_size(,%r8,4)
	jle	.L284
	movl	-220(%rbp), %eax
	movl	-220(%rbp), %ebx
	xorl	$1, %eax
	andl	$1, %eax
	addl	%eax, %ebx
.L285:
	cmpl	$16, %r12d
	je	.L533
	movslq	%r12d,%rdx
	movl	mode_size(,%rdx,4), %eax
	leal	6(%rax), %r11d
	addl	$3, %eax
	cmovs	%r11d, %eax
	sarl	$2, %eax
	leal	-6(%rax,%rbx), %r10d
	testl	%r10d, %r10d
	jle	.L278
.L287:
	andl	$32, %ecx
	je	.L290
	movslq	%r12d,%rcx
	cmpl	$4, mode_unit_size(,%rcx,4)
	jle	.L290
	testl	$1, -220(%rbp)
	jne	.L290
	movl	$5, %eax
	.p2align 4,,7
.L520:
	subl	-220(%rbp), %eax
.L279:
	movl	%eax, (%r14)
	salq	$6, %r13
	xorl	%edx, %edx
	movq	-160(%rbp), %rax
	leaq	(%rax,%r13), %rbx
	cmpq	$0, 16(%rbx)
	je	.L294
	movl	24(%rbx), %r13d
	movl	$1, %eax
	testl	%r13d, %r13d
	cmove	%eax, %edx
.L294:
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	leaq	32(%rbx), %r9
	leaq	48(%rbx), %r14
	movl	%r12d, %edi
	leaq	-64(%rbp), %r8
	movq	%r14, (%rsp)
	call	locate_and_pad_parm
	cmpq	$0, 56(%rbx)
	jne	.L532
	movl	48(%rbx), %eax
	addl	%eax, -64(%rbp)
	cmpq	$0, 16(%rbx)
	je	.L532
	movl	24(%rbx), %esi
	testl	%esi, %esi
	jne	.L532
	testb	$32, target_flags(%rip)
	je	.L299
	movslq	%r12d,%rbx
	cmpl	$4, mode_unit_size(,%rbx,4)
	jle	.L299
	movl	-220(%rbp), %eax
	movl	-220(%rbp), %ebx
	xorl	$1, %eax
	andl	$1, %eax
	addl	%eax, %ebx
.L300:
	cmpl	$16, %r12d
	je	.L301
	movslq	%r12d,%r8
	movl	mode_size(,%r8,4), %eax
.L521:
	leal	6(%rax), %edi
	movl	-152(%rbp), %r12d
	addl	$3, %eax
	cmovs	%edi, %eax
	incl	-216(%rbp)
	sarl	$2, %eax
	cmpl	%r12d, -216(%rbp)
	leal	(%rax,%rbx), %r9d
	movl	%r9d, -220(%rbp)
	jl	.L305
.L495:
	movq	-176(%rbp), %rdi
	xorl	%eax, %eax
	call	assemble_external_libcall
	movl	-64(%rbp), %eax
	leal	14(%rax), %r15d
	addl	$7, %eax
	cmovns	%eax, %r15d
	movl	$24, %eax
	andl	$-8, %r15d
	cmpl	$23, %r15d
	cmovg	%r15d, %eax
	cmpl	current_function_outgoing_args_size(%rip), %eax
	movl	%eax, -64(%rbp)
	jle	.L308
	movl	%eax, current_function_outgoing_args_size(%rip)
.L308:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	$0, -64(%rbp)
	call	gen_rtx
	movzwl	(%rax), %edx
	movq	%rax, %rcx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L310
	cmpw	$46, %dx
	je	.L310
	cmpw	$47, %dx
	je	.L310
	cmpw	$49, %dx
	je	.L310
	cmpw	$113, %dx
	je	.L310
	cmpw	$51, %dx
	movq	%rax, %rdi
	je	.L522
	movq	%rax, %rsi
	movl	$4, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
.L523:
	movq	%rax, %rdi
.L522:
	xorl	%eax, %eax
	call	anti_adjust_stack
	xorl	%r11d, %r11d
	movq	virtual_outgoing_args_rtx(%rip), %rsi
	testl	%r11d, %r11d
	je	.L315
	jne	.L534
.L315:
	movl	class_narrowest_mode+4(%rip), %edi
	call	memory_address
	movl	$0, -224(%rbp)
	movl	$0, -228(%rbp)
	movq	%rax, -184(%rbp)
	movl	-152(%rbp), %eax
	cmpl	%eax, -224(%rbp)
	jge	.L497
	.p2align 4,,7
.L462:
	movslq	-228(%rbp),%rcx
	salq	$6, %rcx
	addq	-160(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	16(%rcx), %rdx
	movq	(%rcx), %r12
	movl	%eax, -196(%rbp)
	testq	%rdx, %rdx
	movq	%rdx, -192(%rbp)
	movl	24(%rcx), %eax
	movl	%eax, -200(%rbp)
	je	.L322
	testl	%eax, %eax
	je	.L321
.L322:
	movslq	-224(%rbp),%r13
	movq	-160(%rbp), %r14
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	xorl	%r15d, %r15d
	movl	$0, -236(%rbp)
	salq	$6, %r13
	movl	32(%r13,%r14), %edx
	call	gen_rtx
	cmpl	$16, -196(%rbp)
	movq	%rax, %r14
	je	.L323
	movslq	-196(%rbp),%rsi
	movl	$2, -232(%rbp)
	movl	mode_size(,%rsi,4), %eax
	sall	$3, %eax
	cmpl	$31, %eax
	jle	.L327
.L323:
	movl	$1, -232(%rbp)
.L327:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L331
	cmpl	$55, %eax
	je	.L535
.L335:
	cmpl	$63, %eax
	je	.L338
	cmpl	$66, %eax
	je	.L338
.L334:
	cmpl	$16, -196(%rbp)
	movq	%r12, -248(%rbp)
	je	.L536
	movl	-200(%rbp), %esi
	testl	%esi, %esi
	jle	.L434
	movslq	-196(%rbp),%r15
	movl	8(%r14), %r13d
	movl	mode_size(,%r15,4), %eax
	cmpl	$-1, %eax
	leal	3(%rax), %edi
	movl	%eax, %r15d
	cmovle	%edi, %r15d
	xorl	%ebx, %ebx
	sarl	$2, %r15d
	testl	%ebx, %ebx
	je	.L436
	cmpq	$0, -184(%rbp)
	je	.L537
.L437:
	movq	-248(%rbp), %r9
	movl	-200(%rbp), %r12d
	movzwl	(%r9), %edx
	subl	%ebx, %r12d
	leal	-56(%rdx), %r10d
	movl	%edx, %ecx
	cmpw	$1, %r10w
	jbe	.L439
	cmpw	$46, %dx
	je	.L439
	cmpw	$47, %dx
	je	.L439
	cmpw	$49, %dx
	je	.L439
	cmpw	$113, %dx
	je	.L439
	.p2align 4,,7
.L438:
	cmpw	$51, %dx
	je	.L538
.L440:
	cmpl	%r15d, %r12d
	jge	.L431
	leal	(%rbx,%r12), %r14d
	leal	(%r13,%r12,4), %r13d
	.p2align 4,,7
.L446:
	cmpl	%r14d, %r12d
	jge	.L539
.L443:
	incl	%r12d
	addl	$4, %r13d
	cmpl	%r15d, %r12d
	jl	.L446
.L431:
	movl	-200(%rbp), %ebx
	testl	%ebx, %ebx
	jle	.L451
	movq	-248(%rbp), %rsi
	movq	-192(%rbp), %rax
	movzwl	(%rsi), %edx
	movl	8(%rax), %r13d
	leal	-56(%rdx), %r14d
	cmpw	$1, %r14w
	jbe	.L453
	cmpw	$46, %dx
	je	.L453
	cmpw	$47, %dx
	je	.L517
	cmpw	$49, %dx
	je	.L453
	cmpw	$113, %dx
	je	.L453
	.p2align 4,,7
.L452:
	xorl	%r12d, %r12d
	cmpl	-200(%rbp), %r12d
	jl	.L458
.L451:
	xorl	%r13d, %r13d
	testl	%r13d, %r13d
	je	.L321
	cmpq	$0, -184(%rbp)
	je	.L540
.L321:
	incl	-224(%rbp)
	incl	inhibit_defer_pop(%rip)
	incl	-228(%rbp)
	movl	-152(%rbp), %edi
	cmpl	%edi, -224(%rbp)
	jl	.L462
.L497:
	movl	-152(%rbp), %r8d
	xorl	%r12d, %r12d
	testl	%r8d, %r8d
	jle	.L511
	movl	-152(%rbp), %ebx
	.p2align 4,,7
.L468:
	movslq	%r12d,%r10
	salq	$6, %r10
	addq	-160(%rbp), %r10
	movq	16(%r10), %rdi
	movq	(%r10), %rsi
	movl	24(%r10), %eax
	testq	%rdi, %rdi
	je	.L467
	testl	%eax, %eax
	je	.L541
.L467:
	incl	inhibit_defer_pop(%rip)
	incl	%r12d
	decl	%ebx
	jne	.L468
.L511:
	movl	-212(%rbp), %edx
	testl	%edx, %edx
	jne	.L469
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L473
.L469:
	call	start_sequence
	xorl	%ebx, %ebx
	cmpl	-152(%rbp), %ebx
	jge	.L514
	.p2align 4,,7
.L480:
	movq	-160(%rbp), %r12
	movslq	%ebx,%r11
	salq	$6, %r11
	movq	16(%r11,%r12), %rdx
	testq	%rdx, %rdx
	jne	.L542
.L477:
	incl	%ebx
	cmpl	-152(%rbp), %ebx
	jl	.L480
.L514:
	call	get_insns
	movq	%rax, -144(%rbp)
	call	end_sequence
	movq	-176(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-144(%rbp), %rdx
	xorl	%eax, %eax
	call	prepare_call_address
	movq	-176(%rbp), %rcx
	incl	inhibit_defer_pop(%rip)
	movq	%rax, %r13
	movq	8(%rcx), %rdi
	call	get_identifier
	movl	target_flags(%rip), %edx
	movq	%rax, %r12
	testl	$32, %edx
	je	.L483
	cmpl	$4, mode_unit_size(%rip)
	jle	.L483
	testl	$1, -220(%rbp)
	jne	.L483
	movl	-220(%rbp), %eax
	incl	%eax
	cmpl	$5, %eax
.L531:
	jg	.L481
	movq	void_type_node(%rip), %rax
	testq	%rax, %rax
	je	.L487
	testb	$8, 17(%rax)
	jne	.L481
.L487:
	andl	$32, %edx
	je	.L488
	cmpl	$4, mode_unit_size(%rip)
	jle	.L488
	movl	-220(%rbp), %edx
	movl	-220(%rbp), %eax
	addl	$9, %edx
	addl	$8, %eax
	testl	$1, -220(%rbp)
	cmovne	%eax, %edx
.L489:
	movl	$51, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rbx
.L482:
	movl	-148(%rbp), %r14d
	testl	%r14d, %r14d
	jne	.L543
	xorl	%r9d, %r9d
.L493:
	movl	-164(%rbp), %eax
	movq	-144(%rbp), %rsi
	movq	%r13, %rdi
	movl	-64(%rbp), %edx
	movq	%rbx, %r8
	xorl	%ecx, %ecx
	incl	%eax
	movq	%rsi, 8(%rsp)
	movq	%r12, %rsi
	movl	%eax, (%rsp)
	movl	-212(%rbp), %eax
	movl	%eax, 16(%rsp)
	xorl	%eax, %eax
	call	emit_call_1
	decl	inhibit_defer_pop(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L543:
	movl	-148(%rbp), %edi
	xorl	%eax, %eax
	call	hard_libcall_value
	movq	%rax, %r9
	jmp	.L493
.L488:
	movl	-220(%rbp), %edx
	addl	$8, %edx
	jmp	.L489
.L481:
	xorl	%ebx, %ebx
	jmp	.L482
.L483:
	cmpl	$5, -220(%rbp)
	jmp	.L531
	.p2align 6,,7
.L542:
	movl	$41, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L477
	.p2align 6,,7
.L473:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L473
	jmp	.L469
.L541:
	call	emit_move_insn
	jmp	.L467
.L540:
	cmpl	$2, -232(%rbp)
	jne	.L321
	movl	$46, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	anti_adjust_stack
	jmp	.L321
	.p2align 6,,7
.L458:
	movl	word_mode(%rip), %esi
	leal	(%r12,%r13), %edx
	movl	$51, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movl	-196(%rbp), %edx
	movl	%r12d, %esi
	movq	-248(%rbp), %rdi
	movq	%rax, %r15
	incl	%r12d
	call	operand_subword_force
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	cmpl	-200(%rbp), %r12d
	jl	.L458
	jmp	.L451
	.p2align 6,,7
.L453:
	cmpw	$47, %dx
	jne	.L452
.L517:
	movq	-248(%rbp), %rdx
	cmpb	$0, 2(%rdx)
	je	.L452
	movl	-196(%rbp), %edi
	movq	%rdx, %rsi
	call	force_const_mem
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	validize_mem
	movq	%rax, -248(%rbp)
	jmp	.L452
	.p2align 6,,7
.L539:
	movq	-248(%rbp), %rdi
	movl	-196(%rbp), %edx
	movl	%r12d, %esi
	call	operand_subword_force
	movl	%r13d, %edx
	xorl	%esi, %esi
	movq	%rax, %rbx
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	-184(%rbp), %r11
	movl	word_mode(%rip), %esi
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	emit_push_insn
	jmp	.L443
.L538:
	movq	-248(%rbp), %rsi
	cmpl	$63, 8(%rsi)
	jg	.L440
	movzbq	2(%rsi), %rdx
	cmpl	$1, mode_class(,%rdx,4)
	je	.L440
	movq	%rsi, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, -248(%rbp)
	jmp	.L440
	.p2align 6,,7
.L439:
	cmpw	$47, %cx
	jne	.L438
	movq	-248(%rbp), %rcx
	cmpb	$0, 2(%rcx)
	je	.L438
	movl	-196(%rbp), %edi
	movq	%rcx, %rsi
	call	force_const_mem
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	validize_mem
	movq	%rax, -248(%rbp)
	movzwl	(%rax), %edx
	jmp	.L438
.L537:
	movl	-232(%rbp), %r8d
	testl	%r8d, %r8d
	je	.L436
	cmpl	$2, -232(%rbp)
	je	.L436
	movl	$46, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	anti_adjust_stack
.L436:
	cmpq	$0, -184(%rbp)
	movl	$0, %eax
	cmove	%eax, %ebx
	jmp	.L437
.L434:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L448
	cmpq	$0, -184(%rbp)
	je	.L544
.L448:
	cmpw	$46, (%r14)
	je	.L545
	movq	-184(%rbp), %rdx
	movl	$63, %edi
	movl	$4, %esi
	movq	%r14, %rcx
	xorl	%eax, %eax
	call	gen_rtx
.L530:
	movl	-196(%rbp), %edi
	movq	%rax, %rsi
	call	memory_address
	movl	-196(%rbp), %esi
	movl	$55, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	gen_rtx
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_move_insn
	jmp	.L431
.L545:
	movq	-184(%rbp), %rdi
	movl	8(%r14), %esi
	call	plus_constant_wide
	jmp	.L530
.L544:
	movl	-232(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L448
	cmpl	$2, -232(%rbp)
	je	.L448
	movl	$46, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	anti_adjust_stack
	jmp	.L448
	.p2align 6,,7
.L536:
	movl	-200(%rbp), %esi
	sall	$2, %esi
	cmpl	$-1, %esi
	leal	3(%rsi), %edi
	movl	%esi, %r9d
	cmovg	%esi, %edi
	andl	$-4, %edi
	subl	%edi, %r9d
	testq	%r15, %r15
	je	.L532
	movl	-200(%rbp), %eax
	movl	%esi, %ebx
	subl	%r9d, %ebx
	testl	%eax, %eax
	jne	.L546
.L345:
	cmpq	$0, -184(%rbp)
	je	.L547
	cmpw	$46, (%r14)
	je	.L548
	movq	-184(%rbp), %rdx
	movl	$63, %edi
	movl	$4, %esi
	movq	%r14, %rcx
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
.L526:
	movl	%ebx, %esi
	call	plus_constant_wide
	movl	$16, %edi
	movq	%rax, %rsi
.L527:
	call	memory_address
	cmpw	$46, (%r15)
	movq	%rax, %rbx
	je	.L549
.L360:
	movq	%rbx, %rdx
	movl	$55, %edi
	movl	$16, %esi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %r13
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rax, %rcx
	call	gen_movstrsi
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L431
.L549:
	xorl	%r11d, %r11d
	movl	$8, %r10d
	movl	8(%r15), %edi
	cmpl	$8, -236(%rbp)
	movl	$9, %esi
	movl	class_narrowest_mode+4(%rip), %r8d
	cmovl	-236(%rbp), %r10d
	movq	mov_optab(%rip), %r9
	movl	$8, %r13d
	.p2align 4,,7
.L374:
	xorl	%ecx, %ecx
	movl	%r8d, %edx
	testl	%r8d, %r8d
	je	.L500
	.p2align 4,,7
.L370:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%esi, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L370
.L500:
	testl	%ecx, %ecx
	je	.L363
	movslq	%ecx,%rcx
	movq	%rcx, %rsi
	salq	$4, %rsi
	cmpl	$210, 8(%r9,%rsi)
	je	.L372
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r13d, %eax
	cmpl	%eax, %r10d
	jl	.L372
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r11d
	movl	%edx, %edi
.L372:
	movl	mode_size(,%rcx,4), %esi
	cmpl	$1, %esi
	jg	.L374
.L363:
	decl	%r11d
	jg	.L360
	movq	%rbx, %rdx
	movl	$55, %edi
	xorl	%eax, %eax
	movl	$16, %esi
	movl	$9, %ebx
	call	gen_rtx
	xorl	%ecx, %ecx
	movq	8(%r12), %rdi
	movq	8(%rax), %r13
	movl	8(%r15), %r10d
	movq	%r12, -104(%rbp)
	movl	$0, -76(%rbp)
	movq	%rax, -128(%rbp)
	movq	%rdi, -96(%rbp)
	movq	%r13, -120(%rbp)
	movzwl	(%r13), %edx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L377
	cmpw	$88, %dx
	je	.L377
	cmpw	$87, %dx
	je	.L377
.L376:
	movl	%ecx, -112(%rbp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L379
	cmpw	$88, %dx
	je	.L379
	cmpw	$87, %dx
	je	.L379
.L378:
	movl	%ecx, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -108(%rbp)
	movzwl	(%r13), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L381
	cmpw	$87, %ax
	je	.L381
.L380:
	testl	%edx, %edx
	movl	%edx, -72(%rbp)
	je	.L382
	movl	%r10d, -76(%rbp)
.L382:
	movl	-88(%rbp), %r15d
	movl	%r10d, -80(%rbp)
	testl	%r15d, %r15d
	je	.L384
	movl	-112(%rbp), %eax
	testl	%eax, %eax
	jne	.L383
.L384:
	xorl	%r12d, %r12d
	movl	$8, %r11d
	movl	$9, %esi
	cmpl	$8, -236(%rbp)
	movl	class_narrowest_mode+4(%rip), %r8d
	movl	$8, %r14d
	cmovl	-236(%rbp), %r11d
	movq	mov_optab(%rip), %r9
.L398:
	xorl	%ecx, %ecx
	movl	%r8d, %edx
	testl	%r8d, %r8d
	je	.L503
.L394:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%esi, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L394
.L503:
	testl	%ecx, %ecx
	je	.L387
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r9,%rdx)
	je	.L396
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r14d, %eax
	cmpl	%eax, %r11d
	jl	.L396
	movl	%r10d, %eax
	movl	%edx, %r10d
	xorl	%edx, %edx
	divl	%r10d
	addl	%eax, %r12d
	movl	%edx, %r10d
.L396:
	movl	mode_size(,%rcx,4), %esi
	cmpl	$1, %esi
	jg	.L398
.L387:
	cmpl	$2, %r12d
	jle	.L383
	testl	%r15d, %r15d
	jne	.L400
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L401
	cmpw	$46, %dx
	je	.L401
	cmpw	$47, %dx
	je	.L401
	cmpw	$49, %dx
	je	.L401
	cmpw	$113, %dx
	je	.L401
.L400:
	movl	-112(%rbp), %eax
	testl	%eax, %eax
	jne	.L383
	movzwl	(%r13), %edx
	leal	-56(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L403
	cmpw	$46, %dx
	je	.L403
	cmpw	$47, %dx
	je	.L403
	cmpw	$49, %dx
	je	.L403
	cmpw	$113, %dx
	je	.L403
.L383:
	cmpl	$8, -236(%rbp)
	movl	$8, %eax
	cmovl	-236(%rbp), %eax
	cmpl	$1, %ebx
	movl	%eax, -236(%rbp)
	jle	.L406
.L428:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L506
.L413:
	movslq	%edx,%r11
	salq	$2, %r11
	cmpl	%ebx, mode_size(%r11)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%r11), %edx
	testl	%edx, %edx
	jne	.L413
.L506:
	testl	%r13d, %r13d
	je	.L406
	movslq	%r13d,%r15
	movq	%r15, %rbx
	salq	$4, %rbx
	addq	mov_optab(%rip), %rbx
	movl	8(%rbx), %edx
	cmpl	$210, %edx
	je	.L415
	movl	mode_size(,%r15,4), %r12d
	movl	$8, %eax
	cmpl	$9, %r12d
	cmovl	%r12d, %eax
	cmpl	%eax, -236(%rbp)
	jl	.L415
	movslq	%edx,%r14
	cmpl	%r12d, -80(%rbp)
	leaq	-128(%rbp), %rbx
	movq	insn_gen_function(,%r14,8), %rcx
	movq	%rcx, -208(%rbp)
	jl	.L415
	movl	-72(%rbp), %edx
.L426:
	testl	%edx, %edx
	je	.L420
	subl	%r12d, 52(%rbx)
.L420:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L421
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L528:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L423
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L529:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*-208(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L425
	addl	%r12d, 52(%rbx)
.L425:
	movl	48(%rbx), %eax
	subl	%r12d, %eax
	cmpl	%r12d, %eax
	movl	%eax, 48(%rbx)
	jge	.L426
.L415:
	movl	mode_size(,%r15,4), %ebx
	cmpl	$1, %ebx
	jg	.L428
.L406:
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	je	.L431
	jmp	.L532
	.p2align 6,,7
.L423:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L529
.L421:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L528
.L403:
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, -120(%rbp)
	jmp	.L383
.L401:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, -96(%rbp)
	jmp	.L400
.L381:
	movl	$1, %edx
	jmp	.L380
.L379:
	movl	$1, %ecx
	jmp	.L378
.L377:
	movl	$1, %ecx
	jmp	.L376
.L548:
	addl	8(%r14), %ebx
	movq	-184(%rbp), %rdi
	jmp	.L526
.L547:
	movzwl	(%r15), %edx
	cmpl	$2, -232(%rbp)
	sete	%r11b
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	movzbl	%r11b, %r13d
	jbe	.L350
	cmpw	$46, %dx
	je	.L350
	cmpw	$47, %dx
	je	.L350
	cmpw	$49, %dx
	je	.L350
	cmpw	$113, %dx
	je	.L350
	cmpw	$51, %dx
	je	.L550
.L352:
	xorl	%eax, %eax
	movl	$4, %edi
	movq	%r15, %rsi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L551
.L354:
	movq	%rbx, %rdi
.L525:
	xorl	%eax, %eax
	call	anti_adjust_stack
	xorl	%ecx, %ecx
	movq	virtual_outgoing_args_rtx(%rip), %rsi
	testl	%ecx, %ecx
	je	.L355
	testl	%r13d, %r13d
	jne	.L552
.L355:
	movl	class_narrowest_mode+4(%rip), %edi
	jmp	.L527
.L552:
	movq	%rsi, %rdi
	xorl	%esi, %esi
	call	plus_constant_wide
	movq	%rax, %rsi
	jmp	.L355
.L551:
	movl	$46, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	call	gen_rtx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	movq	add_optab(%rip), %rsi
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movl	$4, %edi
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	movq	%rax, %rbx
	jmp	.L354
.L550:
	xorl	%edx, %edx
	movq	%r15, %rdi
	testl	%edx, %edx
	jne	.L352
	jmp	.L525
	.p2align 6,,7
.L350:
	movq	%r15, %rdi
	xorl	%esi, %esi
	call	plus_constant_wide
	movq	%rax, %rdi
	jmp	.L525
.L546:
	movq	-248(%rbp), %r12
	movl	%ebx, %esi
	movq	8(%r12), %rdi
	call	plus_constant_wide
	movl	$16, %esi
	movq	-248(%rbp), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %r12
	movl	-200(%rbp), %eax
	testl	%eax, %eax
	je	.L345
	cmpw	$46, 0
	je	.L553
	movl	$46, %edi
	xorl	%esi, %esi
	movl	%ebx, %edx
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movzbl	2, %edi
	movq	sub_optab(%rip), %rsi
	movq	%rax, %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
.L524:
	movq	%rax, %r15
	jmp	.L345
.L553:
	movl	8, %edx
	movl	$46, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	subl	%ebx, %edx
	call	gen_rtx
	jmp	.L524
	.p2align 6,,7
.L338:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L334
.L535:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L332
	movq	8(%r12), %r13
	cmpw	$59, (%r13)
	je	.L554
.L332:
	cmpl	$55, %eax
	jne	.L335
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L334
.L554:
	movq	8(%r13), %rbx
	movq	%rbx, 8(%r12)
	cmpq	$0, 16(%r13)
	je	.L334
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r12
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L334
	.p2align 6,,7
.L331:
	cmpq	$0, 16(%r12)
	jne	.L339
	movq	8(%r12), %r12
	jmp	.L334
.L339:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L340
	movq	%rsi, %r12
	jmp	.L334
.L340:
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L334
.L534:
	movq	%rsi, %rdi
	xorl	%esi, %esi
	call	plus_constant_wide
	movq	%rax, %rsi
	jmp	.L315
.L310:
	movq	%rcx, %rdi
	xorl	%esi, %esi
	call	plus_constant_wide
	jmp	.L523
.L301:
	xorl	%edi, %edi
	call	int_size_in_bytes
	jmp	.L521
	.p2align 6,,7
.L299:
	movl	-220(%rbp), %ebx
	jmp	.L300
	.p2align 6,,7
.L290:
	movl	$6, %eax
	jmp	.L520
	.p2align 6,,7
.L278:
	xorl	%eax, %eax
	jmp	.L279
.L533:
	xorl	%edi, %edi
	call	int_size_in_bytes
	leal	6(%rax), %edi
	addl	$3, %eax
	cmovs	%edi, %eax
	sarl	$2, %eax
	leal	-6(%rax,%rbx), %r9d
	testl	%r9d, %r9d
	jle	.L278
	movl	target_flags(%rip), %ecx
	jmp	.L287
	.p2align 6,,7
.L284:
	movl	-220(%rbp), %ebx
	jmp	.L285
	.p2align 6,,7
.L280:
	cmpl	$5, -220(%rbp)
	jmp	.L519
	.p2align 6,,7
.L273:
	movl	-220(%rbp), %edx
	addl	$8, %edx
	jmp	.L274
	.p2align 6,,7
.L263:
	xorl	%eax, %eax
	jmp	.L264
	.p2align 6,,7
.L265:
	cmpl	$5, -220(%rbp)
	jmp	.L518
	.p2align 6,,7
.L261:
	cmpw	$47, %dx
	jne	.L259
.L516:
	cmpb	$0, 2(%rdi)
	je	.L259
	jmp	.L260
.L532:
	xorl	%eax, %eax
	call	abort
.LFE4:
.Lfe4:
	.size	emit_library_call,.Lfe4-emit_library_call
	.align 2
	.p2align 4,,15
.globl force_operand
	.type	force_operand,@function
force_operand:
.LFB5:
	pushq	%r14
.LCFI26:
	movq	%rsi, %r14
	pushq	%r13
.LCFI27:
	xorl	%r13d, %r13d
	pushq	%r12
.LCFI28:
	pushq	%rbp
.LCFI29:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI30:
	subq	$16, %rsp
.LCFI31:
	testq	%rsi, %rsi
	je	.L557
	cmpw	$51, (%rsi)
	je	.L573
.L557:
	xorl	%ebx, %ebx
.L558:
	movl	(%rbp), %eax
	cmpw	$63, %ax
	je	.L574
	cmpw	$64, %ax
	je	.L575
	cmpw	$66, %ax
	je	.L576
.L560:
	testq	%r13, %r13
	je	.L567
	movq	16(%rbp), %r12
	movzwl	(%r12), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L568
	cmpw	$46, %dx
	je	.L568
	cmpw	$47, %dx
	je	.L568
	cmpw	$49, %dx
	je	.L568
	cmpw	$113, %dx
	je	.L568
	cmpw	$51, %dx
	je	.L577
.L569:
	xorl	%ebx, %ebx
	.p2align 4,,7
.L568:
	cmpq	sub_optab(%rip), %r13
	je	.L578
.L570:
	cmpq	add_optab(%rip), %r13
	je	.L579
.L571:
	movq	8(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	force_operand
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%rax, %rbx
	xorl	%eax, %eax
	call	force_operand
.L572:
	movzbl	2(%rbp), %edi
	movq	%rax, %rcx
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r14, %r8
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
.L556:
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 6,,7
.L579:
	cmpw	$46, (%r12)
	jne	.L571
	movq	8(%rbp), %rax
	cmpw	$63, (%rax)
	jne	.L571
	movq	8(%rax), %rdx
	cmpw	$51, (%rdx)
	jne	.L571
	movl	8(%rdx), %edx
	cmpl	$63, %edx
	jle	.L571
	cmpl	$67, %edx
	jg	.L571
	movzbl	2(%rbp), %edi
	movq	%r13, %rsi
	movq	%rbx, %r8
	movl	$3, (%rsp)
	movq	%r12, %rcx
	xorl	%r9d, %r9d
	movq	8(%rax), %rdx
	xorl	%eax, %eax
	call	expand_binop
	xorl	%esi, %esi
	movq	8(%rbp), %rdx
	movq	%rax, %rbx
	xorl	%eax, %eax
	movq	16(%rdx), %rdi
	call	force_operand
	jmp	.L572
	.p2align 6,,7
.L578:
	cmpw	$46, %dx
	jne	.L570
	movzbl	2(%rbp), %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	movq	add_optab(%rip), %r13
	call	negate_rtx
	movq	%rax, %r12
	jmp	.L570
.L577:
	cmpq	%rbx, %r12
	jne	.L568
	jmp	.L569
	.p2align 6,,7
.L567:
	movq	%rbp, %rax
	jmp	.L556
	.p2align 6,,7
.L576:
	movq	16(%rbp), %r13
	movzwl	(%r13), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L564
	cmpw	$46, %dx
	je	.L564
	cmpw	$47, %dx
	je	.L564
	cmpw	$49, %dx
	je	.L564
	cmpw	$113, %dx
	je	.L564
	cmpw	$51, %dx
	je	.L580
.L565:
	xorl	%ebx, %ebx
	.p2align 4,,7
.L564:
	movq	8(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	force_operand
	xorl	%esi, %esi
	movq	%r13, %rdi
	movzbl	2(%rbp), %ebx
	movq	%rax, %r12
	xorl	%eax, %eax
	call	force_operand
	addq	$16, %rsp
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	movq	%r14, %rcx
	movq	%rax, %rdx
	xorl	%eax, %eax
	movl	%ebx, %edi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	jmp	expand_mult
.L580:
	cmpq	%rbx, %r13
	jne	.L564
	jmp	.L565
	.p2align 6,,7
.L575:
	movq	sub_optab(%rip), %r13
	jmp	.L560
	.p2align 6,,7
.L574:
	movq	add_optab(%rip), %r13
	jmp	.L560
	.p2align 6,,7
.L573:
	movq	%rsi, %rbx
	jmp	.L558
.LFE5:
.Lfe5:
	.size	force_operand,.Lfe5-force_operand
	.section	.rodata.str1.32,"aMS",@progbits,1
	.align 32
.LC0:
	.string	"prior parameter's size depends on `%s'"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"aggregate value in COND_EXPR"
	.text
	.align 2
	.p2align 4,,15
.globl expand_expr
	.type	expand_expr,@function
expand_expr:
.LFB6:
	pushq	%r15
.LCFI32:
	movq	%rdi, %r15
	pushq	%r14
.LCFI33:
	movl	%edx, %r14d
	pushq	%r13
.LCFI34:
	movl	%ecx, %r13d
	pushq	%r12
.LCFI35:
	pushq	%rbp
.LCFI36:
	pushq	%rbx
.LCFI37:
	subq	$7640, %rsp
.LCFI38:
	movq	%rsi, 56(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 5424(%rsp)
	movzbl	17(%rdi), %ecx
	shrb	$6, %cl
	movl	%ecx, %edx
	andl	$1, %edx
	testq	%rsi, %rsi
	movl	%edx, 5416(%rsp)
	movzbl	44(%rdi), %eax
	movl	%eax, 5412(%rsp)
	movzbl	16(%r15), %r12d
	je	.L582
	cmpw	$51, (%rsi)
	je	.L15418
.L582:
	xorl	%ebx, %ebx
.L583:
	xorl	%esi, %esi
	movq	56(%rsp), %rbp
	cmpq	const0_rtx(%rip), %rbp
	sete	%sil
	testq	%rbx, %rbx
	movl	%esi, 5408(%rsp)
	je	.L584
	cmpl	$63, 8(%rbx)
	movl	$0, %r8d
	cmovle	%r8, %rbx
.L584:
	xorl	%eax, %eax
	call	preserve_subexpressions_p
	movl	5408(%rsp), %r10d
	testl	%eax, %eax
	movl	$0, %eax
	cmovne	%rax, %rbx
	testl	%r10d, %r10d
	je	.L586
	movq	%rax, 56(%rsp)
	xorl	%ebp, %ebp
.L586:
	movl	cse_not_expected(%rip), %eax
	testl	%eax, %eax
	jne	.L587
	cmpl	$16, 5412(%rsp)
	je	.L587
	cmpq	$0, 56(%rsp)
	je	.L587
	movq	56(%rsp), %rsi
	cmpw	$51, (%rsi)
	je	.L15419
.L588:
	movq	%rbx, 56(%rsp)
	.p2align 4,,7
.L587:
	movl	5408(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L589
	testb	$16, 17(%r15)
	je	.L589
	movl	5412(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L589
	cmpl	$16, 5412(%rsp)
	je	.L589
	movl	5412(%rsp), %edi
	call	gen_reg_rtx
	movl	%r13d, %ecx
	xorl	%edx, %edx
	movq	%rax, 56(%rsp)
	movq	%rax, %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	expand_expr
	cmpq	56(%rsp), %rax
	je	.L581
	movq	56(%rsp), %rdi
	movq	%rax, %rsi
.L15253:
	call	emit_move_insn
	.p2align 4,,7
.L581:
	movq	56(%rsp), %rax
	addq	$7640, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 6,,7
.L589:
	cmpl	$121, %r12d
	ja	.L13648
	mov	%r12d, %edx
	jmp	*.L13649(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L13649:
	.quad	.L13647
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L614
	.quad	.L616
	.quad	.L618
	.quad	.L618
	.quad	.L14867
	.quad	.L592
	.quad	.L615
	.quad	.L13648
	.quad	.L14867
	.quad	.L597
	.quad	.L14867
	.quad	.L13648
	.quad	.L2179
	.quad	.L2179
	.quad	.L2143
	.quad	.L2251
	.quad	.L15283
	.quad	.L2151
	.quad	.L1100
	.quad	.L3780
	.quad	.L10200
	.quad	.L8233
	.quad	.L8226
	.quad	.L3790
	.quad	.L1091
	.quad	.L2270
	.quad	.L13648
	.quad	.L2268
	.quad	.L3228
	.quad	.L3308
	.quad	.L3312
	.quad	.L3384
	.quad	.L3384
	.quad	.L3384
	.quad	.L3384
	.quad	.L3442
	.quad	.L3442
	.quad	.L3442
	.quad	.L3442
	.quad	.L3438
	.quad	.L3384
	.quad	.L3499
	.quad	.L15283
	.quad	.L15283
	.quad	.L15283
	.quad	.L3501
	.quad	.L13648
	.quad	.L3504
	.quad	.L3569
	.quad	.L3569
	.quad	.L3506
	.quad	.L3645
	.quad	.L3655
	.quad	.L3655
	.quad	.L3655
	.quad	.L3655
	.quad	.L3650
	.quad	.L3651
	.quad	.L3648
	.quad	.L13648
	.quad	.L3643
	.quad	.L3721
	.quad	.L3721
	.quad	.L3648
	.quad	.L3650
	.quad	.L3778
	.quad	.L3714
	.quad	.L3714
	.quad	.L3714
	.quad	.L3714
	.quad	.L3714
	.quad	.L3714
	.quad	.L2255
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L2276
	.quad	.L2276
	.quad	.L2276
	.quad	.L621
	.quad	.L1098
	.quad	.L13620
	.quad	.L2276
	.quad	.L15283
	.quad	.L13632
	.quad	.L13640
	.quad	.L13638
	.quad	.L13639
	.quad	.L13617
	.quad	.L13617
	.quad	.L13619
	.quad	.L13619
	.quad	.L13648
	.quad	.L13648
	.quad	.L13648
	.quad	.L1089
	.quad	.L1090
	.text
.L592:
	movq	%r15, %rdi
	call	decl_function_context
	cmpq	current_function_decl(%rip), %rax
	movq	%rax, %rbp
	je	.L593
	testq	%rax, %rax
	je	.L593
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	find_function_data
	movq	576(%rax), %rsi
	movq	568(%rax), %rdi
	movq	%rax, %r12
	xorl	%eax, %eax
	call	push_obstacks
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	label_rtx
	movq	400(%r12), %rcx
	xorl	%esi, %esi
	movq	%rax, %rdx
	movl	$2, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, 400(%r12)
	xorl	%eax, %eax
	call	pop_obstacks
.L594:
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	label_rtx
	movl	$4, %esi
	movl	$56, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	gen_rtx
	movl	$4, %esi
	movl	$55, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	gen_rtx
	cmpq	current_function_decl(%rip), %rbp
	movq	%rax, 56(%rsp)
	je	.L581
	testq	%rbp, %rbp
	je	.L581
	movq	8(%rax), %rbp
	orb	$8, 3(%rbp)
	jmp	.L581
.L593:
	cmpl	$3, %r13d
	jne	.L594
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	label_rtx
	movq	forced_labels(%rip), %rcx
	xorl	%esi, %esi
	movq	%rax, %rdx
	movl	$2, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, forced_labels(%rip)
	jmp	.L594
	.p2align 6,,7
.L13647:
	movq	const0_rtx(%rip), %rsi
	movq	%rsi, 56(%rsp)
	jmp	.L581
.L614:
	movl	24(%r15), %edi
	movl	28(%r15), %esi
	movl	5412(%rsp), %edx
	call	immed_double_const
	.p2align 4,,7
.L13703:
	movq	%rax, 56(%rsp)
	jmp	.L581
.L616:
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	immed_real_const
	jmp	.L13703
.L618:
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.L15420
.L619:
	cmpw	$55, (%rax)
	jne	.L13703
	cmpl	$2, %r13d
	je	.L13703
	cmpl	$3, %r13d
	je	.L13703
	decl	%r13d
	je	.L13703
	movq	8(%rax), %rsi
	movl	5412(%rsp), %edi
	xorl	%eax, %eax
	call	memory_address_p
	testl	%eax, %eax
	je	.L15421
	movq	24(%r15), %rax
	jmp	.L13703
.L15421:
	movq	24(%r15), %rcx
	movq	8(%rcx), %rdi
	call	copy_rtx
	movq	24(%r15), %rdi
.L15409:
	xorl	%esi, %esi
.L15285:
	movq	%rax, %rdx
.L15265:
	xorl	%eax, %eax
	call	change_address
	jmp	.L13703
.L15420:
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	output_constant_def
	movq	24(%r15), %rax
	jmp	.L619
.L615:
	movq	88(%r15), %rdi
	movq	56(%rsp), %rsi
.L15404:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.L15279:
	xorl	%eax, %eax
	call	expand_expr
	jmp	.L13703
.L597:
	cmpq	$0, 120(%r15)
	je	.L15422
.L602:
	orb	$1, 18(%r15)
	movq	%r15, %rdi
	call	decl_function_context
	testq	%rax, %rax
	je	.L14870
	cmpq	current_function_decl(%rip), %rax
	je	.L14870
	cmpq	inline_function_decl(%rip), %rax
	je	.L14870
	movq	120(%r15), %rcx
	cmpw	$55, (%rcx)
	je	.L15423
.L604:
	orb	$2, 53(%r15)
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	mark_addressable
	movq	120(%r15), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	8(%rax), %rdi
	cmpw	$55, (%rdi)
	je	.L15424
	movq	%r15, %rsi
	xorl	%eax, %eax
	call	fix_lexical_addr
.L607:
	movq	120(%r15), %rdi
.L15408:
	movl	5412(%rsp), %esi
	jmp	.L15285
.L15424:
	movq	8(%rdi), %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	call	fix_lexical_addr
	movl	$4, %esi
	movl	$55, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	gen_rtx
	jmp	.L607
.L15423:
	movq	8(%rcx), %rdi
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L603
	cmpw	$46, %dx
	je	.L603
	cmpw	$47, %dx
	je	.L603
	cmpw	$49, %dx
	je	.L603
	cmpw	$113, %dx
	jne	.L604
.L603:
	cmpw	$55, (%rcx)
	je	.L15425
.L608:
	cmpw	$55, (%rcx)
	je	.L15426
.L609:
	cmpw	$51, (%rcx)
	je	.L15427
.L3218:
	movq	%rcx, 56(%rsp)
	jmp	.L581
.L15427:
	movzbl	2(%rcx), %edx
	cmpl	5412(%rsp), %edx
	je	.L3218
	movzbl	52(%r15), %r9d
	cmpl	%edx, %r9d
	jne	.L15283
	movl	5412(%rsp), %esi
	movl	$53, %edi
	movq	%rcx, %rdx
.L15259:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	gen_rtx
	movzbl	5416(%rsp), %edi
	movq	%rax, 56(%rsp)
	movzbl	3(%rax), %r8d
	salb	$2, %dil
	orb	$16, %r8b
	andb	$-5, %r8b
	orb	%dil, %r8b
	movb	%r8b, 3(%rax)
	jmp	.L581
.L15426:
	cmpl	$2, %r13d
	je	.L609
	cmpl	$1, %r13d
	je	.L609
	cmpl	$3, %r13d
	je	.L609
	movzbl	52(%r15), %edi
	movq	8(%rcx), %rsi
	xorl	%eax, %eax
	call	memory_address_p
	testl	%eax, %eax
	je	.L14871
	movl	flag_force_addr(%rip), %esi
	testl	%esi, %esi
	je	.L14872
	movq	120(%r15), %rcx
	movq	8(%rcx), %r10
	movzwl	(%r10), %edx
	leal	-56(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L611
	cmpw	$46, %dx
	je	.L611
	cmpw	$47, %dx
	je	.L611
	cmpw	$49, %dx
	je	.L611
	cmpw	$113, %dx
	jne	.L609
.L611:
	movq	8(%rcx), %rdi
	call	copy_rtx
	movq	120(%r15), %rdi
	jmp	.L15409
.L14872:
	movq	120(%r15), %rcx
	jmp	.L609
.L14871:
	movq	120(%r15), %rcx
	jmp	.L611
.L15425:
	movq	8(%rcx), %rdx
	cmpw	$51, (%rdx)
	jne	.L608
	movzbl	2(%rcx), %esi
	movq	%rcx, %rdi
	jmp	.L15265
	.p2align 6,,7
.L14870:
	movq	120(%r15), %rcx
	jmp	.L603
.L15422:
	movq	%r15, %rdi
	movl	$.LC0, %esi
	xorl	%eax, %eax
	call	error_with_decl
	movslq	5412(%rsp),%r14
	movq	const_tiny_rtx(,%r14,8), %rax
	jmp	.L13703
.L14867:
	cmpq	$0, 120(%r15)
	jne	.L602
	jmp	.L15283
	.p2align 6,,7
.L2179:
	cmpl	$42, %r12d
	je	.L2180
	movq	32(%r15), %rax
	cmpb	$43, 16(%rax)
	je	.L15428
.L2180:
	movl	$0, 5560(%rsp)
	movl	$0, 2096(%rsp)
	xorl	%edx, %edx
	movzbl	16(%r15), %eax
	xorl	%ebp, %ebp
	leaq	5576(%rsp), %r12
	cmpb	$37, %al
	je	.L15429
	cmpb	$38, %al
	je	.L15430
	movq	8(%r15), %r9
	movzbl	44(%r9), %ecx
	movl	%ecx, 2096(%rsp)
	movslq	2096(%rsp),%r10
	movl	mode_size(,%r10,4), %eax
	sall	$3, %eax
	movl	%eax, 5580(%rsp)
	movq	8(%r15), %rdi
	movzbl	17(%rdi), %r8d
	shrb	$6, %r8b
	movl	%r8d, %r11d
	andl	$1, %r11d
	movl	%r11d, 5420(%rsp)
.L2189:
	testq	%rdx, %rdx
	je	.L2192
	cmpb	$25, 16(%rdx)
	je	.L2193
	movl	$16, 2096(%rsp)
	movl	$-1, 5580(%rsp)
.L2192:
	movl	$0, (%r12)
	.p2align 4,,7
.L2220:
	movzbl	16(%r15), %edx
	cmpb	$39, %dl
	je	.L15431
.L2198:
	leal	-37(%rdx), %ebx
	cmpb	$1, %bl
	ja	.L2199
	cmpb	$37, %dl
	je	.L15432
	movq	48(%r15), %rbx
.L2201:
	movzbl	16(%rbx), %eax
	cmpb	$53, %al
	je	.L15433
	cmpb	$25, %al
	je	.L15434
.L2210:
	testq	%rbp, %rbp
	je	.L2212
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rbp, %rsi
	movl	$53, %edi
.L15024:
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, %rbp
.L2214:
	testb	$16, 17(%r15)
	je	.L2219
	movl	$1, 5560(%rsp)
.L2219:
	movq	32(%r15), %r15
	jmp	.L2220
	.p2align 6,,7
.L2212:
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	jmp	.L15024
.L15434:
	movl	24(%rbx), %eax
.L15025:
	addl	%eax, (%r12)
	jmp	.L2214
.L15433:
	movq	32(%rbx), %rsi
	cmpb	$25, 16(%rsi)
	je	.L15435
	movq	40(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L15283
	movq	%rsi, %rbx
.L2204:
	movl	24(%rax), %eax
	addl	%eax, (%r12)
	jmp	.L2210
.L15435:
	movq	40(%rbx), %rbx
	movq	%rsi, %rax
	jmp	.L2204
.L15432:
	movq	40(%r15), %rdx
	movq	72(%rdx), %rbx
	jmp	.L2201
	.p2align 6,,7
.L2199:
	cmpb	$42, %dl
	je	.L15436
.L2215:
	cmpb	$103, %dl
	je	.L2214
	leal	-101(%rdx), %r11d
	cmpb	$1, %r11b
	ja	.L2196
	movq	32(%r15), %rcx
	movq	8(%r15), %rdi
	movq	8(%rcx), %r10
	movzbl	44(%r10), %r8d
	cmpb	%r8b, 44(%rdi)
	je	.L2214
.L2196:
	movl	2096(%rsp), %eax
	testl	%eax, %eax
	jne	.L2221
	movl	(%r12), %eax
	movl	5580(%rsp), %edi
	cltd
	idivl	%edi
	testl	%edx, %edx
	movl	%edx, %ebx
	je	.L15437
.L2221:
	movl	2096(%rsp), %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$1, %ecx
	movq	%rbp, 5568(%rsp)
	movl	%eax, 5564(%rsp)
	xorl	%eax, %eax
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, %rbx
	leal	-56(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L2225
	cmpw	$46, %dx
	je	.L2225
	cmpw	$47, %dx
	je	.L2225
	cmpw	$49, %dx
	je	.L2225
	cmpw	$113, %dx
	je	.L2225
.L2224:
	movq	5568(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.L15438
.L2229:
	cmpw	$55, (%rbx)
	je	.L15439
.L2231:
	movl	5564(%rsp), %eax
	testl	%eax, %eax
	je	.L2233
	cmpl	$16, %eax
	je	.L2234
	cltq
	cmpb	$0, direct_load(%rax)
	jne	.L2234
	cmpl	$2, %r13d
	je	.L2234
	cmpl	$1, %r13d
	je	.L2234
	cmpl	$3, %r13d
	je	.L2234
.L2233:
	movl	5412(%rsp), %ebp
	cmpl	$16, %ebp
	je	.L15440
.L2236:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	validize_mem
	movq	8(%r15), %rdi
	movq	%rax, %r13
	call	int_size_in_bytes
	movl	%ebp, %r9d
	movq	56(%rsp), %r8
	movl	%ebp, (%rsp)
	movl	5580(%rsp), %esi
	movl	5576(%rsp), %edx
	movq	8(%r15), %r14
	movl	5420(%rsp), %ecx
	movq	%r13, %rdi
	movl	48(%r14), %r15d
	movl	%eax, 16(%rsp)
	xorl	%eax, %eax
	shrl	$3, %r15d
	movl	%r15d, 8(%rsp)
	call	extract_bit_field
	cmpl	$16, 5412(%rsp)
	movq	%rax, 56(%rsp)
	jne	.L581
	movl	5580(%rsp), %esi
	movl	%ebp, %edi
	cmpl	$-1, %esi
	leal	7(%rsi), %ebx
	cmovle	%ebx, %esi
	xorl	%edx, %edx
	sarl	$3, %esi
	call	assign_stack_temp
	movq	56(%rsp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, 56(%rsp)
	movb	$16, 2(%rax)
	jmp	.L581
.L15440:
	movl	5580(%rsp), %edi
	xorl	%eax, %eax
	movl	$1, %esi
	movl	$1, %edx
	call	mode_for_size
	cmpl	$16, %eax
	movl	%eax, %ebp
	jne	.L2236
	jmp	.L15283
	.p2align 6,,7
.L2234:
	movzwl	(%rbx), %eax
	cmpw	$51, %ax
	je	.L2233
	cmpw	$53, %ax
	je	.L2233
	leal	-1(%r13), %edx
	cmpl	$2, %edx
	ja	.L2240
	movl	5576(%rsp), %esi
	movq	8(%rbx), %rdi
	cmpl	$-1, %esi
	leal	7(%rsi), %r11d
	cmovle	%r11d, %esi
	sarl	$3, %esi
	call	plus_constant_wide
	movl	$55, %edi
	movl	5564(%rsp), %esi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	gen_rtx
.L15027:
	movzbl	3(%rax), %esi
	movq	%rax, %rbx
	orb	$16, %sil
	movl	%esi, %edi
	movb	%sil, 3(%rax)
	andb	$-9, %sil
	shrb	$3, %dil
	andl	$1, %edi
	orl	5560(%rsp), %edi
	andb	$1, %dil
	salb	$3, %dil
	orb	%dil, %sil
	movb	%sil, 3(%rax)
	movl	5564(%rsp), %eax
	cmpl	%eax, 5412(%rsp)
	je	.L15258
	cmpl	$16, %eax
	je	.L15258
	cmpl	%r14d, %eax
	je	.L15258
	cmpq	$0, 56(%rsp)
	je	.L15441
.L2248:
	movq	56(%rsp), %rdi
	movl	5420(%rsp), %edx
	movq	%rbx, %rsi
.L15250:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L581
.L15441:
	testl	%r14d, %r14d
	cmove	5412(%rsp), %r14d
	movl	%r14d, %edi
	movl	%r14d, 5412(%rsp)
	call	gen_reg_rtx
	movq	%rax, 56(%rsp)
	jmp	.L2248
	.p2align 6,,7
.L15258:
	movq	%rbx, 56(%rsp)
	jmp	.L581
.L2240:
	movl	5576(%rsp), %esi
	movq	8(%rbx), %rdi
	cmpl	$-1, %esi
	leal	7(%rsi), %r8d
	cmovle	%r8d, %esi
	sarl	$3, %esi
	call	plus_constant_wide
	movq	%rbx, %rdi
	movl	5564(%rsp), %esi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15027
.L15439:
	movl	5560(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L2231
	testb	$8, 3(%rbx)
	jne	.L2231
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	orb	$8, 3(%rax)
	jmp	.L2231
.L15438:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	cmpw	$55, (%rbx)
	movq	%rax, %rsi
	jne	.L15283
	movl	$4, %edi
	call	force_reg
	movq	8(%rbx), %rdx
	movl	$4, %esi
	movq	%rax, %rcx
	movl	$63, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %rbx
	jmp	.L2229
.L2225:
	movq	8(%r15), %rbp
	cmpw	$47, %dx
	movzbl	44(%rbp), %edi
	je	.L15442
.L2227:
	movq	%rbx, %rsi
	call	force_reg
.L15026:
	movq	%rax, %rbx
	jmp	.L2224
.L15442:
	cmpb	$0, 2(%rbx)
	je	.L2227
	movq	%rbx, %rsi
	call	force_const_mem
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	validize_mem
	jmp	.L15026
.L15437:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	mode_for_size
	cmpl	$16, %eax
	cmovne	%eax, %ebx
	movl	%ebx, 2096(%rsp)
	jmp	.L2221
	.p2align 6,,7
.L15436:
	movq	40(%r15), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L2215
	movq	8(%r15), %rsi
	movq	32(%rsi), %rax
	cmpb	$25, 16(%rax)
	jne	.L2215
	movl	24(%rax), %eax
	imull	24(%rcx), %eax
	jmp	.L15025
	.p2align 6,,7
.L15431:
	movl	flag_volatile(%rip), %eax
	testl	%eax, %eax
	je	.L2198
	movl	$1, 5560(%rsp)
	movzbl	16(%r15), %edx
	jmp	.L2198
.L2193:
	movl	24(%rdx), %eax
	movl	%eax, 5580(%rsp)
	jmp	.L2192
.L15430:
	movzbl	17(%r15), %esi
	movq	40(%r15), %rdx
	shrb	$6, %sil
	movl	%esi, %ebx
	andl	$1, %ebx
	movl	%ebx, 5420(%rsp)
	jmp	.L2189
.L15429:
	movq	40(%r15), %rax
	testb	$16, 53(%rax)
	movq	40(%rax), %rdx
	jne	.L2188
	movzbl	52(%rax), %r10d
	movl	%r10d, 2096(%rsp)
.L2188:
	movzbl	17(%rax), %r9d
	shrb	$6, %r9b
	movl	%r9d, %ecx
	andl	$1, %ecx
	movl	%ecx, 5420(%rsp)
	jmp	.L2189
.L15428:
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L2180
	movq	40(%r15), %r8
.L2186:
	cmpq	%r8, 24(%rax)
	je	.L14914
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2186
	jmp	.L2180
.L14914:
	movq	32(%rax), %rdi
.L15405:
	movq	56(%rsp), %rsi
	movl	%r14d, %edx
.L15403:
	movl	%r13d, %ecx
	jmp	.L15279
.L2143:
	movq	32(%r15), %rbx
	cmpb	$104, 16(%rbx)
	je	.L15443
.L2144:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	5412(%rsp), %edi
	movq	%rax, %rsi
	call	memory_address
.L2145:
	movl	5412(%rsp), %esi
	movq	%rax, %rdx
	movl	$55, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, 56(%rsp)
	movq	32(%r15), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$53, %al
	je	.L2147
	cmpb	$104, %al
	je	.L15444
.L2148:
	movq	8(%r15), %r8
	movzbl	16(%r8), %eax
	cmpb	$18, %al
	je	.L2147
	cmpb	$21, %al
	je	.L2147
	cmpb	$22, %al
	je	.L2147
	cmpb	$106, 16(%rbx)
	je	.L15445
.L15417:
	xorl	%eax, %eax
	testb	$16, 17(%r15)
	jne	.L2253
	movl	flag_volatile(%rip), %r10d
	testl	%r10d, %r10d
	je	.L2252
.L2253:
	movl	$1, %eax
.L2252:
	movq	56(%rsp), %rcx
	leal	0(,%rax,8), %r9d
	movzbl	3(%rcx), %ebp
	andb	$-9, %bpl
	orb	%r9b, %bpl
	movb	%bpl, 3(%rcx)
	jmp	.L581
.L15445:
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.L15417
	movq	8(%rax), %rdi
	movzbl	16(%rdi), %eax
	cmpb	$18, %al
	je	.L2147
	cmpb	$21, %al
	je	.L2147
	cmpb	$22, %al
	jne	.L15417
.L2147:
	movq	56(%rsp), %rax
	orb	$16, 3(%rax)
	jmp	.L15417
.L15444:
	movq	32(%rdx), %rcx
	cmpb	$53, 16(%rcx)
	jne	.L2148
	jmp	.L2147
.L15443:
	cmpq	$0, 48(%rbx)
	jne	.L2144
	movq	32(%rbx), %rdi
	cmpb	$0, 16(%rdi)
	je	.L2144
	movq	8(%rbx), %rsi
	cmpb	$4, 44(%rsi)
	jne	.L2144
	movq	8(%rdi), %r11
	cmpb	$4, 44(%r11)
	jne	.L2144
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movl	5412(%rsp), %edi
	movq	%rax, %rsi
	call	memory_address
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	copy_all_regs
	movq	%rax, 48(%rbx)
	jmp	.L2145
	.p2align 6,,7
.L2251:
	movq	32(%r15), %rsi
	movl	$106, %edi
	xorl	%edx, %edx
	call	build_unary_op
	movq	40(%r15), %rcx
	movq	5424(%rsp), %rsi
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	call	build
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movl	5412(%rsp), %edi
	movq	%rax, %rsi
	call	memory_address
	movl	5412(%rsp), %esi
	movl	$55, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, 56(%rsp)
	orb	$16, 3(%rax)
	jmp	.L15417
.L2151:
	movq	40(%r15), %r8
	cmpb	$25, 16(%r8)
	je	.L15446
.L2153:
	movzbl	17(%r15), %edx
	movq	5424(%rsp), %rdi
	movl	%edx, %r9d
	shrb	$4, %dl
	shrb	$5, %r9b
	andl	$1, %edx
	movl	%r9d, %esi
	andl	$1, %esi
	call	build_type_variant
	movq	%rax, %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	32(%r15), %rdx
	movl	$106, %edi
	movq	%rax, %rsi
	call	build1
	movq	40(%r15), %rbx
	movq	%rax, %rbp
	movq	8(%rbx), %r10
	cmpb	$32, 45(%r10)
	je	.L2154
	movl	$32, %edi
	xorl	%esi, %esi
	call	type_for_size
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	convert
	movq	%rax, %rbx
.L2154:
	andb	$-2, 17(%rbp)
	movq	5424(%rsp), %rdi
	call	size_in_bytes
	movq	%rbx, %rdx
	movq	56(%r12), %rsi
	movq	%rax, %rcx
	movl	$55, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	%rbp, %rdx
	movq	56(%r12), %rsi
	movq	%rax, %rcx
	movl	$53, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	5424(%rsp), %rsi
	movl	$39, %edi
	movq	%rax, %rdx
	call	build1
	movzbl	17(%r15), %r11d
	movzbl	17(%rax), %ebx
	movq	%rax, %rdi
	andb	$1, %r11b
	andb	$-2, %bl
	orb	%r11b, %bl
	movb	%bl, 17(%rax)
	andb	$-17, %bl
	movzbl	17(%r15), %esi
	andb	$16, %sil
	orb	%sil, %bl
	movb	%bl, 17(%rax)
	andb	$-33, %bl
	movzbl	17(%r15), %r12d
	andb	$32, %r12b
	orb	%r12b, %bl
	movb	%bl, 17(%rax)
	jmp	.L15405
.L15446:
	movq	5424(%rsp), %rdx
	movq	32(%rdx), %rbp
	cmpb	$25, 16(%rbp)
	jne	.L2153
	movq	32(%r15), %rbp
	cmpb	$28, 16(%rbp)
	movq	%rbp, %rcx
	je	.L15447
.L2155:
	movzwl	16(%rcx), %eax
	andl	$511, %eax
	cmpw	$43, %ax
	je	.L15448
	movzbl	17(%rcx), %ebx
	andb	$33, %bl
	cmpb	$32, %bl
	jne	.L2179
	movq	8(%rcx), %rsi
	cmpb	$18, 16(%rsi)
	jne	.L2179
	cmpb	$33, 16(%rcx)
	jne	.L2179
	movq	88(%rcx), %rax
	testq	%rax, %rax
	je	.L2179
	movl	optimize(%rip), %r11d
	testl	%r11d, %r11d
	jle	.L2179
	cmpb	$0, 16(%rax)
	je	.L2179
	movq	40(%r15), %rdi
	call	fold
	cmpb	$25, 16(%rax)
	jne	.L2179
	movl	28(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L2179
	movq	32(%r15), %rdi
	movl	24(%rax), %ecx
	movq	88(%rdi), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$43, %al
	je	.L15449
	cmpb	$28, %al
	jne	.L2179
	cmpl	32(%rdx), %ecx
	jge	.L2179
	movslq	%ecx,%r14
	movl	$46, %edi
	xorl	%esi, %esi
	addq	40(%rdx), %r14
	xorl	%eax, %eax
	movsbl	(%r14),%edx
	call	gen_rtx
	xorl	%edx, %edx
	movl	5412(%rsp), %edi
	movq	%rax, %rsi
.L15271:
	xorl	%eax, %eax
	call	convert_to_mode
	jmp	.L13703
.L15449:
	movq	40(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L2179
	leal	-1(%rcx), %eax
	cmpl	$-1, %eax
	je	.L2171
.L2174:
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L2179
	decl	%eax
	cmpl	$-1, %eax
	jne	.L2174
.L2171:
	testq	%rdx, %rdx
	je	.L2179
	movq	32(%rdx), %rdi
	call	fold
.L15407:
	movq	%rax, %rdi
	jmp	.L15405
	.p2align 6,,7
.L15448:
	movq	40(%r15), %rdi
	call	fold
	cmpb	$25, 16(%rax)
	jne	.L2179
	movl	28(%rax), %ebp
	testl	%ebp, %ebp
	jne	.L2179
	movq	32(%r15), %r9
	movl	24(%rax), %ecx
	movq	40(%r9), %rdx
	testq	%rdx, %rdx
	je	.L2179
	leal	-1(%rcx), %eax
	cmpl	$-1, %eax
	je	.L2171
.L2164:
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L2179
	decl	%eax
	cmpl	$-1, %eax
	jne	.L2164
	jmp	.L2171
	.p2align 6,,7
.L15447:
	movl	28(%r8), %eax
	testl	%eax, %eax
	jne	.L2155
	movl	24(%r8), %edx
	cmpl	32(%rbp), %edx
	jge	.L2155
	movq	8(%rbp), %r8
	movq	8(%r8), %rax
	cmpq	integer_type_node(%rip), %rax
	je	.L15450
	cmpq	char_type_node(%rip), %rax
	jne	.L2155
	movslq	%edx,%r10
	xorl	%esi, %esi
	addq	40(%rbp), %r10
	movsbl	(%r10),%edi
	call	build_int_2_wide
	movq	integer_type_node(%rip), %rdi
	movq	%rax, %rsi
	movq	%rdi, 8(%rax)
	movq	8(%rbp), %rdx
	movq	8(%rdx), %rdi
	call	convert
	jmp	.L15407
.L15450:
	movslq	%edx,%rcx
	xorl	%esi, %esi
	salq	$2, %rcx
	addq	40(%rbp), %rcx
	movl	(%rcx), %edi
	call	build_int_2_wide
	movq	integer_type_node(%rip), %r15
	movq	%rax, %rdi
	movq	%r15, 8(%rax)
	jmp	.L15405
	.p2align 6,,7
.L1100:
	testb	$4, 18(%r15)
	je	.L1101
	cmpl	$16, 5412(%rsp)
	je	.L1102
	testb	$8, 17(%r15)
	je	.L1101
.L1102:
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	output_constant_def
	leal	-1(%r13), %ecx
	cmpl	$2, %ecx
	movq	%rax, 56(%rsp)
	jbe	.L581
	movq	56(%rsp), %rax
	movzbl	2(%rax), %edi
	movq	8(%rax), %rsi
	xorl	%eax, %eax
	call	memory_address_p
	testl	%eax, %eax
	jne	.L581
	movq	56(%rsp), %rdi
	xorl	%esi, %esi
	movq	8(%rdi), %rdx
	jmp	.L15265
	.p2align 6,,7
.L1101:
	movl	5408(%rsp), %eax
	testl	%eax, %eax
	je	.L1104
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	jne	.L1109
.L13752:
	movq	const0_rtx(%rip), %rbx
	jmp	.L15258
.L1109:
	movq	32(%rbx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1109
	jmp	.L13752
.L1104:
	cmpq	$0, 56(%rsp)
	je	.L1112
	movq	56(%rsp), %rbp
	xorl	%r12d, %r12d
	movl	(%rbp), %eax
	cmpw	$53, %ax
	je	.L15451
	movl	%eax, %ecx
.L1115:
	cmpw	$55, %cx
	je	.L15452
.L1117:
	movzbl	16(%r15), %edx
	movzbl	%dl, %r14d 
	salq	$3, %r14
	addq	tree_code_type(%rip), %r14
	movq	(%r14), %rsi
	movsbl	(%rsi),%eax
	subl	$49, %eax
	cmpl	$71, %eax
	ja	.L1119
	mov	%eax, %r13d
	jmp	*.L1158(,%r13,8)
	.section	.rodata
	.align 8
	.align 4
.L1158:
	.quad	.L1128
	.quad	.L1130
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1130
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1164
	.quad	.L1120
	.quad	.L1133
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1133
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1119
	.quad	.L1122
	.text
.L1120:
	movq	120(%r15), %r12
.L1119:
	movl	$1, %ebx
.L15005:
	testq	%r12, %r12
	je	.L1114
.L14852:
	cmpw	$53, (%r12)
	je	.L15453
.L1161:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r12, %rsi
	call	rtx_equal_p
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.L1114
	cmpw	$55, (%rbp)
	je	.L15454
.L1164:
	movl	$1, %ebx
.L1114:
	testl	%ebx, %ebx
	jne	.L1111
.L1112:
	cmpl	$16, 5412(%rsp)
	je	.L1165
	testb	$8, 17(%r15)
	je	.L15455
.L1165:
	movq	5424(%rsp), %rdi
	call	int_size_in_bytes
	xorl	%edx, %edx
	movl	5412(%rsp), %edi
	movl	%eax, %esi
	call	assign_stack_temp
	cmpq	$0, 56(%rsp)
	movq	%rax, %r10
	je	.L1167
	movq	56(%rsp), %r9
	movzbl	3(%rax), %ebp
	movzbl	3(%r9), %r12d
	andb	$-17, %bpl
	andb	$16, %r12b
	orb	%r12b, %bpl
	movb	%bpl, 3(%rax)
.L1167:
	movq	%r10, 56(%rsp)
.L1111:
	movq	8(%r15), %r11
	movq	%r11, 5256(%rsp)
	movzbl	16(%r11), %edx
	leal	-21(%rdx), %edi
	cmpb	$1, %dil
	ja	.L1168
	cmpb	$22, %dl
	je	.L1173
	movq	56(%rsp), %rax
	cmpw	$51, (%rax)
	je	.L15456
.L1171:
	movq	40(%r15), %rdi
	call	list_length
	movq	5256(%rsp), %rcx
	movl	%eax, %r14d
	movq	24(%rcx), %rdi
	call	list_length
	cmpl	%eax, %r14d
	je	.L1173
	movq	5256(%rsp), %rdi
	call	int_size_in_bytes
	movq	56(%rsp), %r10
	cmpb	$16, 2(%r10)
	je	.L15457
	movq	56(%rsp), %rdi
.L15007:
	movq	const0_rtx(%rip), %rsi
	call	emit_move_insn
.L1170:
	movq	40(%r15), %r13
	testq	%r13, %r13
	movq	%r13, 2248(%rsp)
	je	.L581
.L1656:
	movq	2248(%rsp), %r15
	movq	24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L1180
	movq	40(%rdx), %rbx
	testb	$16, 53(%rdx)
	movl	$0, %eax
	movl	24(%rbx), %ebp
	movzbl	52(%rdx), %ebx
	cmovne	%eax, %ebx
	movq	72(%rdx), %rax
	cmpb	$25, 16(%rax)
	jne	.L15283
	movq	2248(%rsp), %r12
	movq	5256(%rsp), %rdx
	movl	24(%rax), %r14d
	movq	32(%r12), %r8
	movq	%rdx, %rdi
	movq	%r8, 5248(%rsp)
	movl	48(%rdx), %r12d
	call	int_size_in_bytes
	movl	%eax, %r15d
	movl	$0, 2244(%rsp)
	shrl	$3, %r12d
	cmpl	$31, %ebp
	jg	.L1185
	movl	$1, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 2244(%rsp)
.L1185:
	cmpl	$16, %ebx
	je	.L15458
.L1186:
	testl	%ebx, %ebx
	je	.L1191
	cmpl	$16, %ebx
	je	.L1192
	movslq	%ebx,%r10
	cmpb	$0, direct_store(%r10)
	je	.L1191
.L1192:
	movq	56(%rsp), %rsi
	movzwl	(%rsi), %eax
	cmpw	$51, %ax
	je	.L1191
	cmpw	$53, %ax
	je	.L1191
	movq	56(%rsp), %r12
	xorl	%r13d, %r13d
	testl	%r13d, %r13d
	movq	8(%r12), %rdi
	je	.L1198
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L1198
	leal	-56(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L1198
	cmpw	$46, %dx
	je	.L1198
	cmpw	$47, %dx
	je	.L1198
	cmpw	$49, %dx
	je	.L1198
	cmpw	$113, %dx
	je	.L1198
	cmpw	$63, %dx
	je	.L15459
.L1199:
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, %rdi
.L1198:
	cmpl	$-1, %r14d
	leal	7(%r14), %r11d
	cmovle	%r11d, %r14d
	sarl	$3, %r14d
	movl	%r14d, %esi
	call	plus_constant_wide
	movl	%ebx, %esi
	movq	56(%rsp), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	xorl	%edx, %edx
	orb	$16, 3(%rax)
	movq	%rax, %r12
	testl	%edx, %edx
	movq	5248(%rsp), %rcx
	setne	%dil
	xorl	%r14d, %r14d
	movzbl	16(%rcx), %eax
	movzbl	%dil, %ebp
	cmpb	$44, %al
	je	.L15460
	cmpb	$48, %al
	je	.L15461
.L1210:
	testl	%ebp, %ebp
	je	.L1237
	cmpw	$55, (%r12)
	je	.L15462
.L1237:
	movzwl	(%r12), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L1245
	mov	%eax, %r8d
	jmp	*.L1254(,%r8,8)
	.section	.rodata
	.align 8
	.align 4
.L1254:
	.quad	.L1248
	.quad	.L1245
	.quad	.L1245
	.quad	.L1245
	.quad	.L1253
	.quad	.L1245
	.quad	.L1245
	.quad	.L1245
	.quad	.L1251
	.quad	.L1251
	.quad	.L1245
	.quad	.L1251
	.text
.L1248:
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L1247:
	testl	%ebx, %ebx
	je	.L1244
	movzbl	2(%r12), %eax
	cmpb	$16, %al
	je	.L1256
	testb	%al, %al
	jne	.L15463
.L1256:
	movzbl	2(%r12), %edx
	movq	5248(%rsp), %rdi
	xorl	%esi, %esi
.L15008:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15289:
	movq	%rax, %r13
.L1263:
	movl	$1, %r14d
.L1209:
	cmpq	%r12, %r13
	je	.L1180
	movq	5248(%rsp), %rdi
	cmpb	$0, 16(%rdi)
	je	.L1180
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1265
	cmpl	$55, %eax
	je	.L15464
.L1269:
	cmpl	$63, %eax
	je	.L1272
	cmpl	$66, %eax
	je	.L1272
.L1268:
	movzbl	2(%r13), %eax
	movzbl	2(%r12), %ecx
	cmpb	%cl, %al
	je	.L1275
	testb	%al, %al
	je	.L1275
	movq	5248(%rsp), %rax
	movq	8(%rax), %rsi
	movzbl	17(%rsi), %r10d
	shrb	$6, %r10b
	movl	%r10d, %edx
	andl	$1, %edx
	testl	%r14d, %r14d
	je	.L1276
	movzbl	%cl, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%r12, %rdi
	movq	%rax, %rsi
.L15014:
	call	emit_move_insn
.L1180:
	movq	2248(%rsp), %rcx
	movq	(%rcx), %r13
	testq	%r13, %r13
	movq	%r13, 2248(%rsp)
	jne	.L1656
	jmp	.L581
.L1276:
	movq	%r12, %rdi
	movq	%r13, %rsi
.L15015:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L1180
.L1275:
	cmpb	$16, %al
	je	.L15465
.L1531:
	movq	%r12, %rdi
	movq	%r13, %rsi
	jmp	.L15014
.L15465:
	movq	5248(%rsp), %rsi
	cmpb	$28, 16(%rsi)
	je	.L15466
	cmpb	$16, %al
	jne	.L1531
	movq	5248(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	5248(%rsp), %r9
	movq	%rax, %r14
	movq	8(%r9), %rsi
	movl	48(%rsi), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%r12)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1534
	cmpl	$55, %eax
	je	.L15467
.L1538:
	cmpl	$63, %eax
	je	.L1541
	cmpl	$66, %eax
	je	.L1541
.L1537:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L1544
	cmpl	$55, %eax
	je	.L15468
.L1548:
	cmpl	$63, %eax
	je	.L1551
	cmpl	$66, %eax
	je	.L1551
.L1547:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L1554
	cmpl	$55, %eax
	je	.L15469
.L1558:
	cmpl	$63, %eax
	je	.L1561
	cmpl	$66, %eax
	je	.L1561
.L1557:
	cmpw	$55, (%r12)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	testq	%r14, %r14
	je	.L15283
	cmpw	$46, (%r14)
	je	.L15470
.L1567:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 5160(%rsp)
	testl	%ebp, %ebp
	je	.L13798
.L1653:
	movslq	%ebp,%rdx
	movq	%rdx, %rax
	movq	%rdx, 5152(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L1641
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L1645
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L1641
.L1645:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %r15
	movq	%rdi, 5144(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15471
.L1646:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15472
.L1647:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L1648
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	5160(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L1641
.L1648:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, 5136(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15473
.L1649:
	movq	5144(%rsp), %rbp
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	5160(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14910
	movq	5136(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L1641:
	movq	5152(%rsp), %r8
	movl	mode_wider_mode(,%r8,4), %ebp
	testl	%ebp, %ebp
	jne	.L1653
.L13798:
	movl	$4, %edi
	movq	%r14, %rsi
.L15013:
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r13), %r14
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, (%rsp)
	movq	8(%r12), %r8
	call	emit_library_call
	jmp	.L1180
.L14910:
	call	emit_insn
	jmp	.L1180
.L15473:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L1649
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L1649
.L15472:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1641
	jmp	.L1647
.L15471:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1641
	jmp	.L1646
.L15470:
	movl	8(%r14), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L1581:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13789
.L1577:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L1577
.L13789:
	testl	%ecx, %ecx
	je	.L1570
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L1579
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L1579
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L1579:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1581
.L1570:
	decl	%r9d
	jg	.L1567
	movq	8(%r12), %rbx
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movq	%r13, 7400(%rsp)
	movl	$0, 7428(%rsp)
	movq	%r12, 7376(%rsp)
	movl	%r10d, %r14d
	movl	$9, 2180(%rsp)
	movq	%rbx, 7384(%rsp)
	movq	%rdi, 7408(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L1584
	cmpw	$88, %dx
	je	.L1584
	cmpw	$87, %dx
	je	.L1584
.L1583:
	movl	%ecx, 7392(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L1586
	cmpw	$88, %dx
	je	.L1586
	cmpw	$87, %dx
	je	.L1586
.L1585:
	movl	%ecx, 7416(%rsp)
	movl	$0, 7420(%rsp)
	movl	$0, 7396(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L1588
	cmpw	$87, %ax
	je	.L1588
.L1587:
	testl	%edx, %edx
	movl	%edx, 7432(%rsp)
	je	.L1589
	movl	%r10d, 7428(%rsp)
.L1589:
	movl	7416(%rsp), %eax
	movl	%r10d, 7424(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L1591
	movl	7392(%rsp), %eax
	testl	%eax, %eax
	jne	.L1590
.L1591:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	%r15d, %ebp
.L1605:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13792
.L1601:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L1601
.L13792:
	testl	%ecx, %ecx
	je	.L1594
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L1603
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L1603
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L1603:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1605
.L1594:
	cmpl	$2, %r9d
	jle	.L1590
	testl	%r10d, %r10d
	jne	.L1607
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L1608
	cmpw	$46, %dx
	je	.L1608
	cmpw	$47, %dx
	je	.L1608
	cmpw	$49, %dx
	je	.L1608
	cmpw	$113, %dx
	je	.L1608
.L1607:
	movl	7392(%rsp), %eax
	testl	%eax, %eax
	jne	.L1590
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L1610
	cmpw	$46, %dx
	je	.L1610
	cmpw	$47, %dx
	je	.L1610
	cmpw	$49, %dx
	je	.L1610
	cmpw	$113, %dx
	je	.L1610
.L1590:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, 2180(%rsp)
	jle	.L1613
.L1635:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L13795
.L1620:
	movslq	%edx,%rbx
	movl	2180(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L1620
.L13795:
	testl	%r12d, %r12d
	je	.L1613
	movslq	%r12d,%r13
	movq	%r13, %rsi
	salq	$4, %rsi
	addq	mov_optab(%rip), %rsi
	movl	8(%rsi), %edx
	cmpl	$210, %edx
	je	.L1622
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L1622
	movslq	%edx,%r11
	cmpl	%ebp, 7424(%rsp)
	leaq	7376(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %r9
	movq	%r9, 5168(%rsp)
	jl	.L1622
	movl	7432(%rsp), %edx
.L1633:
	testl	%edx, %edx
	je	.L1627
	subl	%ebp, 52(%rbx)
.L1627:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L1628
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15012:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L1630
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L1631:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*5168(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L1632
	addl	%ebp, 52(%rbx)
.L1632:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L1633
.L1622:
	movl	mode_size(,%r13,4), %r10d
	movl	%r10d, 2180(%rsp)
	decl	%r10d
	jg	.L1635
.L1613:
	movl	7424(%rsp), %r15d
	testl	%r15d, %r15d
.L15372:
	je	.L1180
	jmp	.L15283
.L1630:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L1631
.L1628:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15012
.L1610:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7384(%rsp)
	jmp	.L1590
.L1608:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7408(%rsp)
	jmp	.L1607
.L1588:
	movl	$1, %edx
	jmp	.L1587
.L1586:
	movl	$1, %ecx
	jmp	.L1585
.L1584:
	movl	$1, %ecx
	jmp	.L1583
.L1561:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L1557
.L15469:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L1555
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15474
.L1555:
	cmpl	$55, %eax
	jne	.L1558
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L1557
.L15474:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L1557
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r14
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1557
.L1554:
	cmpq	$0, 16(%r14)
	jne	.L1562
	movq	8(%r14), %r14
	jmp	.L1557
.L1562:
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L1563
	movq	%rsi, %r14
	jmp	.L1557
.L1563:
	movq	8(%r14), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L1557
.L1551:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L1547
.L15468:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L1545
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15475
.L1545:
	cmpl	$55, %eax
	jne	.L1548
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L1547
.L15475:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L1547
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1547
.L1544:
	cmpq	$0, 16(%r13)
	jne	.L1552
	movq	8(%r13), %r13
	jmp	.L1547
.L1552:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L1553
	movq	%rsi, %r13
	jmp	.L1547
.L1553:
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L1547
.L1541:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1537
.L15467:
	jne	.L1538
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1537
.L1534:
	cmpq	$0, 16(%r12)
	jne	.L1542
	movq	8(%r12), %r12
	jmp	.L1537
.L1542:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1543
	movq	%rdi, %r12
	jmp	.L1537
.L1543:
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L1537
.L15466:
	xorl	%eax, %eax
	movq	%rsi, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 2232(%rsp)
	je	.L15476
.L1280:
	movl	$8, %edi
	call	size_int
	movq	5248(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r9
	movl	$57, %edi
	movq	32(%r9), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	5248(%rsp), %rbx
	movq	%rax, %rbp
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%rbp, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	5248(%rsp), %rsi
	movq	$0, 2184(%rsp)
	movq	%rax, 2208(%rsp)
	movq	%rax, %r15
	movq	8(%rsi), %rcx
	movl	48(%rcx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r12)
	movl	%eax, 2204(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movq	%r12, 2216(%rsp)
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1406
	cmpl	$55, %eax
	je	.L15477
	cmpl	$63, %eax
	je	.L1413
	cmpl	$66, %eax
	je	.L1413
.L1409:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L1416
	cmpl	$55, %eax
	je	.L15478
.L1420:
	cmpl	$63, %eax
	je	.L1423
	cmpl	$66, %eax
	je	.L1423
.L1419:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L1426
	cmpl	$55, %eax
	je	.L15479
.L1430:
	cmpl	$63, %eax
	je	.L1433
	cmpl	$66, %eax
	je	.L1433
.L1429:
	movq	2216(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	cmpq	$0, 2208(%rsp)
	je	.L15283
	movq	2208(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L15480
.L1439:
	movl	2204(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 5200(%rsp)
	testl	%ebp, %ebp
	je	.L13786
.L1525:
	movslq	%ebp,%rdx
	movq	%rdx, %rax
	movq	%rdx, 5192(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L1513
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L1517
	movq	2208(%rsp), %r8
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r8)
	ja	.L1513
.L1517:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r14
	movq	%r10, 5184(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15481
.L1518:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15482
.L1519:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L1520
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	5200(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L1513
.L1520:
	call	get_last_insn
	movl	$1, %edx
	movq	2208(%rsp), %rsi
	movq	%rax, 5176(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15483
.L1521:
	movq	5184(%rsp), %r14
	movq	2216(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	5200(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14909
	movq	5176(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L1513:
	movq	5192(%rsp), %rcx
	movl	mode_wider_mode(,%rcx,4), %ebp
	testl	%ebp, %ebp
	jne	.L1525
.L13786:
	movq	2208(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movq	2216(%rsp), %rbp
	movq	8(%r13), %rbx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%rbx, (%rsp)
	movq	8(%rbp), %r8
	call	emit_library_call
.L1523:
	cmpw	$46, (%r15)
	je	.L15484
	movq	8(%r12), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	2232(%rsp), %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 2184(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L1527:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L1528
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L1528:
	cmpq	$0, 2184(%rsp)
	je	.L1180
	movq	2184(%rsp), %rdi
	call	emit_label
	jmp	.L1180
.L15484:
	movq	5248(%rsp), %r15
	movq	8(%r12), %rdi
	movl	32(%r15), %esi
	call	plus_constant_wide
	movq	2232(%rsp), %rdi
	movq	5248(%rsp), %r12
	movq	%rax, %rbp
	movl	32(%r12), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L1527
.L14909:
	call	emit_insn
	jmp	.L1523
.L15483:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L1521
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L1521
.L15482:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1513
	jmp	.L1519
.L15481:
	xorl	%eax, %eax
	movq	2216(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1513
	jmp	.L1518
.L15480:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 2204(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	2204(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L1453:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13777
.L1449:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L1449
.L13777:
	testl	%ecx, %ecx
	je	.L1442
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L1451
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L1451
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L1451:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1453
.L1442:
	decl	%r9d
	jg	.L1439
	movq	2216(%rsp), %rdx
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r14d
	movq	8(%rdx), %rbx
	movq	%r13, 7400(%rsp)
	movq	%rdx, 7376(%rsp)
	movl	$0, 7428(%rsp)
	movq	%rdi, 7408(%rsp)
	movl	$9, 2200(%rsp)
	movq	%rbx, 7384(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L1456
	cmpw	$88, %dx
	je	.L1456
	cmpw	$87, %dx
	je	.L1456
.L1455:
	movl	%ecx, 7392(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L1458
	cmpw	$88, %dx
	je	.L1458
	cmpw	$87, %dx
	je	.L1458
.L1457:
	movl	%ecx, 7416(%rsp)
	movl	$0, 7420(%rsp)
	movl	$0, 7396(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L1460
	cmpw	$87, %ax
	je	.L1460
.L1459:
	testl	%edx, %edx
	movl	%edx, 7432(%rsp)
	je	.L1461
	movl	%r10d, 7428(%rsp)
.L1461:
	movl	7416(%rsp), %eax
	movl	%r10d, 7424(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L1463
	movl	7392(%rsp), %eax
	testl	%eax, %eax
	jne	.L1462
.L1463:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 2204(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r13d
	cmovl	2204(%rsp), %ebp
.L1477:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13780
.L1473:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L1473
.L13780:
	testl	%ecx, %ecx
	je	.L1466
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L1475
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r13d, %eax
	cmpl	%eax, %ebp
	jl	.L1475
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L1475:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1477
.L1466:
	cmpl	$2, %r9d
	jle	.L1462
	testl	%r10d, %r10d
	jne	.L1479
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L1480
	cmpw	$46, %dx
	je	.L1480
	cmpw	$47, %dx
	je	.L1480
	cmpw	$49, %dx
	je	.L1480
	cmpw	$113, %dx
	je	.L1480
.L1479:
	movl	7392(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L1462
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L1482
	cmpw	$46, %dx
	je	.L1482
	cmpw	$47, %dx
	je	.L1482
	cmpw	$49, %dx
	je	.L1482
	cmpw	$113, %dx
	je	.L1482
.L1462:
	cmpl	$8, 2204(%rsp)
	movl	$8, %eax
	cmovl	2204(%rsp), %eax
	cmpl	$1, 2200(%rsp)
	movl	%eax, 2204(%rsp)
	jle	.L1485
.L1507:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L13783
.L1492:
	movslq	%edx,%rbx
	movl	2200(%rsp), %esi
	salq	$2, %rbx
	cmpl	%esi, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L1492
.L13783:
	testl	%r13d, %r13d
	je	.L1485
	movslq	%r13d,%r14
	movq	%r14, %r9
	salq	$4, %r9
	addq	mov_optab(%rip), %r9
	movl	8(%r9), %edx
	cmpl	$210, %edx
	je	.L1494
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 2204(%rsp)
	jl	.L1494
	movslq	%edx,%r11
	cmpl	%ebp, 7424(%rsp)
	leaq	7376(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %rdi
	movq	%rdi, 5208(%rsp)
	jl	.L1494
	movl	7432(%rsp), %edx
.L1505:
	testl	%edx, %edx
	je	.L1499
	subl	%ebp, 52(%rbx)
.L1499:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L1500
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15011:
	movq	%rax, 2192(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L1502
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L1503:
	movq	%rax, %rsi
	movq	2192(%rsp), %rdi
	xorl	%eax, %eax
	call	*5208(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L1504
	addl	%ebp, 52(%rbx)
.L1504:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L1505
.L1494:
	movl	mode_size(,%r14,4), %r13d
	movl	%r13d, 2200(%rsp)
	decl	%r13d
	jg	.L1507
.L1485:
	movl	7424(%rsp), %eax
	testl	%eax, %eax
	je	.L1523
	jmp	.L15283
.L1502:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L1503
.L1500:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15011
.L1482:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7384(%rsp)
	jmp	.L1462
.L1480:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7408(%rsp)
	jmp	.L1479
.L1460:
	movl	$1, %edx
	jmp	.L1459
.L1458:
	movl	$1, %ecx
	jmp	.L1457
.L1456:
	movl	$1, %ecx
	jmp	.L1455
.L1433:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L1429
.L15479:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L1427
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15485
.L1427:
	cmpl	$55, %eax
	jne	.L1430
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L1429
.L15485:
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L1429
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 2208(%rsp)
	jmp	.L1429
.L1426:
	cmpq	$0, 16(%r15)
	jne	.L1434
	movq	8(%r15), %rbp
	movq	%rbp, 2208(%rsp)
	jmp	.L1429
.L1434:
	movq	24(%r15), %rbx
	testq	%rbx, %rbx
	movq	%rbx, 2208(%rsp)
	jne	.L1429
	movq	8(%r15), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rsi
	movq	%rsi, 2208(%rsp)
	jmp	.L1429
.L1423:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L1419
.L15478:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L1417
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15486
.L1417:
	cmpl	$55, %eax
	jne	.L1420
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L1419
.L15486:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L1419
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1419
.L1416:
	cmpq	$0, 16(%r13)
	jne	.L1424
	movq	8(%r13), %r13
	jmp	.L1419
.L1424:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L1425
	movq	%rsi, %r13
	jmp	.L1419
.L1425:
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L1419
.L1413:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1409
.L15477:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1409
.L1406:
	cmpq	$0, 16(%r12)
	jne	.L1414
	movq	8(%r12), %rax
	movq	%rax, 2216(%rsp)
	jmp	.L1409
.L1414:
	movq	24(%r12), %r8
	testq	%r8, %r8
	movq	%r8, 2216(%rsp)
	jne	.L1409
	movq	8(%r12), %r14
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdx
	movq	%rdx, 2216(%rsp)
	jmp	.L1409
.L15476:
	movq	5248(%rsp), %rdi
	movq	2232(%rsp), %rcx
	movl	32(%rdi), %eax
	cmpl	%eax, 8(%rcx)
	jge	.L1280
	movq	8(%rdi), %rbx
	movl	48(%rbx), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%r12)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1283
	cmpl	$55, %eax
	je	.L15487
.L1287:
	cmpl	$63, %eax
	je	.L1290
	cmpl	$66, %eax
	je	.L1290
.L1286:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L1293
	cmpl	$55, %eax
	je	.L15488
.L1297:
	cmpl	$63, %eax
	je	.L1300
	cmpl	$66, %eax
	je	.L1300
.L1296:
	movq	2232(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L1303
	cmpl	$55, %eax
	je	.L15489
.L1307:
	cmpl	$63, %eax
	je	.L1310
	cmpl	$66, %eax
	je	.L1310
.L1306:
	cmpw	$55, (%r12)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	cmpq	$0, 2232(%rsp)
	je	.L15283
	movq	2232(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L15490
.L1316:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 5232(%rsp)
	testl	%ebp, %ebp
	je	.L13774
.L1402:
	movslq	%ebp,%r14
	movq	%r14, %rax
	movq	%r14, 5224(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L1390
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L1394
	movq	2232(%rsp), %r11
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r11)
	ja	.L1390
.L1394:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15491
.L1395:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15492
.L1396:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L1397
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	5232(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L1390
.L1397:
	call	get_last_insn
	movl	$1, %edx
	movq	2232(%rsp), %rsi
	movq	%rax, 5216(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15493
.L1398:
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	5232(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14910
	movq	5216(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L1390:
	movq	5224(%rsp), %r10
	movl	mode_wider_mode(,%r10,4), %ebp
	testl	%ebp, %ebp
	jne	.L1402
.L13774:
	movq	2232(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15013
.L15493:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L1398
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L1398
.L15492:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1390
	jmp	.L1396
.L15491:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1390
	jmp	.L1395
.L15490:
	movl	8(%rbx), %r10d
	xorl	%r9d, %r9d
	movl	$9, %r8d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L1330:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13765
.L1326:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L1326
.L13765:
	testl	%ecx, %ecx
	je	.L1319
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L1328
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L1328
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L1328:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1330
.L1319:
	decl	%r9d
	jg	.L1316
	movq	8(%r12), %rbx
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 7440(%rsp)
	movl	$0, 7492(%rsp)
	movq	%r13, 7464(%rsp)
	movl	%r10d, %r14d
	movl	$9, 2228(%rsp)
	movq	%rbx, 7448(%rsp)
	movq	%rdi, 7472(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L1333
	cmpw	$88, %dx
	je	.L1333
	cmpw	$87, %dx
	je	.L1333
.L1332:
	movl	%ecx, 7456(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L1335
	cmpw	$88, %dx
	je	.L1335
	cmpw	$87, %dx
	je	.L1335
.L1334:
	movl	%ecx, 7480(%rsp)
	movl	$0, 7484(%rsp)
	movl	$0, 7460(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L1337
	cmpw	$87, %ax
	je	.L1337
.L1336:
	testl	%edx, %edx
	movl	%edx, 7496(%rsp)
	je	.L1338
	movl	%r10d, 7492(%rsp)
.L1338:
	movl	7480(%rsp), %eax
	movl	%r10d, 7488(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L1340
	movl	7456(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L1339
.L1340:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	%r15d, %ebp
.L1354:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13768
.L1350:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L1350
.L13768:
	testl	%ecx, %ecx
	je	.L1343
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L1352
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L1352
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L1352:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1354
.L1343:
	cmpl	$2, %r9d
	jle	.L1339
	testl	%r10d, %r10d
	jne	.L1356
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L1357
	cmpw	$46, %dx
	je	.L1357
	cmpw	$47, %dx
	je	.L1357
	cmpw	$49, %dx
	je	.L1357
	cmpw	$113, %dx
	je	.L1357
.L1356:
	movl	7456(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L1339
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L1359
	cmpw	$46, %dx
	je	.L1359
	cmpw	$47, %dx
	je	.L1359
	cmpw	$49, %dx
	je	.L1359
	cmpw	$113, %dx
	je	.L1359
.L1339:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, 2228(%rsp)
	jle	.L1362
.L1384:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L13771
.L1369:
	movslq	%edx,%rsi
	movl	2228(%rsp), %eax
	salq	$2, %rsi
	cmpl	%eax, mode_size(%rsi)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rsi), %edx
	testl	%edx, %edx
	jne	.L1369
.L13771:
	testl	%r12d, %r12d
	je	.L1362
	movslq	%r12d,%r13
	movq	%r13, %rbx
	salq	$4, %rbx
	addq	mov_optab(%rip), %rbx
	movl	8(%rbx), %edx
	cmpl	$210, %edx
	je	.L1371
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L1371
	movslq	%edx,%rdi
	cmpl	%ebp, 7488(%rsp)
	leaq	7440(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r8
	movq	%r8, 5240(%rsp)
	jl	.L1371
	movl	7496(%rsp), %edx
.L1382:
	testl	%edx, %edx
	je	.L1376
	subl	%ebp, 52(%rbx)
.L1376:
	movl	16(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L1377
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15010:
	movl	40(%rbx), %edx
	movq	%rax, %r14
	testl	%edx, %edx
	je	.L1379
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L1380:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*5240(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L1381
	addl	%ebp, 52(%rbx)
.L1381:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L1382
.L1371:
	movl	mode_size(,%r13,4), %ebp
	movl	%ebp, 2228(%rsp)
	decl	%ebp
	jg	.L1384
.L1362:
	movl	7488(%rsp), %r15d
	testl	%r15d, %r15d
	jmp	.L15372
.L1379:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L1380
.L1377:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15010
.L1359:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7448(%rsp)
	jmp	.L1339
.L1357:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7472(%rsp)
	jmp	.L1356
.L1337:
	movl	$1, %edx
	jmp	.L1336
.L1335:
	movl	$1, %ecx
	jmp	.L1334
.L1333:
	movl	$1, %ecx
	jmp	.L1332
.L1310:
	movq	2232(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	2232(%rsp), %r10
	movq	%rax, 8(%r10)
	movq	2232(%rsp), %r11
	movq	16(%r11), %rdi
	call	protect_from_queue
	movq	2232(%rsp), %r9
	movq	%rax, 16(%r9)
	jmp	.L1306
.L15489:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L1304
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L15494
.L1304:
	cmpl	$55, %eax
	jne	.L1307
	movq	2232(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L1306
.L15494:
	movq	8(%rbp), %r8
	movq	%r8, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L1306
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	2232(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15009:
	movq	%rbx, 2232(%rsp)
	jmp	.L1306
.L1303:
	movq	2232(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L1311
	movq	8(%rcx), %rbx
	jmp	.L15009
.L1311:
	movq	2232(%rsp), %rcx
	movq	24(%rcx), %rsi
	testq	%rsi, %rsi
	je	.L1312
	movq	%rsi, 2232(%rsp)
	jmp	.L1306
.L1312:
	movq	2232(%rsp), %r14
	movq	8(%r14), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	2232(%rsp), %rdx
	movq	%rax, %rdi
	movq	8(%rdx), %rsi
	movq	%rax, 24(%rdx)
	call	gen_move_insn
	movq	2232(%rsp), %rbx
	movq	%rax, %rdi
	movq	16(%rbx), %rsi
	call	emit_insn_before
	movq	2232(%rsp), %rsi
	movq	24(%rsi), %rdi
	movq	%rdi, 2232(%rsp)
	jmp	.L1306
.L1300:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L1296
.L15488:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L1294
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15495
.L1294:
	cmpl	$55, %eax
	jne	.L1297
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L1296
.L15495:
	movq	8(%rbp), %r14
	movq	%r14, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L1296
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1296
.L1293:
	cmpq	$0, 16(%r13)
	jne	.L1301
	movq	8(%r13), %r13
	jmp	.L1296
.L1301:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L1302
	movq	%rsi, %r13
	jmp	.L1296
.L1302:
	movq	8(%r13), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L1296
.L1290:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1286
.L15487:
	jne	.L1287
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1286
.L1283:
	cmpq	$0, 16(%r12)
	jne	.L1291
	movq	8(%r12), %r12
	jmp	.L1286
.L1291:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1292
	movq	%rdi, %r12
	jmp	.L1286
.L1292:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L1286
	.p2align 6,,7
.L1272:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1268
.L15464:
	jne	.L1269
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1268
	.p2align 6,,7
.L1265:
	cmpq	$0, 16(%r12)
	jne	.L1273
	movq	8(%r12), %r12
	jmp	.L1268
.L1273:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1274
	movq	%rdi, %r12
	jmp	.L1268
.L1274:
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L1268
	.p2align 6,,7
.L15463:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	5248(%rsp), %rdi
	movzbl	2(%r12), %edx
	movq	%rax, %rsi
	jmp	.L15008
.L1244:
	movl	(%r12), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15496
	movzbl	2(%r12), %edx
	movq	5248(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r12, %rsi
	call	expand_expr
	cmpw	$51, (%r12)
	movq	%rax, %r13
	je	.L15497
.L1262:
	movzwl	(%r13), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L1263
	cmpw	$46, %dx
	je	.L1263
	cmpw	$47, %dx
	je	.L1263
	cmpw	$49, %dx
	je	.L1263
	cmpw	$113, %dx
	jne	.L1209
	jmp	.L1263
	.p2align 6,,7
.L15497:
	cmpl	$63, 8(%r12)
	jle	.L1209
	jmp	.L1262
.L15496:
	movq	5248(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r12), %rdi
	movzbl	3(%r12), %edx
	movq	%rax, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	jmp	.L15015
.L1253:
	movl	$1, %ebx
	jmp	.L1247
.L1245:
	xorl	%ebx, %ebx
	jmp	.L1247
.L1251:
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L1253
	movq	16(%r12), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L1247
	jmp	.L1253
.L15462:
	movzbl	2(%r12), %eax
	cmpb	$16, %al
	je	.L1237
	movl	cse_not_expected(%rip), %r14d
	movq	5248(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r14d, %r14d
	cmove	%r12, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r13
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L1263
	testb	%al, %al
	je	.L1263
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15289
	.p2align 6,,7
.L15461:
	cmpb	$16, 2(%r12)
	jne	.L1210
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.L1214
.L13758:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1216
	cmpl	$55, %eax
	je	.L15498
.L1220:
	cmpl	$63, %eax
	je	.L1223
	cmpl	$66, %eax
	je	.L1223
.L1219:
	movq	5248(%rsp), %r15
	xorl	%eax, %eax
	movq	%r13, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r15), %rdi
	call	jumpifnot
	movq	5248(%rsp), %rax
	movq	%r12, %rsi
	movl	%ebp, %edx
	movq	40(%rax), %rdi
	xorl	%eax, %eax
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L1229
.L13760:
	movq	%r14, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	5248(%rsp), %r13
	movq	%r12, %rsi
	movq	48(%r13), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L1234
.L13762:
	movq	%r14, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L1180
.L1234:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rbp
	movq	%rax, 16(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, pending_chain(%rip)
	movq	%rbp, %rbx
	jne	.L1234
	jmp	.L13762
	.p2align 6,,7
.L1229:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L1229
	jmp	.L13760
.L1223:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1219
.L15498:
	jne	.L1220
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1219
.L1216:
	cmpq	$0, 16(%r12)
	jne	.L1224
	movq	8(%r12), %r12
	jmp	.L1219
.L1224:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1225
	movq	%rdi, %r12
	jmp	.L1219
.L1225:
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L1219
	.p2align 6,,7
.L1214:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L1214
	jmp	.L13758
	.p2align 6,,7
.L15460:
	movq	32(%rcx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L1206
.L13756:
	movq	5248(%rsp), %r10
	movq	%r12, %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	movq	40(%r10), %rdi
	call	store_expr
	jmp	.L1180
.L1206:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	testq	%rcx, %rcx
	movq	%rcx, pending_chain(%rip)
	movq	%rcx, %rbx
	jne	.L1206
	jmp	.L13756
.L15459:
	movq	16(%rdi), %r9
	cmpw	$46, (%r9)
	jne	.L1199
	movq	8(%rdi), %rax
	cmpq	virtual_incoming_args_rtx(%rip), %rax
	je	.L1198
	cmpq	virtual_stack_vars_rtx(%rip), %rax
	jne	.L1199
	jmp	.L1198
	.p2align 6,,7
.L1191:
	movq	5248(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	%r12d, %r9d
	movl	%ebx, %ecx
	movq	56(%rsp), %rdi
	movq	%rax, %r8
	movq	%rax, %r13
	movl	%ebp, %esi
	movl	%r14d, %edx
	xorl	%eax, %eax
	movl	%r15d, (%rsp)
	call	store_bit_field
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L1180
	movl	2244(%rsp), %eax
	testl	%eax, %eax
	je	.L1194
	movq	56(%rsp), %rbx
	movl	(%rbx), %eax
	andl	$134283263, %eax
	cmpl	$134217783, %eax
	je	.L1194
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L1195
	movl	2244(%rsp), %edx
	xorl	%esi, %esi
	movl	$46, %edi
	call	gen_rtx
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	expand_and
	jmp	.L1180
.L1195:
	movzbl	2(%r13), %r14d
	movl	$0, %edx
	testl	%r14d, %r14d
	cmove	%edx, %r14d
	xorl	%esi, %esi
	movslq	%r14d,%r15
	movl	mode_size(,%r15,4), %edi
	sall	$3, %edi
	subl	%ebp, %edi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rbp
	movl	%r14d, %esi
	movq	%r13, %rdx
	movq	%rax, %rcx
	movl	$77, %edi
	xorl	%eax, %eax
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movl	$78, %edi
	movl	%r14d, %esi
	movq	%rbp, %rcx
	xorl	%eax, %eax
	call	expand_shift
	jmp	.L1180
.L1194:
	movq	56(%rsp), %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	call	extract_bit_field
	jmp	.L1180
.L15458:
	movq	56(%rsp), %r9
	movzwl	(%r9), %eax
	cmpw	$51, %ax
	je	.L1187
	cmpw	$53, %ax
	jne	.L1186
.L1187:
	movq	56(%rsp), %rcx
	xorl	%edx, %edx
	movzbl	2(%rcx), %edi
	movslq	%edi,%r11
	movl	mode_size(,%r11,4), %esi
	call	assign_stack_temp
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	copy_rtx
	movq	56(%rsp), %rdx
	movb	$16, 2(%rax)
	movq	%rax, %r13
	movzbq	2(%rdx), %rdi
	movl	mode_size(,%rdi,4), %eax
	sall	$3, %eax
	cmpl	%eax, %ebp
	je	.L1188
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	call	emit_move_insn
.L1188:
	movq	5248(%rsp), %r8
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	call	store_field
	movq	%rbx, %rsi
	movq	56(%rsp), %rdi
	jmp	.L15014
.L15457:
	xorl	%esi, %esi
	movl	%eax, %edx
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movl	$4, %r9d
	movl	$3, %ecx
	movq	%rax, 16(%rsp)
	movq	const0_rtx(%rip), %rsi
	movl	$4, 8(%rsp)
	movq	56(%rsp), %rax
	movl	$4, 24(%rsp)
	movq	memset_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	%rsi, (%rsp)
	xorl	%esi, %esi
	movq	8(%rax), %r8
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L1170
.L1173:
	movq	56(%rsp), %rdx
	movl	$42, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L1170
.L15456:
	testb	$4, 18(%r15)
	je	.L1171
	movq	%rax, %rdi
	jmp	.L15007
.L1168:
	cmpb	$18, %dl
	jne	.L15283
	movq	5256(%rsp), %rsi
	movq	24(%rsi), %r11
	movq	8(%rsi), %r12
	movq	88(%r11), %r10
	movq	96(%r11), %r9
	movl	24(%r10), %ebx
	movl	24(%r9), %ebp
	movq	%r12, 5128(%rsp)
	movq	40(%r15), %rdi
	subl	%ebx, %ebp
	call	list_length
	leal	1(%rbp), %edx
	cmpl	%edx, %eax
	jl	.L1660
	movq	56(%rsp), %rax
	cmpw	$51, (%rax)
	je	.L15499
.L1659:
	movq	56(%rsp), %rdx
	movl	$42, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	gen_rtx
	movq	%rax, %rdi
	call	emit_insn
.L1664:
	movq	40(%r15), %rdx
	movl	$0, 2176(%rsp)
	testq	%rdx, %rdx
	movq	%rdx, 2168(%rsp)
	je	.L581
.L2140:
	movq	5128(%rsp), %r15
	movq	2168(%rsp), %r9
	movq	5256(%rsp), %r13
	movzbl	44(%r15), %ebx
	movq	32(%r15), %rcx
	movq	32(%r9), %rsi
	movl	2176(%rsp), %r15d
	movq	%r13, %rdi
	imull	24(%rcx), %r15d
	movslq	%ebx,%r12
	movq	%rsi, 5120(%rsp)
	movl	48(%r13), %r14d
	movl	mode_size(,%r12,4), %eax
	shrl	$3, %r14d
	leal	0(,%rax,8), %ebp
	call	int_size_in_bytes
	movl	$0, 2164(%rsp)
	cmpl	$31, %ebp
	movl	%eax, 5116(%rsp)
	jg	.L1669
	movl	$1, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 2164(%rsp)
.L1669:
	cmpl	$16, %ebx
	je	.L15500
.L1670:
	testl	%ebx, %ebx
	je	.L1675
	cmpl	$16, %ebx
	je	.L1676
	cmpb	$0, direct_store(%r12)
	je	.L1675
.L1676:
	movq	56(%rsp), %rdi
	movzwl	(%rdi), %eax
	cmpw	$51, %ax
	je	.L1675
	cmpw	$53, %ax
	je	.L1675
	movq	56(%rsp), %r10
	xorl	%r11d, %r11d
	testl	%r11d, %r11d
	movq	8(%r10), %rdi
	je	.L1682
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L1682
	leal	-56(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L1682
	cmpw	$46, %dx
	je	.L1682
	cmpw	$47, %dx
	je	.L1682
	cmpw	$49, %dx
	je	.L1682
	cmpw	$113, %dx
	je	.L1682
	cmpw	$63, %dx
	je	.L15501
.L1683:
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, %rdi
.L1682:
	cmpl	$-1, %r15d
	leal	7(%r15), %r8d
	cmovle	%r8d, %r15d
	sarl	$3, %r15d
	movl	%r15d, %esi
	call	plus_constant_wide
	movl	%ebx, %esi
	movq	56(%rsp), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	xorl	%edi, %edi
	orb	$16, 3(%rax)
	movq	%rax, %r12
	testl	%edi, %edi
	movq	5120(%rsp), %rdx
	setne	%bl
	xorl	%r14d, %r14d
	movzbl	16(%rdx), %eax
	movzbl	%bl, %ebp
	cmpb	$44, %al
	je	.L15502
	cmpb	$48, %al
	je	.L15503
.L1694:
	testl	%ebp, %ebp
	je	.L1721
	cmpw	$55, (%r12)
	je	.L15504
.L1721:
	movzwl	(%r12), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L1729
	mov	%eax, %r10d
	jmp	*.L1738(,%r10,8)
	.section	.rodata
	.align 8
	.align 4
.L1738:
	.quad	.L1732
	.quad	.L1729
	.quad	.L1729
	.quad	.L1729
	.quad	.L1737
	.quad	.L1729
	.quad	.L1729
	.quad	.L1729
	.quad	.L1735
	.quad	.L1735
	.quad	.L1729
	.quad	.L1735
	.text
.L1732:
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L1731:
	testl	%ebx, %ebx
	je	.L1728
	movzbl	2(%r12), %eax
	cmpb	$16, %al
	je	.L1740
	testb	%al, %al
	jne	.L15505
.L1740:
	movzbl	2(%r12), %edx
	movq	5120(%rsp), %rdi
	xorl	%esi, %esi
.L15016:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15290:
	movq	%rax, %r13
.L1747:
	movl	$1, %r14d
.L1693:
	cmpq	%r12, %r13
	je	.L1667
	movq	5120(%rsp), %rdx
	cmpb	$0, 16(%rdx)
	je	.L1667
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1749
	cmpl	$55, %eax
	je	.L15506
.L1753:
	cmpl	$63, %eax
	je	.L1756
	cmpl	$66, %eax
	je	.L1756
.L1752:
	movzbl	2(%r13), %eax
	movzbl	2(%r12), %ecx
	cmpb	%cl, %al
	je	.L1759
	testb	%al, %al
	je	.L1759
	movq	5120(%rsp), %rax
	movq	8(%rax), %rsi
	movzbl	17(%rsi), %edi
	shrb	$6, %dil
	movl	%edi, %edx
	andl	$1, %edx
	testl	%r14d, %r14d
	je	.L1760
	movzbl	%cl, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%r12, %rdi
	movq	%rax, %rsi
.L15022:
	call	emit_move_insn
.L1667:
	movq	2168(%rsp), %r12
	movq	(%r12), %r13
	incl	2176(%rsp)
	testq	%r13, %r13
	movq	%r13, 2168(%rsp)
	jne	.L2140
	jmp	.L581
.L1760:
	movq	%r12, %rdi
	movq	%r13, %rsi
.L15023:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L1667
.L1759:
	cmpb	$16, %al
	je	.L15507
.L2015:
	movq	%r12, %rdi
	movq	%r13, %rsi
	jmp	.L15022
.L15507:
	movq	5120(%rsp), %rdx
	cmpb	$28, 16(%rdx)
	je	.L15508
	cmpb	$16, %al
	jne	.L2015
	movq	5120(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	5120(%rsp), %rsi
	movq	%rax, %r14
	movq	8(%rsi), %rbx
	movl	48(%rbx), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%r12)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L2018
	cmpl	$55, %eax
	je	.L15509
.L2022:
	cmpl	$63, %eax
	je	.L2025
	cmpl	$66, %eax
	je	.L2025
.L2021:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L2028
	cmpl	$55, %eax
	je	.L15510
.L2032:
	cmpl	$63, %eax
	je	.L2035
	cmpl	$66, %eax
	je	.L2035
.L2031:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L2038
	cmpl	$55, %eax
	je	.L15511
.L2042:
	cmpl	$63, %eax
	je	.L2045
	cmpl	$66, %eax
	je	.L2045
.L2041:
	cmpw	$55, (%r12)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	testq	%r14, %r14
	je	.L15283
	cmpw	$46, (%r14)
	je	.L15512
.L2051:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 5024(%rsp)
	testl	%ebp, %ebp
	je	.L13843
.L2137:
	movslq	%ebp,%rdx
	movq	%rdx, %rax
	movq	%rdx, 5016(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L2125
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L2129
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L2125
.L2129:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r15
	movq	%r10, 5008(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15513
.L2130:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15514
.L2131:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L2132
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	5024(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L2125
.L2132:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, 5000(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15515
.L2133:
	movq	5008(%rsp), %r9
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	5024(%rsp), %rcx
	call	*insn_gen_function(,%r9,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14913
	movq	5000(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L2125:
	movq	5016(%rsp), %rbx
	movl	mode_wider_mode(,%rbx,4), %ebp
	testl	%ebp, %ebp
	jne	.L2137
.L13843:
	movl	$4, %edi
	movq	%r14, %rsi
.L15021:
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r13), %r14
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, (%rsp)
	movq	8(%r12), %r8
	call	emit_library_call
	jmp	.L1667
.L14913:
	call	emit_insn
	jmp	.L1667
.L15515:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L2133
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L2133
.L15514:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L2125
	jmp	.L2131
.L15513:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L2125
	jmp	.L2130
.L15512:
	movl	8(%r14), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L2065:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13834
.L2061:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L2061
.L13834:
	testl	%ecx, %ecx
	je	.L2054
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L2063
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L2063
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L2063:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L2065
.L2054:
	decl	%r9d
	jg	.L2051
	movq	8(%r12), %rbx
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movl	$0, 7492(%rsp)
	movq	%r12, 7440(%rsp)
	movq	%r13, 7464(%rsp)
	movl	%r10d, %r14d
	movl	$9, 2100(%rsp)
	movq	%rbx, 7448(%rsp)
	movq	%rdi, 7472(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L2068
	cmpw	$88, %dx
	je	.L2068
	cmpw	$87, %dx
	je	.L2068
.L2067:
	movl	%ecx, 7456(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L2070
	cmpw	$88, %dx
	je	.L2070
	cmpw	$87, %dx
	je	.L2070
.L2069:
	movl	%ecx, 7480(%rsp)
	movl	$0, 7484(%rsp)
	movl	$0, 7460(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L2072
	cmpw	$87, %ax
	je	.L2072
.L2071:
	testl	%edx, %edx
	movl	%edx, 7496(%rsp)
	je	.L2073
	movl	%r10d, 7492(%rsp)
.L2073:
	movl	7480(%rsp), %eax
	movl	%r10d, 7488(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L2075
	movl	7456(%rsp), %eax
	testl	%eax, %eax
	jne	.L2074
.L2075:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	%r15d, %ebp
.L2089:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13837
.L2085:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L2085
.L13837:
	testl	%ecx, %ecx
	je	.L2078
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L2087
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L2087
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L2087:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L2089
.L2078:
	cmpl	$2, %r9d
	jle	.L2074
	testl	%r10d, %r10d
	jne	.L2091
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L2092
	cmpw	$46, %dx
	je	.L2092
	cmpw	$47, %dx
	je	.L2092
	cmpw	$49, %dx
	je	.L2092
	cmpw	$113, %dx
	je	.L2092
.L2091:
	movl	7456(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L2074
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L2094
	cmpw	$46, %dx
	je	.L2094
	cmpw	$47, %dx
	je	.L2094
	cmpw	$49, %dx
	je	.L2094
	cmpw	$113, %dx
	je	.L2094
.L2074:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, 2100(%rsp)
	jle	.L2097
.L2119:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L13840
.L2104:
	movslq	%edx,%rbx
	movl	2100(%rsp), %esi
	salq	$2, %rbx
	cmpl	%esi, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L2104
.L13840:
	testl	%r12d, %r12d
	je	.L2097
	movslq	%r12d,%r13
	movq	%r13, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L2106
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L2106
	movslq	%edx,%r8
	cmpl	%ebp, 7488(%rsp)
	leaq	7440(%rsp), %rbx
	movq	insn_gen_function(,%r8,8), %rcx
	movq	%rcx, 5032(%rsp)
	jl	.L2106
	movl	7496(%rsp), %edx
.L2117:
	testl	%edx, %edx
	je	.L2111
	subl	%ebp, 52(%rbx)
.L2111:
	movl	16(%rbx), %edi
	testl	%edi, %edi
	je	.L2112
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15020:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L2114
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L2115:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*5032(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L2116
	addl	%ebp, 52(%rbx)
.L2116:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L2117
.L2106:
	movl	mode_size(,%r13,4), %ebp
	movl	%ebp, 2100(%rsp)
	decl	%ebp
	jg	.L2119
.L2097:
	movl	7488(%rsp), %r15d
	testl	%r15d, %r15d
.L15373:
	je	.L1667
	jmp	.L15283
.L2114:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L2115
.L2112:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15020
.L2094:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7448(%rsp)
	jmp	.L2074
.L2092:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7472(%rsp)
	jmp	.L2091
.L2072:
	movl	$1, %edx
	jmp	.L2071
.L2070:
	movl	$1, %ecx
	jmp	.L2069
.L2068:
	movl	$1, %ecx
	jmp	.L2067
.L2045:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L2041
.L15511:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L2039
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15516
.L2039:
	cmpl	$55, %eax
	jne	.L2042
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L2041
.L15516:
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L2041
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r14
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2041
.L2038:
	cmpq	$0, 16(%r14)
	jne	.L2046
	movq	8(%r14), %r14
	jmp	.L2041
.L2046:
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L2047
	movq	%rsi, %r14
	jmp	.L2041
.L2047:
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L2041
.L2035:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L2031
.L15510:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L2029
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15517
.L2029:
	cmpl	$55, %eax
	jne	.L2032
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L2031
.L15517:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L2031
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2031
.L2028:
	cmpq	$0, 16(%r13)
	jne	.L2036
	movq	8(%r13), %r13
	jmp	.L2031
.L2036:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L2037
	movq	%rsi, %r13
	jmp	.L2031
.L2037:
	movq	8(%r13), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L2031
.L2025:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L2021
.L15509:
	jne	.L2022
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L2021
.L2018:
	cmpq	$0, 16(%r12)
	jne	.L2026
	movq	8(%r12), %r12
	jmp	.L2021
.L2026:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L2027
	movq	%rdi, %r12
	jmp	.L2021
.L2027:
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L2021
.L15508:
	xorl	%eax, %eax
	movq	%rdx, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 2152(%rsp)
	je	.L15518
.L1764:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	5120(%rsp), %rsi
	movq	%rax, %rdx
	movq	8(%rsi), %rbx
	movq	32(%rbx), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	5120(%rsp), %r9
	movq	%rax, %r15
	movl	32(%r9), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r15, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	5120(%rsp), %rbp
	movq	$0, 2104(%rsp)
	movq	%rax, 2128(%rsp)
	movq	%rax, %r15
	movq	8(%rbp), %r10
	movl	48(%r10), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r12)
	movl	%eax, 2124(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movq	%r12, 2136(%rsp)
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1890
	cmpl	$55, %eax
	je	.L15519
	cmpl	$63, %eax
	je	.L1897
	cmpl	$66, %eax
	je	.L1897
.L1893:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L1900
	cmpl	$55, %eax
	je	.L15520
.L1904:
	cmpl	$63, %eax
	je	.L1907
	cmpl	$66, %eax
	je	.L1907
.L1903:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L1910
	cmpl	$55, %eax
	je	.L15521
.L1914:
	cmpl	$63, %eax
	je	.L1917
	cmpl	$66, %eax
	je	.L1917
.L1913:
	movq	2136(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	cmpq	$0, 2128(%rsp)
	je	.L15283
	movq	2128(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L15522
.L1923:
	movl	2124(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 5064(%rsp)
	testl	%ebp, %ebp
	je	.L13831
.L2009:
	movslq	%ebp,%rdx
	movq	%rdx, %rax
	movq	%rdx, 5056(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L1997
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L2001
	movq	2128(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L1997
.L2001:
	movslq	%edx,%rcx
	leaq	(%rcx,%rcx,4), %r14
	movq	%rcx, 5048(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15523
.L2002:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15524
.L2003:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L2004
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	5064(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L1997
.L2004:
	call	get_last_insn
	movl	$1, %edx
	movq	2128(%rsp), %rsi
	movq	%rax, 5040(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15525
.L2005:
	movq	5048(%rsp), %rbp
	movq	2136(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	5064(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14912
	movq	5040(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L1997:
	movq	5056(%rsp), %r10
	movl	mode_wider_mode(,%r10,4), %ebp
	testl	%ebp, %ebp
	jne	.L2009
.L13831:
	movq	2128(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	8(%r13), %r9
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	2136(%rsp), %r13
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%eax, %eax
	movq	%r9, (%rsp)
	movl	$4, %r9d
	movq	8(%r13), %r8
	call	emit_library_call
.L2007:
	cmpw	$46, (%r15)
	je	.L15526
	movq	8(%r12), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	2152(%rsp), %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 2104(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L2011:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L2012
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L2012:
	cmpq	$0, 2104(%rsp)
	je	.L1667
	movq	2104(%rsp), %rdi
	call	emit_label
	jmp	.L1667
.L15526:
	movq	5120(%rsp), %r15
	movq	8(%r12), %rdi
	movl	32(%r15), %esi
	call	plus_constant_wide
	movq	2152(%rsp), %rdi
	movq	5120(%rsp), %r12
	movq	%rax, %rbp
	movl	32(%r12), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L2011
.L14912:
	call	emit_insn
	jmp	.L2007
.L15525:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L2005
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L2005
.L15524:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1997
	jmp	.L2003
.L15523:
	xorl	%eax, %eax
	movq	2136(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1997
	jmp	.L2002
.L15522:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 2124(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	2124(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L1937:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13822
.L1933:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L1933
.L13822:
	testl	%ecx, %ecx
	je	.L1926
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L1935
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L1935
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L1935:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1937
.L1926:
	decl	%r9d
	jg	.L1923
	movq	2136(%rsp), %r11
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r14d
	movq	8(%r11), %rbx
	movq	%r13, 7464(%rsp)
	movq	%r11, 7440(%rsp)
	movl	$0, 7492(%rsp)
	movq	%rdi, 7472(%rsp)
	movl	$9, 2120(%rsp)
	movq	%rbx, 7448(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L1940
	cmpw	$88, %dx
	je	.L1940
	cmpw	$87, %dx
	je	.L1940
.L1939:
	movl	%ecx, 7456(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L1942
	cmpw	$88, %dx
	je	.L1942
	cmpw	$87, %dx
	je	.L1942
.L1941:
	movl	%ecx, 7480(%rsp)
	movl	$0, 7484(%rsp)
	movl	$0, 7460(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L1944
	cmpw	$87, %ax
	je	.L1944
.L1943:
	testl	%edx, %edx
	movl	%edx, 7496(%rsp)
	je	.L1945
	movl	%r10d, 7492(%rsp)
.L1945:
	movl	7480(%rsp), %eax
	movl	%r10d, 7488(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L1947
	movl	7456(%rsp), %eax
	testl	%eax, %eax
	jne	.L1946
.L1947:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 2124(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r13d
	cmovl	2124(%rsp), %ebp
.L1961:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13825
.L1957:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L1957
.L13825:
	testl	%ecx, %ecx
	je	.L1950
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L1959
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r13d, %eax
	cmpl	%eax, %ebp
	jl	.L1959
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L1959:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1961
.L1950:
	cmpl	$2, %r9d
	jle	.L1946
	testl	%r10d, %r10d
	jne	.L1963
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L1964
	cmpw	$46, %dx
	je	.L1964
	cmpw	$47, %dx
	je	.L1964
	cmpw	$49, %dx
	je	.L1964
	cmpw	$113, %dx
	je	.L1964
.L1963:
	movl	7456(%rsp), %eax
	testl	%eax, %eax
	jne	.L1946
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L1966
	cmpw	$46, %dx
	je	.L1966
	cmpw	$47, %dx
	je	.L1966
	cmpw	$49, %dx
	je	.L1966
	cmpw	$113, %dx
	je	.L1966
.L1946:
	cmpl	$8, 2124(%rsp)
	movl	$8, %eax
	cmovl	2124(%rsp), %eax
	cmpl	$1, 2120(%rsp)
	movl	%eax, 2124(%rsp)
	jle	.L1969
.L1991:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L13828
.L1976:
	movslq	%edx,%r9
	movl	2120(%rsp), %ebx
	salq	$2, %r9
	cmpl	%ebx, mode_size(%r9)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%r9), %edx
	testl	%edx, %edx
	jne	.L1976
.L13828:
	testl	%r13d, %r13d
	je	.L1969
	movslq	%r13d,%r14
	movq	%r14, %rsi
	salq	$4, %rsi
	addq	mov_optab(%rip), %rsi
	movl	8(%rsi), %edx
	cmpl	$210, %edx
	je	.L1978
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 2124(%rsp)
	jl	.L1978
	movslq	%edx,%rdi
	cmpl	%ebp, 7488(%rsp)
	leaq	7440(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r8
	movq	%r8, 5072(%rsp)
	jl	.L1978
	movl	7496(%rsp), %edx
.L1989:
	testl	%edx, %edx
	je	.L1983
	subl	%ebp, 52(%rbx)
.L1983:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L1984
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15019:
	movq	%rax, 2112(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L1986
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L1987:
	movq	%rax, %rsi
	movq	2112(%rsp), %rdi
	xorl	%eax, %eax
	call	*5072(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L1988
	addl	%ebp, 52(%rbx)
.L1988:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L1989
.L1978:
	movl	mode_size(,%r14,4), %eax
	movl	%eax, 2120(%rsp)
	decl	%eax
	jg	.L1991
.L1969:
	movl	7488(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L2007
	jmp	.L15283
.L1986:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L1987
.L1984:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15019
.L1966:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7448(%rsp)
	jmp	.L1946
.L1964:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7472(%rsp)
	jmp	.L1963
.L1944:
	movl	$1, %edx
	jmp	.L1943
.L1942:
	movl	$1, %ecx
	jmp	.L1941
.L1940:
	movl	$1, %ecx
	jmp	.L1939
.L1917:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L1913
.L15521:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L1911
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15527
.L1911:
	cmpl	$55, %eax
	jne	.L1914
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L1913
.L15527:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L1913
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 2128(%rsp)
	jmp	.L1913
.L1910:
	cmpq	$0, 16(%r15)
	jne	.L1918
	movq	8(%r15), %rbp
	movq	%rbp, 2128(%rsp)
	jmp	.L1913
.L1918:
	movq	24(%r15), %r9
	testq	%r9, %r9
	movq	%r9, 2128(%rsp)
	jne	.L1913
	movq	8(%r15), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rbx
	movq	%rbx, 2128(%rsp)
	jmp	.L1913
.L1907:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L1903
.L15520:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L1901
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15528
.L1901:
	cmpl	$55, %eax
	jne	.L1904
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L1903
.L15528:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L1903
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1903
.L1900:
	cmpq	$0, 16(%r13)
	jne	.L1908
	movq	8(%r13), %r13
	jmp	.L1903
.L1908:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L1909
	movq	%rsi, %r13
	jmp	.L1903
.L1909:
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L1903
.L1897:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1893
.L15519:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1893
.L1890:
	cmpq	$0, 16(%r12)
	jne	.L1898
	movq	8(%r12), %rax
	movq	%rax, 2136(%rsp)
	jmp	.L1893
.L1898:
	movq	24(%r12), %r11
	testq	%r11, %r11
	movq	%r11, 2136(%rsp)
	jne	.L1893
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdi
	movq	%rdi, 2136(%rsp)
	jmp	.L1893
.L15518:
	movq	5120(%rsp), %rcx
	movq	2152(%rsp), %r9
	movl	32(%rcx), %eax
	cmpl	%eax, 8(%r9)
	jge	.L1764
	movq	8(%rcx), %r11
	movl	48(%r11), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%r12)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1767
	cmpl	$55, %eax
	je	.L15529
.L1771:
	cmpl	$63, %eax
	je	.L1774
	cmpl	$66, %eax
	je	.L1774
.L1770:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L1777
	cmpl	$55, %eax
	je	.L15530
.L1781:
	cmpl	$63, %eax
	je	.L1784
	cmpl	$66, %eax
	je	.L1784
.L1780:
	movq	2152(%rsp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L1787
	cmpl	$55, %eax
	je	.L15531
.L1791:
	cmpl	$63, %eax
	je	.L1794
	cmpl	$66, %eax
	je	.L1794
.L1790:
	cmpw	$55, (%r12)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	cmpq	$0, 2152(%rsp)
	je	.L15283
	movq	2152(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15532
.L1800:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 5096(%rsp)
	testl	%ebp, %ebp
	je	.L13819
.L1886:
	movslq	%ebp,%r15
	movq	%r15, %rax
	movq	%r15, 5088(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L1874
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L1878
	movq	2152(%rsp), %r8
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r8)
	ja	.L1874
.L1878:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15533
.L1879:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15534
.L1880:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L1881
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	5096(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L1874
.L1881:
	call	get_last_insn
	movl	$1, %edx
	movq	2152(%rsp), %rsi
	movq	%rax, 5080(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15535
.L1882:
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	5096(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14913
	movq	5080(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L1874:
	movq	5088(%rsp), %r14
	movl	mode_wider_mode(,%r14,4), %ebp
	testl	%ebp, %ebp
	jne	.L1886
.L13819:
	movq	2152(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15021
.L15535:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L1882
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L1882
.L15534:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1874
	jmp	.L1880
.L15533:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L1874
	jmp	.L1879
.L15532:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L1814:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13810
.L1810:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L1810
.L13810:
	testl	%ecx, %ecx
	je	.L1803
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L1812
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L1812
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L1812:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1814
.L1803:
	decl	%r9d
	jg	.L1800
	movq	8(%r12), %rbx
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 7376(%rsp)
	movl	$0, 7428(%rsp)
	movq	%r13, 7400(%rsp)
	movl	%r10d, %r14d
	movl	$9, 2148(%rsp)
	movq	%rbx, 7384(%rsp)
	movq	%rdi, 7408(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L1817
	cmpw	$88, %dx
	je	.L1817
	cmpw	$87, %dx
	je	.L1817
.L1816:
	movl	%ecx, 7392(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L1819
	cmpw	$88, %dx
	je	.L1819
	cmpw	$87, %dx
	je	.L1819
.L1818:
	movl	%ecx, 7416(%rsp)
	movl	$0, 7420(%rsp)
	movl	$0, 7396(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L1821
	cmpw	$87, %ax
	je	.L1821
.L1820:
	testl	%edx, %edx
	movl	%edx, 7432(%rsp)
	je	.L1822
	movl	%r10d, 7428(%rsp)
.L1822:
	movl	7416(%rsp), %eax
	movl	%r10d, 7424(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L1824
	movl	7392(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L1823
.L1824:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	%r15d, %ebp
.L1838:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13813
.L1834:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L1834
.L13813:
	testl	%ecx, %ecx
	je	.L1827
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L1836
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L1836
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L1836:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L1838
.L1827:
	cmpl	$2, %r9d
	jle	.L1823
	testl	%r10d, %r10d
	jne	.L1840
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L1841
	cmpw	$46, %dx
	je	.L1841
	cmpw	$47, %dx
	je	.L1841
	cmpw	$49, %dx
	je	.L1841
	cmpw	$113, %dx
	je	.L1841
.L1840:
	movl	7392(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L1823
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L1843
	cmpw	$46, %dx
	je	.L1843
	cmpw	$47, %dx
	je	.L1843
	cmpw	$49, %dx
	je	.L1843
	cmpw	$113, %dx
	je	.L1843
.L1823:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, 2148(%rsp)
	jle	.L1846
.L1868:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L13816
.L1853:
	movslq	%edx,%rbx
	movl	2148(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L1853
.L13816:
	testl	%r12d, %r12d
	je	.L1846
	movslq	%r12d,%r13
	movq	%r13, %rsi
	salq	$4, %rsi
	addq	mov_optab(%rip), %rsi
	movl	8(%rsi), %edx
	cmpl	$210, %edx
	je	.L1855
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L1855
	movslq	%edx,%rdi
	cmpl	%ebp, 7424(%rsp)
	leaq	7376(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r11
	movq	%r11, 5104(%rsp)
	jl	.L1855
	movl	7432(%rsp), %edx
.L1866:
	testl	%edx, %edx
	je	.L1860
	subl	%ebp, 52(%rbx)
.L1860:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L1861
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15018:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L1863
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L1864:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*5104(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L1865
	addl	%ebp, 52(%rbx)
.L1865:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L1866
.L1855:
	movl	mode_size(,%r13,4), %edx
	movl	%edx, 2148(%rsp)
	decl	%edx
	jg	.L1868
.L1846:
	movl	7424(%rsp), %eax
	testl	%eax, %eax
	jmp	.L15373
.L1863:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L1864
.L1861:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15018
.L1843:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7384(%rsp)
	jmp	.L1823
.L1841:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7408(%rsp)
	jmp	.L1840
.L1821:
	movl	$1, %edx
	jmp	.L1820
.L1819:
	movl	$1, %ecx
	jmp	.L1818
.L1817:
	movl	$1, %ecx
	jmp	.L1816
.L1794:
	movq	2152(%rsp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	2152(%rsp), %rbp
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L1790
.L15531:
	movzbl	2(%rsi), %edx
	cmpb	$16, %dl
	je	.L1788
	movq	8(%rsi), %rbp
	cmpw	$59, (%rbp)
	je	.L15536
.L1788:
	cmpl	$55, %eax
	jne	.L1791
	movq	2152(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	movq	2152(%rsp), %rbx
	movq	%rax, 8(%rbx)
	jmp	.L1790
.L15536:
	movq	8(%rbp), %r10
	movq	%r10, 8(%rsi)
	cmpq	$0, 16(%rbp)
	je	.L1790
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	2152(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 2152(%rsp)
	jmp	.L1790
.L1787:
	movq	2152(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L1795
	movq	8(%rsi), %rax
	movq	%rax, 2152(%rsp)
	jmp	.L1790
.L1795:
	movq	2152(%rsp), %rdi
	movq	24(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L15537
.L15017:
	movq	%rsi, 2152(%rsp)
	jmp	.L1790
.L15537:
	movq	2152(%rsp), %r11
	movq	8(%r11), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	2152(%rsp), %r9
	movq	%rax, %rdi
	movq	8(%r9), %rsi
	movq	%rax, 24(%r9)
	call	gen_move_insn
	movq	2152(%rsp), %r14
	movq	%rax, %rdi
	movq	16(%r14), %rsi
	call	emit_insn_before
	movq	24(%r14), %rsi
	jmp	.L15017
.L1784:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L1780
.L15530:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L1778
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15538
.L1778:
	cmpl	$55, %eax
	jne	.L1781
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L1780
.L15538:
	movq	8(%rbp), %r14
	movq	%r14, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L1780
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1780
.L1777:
	cmpq	$0, 16(%r13)
	jne	.L1785
	movq	8(%r13), %r13
	jmp	.L1780
.L1785:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L1786
	movq	%rsi, %r13
	jmp	.L1780
.L1786:
	movq	8(%r13), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L1780
.L1774:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1770
.L15529:
	jne	.L1771
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1770
.L1767:
	cmpq	$0, 16(%r12)
	jne	.L1775
	movq	8(%r12), %r12
	jmp	.L1770
.L1775:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1776
	movq	%rdi, %r12
	jmp	.L1770
.L1776:
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L1770
	.p2align 6,,7
.L1756:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1752
.L15506:
	jne	.L1753
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1752
	.p2align 6,,7
.L1749:
	cmpq	$0, 16(%r12)
	jne	.L1757
	movq	8(%r12), %r12
	jmp	.L1752
.L1757:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1758
	movq	%rdi, %r12
	jmp	.L1752
.L1758:
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L1752
	.p2align 6,,7
.L15505:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	5120(%rsp), %rdi
	movzbl	2(%r12), %edx
	movq	%rax, %rsi
	jmp	.L15016
.L1728:
	movl	(%r12), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15539
	movzbl	2(%r12), %edx
	movq	5120(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r12, %rsi
	call	expand_expr
	cmpw	$51, (%r12)
	movq	%rax, %r13
	je	.L15540
.L1746:
	movzwl	(%r13), %edx
	leal	-56(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L1747
	cmpw	$46, %dx
	je	.L1747
	cmpw	$47, %dx
	je	.L1747
	cmpw	$49, %dx
	je	.L1747
	cmpw	$113, %dx
	jne	.L1693
	jmp	.L1747
	.p2align 6,,7
.L15540:
	cmpl	$63, 8(%r12)
	jle	.L1693
	jmp	.L1746
.L15539:
	movq	5120(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r12), %rdi
	movzbl	3(%r12), %edx
	movq	%rax, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	jmp	.L15023
.L1737:
	movl	$1, %ebx
	jmp	.L1731
.L1729:
	xorl	%ebx, %ebx
	jmp	.L1731
.L1735:
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L1737
	movq	16(%r12), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L1731
	jmp	.L1737
	.p2align 6,,7
.L15504:
	movzbl	2(%r12), %eax
	cmpb	$16, %al
	je	.L1721
	movl	cse_not_expected(%rip), %r14d
	movq	5120(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r14d, %r14d
	cmove	%r12, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r13
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L1747
	testb	%al, %al
	je	.L1747
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15290
	.p2align 6,,7
.L15503:
	cmpb	$16, 2(%r12)
	jne	.L1694
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.L1698
.L13803:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L1700
	cmpl	$55, %eax
	je	.L15541
.L1704:
	cmpl	$63, %eax
	je	.L1707
	cmpl	$66, %eax
	je	.L1707
.L1703:
	movq	5120(%rsp), %r15
	xorl	%eax, %eax
	movq	%r13, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r15), %rdi
	call	jumpifnot
	movq	40(%r15), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	%ebp, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L1713
.L13805:
	movq	%r14, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	5120(%rsp), %r13
	movq	%r12, %rsi
	movq	48(%r13), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L1718
.L13807:
	movq	%r14, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L1667
.L1718:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rbp
	movq	%rax, 16(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, pending_chain(%rip)
	movq	%rbp, %rbx
	jne	.L1718
	jmp	.L13807
	.p2align 6,,7
.L1713:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r11
	movq	%rax, 16(%rbx)
	testq	%r11, %r11
	movq	%r11, pending_chain(%rip)
	movq	%r11, %rbx
	jne	.L1713
	jmp	.L13805
.L1707:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L1703
.L15541:
	jne	.L1704
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L1703
.L1700:
	cmpq	$0, 16(%r12)
	jne	.L1708
	movq	8(%r12), %r12
	jmp	.L1703
.L1708:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1709
	movq	%rdi, %r12
	jmp	.L1703
.L1709:
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L1703
	.p2align 6,,7
.L1698:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L1698
	jmp	.L13803
	.p2align 6,,7
.L15502:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L1690
.L13801:
	movq	5120(%rsp), %rax
	movq	%r12, %rsi
	movl	%ebp, %edx
	movq	40(%rax), %rdi
	xorl	%eax, %eax
	call	store_expr
	jmp	.L1667
.L1690:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L1690
	jmp	.L13801
.L15501:
	movq	16(%rdi), %rdx
	cmpw	$46, (%rdx)
	jne	.L1683
	movq	8(%rdi), %rax
	cmpq	virtual_incoming_args_rtx(%rip), %rax
	je	.L1682
	cmpq	virtual_stack_vars_rtx(%rip), %rax
	jne	.L1683
	jmp	.L1682
	.p2align 6,,7
.L1675:
	movq	5120(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	%r14d, %r9d
	movl	%ebx, %ecx
	movl	5116(%rsp), %r8d
	movq	56(%rsp), %rdi
	movl	%r15d, %edx
	movq	%rax, %r13
	movl	%ebp, %esi
	movl	%r8d, (%rsp)
	movq	%rax, %r8
	xorl	%eax, %eax
	call	store_bit_field
	xorl	%edx, %edx
	testl	%edx, %edx
	je	.L1667
	movl	2164(%rsp), %esi
	testl	%esi, %esi
	je	.L1678
	movq	56(%rsp), %r9
	movl	(%r9), %eax
	andl	$134283263, %eax
	cmpl	$134217783, %eax
	je	.L1678
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L1679
	movl	2164(%rsp), %edx
	xorl	%esi, %esi
	movl	$46, %edi
	call	gen_rtx
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	expand_and
	jmp	.L1667
.L1679:
	movzbl	2(%r13), %r14d
	movl	$0, %r15d
	testl	%r14d, %r14d
	cmove	%r15d, %r14d
	xorl	%esi, %esi
	movslq	%r14d,%rcx
	movl	mode_size(,%rcx,4), %edi
	sall	$3, %edi
	subl	%ebp, %edi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rbp
	movl	%r14d, %esi
	movq	%r13, %rdx
	movq	%rax, %rcx
	movl	$77, %edi
	xorl	%eax, %eax
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movl	$78, %edi
	movl	%r14d, %esi
	movq	%rbp, %rcx
	xorl	%eax, %eax
	call	expand_shift
	jmp	.L1667
.L1678:
	movl	5116(%rsp), %r13d
	movq	56(%rsp), %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%r13d, 16(%rsp)
	call	extract_bit_field
	jmp	.L1667
.L15500:
	movq	56(%rsp), %r11
	movzwl	(%r11), %eax
	cmpw	$51, %ax
	je	.L1671
	cmpw	$53, %ax
	jne	.L1670
.L1671:
	movq	56(%rsp), %r12
	xorl	%edx, %edx
	movzbl	2(%r12), %edi
	movslq	%edi,%rbx
	movl	mode_size(,%rbx,4), %esi
	call	assign_stack_temp
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	copy_rtx
	movq	56(%rsp), %rdx
	movb	$16, 2(%rax)
	movq	%rax, %r12
	movzbq	2(%rdx), %r10
	movl	mode_size(,%r10,4), %eax
	sall	$3, %eax
	cmpl	%eax, %ebp
	je	.L1672
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	call	emit_move_insn
.L1672:
	movl	5116(%rsp), %eax
	movq	5120(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	movl	$0, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%eax, 16(%rsp)
	xorl	%eax, %eax
	call	store_field
	movq	%rbx, %rsi
	movq	56(%rsp), %rdi
	jmp	.L15022
.L15499:
	testb	$4, 18(%r15)
	je	.L1659
.L1660:
	movq	56(%rsp), %rdi
	cmpb	$16, 2(%rdi)
	je	.L15542
	movq	56(%rsp), %rdi
	movq	const0_rtx(%rip), %rsi
	call	emit_move_insn
	jmp	.L1664
.L15542:
	xorl	%esi, %esi
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	movl	$4, %r9d
	movq	56(%rsp), %r14
	movq	const0_rtx(%rip), %r8
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movq	memset_libfunc(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%r8, (%rsp)
	movq	8(%r14), %r8
	call	emit_library_call
	jmp	.L1664
.L15455:
	movl	5412(%rsp), %edi
	call	gen_reg_rtx
	movq	%rax, 56(%rsp)
	jmp	.L1111
.L15454:
	cmpw	$55, (%r12)
	jne	.L1164
	testb	$32, 17(%r15)
.L15287:
	je	.L1114
	jmp	.L1164
	.p2align 6,,7
.L15453:
	movq	8(%r12), %r12
	cmpw	$51, (%r12)
	jne	.L1161
	cmpl	$63, 8(%r12)
	jg	.L1161
.L14907:
	xorl	%ebx, %ebx
	jmp	.L1114
.L1128:
	movq	32(%r15), %rsi
	movq	%rbp, %rdi
.L15286:
	xorl	%eax, %eax
	call	safe_from_p
.L15006:
	movl	%eax, %ebx
	jmp	.L1114
.L1130:
	movq	32(%r15), %rsi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	xorl	%ebx, %ebx
	call	safe_from_p
	testl	%eax, %eax
	je	.L1114
	movq	%rbp, %rdi
	movq	40(%r15), %rsi
.L15288:
	xorl	%eax, %eax
	call	safe_from_p
	testl	%eax, %eax
	jmp	.L15287
	.p2align 6,,7
.L1133:
	movzbl	%dl, %eax
	subl	$39, %eax
	cmpl	$67, %eax
	ja	.L1134
	mov	%eax, %ebx
	jmp	*.L1149(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L1149:
	.quad	.L1136
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1147
	.quad	.L1138
	.quad	.L15283
	.quad	.L1145
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1134
	.quad	.L1146
	.quad	.L1143
	.quad	.L1135
	.text
.L1135:
	movq	32(%r15), %rdi
	call	staticp
	jmp	.L15006
.L1136:
	xorl	%ebx, %ebx
	cmpw	$55, %cx
	je	.L1114
.L1134:
	testq	%r12, %r12
	jne	.L14852
	movzbl	%dl, %r8d 
	xorl	%ebx, %ebx
	salq	$2, %r8
	addq	tree_code_length(%rip), %r8
	movl	(%r8), %r13d
	cmpl	%r13d, %ebx
	jge	.L1119
.L1157:
	movslq	%ebx,%rdx
	movq	32(%r15,%rdx,8), %rsi
	testq	%rsi, %rsi
	jne	.L15543
.L1154:
	incl	%ebx
	cmpl	%r13d, %ebx
	jl	.L1157
	jmp	.L1119
	.p2align 6,,7
.L15543:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	safe_from_p
	testl	%eax, %eax
	jne	.L1154
	jmp	.L14907
.L1147:
	movq	%rbp, %rdi
	movq	40(%r15), %rsi
	jmp	.L15286
.L1138:
	movq	48(%r15), %r12
	testq	%r12, %r12
	jne	.L14852
	cmpw	$51, %cx
	je	.L15544
.L1142:
	cmpw	$55, %cx
	jne	.L1134
	jmp	.L14907
.L15544:
	cmpl	$63, 8(%rbp)
	jle	.L14907
	jmp	.L1142
.L1145:
	movq	40(%r15), %r12
	jmp	.L1134
.L1146:
	movq	48(%r15), %r12
	jmp	.L1134
.L1143:
	movq	40(%r15), %r12
	xorl	%ebx, %ebx
	jmp	.L15005
	.p2align 6,,7
.L1122:
	cmpb	$3, %dl
	jne	.L14907
	movq	32(%r15), %rsi
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	jne	.L15545
.L1125:
	movq	(%r15), %rsi
	movq	%rbp, %rdi
	testq	%rsi, %rsi
	jne	.L15288
	jmp	.L1164
.L15545:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	safe_from_p
	testl	%eax, %eax
	je	.L1114
	jmp	.L1125
	.p2align 6,,7
.L15452:
	movq	8(%rbp), %rax
	movq	virtual_outgoing_args_rtx(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L1164
	cmpw	$63, (%rax)
	jne	.L1117
	cmpq	%rdx, 8(%rax)
	jne	.L1117
	jmp	.L1164
	.p2align 6,,7
.L15451:
	movq	8(%rbp), %rbp
	movl	(%rbp), %ecx
	cmpw	$51, %cx
	jne	.L1115
	cmpl	$63, 8(%rbp)
	jg	.L1115
	jmp	.L14907
	.p2align 6,,7
.L3780:
	movq	32(%r15), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L3784
.L13944:
	leaq	40(%r15), %rax
	movq	56(%rsp), %rsi
	movl	5408(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L3789
	movq	const0_rtx(%rip), %rsi
.L3789:
	movq	(%rax), %rdi
	jmp	.L15404
.L3784:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L3784
	jmp	.L13944
.L10200:
	movq	32(%r15), %r14
	movq	%r14, 3176(%rsp)
	movq	40(%r15), %rsi
	movq	$0, 320(%rsp)
	movq	%rsi, 2800(%rsp)
	movzbl	16(%r14), %edx
	movq	8(%r14), %rbx
	cmpb	$33, %dl
	je	.L10201
	cmpb	$35, %dl
	je	.L10201
	cmpb	$34, %dl
	je	.L10201
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	preexpand_calls
	movq	3176(%rsp), %rdi
	movzbl	16(%rdi), %edx
.L10201:
	movl	5408(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L10202
	cmpb	$37, %dl
	je	.L15546
.L10202:
	cmpq	$0, 128(%rbx)
	je	.L11191
	leal	-33(%rdx), %r10d
	cmpb	$1, %r10b
	jbe	.L11194
	cmpb	$50, %dl
	je	.L11194
	cmpb	$47, %dl
	je	.L11194
	cmpb	$37, %dl
	je	.L11194
	xorl	%eax, %eax
	cmpb	$42, %dl
	je	.L11194
.L11195:
	testl	%eax, %eax
	je	.L11192
	movq	2800(%rsp), %r11
	movzbl	16(%r11), %ecx
	leal	-33(%rcx), %esi
	cmpb	$1, %sil
	jbe	.L11197
	cmpb	$50, %cl
	je	.L11197
	cmpb	$47, %cl
	je	.L11197
	cmpb	$37, %cl
	je	.L11197
	xorl	%eax, %eax
	cmpb	$42, %cl
	je	.L11197
.L11198:
	testl	%eax, %eax
	jne	.L11191
.L11192:
	movq	3176(%rsp), %rdi
	call	stabilize_reference
	movq	%rax, 2928(%rsp)
	movq	128(%rbx), %rcx
	movq	$0, 544(%rsp)
	testq	%rcx, %rcx
	movq	%rcx, 600(%rsp)
	je	.L14619
.L11660:
	movq	600(%rsp), %rbx
	movq	32(%rbx), %rcx
	cmpb	$3, 16(%rcx)
	je	.L15547
	movq	8(%rcx), %rbp
	movq	2928(%rsp), %rdx
	movl	$37, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	call	build
	movq	%rbp, %rdi
	movq	%rax, %r12
	call	int_size_in_bytes
	xorl	%edx, %edx
	movzbl	44(%rbp), %edi
	movl	%eax, %esi
	call	assign_stack_temp
	movzbl	44(%rbp), %edi
	movq	8(%rax), %rsi
	movq	%rax, %rbx
	xorl	%eax, %eax
	call	memory_address_p
	testl	%eax, %eax
	je	.L15548
.L11205:
	movq	%rbp, %rsi
	xorl	%edx, %edx
	movl	$105, %edi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	call	build
	movq	544(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rax, %rsi
	xorl	%r12d, %r12d
	call	tree_cons
	movq	%rax, 544(%rsp)
	movq	32(%rax), %rdi
	movq	24(%rax), %r15
	movzbl	16(%r15), %eax
	movq	40(%rdi), %rbp
	cmpb	$44, %al
	je	.L15549
	cmpb	$48, %al
	je	.L15550
.L11214:
	xorl	%r13d, %r13d
	testl	%r13d, %r13d
	je	.L11241
	cmpw	$55, (%rbp)
	je	.L15551
.L11241:
	movzwl	(%rbp), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L11249
	mov	%eax, %esi
	jmp	*.L11258(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L11258:
	.quad	.L11252
	.quad	.L11249
	.quad	.L11249
	.quad	.L11249
	.quad	.L11257
	.quad	.L11249
	.quad	.L11249
	.quad	.L11249
	.quad	.L11255
	.quad	.L11255
	.quad	.L11249
	.quad	.L11255
	.text
.L11252:
	movq	8(%rbp), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L11251:
	testl	%ebx, %ebx
	je	.L11248
	movzbl	2(%rbp), %eax
	cmpb	$16, %al
	je	.L11260
	testb	%al, %al
	jne	.L15552
.L11260:
	movzbl	2(%rbp), %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
.L15203:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15363:
	movq	%rax, %r13
.L11267:
	movl	$1, %r12d
.L11213:
	cmpq	%rbp, %r13
	je	.L11201
	cmpb	$0, 16(%r15)
	je	.L11201
	movzwl	(%rbp), %eax
	cmpl	$59, %eax
	je	.L11269
	cmpl	$55, %eax
	je	.L15553
.L11273:
	cmpl	$63, %eax
	je	.L11276
	cmpl	$66, %eax
	je	.L11276
.L11272:
	movzbl	2(%r13), %eax
	movzbl	2(%rbp), %ecx
	cmpb	%cl, %al
	je	.L11279
	testb	%al, %al
	je	.L11279
	movq	8(%r15), %rdi
	movzbl	17(%rdi), %ebx
	shrb	$6, %bl
	movl	%ebx, %edx
	andl	$1, %edx
	testl	%r12d, %r12d
	je	.L11280
	movzbl	%cl, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rbp, %rdi
	movq	%rax, %rsi
.L15209:
	call	emit_move_insn
.L11201:
	movq	600(%rsp), %r13
	movq	(%r13), %rbp
	testq	%rbp, %rbp
	movq	%rbp, 600(%rsp)
	jne	.L11660
.L14619:
	movq	544(%rsp), %r11
	movq	3176(%rsp), %rsi
	movq	%r11, 320(%rsp)
	movzbl	16(%rsi), %edx
.L11191:
	xorl	%ebx, %ebx
	movq	$0, 56(%rsp)
	cmpl	$0, 5408(%rsp)
	sete	%bl
	testb	%dl, %dl
	movl	%ebx, 2796(%rsp)
	je	.L15554
	leal	-37(%rdx), %r14d
	cmpb	$1, %r14b
	jbe	.L11665
	cmpb	$42, %dl
	je	.L15555
.L11664:
	cmpq	$0, 56(%rsp)
	je	.L15556
.L12181:
	cmpb	$35, %dl
	je	.L15557
	movq	2800(%rsp), %rax
	movzbl	16(%rax), %ecx
.L12182:
	cmpb	$44, %cl
	movl	$0, 540(%rsp)
	je	.L15558
	cmpb	$48, %cl
	je	.L15559
.L12191:
	movl	2796(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L12218
	movq	56(%rsp), %rdi
	cmpw	$55, (%rdi)
	je	.L15560
.L12218:
	movq	56(%rsp), %r15
	movzwl	(%r15), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L12226
	mov	%eax, %edi
	jmp	*.L12235(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L12235:
	.quad	.L12229
	.quad	.L12226
	.quad	.L12226
	.quad	.L12226
	.quad	.L12234
	.quad	.L12226
	.quad	.L12226
	.quad	.L12226
	.quad	.L12232
	.quad	.L12232
	.quad	.L12226
	.quad	.L12232
	.text
.L12229:
	movq	56(%rsp), %r12
	xorl	%eax, %eax
	movq	8(%r12), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L12228:
	testl	%ebx, %ebx
	je	.L12225
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L12237
	testb	%al, %al
	jne	.L15561
.L12237:
	movq	56(%rsp), %rbx
	movq	2800(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%rbx), %edx
.L15220:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15366:
	movq	%rax, %r12
.L12244:
	movl	$1, 540(%rsp)
.L12190:
	cmpq	56(%rsp), %r12
	je	.L12245
	movq	2800(%rsp), %r10
	cmpb	$0, 16(%r10)
	je	.L12245
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L12246
	cmpl	$55, %eax
	je	.L15562
.L12250:
	cmpl	$63, %eax
	je	.L12253
	cmpl	$66, %eax
	je	.L12253
.L12249:
	movq	56(%rsp), %rbx
	movzbl	2(%r12), %eax
	movzbl	2(%rbx), %ecx
	cmpb	%cl, %al
	je	.L12256
	testb	%al, %al
	je	.L12256
	movq	2800(%rsp), %rbp
	movl	540(%rsp), %eax
	movq	8(%rbp), %r10
	movzbl	17(%r10), %r8d
	shrb	$6, %r8b
	movl	%r8d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L12257
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rbx, %rdi
	movq	%rax, %r12
.L15227:
	movq	%r12, %rsi
	call	emit_move_insn
.L12245:
	movl	540(%rsp), %edx
	testl	%edx, %edx
	cmove	56(%rsp), %r12
.L12189:
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	preserve_temp_slots
	xorl	%eax, %eax
	call	free_temp_slots
	movq	%r12, 56(%rsp)
.L11663:
	cmpq	$0, 320(%rsp)
	je	.L581
.L13615:
	movq	320(%rsp), %r12
	xorl	%r13d, %r13d
	movq	24(%r12), %r14
	movq	32(%r12), %rdi
	movq	%rdi, 2568(%rsp)
	movzbl	16(%r14), %edx
	testb	%dl, %dl
	je	.L15563
	leal	-37(%rdx), %ebp
	cmpb	$1, %bpl
	jbe	.L12643
	cmpb	$42, %dl
	je	.L15564
.L12642:
	testq	%r13, %r13
	je	.L15565
.L13159:
	cmpb	$35, %dl
	je	.L15566
	movq	2568(%rsp), %rsi
	movzbl	16(%rsi), %eax
.L13160:
	cmpb	$44, %al
	movl	$0, 316(%rsp)
	je	.L15567
	cmpb	$48, %al
	je	.L15568
.L13169:
	xorl	%ecx, %ecx
	testl	%ecx, %ecx
	je	.L13196
	cmpw	$55, (%r13)
	je	.L15569
.L13196:
	movzwl	(%r13), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L13204
	mov	%eax, %r12d
	jmp	*.L13213(,%r12,8)
	.section	.rodata
	.align 8
	.align 4
.L13213:
	.quad	.L13207
	.quad	.L13204
	.quad	.L13204
	.quad	.L13204
	.quad	.L13212
	.quad	.L13204
	.quad	.L13204
	.quad	.L13204
	.quad	.L13210
	.quad	.L13210
	.quad	.L13204
	.quad	.L13210
	.text
.L13207:
	movq	8(%r13), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L13206:
	testl	%ebx, %ebx
	je	.L13203
	movzbl	2(%r13), %eax
	cmpb	$16, %al
	je	.L13215
	testb	%al, %al
	jne	.L15570
.L13215:
	movzbl	2(%r13), %edx
	movq	2568(%rsp), %rdi
	xorl	%esi, %esi
.L15238:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15369:
	movq	%rax, %r12
.L13222:
	movl	$1, 316(%rsp)
.L13168:
	cmpq	%r13, %r12
	je	.L13223
	movq	2568(%rsp), %r15
	cmpb	$0, 16(%r15)
	je	.L13223
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L13224
	cmpl	$55, %eax
	je	.L15571
.L13228:
	cmpl	$63, %eax
	je	.L13231
	cmpl	$66, %eax
	je	.L13231
.L13227:
	movzbl	2(%r12), %eax
	movzbl	2(%r13), %ecx
	cmpb	%cl, %al
	je	.L13234
	testb	%al, %al
	je	.L13234
	movq	2568(%rsp), %r9
	movl	316(%rsp), %r8d
	movq	8(%r9), %rbx
	movzbl	17(%rbx), %edi
	shrb	$6, %dil
	movl	%edi, %edx
	andl	$1, %edx
	testl	%r8d, %r8d
	je	.L13235
	movq	%r12, %rsi
	movzbl	%cl, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r12
.L13490:
	movq	%r13, %rdi
	movq	%r12, %rsi
	call	emit_move_insn
.L13223:
	movl	316(%rsp), %edi
	testl	%edi, %edi
	cmove	%r13, %r12
.L13167:
	movq	%r12, %rdi
.L15244:
	xorl	%eax, %eax
	call	preserve_temp_slots
	xorl	%eax, %eax
	call	free_temp_slots
.L12641:
	movq	320(%rsp), %r12
	movq	(%r12), %r13
	testq	%r13, %r13
	movq	%r13, 320(%rsp)
	jne	.L13615
	jmp	.L581
.L13235:
	movq	%r13, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L13223
.L13234:
	cmpb	$16, %al
	jne	.L13490
	movq	2568(%rsp), %rdi
	cmpb	$28, 16(%rdi)
	je	.L15572
	cmpb	$16, %al
	jne	.L13490
	movq	2568(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 216(%rsp)
	call	expr_size
	movq	%rax, %r14
	movq	2568(%rsp), %rax
	movq	8(%rax), %rbx
	movl	48(%rbx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 212(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 224(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L13493
	cmpl	$55, %eax
	je	.L15573
	cmpl	$63, %eax
	je	.L13500
	cmpl	$66, %eax
	je	.L13500
.L13496:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L13503
	cmpl	$55, %eax
	je	.L15574
.L13507:
	cmpl	$63, %eax
	je	.L13510
	cmpl	$66, %eax
	je	.L13510
.L13506:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L13513
	cmpl	$55, %eax
	je	.L15575
.L13517:
	cmpl	$63, %eax
	je	.L13520
	cmpl	$66, %eax
	je	.L13520
.L13516:
	movq	224(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	216(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	testq	%r14, %r14
	je	.L15283
	cmpw	$46, (%r14)
	je	.L15576
.L13526:
	movl	212(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2360(%rsp)
	testl	%ebp, %ebp
	je	.L14841
.L13612:
	movslq	%ebp,%rax
	movq	%rax, 2352(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L13600
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L13604
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L13600
.L13604:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r15
	movq	%r10, 2344(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15577
.L13605:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15578
.L13606:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L13607
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2360(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L13600
.L13607:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, 2336(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15579
.L13608:
	movq	2344(%rsp), %rbp
	movq	224(%rsp), %rdi
	xorl	%eax, %eax
	movq	216(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2360(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14993
	movq	2336(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L13600:
	movq	2352(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L13612
.L14841:
	movq	%r14, %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	216(%rsp), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rsi), %r14
	xorl	%esi, %esi
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	224(%rsp), %rax
	movq	%r14, (%rsp)
.L15243:
	movq	8(%rax), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L13223
.L14993:
	call	emit_insn
	jmp	.L13223
	.p2align 6,,7
.L15579:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L13608
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13608
	.p2align 6,,7
.L15578:
	xorl	%eax, %eax
	movq	216(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13600
	jmp	.L13606
.L15577:
	xorl	%eax, %eax
	movq	224(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13600
	jmp	.L13605
.L15576:
	movl	8(%r14), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 212(%rsp)
	movl	$9, %edi
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	212(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %r8d
.L13540:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14832
.L13536:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%edi, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L13536
.L14832:
	testl	%ecx, %ecx
	je	.L13529
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L13538
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L13538
	movl	%r8d, %eax
	movl	%edx, %r8d
	xorl	%edx, %edx
	divl	%r8d
	addl	%eax, %r9d
	movl	%edx, %r8d
.L13538:
	movl	mode_size(,%rcx,4), %edi
	cmpl	$1, %edi
	jg	.L13540
.L13529:
	decl	%r9d
	jg	.L13526
	movq	216(%rsp), %rcx
	movq	224(%rsp), %r9
	movl	%r10d, %r14d
	movl	$9, %r15d
	movq	8(%r9), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5672(%rsp)
	movl	$0, 5700(%rsp)
	movq	%r9, 5648(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5656(%rsp)
	movq	%rdi, 5680(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L13543
	cmpw	$88, %dx
	je	.L13543
	cmpw	$87, %dx
	je	.L13543
.L13542:
	movl	%ecx, 5664(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L13545
	cmpw	$88, %dx
	je	.L13545
	cmpw	$87, %dx
	je	.L13545
.L13544:
	movl	%ecx, 5688(%rsp)
	movl	$0, 5692(%rsp)
	movl	$0, 5668(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L13547
	cmpw	$87, %ax
	je	.L13547
.L13546:
	testl	%edx, %edx
	movl	%edx, 5704(%rsp)
	je	.L13548
	movl	%r10d, 5700(%rsp)
.L13548:
	movl	%r10d, 5696(%rsp)
	movl	5688(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L13550
	movl	5664(%rsp), %eax
	testl	%eax, %eax
	jne	.L13549
.L13550:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 212(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	212(%rsp), %ebp
.L13564:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14835
.L13560:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L13560
.L14835:
	testl	%ecx, %ecx
	je	.L13553
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L13562
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L13562
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L13562:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L13564
.L13553:
	cmpl	$2, %r9d
	jle	.L13549
	testl	%r10d, %r10d
	jne	.L13566
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L13567
	cmpw	$46, %dx
	je	.L13567
	cmpw	$47, %dx
	je	.L13567
	cmpw	$49, %dx
	je	.L13567
	cmpw	$113, %dx
	je	.L13567
.L13566:
	movl	5664(%rsp), %esi
	testl	%esi, %esi
	jne	.L13549
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L13569
	cmpw	$46, %dx
	je	.L13569
	cmpw	$47, %dx
	je	.L13569
	cmpw	$49, %dx
	je	.L13569
	cmpw	$113, %dx
	je	.L13569
.L13549:
	cmpl	$8, 212(%rsp)
	movl	$8, %eax
	cmovl	212(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 212(%rsp)
	jle	.L13572
.L13594:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r14d, %r14d
	testl	%edx, %edx
	je	.L14838
.L13579:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r14d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L13579
.L14838:
	testl	%r14d, %r14d
	je	.L13572
	movslq	%r14d,%r15
	movq	%r15, %r8
	salq	$4, %r8
	addq	mov_optab(%rip), %r8
	movl	8(%r8), %edx
	cmpl	$210, %edx
	je	.L13581
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 212(%rsp)
	jl	.L13581
	movslq	%edx,%r9
	cmpl	%ebp, 5696(%rsp)
	leaq	5648(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %rcx
	movq	%rcx, 2368(%rsp)
	jl	.L13581
	movl	5704(%rsp), %edx
.L13592:
	testl	%edx, %edx
	je	.L13586
	subl	%ebp, 52(%rbx)
.L13586:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L13587
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15242:
	movl	40(%rbx), %r11d
	movq	%rax, 200(%rsp)
	testl	%r11d, %r11d
	je	.L13589
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L13590:
	movq	%rax, %rsi
	movq	200(%rsp), %rdi
	xorl	%eax, %eax
	call	*2368(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L13591
	addl	%ebp, 52(%rbx)
.L13591:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L13592
.L13581:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L13594
.L13572:
	movl	5696(%rsp), %r15d
	testl	%r15d, %r15d
.L15402:
	je	.L13223
	jmp	.L15283
	.p2align 6,,7
.L13589:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L13590
.L13587:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15242
.L13569:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5656(%rsp)
	jmp	.L13549
.L13567:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5680(%rsp)
	jmp	.L13566
.L13547:
	movl	$1, %edx
	jmp	.L13546
.L13545:
	movl	$1, %ecx
	jmp	.L13544
.L13543:
	movl	$1, %ecx
	jmp	.L13542
.L13520:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L13516
.L15575:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L13514
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15580
.L13514:
	cmpl	$55, %eax
	jne	.L13517
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L13516
.L15580:
	movq	8(%rbp), %rbx
	movq	%rbx, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L13516
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	%r15, %r14
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13516
	.p2align 6,,7
.L13513:
	cmpq	$0, 16(%r14)
	jne	.L13521
	movq	8(%r14), %r14
	jmp	.L13516
.L13521:
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L13522
	movq	%rsi, %r14
	jmp	.L13516
.L13522:
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L13516
.L13510:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L13506
.L15574:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L13504
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15581
.L13504:
	cmpl	$55, %eax
	jne	.L13507
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L13506
.L15581:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L13506
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r15, 216(%rsp)
	jmp	.L13506
	.p2align 6,,7
.L13503:
	cmpq	$0, 16(%r12)
	jne	.L13511
	movq	8(%r12), %rbp
	movq	%rbp, 216(%rsp)
	jmp	.L13506
.L13511:
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 216(%rsp)
	jne	.L13506
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rsi
	movq	%rsi, 216(%rsp)
	jmp	.L13506
.L13500:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L13496
.L15573:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L13496
	.p2align 6,,7
.L13493:
	cmpq	$0, 16(%r13)
	jne	.L13501
	movq	8(%r13), %r11
	movq	%r11, 224(%rsp)
	jmp	.L13496
.L13501:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 224(%rsp)
	jne	.L13496
	movq	8(%r13), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r8
	movq	%r8, 224(%rsp)
	jmp	.L13496
	.p2align 6,,7
.L15572:
	xorl	%eax, %eax
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 288(%rsp)
	je	.L15582
.L13239:
	movl	$8, %edi
	call	size_int
	movq	2568(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r11
	movl	$57, %edi
	movq	32(%r11), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	2568(%rsp), %rbx
	movq	%rax, %r15
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r15, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	2568(%rsp), %r9
	movq	$0, 232(%rsp)
	movq	%rax, 256(%rsp)
	movq	%rax, %r15
	movq	8(%r9), %rsi
	movl	48(%rsi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 252(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 264(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L13365
	cmpl	$55, %eax
	je	.L15583
	cmpl	$63, %eax
	je	.L13372
	cmpl	$66, %eax
	je	.L13372
.L13368:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L13375
	cmpl	$55, %eax
	je	.L15584
.L13379:
	cmpl	$63, %eax
	je	.L13382
	cmpl	$66, %eax
	je	.L13382
.L13378:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L13385
	cmpl	$55, %eax
	je	.L15585
.L13389:
	cmpl	$63, %eax
	je	.L13392
	cmpl	$66, %eax
	je	.L13392
.L13388:
	movq	264(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 256(%rsp)
	je	.L15283
	movq	256(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L15586
.L13398:
	movl	252(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2400(%rsp)
	testl	%ebp, %ebp
	je	.L14829
.L13484:
	movslq	%ebp,%rcx
	movq	%rcx, %rax
	movq	%rcx, 2392(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L13472
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L13476
	movq	256(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L13472
.L13476:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r14
	movq	%r10, 2384(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15587
.L13477:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15588
.L13478:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L13479
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2400(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L13472
.L13479:
	call	get_last_insn
	movl	$1, %edx
	movq	256(%rsp), %rsi
	movq	%rax, 2376(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15589
.L13480:
	movq	2384(%rsp), %rbp
	movq	264(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	2400(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14992
	movq	2376(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L13472:
	movq	2392(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L13484
.L14829:
	movq	256(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	264(%rsp), %r12
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rsp)
	xorl	%esi, %esi
	movq	8(%r12), %r8
	call	emit_library_call
.L13482:
	cmpw	$46, (%r15)
	je	.L15590
	movq	8(%r13), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	288(%rsp), %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 232(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L13486:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L13487
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L13487:
	cmpq	$0, 232(%rsp)
	je	.L13223
	movq	232(%rsp), %rdi
	call	emit_label
	jmp	.L13223
.L15590:
	movq	2568(%rsp), %r9
	movq	8(%r13), %rdi
	movl	32(%r9), %esi
	call	plus_constant_wide
	movq	288(%rsp), %rdi
	movq	2568(%rsp), %r15
	movq	%rax, %r12
	movl	32(%r15), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L13486
.L14992:
	call	emit_insn
	jmp	.L13482
	.p2align 6,,7
.L15589:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L13480
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13480
	.p2align 6,,7
.L15588:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13472
	jmp	.L13478
.L15587:
	xorl	%eax, %eax
	movq	264(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13472
	jmp	.L13477
.L15586:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 252(%rsp)
	movl	$9, %edi
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	252(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %r8d
.L13412:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14820
.L13408:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%edi, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L13408
.L14820:
	testl	%ecx, %ecx
	je	.L13401
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L13410
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L13410
	movl	%r8d, %eax
	movl	%edx, %r8d
	xorl	%edx, %edx
	divl	%r8d
	addl	%eax, %r9d
	movl	%edx, %r8d
.L13410:
	movl	mode_size(,%rcx,4), %edi
	cmpl	$1, %edi
	jg	.L13412
.L13401:
	decl	%r9d
	jg	.L13398
	movq	264(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r14d
	movq	8(%rcx), %rbx
	movq	%r12, 5672(%rsp)
	movq	%rcx, 5648(%rsp)
	movl	$0, 5700(%rsp)
	movq	%rdi, 5680(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 248(%rsp)
	movq	%rbx, 5656(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L13415
	cmpw	$88, %dx
	je	.L13415
	cmpw	$87, %dx
	je	.L13415
.L13414:
	movl	%ecx, 5664(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L13417
	cmpw	$88, %dx
	je	.L13417
	cmpw	$87, %dx
	je	.L13417
.L13416:
	movl	%ecx, 5688(%rsp)
	movl	$0, 5692(%rsp)
	movl	$0, 5668(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L13419
	cmpw	$87, %ax
	je	.L13419
.L13418:
	testl	%edx, %edx
	movl	%edx, 5704(%rsp)
	je	.L13420
	movl	%r10d, 5700(%rsp)
.L13420:
	movl	5688(%rsp), %eax
	movl	%r10d, 5696(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L13422
	movl	5664(%rsp), %eax
	testl	%eax, %eax
	jne	.L13421
.L13422:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 252(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	252(%rsp), %ebp
.L13436:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14823
.L13432:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L13432
.L14823:
	testl	%ecx, %ecx
	je	.L13425
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L13434
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L13434
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L13434:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L13436
.L13425:
	cmpl	$2, %r9d
	jle	.L13421
	testl	%r10d, %r10d
	jne	.L13438
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L13439
	cmpw	$46, %dx
	je	.L13439
	cmpw	$47, %dx
	je	.L13439
	cmpw	$49, %dx
	je	.L13439
	cmpw	$113, %dx
	je	.L13439
.L13438:
	movl	5664(%rsp), %eax
	testl	%eax, %eax
	jne	.L13421
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L13441
	cmpw	$46, %dx
	je	.L13441
	cmpw	$47, %dx
	je	.L13441
	cmpw	$49, %dx
	je	.L13441
	cmpw	$113, %dx
	je	.L13441
.L13421:
	cmpl	$8, 252(%rsp)
	movl	$8, %eax
	cmovl	252(%rsp), %eax
	cmpl	$1, 248(%rsp)
	movl	%eax, 252(%rsp)
	jle	.L13444
.L13466:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14826
.L13451:
	movslq	%edx,%r9
	movl	248(%rsp), %eax
	salq	$2, %r9
	cmpl	%eax, mode_size(%r9)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%r9), %edx
	testl	%edx, %edx
	jne	.L13451
.L14826:
	testl	%r12d, %r12d
	je	.L13444
	movslq	%r12d,%r14
	movq	%r14, %rbx
	salq	$4, %rbx
	addq	mov_optab(%rip), %rbx
	movl	8(%rbx), %edx
	cmpl	$210, %edx
	je	.L13453
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 252(%rsp)
	jl	.L13453
	movslq	%edx,%rdi
	cmpl	%ebp, 5696(%rsp)
	leaq	5648(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r11
	movq	%r11, 2408(%rsp)
	jl	.L13453
	movl	5704(%rsp), %edx
.L13464:
	testl	%edx, %edx
	je	.L13458
	subl	%ebp, 52(%rbx)
.L13458:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L13459
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15241:
	movq	%rax, 240(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L13461
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L13462:
	movq	%rax, %rsi
	movq	240(%rsp), %rdi
	xorl	%eax, %eax
	call	*2408(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L13463
	addl	%ebp, 52(%rbx)
.L13463:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L13464
.L13453:
	movl	mode_size(,%r14,4), %r8d
	movl	%r8d, 248(%rsp)
	decl	%r8d
	jg	.L13466
.L13444:
	movl	5696(%rsp), %eax
	testl	%eax, %eax
	je	.L13482
	jmp	.L15283
	.p2align 6,,7
.L13461:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L13462
.L13459:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15241
.L13441:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5656(%rsp)
	jmp	.L13421
.L13439:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5680(%rsp)
	jmp	.L13438
.L13419:
	movl	$1, %edx
	jmp	.L13418
.L13417:
	movl	$1, %ecx
	jmp	.L13416
.L13415:
	movl	$1, %ecx
	jmp	.L13414
.L13392:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L13388
.L15585:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L13386
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15591
.L13386:
	cmpl	$55, %eax
	jne	.L13389
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L13388
.L15591:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L13388
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 256(%rsp)
	jmp	.L13388
.L13385:
	cmpq	$0, 16(%r15)
	jne	.L13393
	movq	8(%r15), %rax
	movq	%rax, 256(%rsp)
	jmp	.L13388
.L13393:
	movq	24(%r15), %r9
	testq	%r9, %r9
	movq	%r9, 256(%rsp)
	jne	.L13388
	movq	8(%r15), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rbx
	movq	%rbx, 256(%rsp)
	jmp	.L13388
.L13382:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L13378
.L15584:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L13376
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15592
.L13376:
	cmpl	$55, %eax
	jne	.L13379
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L13378
.L15592:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L13378
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13378
.L13375:
	cmpq	$0, 16(%r12)
	jne	.L13383
	movq	8(%r12), %r12
	jmp	.L13378
.L13383:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L13384
	movq	%rdi, %r12
	jmp	.L13378
.L13384:
	movq	8(%r12), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L13378
.L13372:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L13368
.L15583:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L13368
.L13365:
	cmpq	$0, 16(%r13)
	jne	.L13373
	movq	8(%r13), %rcx
	movq	%rcx, 264(%rsp)
	jmp	.L13368
.L13373:
	movq	24(%r13), %r8
	testq	%r8, %r8
	movq	%r8, 264(%rsp)
	jne	.L13368
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r14
	movq	%r14, 264(%rsp)
	jmp	.L13368
	.p2align 6,,7
.L15582:
	movq	2568(%rsp), %r8
	movq	288(%rsp), %rcx
	movl	32(%r8), %eax
	cmpl	%eax, 8(%rcx)
	jge	.L13239
	movq	%r12, 296(%rsp)
	movq	8(%r8), %r11
	movl	48(%r11), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 284(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 304(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L13242
	cmpl	$55, %eax
	je	.L15593
	cmpl	$63, %eax
	je	.L13249
	cmpl	$66, %eax
	je	.L13249
.L13245:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L13252
	cmpl	$55, %eax
	je	.L15594
.L13256:
	cmpl	$63, %eax
	je	.L13259
	cmpl	$66, %eax
	je	.L13259
.L13255:
	movq	288(%rsp), %r8
	movzwl	(%r8), %eax
	cmpl	$59, %eax
	je	.L13262
	cmpl	$55, %eax
	je	.L15595
.L13266:
	cmpl	$63, %eax
	je	.L13269
	cmpl	$66, %eax
	je	.L13269
.L13265:
	movq	304(%rsp), %r9
	cmpw	$55, (%r9)
	jne	.L15283
	movq	296(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpq	$0, 288(%rsp)
	je	.L15283
	movq	288(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L15596
.L13275:
	movl	284(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2432(%rsp)
	testl	%ebp, %ebp
	je	.L14817
.L13361:
	movslq	%ebp,%rax
	movq	%rax, 2424(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L13349
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L13353
	movq	288(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L13349
.L13353:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15597
.L13354:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15598
.L13355:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L13356
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2432(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L13349
.L13356:
	call	get_last_insn
	movl	$1, %edx
	movq	288(%rsp), %rsi
	movq	%rax, 2416(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15599
.L13357:
	movq	304(%rsp), %rdi
	xorl	%eax, %eax
	movq	296(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2432(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14993
	movq	2416(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L13349:
	movq	2424(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L13361
.L14817:
	movq	288(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	296(%rsp), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%r10), %rbp
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	304(%rsp), %rax
	movl	$4, 8(%rsp)
	movq	%rbp, (%rsp)
	jmp	.L15243
.L15599:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L13357
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13357
.L15598:
	xorl	%eax, %eax
	movq	296(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13349
	jmp	.L13355
	.p2align 6,,7
.L15597:
	xorl	%eax, %eax
	movq	304(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13349
	jmp	.L13354
.L15596:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 284(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	284(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L13289:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14808
.L13285:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L13285
.L14808:
	testl	%ecx, %ecx
	je	.L13278
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L13287
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L13287
	movl	%edi, %eax
	movl	%edx, %r15d
	xorl	%edx, %edx
	divl	%r15d
	addl	%eax, %r9d
	movl	%edx, %edi
.L13287:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L13289
.L13278:
	decl	%r9d
	jg	.L13275
	movq	296(%rsp), %rcx
	movq	304(%rsp), %rbp
	movl	%r10d, %r14d
	movl	$9, %r15d
	movq	8(%rbp), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5608(%rsp)
	movl	$0, 5636(%rsp)
	movq	%rbp, 5584(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5592(%rsp)
	movq	%rdi, 5616(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L13292
	cmpw	$88, %dx
	je	.L13292
	cmpw	$87, %dx
	je	.L13292
.L13291:
	movl	%ecx, 5600(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L13294
	cmpw	$88, %dx
	je	.L13294
	cmpw	$87, %dx
	je	.L13294
.L13293:
	movl	%ecx, 5624(%rsp)
	movl	$0, 5628(%rsp)
	movl	$0, 5604(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L13296
	cmpw	$87, %ax
	je	.L13296
.L13295:
	testl	%edx, %edx
	movl	%edx, 5640(%rsp)
	je	.L13297
	movl	%r10d, 5636(%rsp)
.L13297:
	movl	%r10d, 5632(%rsp)
	movl	5624(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L13299
	movl	5600(%rsp), %eax
	testl	%eax, %eax
	jne	.L13298
.L13299:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 284(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	284(%rsp), %ebp
.L13313:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14811
.L13309:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L13309
.L14811:
	testl	%ecx, %ecx
	je	.L13302
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L13311
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L13311
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L13311:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L13313
.L13302:
	cmpl	$2, %r9d
	jle	.L13298
	testl	%r10d, %r10d
	jne	.L13315
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L13316
	cmpw	$46, %dx
	je	.L13316
	cmpw	$47, %dx
	je	.L13316
	cmpw	$49, %dx
	je	.L13316
	cmpw	$113, %dx
	je	.L13316
.L13315:
	movl	5600(%rsp), %esi
	testl	%esi, %esi
	jne	.L13298
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L13318
	cmpw	$46, %dx
	je	.L13318
	cmpw	$47, %dx
	je	.L13318
	cmpw	$49, %dx
	je	.L13318
	cmpw	$113, %dx
	je	.L13318
.L13298:
	cmpl	$8, 284(%rsp)
	movl	$8, %eax
	cmovl	284(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 284(%rsp)
	jle	.L13321
.L13343:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r14d, %r14d
	testl	%edx, %edx
	je	.L14814
.L13328:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r14d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L13328
.L14814:
	testl	%r14d, %r14d
	je	.L13321
	movslq	%r14d,%r15
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L13330
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 284(%rsp)
	jl	.L13330
	movslq	%edx,%rcx
	cmpl	%ebp, 5632(%rsp)
	leaq	5584(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %r11
	movq	%r11, 2440(%rsp)
	jl	.L13330
	movl	5640(%rsp), %edx
.L13341:
	testl	%edx, %edx
	je	.L13335
	subl	%ebp, 52(%rbx)
.L13335:
	movl	16(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L13336
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15240:
	movq	%rax, 272(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L13338
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L13339:
	movq	%rax, %rsi
	movq	272(%rsp), %rdi
	xorl	%eax, %eax
	call	*2440(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L13340
	addl	%ebp, 52(%rbx)
.L13340:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L13341
.L13330:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L13343
.L13321:
	movl	5632(%rsp), %r15d
	testl	%r15d, %r15d
	jmp	.L15402
.L13338:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L13339
.L13336:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15240
.L13318:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5592(%rsp)
	jmp	.L13298
.L13316:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5616(%rsp)
	jmp	.L13315
.L13296:
	movl	$1, %edx
	jmp	.L13295
.L13294:
	movl	$1, %ecx
	jmp	.L13293
.L13292:
	movl	$1, %ecx
	jmp	.L13291
.L13269:
	movq	288(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	288(%rsp), %rbp
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L13265
.L15595:
	movzbl	2(%r8), %edx
	cmpb	$16, %dl
	je	.L13263
	movq	8(%r8), %rbp
	cmpw	$59, (%rbp)
	je	.L15600
.L13263:
	cmpl	$55, %eax
	jne	.L13266
	movq	288(%rsp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	movq	288(%rsp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.L13265
.L15600:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r8)
	cmpq	$0, 16(%rbp)
	je	.L13265
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	288(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 288(%rsp)
	jmp	.L13265
.L13262:
	movq	288(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L13270
	movq	8(%rsi), %rdx
	movq	%rdx, 288(%rsp)
	jmp	.L13265
.L13270:
	movq	288(%rsp), %r10
	movq	24(%r10), %rsi
	testq	%rsi, %rsi
	je	.L15601
.L15239:
	movq	%rsi, 288(%rsp)
	jmp	.L13265
.L15601:
	movq	288(%rsp), %rbx
	movq	8(%rbx), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	288(%rsp), %r8
	movq	%rax, %rdi
	movq	8(%r8), %rsi
	movq	%rax, 24(%r8)
	call	gen_move_insn
	movq	288(%rsp), %r15
	movq	%rax, %rdi
	movq	16(%r15), %rsi
	call	emit_insn_before
	movq	24(%r15), %rsi
	jmp	.L15239
.L13259:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L13255
.L15594:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L13253
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15602
.L13253:
	cmpl	$55, %eax
	jne	.L13256
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L13255
.L15602:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L13255
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r15, 296(%rsp)
	jmp	.L13255
.L13252:
	cmpq	$0, 16(%r12)
	jne	.L13260
	movq	8(%r12), %r8
	movq	%r8, 296(%rsp)
	jmp	.L13255
.L13260:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 296(%rsp)
	jne	.L13255
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rbx
	movq	%rbx, 296(%rsp)
	jmp	.L13255
.L13249:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L13245
.L15593:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L13245
.L13242:
	cmpq	$0, 16(%r13)
	jne	.L13250
	movq	8(%r13), %rax
	movq	%rax, 304(%rsp)
	jmp	.L13245
.L13250:
	movq	24(%r13), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 304(%rsp)
	jne	.L13245
	movq	8(%r13), %r14
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rbp
	movq	%rbp, 304(%rsp)
	jmp	.L13245
	.p2align 6,,7
.L13231:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L13227
.L15571:
	jne	.L13228
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L13227
.L13224:
	cmpq	$0, 16(%r13)
	jne	.L13232
	movq	8(%r13), %r13
	jmp	.L13227
.L13232:
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L13233
	movq	%rax, %r13
	jmp	.L13227
.L13233:
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L13227
.L15570:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	2568(%rsp), %rdi
	movzbl	2(%r13), %edx
	movq	%rax, %rsi
	jmp	.L15238
.L13203:
	movl	(%r13), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15603
	movzbl	2(%r13), %edx
	movq	2568(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r13, %rsi
	call	expand_expr
	cmpw	$51, (%r13)
	movq	%rax, %r12
	je	.L15604
.L13221:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L13222
	cmpw	$46, %dx
	je	.L13222
	cmpw	$47, %dx
	je	.L13222
	cmpw	$49, %dx
	je	.L13222
	cmpw	$113, %dx
	jne	.L13168
	jmp	.L13222
.L15604:
	cmpl	$63, 8(%r13)
	jle	.L13168
	jmp	.L13221
.L15603:
	movq	2568(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r13), %rdi
	movzbl	3(%r13), %edx
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L13167
.L13212:
	movl	$1, %ebx
	jmp	.L13206
.L13204:
	xorl	%ebx, %ebx
	jmp	.L13206
.L13210:
	movq	8(%r13), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L13212
	movq	16(%r13), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L13206
	jmp	.L13212
.L15569:
	movzbl	2(%r13), %eax
	cmpb	$16, %al
	je	.L13196
	movl	cse_not_expected(%rip), %r14d
	movq	2568(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r14d, %r14d
	cmove	%r13, %rsi
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L13222
	testb	%al, %al
	je	.L13222
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15369
	.p2align 6,,7
.L15568:
	cmpb	$16, 2(%r13)
	jne	.L13169
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.L13173
.L14801:
	movzwl	(%r13), %eax
	movq	%r13, %r12
	cmpl	$59, %eax
	je	.L13175
	cmpl	$55, %eax
	je	.L15605
.L13179:
	cmpl	$63, %eax
	je	.L13182
	cmpl	$66, %eax
	je	.L13182
.L13178:
	movq	2568(%rsp), %rax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%rax), %rdi
	xorl	%eax, %eax
	call	jumpifnot
	movq	2568(%rsp), %r11
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	40(%r11), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L13188
.L14803:
	movq	%r14, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	2568(%rsp), %rbp
	movq	%r12, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L13193
.L14805:
	movq	%r14, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L13167
.L13193:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r13
	movq	%rax, 16(%rbx)
	testq	%r13, %r13
	movq	%r13, pending_chain(%rip)
	movq	%r13, %rbx
	jne	.L13193
	jmp	.L14805
.L13188:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L13188
	jmp	.L14803
.L13182:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L13178
.L15605:
	jne	.L13179
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L13178
	.p2align 6,,7
.L13175:
	cmpq	$0, 16(%r13)
	jne	.L13183
	movq	8(%r13), %r12
	jmp	.L13178
.L13183:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.L13184
	movq	%rdi, %r12
	jmp	.L13178
.L13184:
	movq	8(%r13), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	%rax, 24(%r12)
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r12
	jmp	.L13178
	.p2align 6,,7
.L13173:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L13173
	jmp	.L14801
.L15567:
	movq	2568(%rsp), %r8
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	32(%r8), %rdi
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L13165
.L14799:
	movq	2568(%rsp), %rbx
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	40(%rbx), %rdi
	call	store_expr
	movq	%rax, %r12
	jmp	.L13167
.L13165:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L13165
	jmp	.L14799
.L15566:
	movq	2568(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$39, %al
	jne	.L13160
	movl	current_function_returns_struct(%rip), %r14d
	testl	%r14d, %r14d
	je	.L13160
	movl	current_function_returns_pcc_struct(%rip), %r12d
	testl	%r12d, %r12d
	jne	.L13160
	movq	%rdx, %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	2568(%rsp), %rdi
	movq	%rax, %r15
	xorl	%eax, %eax
	call	expr_size
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r15), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r10, (%rsp)
	movq	8(%r13), %r8
	call	emit_library_call
	movq	%r13, %rdi
	jmp	.L15244
	.p2align 6,,7
.L15565:
	xorl	%edx, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movzbl	16(%r14), %edx
	movq	%rax, %r13
	jmp	.L13159
.L15564:
	movq	40(%r14), %r8
	cmpb	$25, 16(%r8)
	jne	.L12642
	movq	8(%r14), %rsi
	movq	32(%rsi), %r10
	cmpb	$25, 16(%r10)
	jne	.L12642
.L12643:
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	movl	$0, 5432(%rsp)
	cmpb	$37, %dl
	movq	%r14, %r12
	leaq	5448(%rsp), %r13
	leaq	5432(%rsp), %r15
	movl	$0, 196(%rsp)
	je	.L15606
	cmpb	$38, %dl
	je	.L15607
	movq	8(%r14), %r9
	movzbl	44(%r9), %edi
	movl	%edi, 196(%rsp)
	movslq	196(%rsp),%rbx
	movl	mode_size(,%rbx,4), %eax
	sall	$3, %eax
	movl	%eax, 5452(%rsp)
	movq	8(%r14), %rsi
	movzbl	17(%rsi), %r10d
	shrb	$6, %r10b
	movl	%r10d, %r8d
	andl	$1, %r8d
	movl	%r8d, 2564(%rsp)
.L12646:
	testq	%rcx, %rcx
	je	.L12649
	cmpb	$25, 16(%rcx)
	je	.L12650
	movl	$16, 196(%rsp)
	movl	$-1, 5452(%rsp)
.L12649:
	movl	$0, (%r13)
	.p2align 4,,7
.L12677:
	movzbl	16(%r12), %edx
	cmpb	$39, %dl
	je	.L15608
.L12655:
	leal	-37(%rdx), %r11d
	cmpb	$1, %r11b
	ja	.L12656
	cmpb	$37, %dl
	je	.L15609
	movq	48(%r12), %rbx
.L12658:
	movzbl	16(%rbx), %eax
	cmpb	$53, %al
	je	.L15610
	cmpb	$25, %al
	je	.L15611
.L12667:
	testq	%rbp, %rbp
	je	.L12669
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rbp, %rsi
	movl	$53, %edi
.L15229:
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, %rbp
.L12671:
	testb	$16, 17(%r12)
	je	.L12676
	movl	$1, (%r15)
.L12676:
	movq	32(%r12), %r12
	jmp	.L12677
	.p2align 6,,7
.L12669:
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	jmp	.L15229
.L15611:
	movl	24(%rbx), %eax
.L15230:
	addl	%eax, (%r13)
	jmp	.L12671
	.p2align 6,,7
.L15610:
	movq	32(%rbx), %rsi
	cmpb	$25, 16(%rsi)
	je	.L15612
	movq	40(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L15283
	movq	%rsi, %rbx
.L12661:
	movl	24(%rax), %eax
	addl	%eax, (%r13)
	jmp	.L12667
.L15612:
	movq	40(%rbx), %rbx
	movq	%rsi, %rax
	jmp	.L12661
	.p2align 6,,7
.L15609:
	movq	40(%r12), %rdx
	movq	72(%rdx), %rbx
	jmp	.L12658
	.p2align 6,,7
.L12656:
	cmpb	$42, %dl
	je	.L15613
.L12672:
	cmpb	$103, %dl
	je	.L12671
	leal	-101(%rdx), %r10d
	cmpb	$1, %r10b
	ja	.L12653
	movq	32(%r12), %r9
	movq	8(%r12), %rbx
	movq	8(%r9), %rdi
	movzbl	44(%rdi), %esi
	cmpb	%sil, 44(%rbx)
	je	.L12671
.L12653:
	movl	196(%rsp), %r15d
	testl	%r15d, %r15d
	jne	.L12678
	movl	(%r13), %eax
	movl	5452(%rsp), %edi
	cltd
	idivl	%edi
	testl	%edx, %edx
	movl	%edx, %ebx
	je	.L15614
.L12678:
	movl	196(%rsp), %r13d
	movq	%rbp, 5440(%rsp)
	testl	%r13d, %r13d
	movl	%r13d, 5436(%rsp)
	jne	.L12681
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L15615
.L12681:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	5440(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	jne	.L15616
.L12682:
	movl	5432(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L12684
	cmpw	$55, (%rbx)
	je	.L15617
.L12684:
	xorl	%ecx, %ecx
	movl	5452(%rsp), %ebp
	movl	5448(%rsp), %r15d
	testl	%ecx, %ecx
	movl	5436(%rsp), %r13d
	je	.L12686
	movq	8(%r14), %r11
	movzbl	44(%r11), %r14d
	movl	%r14d, 192(%rsp)
.L12687:
	movq	8(%r12), %rdi
	movl	48(%rdi), %r12d
	call	int_size_in_bytes
	movl	$0, 188(%rsp)
	movl	%eax, 2560(%rsp)
	shrl	$3, %r12d
	cmpl	$31, %ebp
	jg	.L12688
	movl	$1, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 188(%rsp)
.L12688:
	cmpl	$16, %r13d
	je	.L15618
.L12689:
	testl	%r13d, %r13d
	je	.L12694
	cmpl	$16, %r13d
	je	.L12695
	movslq	%r13d,%r10
	cmpb	$0, direct_store(%r10)
	je	.L12694
.L12695:
	movzwl	(%rbx), %eax
	cmpw	$51, %ax
	je	.L12694
	cmpw	$53, %ax
	je	.L12694
	movl	192(%rsp), %ebp
	movq	8(%rbx), %rdi
	testl	%ebp, %ebp
	je	.L12701
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L12701
	leal	-56(%rdx), %r14d
	cmpw	$1, %r14w
	jbe	.L12701
	cmpw	$46, %dx
	je	.L12701
	cmpw	$47, %dx
	je	.L12701
	cmpw	$49, %dx
	je	.L12701
	cmpw	$113, %dx
	je	.L12701
	cmpw	$63, %dx
	je	.L15619
.L12702:
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, %rdi
.L12701:
	cmpl	$-1, %r15d
	leal	7(%r15), %r12d
	cmovle	%r12d, %r15d
	sarl	$3, %r15d
	movl	%r15d, %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	orb	$16, 3(%rax)
	movq	%rax, %r14
	movl	$0, 184(%rsp)
	movl	192(%rsp), %r8d
	testl	%r8d, %r8d
	setne	%dl
	movzbl	%dl, %ebp
	movq	2568(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$44, %al
	je	.L15620
	cmpb	$48, %al
	je	.L15621
.L12713:
	testl	%ebp, %ebp
	je	.L12740
	cmpw	$55, (%r14)
	je	.L15622
.L12740:
	movzwl	(%r14), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L12748
	mov	%eax, %ebp
	jmp	*.L12757(,%rbp,8)
	.section	.rodata
	.align 8
	.align 4
.L12757:
	.quad	.L12751
	.quad	.L12748
	.quad	.L12748
	.quad	.L12748
	.quad	.L12756
	.quad	.L12748
	.quad	.L12748
	.quad	.L12748
	.quad	.L12754
	.quad	.L12754
	.quad	.L12748
	.quad	.L12754
	.text
.L12751:
	movq	8(%r14), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L12750:
	testl	%ebx, %ebx
	je	.L12747
	movzbl	2(%r14), %eax
	cmpb	$16, %al
	je	.L12759
	testb	%al, %al
	jne	.L15623
.L12759:
	movzbl	2(%r14), %edx
	movq	2568(%rsp), %rdi
	xorl	%esi, %esi
.L15231:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15368:
	movq	%rax, %r12
.L12766:
	movl	$1, 184(%rsp)
.L12712:
	cmpq	%r14, %r12
	je	.L12767
	movq	2568(%rsp), %rax
	cmpb	$0, 16(%rax)
	je	.L12767
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L12768
	cmpl	$55, %eax
	je	.L15624
.L12772:
	cmpl	$63, %eax
	je	.L12775
	cmpl	$66, %eax
	je	.L12775
.L12771:
	movzbl	2(%r12), %eax
	movzbl	2(%r14), %ecx
	cmpb	%cl, %al
	je	.L12778
	testb	%al, %al
	je	.L12778
	movq	2568(%rsp), %rsi
	movl	184(%rsp), %eax
	movq	8(%rsi), %r10
	movzbl	17(%r10), %r8d
	shrb	$6, %r8b
	movl	%r8d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L12779
	movq	%r12, %rsi
	movzbl	%cl, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r12
.L13034:
	movq	%r14, %rdi
	movq	%r12, %rsi
	call	emit_move_insn
.L12767:
	movl	184(%rsp), %r13d
	testl	%r13d, %r13d
	cmove	%r14, %r12
.L12711:
	movq	%r12, %rbx
.L12692:
	movq	%rbx, %rdi
	jmp	.L15244
.L12779:
	movq	%r14, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L12767
.L12778:
	cmpb	$16, %al
	jne	.L13034
	movq	2568(%rsp), %rdx
	cmpb	$28, 16(%rdx)
	je	.L15625
	cmpb	$16, %al
	jne	.L13034
	movq	2568(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 88(%rsp)
	call	expr_size
	movq	2568(%rsp), %rcx
	movq	%rax, %r13
	movq	8(%rcx), %rdi
	movl	48(%rdi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r14)
	movl	%eax, 84(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r14, 96(%rsp)
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L13037
	cmpl	$55, %eax
	je	.L15626
	cmpl	$63, %eax
	je	.L13044
	cmpl	$66, %eax
	je	.L13044
.L13040:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L13047
	cmpl	$55, %eax
	je	.L15627
.L13051:
	cmpl	$63, %eax
	je	.L13054
	cmpl	$66, %eax
	je	.L13054
.L13050:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L13057
	cmpl	$55, %eax
	je	.L15628
.L13061:
	cmpl	$63, %eax
	je	.L13064
	cmpl	$66, %eax
	je	.L13064
.L13060:
	movq	96(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	88(%rsp), %r11
	cmpw	$55, (%r11)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L15629
.L13070:
	movl	84(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2472(%rsp)
	testl	%ebp, %ebp
	je	.L14797
.L13156:
	movslq	%ebp,%rax
	movq	%rax, 2464(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L13144
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L13148
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L13144
.L13148:
	movslq	%edx,%rcx
	leaq	(%rcx,%rcx,4), %r15
	movq	%rcx, 2456(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15630
.L13149:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15631
.L13150:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L13151
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2472(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L13144
.L13151:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 2448(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15632
.L13152:
	movq	2456(%rsp), %r15
	movq	96(%rsp), %rdi
	xorl	%eax, %eax
	movq	88(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2472(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14990
	movq	2448(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L13144:
	movq	2464(%rsp), %r11
	movl	mode_wider_mode(,%r11,4), %ebp
	testl	%ebp, %ebp
	jne	.L13156
.L14797:
	movl	$4, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%esi, %esi
	movq	88(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rdx), %rbp
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	96(%rsp), %rax
	movq	%rbp, (%rsp)
.L15236:
	movq	8(%rax), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L12767
.L14990:
	call	emit_insn
	jmp	.L12767
.L15632:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L13152
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13152
.L15631:
	xorl	%eax, %eax
	movq	88(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13144
	jmp	.L13150
.L15630:
	xorl	%eax, %eax
	movq	96(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13144
	jmp	.L13149
.L15629:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 84(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	84(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L13084:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14788
.L13080:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L13080
.L14788:
	testl	%ecx, %ecx
	je	.L13073
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L13082
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L13082
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L13082:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L13084
.L13073:
	decl	%r9d
	jg	.L13070
	movq	96(%rsp), %rcx
	movq	88(%rsp), %r9
	movl	%r10d, %r13d
	movl	$9, %r15d
	movq	8(%rcx), %rbx
	movq	8(%r9), %rdi
	movq	%r9, 5608(%rsp)
	movq	%rcx, 5584(%rsp)
	movl	$0, 5636(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5592(%rsp)
	movq	%rdi, 5616(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L13087
	cmpw	$88, %dx
	je	.L13087
	cmpw	$87, %dx
	je	.L13087
.L13086:
	movl	%ecx, 5600(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L13089
	cmpw	$88, %dx
	je	.L13089
	cmpw	$87, %dx
	je	.L13089
.L13088:
	movl	%ecx, 5624(%rsp)
	movl	$0, 5628(%rsp)
	movl	$0, 5604(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L13091
	cmpw	$87, %ax
	je	.L13091
.L13090:
	testl	%edx, %edx
	movl	%edx, 5640(%rsp)
	je	.L13092
	movl	%r10d, 5636(%rsp)
.L13092:
	movl	5624(%rsp), %eax
	movl	%r10d, 5632(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L13094
	movl	5600(%rsp), %eax
	testl	%eax, %eax
	jne	.L13093
.L13094:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 84(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	84(%rsp), %ebp
.L13108:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14791
.L13104:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L13104
.L14791:
	testl	%ecx, %ecx
	je	.L13097
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L13106
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L13106
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L13106:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L13108
.L13097:
	cmpl	$2, %r9d
	jle	.L13093
	testl	%r10d, %r10d
	jne	.L13110
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L13111
	cmpw	$46, %dx
	je	.L13111
	cmpw	$47, %dx
	je	.L13111
	cmpw	$49, %dx
	je	.L13111
	cmpw	$113, %dx
	je	.L13111
.L13110:
	movl	5600(%rsp), %eax
	testl	%eax, %eax
	jne	.L13093
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L13113
	cmpw	$46, %dx
	je	.L13113
	cmpw	$47, %dx
	je	.L13113
	cmpw	$49, %dx
	je	.L13113
	cmpw	$113, %dx
	je	.L13113
.L13093:
	cmpl	$8, 84(%rsp)
	movl	$8, %eax
	cmovl	84(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 84(%rsp)
	jle	.L13116
.L13138:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14794
.L13123:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L13123
.L14794:
	testl	%r13d, %r13d
	je	.L13116
	movslq	%r13d,%r15
	movq	%r15, %r8
	salq	$4, %r8
	addq	mov_optab(%rip), %r8
	movl	8(%r8), %edx
	cmpl	$210, %edx
	je	.L13125
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 84(%rsp)
	jl	.L13125
	movslq	%edx,%r9
	cmpl	%ebp, 5632(%rsp)
	leaq	5584(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %rdi
	movq	%rdi, 2480(%rsp)
	jl	.L13125
	movl	5640(%rsp), %edx
.L13136:
	testl	%edx, %edx
	je	.L13130
	subl	%ebp, 52(%rbx)
.L13130:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L13131
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15235:
	movq	%rax, 72(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L13133
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L13134:
	movq	%rax, %rsi
	movq	72(%rsp), %rdi
	xorl	%eax, %eax
	call	*2480(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L13135
	addl	%ebp, 52(%rbx)
.L13135:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L13136
.L13125:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L13138
.L13116:
	movl	5632(%rsp), %eax
	testl	%eax, %eax
.L15401:
	je	.L12767
	jmp	.L15283
.L13133:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L13134
.L13131:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15235
.L13113:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5592(%rsp)
	jmp	.L13093
.L13111:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5616(%rsp)
	jmp	.L13110
.L13091:
	movl	$1, %edx
	jmp	.L13090
.L13089:
	movl	$1, %ecx
	jmp	.L13088
.L13087:
	movl	$1, %ecx
	jmp	.L13086
.L13064:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L13060
.L15628:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L13058
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15633
.L13058:
	cmpl	$55, %eax
	jne	.L13061
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L13060
.L15633:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L13060
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	%r15, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13060
.L13057:
	cmpq	$0, 16(%r13)
	jne	.L13065
	movq	8(%r13), %r13
	jmp	.L13060
.L13065:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L13066
	movq	%rsi, %r13
	jmp	.L13060
.L13066:
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L13060
.L13054:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L13050
.L15627:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L13048
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15634
.L13048:
	cmpl	$55, %eax
	jne	.L13051
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L13050
.L15634:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L13050
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r15, 88(%rsp)
	jmp	.L13050
.L13047:
	cmpq	$0, 16(%r12)
	jne	.L13055
	movq	8(%r12), %rbp
	movq	%rbp, 88(%rsp)
	jmp	.L13050
.L13055:
	movq	24(%r12), %r9
	testq	%r9, %r9
	movq	%r9, 88(%rsp)
	jne	.L13050
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rbx
	movq	%rbx, 88(%rsp)
	jmp	.L13050
.L13044:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L13040
.L15626:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L13040
.L13037:
	cmpq	$0, 16(%r14)
	jne	.L13045
	movq	8(%r14), %rdx
	movq	%rdx, 96(%rsp)
	jmp	.L13040
.L13045:
	movq	24(%r14), %r11
	testq	%r11, %r11
	movq	%r11, 96(%rsp)
	jne	.L13040
	movq	8(%r14), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r8
	movq	%r8, 96(%rsp)
	jmp	.L13040
.L15625:
	xorl	%eax, %eax
	movq	%rdx, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 160(%rsp)
	je	.L15635
.L12783:
	movl	$8, %edi
	call	size_int
	movq	2568(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r9
	movl	$57, %edi
	movq	32(%r9), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	2568(%rsp), %rbx
	movq	%rax, %r15
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r15, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	$0, 104(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rax, %r15
	movq	2568(%rsp), %rax
	movq	8(%rax), %rsi
	movl	48(%rsi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r14)
	movl	%eax, 124(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r14, 136(%rsp)
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L12909
	cmpl	$55, %eax
	je	.L15636
	cmpl	$63, %eax
	je	.L12916
	cmpl	$66, %eax
	je	.L12916
.L12912:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L12919
	cmpl	$55, %eax
	je	.L15637
.L12923:
	cmpl	$63, %eax
	je	.L12926
	cmpl	$66, %eax
	je	.L12926
.L12922:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L12929
	cmpl	$55, %eax
	je	.L15638
.L12933:
	cmpl	$63, %eax
	je	.L12936
	cmpl	$66, %eax
	je	.L12936
.L12932:
	movq	136(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 128(%rsp)
	je	.L15283
	movq	128(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L15639
.L12942:
	movl	124(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2512(%rsp)
	testl	%ebp, %ebp
	je	.L14785
.L13028:
	movslq	%ebp,%r8
	movq	%r8, %rax
	movq	%r8, 2504(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L13016
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L13020
	movq	128(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L13016
.L13020:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 2496(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15640
.L13021:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15641
.L13022:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L13023
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2512(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L13016
.L13023:
	call	get_last_insn
	movl	$1, %edx
	movq	128(%rsp), %rsi
	movq	%rax, 2488(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15642
.L13024:
	movq	2496(%rsp), %rbp
	movq	136(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	2512(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14989
	movq	2488(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L13016:
	movq	2504(%rsp), %rsi
	movl	mode_wider_mode(,%rsi,4), %ebp
	testl	%ebp, %ebp
	jne	.L13028
.L14785:
	movq	128(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	136(%rsp), %r9
	movl	$3, %ecx
	movq	8(%r12), %rbx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rbx, (%rsp)
	movq	8(%r9), %r8
	movl	$4, %r9d
	call	emit_library_call
.L13026:
	cmpw	$46, (%r15)
	je	.L15643
	movq	8(%r14), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	160(%rsp), %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 104(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L13030:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L13031
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L13031:
	cmpq	$0, 104(%rsp)
	je	.L12767
	movq	104(%rsp), %rdi
	call	emit_label
	jmp	.L12767
.L15643:
	movq	2568(%rsp), %rax
	movq	8(%r14), %rdi
	movl	32(%rax), %esi
	call	plus_constant_wide
	movq	160(%rsp), %rdi
	movq	2568(%rsp), %r15
	movq	%rax, %r12
	movl	32(%r15), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L13030
.L14989:
	call	emit_insn
	jmp	.L13026
.L15642:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L13024
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13024
.L15641:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13016
	jmp	.L13022
.L15640:
	xorl	%eax, %eax
	movq	136(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L13016
	jmp	.L13021
.L15639:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 124(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	124(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L12956:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14776
.L12952:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L12952
.L14776:
	testl	%ecx, %ecx
	je	.L12945
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L12954
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L12954
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L12954:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12956
.L12945:
	decl	%r9d
	jg	.L12942
	movq	136(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 5608(%rsp)
	movq	%rcx, 5584(%rsp)
	movl	$0, 5636(%rsp)
	movq	%rdi, 5616(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 120(%rsp)
	movq	%rbx, 5592(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L12959
	cmpw	$88, %dx
	je	.L12959
	cmpw	$87, %dx
	je	.L12959
.L12958:
	movl	%ecx, 5600(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L12961
	cmpw	$88, %dx
	je	.L12961
	cmpw	$87, %dx
	je	.L12961
.L12960:
	movl	%ecx, 5624(%rsp)
	movl	$0, 5628(%rsp)
	movl	$0, 5604(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L12963
	cmpw	$87, %ax
	je	.L12963
.L12962:
	testl	%edx, %edx
	movl	%edx, 5640(%rsp)
	je	.L12964
	movl	%r10d, 5636(%rsp)
.L12964:
	movl	5624(%rsp), %eax
	movl	%r10d, 5632(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L12966
	movl	5600(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L12965
.L12966:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 124(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	124(%rsp), %ebp
.L12980:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14779
.L12976:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L12976
.L14779:
	testl	%ecx, %ecx
	je	.L12969
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12978
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L12978
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L12978:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12980
.L12969:
	cmpl	$2, %r9d
	jle	.L12965
	testl	%r10d, %r10d
	jne	.L12982
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L12983
	cmpw	$46, %dx
	je	.L12983
	cmpw	$47, %dx
	je	.L12983
	cmpw	$49, %dx
	je	.L12983
	cmpw	$113, %dx
	je	.L12983
.L12982:
	movl	5600(%rsp), %esi
	testl	%esi, %esi
	jne	.L12965
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L12985
	cmpw	$46, %dx
	je	.L12985
	cmpw	$47, %dx
	je	.L12985
	cmpw	$49, %dx
	je	.L12985
	cmpw	$113, %dx
	je	.L12985
.L12965:
	cmpl	$8, 124(%rsp)
	movl	$8, %eax
	cmovl	124(%rsp), %eax
	cmpl	$1, 120(%rsp)
	movl	%eax, 124(%rsp)
	jle	.L12988
.L13010:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14782
.L12995:
	movslq	%edx,%rbx
	movl	120(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L12995
.L14782:
	testl	%r12d, %r12d
	je	.L12988
	movslq	%r12d,%r13
	movq	%r13, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L12997
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 124(%rsp)
	jl	.L12997
	movslq	%edx,%rcx
	cmpl	%ebp, 5632(%rsp)
	leaq	5584(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %rdx
	movq	%rdx, 2520(%rsp)
	jl	.L12997
	movl	5640(%rsp), %edx
.L13008:
	testl	%edx, %edx
	je	.L13002
	subl	%ebp, 52(%rbx)
.L13002:
	movl	16(%rbx), %r11d
	testl	%r11d, %r11d
	je	.L13003
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15234:
	movq	%rax, 112(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L13005
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L13006:
	movq	%rax, %rsi
	movq	112(%rsp), %rdi
	xorl	%eax, %eax
	call	*2520(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L13007
	addl	%ebp, 52(%rbx)
.L13007:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L13008
.L12997:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 120(%rsp)
	decl	%r12d
	jg	.L13010
.L12988:
	movl	5632(%rsp), %eax
	testl	%eax, %eax
	je	.L13026
	jmp	.L15283
.L13005:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L13006
.L13003:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15234
.L12985:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5592(%rsp)
	jmp	.L12965
.L12983:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5616(%rsp)
	jmp	.L12982
.L12963:
	movl	$1, %edx
	jmp	.L12962
.L12961:
	movl	$1, %ecx
	jmp	.L12960
.L12959:
	movl	$1, %ecx
	jmp	.L12958
.L12936:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L12932
.L15638:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L12930
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15644
.L12930:
	cmpl	$55, %eax
	jne	.L12933
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L12932
.L15644:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L12932
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 128(%rsp)
	jmp	.L12932
.L12929:
	cmpq	$0, 16(%r15)
	jne	.L12937
	movq	8(%r15), %rsi
	movq	%rsi, 128(%rsp)
	jmp	.L12932
.L12937:
	movq	24(%r15), %rax
	testq	%rax, %rax
	movq	%rax, 128(%rsp)
	jne	.L12932
	movq	8(%r15), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rbx
	movq	%rbx, 128(%rsp)
	jmp	.L12932
.L12926:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L12922
.L15637:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L12920
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15645
.L12920:
	cmpl	$55, %eax
	jne	.L12923
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L12922
.L15645:
	movq	8(%rbp), %r13
	movq	%r13, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L12922
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L12922
.L12919:
	cmpq	$0, 16(%r12)
	jne	.L12927
	movq	8(%r12), %r12
	jmp	.L12922
.L12927:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L12928
	movq	%rax, %r12
	jmp	.L12922
.L12928:
	movq	8(%r12), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L12922
.L12916:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L12912
.L15636:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L12912
.L12909:
	cmpq	$0, 16(%r14)
	jne	.L12917
	movq	8(%r14), %rdx
	movq	%rdx, 136(%rsp)
	jmp	.L12912
.L12917:
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 136(%rsp)
	jne	.L12912
	movq	8(%r14), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r11
	movq	%r11, 136(%rsp)
	jmp	.L12912
.L15635:
	movq	2568(%rsp), %rcx
	movq	160(%rsp), %r9
	movl	32(%rcx), %eax
	cmpl	%eax, 8(%r9)
	jge	.L12783
	movq	%r12, 168(%rsp)
	movq	8(%rcx), %rbx
	movl	48(%rbx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r14)
	movl	%eax, 156(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r14, 176(%rsp)
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L12786
	cmpl	$55, %eax
	je	.L15646
	cmpl	$63, %eax
	je	.L12793
	cmpl	$66, %eax
	je	.L12793
.L12789:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L12796
	cmpl	$55, %eax
	je	.L15647
.L12800:
	cmpl	$63, %eax
	je	.L12803
	cmpl	$66, %eax
	je	.L12803
.L12799:
	movq	160(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L12806
	cmpl	$55, %eax
	je	.L15648
.L12810:
	cmpl	$63, %eax
	je	.L12813
	cmpl	$66, %eax
	je	.L12813
.L12809:
	movq	176(%rsp), %r8
	cmpw	$55, (%r8)
	jne	.L15283
	movq	168(%rsp), %r15
	cmpw	$55, (%r15)
	jne	.L15283
	cmpq	$0, 160(%rsp)
	je	.L15283
	movq	160(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15649
.L12819:
	movl	156(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2544(%rsp)
	testl	%ebp, %ebp
	je	.L14773
.L12905:
	movslq	%ebp,%rax
	movq	%rax, 2536(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L12893
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L12897
	movq	160(%rsp), %r8
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r8)
	ja	.L12893
.L12897:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15650
.L12898:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15651
.L12899:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L12900
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2544(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L12893
.L12900:
	call	get_last_insn
	movl	$1, %edx
	movq	160(%rsp), %rsi
	movq	%rax, 2528(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15652
.L12901:
	movq	176(%rsp), %rdi
	xorl	%eax, %eax
	movq	168(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2544(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14990
	movq	2528(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L12893:
	movq	2536(%rsp), %r13
	movl	mode_wider_mode(,%r13,4), %ebp
	testl	%ebp, %ebp
	jne	.L12905
.L14773:
	movq	160(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	168(%rsp), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%r10), %rbp
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	176(%rsp), %rax
	movl	$4, 8(%rsp)
	movq	%rbp, (%rsp)
	jmp	.L15236
.L15652:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L12901
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L12901
.L15651:
	xorl	%eax, %eax
	movq	168(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12893
	jmp	.L12899
.L15650:
	xorl	%eax, %eax
	movq	176(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12893
	jmp	.L12898
.L15649:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 156(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	156(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L12833:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14764
.L12829:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L12829
.L14764:
	testl	%ecx, %ecx
	je	.L12822
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L12831
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L12831
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L12831:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12833
.L12822:
	decl	%r9d
	jg	.L12819
	movq	168(%rsp), %rcx
	movq	176(%rsp), %r11
	movl	%r10d, %r13d
	movl	$9, %r15d
	movq	8(%r11), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5672(%rsp)
	movl	$0, 5700(%rsp)
	movq	%r11, 5648(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5656(%rsp)
	movq	%rdi, 5680(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L12836
	cmpw	$88, %dx
	je	.L12836
	cmpw	$87, %dx
	je	.L12836
.L12835:
	movl	%ecx, 5664(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L12838
	cmpw	$88, %dx
	je	.L12838
	cmpw	$87, %dx
	je	.L12838
.L12837:
	movl	%ecx, 5688(%rsp)
	movl	$0, 5692(%rsp)
	movl	$0, 5668(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L12840
	cmpw	$87, %ax
	je	.L12840
.L12839:
	testl	%edx, %edx
	movl	%edx, 5704(%rsp)
	je	.L12841
	movl	%r10d, 5700(%rsp)
.L12841:
	movl	5688(%rsp), %eax
	movl	%r10d, 5696(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L12843
	movl	5664(%rsp), %eax
	testl	%eax, %eax
	jne	.L12842
.L12843:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 156(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	156(%rsp), %ebp
.L12857:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14767
.L12853:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L12853
.L14767:
	testl	%ecx, %ecx
	je	.L12846
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12855
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L12855
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L12855:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12857
.L12846:
	cmpl	$2, %r9d
	jle	.L12842
	testl	%r10d, %r10d
	jne	.L12859
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L12860
	cmpw	$46, %dx
	je	.L12860
	cmpw	$47, %dx
	je	.L12860
	cmpw	$49, %dx
	je	.L12860
	cmpw	$113, %dx
	je	.L12860
.L12859:
	movl	5664(%rsp), %eax
	testl	%eax, %eax
	jne	.L12842
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L12862
	cmpw	$46, %dx
	je	.L12862
	cmpw	$47, %dx
	je	.L12862
	cmpw	$49, %dx
	je	.L12862
	cmpw	$113, %dx
	je	.L12862
.L12842:
	cmpl	$8, 156(%rsp)
	movl	$8, %eax
	cmovl	156(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 156(%rsp)
	jle	.L12865
.L12887:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14770
.L12872:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L12872
.L14770:
	testl	%r13d, %r13d
	je	.L12865
	movslq	%r13d,%r15
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L12874
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 156(%rsp)
	jl	.L12874
	movslq	%edx,%r9
	cmpl	%ebp, 5696(%rsp)
	leaq	5648(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %rdx
	movq	%rdx, 2552(%rsp)
	jl	.L12874
	movl	5704(%rsp), %edx
.L12885:
	testl	%edx, %edx
	je	.L12879
	subl	%ebp, 52(%rbx)
.L12879:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L12880
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15233:
	movl	40(%rbx), %r11d
	movq	%rax, 144(%rsp)
	testl	%r11d, %r11d
	je	.L12882
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L12883:
	movq	%rax, %rsi
	movq	144(%rsp), %rdi
	xorl	%eax, %eax
	call	*2552(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L12884
	addl	%ebp, 52(%rbx)
.L12884:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L12885
.L12874:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L12887
.L12865:
	movl	5696(%rsp), %r15d
	testl	%r15d, %r15d
	jmp	.L15401
.L12882:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L12883
.L12880:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15233
.L12862:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5656(%rsp)
	jmp	.L12842
.L12860:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5680(%rsp)
	jmp	.L12859
.L12840:
	movl	$1, %edx
	jmp	.L12839
.L12838:
	movl	$1, %ecx
	jmp	.L12837
.L12836:
	movl	$1, %ecx
	jmp	.L12835
.L12813:
	movq	160(%rsp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	160(%rsp), %rbx
	movq	%rax, 8(%rbx)
	movq	160(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	160(%rsp), %r9
	movq	%rax, 16(%r9)
	jmp	.L12809
.L15648:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L12807
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L15653
.L12807:
	cmpl	$55, %eax
	jne	.L12810
	movq	160(%rsp), %r15
	xorl	%esi, %esi
	movq	8(%r15), %rdi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L12809
.L15653:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L12809
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	160(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15232:
	movq	%rbx, 160(%rsp)
	jmp	.L12809
.L12806:
	movq	160(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L12814
	movq	8(%rcx), %rbx
	jmp	.L15232
.L12814:
	movq	160(%rsp), %r11
	movq	24(%r11), %rsi
	testq	%rsi, %rsi
	je	.L12815
	movq	%rsi, 160(%rsp)
	jmp	.L12809
.L12815:
	movq	160(%rsp), %rsi
	movq	8(%rsi), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	160(%rsp), %rdx
	movq	%rax, %rdi
	movq	8(%rdx), %rsi
	movq	%rax, 24(%rdx)
	call	gen_move_insn
	movq	160(%rsp), %rbp
	movq	%rax, %rdi
	movq	16(%rbp), %rsi
	call	emit_insn_before
	movq	160(%rsp), %r13
	movq	24(%r13), %rdi
	movq	%rdi, 160(%rsp)
	jmp	.L12809
.L12803:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L12799
.L15647:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L12797
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15654
.L12797:
	cmpl	$55, %eax
	jne	.L12800
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L12799
.L15654:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L12799
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 168(%rsp)
	jmp	.L12799
.L12796:
	cmpq	$0, 16(%r12)
	jne	.L12804
	movq	8(%r12), %rbp
	movq	%rbp, 168(%rsp)
	jmp	.L12799
.L12804:
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 168(%rsp)
	jne	.L12799
	movq	8(%r12), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r8
	movq	%r8, 168(%rsp)
	jmp	.L12799
.L12793:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L12789
.L15646:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L12789
.L12786:
	cmpq	$0, 16(%r14)
	jne	.L12794
	movq	8(%r14), %rdi
	movq	%rdi, 176(%rsp)
	jmp	.L12789
.L12794:
	movq	24(%r14), %r13
	testq	%r13, %r13
	movq	%r13, 176(%rsp)
	jne	.L12789
	movq	8(%r14), %r15
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rcx
	movq	%rcx, 176(%rsp)
	jmp	.L12789
	.p2align 6,,7
.L12775:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L12771
.L15624:
	jne	.L12772
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L12771
	.p2align 6,,7
.L12768:
	cmpq	$0, 16(%r14)
	jne	.L12776
	movq	8(%r14), %r14
	jmp	.L12771
.L12776:
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.L12777
	movq	%rax, %r14
	jmp	.L12771
.L12777:
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L12771
	.p2align 6,,7
.L15623:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	2568(%rsp), %rdi
	movzbl	2(%r14), %edx
	movq	%rax, %rsi
	jmp	.L15231
.L12747:
	movl	(%r14), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15655
	movzbl	2(%r14), %edx
	movq	2568(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r14, %rsi
	call	expand_expr
	cmpw	$51, (%r14)
	movq	%rax, %r12
	je	.L15656
.L12765:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L12766
	cmpw	$46, %dx
	je	.L12766
	cmpw	$47, %dx
	je	.L12766
	cmpw	$49, %dx
	je	.L12766
	cmpw	$113, %dx
	jne	.L12712
	jmp	.L12766
.L15656:
	cmpl	$63, 8(%r14)
	jle	.L12712
	jmp	.L12765
.L15655:
	movq	2568(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r14), %rdi
	movzbl	3(%r14), %edx
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L12711
.L12756:
	movl	$1, %ebx
	jmp	.L12750
.L12748:
	xorl	%ebx, %ebx
	jmp	.L12750
.L12754:
	movq	8(%r14), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L12756
	movq	16(%r14), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L12750
	jmp	.L12756
.L15622:
	movzbl	2(%r14), %eax
	cmpb	$16, %al
	je	.L12740
	movl	cse_not_expected(%rip), %r15d
	movq	2568(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r15d, %r15d
	cmove	%r14, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L12766
	testb	%al, %al
	je	.L12766
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15368
.L15621:
	cmpb	$16, 2(%r14)
	jne	.L12713
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r15
	testq	%rbx, %rbx
	jne	.L12717
.L14757:
	movzwl	(%r14), %eax
	movq	%r14, %r12
	cmpl	$59, %eax
	je	.L12719
	cmpl	$55, %eax
	je	.L15657
.L12723:
	cmpl	$63, %eax
	je	.L12726
	cmpl	$66, %eax
	je	.L12726
.L12722:
	movq	2568(%rsp), %r14
	xorl	%eax, %eax
	movq	%r13, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r14), %rdi
	call	jumpifnot
	movq	40(%r14), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	%ebp, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L12732
.L14759:
	movq	%r15, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	2568(%rsp), %r13
	movq	%r12, %rsi
	movq	48(%r13), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L12737
.L14761:
	movq	%r15, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L12711
.L12737:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	testq	%rcx, %rcx
	movq	%rcx, pending_chain(%rip)
	movq	%rcx, %rbx
	jne	.L12737
	jmp	.L14761
.L12732:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L12732
	jmp	.L14759
.L12726:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L12722
.L15657:
	jne	.L12723
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L12722
.L12719:
	cmpq	$0, 16(%r14)
	jne	.L12727
	movq	8(%r14), %r12
	jmp	.L12722
.L12727:
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.L12728
	movq	%rax, %r12
	jmp	.L12722
.L12728:
	movq	8(%r14), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%rax, 24(%r12)
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r12
	jmp	.L12722
	.p2align 6,,7
.L12717:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L12717
	jmp	.L14757
.L15620:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L12709
.L14755:
	movq	2568(%rsp), %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	movq	40(%rsi), %rdi
	movq	%r14, %rsi
	call	store_expr
	movq	%rax, %r12
	jmp	.L12711
.L12709:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L12709
	jmp	.L14755
.L15619:
	movq	16(%rdi), %r11
	cmpw	$46, (%r11)
	jne	.L12702
	movq	8(%rdi), %rax
	cmpq	virtual_incoming_args_rtx(%rip), %rax
	je	.L12701
	cmpq	virtual_stack_vars_rtx(%rip), %rax
	jne	.L12702
	jmp	.L12701
	.p2align 6,,7
.L12694:
	movq	2568(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	%r13d, %ecx
	movl	%r15d, %edx
	movl	2560(%rsp), %r9d
	movl	%ebp, %esi
	movq	%rax, %r8
	movq	%rax, %r14
	movq	%rbx, %rdi
	xorl	%eax, %eax
	movl	%r9d, (%rsp)
	movl	%r12d, %r9d
	call	store_bit_field
	movl	192(%rsp), %esi
	testl	%esi, %esi
	je	.L12696
	movl	188(%rsp), %edi
	testl	%edi, %edi
	je	.L12697
	movl	(%rbx), %eax
	andl	$134283263, %eax
	cmpl	$134217783, %eax
	je	.L12697
	movl	2564(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L12698
	movl	188(%rsp), %edx
	xorl	%esi, %esi
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	expand_and
.L15237:
	movq	%rax, %rbx
	jmp	.L12692
.L12698:
	movzbl	2(%r14), %r13d
	testl	%r13d, %r13d
	cmove	192(%rsp), %r13d
	xorl	%esi, %esi
	movslq	%r13d,%rcx
	movl	mode_size(,%rcx,4), %edi
	sall	$3, %edi
	subl	%ebp, %edi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %r15
	movl	%r13d, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	movl	$77, %edi
	xorl	%eax, %eax
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movl	$78, %edi
	movl	%r13d, %esi
	movq	%r15, %rcx
	xorl	%eax, %eax
	call	expand_shift
	jmp	.L15237
.L12697:
	movl	2560(%rsp), %eax
	movl	2564(%rsp), %ecx
	movq	%rbx, %rdi
	movl	192(%rsp), %r9d
	movl	%ebp, %esi
	movl	%r15d, %edx
	xorl	%r8d, %r8d
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%eax, 16(%rsp)
	xorl	%eax, %eax
	call	extract_bit_field
	jmp	.L15237
.L12696:
	movq	const0_rtx(%rip), %rbx
	jmp	.L12692
.L15618:
	movzwl	(%rbx), %eax
	cmpw	$51, %ax
	je	.L12690
	cmpw	$53, %ax
	jne	.L12689
.L12690:
	movzbl	2(%rbx), %edi
	xorl	%edx, %edx
	movslq	%edi,%r8
	movl	mode_size(,%r8,4), %esi
	call	assign_stack_temp
	movq	%rax, %rdi
	movq	%rax, %r13
	call	copy_rtx
	movb	$16, 2(%rax)
	movq	%rax, %r14
	movzbq	2(%rbx), %rdx
	movl	mode_size(,%rdx,4), %eax
	sall	$3, %eax
	cmpl	%eax, %ebp
	je	.L12691
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	emit_move_insn
.L12691:
	movl	%r12d, 8(%rsp)
	movq	2568(%rsp), %r8
	movq	%r14, %rdi
	movl	2560(%rsp), %r12d
	movl	%ebp, %esi
	movl	%r15d, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 16(%rsp)
	call	store_field
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	emit_move_insn
	jmp	.L12692
.L12686:
	movl	$0, 192(%rsp)
	jmp	.L12687
.L15617:
	orb	$8, 3(%rbx)
	jmp	.L12684
.L15616:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	cmpw	$55, (%rbx)
	jne	.L15283
	movl	$4, %edi
	movq	%rax, %rsi
	call	force_reg
	movq	8(%rbx), %rdx
	movl	$4, %esi
	movq	%rax, %rcx
	movl	$63, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %rbx
	jmp	.L12682
.L15615:
	movq	%r12, %rdi
	call	stabilize_reference
	movq	%rax, %r12
	jmp	.L12681
.L15614:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	mode_for_size
	cmpl	$16, %eax
	cmovne	%eax, %ebx
	movl	%ebx, 196(%rsp)
	jmp	.L12678
	.p2align 6,,7
.L15613:
	movq	40(%r12), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L12672
	movq	8(%r12), %r8
	movq	32(%r8), %rax
	cmpb	$25, 16(%rax)
	jne	.L12672
	movl	24(%rax), %eax
	imull	24(%rcx), %eax
	jmp	.L15230
	.p2align 6,,7
.L15608:
	movl	flag_volatile(%rip), %ecx
	testl	%ecx, %ecx
	je	.L12655
	movl	$1, (%r15)
	movzbl	16(%r12), %edx
	jmp	.L12655
.L12650:
	movl	24(%rcx), %eax
	movl	%eax, 5452(%rsp)
	jmp	.L12649
.L15607:
	movzbl	17(%r14), %edx
	movq	40(%r14), %rcx
	shrb	$6, %dl
	movl	%edx, %r11d
	andl	$1, %r11d
	movl	%r11d, 2564(%rsp)
	jmp	.L12646
.L15606:
	movq	40(%r14), %rax
	testb	$16, 53(%rax)
	movq	40(%rax), %rcx
	jne	.L12645
	movzbl	52(%rax), %ebx
	movl	%ebx, 196(%rsp)
.L12645:
	movzbl	17(%rax), %r9d
	shrb	$6, %r9b
	movl	%r9d, %edi
	andl	$1, %edi
	movl	%edi, 2564(%rsp)
	jmp	.L12646
.L15563:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	jmp	.L12641
.L12257:
	movq	56(%rsp), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L12245
.L12256:
	cmpb	$16, %al
	je	.L15658
.L12512:
	movq	56(%rsp), %rdi
	jmp	.L15227
.L15658:
	movq	2800(%rsp), %rdi
	cmpb	$28, 16(%rdi)
	je	.L15659
	cmpb	$16, %al
	jne	.L12512
	movq	2800(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 456(%rsp)
	call	expr_size
	movq	56(%rsp), %r15
	movq	2800(%rsp), %r9
	movq	%rax, %r13
	movq	8(%r9), %rdi
	movl	48(%rdi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 452(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	56(%rsp), %rsi
	movq	%rsi, 464(%rsp)
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L12515
	cmpl	$55, %eax
	je	.L15660
	cmpl	$63, %eax
	je	.L12522
	cmpl	$66, %eax
	je	.L12522
.L12518:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L12525
	cmpl	$55, %eax
	je	.L15661
.L12529:
	cmpl	$63, %eax
	je	.L12532
	cmpl	$66, %eax
	je	.L12532
.L12528:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L12535
	cmpl	$55, %eax
	je	.L15662
.L12539:
	cmpl	$63, %eax
	je	.L12542
	cmpl	$66, %eax
	je	.L12542
.L12538:
	movq	464(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	456(%rsp), %rcx
	cmpw	$55, (%rcx)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L15663
.L12548:
	movl	452(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2592(%rsp)
	testl	%ebp, %ebp
	je	.L14751
.L12634:
	movslq	%ebp,%rax
	movq	%rax, 2584(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L12622
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L12626
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L12622
.L12626:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15664
.L12627:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15665
.L12628:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L12629
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2592(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L12622
.L12629:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 2576(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15666
.L12630:
	movq	464(%rsp), %rdi
	xorl	%eax, %eax
	movq	456(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2592(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14987
	movq	2576(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L12622:
	movq	2584(%rsp), %rax
	movl	mode_wider_mode(,%rax,4), %ebp
	testl	%ebp, %ebp
	jne	.L12634
.L14751:
	movl	$4, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	464(%rsp), %rbx
	movl	$3, %ecx
	movq	456(%rsp), %r11
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	8(%r11), %r9
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	%r9, (%rsp)
.L15226:
	movq	8(%rbx), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L12245
.L14987:
	call	emit_insn
	jmp	.L12245
.L15666:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L12630
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L12630
.L15665:
	xorl	%eax, %eax
	movq	456(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12622
	jmp	.L12628
.L15664:
	xorl	%eax, %eax
	movq	464(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12622
	jmp	.L12627
.L15663:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 452(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	452(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L12562:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14742
.L12558:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L12558
.L14742:
	testl	%ecx, %ecx
	je	.L12551
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12560
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L12560
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L12560:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12562
.L12551:
	decl	%r9d
	jg	.L12548
	movq	464(%rsp), %rdx
	movq	456(%rsp), %r11
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rdx), %rbx
	movq	8(%r11), %rdi
	movq	%r11, 5800(%rsp)
	movl	$0, 5828(%rsp)
	movq	%rdx, 5776(%rsp)
	movq	%rbx, 5784(%rsp)
	movq	%rdi, 5808(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L12565
	cmpw	$88, %dx
	je	.L12565
	cmpw	$87, %dx
	je	.L12565
.L12564:
	movl	%ecx, 5792(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L12567
	cmpw	$88, %dx
	je	.L12567
	cmpw	$87, %dx
	je	.L12567
.L12566:
	movl	%ecx, 5816(%rsp)
	movl	$0, 5820(%rsp)
	movl	$0, 5796(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L12569
	cmpw	$87, %ax
	je	.L12569
.L12568:
	testl	%edx, %edx
	movl	%edx, 5832(%rsp)
	je	.L12570
	movl	%r10d, 5828(%rsp)
.L12570:
	movl	%r10d, 5824(%rsp)
	movl	5816(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L12572
	movl	5792(%rsp), %eax
	testl	%eax, %eax
	jne	.L12571
.L12572:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 452(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r15d
	cmovl	452(%rsp), %ebp
.L12586:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14745
.L12582:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L12582
.L14745:
	testl	%ecx, %ecx
	je	.L12575
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12584
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r15d, %eax
	cmpl	%eax, %ebp
	jl	.L12584
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L12584:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12586
.L12575:
	cmpl	$2, %r9d
	jle	.L12571
	testl	%r10d, %r10d
	jne	.L12588
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L12589
	cmpw	$46, %dx
	je	.L12589
	cmpw	$47, %dx
	je	.L12589
	cmpw	$49, %dx
	je	.L12589
	cmpw	$113, %dx
	je	.L12589
.L12588:
	movl	5792(%rsp), %eax
	testl	%eax, %eax
	jne	.L12571
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L12591
	cmpw	$46, %dx
	je	.L12591
	cmpw	$47, %dx
	je	.L12591
	cmpw	$49, %dx
	je	.L12591
	cmpw	$113, %dx
	je	.L12591
.L12571:
	cmpl	$8, 452(%rsp)
	movl	$8, %eax
	cmovl	452(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 452(%rsp)
	jle	.L12594
.L12616:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14748
.L12601:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L12601
.L14748:
	testl	%r13d, %r13d
	je	.L12594
	movslq	%r13d,%r14
	movq	%r14, %rcx
	salq	$4, %rcx
	addq	mov_optab(%rip), %rcx
	movl	8(%rcx), %edx
	cmpl	$210, %edx
	je	.L12603
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 452(%rsp)
	jl	.L12603
	movslq	%edx,%rdi
	cmpl	%ebp, 5824(%rsp)
	leaq	5776(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r15
	movq	%r15, 2600(%rsp)
	jl	.L12603
	movl	5832(%rsp), %edx
.L12614:
	testl	%edx, %edx
	je	.L12608
	subl	%ebp, 52(%rbx)
.L12608:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L12609
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15225:
	movq	%rax, %r15
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L12611
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L12612:
	movq	%rax, %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*2600(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L12613
	addl	%ebp, 52(%rbx)
.L12613:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L12614
.L12603:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L12616
.L12594:
	movl	5824(%rsp), %r14d
	testl	%r14d, %r14d
.L15400:
	je	.L12245
	jmp	.L15283
.L12611:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L12612
.L12609:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15225
.L12591:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5784(%rsp)
	jmp	.L12571
.L12589:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5808(%rsp)
	jmp	.L12588
.L12569:
	movl	$1, %edx
	jmp	.L12568
.L12567:
	movl	$1, %ecx
	jmp	.L12566
.L12565:
	movl	$1, %ecx
	jmp	.L12564
.L12542:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L12538
.L15662:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L12536
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15667
.L12536:
	cmpl	$55, %eax
	jne	.L12539
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L12538
.L15667:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L12538
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L12538
.L12535:
	cmpq	$0, 16(%r13)
	jne	.L12543
	movq	8(%r13), %r13
	jmp	.L12538
.L12543:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L12544
	movq	%rsi, %r13
	jmp	.L12538
.L12544:
	movq	8(%r13), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L12538
.L12532:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L12528
.L15661:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L12526
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15668
.L12526:
	cmpl	$55, %eax
	jne	.L12529
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L12528
.L15668:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L12528
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15224:
	movq	%rbx, 456(%rsp)
	jmp	.L12528
.L12525:
	cmpq	$0, 16(%r12)
	jne	.L12533
	movq	8(%r12), %rbx
	jmp	.L15224
.L12533:
	movq	24(%r12), %r10
	testq	%r10, %r10
	movq	%r10, 456(%rsp)
	jne	.L12528
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rbx
	movq	%rbx, 456(%rsp)
	jmp	.L12528
.L12522:
	movq	56(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %rbx
	movq	16(%rbx), %rdi
	movq	%rax, 8(%rbx)
	call	protect_from_queue
	movq	56(%rsp), %r10
	movq	%rax, 16(%r10)
	jmp	.L12518
.L15660:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r11
	movq	%rax, 8(%r11)
	jmp	.L12518
.L12515:
	movq	56(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L12523
	movq	8(%rbx), %rax
	movq	%rax, 464(%rsp)
	jmp	.L12518
.L12523:
	movq	56(%rsp), %r14
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 464(%rsp)
	jne	.L12518
	movq	56(%rsp), %rdi
	movq	8(%rdi), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r15
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	16(%rcx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r8
	movq	24(%r8), %rbp
	movq	%rbp, 464(%rsp)
	jmp	.L12518
.L15659:
	xorl	%eax, %eax
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, %r15
	je	.L15669
.L12261:
	movl	$8, %edi
	call	size_int
	movq	2800(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r8
	movl	$57, %edi
	movq	32(%r8), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	2800(%rsp), %rbx
	movq	%rax, %rbp
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%rbp, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	2800(%rsp), %rsi
	movq	$0, 472(%rsp)
	movq	%rax, 496(%rsp)
	movq	%rax, %r14
	movq	8(%rsi), %r10
	movl	48(%r10), %eax
	shrl	$3, %eax
	movl	%eax, 492(%rsp)
	movq	56(%rsp), %rax
	cmpb	$16, 2(%rax)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	56(%rsp), %rbx
	movq	%rbx, 504(%rsp)
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L12387
	cmpl	$55, %eax
	je	.L15670
	cmpl	$63, %eax
	je	.L12394
	cmpl	$66, %eax
	je	.L12394
.L12390:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L12397
	cmpl	$55, %eax
	je	.L15671
.L12401:
	cmpl	$63, %eax
	je	.L12404
	cmpl	$66, %eax
	je	.L12404
.L12400:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L12407
	cmpl	$55, %eax
	je	.L15672
.L12411:
	cmpl	$63, %eax
	je	.L12414
	cmpl	$66, %eax
	je	.L12414
.L12410:
	movq	504(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 496(%rsp)
	je	.L15283
	movq	496(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15673
.L12420:
	movl	492(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2632(%rsp)
	testl	%ebp, %ebp
	je	.L14739
.L12506:
	movslq	%ebp,%r11
	movq	%r11, %rax
	movq	%r11, 2624(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L12494
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L12498
	movq	496(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L12494
.L12498:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 2616(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15674
.L12499:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15675
.L12500:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L12501
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2632(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L12494
.L12501:
	call	get_last_insn
	movl	$1, %edx
	movq	496(%rsp), %rsi
	movq	%rax, 2608(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15676
.L12502:
	movq	%rbx, %rdx
	movq	504(%rsp), %rdi
	xorl	%eax, %eax
	movq	2616(%rsp), %rbx
	movq	%r12, %rsi
	movq	2632(%rsp), %rcx
	call	*insn_gen_function(,%rbx,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14986
	movq	2608(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L12494:
	movq	2624(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L12506
.L14739:
	movq	496(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movq	504(%rsp), %rax
	movq	%rsi, (%rsp)
	xorl	%esi, %esi
	movq	8(%rax), %r8
	xorl	%eax, %eax
	call	emit_library_call
.L12504:
	cmpw	$46, (%r14)
	je	.L15677
	movq	56(%rsp), %rcx
	movl	$4, %edi
	movq	8(%rcx), %rsi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movl	$4, %edi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 472(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L12508:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L12509
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L12509:
	cmpq	$0, 472(%rsp)
	je	.L12245
	movq	472(%rsp), %rdi
	call	emit_label
	jmp	.L12245
.L15677:
	movq	56(%rsp), %r8
	movq	2800(%rsp), %rbp
	movq	8(%r8), %rdi
	movl	32(%rbp), %esi
	call	plus_constant_wide
	movq	%r15, %rdi
	movq	2800(%rsp), %r14
	movq	%rax, %r12
	movl	32(%r14), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L12508
.L14986:
	call	emit_insn
	jmp	.L12504
.L15676:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L12502
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L12502
.L15675:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12494
	jmp	.L12500
.L15674:
	xorl	%eax, %eax
	movq	504(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12494
	jmp	.L12499
.L15673:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 492(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	492(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L12434:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14730
.L12430:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L12430
.L14730:
	testl	%ecx, %ecx
	je	.L12423
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12432
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L12432
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L12432:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12434
.L12423:
	decl	%r9d
	jg	.L12420
	movq	504(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 5800(%rsp)
	movq	%rcx, 5776(%rsp)
	movl	$0, 5828(%rsp)
	movq	%rdi, 5808(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 488(%rsp)
	movq	%rbx, 5784(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L12437
	cmpw	$88, %dx
	je	.L12437
	cmpw	$87, %dx
	je	.L12437
.L12436:
	movl	%ecx, 5792(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L12439
	cmpw	$88, %dx
	je	.L12439
	cmpw	$87, %dx
	je	.L12439
.L12438:
	movl	%ecx, 5816(%rsp)
	movl	$0, 5820(%rsp)
	movl	$0, 5796(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L12441
	cmpw	$87, %ax
	je	.L12441
.L12440:
	testl	%edx, %edx
	movl	%edx, 5832(%rsp)
	je	.L12442
	movl	%r10d, 5828(%rsp)
.L12442:
	movl	5816(%rsp), %eax
	movl	%r10d, 5824(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L12444
	movl	5792(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L12443
.L12444:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 492(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	492(%rsp), %ebp
.L12458:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14733
.L12454:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L12454
.L14733:
	testl	%ecx, %ecx
	je	.L12447
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L12456
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L12456
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L12456:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12458
.L12447:
	cmpl	$2, %r9d
	jle	.L12443
	testl	%r10d, %r10d
	jne	.L12460
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L12461
	cmpw	$46, %dx
	je	.L12461
	cmpw	$47, %dx
	je	.L12461
	cmpw	$49, %dx
	je	.L12461
	cmpw	$113, %dx
	je	.L12461
.L12460:
	movl	5792(%rsp), %eax
	testl	%eax, %eax
	jne	.L12443
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L12463
	cmpw	$46, %dx
	je	.L12463
	cmpw	$47, %dx
	je	.L12463
	cmpw	$49, %dx
	je	.L12463
	cmpw	$113, %dx
	je	.L12463
.L12443:
	cmpl	$8, 492(%rsp)
	movl	$8, %eax
	cmovl	492(%rsp), %eax
	cmpl	$1, 488(%rsp)
	movl	%eax, 492(%rsp)
	jle	.L12466
.L12488:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14736
.L12473:
	movslq	%edx,%rbx
	movl	488(%rsp), %ebp
	salq	$2, %rbx
	cmpl	%ebp, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L12473
.L14736:
	testl	%r12d, %r12d
	je	.L12466
	movslq	%r12d,%r13
	movq	%r13, %r8
	salq	$4, %r8
	addq	mov_optab(%rip), %r8
	movl	8(%r8), %edx
	cmpl	$210, %edx
	je	.L12475
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 492(%rsp)
	jl	.L12475
	movslq	%edx,%rcx
	cmpl	%ebp, 5824(%rsp)
	leaq	5776(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %rdi
	movq	%rdi, 2640(%rsp)
	jl	.L12475
	movl	5832(%rsp), %edx
.L12486:
	testl	%edx, %edx
	je	.L12480
	subl	%ebp, 52(%rbx)
.L12480:
	movl	16(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L12481
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15223:
	movq	%rax, 480(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L12483
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L12484:
	movq	%rax, %rsi
	movq	480(%rsp), %rdi
	xorl	%eax, %eax
	call	*2640(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L12485
	addl	%ebp, 52(%rbx)
.L12485:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L12486
.L12475:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 488(%rsp)
	decl	%r12d
	jg	.L12488
.L12466:
	movl	5824(%rsp), %eax
	testl	%eax, %eax
	je	.L12504
	jmp	.L15283
.L12483:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L12484
.L12481:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15223
.L12463:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5784(%rsp)
	jmp	.L12443
.L12461:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5808(%rsp)
	jmp	.L12460
.L12441:
	movl	$1, %edx
	jmp	.L12440
.L12439:
	movl	$1, %ecx
	jmp	.L12438
.L12437:
	movl	$1, %ecx
	jmp	.L12436
.L12414:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L12410
.L15672:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L12408
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15678
.L12408:
	cmpl	$55, %eax
	jne	.L12411
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L12410
.L15678:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L12410
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15222:
	movq	%rbx, 496(%rsp)
	jmp	.L12410
.L12407:
	cmpq	$0, 16(%r14)
	jne	.L12415
	movq	8(%r14), %rdx
	movq	%rdx, 496(%rsp)
	jmp	.L12410
.L12415:
	movq	24(%r14), %rax
	testq	%rax, %rax
	movq	%rax, 496(%rsp)
	jne	.L12410
	movq	8(%r14), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rbx
	jmp	.L15222
.L12404:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L12400
.L15671:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L12398
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15679
.L12398:
	cmpl	$55, %eax
	jne	.L12401
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L12400
.L15679:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L12400
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L12400
.L12397:
	cmpq	$0, 16(%r12)
	jne	.L12405
	movq	8(%r12), %r12
	jmp	.L12400
.L12405:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L12406
	movq	%rax, %r12
	jmp	.L12400
.L12406:
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L12400
.L12394:
	movq	56(%rsp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %r11
	movq	%rax, 8(%r11)
	movq	56(%rsp), %r9
	movq	16(%r9), %rdi
	call	protect_from_queue
	movq	56(%rsp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.L12390
.L15670:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L12390
.L12387:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L12395
	movq	8(%rcx), %rdx
	movq	%rdx, 504(%rsp)
	jmp	.L12390
.L12395:
	movq	56(%rsp), %rax
	movq	24(%rax), %r10
	testq	%r10, %r10
	movq	%r10, 504(%rsp)
	jne	.L12390
	movq	56(%rsp), %r9
	movq	8(%r9), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	8(%rcx), %rsi
	movq	%rax, 24(%rcx)
	call	gen_move_insn
	movq	56(%rsp), %rbx
	movq	%rax, %rdi
	movq	16(%rbx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %rbp
	movq	24(%rbp), %rsi
	movq	%rsi, 504(%rsp)
	jmp	.L12390
.L15669:
	movq	2800(%rsp), %r8
	movl	32(%r8), %eax
	cmpl	%eax, 8(%r15)
	jge	.L12261
	movq	%r12, 520(%rsp)
	movq	56(%rsp), %rsi
	movq	8(%r8), %r13
	movl	48(%r13), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%rsi)
	movl	%eax, 516(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	56(%rsp), %rdx
	movq	%rdx, 528(%rsp)
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L12264
	cmpl	$55, %eax
	je	.L15680
	cmpl	$63, %eax
	je	.L12271
	cmpl	$66, %eax
	je	.L12271
.L12267:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L12274
	cmpl	$55, %eax
	je	.L15681
.L12278:
	cmpl	$63, %eax
	je	.L12281
	cmpl	$66, %eax
	je	.L12281
.L12277:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L12284
	cmpl	$55, %eax
	je	.L15682
.L12288:
	cmpl	$63, %eax
	je	.L12291
	cmpl	$66, %eax
	je	.L12291
.L12287:
	movq	528(%rsp), %rdx
	cmpw	$55, (%rdx)
	jne	.L15283
	movq	520(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	testq	%r15, %r15
	je	.L15283
	cmpw	$46, (%r15)
	je	.L15683
.L12297:
	movl	516(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2664(%rsp)
	testl	%ebp, %ebp
	je	.L14727
.L12383:
	movslq	%ebp,%rax
	movq	%rax, 2656(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L12371
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L12375
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r15)
	ja	.L12371
.L12375:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15684
.L12376:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15685
.L12377:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L12378
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2664(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L12371
.L12378:
	call	get_last_insn
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%rax, 2648(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15686
.L12379:
	movq	528(%rsp), %rdi
	xorl	%eax, %eax
	movq	520(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2664(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14987
	movq	2648(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L12371:
	movq	2656(%rsp), %r11
	movl	mode_wider_mode(,%r11,4), %ebp
	testl	%ebp, %ebp
	jne	.L12383
.L14727:
	movl	$4, %edi
	movq	%r15, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	528(%rsp), %rbx
	movl	$3, %ecx
	movq	520(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%rdx), %r13
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movl	$4, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r13, (%rsp)
	jmp	.L15226
.L15686:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L12379
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L12379
.L15685:
	xorl	%eax, %eax
	movq	520(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12371
	jmp	.L12377
.L15684:
	xorl	%eax, %eax
	movq	528(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12371
	jmp	.L12376
.L15683:
	movl	8(%r15), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 516(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	516(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L12311:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14718
.L12307:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L12307
.L14718:
	testl	%ecx, %ecx
	je	.L12300
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12309
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L12309
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L12309:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12311
.L12300:
	decl	%r9d
	jg	.L12297
	movq	520(%rsp), %rcx
	movq	528(%rsp), %r9
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%r9), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5736(%rsp)
	movl	$0, 5764(%rsp)
	movq	%r9, 5712(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5720(%rsp)
	movq	%rdi, 5744(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L12314
	cmpw	$88, %dx
	je	.L12314
	cmpw	$87, %dx
	je	.L12314
.L12313:
	movl	%ecx, 5728(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L12316
	cmpw	$88, %dx
	je	.L12316
	cmpw	$87, %dx
	je	.L12316
.L12315:
	movl	%ecx, 5752(%rsp)
	movl	$0, 5756(%rsp)
	movl	$0, 5732(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L12318
	cmpw	$87, %ax
	je	.L12318
.L12317:
	testl	%edx, %edx
	movl	%edx, 5768(%rsp)
	je	.L12319
	movl	%r10d, 5764(%rsp)
.L12319:
	movl	%r10d, 5760(%rsp)
	movl	5752(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L12321
	movl	5728(%rsp), %eax
	testl	%eax, %eax
	jne	.L12320
.L12321:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 516(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r15d
	cmovl	516(%rsp), %ebp
.L12335:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14721
.L12331:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L12331
.L14721:
	testl	%ecx, %ecx
	je	.L12324
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L12333
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r15d, %eax
	cmpl	%eax, %ebp
	jl	.L12333
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L12333:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12335
.L12324:
	cmpl	$2, %r9d
	jle	.L12320
	testl	%r10d, %r10d
	jne	.L12337
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L12338
	cmpw	$46, %dx
	je	.L12338
	cmpw	$47, %dx
	je	.L12338
	cmpw	$49, %dx
	je	.L12338
	cmpw	$113, %dx
	je	.L12338
.L12337:
	movl	5728(%rsp), %esi
	testl	%esi, %esi
	jne	.L12320
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L12340
	cmpw	$46, %dx
	je	.L12340
	cmpw	$47, %dx
	je	.L12340
	cmpw	$49, %dx
	je	.L12340
	cmpw	$113, %dx
	je	.L12340
.L12320:
	cmpl	$8, 516(%rsp)
	movl	$8, %eax
	cmovl	516(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 516(%rsp)
	jle	.L12343
.L12365:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14724
.L12350:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L12350
.L14724:
	testl	%r13d, %r13d
	je	.L12343
	movslq	%r13d,%r14
	movq	%r14, %r8
	salq	$4, %r8
	addq	mov_optab(%rip), %r8
	movl	8(%r8), %edx
	cmpl	$210, %edx
	je	.L12352
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 516(%rsp)
	jl	.L12352
	movslq	%edx,%r15
	cmpl	%ebp, 5760(%rsp)
	leaq	5712(%rsp), %rbx
	movq	insn_gen_function(,%r15,8), %rdi
	movq	%rdi, 2672(%rsp)
	jl	.L12352
	movl	5768(%rsp), %edx
.L12363:
	testl	%edx, %edx
	je	.L12357
	subl	%ebp, 52(%rbx)
.L12357:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L12358
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15221:
	movl	40(%rbx), %r9d
	movq	%rax, %r15
	testl	%r9d, %r9d
	je	.L12360
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L12361:
	movq	%rax, %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*2672(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L12362
	addl	%ebp, 52(%rbx)
.L12362:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L12363
.L12352:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L12365
.L12343:
	movl	5760(%rsp), %r14d
	testl	%r14d, %r14d
	jmp	.L15400
.L12360:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L12361
.L12358:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15221
.L12340:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5720(%rsp)
	jmp	.L12320
.L12338:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5744(%rsp)
	jmp	.L12337
.L12318:
	movl	$1, %edx
	jmp	.L12317
.L12316:
	movl	$1, %ecx
	jmp	.L12315
.L12314:
	movl	$1, %ecx
	jmp	.L12313
.L12291:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L12287
.L15682:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L12285
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15687
.L12285:
	cmpl	$55, %eax
	jne	.L12288
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L12287
.L15687:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L12287
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r15
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L12287
.L12284:
	cmpq	$0, 16(%r15)
	jne	.L12292
	movq	8(%r15), %r15
	jmp	.L12287
.L12292:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.L12293
	movq	%rsi, %r15
	jmp	.L12287
.L12293:
	movq	8(%r15), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L12287
.L12281:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L12277
.L15681:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L12275
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15688
.L12275:
	cmpl	$55, %eax
	jne	.L12278
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L12277
.L15688:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L12277
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 520(%rsp)
	jmp	.L12277
.L12274:
	cmpq	$0, 16(%r12)
	jne	.L12282
	movq	8(%r12), %rsi
	movq	%rsi, 520(%rsp)
	jmp	.L12277
.L12282:
	movq	24(%r12), %r9
	testq	%r9, %r9
	movq	%r9, 520(%rsp)
	jne	.L12277
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r14
	movq	%r14, 520(%rsp)
	jmp	.L12277
.L12271:
	movq	56(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L12267
.L15680:
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r9
	movq	%rax, 8(%r9)
	jmp	.L12267
.L12264:
	movq	56(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L12272
	movq	8(%rsi), %r11
	movq	%r11, 528(%rsp)
	jmp	.L12267
.L12272:
	movq	56(%rsp), %rbx
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 528(%rsp)
	jne	.L12267
	movq	56(%rsp), %r8
	movq	8(%r8), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movq	8(%rax), %rsi
	movq	%rdi, 24(%rax)
	call	gen_move_insn
	movq	56(%rsp), %rbp
	movq	%rax, %rdi
	movq	16(%rbp), %rsi
	call	emit_insn_before
	movq	24(%rbp), %rdx
	movq	%rdx, 528(%rsp)
	jmp	.L12267
	.p2align 6,,7
.L12253:
	movq	56(%rsp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	movq	56(%rsp), %r13
	movq	%rax, 8(%r13)
	movq	56(%rsp), %rsi
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %rbp
	movq	%rax, 16(%rbp)
	jmp	.L12249
.L15562:
	jne	.L12250
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L12249
	.p2align 6,,7
.L12246:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L12254
	movq	8(%rcx), %r15
	movq	%r15, 56(%rsp)
	jmp	.L12249
.L12254:
	movq	56(%rsp), %rdi
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.L12255
	movq	%rax, 56(%rsp)
	jmp	.L12249
.L12255:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %rdx
	movq	%rax, %rdi
	movq	8(%rdx), %rsi
	movq	%rax, 24(%rdx)
	call	gen_move_insn
	movq	56(%rsp), %rbx
	movq	%rax, %rdi
	movq	16(%rbx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r14
	movq	24(%r14), %r11
	movq	%r11, 56(%rsp)
	jmp	.L12249
	.p2align 6,,7
.L15561:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	2800(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rax, %rsi
	jmp	.L15220
.L12225:
	movq	56(%rsp), %rdx
	movl	(%rdx), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15689
	movq	56(%rsp), %rcx
	movq	2800(%rsp), %rdi
	xorl	%eax, %eax
	movzbl	2(%rcx), %edx
	movq	%rcx, %rsi
	xorl	%ecx, %ecx
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L15690
.L12243:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L12244
	cmpw	$46, %dx
	je	.L12244
	cmpw	$47, %dx
	je	.L12244
	cmpw	$49, %dx
	je	.L12244
	cmpw	$113, %dx
	jne	.L12190
	jmp	.L12244
.L15690:
	cmpl	$63, 8(%rdx)
	jle	.L12190
	jmp	.L12243
.L15689:
	movq	2800(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, %r12
	movq	56(%rsp), %rax
	movq	%r12, %rsi
	movzbl	3(%rax), %edx
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L12189
.L12234:
	movl	$1, %ebx
	jmp	.L12228
.L12226:
	xorl	%ebx, %ebx
	jmp	.L12228
.L12232:
	movq	56(%rsp), %r11
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	8(%r11), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L12234
	movq	56(%rsp), %r14
	xorl	%eax, %eax
	movq	16(%r14), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L12228
	jmp	.L12234
.L15560:
	movzbl	2(%rdi), %eax
	cmpb	$16, %al
	je	.L12218
	movl	cse_not_expected(%rip), %r9d
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r9d, %r9d
	cmove	%rdi, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	2800(%rsp), %rdi
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L12244
	testb	%al, %al
	je	.L12244
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15366
	.p2align 6,,7
.L15559:
	movq	56(%rsp), %rbp
	cmpb	$16, 2(%rbp)
	jne	.L12191
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r13
	testq	%rbx, %rbx
	jne	.L12195
.L14711:
	movq	56(%rsp), %r12
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L12197
	cmpl	$55, %eax
	je	.L15691
.L12201:
	cmpl	$63, %eax
	je	.L12204
	cmpl	$66, %eax
	je	.L12204
.L12200:
	movq	2800(%rsp), %r8
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r8), %rdi
	call	jumpifnot
	movq	2800(%rsp), %rcx
	movl	2796(%rsp), %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	40(%rcx), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L12210
.L14713:
	movq	%r13, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	2796(%rsp), %edx
	movq	2800(%rsp), %rbp
	movq	%r12, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L12215
.L14715:
	movq	%r13, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L12189
.L12215:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L12215
	jmp	.L14715
.L12210:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L12210
	jmp	.L14713
.L12204:
	movq	56(%rsp), %r15
	xorl	%esi, %esi
	movq	8(%r15), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %r9
	movq	16(%r9), %rdi
	movq	%rax, 8(%r9)
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L12200
.L15691:
	jne	.L12201
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r12
	movq	%rax, 8(%r12)
	jmp	.L12200
.L12197:
	movq	56(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L12205
	movq	8(%rbx), %r12
	jmp	.L12200
.L12205:
	movq	56(%rsp), %r12
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %r12
	jne	.L12200
	movq	56(%rsp), %rax
	movq	8(%rax), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	56(%rsp), %r11
	movq	%rax, %rdi
	movq	16(%r11), %rsi
	call	emit_insn_before
	movq	56(%rsp), %rbx
	movq	24(%rbx), %r12
	jmp	.L12200
	.p2align 6,,7
.L12195:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L12195
	jmp	.L14711
.L15558:
	movq	2800(%rsp), %rdx
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	32(%rdx), %rdi
	xorl	%edx, %edx
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L12187
.L14709:
	movq	2800(%rsp), %r8
	movq	56(%rsp), %rsi
	xorl	%eax, %eax
	movl	2796(%rsp), %edx
	movq	40(%r8), %rdi
	call	store_expr
	movq	%rax, %r12
	jmp	.L12189
.L12187:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	testq	%rcx, %rcx
	movq	%rcx, pending_chain(%rip)
	movq	%rcx, %rbx
	jne	.L12187
	jmp	.L14709
.L15557:
	movq	2800(%rsp), %rbx
	movzbl	16(%rbx), %ecx
	cmpb	$39, %cl
	jne	.L12182
	movl	current_function_returns_struct(%rip), %r12d
	testl	%r12d, %r12d
	je	.L12182
	movl	current_function_returns_pcc_struct(%rip), %edi
	testl	%edi, %edi
	jne	.L12182
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	2800(%rsp), %rdi
	movq	%rax, %r14
	xorl	%eax, %eax
	call	expr_size
	movl	$4, %r9d
	movq	56(%rsp), %rbx
	movq	8(%r14), %r11
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%r11, (%rsp)
	movq	8(%rbx), %r8
	call	emit_library_call
.L15228:
	movq	56(%rsp), %rdi
	xorl	%eax, %eax
	call	preserve_temp_slots
	xorl	%eax, %eax
	call	free_temp_slots
	jmp	.L11663
.L15556:
	movq	3176(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	3176(%rsp), %r15
	movq	%rax, 56(%rsp)
	movzbl	16(%r15), %edx
	jmp	.L12181
.L15555:
	movq	3176(%rsp), %rcx
	movq	40(%rcx), %r9
	cmpb	$25, 16(%r9)
	jne	.L11664
	movq	8(%rcx), %rdi
	movq	32(%rdi), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L11664
.L11665:
	movq	3176(%rsp), %r12
	movl	$0, 5456(%rsp)
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	leaq	5472(%rsp), %r13
	leaq	5456(%rsp), %r14
	movzbl	16(%r12), %eax
	cmpb	$37, %al
	je	.L15692
	cmpb	$38, %al
	je	.L15693
	movq	3176(%rsp), %rdi
	movq	8(%rdi), %r10
	movzbl	44(%r10), %r15d
	movslq	%r15d,%r8
	movl	mode_size(,%r8,4), %eax
	sall	$3, %eax
	movl	%eax, 5476(%rsp)
	movq	8(%rdi), %rcx
	movzbl	17(%rcx), %r9d
	shrb	$6, %r9b
	movl	%r9d, %ebx
	andl	$1, %ebx
	movl	%ebx, 2792(%rsp)
.L11668:
	testq	%rdx, %rdx
	je	.L11671
	cmpb	$25, 16(%rdx)
	je	.L11672
	movl	$16, %r15d
	movl	$-1, 5476(%rsp)
.L11671:
	movl	$0, (%r13)
	.p2align 4,,7
.L11699:
	movzbl	16(%r12), %edx
	cmpb	$39, %dl
	je	.L15694
.L11677:
	leal	-37(%rdx), %esi
	cmpb	$1, %sil
	ja	.L11678
	cmpb	$37, %dl
	je	.L15695
	movq	48(%r12), %rbx
.L11680:
	movzbl	16(%rbx), %eax
	cmpb	$53, %al
	je	.L15696
	cmpb	$25, %al
	je	.L15697
.L11689:
	testq	%rbp, %rbp
	je	.L11691
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rbp, %rsi
	movl	$53, %edi
.L15211:
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, %rbp
.L11693:
	testb	$16, 17(%r12)
	je	.L11698
	movl	$1, (%r14)
.L11698:
	movq	32(%r12), %r12
	jmp	.L11699
.L11691:
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	jmp	.L15211
.L15697:
	movl	24(%rbx), %eax
.L15212:
	addl	%eax, (%r13)
	jmp	.L11693
.L15696:
	movq	32(%rbx), %rsi
	cmpb	$25, 16(%rsi)
	je	.L15698
	movq	40(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L15283
	movq	%rsi, %rbx
.L11683:
	movl	24(%rax), %eax
	addl	%eax, (%r13)
	jmp	.L11689
.L15698:
	movq	40(%rbx), %rbx
	movq	%rsi, %rax
	jmp	.L11683
.L15695:
	movq	40(%r12), %rdx
	movq	72(%rdx), %rbx
	jmp	.L11680
.L11678:
	cmpb	$42, %dl
	je	.L15699
.L11694:
	cmpb	$103, %dl
	je	.L11693
	leal	-101(%rdx), %ebx
	cmpb	$1, %bl
	ja	.L11675
	movq	32(%r12), %r8
	movq	8(%r12), %rcx
	movq	8(%r8), %rdi
	movzbl	44(%rdi), %r9d
	cmpb	%r9b, 44(%rcx)
	je	.L11693
.L11675:
	testl	%r15d, %r15d
	jne	.L11700
	movl	(%r13), %eax
	movl	5476(%rsp), %edi
	cltd
	idivl	%edi
	testl	%edx, %edx
	movl	%edx, %ebx
	je	.L15700
.L11700:
	testl	%r15d, %r15d
	movl	%r15d, 5460(%rsp)
	movq	%rbp, 5464(%rsp)
	jne	.L11703
	movl	2796(%rsp), %eax
	testl	%eax, %eax
	jne	.L15701
.L11703:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	5464(%rsp), %rdi
	movq	%rax, 56(%rsp)
	testq	%rdi, %rdi
	jne	.L15702
.L11704:
	movl	5456(%rsp), %eax
	testl	%eax, %eax
	je	.L11706
	movq	56(%rsp), %rsi
	cmpw	$55, (%rsi)
	je	.L15703
.L11706:
	movl	2796(%rsp), %eax
	movl	5476(%rsp), %ebp
	movl	5472(%rsp), %r14d
	movl	5460(%rsp), %ebx
	testl	%eax, %eax
	je	.L11708
	movq	3176(%rsp), %rax
	movq	8(%rax), %r10
	movzbl	44(%r10), %r13d
	movl	%r13d, 448(%rsp)
.L11709:
	movq	8(%r12), %rdi
	movl	48(%rdi), %r12d
	call	int_size_in_bytes
	movl	$0, 444(%rsp)
	movl	%eax, %r15d
	shrl	$3, %r12d
	cmpl	$31, %ebp
	jg	.L11710
	movl	$1, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 444(%rsp)
.L11710:
	cmpl	$16, %ebx
	je	.L15704
.L11711:
	testl	%ebx, %ebx
	je	.L11716
	cmpl	$16, %ebx
	je	.L11717
	movslq	%ebx,%r9
	cmpb	$0, direct_store(%r9)
	je	.L11716
.L11717:
	movq	56(%rsp), %rdi
	movzwl	(%rdi), %eax
	cmpw	$51, %ax
	je	.L11716
	cmpw	$53, %ax
	je	.L11716
	movl	448(%rsp), %r13d
	movq	56(%rsp), %r10
	testl	%r13d, %r13d
	movq	8(%r10), %rdi
	je	.L11723
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L11723
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L11723
	cmpw	$46, %dx
	je	.L11723
	cmpw	$47, %dx
	je	.L11723
	cmpw	$49, %dx
	je	.L11723
	cmpw	$113, %dx
	je	.L11723
	cmpw	$63, %dx
	je	.L15705
.L11724:
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, %rdi
.L11723:
	cmpl	$-1, %r14d
	leal	7(%r14), %r9d
	cmovle	%r9d, %r14d
	sarl	$3, %r14d
	movl	%r14d, %esi
	call	plus_constant_wide
	movl	%ebx, %esi
	movq	56(%rsp), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	orb	$16, 3(%rax)
	movq	%rax, %r15
	movl	$0, 440(%rsp)
	movl	448(%rsp), %eax
	movq	2800(%rsp), %rdx
	testl	%eax, %eax
	movzbl	16(%rdx), %eax
	setne	%r11b
	cmpb	$44, %al
	movzbl	%r11b, %ebp
	je	.L15706
	cmpb	$48, %al
	je	.L15707
.L11735:
	testl	%ebp, %ebp
	je	.L11762
	cmpw	$55, (%r15)
	je	.L15708
.L11762:
	movzwl	(%r15), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L11770
	mov	%eax, %r12d
	jmp	*.L11779(,%r12,8)
	.section	.rodata
	.align 8
	.align 4
.L11779:
	.quad	.L11773
	.quad	.L11770
	.quad	.L11770
	.quad	.L11770
	.quad	.L11778
	.quad	.L11770
	.quad	.L11770
	.quad	.L11770
	.quad	.L11776
	.quad	.L11776
	.quad	.L11770
	.quad	.L11776
	.text
.L11773:
	movq	8(%r15), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L11772:
	testl	%ebx, %ebx
	je	.L11769
	movzbl	2(%r15), %eax
	cmpb	$16, %al
	je	.L11781
	testb	%al, %al
	jne	.L15709
.L11781:
	movzbl	2(%r15), %edx
	movq	2800(%rsp), %rdi
	xorl	%esi, %esi
.L15213:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15365:
	movq	%rax, %r12
.L11788:
	movl	$1, 440(%rsp)
.L11734:
	cmpq	%r15, %r12
	je	.L11789
	movq	2800(%rsp), %rsi
	cmpb	$0, 16(%rsi)
	je	.L11789
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L11790
	cmpl	$55, %eax
	je	.L15710
.L11794:
	cmpl	$63, %eax
	je	.L11797
	cmpl	$66, %eax
	je	.L11797
.L11793:
	movzbl	2(%r12), %eax
	movzbl	2(%r15), %ecx
	cmpb	%cl, %al
	je	.L11800
	testb	%al, %al
	je	.L11800
	movq	2800(%rsp), %rax
	movl	440(%rsp), %r11d
	movq	8(%rax), %rdi
	movzbl	17(%rdi), %r9d
	shrb	$6, %r9b
	movl	%r9d, %edx
	andl	$1, %edx
	testl	%r11d, %r11d
	je	.L11801
	movq	%r12, %rsi
	movzbl	%cl, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r12
.L12056:
	movq	%r15, %rdi
	movq	%r12, %rsi
	call	emit_move_insn
.L11789:
	movl	440(%rsp), %r9d
	testl	%r9d, %r9d
	cmove	%r15, %r12
.L11733:
	movq	%r12, 56(%rsp)
	jmp	.L15228
.L11801:
	movq	%r15, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L11789
	.p2align 6,,7
.L11800:
	cmpb	$16, %al
	jne	.L12056
	movq	2800(%rsp), %rdx
	cmpb	$28, 16(%rdx)
	je	.L15711
	cmpb	$16, %al
	jne	.L12056
	movq	2800(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 344(%rsp)
	call	expr_size
	movq	%rax, %r13
	movq	2800(%rsp), %rax
	movq	8(%rax), %rbp
	movl	48(%rbp), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 340(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 352(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L12059
	cmpl	$55, %eax
	je	.L15712
	cmpl	$63, %eax
	je	.L12066
	cmpl	$66, %eax
	je	.L12066
.L12062:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L12069
	cmpl	$55, %eax
	je	.L15713
.L12073:
	cmpl	$63, %eax
	je	.L12076
	cmpl	$66, %eax
	je	.L12076
.L12072:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L12079
	cmpl	$55, %eax
	je	.L15714
.L12083:
	cmpl	$63, %eax
	je	.L12086
	cmpl	$66, %eax
	je	.L12086
.L12082:
	movq	352(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	344(%rsp), %r9
	cmpw	$55, (%r9)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L15715
.L12092:
	movl	340(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2704(%rsp)
	testl	%ebp, %ebp
	je	.L14707
.L12178:
	movslq	%ebp,%rax
	movq	%rax, 2696(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L12166
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L12170
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L12166
.L12170:
	movslq	%edx,%r8
	leaq	(%r8,%r8,4), %r14
	movq	%r8, 2688(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15716
.L12171:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15717
.L12172:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L12173
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2704(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L12166
.L12173:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 2680(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15718
.L12174:
	movq	2688(%rsp), %rbp
	movq	352(%rsp), %rdi
	xorl	%eax, %eax
	movq	344(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2704(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14984
	movq	2680(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L12166:
	movq	2696(%rsp), %r10
	movl	mode_wider_mode(,%r10,4), %ebp
	testl	%ebp, %ebp
	jne	.L12178
.L14707:
	movq	%r13, %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	344(%rsp), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rsi), %r13
	xorl	%esi, %esi
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	352(%rsp), %rax
	movq	%r13, (%rsp)
.L15218:
	movq	8(%rax), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L11789
.L14984:
	call	emit_insn
	jmp	.L11789
.L15718:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L12174
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L12174
.L15717:
	xorl	%eax, %eax
	movq	344(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12166
	jmp	.L12172
.L15716:
	xorl	%eax, %eax
	movq	352(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12166
	jmp	.L12171
.L15715:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 340(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	340(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L12106:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14698
.L12102:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L12102
.L14698:
	testl	%ecx, %ecx
	je	.L12095
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12104
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L12104
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L12104:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12106
.L12095:
	decl	%r9d
	jg	.L12092
	movq	352(%rsp), %rdx
	movq	344(%rsp), %rcx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rdx), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5736(%rsp)
	movl	$0, 5764(%rsp)
	movq	%rdx, 5712(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5720(%rsp)
	movq	%rdi, 5744(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L12109
	cmpw	$88, %dx
	je	.L12109
	cmpw	$87, %dx
	je	.L12109
.L12108:
	movl	%ecx, 5728(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L12111
	cmpw	$88, %dx
	je	.L12111
	cmpw	$87, %dx
	je	.L12111
.L12110:
	movl	%ecx, 5752(%rsp)
	movl	$0, 5756(%rsp)
	movl	$0, 5732(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L12113
	cmpw	$87, %ax
	je	.L12113
.L12112:
	testl	%edx, %edx
	movl	%edx, 5768(%rsp)
	je	.L12114
	movl	%r10d, 5764(%rsp)
.L12114:
	movl	5752(%rsp), %eax
	movl	%r10d, 5760(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L12116
	movl	5728(%rsp), %eax
	testl	%eax, %eax
	jne	.L12115
.L12116:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 340(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	340(%rsp), %ebp
.L12130:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14701
.L12126:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L12126
.L14701:
	testl	%ecx, %ecx
	je	.L12119
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L12128
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L12128
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L12128:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12130
.L12119:
	cmpl	$2, %r9d
	jle	.L12115
	testl	%r10d, %r10d
	jne	.L12132
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L12133
	cmpw	$46, %dx
	je	.L12133
	cmpw	$47, %dx
	je	.L12133
	cmpw	$49, %dx
	je	.L12133
	cmpw	$113, %dx
	je	.L12133
.L12132:
	movl	5728(%rsp), %esi
	testl	%esi, %esi
	jne	.L12115
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L12135
	cmpw	$46, %dx
	je	.L12135
	cmpw	$47, %dx
	je	.L12135
	cmpw	$49, %dx
	je	.L12135
	cmpw	$113, %dx
	je	.L12135
.L12115:
	cmpl	$8, 340(%rsp)
	movl	$8, %eax
	cmovl	340(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 340(%rsp)
	jle	.L12138
.L12160:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14704
.L12145:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L12145
.L14704:
	testl	%r13d, %r13d
	je	.L12138
	movslq	%r13d,%r14
	movq	%r14, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L12147
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 340(%rsp)
	jl	.L12147
	movslq	%edx,%rcx
	cmpl	%ebp, 5760(%rsp)
	leaq	5712(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %r11
	movq	%r11, 2712(%rsp)
	jl	.L12147
	movl	5768(%rsp), %edx
.L12158:
	testl	%edx, %edx
	je	.L12152
	subl	%ebp, 52(%rbx)
.L12152:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L12153
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15217:
	movl	40(%rbx), %edx
	movq	%rax, 328(%rsp)
	testl	%edx, %edx
	je	.L12155
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L12156:
	movq	%rax, %rsi
	movq	328(%rsp), %rdi
	xorl	%eax, %eax
	call	*2712(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L12157
	addl	%ebp, 52(%rbx)
.L12157:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L12158
.L12147:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L12160
.L12138:
	movl	5760(%rsp), %r14d
	testl	%r14d, %r14d
.L15399:
	je	.L11789
	jmp	.L15283
.L12155:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L12156
.L12153:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15217
.L12135:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5720(%rsp)
	jmp	.L12115
.L12133:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5744(%rsp)
	jmp	.L12132
.L12113:
	movl	$1, %edx
	jmp	.L12112
.L12111:
	movl	$1, %ecx
	jmp	.L12110
.L12109:
	movl	$1, %ecx
	jmp	.L12108
.L12086:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L12082
.L15714:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L12080
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15719
.L12080:
	cmpl	$55, %eax
	jne	.L12083
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L12082
.L15719:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L12082
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L12082
.L12079:
	cmpq	$0, 16(%r13)
	jne	.L12087
	movq	8(%r13), %r13
	jmp	.L12082
.L12087:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L12088
	movq	%rsi, %r13
	jmp	.L12082
.L12088:
	movq	8(%r13), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L12082
.L12076:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L12072
.L15713:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L12070
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15720
.L12070:
	cmpl	$55, %eax
	jne	.L12073
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L12072
.L15720:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L12072
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 344(%rsp)
	jmp	.L12072
.L12069:
	cmpq	$0, 16(%r12)
	jne	.L12077
	movq	8(%r12), %r10
	movq	%r10, 344(%rsp)
	jmp	.L12072
.L12077:
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 344(%rsp)
	jne	.L12072
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rsi
	movq	%rsi, 344(%rsp)
	jmp	.L12072
.L12066:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L12062
.L15712:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L12062
.L12059:
	cmpq	$0, 16(%r15)
	jne	.L12067
	movq	8(%r15), %r11
	movq	%r11, 352(%rsp)
	jmp	.L12062
.L12067:
	movq	24(%r15), %r9
	testq	%r9, %r9
	movq	%r9, 352(%rsp)
	jne	.L12062
	movq	8(%r15), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rdi
	movq	%rdi, 352(%rsp)
	jmp	.L12062
.L15711:
	xorl	%eax, %eax
	movq	%rdx, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 416(%rsp)
	je	.L15721
.L11805:
	movl	$8, %edi
	call	size_int
	movq	2800(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r9
	movl	$57, %edi
	movq	32(%r9), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	2800(%rsp), %r11
	movq	%rax, %rbp
	movl	32(%r11), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%rbp, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	2800(%rsp), %rbx
	movq	$0, 360(%rsp)
	movq	%rax, 384(%rsp)
	movq	%rax, %r14
	movq	8(%rbx), %rsi
	movl	48(%rsi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 380(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 392(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L11931
	cmpl	$55, %eax
	je	.L15722
	cmpl	$63, %eax
	je	.L11938
	cmpl	$66, %eax
	je	.L11938
.L11934:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L11941
	cmpl	$55, %eax
	je	.L15723
.L11945:
	cmpl	$63, %eax
	je	.L11948
	cmpl	$66, %eax
	je	.L11948
.L11944:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L11951
	cmpl	$55, %eax
	je	.L15724
.L11955:
	cmpl	$63, %eax
	je	.L11958
	cmpl	$66, %eax
	je	.L11958
.L11954:
	movq	392(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 384(%rsp)
	je	.L15283
	movq	384(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L15725
.L11964:
	movl	380(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2744(%rsp)
	testl	%ebp, %ebp
	je	.L14695
.L12050:
	movslq	%ebp,%rcx
	movq	%rcx, %rax
	movq	%rcx, 2736(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L12038
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L12042
	movq	384(%rsp), %r8
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r8)
	ja	.L12038
.L12042:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 2728(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15726
.L12043:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15727
.L12044:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L12045
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2744(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L12038
.L12045:
	call	get_last_insn
	movl	$1, %edx
	movq	384(%rsp), %rsi
	movq	%rax, 2720(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15728
.L12046:
	movq	2728(%rsp), %r13
	movq	392(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	2744(%rsp), %rcx
	call	*insn_gen_function(,%r13,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14983
	movq	2720(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L12038:
	movq	2736(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L12050
.L14695:
	movq	384(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	392(%rsp), %r12
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rsp)
	xorl	%esi, %esi
	movq	8(%r12), %r8
	call	emit_library_call
.L12048:
	cmpw	$46, (%r14)
	je	.L15729
	movq	8(%r15), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	416(%rsp), %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 360(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L12052:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L12053
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L12053:
	cmpq	$0, 360(%rsp)
	je	.L11789
	movq	360(%rsp), %rdi
	call	emit_label
	jmp	.L11789
.L15729:
	movq	2800(%rsp), %rbx
	movq	8(%r15), %rdi
	movl	32(%rbx), %esi
	call	plus_constant_wide
	movq	416(%rsp), %rdi
	movq	2800(%rsp), %r14
	movq	%rax, %r12
	movl	32(%r14), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L12052
.L14983:
	call	emit_insn
	jmp	.L12048
.L15728:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L12046
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L12046
.L15727:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12038
	jmp	.L12044
.L15726:
	xorl	%eax, %eax
	movq	392(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L12038
	jmp	.L12043
.L15725:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 380(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	380(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L11978:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14686
.L11974:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L11974
.L14686:
	testl	%ecx, %ecx
	je	.L11967
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L11976
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L11976
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L11976:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11978
.L11967:
	decl	%r9d
	jg	.L11964
	movq	392(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 5736(%rsp)
	movq	%rcx, 5712(%rsp)
	movl	$0, 5764(%rsp)
	movq	%rdi, 5744(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 376(%rsp)
	movq	%rbx, 5720(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L11981
	cmpw	$88, %dx
	je	.L11981
	cmpw	$87, %dx
	je	.L11981
.L11980:
	movl	%ecx, 5728(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L11983
	cmpw	$88, %dx
	je	.L11983
	cmpw	$87, %dx
	je	.L11983
.L11982:
	movl	%ecx, 5752(%rsp)
	movl	$0, 5756(%rsp)
	movl	$0, 5732(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L11985
	cmpw	$87, %ax
	je	.L11985
.L11984:
	testl	%edx, %edx
	movl	%edx, 5768(%rsp)
	je	.L11986
	movl	%r10d, 5764(%rsp)
.L11986:
	movl	5752(%rsp), %eax
	movl	%r10d, 5760(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L11988
	movl	5728(%rsp), %eax
	testl	%eax, %eax
	jne	.L11987
.L11988:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 380(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	380(%rsp), %ebp
.L12002:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14689
.L11998:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11998
.L14689:
	testl	%ecx, %ecx
	je	.L11991
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L12000
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L12000
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L12000:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L12002
.L11991:
	cmpl	$2, %r9d
	jle	.L11987
	testl	%r10d, %r10d
	jne	.L12004
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L12005
	cmpw	$46, %dx
	je	.L12005
	cmpw	$47, %dx
	je	.L12005
	cmpw	$49, %dx
	je	.L12005
	cmpw	$113, %dx
	je	.L12005
.L12004:
	movl	5728(%rsp), %eax
	testl	%eax, %eax
	jne	.L11987
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L12007
	cmpw	$46, %dx
	je	.L12007
	cmpw	$47, %dx
	je	.L12007
	cmpw	$49, %dx
	je	.L12007
	cmpw	$113, %dx
	je	.L12007
.L11987:
	cmpl	$8, 380(%rsp)
	movl	$8, %eax
	cmovl	380(%rsp), %eax
	cmpl	$1, 376(%rsp)
	movl	%eax, 380(%rsp)
	jle	.L12010
.L12032:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14692
.L12017:
	movslq	%edx,%rbx
	movl	376(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L12017
.L14692:
	testl	%r12d, %r12d
	je	.L12010
	movslq	%r12d,%r13
	movq	%r13, %rbp
	salq	$4, %rbp
	addq	mov_optab(%rip), %rbp
	movl	8(%rbp), %edx
	cmpl	$210, %edx
	je	.L12019
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 380(%rsp)
	jl	.L12019
	movslq	%edx,%r9
	cmpl	%ebp, 5760(%rsp)
	leaq	5712(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %r11
	movq	%r11, 2752(%rsp)
	jl	.L12019
	movl	5768(%rsp), %edx
.L12030:
	testl	%edx, %edx
	je	.L12024
	subl	%ebp, 52(%rbx)
.L12024:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L12025
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15216:
	movq	%rax, 368(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L12027
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L12028:
	movq	%rax, %rsi
	movq	368(%rsp), %rdi
	xorl	%eax, %eax
	call	*2752(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L12029
	addl	%ebp, 52(%rbx)
.L12029:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L12030
.L12019:
	movl	mode_size(,%r13,4), %edi
	movl	%edi, 376(%rsp)
	decl	%edi
	jg	.L12032
.L12010:
	movl	5760(%rsp), %eax
	testl	%eax, %eax
	je	.L12048
	jmp	.L15283
.L12027:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L12028
.L12025:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15216
.L12007:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5720(%rsp)
	jmp	.L11987
.L12005:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5744(%rsp)
	jmp	.L12004
.L11985:
	movl	$1, %edx
	jmp	.L11984
.L11983:
	movl	$1, %ecx
	jmp	.L11982
.L11981:
	movl	$1, %ecx
	jmp	.L11980
.L11958:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L11954
.L15724:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L11952
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15730
.L11952:
	cmpl	$55, %eax
	jne	.L11955
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L11954
.L15730:
	movq	8(%rbp), %rbx
	movq	%rbx, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L11954
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 384(%rsp)
	jmp	.L11954
.L11951:
	cmpq	$0, 16(%r14)
	jne	.L11959
	movq	8(%r14), %rax
	movq	%rax, 384(%rsp)
	jmp	.L11954
.L11959:
	movq	24(%r14), %rbp
	testq	%rbp, %rbp
	movq	%rbp, 384(%rsp)
	jne	.L11954
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r11
	movq	%r11, 384(%rsp)
	jmp	.L11954
.L11948:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L11944
.L15723:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L11942
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15731
.L11942:
	cmpl	$55, %eax
	jne	.L11945
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L11944
.L15731:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L11944
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L11944
.L11941:
	cmpq	$0, 16(%r12)
	jne	.L11949
	movq	8(%r12), %r12
	jmp	.L11944
.L11949:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L11950
	movq	%rax, %r12
	jmp	.L11944
.L11950:
	movq	8(%r12), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L11944
.L11938:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L11934
.L15722:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L11934
.L11931:
	cmpq	$0, 16(%r15)
	jne	.L11939
	movq	8(%r15), %rcx
	movq	%rcx, 392(%rsp)
	jmp	.L11934
.L11939:
	movq	24(%r15), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 392(%rsp)
	jne	.L11934
	movq	8(%r15), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r8
	movq	%r8, 392(%rsp)
	jmp	.L11934
.L15721:
	movq	2800(%rsp), %rcx
	movq	416(%rsp), %r8
	movl	32(%rcx), %eax
	cmpl	%eax, 8(%r8)
	jge	.L11805
	movq	%r12, 424(%rsp)
	movq	8(%rcx), %rbx
	movl	48(%rbx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 412(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 432(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L11808
	cmpl	$55, %eax
	je	.L15732
	cmpl	$63, %eax
	je	.L11815
	cmpl	$66, %eax
	je	.L11815
.L11811:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L11818
	cmpl	$55, %eax
	je	.L15733
.L11822:
	cmpl	$63, %eax
	je	.L11825
	cmpl	$66, %eax
	je	.L11825
.L11821:
	movq	416(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L11828
	cmpl	$55, %eax
	je	.L15734
.L11832:
	cmpl	$63, %eax
	je	.L11835
	cmpl	$66, %eax
	je	.L11835
.L11831:
	movq	432(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	movq	424(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpq	$0, 416(%rsp)
	je	.L15283
	movq	416(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15735
.L11841:
	movl	412(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2776(%rsp)
	testl	%ebp, %ebp
	je	.L14683
.L11927:
	movslq	%ebp,%rax
	movq	%rax, 2768(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L11915
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L11919
	movq	416(%rsp), %r8
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r8)
	ja	.L11915
.L11919:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15736
.L11920:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15737
.L11921:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L11922
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2776(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L11915
.L11922:
	call	get_last_insn
	movl	$1, %edx
	movq	416(%rsp), %rsi
	movq	%rax, 2760(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15738
.L11923:
	movq	432(%rsp), %rdi
	xorl	%eax, %eax
	movq	424(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2776(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14984
	movq	2760(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L11915:
	movq	2768(%rsp), %rax
	movl	mode_wider_mode(,%rax,4), %ebp
	testl	%ebp, %ebp
	jne	.L11927
.L14683:
	movq	416(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	424(%rsp), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%r10), %r13
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	432(%rsp), %rax
	movl	$4, 8(%rsp)
	movq	%r13, (%rsp)
	jmp	.L15218
.L15738:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L11923
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L11923
.L15737:
	xorl	%eax, %eax
	movq	424(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11915
	jmp	.L11921
.L15736:
	xorl	%eax, %eax
	movq	432(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11915
	jmp	.L11920
.L15735:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 412(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	412(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L11855:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14674
.L11851:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L11851
.L14674:
	testl	%ecx, %ecx
	je	.L11844
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L11853
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L11853
	movl	%edi, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %edi
.L11853:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11855
.L11844:
	decl	%r9d
	jg	.L11841
	movq	432(%rsp), %rdx
	movq	424(%rsp), %rcx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rdx), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5800(%rsp)
	movl	$0, 5828(%rsp)
	movq	%rdx, 5776(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5784(%rsp)
	movq	%rdi, 5808(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L11858
	cmpw	$88, %dx
	je	.L11858
	cmpw	$87, %dx
	je	.L11858
.L11857:
	movl	%ecx, 5792(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L11860
	cmpw	$88, %dx
	je	.L11860
	cmpw	$87, %dx
	je	.L11860
.L11859:
	movl	%ecx, 5816(%rsp)
	movl	$0, 5820(%rsp)
	movl	$0, 5796(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L11862
	cmpw	$87, %ax
	je	.L11862
.L11861:
	testl	%edx, %edx
	movl	%edx, 5832(%rsp)
	je	.L11863
	movl	%r10d, 5828(%rsp)
.L11863:
	movl	5816(%rsp), %eax
	movl	%r10d, 5824(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L11865
	movl	5792(%rsp), %eax
	testl	%eax, %eax
	jne	.L11864
.L11865:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 412(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	412(%rsp), %ebp
.L11879:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14677
.L11875:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11875
.L14677:
	testl	%ecx, %ecx
	je	.L11868
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L11877
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L11877
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L11877:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11879
.L11868:
	cmpl	$2, %r9d
	jle	.L11864
	testl	%r10d, %r10d
	jne	.L11881
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L11882
	cmpw	$46, %dx
	je	.L11882
	cmpw	$47, %dx
	je	.L11882
	cmpw	$49, %dx
	je	.L11882
	cmpw	$113, %dx
	je	.L11882
.L11881:
	movl	5792(%rsp), %esi
	testl	%esi, %esi
	jne	.L11864
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L11884
	cmpw	$46, %dx
	je	.L11884
	cmpw	$47, %dx
	je	.L11884
	cmpw	$49, %dx
	je	.L11884
	cmpw	$113, %dx
	je	.L11884
.L11864:
	cmpl	$8, 412(%rsp)
	movl	$8, %eax
	cmovl	412(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 412(%rsp)
	jle	.L11887
.L11909:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14680
.L11894:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L11894
.L14680:
	testl	%r13d, %r13d
	je	.L11887
	movslq	%r13d,%r14
	movq	%r14, %rbp
	salq	$4, %rbp
	addq	mov_optab(%rip), %rbp
	movl	8(%rbp), %edx
	cmpl	$210, %edx
	je	.L11896
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 412(%rsp)
	jl	.L11896
	movslq	%edx,%rcx
	cmpl	%ebp, 5824(%rsp)
	leaq	5776(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %r11
	movq	%r11, 2784(%rsp)
	jl	.L11896
	movl	5832(%rsp), %edx
.L11907:
	testl	%edx, %edx
	je	.L11901
	subl	%ebp, 52(%rbx)
.L11901:
	movl	16(%rbx), %edx
	testl	%edx, %edx
	je	.L11902
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15215:
	movl	40(%rbx), %r9d
	movq	%rax, 400(%rsp)
	testl	%r9d, %r9d
	je	.L11904
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L11905:
	movq	%rax, %rsi
	movq	400(%rsp), %rdi
	xorl	%eax, %eax
	call	*2784(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L11906
	addl	%ebp, 52(%rbx)
.L11906:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L11907
.L11896:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L11909
.L11887:
	movl	5824(%rsp), %r14d
	testl	%r14d, %r14d
	jmp	.L15399
.L11904:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L11905
.L11902:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15215
.L11884:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5784(%rsp)
	jmp	.L11864
.L11882:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5808(%rsp)
	jmp	.L11881
.L11862:
	movl	$1, %edx
	jmp	.L11861
.L11860:
	movl	$1, %ecx
	jmp	.L11859
.L11858:
	movl	$1, %ecx
	jmp	.L11857
.L11835:
	movq	416(%rsp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	416(%rsp), %rbx
	movq	%rax, 8(%rbx)
	movq	416(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	416(%rsp), %r8
	movq	%rax, 16(%r8)
	jmp	.L11831
.L15734:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L11829
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L15739
.L11829:
	cmpl	$55, %eax
	jne	.L11832
	movq	416(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L11831
.L15739:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L11831
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	416(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15214:
	movq	%rbx, 416(%rsp)
	jmp	.L11831
.L11828:
	movq	416(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L11836
	movq	8(%rcx), %rbx
	jmp	.L15214
.L11836:
	movq	416(%rsp), %r14
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L11837
	movq	%rsi, 416(%rsp)
	jmp	.L11831
.L11837:
	movq	416(%rsp), %r9
	movq	8(%r9), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	416(%rsp), %rdx
	movq	%rax, %rdi
	movq	8(%rdx), %rsi
	movq	%rax, 24(%rdx)
	call	gen_move_insn
	movq	416(%rsp), %r11
	movq	%rax, %rdi
	movq	16(%r11), %rsi
	call	emit_insn_before
	movq	416(%rsp), %r13
	movq	24(%r13), %r10
	movq	%r10, 416(%rsp)
	jmp	.L11831
.L11825:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L11821
.L15733:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L11819
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15740
.L11819:
	cmpl	$55, %eax
	jne	.L11822
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L11821
.L15740:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L11821
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 424(%rsp)
	jmp	.L11821
.L11818:
	cmpq	$0, 16(%r12)
	jne	.L11826
	movq	8(%r12), %rsi
	movq	%rsi, 424(%rsp)
	jmp	.L11821
.L11826:
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 424(%rsp)
	jne	.L11821
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r11
	movq	%r11, 424(%rsp)
	jmp	.L11821
.L11815:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L11811
.L15732:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L11811
.L11808:
	cmpq	$0, 16(%r15)
	jne	.L11816
	movq	8(%r15), %rcx
	movq	%rcx, 432(%rsp)
	jmp	.L11811
.L11816:
	movq	24(%r15), %r13
	testq	%r13, %r13
	movq	%r13, 432(%rsp)
	jne	.L11811
	movq	8(%r15), %r14
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rbp
	movq	%rbp, 432(%rsp)
	jmp	.L11811
	.p2align 6,,7
.L11797:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L11793
.L15710:
	jne	.L11794
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L11793
	.p2align 6,,7
.L11790:
	cmpq	$0, 16(%r15)
	jne	.L11798
	movq	8(%r15), %r15
	jmp	.L11793
.L11798:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.L11799
	movq	%rsi, %r15
	jmp	.L11793
.L11799:
	movq	8(%r15), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L11793
	.p2align 6,,7
.L15709:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	2800(%rsp), %rdi
	movzbl	2(%r15), %edx
	movq	%rax, %rsi
	jmp	.L15213
.L11769:
	movl	(%r15), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15741
	movzbl	2(%r15), %edx
	movq	2800(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r15, %rsi
	call	expand_expr
	cmpw	$51, (%r15)
	movq	%rax, %r12
	je	.L15742
.L11787:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L11788
	cmpw	$46, %dx
	je	.L11788
	cmpw	$47, %dx
	je	.L11788
	cmpw	$49, %dx
	je	.L11788
	cmpw	$113, %dx
	jne	.L11734
	jmp	.L11788
	.p2align 6,,7
.L15742:
	cmpl	$63, 8(%r15)
	jle	.L11734
	jmp	.L11787
.L15741:
	movq	2800(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r15), %rdi
	movzbl	3(%r15), %edx
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L11733
.L11778:
	movl	$1, %ebx
	jmp	.L11772
.L11770:
	xorl	%ebx, %ebx
	jmp	.L11772
.L11776:
	movq	8(%r15), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L11778
	movq	16(%r15), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L11772
	jmp	.L11778
	.p2align 6,,7
.L15708:
	movzbl	2(%r15), %eax
	cmpb	$16, %al
	je	.L11762
	movl	cse_not_expected(%rip), %r14d
	movq	2800(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r14d, %r14d
	cmove	%r15, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L11788
	testb	%al, %al
	je	.L11788
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15365
	.p2align 6,,7
.L15707:
	cmpb	$16, 2(%r15)
	jne	.L11735
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.L11739
.L14667:
	movzwl	(%r15), %eax
	movq	%r15, %r12
	cmpl	$59, %eax
	je	.L11741
	cmpl	$55, %eax
	je	.L15743
.L11745:
	cmpl	$63, %eax
	je	.L11748
	cmpl	$66, %eax
	je	.L11748
.L11744:
	movq	2800(%rsp), %r15
	xorl	%eax, %eax
	movq	%r13, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r15), %rdi
	call	jumpifnot
	movq	40(%r15), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	%ebp, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L11754
.L14669:
	movq	%r14, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	2800(%rsp), %r13
	movq	%r12, %rsi
	movq	48(%r13), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L11759
.L14671:
	movq	%r14, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L11733
	.p2align 6,,7
.L11759:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rbp
	movq	%rax, 16(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, pending_chain(%rip)
	movq	%rbp, %rbx
	jne	.L11759
	jmp	.L14671
	.p2align 6,,7
.L11754:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r8
	movq	%rax, 16(%rbx)
	testq	%r8, %r8
	movq	%r8, pending_chain(%rip)
	movq	%r8, %rbx
	jne	.L11754
	jmp	.L14669
.L11748:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L11744
.L15743:
	jne	.L11745
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L11744
.L11741:
	cmpq	$0, 16(%r15)
	jne	.L11749
	movq	8(%r15), %r12
	jmp	.L11744
.L11749:
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.L11750
	movq	%rax, %r12
	jmp	.L11744
.L11750:
	movq	8(%r15), %r15
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L11744
	.p2align 6,,7
.L11739:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	testq	%rcx, %rcx
	movq	%rcx, pending_chain(%rip)
	movq	%rcx, %rbx
	jne	.L11739
	jmp	.L14667
	.p2align 6,,7
.L15706:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L11731
.L14665:
	movq	2800(%rsp), %rbx
	movq	%r15, %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	movq	40(%rbx), %rdi
	call	store_expr
	movq	%rax, %r12
	jmp	.L11733
.L11731:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L11731
	jmp	.L14665
.L15705:
	movq	16(%rdi), %rdx
	cmpw	$46, (%rdx)
	jne	.L11724
	movq	8(%rdi), %rax
	cmpq	virtual_incoming_args_rtx(%rip), %rax
	je	.L11723
	cmpq	virtual_stack_vars_rtx(%rip), %rax
	jne	.L11724
	jmp	.L11723
	.p2align 6,,7
.L11716:
	movq	2800(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	%r12d, %r9d
	movl	%ebx, %ecx
	movq	56(%rsp), %rdi
	movq	%rax, %r8
	movq	%rax, %r13
	movl	%ebp, %esi
	movl	%r14d, %edx
	xorl	%eax, %eax
	movl	%r15d, (%rsp)
	call	store_bit_field
	movl	448(%rsp), %eax
	testl	%eax, %eax
	je	.L11718
	movl	444(%rsp), %eax
	testl	%eax, %eax
	je	.L11719
	movq	56(%rsp), %rcx
	movl	(%rcx), %eax
	andl	$134283263, %eax
	cmpl	$134217783, %eax
	je	.L11719
	movl	2792(%rsp), %r14d
	testl	%r14d, %r14d
	je	.L11720
	movl	444(%rsp), %edx
	xorl	%esi, %esi
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	expand_and
.L15219:
	movq	%rax, 56(%rsp)
	jmp	.L15228
.L11720:
	movzbl	2(%r13), %r12d
	testl	%r12d, %r12d
	cmove	448(%rsp), %r12d
	xorl	%esi, %esi
	movslq	%r12d,%r8
	movl	mode_size(,%r8,4), %edi
	sall	$3, %edi
	subl	%ebp, %edi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %r15
	movl	%r12d, %esi
	movq	%r13, %rdx
	movq	%rax, %rcx
	movl	$77, %edi
	xorl	%eax, %eax
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movl	$78, %edi
	movl	%r12d, %esi
	movq	%r15, %rcx
	xorl	%eax, %eax
	call	expand_shift
	jmp	.L15219
.L11719:
	movq	56(%rsp), %rdi
	movl	2792(%rsp), %ecx
	movl	%ebp, %esi
	movl	448(%rsp), %r9d
	movl	%r14d, %edx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	call	extract_bit_field
	jmp	.L15219
.L11718:
	movq	const0_rtx(%rip), %rbp
	movq	%rbp, 56(%rsp)
	jmp	.L15228
.L15704:
	movq	56(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpw	$51, %ax
	je	.L11712
	cmpw	$53, %ax
	jne	.L11711
.L11712:
	movq	56(%rsp), %rbx
	xorl	%edx, %edx
	movzbl	2(%rbx), %edi
	movslq	%edi,%r11
	movl	mode_size(,%r11,4), %esi
	call	assign_stack_temp
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	copy_rtx
	movq	56(%rsp), %rdx
	movb	$16, 2(%rax)
	movq	%rax, %r13
	movzbq	2(%rdx), %rsi
	movl	mode_size(,%rsi,4), %eax
	sall	$3, %eax
	cmpl	%eax, %ebp
	je	.L11713
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	call	emit_move_insn
.L11713:
	movq	2800(%rsp), %r8
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	call	store_field
	movq	%rbx, %rsi
	movq	56(%rsp), %rdi
	call	emit_move_insn
	jmp	.L15228
.L11708:
	movl	$0, 448(%rsp)
	jmp	.L11709
.L15703:
	orb	$8, 3(%rsi)
	jmp	.L11706
.L15702:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %r15
	movq	%rax, %rsi
	cmpw	$55, (%r15)
	jne	.L15283
	movl	$4, %edi
	call	force_reg
	movq	56(%rsp), %rbp
	movl	$4, %esi
	movq	%rax, %rcx
	movl	$63, %edi
	xorl	%eax, %eax
	movq	8(%rbp), %rdx
	call	gen_rtx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, 56(%rsp)
	jmp	.L11704
.L15701:
	movq	%r12, %rdi
	call	stabilize_reference
	movq	%rax, %r12
	jmp	.L11703
.L15700:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	mode_for_size
	movl	%eax, %r15d
	cmpl	$16, %eax
	cmove	%ebx, %r15d
	jmp	.L11700
	.p2align 6,,7
.L15699:
	movq	40(%r12), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L11694
	movq	8(%r12), %r11
	movq	32(%r11), %rax
	cmpb	$25, 16(%rax)
	jne	.L11694
	movl	24(%rax), %eax
	imull	24(%rcx), %eax
	jmp	.L15212
	.p2align 6,,7
.L15694:
	movl	flag_volatile(%rip), %eax
	testl	%eax, %eax
	je	.L11677
	movl	$1, (%r14)
	movzbl	16(%r12), %edx
	jmp	.L11677
.L11672:
	movl	24(%rdx), %eax
	movl	%eax, 5476(%rsp)
	jmp	.L11671
.L15693:
	movq	3176(%rsp), %rax
	movzbl	17(%rax), %r11d
	movq	40(%rax), %rdx
	shrb	$6, %r11b
	movl	%r11d, %esi
	andl	$1, %esi
	movl	%esi, 2792(%rsp)
	jmp	.L11668
.L15692:
	movq	40(%r12), %rax
	testb	$16, 53(%rax)
	movq	40(%rax), %rdx
	jne	.L11667
	movzbl	52(%rax), %r15d
.L11667:
	movzbl	17(%rax), %r10d
	shrb	$6, %r10b
	movl	%r10d, %r8d
	andl	$1, %r8d
	movl	%r8d, 2792(%rsp)
	jmp	.L11668
.L15554:
	movq	2800(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, 56(%rsp)
	jmp	.L11663
.L11280:
	movq	%rbp, %rdi
	movq	%r13, %rsi
.L15210:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L11201
.L11279:
	cmpb	$16, %al
	je	.L15744
.L11535:
	movq	%rbp, %rdi
	movq	%r13, %rsi
	jmp	.L15209
.L15744:
	cmpb	$28, 16(%r15)
	je	.L15745
	cmpb	$16, %al
	jne	.L11535
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	8(%r15), %r11
	movq	%rax, %r14
	movl	48(%r11), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%rbp)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movzwl	(%rbp), %eax
	cmpl	$59, %eax
	je	.L11538
	cmpl	$55, %eax
	je	.L15746
.L11542:
	cmpl	$63, %eax
	je	.L11545
	cmpl	$66, %eax
	je	.L11545
.L11541:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L11548
	cmpl	$55, %eax
	je	.L15747
.L11552:
	cmpl	$63, %eax
	je	.L11555
	cmpl	$66, %eax
	je	.L11555
.L11551:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L11558
	cmpl	$55, %eax
	je	.L15748
.L11562:
	cmpl	$63, %eax
	je	.L11565
	cmpl	$66, %eax
	je	.L11565
.L11561:
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	testq	%r14, %r14
	je	.L15283
	cmpw	$46, (%r14)
	je	.L15749
.L11571:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %r12d
	movq	%rax, 2832(%rsp)
	testl	%r12d, %r12d
	je	.L14663
.L11657:
	movslq	%r12d,%rax
	movq	%rax, 2824(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L11645
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L11649
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L11645
.L11649:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %r15
	movq	%rax, 2816(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15750
.L11650:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15751
.L11651:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L11652
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2832(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L11645
.L11652:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, 2808(%rsp)
	movl	%r12d, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15752
.L11653:
	movq	2816(%rsp), %r12
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	2832(%rsp), %rcx
	call	*insn_gen_function(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14981
	movq	2808(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L11645:
	movq	2824(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %r12d
	testl	%r12d, %r12d
	jne	.L11657
.L14663:
	movl	$4, %edi
	movq	%r14, %rsi
.L15208:
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r13), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r10, (%rsp)
	movq	8(%rbp), %r8
	call	emit_library_call
	jmp	.L11201
.L14981:
	call	emit_insn
	jmp	.L11201
	.p2align 6,,7
.L15752:
	movq	%rax, %rdi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L11653
	movq	%rbx, %rsi
	movl	%r12d, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L11653
	.p2align 6,,7
.L15751:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11645
	jmp	.L11651
.L15750:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11645
	jmp	.L11650
.L15749:
	movl	8(%r14), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	$9, %edi
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	movl	%r10d, %r8d
.L11585:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14654
.L11581:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%edi, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11581
.L14654:
	testl	%ecx, %ecx
	je	.L11574
	movslq	%ecx,%rcx
	movq	%rcx, %rdi
	salq	$4, %rdi
	cmpl	$210, 8(%r11,%rdi)
	je	.L11583
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebx
	jl	.L11583
	movl	%r8d, %eax
	movl	%edx, %r8d
	xorl	%edx, %edx
	divl	%r8d
	addl	%eax, %r9d
	movl	%edx, %r8d
.L11583:
	movl	mode_size(,%rcx,4), %edi
	cmpl	$1, %edi
	jg	.L11585
.L11574:
	decl	%r9d
	jg	.L11571
	movq	8(%rbp), %rbx
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movq	%rbp, 5840(%rsp)
	movl	$0, 5892(%rsp)
	movq	%r13, 5864(%rsp)
	movl	%r10d, %r12d
	movl	$9, %r14d
	movq	%rbx, 5848(%rsp)
	movq	%rdi, 5872(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L11588
	cmpw	$88, %dx
	je	.L11588
	cmpw	$87, %dx
	je	.L11588
.L11587:
	movl	%ecx, 5856(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L11590
	cmpw	$88, %dx
	je	.L11590
	cmpw	$87, %dx
	je	.L11590
.L11589:
	movl	%ecx, 5880(%rsp)
	movl	$0, 5884(%rsp)
	movl	$0, 5860(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L11592
	cmpw	$87, %ax
	je	.L11592
.L11591:
	testl	%edx, %edx
	movl	%edx, 5896(%rsp)
	je	.L11593
	movl	%r10d, 5892(%rsp)
.L11593:
	movl	%r10d, 5888(%rsp)
	movl	5880(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L11595
	movl	5856(%rsp), %eax
	testl	%eax, %eax
	jne	.L11594
.L11595:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r13d
	cmovl	%r15d, %ebp
.L11609:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14657
.L11605:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11605
.L14657:
	testl	%ecx, %ecx
	je	.L11598
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L11607
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r13d, %eax
	cmpl	%eax, %ebp
	jl	.L11607
	movl	%r12d, %eax
	movl	%edx, %r12d
	xorl	%edx, %edx
	divl	%r12d
	addl	%eax, %r9d
	movl	%edx, %r12d
.L11607:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11609
.L11598:
	cmpl	$2, %r9d
	jle	.L11594
	testl	%r10d, %r10d
	jne	.L11611
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L11612
	cmpw	$46, %dx
	je	.L11612
	cmpw	$47, %dx
	je	.L11612
	cmpw	$49, %dx
	je	.L11612
	cmpw	$113, %dx
	je	.L11612
.L11611:
	movl	5856(%rsp), %esi
	testl	%esi, %esi
	jne	.L11594
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L11614
	cmpw	$46, %dx
	je	.L11614
	cmpw	$47, %dx
	je	.L11614
	cmpw	$49, %dx
	je	.L11614
	cmpw	$113, %dx
	je	.L11614
.L11594:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, %r14d
	jle	.L11617
.L11639:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14660
.L11624:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L11624
.L14660:
	testl	%r12d, %r12d
	je	.L11617
	movslq	%r12d,%r13
	movq	%r13, %r14
	salq	$4, %r14
	addq	mov_optab(%rip), %r14
	movl	8(%r14), %edx
	cmpl	$210, %edx
	je	.L11626
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L11626
	movslq	%edx,%r9
	cmpl	%ebp, 5888(%rsp)
	leaq	5840(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %rcx
	movq	%rcx, 2840(%rsp)
	jl	.L11626
	movl	5896(%rsp), %edx
.L11637:
	testl	%edx, %edx
	je	.L11631
	subl	%ebp, 52(%rbx)
.L11631:
	movl	16(%rbx), %edi
	testl	%edi, %edi
	je	.L11632
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15207:
	movl	40(%rbx), %r8d
	movq	%rax, %r14
	testl	%r8d, %r8d
	je	.L11634
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L11635:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*2840(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L11636
	addl	%ebp, 52(%rbx)
.L11636:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L11637
.L11626:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L11639
.L11617:
	movl	5888(%rsp), %r15d
	testl	%r15d, %r15d
.L15398:
	je	.L11201
	jmp	.L15283
	.p2align 6,,7
.L11634:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L11635
.L11632:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15207
.L11614:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5848(%rsp)
	jmp	.L11594
.L11612:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5872(%rsp)
	jmp	.L11611
.L11592:
	movl	$1, %edx
	jmp	.L11591
.L11590:
	movl	$1, %ecx
	jmp	.L11589
.L11588:
	movl	$1, %ecx
	jmp	.L11587
.L11565:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L11561
.L15748:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L11559
	movq	8(%r14), %r12
	cmpw	$59, (%r12)
	je	.L15753
.L11559:
	cmpl	$55, %eax
	jne	.L11562
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L11561
.L15753:
	movq	8(%r12), %r9
	movq	%r9, 8(%r14)
	cmpq	$0, 16(%r12)
	je	.L11561
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r14
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L11561
.L11558:
	cmpq	$0, 16(%r14)
	jne	.L11566
	movq	8(%r14), %r14
	jmp	.L11561
.L11566:
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L11567
	movq	%rsi, %r14
	jmp	.L11561
.L11567:
	movq	8(%r14), %r12
	movzbl	2(%r12), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L11561
.L11555:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L11551
.L15747:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L11549
	movq	8(%r13), %r12
	cmpw	$59, (%r12)
	je	.L15754
.L11549:
	cmpl	$55, %eax
	jne	.L11552
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L11551
.L15754:
	movq	8(%r12), %rdi
	movq	%rdi, 8(%r13)
	cmpq	$0, 16(%r12)
	je	.L11551
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r13
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L11551
.L11548:
	cmpq	$0, 16(%r13)
	jne	.L11556
	movq	8(%r13), %r13
	jmp	.L11551
.L11556:
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L11557
	movq	%rax, %r13
	jmp	.L11551
.L11557:
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L11551
.L11545:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L11541
.L15746:
	jne	.L11542
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L11541
.L11538:
	cmpq	$0, 16(%rbp)
	jne	.L11546
	movq	8(%rbp), %rbp
	jmp	.L11541
.L11546:
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L11547
	movq	%rdi, %rbp
	jmp	.L11541
.L11547:
	movq	8(%rbp), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rbp
	jmp	.L11541
	.p2align 6,,7
.L15745:
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 592(%rsp)
	je	.L15755
.L11284:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	8(%r15), %r8
	movq	%rax, %rdx
	movq	32(%r8), %rsi
	call	size_binop
	xorl	%esi, %esi
	movl	32(%r15), %edi
	movq	%rax, %r12
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r12, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	$0, 552(%rsp)
	movq	%rax, 2888(%rsp)
	movq	%rax, 576(%rsp)
	movq	8(%r15), %rdx
	movl	48(%rdx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%rbp)
	movl	%eax, 572(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movq	%rbp, 584(%rsp)
	movzwl	(%rbp), %eax
	cmpl	$59, %eax
	je	.L11410
	cmpl	$55, %eax
	je	.L15756
	cmpl	$63, %eax
	je	.L11417
	cmpl	$66, %eax
	je	.L11417
.L11413:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L11420
	cmpl	$55, %eax
	je	.L15757
.L11424:
	cmpl	$63, %eax
	je	.L11427
	cmpl	$66, %eax
	je	.L11427
.L11423:
	movq	2888(%rsp), %r8
	movzwl	(%r8), %eax
	cmpl	$59, %eax
	je	.L11430
	cmpl	$55, %eax
	je	.L15758
.L11434:
	cmpl	$63, %eax
	je	.L11437
	cmpl	$66, %eax
	je	.L11437
.L11433:
	movq	584(%rsp), %rsi
	cmpw	$55, (%rsi)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	cmpq	$0, 576(%rsp)
	je	.L15283
	movq	576(%rsp), %r8
	cmpw	$46, (%r8)
	je	.L15759
.L11443:
	movl	572(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %r12d
	movq	%rax, 2872(%rsp)
	testl	%r12d, %r12d
	je	.L14651
.L11529:
	movslq	%r12d,%r14
	movq	%r14, %rax
	movq	%r14, 2864(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L11517
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L11521
	movq	576(%rsp), %rdi
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%rdi)
	ja	.L11517
.L11521:
	movslq	%edx,%r9
	leaq	(%r9,%r9,4), %r14
	movq	%r9, 2856(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15760
.L11522:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15761
.L11523:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L11524
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2872(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L11517
.L11524:
	call	get_last_insn
	movl	$1, %edx
	movq	576(%rsp), %rsi
	movq	%rax, 2848(%rsp)
	movl	%r12d, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15762
.L11525:
	movq	2856(%rsp), %r12
	movq	584(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	2872(%rsp), %rcx
	call	*insn_gen_function(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14980
	movq	2848(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L11517:
	movq	2864(%rsp), %rbx
	movl	mode_wider_mode(,%rbx,4), %r12d
	testl	%r12d, %r12d
	jne	.L11529
.L14651:
	movq	576(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movq	584(%rsp), %r10
	movq	8(%r13), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%rsi, (%rsp)
	movq	8(%r10), %r8
	xorl	%esi, %esi
	call	emit_library_call
.L11527:
	movq	2888(%rsp), %r8
	cmpw	$46, (%r8)
	je	.L15763
	movq	8(%rbp), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	2888(%rsp), %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	592(%rsp), %rdx
	movl	$4, %edi
	movq	2888(%rsp), %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 552(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L11531:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L11532
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L11532:
	cmpq	$0, 552(%rsp)
	je	.L11201
	movq	552(%rsp), %rdi
	call	emit_label
	jmp	.L11201
.L15763:
	movq	8(%rbp), %rdi
	movl	32(%r15), %esi
	call	plus_constant_wide
	movq	592(%rsp), %rdi
	movl	32(%r15), %esi
	movq	%rax, %rbp
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L11531
.L14980:
	call	emit_insn
	jmp	.L11527
	.p2align 6,,7
.L15762:
	movq	%rax, %rdi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L11525
	movq	%rbx, %rsi
	movl	%r12d, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L11525
	.p2align 6,,7
.L15761:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11517
	jmp	.L11523
.L15760:
	xorl	%eax, %eax
	movq	584(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11517
	jmp	.L11522
.L15759:
	movl	8(%r8), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 572(%rsp)
	movl	$9, %edi
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	572(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	movl	%r10d, %r8d
.L11457:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14642
.L11453:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%edi, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L11453
.L14642:
	testl	%ecx, %ecx
	je	.L11446
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L11455
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebx
	jl	.L11455
	movl	%r8d, %eax
	movl	%edx, %r8d
	xorl	%edx, %edx
	divl	%r8d
	addl	%eax, %r9d
	movl	%edx, %r8d
.L11455:
	movl	mode_size(,%rcx,4), %edi
	cmpl	$1, %edi
	jg	.L11457
.L11446:
	decl	%r9d
	jg	.L11443
	movq	584(%rsp), %rax
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r14d
	movq	8(%rax), %rbx
	movq	%r13, 5864(%rsp)
	movq	%rax, 5840(%rsp)
	movl	$0, 5892(%rsp)
	movq	%rdi, 5872(%rsp)
	movl	$9, 568(%rsp)
	movq	%rbx, 5848(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L11460
	cmpw	$88, %dx
	je	.L11460
	cmpw	$87, %dx
	je	.L11460
.L11459:
	movl	%ecx, 5856(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L11462
	cmpw	$88, %dx
	je	.L11462
	cmpw	$87, %dx
	je	.L11462
.L11461:
	movl	%ecx, 5880(%rsp)
	movl	$0, 5884(%rsp)
	movl	$0, 5860(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L11464
	cmpw	$87, %ax
	je	.L11464
.L11463:
	testl	%edx, %edx
	movl	%edx, 5896(%rsp)
	je	.L11465
	movl	%r10d, 5892(%rsp)
.L11465:
	movl	%r10d, 5888(%rsp)
	movl	5880(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L11467
	movl	5856(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L11466
.L11467:
	xorl	%r9d, %r9d
	movl	$8, %r12d
	movl	$9, %r8d
	cmpl	$8, 572(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r13d
	cmovl	572(%rsp), %r12d
.L11481:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14645
.L11477:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11477
.L14645:
	testl	%ecx, %ecx
	je	.L11470
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L11479
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r13d, %eax
	cmpl	%eax, %r12d
	jl	.L11479
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L11479:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11481
.L11470:
	cmpl	$2, %r9d
	jle	.L11466
	testl	%r10d, %r10d
	jne	.L11483
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L11484
	cmpw	$46, %dx
	je	.L11484
	cmpw	$47, %dx
	je	.L11484
	cmpw	$49, %dx
	je	.L11484
	cmpw	$113, %dx
	je	.L11484
.L11483:
	movl	5856(%rsp), %edi
	testl	%edi, %edi
	jne	.L11466
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L11486
	cmpw	$46, %dx
	je	.L11486
	cmpw	$47, %dx
	je	.L11486
	cmpw	$49, %dx
	je	.L11486
	cmpw	$113, %dx
	je	.L11486
.L11466:
	cmpl	$8, 572(%rsp)
	movl	$8, %eax
	cmovl	572(%rsp), %eax
	cmpl	$1, 568(%rsp)
	movl	%eax, 572(%rsp)
	jle	.L11489
.L11511:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14648
.L11496:
	movslq	%edx,%rbx
	movl	568(%rsp), %r10d
	salq	$2, %rbx
	cmpl	%r10d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L11496
.L14648:
	testl	%r13d, %r13d
	je	.L11489
	movslq	%r13d,%r14
	movq	%r14, %rsi
	salq	$4, %rsi
	addq	mov_optab(%rip), %rsi
	movl	8(%rsi), %edx
	cmpl	$210, %edx
	je	.L11498
	movl	mode_size(,%r14,4), %r12d
	movl	$8, %eax
	cmpl	$9, %r12d
	cmovl	%r12d, %eax
	cmpl	%eax, 572(%rsp)
	jl	.L11498
	movslq	%edx,%r11
	cmpl	%r12d, 5888(%rsp)
	leaq	5840(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %r8
	movq	%r8, 2880(%rsp)
	jl	.L11498
	movl	5896(%rsp), %edx
.L11509:
	testl	%edx, %edx
	je	.L11503
	subl	%r12d, 52(%rbx)
.L11503:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L11504
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15206:
	movl	40(%rbx), %ecx
	movq	%rax, 560(%rsp)
	testl	%ecx, %ecx
	je	.L11506
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L11507:
	movq	%rax, %rsi
	movq	560(%rsp), %rdi
	xorl	%eax, %eax
	call	*2880(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L11508
	addl	%r12d, 52(%rbx)
.L11508:
	movl	48(%rbx), %eax
	subl	%r12d, %eax
	cmpl	%r12d, %eax
	movl	%eax, 48(%rbx)
	jge	.L11509
.L11498:
	movl	mode_size(,%r14,4), %r13d
	movl	%r13d, 568(%rsp)
	decl	%r13d
	jg	.L11511
.L11489:
	movl	5888(%rsp), %edx
	testl	%edx, %edx
	je	.L11527
	jmp	.L15283
	.p2align 6,,7
.L11506:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L11507
.L11504:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15206
.L11486:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5848(%rsp)
	jmp	.L11466
.L11484:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5872(%rsp)
	jmp	.L11483
.L11464:
	movl	$1, %edx
	jmp	.L11463
.L11462:
	movl	$1, %ecx
	jmp	.L11461
.L11460:
	movl	$1, %ecx
	jmp	.L11459
.L11437:
	movq	2888(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	2888(%rsp), %r14
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L11433
.L15758:
	movzbl	2(%r8), %edx
	cmpb	$16, %dl
	je	.L11431
	movq	8(%r8), %r12
	cmpw	$59, (%r12)
	je	.L15764
.L11431:
	cmpl	$55, %eax
	jne	.L11434
	movq	2888(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	movq	2888(%rsp), %r12
	movq	%rax, 8(%r12)
	jmp	.L11433
.L15764:
	movq	8(%r12), %rsi
	movq	%rsi, 8(%r8)
	cmpq	$0, 16(%r12)
	je	.L11433
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	2888(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 576(%rsp)
	jmp	.L11433
.L11430:
	movq	2888(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L11438
	movq	8(%rsi), %r8
	movq	%r8, 576(%rsp)
	jmp	.L11433
.L11438:
	movq	2888(%rsp), %r11
	movq	24(%r11), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 576(%rsp)
	jne	.L11433
	movq	2888(%rsp), %r10
	movq	8(%r10), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	2888(%rsp), %rbx
	movq	%rax, %rdi
	movq	8(%rbx), %rsi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	2888(%rsp), %r12
	movq	%rax, %rdi
	movq	16(%r12), %rsi
	call	emit_insn_before
	movq	24(%r12), %rcx
	movq	%rcx, 576(%rsp)
	jmp	.L11433
.L11427:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L11423
.L15757:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L11421
	movq	8(%r13), %r12
	cmpw	$59, (%r12)
	je	.L15765
.L11421:
	cmpl	$55, %eax
	jne	.L11424
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L11423
.L15765:
	movq	8(%r12), %r9
	movq	%r9, 8(%r13)
	cmpq	$0, 16(%r12)
	je	.L11423
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L11423
.L11420:
	cmpq	$0, 16(%r13)
	jne	.L11428
	movq	8(%r13), %r13
	jmp	.L11423
.L11428:
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L11429
	movq	%rax, %r13
	jmp	.L11423
.L11429:
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L11423
.L11417:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L11413
.L15756:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L11413
.L11410:
	cmpq	$0, 16(%rbp)
	jne	.L11418
	movq	8(%rbp), %rdi
	movq	%rdi, 584(%rsp)
	jmp	.L11413
.L11418:
	movq	24(%rbp), %r11
	testq	%r11, %r11
	movq	%r11, 584(%rsp)
	jne	.L11413
	movq	8(%rbp), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rcx
	movq	%rcx, 584(%rsp)
	jmp	.L11413
	.p2align 6,,7
.L15755:
	movq	592(%rsp), %r9
	movl	32(%r15), %eax
	cmpl	%eax, 8(%r9)
	jge	.L11284
	movq	8(%r15), %rdx
	movl	48(%rdx), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%rbp)
	jne	.L15283
	cmpb	$16, 2(%r13)
	jne	.L15283
	movzwl	(%rbp), %eax
	cmpl	$59, %eax
	je	.L11287
	cmpl	$55, %eax
	je	.L15766
.L11291:
	cmpl	$63, %eax
	je	.L11294
	cmpl	$66, %eax
	je	.L11294
.L11290:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L11297
	cmpl	$55, %eax
	je	.L15767
.L11301:
	cmpl	$63, %eax
	je	.L11304
	cmpl	$66, %eax
	je	.L11304
.L11300:
	movq	592(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L11307
	cmpl	$55, %eax
	je	.L15768
.L11311:
	cmpl	$63, %eax
	je	.L11314
	cmpl	$66, %eax
	je	.L11314
.L11310:
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpw	$55, (%r13)
	jne	.L15283
	cmpq	$0, 592(%rsp)
	je	.L15283
	movq	592(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L15769
.L11320:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %r12d
	movq	%rax, 2912(%rsp)
	testl	%r12d, %r12d
	je	.L14639
.L11406:
	movslq	%r12d,%rax
	movq	%rax, 2904(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L11394
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L11398
	movq	592(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L11394
.L11398:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15770
.L11399:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15771
.L11400:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L11401
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2912(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L11394
.L11401:
	call	get_last_insn
	movl	$1, %edx
	movq	592(%rsp), %rsi
	movq	%rax, 2896(%rsp)
	movl	%r12d, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15772
.L11402:
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	2912(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14981
	movq	2896(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L11394:
	movq	2904(%rsp), %rax
	movl	mode_wider_mode(,%rax,4), %r12d
	testl	%r12d, %r12d
	jne	.L11406
.L14639:
	movq	592(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15208
.L15772:
	movq	%rax, %rdi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L11402
	movq	%rbx, %rsi
	movl	%r12d, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L11402
.L15771:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11394
	jmp	.L11400
.L15770:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11394
	jmp	.L11399
.L15769:
	movl	8(%rbx), %r10d
	xorl	%r9d, %r9d
	movl	$9, %r8d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	movl	%r10d, %edi
.L11334:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14630
.L11330:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L11330
.L14630:
	testl	%ecx, %ecx
	je	.L11323
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L11332
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebx
	jl	.L11332
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L11332:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11334
.L11323:
	decl	%r9d
	jg	.L11320
	movq	8(%rbp), %rbx
	movq	8(%r13), %rdi
	xorl	%ecx, %ecx
	movq	%rbp, 5904(%rsp)
	movl	$0, 5956(%rsp)
	movq	%r13, 5928(%rsp)
	movl	%r10d, %r12d
	movl	$9, %r14d
	movq	%rbx, 5912(%rsp)
	movq	%rdi, 5936(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L11337
	cmpw	$88, %dx
	je	.L11337
	cmpw	$87, %dx
	je	.L11337
.L11336:
	movl	%ecx, 5920(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L11339
	cmpw	$88, %dx
	je	.L11339
	cmpw	$87, %dx
	je	.L11339
.L11338:
	movl	%ecx, 5944(%rsp)
	movl	$0, 5948(%rsp)
	movl	$0, 5924(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L11341
	cmpw	$87, %ax
	je	.L11341
.L11340:
	testl	%edx, %edx
	movl	%edx, 5960(%rsp)
	je	.L11342
	movl	%r10d, 5956(%rsp)
.L11342:
	movl	%r10d, 5952(%rsp)
	movl	5944(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L11344
	movl	5920(%rsp), %eax
	testl	%eax, %eax
	jne	.L11343
.L11344:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r13d
	cmovl	%r15d, %ebp
.L11358:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14633
.L11354:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11354
.L14633:
	testl	%ecx, %ecx
	je	.L11347
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L11356
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r13d, %eax
	cmpl	%eax, %ebp
	jl	.L11356
	movl	%r12d, %eax
	movl	%edx, %r12d
	xorl	%edx, %edx
	divl	%r12d
	addl	%eax, %r9d
	movl	%edx, %r12d
.L11356:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11358
.L11347:
	cmpl	$2, %r9d
	jle	.L11343
	testl	%r10d, %r10d
	jne	.L11360
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L11361
	cmpw	$46, %dx
	je	.L11361
	cmpw	$47, %dx
	je	.L11361
	cmpw	$49, %dx
	je	.L11361
	cmpw	$113, %dx
	je	.L11361
.L11360:
	movl	5920(%rsp), %eax
	testl	%eax, %eax
	jne	.L11343
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L11363
	cmpw	$46, %dx
	je	.L11363
	cmpw	$47, %dx
	je	.L11363
	cmpw	$49, %dx
	je	.L11363
	cmpw	$113, %dx
	je	.L11363
.L11343:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, %r14d
	jle	.L11366
.L11388:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14636
.L11373:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L11373
.L14636:
	testl	%r12d, %r12d
	je	.L11366
	movslq	%r12d,%r13
	movq	%r13, %r9
	salq	$4, %r9
	addq	mov_optab(%rip), %r9
	movl	8(%r9), %edx
	cmpl	$210, %edx
	je	.L11375
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L11375
	movslq	%edx,%rsi
	cmpl	%ebp, 5952(%rsp)
	leaq	5904(%rsp), %rbx
	movq	insn_gen_function(,%rsi,8), %r10
	movq	%r10, 2920(%rsp)
	jl	.L11375
	movl	5960(%rsp), %edx
.L11386:
	testl	%edx, %edx
	je	.L11380
	subl	%ebp, 52(%rbx)
.L11380:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L11381
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15205:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L11383
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L11384:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*2920(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L11385
	addl	%ebp, 52(%rbx)
.L11385:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L11386
.L11375:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L11388
.L11366:
	movl	5952(%rsp), %r15d
	testl	%r15d, %r15d
	jmp	.L15398
.L11383:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L11384
.L11381:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15205
.L11363:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5912(%rsp)
	jmp	.L11343
.L11361:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5936(%rsp)
	jmp	.L11360
.L11341:
	movl	$1, %edx
	jmp	.L11340
.L11339:
	movl	$1, %ecx
	jmp	.L11338
.L11337:
	movl	$1, %ecx
	jmp	.L11336
.L11314:
	movq	592(%rsp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	592(%rsp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, 8(%rcx)
	call	protect_from_queue
	movq	592(%rsp), %r11
	movq	%rax, 16(%r11)
	jmp	.L11310
.L15768:
	movzbl	2(%rbx), %edx
	cmpb	$16, %dl
	je	.L11308
	movq	8(%rbx), %r12
	cmpw	$59, (%r12)
	je	.L15773
.L11308:
	cmpl	$55, %eax
	jne	.L11311
	movq	592(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	movq	592(%rsp), %r12
	movq	%rax, 8(%r12)
	jmp	.L11310
.L15773:
	movq	8(%r12), %rsi
	movq	%rsi, 8(%rbx)
	cmpq	$0, 16(%r12)
	je	.L11310
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	592(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 592(%rsp)
	jmp	.L11310
.L11307:
	movq	592(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L11315
	movq	8(%rbx), %rsi
.L15204:
	movq	%rsi, 592(%rsp)
	jmp	.L11310
.L11315:
	movq	592(%rsp), %r9
	movq	24(%r9), %rsi
	testq	%rsi, %rsi
	jne	.L15204
	movq	592(%rsp), %r14
	movq	8(%r14), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	592(%rsp), %r10
	movq	%rax, %rdi
	movq	8(%r10), %rsi
	movq	%rax, 24(%r10)
	call	gen_move_insn
	movq	592(%rsp), %r8
	movq	%rax, %rdi
	movq	16(%r8), %rsi
	call	emit_insn_before
	movq	592(%rsp), %rdx
	movq	24(%rdx), %rdi
	movq	%rdi, 592(%rsp)
	jmp	.L11310
.L11304:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L11300
.L15767:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L11298
	movq	8(%r13), %r12
	cmpw	$59, (%r12)
	je	.L15774
.L11298:
	cmpl	$55, %eax
	jne	.L11301
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L11300
.L15774:
	movq	8(%r12), %r8
	movq	%r8, 8(%r13)
	cmpq	$0, 16(%r12)
	je	.L11300
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L11300
.L11297:
	cmpq	$0, 16(%r13)
	jne	.L11305
	movq	8(%r13), %r13
	jmp	.L11300
.L11305:
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L11306
	movq	%rax, %r13
	jmp	.L11300
.L11306:
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L11300
.L11294:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L11290
.L15766:
	jne	.L11291
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L11290
.L11287:
	cmpq	$0, 16(%rbp)
	jne	.L11295
	movq	8(%rbp), %rbp
	jmp	.L11290
.L11295:
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L11296
	movq	%rdi, %rbp
	jmp	.L11290
.L11296:
	movq	8(%rbp), %r14
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rbp
	jmp	.L11290
	.p2align 6,,7
.L11276:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L11272
.L15553:
	jne	.L11273
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L11272
	.p2align 6,,7
.L11269:
	cmpq	$0, 16(%rbp)
	jne	.L11277
	movq	8(%rbp), %rbp
	jmp	.L11272
.L11277:
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L11278
	movq	%rdi, %rbp
	jmp	.L11272
.L11278:
	movq	8(%rbp), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rbp
	jmp	.L11272
.L15552:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	%r15, %rdi
	movzbl	2(%rbp), %edx
	movq	%rax, %rsi
	jmp	.L15203
.L11248:
	movl	(%rbp), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15775
	movzbl	2(%rbp), %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbp, %rsi
	call	expand_expr
	cmpw	$51, (%rbp)
	movq	%rax, %r13
	je	.L15776
.L11266:
	movzwl	(%r13), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L11267
	cmpw	$46, %dx
	je	.L11267
	cmpw	$47, %dx
	je	.L11267
	cmpw	$49, %dx
	je	.L11267
	cmpw	$113, %dx
	jne	.L11213
	jmp	.L11267
.L15776:
	cmpl	$63, 8(%rbp)
	jle	.L11213
	jmp	.L11266
.L15775:
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%rbp), %rdi
	movzbl	3(%rbp), %edx
	movq	%rax, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	jmp	.L15210
.L11257:
	movl	$1, %ebx
	jmp	.L11251
.L11249:
	xorl	%ebx, %ebx
	jmp	.L11251
.L11255:
	movq	8(%rbp), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L11257
	movq	16(%rbp), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L11251
	jmp	.L11257
.L15551:
	movzbl	2(%rbp), %eax
	cmpb	$16, %al
	je	.L11241
	movl	cse_not_expected(%rip), %r12d
	xorl	%esi, %esi
	movzbl	%al, %edx
	movq	%r15, %rdi
	testl	%r12d, %r12d
	cmove	%rbp, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r13
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L11267
	testb	%al, %al
	je	.L11267
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15363
	.p2align 6,,7
.L15550:
	cmpb	$16, 2(%rbp)
	jne	.L11214
	call	gen_label_rtx
	movq	%rax, %r12
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r13
	testq	%rbx, %rbx
	jne	.L11218
.L14623:
	movzwl	(%rbp), %eax
	cmpl	$59, %eax
	je	.L11220
	cmpl	$55, %eax
	je	.L15777
.L11224:
	cmpl	$63, %eax
	je	.L11227
	cmpl	$66, %eax
	je	.L11227
.L11223:
	movq	32(%r15), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	incl	inhibit_defer_pop(%rip)
	call	jumpifnot
	movq	40(%r15), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rbp, %rsi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L11233
.L14625:
	movq	%r13, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r12, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	48(%r15), %rdi
	movq	%rbp, %rsi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L11238
.L14627:
	movq	%r13, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L11201
.L11238:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r15
	movq	%rax, 16(%rbx)
	testq	%r15, %r15
	movq	%r15, pending_chain(%rip)
	movq	%r15, %rbx
	jne	.L11238
	jmp	.L14627
	.p2align 6,,7
.L11233:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L11233
	jmp	.L14625
.L11227:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L11223
.L15777:
	jne	.L11224
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L11223
	.p2align 6,,7
.L11220:
	cmpq	$0, 16(%rbp)
	jne	.L11228
	movq	8(%rbp), %rbp
	jmp	.L11223
.L11228:
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L11229
	movq	%rdi, %rbp
	jmp	.L11223
.L11229:
	movq	8(%rbp), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rbp
	jmp	.L11223
	.p2align 6,,7
.L11218:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r14
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	movq	%r14, pending_chain(%rip)
	movq	%r14, %rbx
	jne	.L11218
	jmp	.L14623
	.p2align 6,,7
.L15549:
	movq	32(%r15), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L11210
.L14621:
	movq	40(%r15), %rdi
	movq	%rbp, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	store_expr
	jmp	.L11201
.L11210:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L11210
	jmp	.L14621
.L15548:
	movzbl	44(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %rbx
	jmp	.L11205
.L15547:
	movq	2928(%rsp), %rdi
	movq	%rcx, %rsi
	xorl	%eax, %eax
	call	save_noncopied_parts
	movq	544(%rsp), %rdi
	movq	%rax, %rsi
	call	chainon
	movq	%rax, 544(%rsp)
	jmp	.L11201
.L11197:
	movl	$1, %eax
	jmp	.L11198
.L11194:
	movl	$1, %eax
	jmp	.L11195
.L15546:
	movq	2800(%rsp), %r11
	movzbl	16(%r11), %ecx
	cmpb	$81, %cl
	je	.L10203
	cmpb	$83, %cl
	jne	.L10202
.L10203:
	movq	2800(%rsp), %r8
	movq	3176(%rsp), %rax
	cmpq	%rax, 32(%r8)
	jne	.L10202
	movq	40(%r8), %rcx
	cmpb	$37, 16(%rcx)
	jne	.L10202
	movq	40(%rax), %r15
	movq	40(%r15), %r9
	cmpl	$1, 24(%r9)
	jne	.L10202
	movq	40(%rcx), %r10
	movq	40(%r10), %rbp
	cmpl	$1, 24(%rbp)
	jne	.L10202
	call	gen_label_rtx
	xorl	%edx, %edx
	movq	2800(%rsp), %r13
	movq	%rax, 3168(%rsp)
	movq	3168(%rsp), %rsi
	movzbl	16(%r13), %r12d
	movq	40(%r13), %rdi
	cmpb	$81, %r12b
	cmovne	%rdx, %rsi
	cmpb	$83, %r12b
	cmove	3168(%rsp), %rdx
	xorl	%eax, %eax
	call	do_jump
	movq	2800(%rsp), %rax
	movq	2800(%rsp), %rbx
	addq	$8, %rax
	cmpb	$81, 16(%rbx)
	je	.L15778
	movq	integer_zero_node(%rip), %rsi
.L10215:
	movq	(%rax), %rdi
	xorl	%r15d, %r15d
	call	convert
	movq	3176(%rsp), %r14
	movq	$0, 736(%rsp)
	movq	%rax, 3160(%rsp)
	movzbl	16(%r14), %edx
	testb	%dl, %dl
	je	.L15779
	leal	-37(%rdx), %esi
	cmpb	$1, %sil
	jbe	.L10219
	cmpb	$42, %dl
	je	.L15780
.L10218:
	cmpq	$0, 736(%rsp)
	je	.L15781
.L10735:
	cmpb	$35, %dl
	je	.L15782
	movq	3160(%rsp), %rbx
	movzbl	16(%rbx), %eax
.L10736:
	cmpb	$44, %al
	movl	$0, 836(%rsp)
	je	.L15783
	cmpb	$48, %al
	je	.L15784
.L10745:
	testl	%r15d, %r15d
	je	.L10772
	movq	736(%rsp), %rdi
	cmpw	$55, (%rdi)
	je	.L15785
.L10772:
	movq	736(%rsp), %r13
	movzwl	(%r13), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L10780
	mov	%eax, %ebx
	jmp	*.L10789(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L10789:
	.quad	.L10783
	.quad	.L10780
	.quad	.L10780
	.quad	.L10780
	.quad	.L10788
	.quad	.L10780
	.quad	.L10780
	.quad	.L10780
	.quad	.L10786
	.quad	.L10786
	.quad	.L10780
	.quad	.L10786
	.text
.L10783:
	movq	736(%rsp), %r8
	xorl	%eax, %eax
	movq	8(%r8), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L10782:
	testl	%ebx, %ebx
	je	.L10779
	movq	736(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L10791
	testb	%al, %al
	jne	.L15786
.L10791:
	movq	736(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%rdi), %edx
	movq	3160(%rsp), %rdi
.L15194:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15362:
	movq	%rax, %r12
.L10798:
	movl	$1, 836(%rsp)
.L10744:
	cmpq	736(%rsp), %r12
	je	.L10799
	movq	3160(%rsp), %r14
	cmpb	$0, 16(%r14)
	je	.L10799
	movq	736(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L10800
	cmpl	$55, %eax
	je	.L15787
.L10804:
	cmpl	$63, %eax
	je	.L10807
	cmpl	$66, %eax
	je	.L10807
.L10803:
	movq	736(%rsp), %rbx
	movzbl	2(%r12), %eax
	movzbl	2(%rbx), %ecx
	cmpb	%cl, %al
	je	.L10810
	testb	%al, %al
	je	.L10810
	movq	3160(%rsp), %r11
	movl	836(%rsp), %edi
	movq	8(%r11), %rbp
	movzbl	17(%rbp), %r14d
	shrb	$6, %r14b
	movl	%r14d, %edx
	andl	$1, %edx
	testl	%edi, %edi
	je	.L10811
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rbx, %rdi
	movq	%rax, %r12
.L15201:
	movq	%r12, %rsi
	call	emit_move_insn
.L10799:
	movl	836(%rsp), %r13d
	testl	%r13d, %r13d
	cmove	736(%rsp), %r12
.L10743:
	movq	%r12, %rdi
.L15202:
	xorl	%eax, %eax
	call	preserve_temp_slots
	xorl	%eax, %eax
	call	free_temp_slots
.L10217:
	xorl	%eax, %eax
	call	do_pending_stack_adjust
	movq	3168(%rsp), %rdi
	call	emit_label
.L15257:
	movq	const0_rtx(%rip), %r12
	movq	%r12, 56(%rsp)
	jmp	.L581
.L10811:
	movq	736(%rsp), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L10799
.L10810:
	cmpb	$16, %al
	je	.L15788
.L11066:
	movq	736(%rsp), %rdi
	jmp	.L15201
.L15788:
	movq	3160(%rsp), %rdi
	cmpb	$28, 16(%rdi)
	je	.L15789
	cmpb	$16, %al
	jne	.L11066
	movq	3160(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 752(%rsp)
	call	expr_size
	movq	736(%rsp), %r15
	movq	3160(%rsp), %rbp
	movq	%rax, %r13
	movq	8(%rbp), %rdi
	movl	48(%rdi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 748(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	736(%rsp), %rsi
	movq	%rsi, 760(%rsp)
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L11069
	cmpl	$55, %eax
	je	.L15790
	cmpl	$63, %eax
	je	.L11076
	cmpl	$66, %eax
	je	.L11076
.L11072:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L11079
	cmpl	$55, %eax
	je	.L15791
.L11083:
	cmpl	$63, %eax
	je	.L11086
	cmpl	$66, %eax
	je	.L11086
.L11082:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L11089
	cmpl	$55, %eax
	je	.L15792
.L11093:
	cmpl	$63, %eax
	je	.L11096
	cmpl	$66, %eax
	je	.L11096
.L11092:
	movq	760(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	752(%rsp), %rcx
	cmpw	$55, (%rcx)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L15793
.L11102:
	movl	748(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2952(%rsp)
	testl	%ebp, %ebp
	je	.L14617
.L11188:
	movslq	%ebp,%rax
	movq	%rax, 2944(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L11176
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L11180
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L11176
.L11180:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15794
.L11181:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15795
.L11182:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L11183
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2952(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L11176
.L11183:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 2936(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15796
.L11184:
	movq	760(%rsp), %rdi
	xorl	%eax, %eax
	movq	752(%rsp), %rsi
	movq	%rbx, %rdx
	movq	2952(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14978
	movq	2936(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L11176:
	movq	2944(%rsp), %r15
	movl	mode_wider_mode(,%r15,4), %ebp
	testl	%ebp, %ebp
	jne	.L11188
.L14617:
	movl	$4, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	760(%rsp), %rbx
	movl	$3, %ecx
	movq	752(%rsp), %r8
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	8(%r8), %rbp
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	%rbp, (%rsp)
.L15200:
	movq	8(%rbx), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L10799
.L14978:
	call	emit_insn
	jmp	.L10799
.L15796:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L11184
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L11184
.L15795:
	xorl	%eax, %eax
	movq	752(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11176
	jmp	.L11182
.L15794:
	xorl	%eax, %eax
	movq	760(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11176
	jmp	.L11181
.L15793:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 748(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	748(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L11116:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14608
.L11112:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L11112
.L14608:
	testl	%ecx, %ecx
	je	.L11105
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L11114
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L11114
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L11114:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11116
.L11105:
	decl	%r9d
	jg	.L11102
	movq	760(%rsp), %r9
	movq	752(%rsp), %r11
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%r9), %rbx
	movq	8(%r11), %rdi
	movq	%r11, 6056(%rsp)
	movl	$0, 6084(%rsp)
	movq	%r9, 6032(%rsp)
	movq	%rbx, 6040(%rsp)
	movq	%rdi, 6064(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L11119
	cmpw	$88, %dx
	je	.L11119
	cmpw	$87, %dx
	je	.L11119
.L11118:
	movl	%ecx, 6048(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L11121
	cmpw	$88, %dx
	je	.L11121
	cmpw	$87, %dx
	je	.L11121
.L11120:
	movl	%ecx, 6072(%rsp)
	movl	$0, 6076(%rsp)
	movl	$0, 6052(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L11123
	cmpw	$87, %ax
	je	.L11123
.L11122:
	testl	%edx, %edx
	movl	%edx, 6088(%rsp)
	je	.L11124
	movl	%r10d, 6084(%rsp)
.L11124:
	movl	%r10d, 6080(%rsp)
	movl	6072(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L11126
	movl	6048(%rsp), %edx
	testl	%edx, %edx
	jne	.L11125
.L11126:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 748(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r15d
	cmovl	748(%rsp), %ebp
.L11140:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14611
.L11136:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11136
.L14611:
	testl	%ecx, %ecx
	je	.L11129
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L11138
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r15d, %eax
	cmpl	%eax, %ebp
	jl	.L11138
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L11138:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11140
.L11129:
	cmpl	$2, %r9d
	jle	.L11125
	testl	%r10d, %r10d
	jne	.L11142
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L11143
	cmpw	$46, %dx
	je	.L11143
	cmpw	$47, %dx
	je	.L11143
	cmpw	$49, %dx
	je	.L11143
	cmpw	$113, %dx
	je	.L11143
.L11142:
	movl	6048(%rsp), %esi
	testl	%esi, %esi
	jne	.L11125
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L11145
	cmpw	$46, %dx
	je	.L11145
	cmpw	$47, %dx
	je	.L11145
	cmpw	$49, %dx
	je	.L11145
	cmpw	$113, %dx
	je	.L11145
.L11125:
	cmpl	$8, 748(%rsp)
	movl	$8, %eax
	cmovl	748(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 748(%rsp)
	jle	.L11148
.L11170:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14614
.L11155:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L11155
.L14614:
	testl	%r13d, %r13d
	je	.L11148
	movslq	%r13d,%r14
	movq	%r14, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L11157
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 748(%rsp)
	jl	.L11157
	movslq	%edx,%r9
	cmpl	%ebp, 6080(%rsp)
	leaq	6032(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %r11
	movq	%r11, 2960(%rsp)
	jl	.L11157
	movl	6088(%rsp), %edx
.L11168:
	testl	%edx, %edx
	je	.L11162
	subl	%ebp, 52(%rbx)
.L11162:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L11163
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15199:
	movl	40(%rbx), %edx
	movq	%rax, %r15
	testl	%edx, %edx
	je	.L11165
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L11166:
	movq	%rax, %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*2960(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L11167
	addl	%ebp, 52(%rbx)
.L11167:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L11168
.L11157:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L11170
.L11148:
	movl	6080(%rsp), %r14d
	testl	%r14d, %r14d
.L15397:
	je	.L10799
	jmp	.L15283
.L11165:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L11166
.L11163:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15199
.L11145:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6040(%rsp)
	jmp	.L11125
.L11143:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6064(%rsp)
	jmp	.L11142
.L11123:
	movl	$1, %edx
	jmp	.L11122
.L11121:
	movl	$1, %ecx
	jmp	.L11120
.L11119:
	movl	$1, %ecx
	jmp	.L11118
.L11096:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L11092
.L15792:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L11090
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15797
.L11090:
	cmpl	$55, %eax
	jne	.L11093
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L11092
.L15797:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L11092
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L11092
.L11089:
	cmpq	$0, 16(%r13)
	jne	.L11097
	movq	8(%r13), %r13
	jmp	.L11092
.L11097:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L11098
	movq	%rsi, %r13
	jmp	.L11092
.L11098:
	movq	8(%r13), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L11092
.L11086:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L11082
.L15791:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L11080
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15798
.L11080:
	cmpl	$55, %eax
	jne	.L11083
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L11082
.L15798:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L11082
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15198:
	movq	%rbx, 752(%rsp)
	jmp	.L11082
.L11079:
	cmpq	$0, 16(%r12)
	jne	.L11087
	movq	8(%r12), %rbx
	jmp	.L15198
.L11087:
	movq	24(%r12), %r9
	testq	%r9, %r9
	movq	%r9, 752(%rsp)
	jne	.L11082
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r10
	movq	%r10, 752(%rsp)
	jmp	.L11082
.L11076:
	movq	736(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	736(%rsp), %r10
	movq	16(%r10), %rdi
	movq	%rax, 8(%r10)
	call	protect_from_queue
	movq	736(%rsp), %r9
	movq	%rax, 16(%r9)
	jmp	.L11072
.L15790:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	736(%rsp), %r11
	movq	%rax, 8(%r11)
	jmp	.L11072
.L11069:
	movq	736(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L11077
	movq	8(%rbx), %rax
	movq	%rax, 760(%rsp)
	jmp	.L11072
.L11077:
	movq	736(%rsp), %r14
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 760(%rsp)
	jne	.L11072
	movq	736(%rsp), %rdi
	movq	8(%rdi), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	736(%rsp), %r15
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	736(%rsp), %rcx
	movq	%rax, %rdi
	movq	16(%rcx), %rsi
	call	emit_insn_before
	movq	736(%rsp), %r8
	movq	24(%r8), %rbx
	movq	%rbx, 760(%rsp)
	jmp	.L11072
.L15789:
	xorl	%eax, %eax
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, %r15
	je	.L15799
.L10815:
	movl	$8, %edi
	call	size_int
	movq	3160(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %rbx
	movl	$57, %edi
	movq	32(%rbx), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3160(%rsp), %r10
	movq	%rax, %rbp
	movl	32(%r10), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%rbp, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	736(%rsp), %r8
	movq	3160(%rsp), %r13
	movq	$0, 768(%rsp)
	movq	%rax, 792(%rsp)
	movq	%rax, %r14
	movq	8(%r13), %rcx
	movl	48(%rcx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r8)
	movl	%eax, 788(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	736(%rsp), %rbx
	movq	%rbx, 800(%rsp)
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L10941
	cmpl	$55, %eax
	je	.L15800
	cmpl	$63, %eax
	je	.L10948
	cmpl	$66, %eax
	je	.L10948
.L10944:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L10951
	cmpl	$55, %eax
	je	.L15801
.L10955:
	cmpl	$63, %eax
	je	.L10958
	cmpl	$66, %eax
	je	.L10958
.L10954:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L10961
	cmpl	$55, %eax
	je	.L15802
.L10965:
	cmpl	$63, %eax
	je	.L10968
	cmpl	$66, %eax
	je	.L10968
.L10964:
	movq	800(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 792(%rsp)
	je	.L15283
	movq	792(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15803
.L10974:
	movl	788(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 2992(%rsp)
	testl	%ebp, %ebp
	je	.L14605
.L11060:
	movslq	%ebp,%r11
	movq	%r11, %rax
	movq	%r11, 2984(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L11048
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L11052
	movq	792(%rsp), %r9
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r9)
	ja	.L11048
.L11052:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 2976(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15804
.L11053:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15805
.L11054:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L11055
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	2992(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L11048
.L11055:
	call	get_last_insn
	movl	$1, %edx
	movq	792(%rsp), %rsi
	movq	%rax, 2968(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15806
.L11056:
	movq	2976(%rsp), %r13
	movq	800(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	2992(%rsp), %rcx
	call	*insn_gen_function(,%r13,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14977
	movq	2968(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L11048:
	movq	2984(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L11060
.L14605:
	movq	792(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movq	800(%rsp), %rax
	movq	%rsi, (%rsp)
	xorl	%esi, %esi
	movq	8(%rax), %r8
	xorl	%eax, %eax
	call	emit_library_call
.L11058:
	cmpw	$46, (%r14)
	je	.L15807
	movq	736(%rsp), %r8
	movl	$4, %edi
	movq	8(%r8), %rsi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movl	$4, %edi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 768(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L11062:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L11063
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L11063:
	cmpq	$0, 768(%rsp)
	je	.L10799
	movq	768(%rsp), %rdi
	call	emit_label
	jmp	.L10799
.L15807:
	movq	736(%rsp), %rcx
	movq	3160(%rsp), %rbx
	movq	8(%rcx), %rdi
	movl	32(%rbx), %esi
	call	plus_constant_wide
	movq	%r15, %rdi
	movq	3160(%rsp), %r14
	movq	%rax, %r12
	movl	32(%r14), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L11062
.L14977:
	call	emit_insn
	jmp	.L11058
.L15806:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L11056
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L11056
.L15805:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11048
	jmp	.L11054
.L15804:
	xorl	%eax, %eax
	movq	800(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L11048
	jmp	.L11053
.L15803:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 788(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	788(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L10988:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14596
.L10984:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L10984
.L14596:
	testl	%ecx, %ecx
	je	.L10977
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L10986
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L10986
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L10986:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10988
.L10977:
	decl	%r9d
	jg	.L10974
	movq	800(%rsp), %r11
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movq	8(%r11), %rbx
	movq	%r12, 6056(%rsp)
	movq	%r11, 6032(%rsp)
	movl	$0, 6084(%rsp)
	movq	%rdi, 6064(%rsp)
	movl	$9, 784(%rsp)
	movq	%rbx, 6040(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L10991
	cmpw	$88, %dx
	je	.L10991
	cmpw	$87, %dx
	je	.L10991
.L10990:
	movl	%ecx, 6048(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L10993
	cmpw	$88, %dx
	je	.L10993
	cmpw	$87, %dx
	je	.L10993
.L10992:
	movl	%ecx, 6072(%rsp)
	movl	$0, 6076(%rsp)
	movl	$0, 6052(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L10995
	cmpw	$87, %ax
	je	.L10995
.L10994:
	testl	%edx, %edx
	movl	%edx, 6088(%rsp)
	je	.L10996
	movl	%r10d, 6084(%rsp)
.L10996:
	movl	6072(%rsp), %eax
	movl	%r10d, 6080(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L10998
	movl	6048(%rsp), %eax
	testl	%eax, %eax
	jne	.L10997
.L10998:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 788(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	788(%rsp), %ebp
.L11012:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14599
.L11008:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L11008
.L14599:
	testl	%ecx, %ecx
	je	.L11001
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L11010
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L11010
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L11010:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L11012
.L11001:
	cmpl	$2, %r9d
	jle	.L10997
	testl	%r10d, %r10d
	jne	.L11014
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L11015
	cmpw	$46, %dx
	je	.L11015
	cmpw	$47, %dx
	je	.L11015
	cmpw	$49, %dx
	je	.L11015
	cmpw	$113, %dx
	je	.L11015
.L11014:
	movl	6048(%rsp), %eax
	testl	%eax, %eax
	jne	.L10997
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L11017
	cmpw	$46, %dx
	je	.L11017
	cmpw	$47, %dx
	je	.L11017
	cmpw	$49, %dx
	je	.L11017
	cmpw	$113, %dx
	je	.L11017
.L10997:
	cmpl	$8, 788(%rsp)
	movl	$8, %eax
	cmovl	788(%rsp), %eax
	cmpl	$1, 784(%rsp)
	movl	%eax, 788(%rsp)
	jle	.L11020
.L11042:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14602
.L11027:
	movslq	%edx,%rbx
	movl	784(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L11027
.L14602:
	testl	%r12d, %r12d
	je	.L11020
	movslq	%r12d,%r13
	movq	%r13, %rcx
	salq	$4, %rcx
	addq	mov_optab(%rip), %rcx
	movl	8(%rcx), %edx
	cmpl	$210, %edx
	je	.L11029
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 788(%rsp)
	jl	.L11029
	movslq	%edx,%rdi
	cmpl	%ebp, 6080(%rsp)
	leaq	6032(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r8
	movq	%r8, 3000(%rsp)
	jl	.L11029
	movl	6088(%rsp), %edx
.L11040:
	testl	%edx, %edx
	je	.L11034
	subl	%ebp, 52(%rbx)
.L11034:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L11035
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15197:
	movq	%rax, 776(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L11037
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L11038:
	movq	%rax, %rsi
	movq	776(%rsp), %rdi
	xorl	%eax, %eax
	call	*3000(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L11039
	addl	%ebp, 52(%rbx)
.L11039:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L11040
.L11029:
	movl	mode_size(,%r13,4), %ebp
	movl	%ebp, 784(%rsp)
	decl	%ebp
	jg	.L11042
.L11020:
	movl	6080(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L11058
	jmp	.L15283
.L11037:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L11038
.L11035:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15197
.L11017:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6040(%rsp)
	jmp	.L10997
.L11015:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6064(%rsp)
	jmp	.L11014
.L10995:
	movl	$1, %edx
	jmp	.L10994
.L10993:
	movl	$1, %ecx
	jmp	.L10992
.L10991:
	movl	$1, %ecx
	jmp	.L10990
.L10968:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L10964
.L15802:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L10962
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15808
.L10962:
	cmpl	$55, %eax
	jne	.L10965
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L10964
.L15808:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L10964
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15196:
	movq	%rbx, 792(%rsp)
	jmp	.L10964
.L10961:
	cmpq	$0, 16(%r14)
	jne	.L10969
	movq	8(%r14), %rax
	movq	%rax, 792(%rsp)
	jmp	.L10964
.L10969:
	movq	24(%r14), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 792(%rsp)
	jne	.L10964
	movq	8(%r14), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rbx
	jmp	.L15196
.L10958:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L10954
.L15801:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L10952
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15809
.L10952:
	cmpl	$55, %eax
	jne	.L10955
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L10954
.L15809:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L10954
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L10954
.L10951:
	cmpq	$0, 16(%r12)
	jne	.L10959
	movq	8(%r12), %r12
	jmp	.L10954
.L10959:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L10960
	movq	%rax, %r12
	jmp	.L10954
.L10960:
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L10954
.L10948:
	movq	736(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	736(%rsp), %r9
	movq	%rax, 8(%r9)
	movq	736(%rsp), %r11
	movq	16(%r11), %rdi
	call	protect_from_queue
	movq	736(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L10944
.L15800:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L10944
.L10941:
	movq	736(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L10949
	movq	8(%rcx), %rdx
	movq	%rdx, 800(%rsp)
	jmp	.L10944
.L10949:
	movq	736(%rsp), %rcx
	movq	24(%rcx), %r8
	testq	%r8, %r8
	movq	%r8, 800(%rsp)
	jne	.L10944
	movq	736(%rsp), %r11
	movq	8(%r11), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	736(%rsp), %rbx
	movq	%rax, %rdi
	movq	8(%rbx), %rsi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	736(%rsp), %r10
	movq	%rax, %rdi
	movq	16(%r10), %rsi
	call	emit_insn_before
	movq	736(%rsp), %rbp
	movq	24(%rbp), %r13
	movq	%r13, 800(%rsp)
	jmp	.L10944
.L15799:
	movq	3160(%rsp), %r8
	movl	32(%r8), %eax
	cmpl	%eax, 8(%r15)
	jge	.L10815
	movq	%r12, 816(%rsp)
	movq	736(%rsp), %rcx
	movq	8(%r8), %r13
	movl	48(%r13), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%rcx)
	movl	%eax, 812(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	736(%rsp), %rdx
	movq	%rdx, 824(%rsp)
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L10818
	cmpl	$55, %eax
	je	.L15810
	cmpl	$63, %eax
	je	.L10825
	cmpl	$66, %eax
	je	.L10825
.L10821:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L10828
	cmpl	$55, %eax
	je	.L15811
.L10832:
	cmpl	$63, %eax
	je	.L10835
	cmpl	$66, %eax
	je	.L10835
.L10831:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L10838
	cmpl	$55, %eax
	je	.L15812
.L10842:
	cmpl	$63, %eax
	je	.L10845
	cmpl	$66, %eax
	je	.L10845
.L10841:
	movq	824(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	movq	816(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	testq	%r15, %r15
	je	.L15283
	cmpw	$46, (%r15)
	je	.L15813
.L10851:
	movl	812(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3024(%rsp)
	testl	%ebp, %ebp
	je	.L14593
.L10937:
	movslq	%ebp,%rax
	movq	%rax, 3016(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L10925
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L10929
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r15)
	ja	.L10925
.L10929:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15814
.L10930:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15815
.L10931:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L10932
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3024(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L10925
.L10932:
	call	get_last_insn
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%rax, 3008(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15816
.L10933:
	movq	824(%rsp), %rdi
	xorl	%eax, %eax
	movq	816(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3024(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14978
	movq	3008(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L10925:
	movq	3016(%rsp), %r14
	movl	mode_wider_mode(,%r14,4), %ebp
	testl	%ebp, %ebp
	jne	.L10937
.L14593:
	movl	$4, %edi
	movq	%r15, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	824(%rsp), %rbx
	movl	$3, %ecx
	movq	816(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%rdx), %r9
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movl	$4, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r9, (%rsp)
	jmp	.L15200
.L15816:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L10933
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L10933
.L15815:
	xorl	%eax, %eax
	movq	816(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10925
	jmp	.L10931
.L15814:
	xorl	%eax, %eax
	movq	824(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10925
	jmp	.L10930
.L15813:
	movl	8(%r15), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 812(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	812(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L10865:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14584
.L10861:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L10861
.L14584:
	testl	%ecx, %ecx
	je	.L10854
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L10863
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L10863
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L10863:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10865
.L10854:
	decl	%r9d
	jg	.L10851
	movq	824(%rsp), %rcx
	movq	816(%rsp), %r11
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rcx), %rbx
	movq	8(%r11), %rdi
	movq	%r11, 5992(%rsp)
	movq	%rcx, 5968(%rsp)
	movl	$0, 6020(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5976(%rsp)
	movq	%rdi, 6000(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L10868
	cmpw	$88, %dx
	je	.L10868
	cmpw	$87, %dx
	je	.L10868
.L10867:
	movl	%ecx, 5984(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L10870
	cmpw	$88, %dx
	je	.L10870
	cmpw	$87, %dx
	je	.L10870
.L10869:
	movl	%ecx, 6008(%rsp)
	movl	$0, 6012(%rsp)
	movl	$0, 5988(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L10872
	cmpw	$87, %ax
	je	.L10872
.L10871:
	testl	%edx, %edx
	movl	%edx, 6024(%rsp)
	je	.L10873
	movl	%r10d, 6020(%rsp)
.L10873:
	movl	%r10d, 6016(%rsp)
	movl	6008(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L10875
	movl	5984(%rsp), %edx
	testl	%edx, %edx
	jne	.L10874
.L10875:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 812(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r15d
	cmovl	812(%rsp), %ebp
.L10889:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14587
.L10885:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L10885
.L14587:
	testl	%ecx, %ecx
	je	.L10878
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L10887
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r15d, %eax
	cmpl	%eax, %ebp
	jl	.L10887
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L10887:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10889
.L10878:
	cmpl	$2, %r9d
	jle	.L10874
	testl	%r10d, %r10d
	jne	.L10891
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L10892
	cmpw	$46, %dx
	je	.L10892
	cmpw	$47, %dx
	je	.L10892
	cmpw	$49, %dx
	je	.L10892
	cmpw	$113, %dx
	je	.L10892
.L10891:
	movl	5984(%rsp), %esi
	testl	%esi, %esi
	jne	.L10874
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L10894
	cmpw	$46, %dx
	je	.L10894
	cmpw	$47, %dx
	je	.L10894
	cmpw	$49, %dx
	je	.L10894
	cmpw	$113, %dx
	je	.L10894
.L10874:
	cmpl	$8, 812(%rsp)
	movl	$8, %eax
	cmovl	812(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 812(%rsp)
	jle	.L10897
.L10919:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14590
.L10904:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L10904
.L14590:
	testl	%r13d, %r13d
	je	.L10897
	movslq	%r13d,%r14
	movq	%r14, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L10906
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 812(%rsp)
	jl	.L10906
	movslq	%edx,%r11
	cmpl	%ebp, 6016(%rsp)
	leaq	5968(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %r15
	movq	%r15, 3032(%rsp)
	jl	.L10906
	movl	6024(%rsp), %edx
.L10917:
	testl	%edx, %edx
	je	.L10911
	subl	%ebp, 52(%rbx)
.L10911:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L10912
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15195:
	movq	%rax, %r15
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L10914
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L10915:
	movq	%rax, %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*3032(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L10916
	addl	%ebp, 52(%rbx)
.L10916:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L10917
.L10906:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L10919
.L10897:
	movl	6016(%rsp), %eax
	testl	%eax, %eax
	jmp	.L15397
.L10914:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L10915
.L10912:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15195
.L10894:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5976(%rsp)
	jmp	.L10874
.L10892:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6000(%rsp)
	jmp	.L10891
.L10872:
	movl	$1, %edx
	jmp	.L10871
.L10870:
	movl	$1, %ecx
	jmp	.L10869
.L10868:
	movl	$1, %ecx
	jmp	.L10867
.L10845:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L10841
.L15812:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L10839
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15817
.L10839:
	cmpl	$55, %eax
	jne	.L10842
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L10841
.L15817:
	movq	8(%rbp), %r9
	movq	%r9, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L10841
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r15
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L10841
.L10838:
	cmpq	$0, 16(%r15)
	jne	.L10846
	movq	8(%r15), %r15
	jmp	.L10841
.L10846:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.L10847
	movq	%rsi, %r15
	jmp	.L10841
.L10847:
	movq	8(%r15), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L10841
.L10835:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L10831
.L15811:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L10829
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15818
.L10829:
	cmpl	$55, %eax
	jne	.L10832
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L10831
.L15818:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L10831
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 816(%rsp)
	jmp	.L10831
.L10828:
	cmpq	$0, 16(%r12)
	jne	.L10836
	movq	8(%r12), %rcx
	movq	%rcx, 816(%rsp)
	jmp	.L10831
.L10836:
	movq	24(%r12), %r8
	testq	%r8, %r8
	movq	%r8, 816(%rsp)
	jne	.L10831
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r14
	movq	%r14, 816(%rsp)
	jmp	.L10831
.L10825:
	movq	736(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L10821
.L15810:
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	736(%rsp), %r8
	movq	%rax, 8(%r8)
	jmp	.L10821
.L10818:
	movq	736(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L10826
	movq	8(%rsi), %rbx
	movq	%rbx, 824(%rsp)
	jmp	.L10821
.L10826:
	movq	736(%rsp), %rax
	movq	24(%rax), %r9
	testq	%r9, %r9
	movq	%r9, 824(%rsp)
	jne	.L10821
	movq	736(%rsp), %rdi
	movq	8(%rdi), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	736(%rsp), %r10
	movq	%rax, %rdi
	movq	8(%r10), %rsi
	movq	%rax, 24(%r10)
	call	gen_move_insn
	movq	736(%rsp), %rbp
	movq	%rax, %rdi
	movq	16(%rbp), %rsi
	call	emit_insn_before
	movq	24(%rbp), %rdx
	movq	%rdx, 824(%rsp)
	jmp	.L10821
.L10807:
	movq	736(%rsp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	736(%rsp), %r11
	movq	%rax, 8(%r11)
	movq	736(%rsp), %rbp
	movq	16(%rbp), %rdi
	call	protect_from_queue
	movq	736(%rsp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.L10803
.L15787:
	jne	.L10804
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L10803
.L10800:
	movq	736(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L10808
	movq	8(%rcx), %r8
	movq	%r8, 736(%rsp)
	jmp	.L10803
.L10808:
	movq	736(%rsp), %rbx
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L10809
	movq	%rdi, 736(%rsp)
	jmp	.L10803
.L10809:
	movq	736(%rsp), %rsi
	movq	8(%rsi), %r15
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	736(%rsp), %r10
	movq	%rax, %rdi
	movq	8(%r10), %rsi
	movq	%rax, 24(%r10)
	call	gen_move_insn
	movq	736(%rsp), %rdx
	movq	%rax, %rdi
	movq	16(%rdx), %rsi
	call	emit_insn_before
	movq	736(%rsp), %r9
	movq	24(%r9), %rax
	movq	%rax, 736(%rsp)
	jmp	.L10803
.L15786:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3160(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rax, %rsi
	jmp	.L15194
.L10779:
	movq	736(%rsp), %rdx
	movl	(%rdx), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15819
	movq	736(%rsp), %r15
	movq	3160(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%r15), %edx
	movq	%r15, %rsi
	call	expand_expr
	movq	736(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L15820
.L10797:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L10798
	cmpw	$46, %dx
	je	.L10798
	cmpw	$47, %dx
	je	.L10798
	cmpw	$49, %dx
	je	.L10798
	cmpw	$113, %dx
	jne	.L10744
	jmp	.L10798
.L15820:
	cmpl	$63, 8(%rdx)
	jle	.L10744
	jmp	.L10797
.L15819:
	movq	3160(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	736(%rsp), %r10
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	movzbl	3(%r10), %edx
	movq	8(%r10), %rdi
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L10743
.L10788:
	movl	$1, %ebx
	jmp	.L10782
.L10780:
	xorl	%ebx, %ebx
	jmp	.L10782
.L10786:
	movq	736(%rsp), %rax
	xorl	%ebx, %ebx
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L10788
	movq	736(%rsp), %r9
	xorl	%eax, %eax
	movq	16(%r9), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L10782
	jmp	.L10788
.L15785:
	movzbl	2(%rdi), %eax
	cmpb	$16, %al
	je	.L10772
	movl	cse_not_expected(%rip), %r12d
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r12d, %r12d
	cmove	%rdi, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	3160(%rsp), %rdi
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L10798
	testb	%al, %al
	je	.L10798
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15362
.L15784:
	movq	736(%rsp), %r8
	cmpb	$16, 2(%r8)
	jne	.L10745
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r13
	testq	%rbx, %rbx
	jne	.L10749
.L14577:
	movq	736(%rsp), %r12
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L10751
	cmpl	$55, %eax
	je	.L15821
.L10755:
	cmpl	$63, %eax
	je	.L10758
	cmpl	$66, %eax
	je	.L10758
.L10754:
	movq	3160(%rsp), %r14
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r14), %rdi
	call	jumpifnot
	movq	40(%r14), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L10764
.L14579:
	movq	%r13, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	3160(%rsp), %rbp
	movq	%r12, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L10769
.L14581:
	movq	%r13, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L10743
.L10769:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r11
	movq	%rax, 16(%rbx)
	testq	%r11, %r11
	movq	%r11, pending_chain(%rip)
	movq	%r11, %rbx
	jne	.L10769
	jmp	.L14581
.L10764:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	testq	%rcx, %rcx
	movq	%rcx, pending_chain(%rip)
	movq	%rcx, %rbx
	jne	.L10764
	jmp	.L14579
.L10758:
	movq	736(%rsp), %rsi
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	736(%rsp), %r10
	movq	16(%r10), %rdi
	movq	%rax, 8(%r10)
	call	protect_from_queue
	movq	736(%rsp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L10754
.L15821:
	jne	.L10755
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	736(%rsp), %r12
	movq	%rax, 8(%r12)
	jmp	.L10754
.L10751:
	cmpq	$0, 16(%r12)
	jne	.L10759
	movq	8(%r12), %r12
	jmp	.L10754
.L10759:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L10760
	movq	%rax, %r12
	jmp	.L10754
.L10760:
	movq	8(%r12), %r15
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L10754
.L10749:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L10749
	jmp	.L14577
.L15783:
	movq	3160(%rsp), %r11
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	32(%r11), %rdi
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L10741
.L14575:
	movq	3160(%rsp), %rax
	movq	736(%rsp), %rsi
	xorl	%edx, %edx
	movq	40(%rax), %rdi
	xorl	%eax, %eax
	call	store_expr
	movq	%rax, %r12
	jmp	.L10743
.L10741:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L10741
	jmp	.L14575
.L15782:
	movq	3160(%rsp), %rbx
	movzbl	16(%rbx), %eax
	cmpb	$39, %al
	jne	.L10736
	movl	current_function_returns_struct(%rip), %r13d
	testl	%r13d, %r13d
	je	.L10736
	movl	current_function_returns_pcc_struct(%rip), %esi
	testl	%esi, %esi
	jne	.L10736
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	3160(%rsp), %rdi
	movq	%rax, %r14
	xorl	%eax, %eax
	call	expr_size
	movl	$4, %r9d
	movq	736(%rsp), %r15
	movq	8(%r14), %rcx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rcx, (%rsp)
	movq	8(%r15), %r8
	movl	$3, %ecx
	call	emit_library_call
	movq	736(%rsp), %rdi
	jmp	.L15202
.L15781:
	movq	3176(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	3176(%rsp), %r12
	movq	%rax, 736(%rsp)
	movzbl	16(%r12), %edx
	jmp	.L10735
.L15780:
	movq	3176(%rsp), %rbx
	movq	40(%rbx), %rdi
	cmpb	$25, 16(%rdi)
	jne	.L10218
	movq	8(%rbx), %r11
	movq	32(%r11), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L10218
.L10219:
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	cmpb	$37, %dl
	movl	$0, 5480(%rsp)
	movq	3176(%rsp), %rbp
	leaq	5496(%rsp), %r12
	je	.L15822
	cmpb	$38, %dl
	je	.L15823
	movq	3176(%rsp), %r9
	movq	8(%r9), %r10
	movzbl	44(%r10), %r14d
	movslq	%r14d,%rdx
	movl	mode_size(,%rdx,4), %eax
	sall	$3, %eax
	movl	%eax, 5500(%rsp)
	movq	8(%r9), %r11
	movzbl	17(%r11), %edi
	shrb	$6, %dil
	movl	%edi, %esi
	andl	$1, %esi
	movl	%esi, 3156(%rsp)
.L10222:
	testq	%rcx, %rcx
	je	.L10225
	cmpb	$25, 16(%rcx)
	je	.L10226
	movl	$16, %r14d
	movl	$-1, 5500(%rsp)
.L10225:
	movl	$0, (%r12)
.L10253:
	movzbl	16(%rbp), %edx
	cmpb	$39, %dl
	je	.L15824
.L10231:
	leal	-37(%rdx), %ecx
	cmpb	$1, %cl
	ja	.L10232
	cmpb	$37, %dl
	je	.L15825
	movq	48(%rbp), %rbx
.L10234:
	movzbl	16(%rbx), %eax
	cmpb	$53, %al
	je	.L15826
	cmpb	$25, %al
	je	.L15827
.L10243:
	testq	%r13, %r13
	je	.L10245
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%r13, %rsi
	movl	$53, %edi
.L15185:
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, %r13
.L10247:
	testb	$16, 17(%rbp)
	je	.L10252
	movl	$1, 5480(%rsp)
.L10252:
	movq	32(%rbp), %rbp
	jmp	.L10253
.L10245:
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	jmp	.L15185
.L15827:
	movl	24(%rbx), %eax
.L15186:
	addl	%eax, (%r12)
	jmp	.L10247
.L15826:
	movq	32(%rbx), %rsi
	cmpb	$25, 16(%rsi)
	je	.L15828
	movq	40(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L15283
	movq	%rsi, %rbx
.L10237:
	movl	24(%rax), %eax
	addl	%eax, (%r12)
	jmp	.L10243
.L15828:
	movq	40(%rbx), %rbx
	movq	%rsi, %rax
	jmp	.L10237
.L15825:
	movq	40(%rbp), %r8
	movq	72(%r8), %rbx
	jmp	.L10234
.L10232:
	cmpb	$42, %dl
	je	.L15829
.L10248:
	cmpb	$103, %dl
	je	.L10247
	leal	-101(%rdx), %esi
	cmpb	$1, %sil
	ja	.L10229
	movq	32(%rbp), %rdx
	movq	8(%rbp), %r11
	movq	8(%rdx), %r9
	movzbl	44(%r9), %edi
	cmpb	%dil, 44(%r11)
	je	.L10247
.L10229:
	testl	%r14d, %r14d
	jne	.L10254
	movl	(%r12), %eax
	movl	5500(%rsp), %edi
	cltd
	idivl	%edi
	testl	%edx, %edx
	movl	%edx, %ebx
	je	.L15830
.L10254:
	testl	%r14d, %r14d
	movl	%r14d, 5484(%rsp)
	movq	%r13, 5488(%rsp)
	jne	.L10257
	testl	%r15d, %r15d
	jne	.L15831
.L10257:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	5488(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	jne	.L15832
.L10258:
	movl	5480(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L10260
	cmpw	$55, (%rbx)
	je	.L15833
.L10260:
	testl	%r15d, %r15d
	movl	5500(%rsp), %r12d
	movl	5496(%rsp), %r14d
	movl	5484(%rsp), %r13d
	je	.L10262
	movq	3176(%rsp), %rax
	movq	8(%rax), %r10
	movzbl	44(%r10), %r15d
	movl	%r15d, 732(%rsp)
.L10263:
	movq	8(%rbp), %rdi
	movl	48(%rdi), %r15d
	call	int_size_in_bytes
	movl	$0, 728(%rsp)
	movl	%eax, 3152(%rsp)
	shrl	$3, %r15d
	cmpl	$31, %r12d
	jg	.L10264
	movl	$1, %eax
	movl	%r12d, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 728(%rsp)
.L10264:
	cmpl	$16, %r13d
	je	.L15834
.L10265:
	testl	%r13d, %r13d
	je	.L10270
	cmpl	$16, %r13d
	je	.L10271
	movslq	%r13d,%rsi
	cmpb	$0, direct_store(%rsi)
	je	.L10270
.L10271:
	movzwl	(%rbx), %eax
	cmpw	$51, %ax
	je	.L10270
	cmpw	$53, %ax
	je	.L10270
	movl	732(%rsp), %r12d
	movq	8(%rbx), %rdi
	testl	%r12d, %r12d
	je	.L10277
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L10277
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L10277
	cmpw	$46, %dx
	je	.L10277
	cmpw	$47, %dx
	je	.L10277
	cmpw	$49, %dx
	je	.L10277
	cmpw	$113, %dx
	je	.L10277
	cmpw	$63, %dx
	je	.L15835
.L10278:
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, %rdi
.L10277:
	cmpl	$-1, %r14d
	leal	7(%r14), %ebp
	cmovle	%ebp, %r14d
	sarl	$3, %r14d
	movl	%r14d, %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	orb	$16, 3(%rax)
	movq	%rax, %r15
	movl	$0, 724(%rsp)
	movl	732(%rsp), %eax
	movq	3160(%rsp), %rdx
	testl	%eax, %eax
	movzbl	16(%rdx), %eax
	setne	%r8b
	cmpb	$44, %al
	movzbl	%r8b, %ebp
	je	.L15836
	cmpb	$48, %al
	je	.L15837
.L10289:
	testl	%ebp, %ebp
	je	.L10316
	cmpw	$55, (%r15)
	je	.L15838
.L10316:
	movzwl	(%r15), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L10324
	mov	%eax, %ebx
	jmp	*.L10333(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L10333:
	.quad	.L10327
	.quad	.L10324
	.quad	.L10324
	.quad	.L10324
	.quad	.L10332
	.quad	.L10324
	.quad	.L10324
	.quad	.L10324
	.quad	.L10330
	.quad	.L10330
	.quad	.L10324
	.quad	.L10330
	.text
.L10327:
	movq	8(%r15), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L10326:
	testl	%ebx, %ebx
	je	.L10323
	movzbl	2(%r15), %eax
	cmpb	$16, %al
	je	.L10335
	testb	%al, %al
	jne	.L15839
.L10335:
	movzbl	2(%r15), %edx
	movq	3160(%rsp), %rdi
	xorl	%esi, %esi
.L15187:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15361:
	movq	%rax, %r12
.L10342:
	movl	$1, 724(%rsp)
.L10288:
	cmpq	%r15, %r12
	je	.L10343
	movq	3160(%rsp), %r8
	cmpb	$0, 16(%r8)
	je	.L10343
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L10344
	cmpl	$55, %eax
	je	.L15840
.L10348:
	cmpl	$63, %eax
	je	.L10351
	cmpl	$66, %eax
	je	.L10351
.L10347:
	movzbl	2(%r12), %eax
	movzbl	2(%r15), %ecx
	cmpb	%cl, %al
	je	.L10354
	testb	%al, %al
	je	.L10354
	movq	3160(%rsp), %rax
	movq	8(%rax), %r11
	movl	724(%rsp), %eax
	movzbl	17(%r11), %esi
	shrb	$6, %sil
	movl	%esi, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L10355
	movq	%r12, %rsi
	movzbl	%cl, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r12
.L10610:
	movq	%r15, %rdi
	movq	%r12, %rsi
	call	emit_move_insn
.L10343:
	movl	724(%rsp), %r10d
	testl	%r10d, %r10d
	cmove	%r15, %r12
.L10287:
	movq	%r12, %rbx
.L10268:
	movq	%rbx, %rdi
	jmp	.L15202
.L10355:
	movq	%r15, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L10343
.L10354:
	cmpb	$16, %al
	jne	.L10610
	movq	3160(%rsp), %rdx
	cmpb	$28, 16(%rdx)
	je	.L15841
	cmpb	$16, %al
	jne	.L10610
	movq	3160(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 624(%rsp)
	call	expr_size
	movq	3160(%rsp), %rdi
	movq	%rax, %r13
	movq	8(%rdi), %r8
	movl	48(%r8), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 620(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 632(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L10613
	cmpl	$55, %eax
	je	.L15842
	cmpl	$63, %eax
	je	.L10620
	cmpl	$66, %eax
	je	.L10620
.L10616:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L10623
	cmpl	$55, %eax
	je	.L15843
.L10627:
	cmpl	$63, %eax
	je	.L10630
	cmpl	$66, %eax
	je	.L10630
.L10626:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L10633
	cmpl	$55, %eax
	je	.L15844
.L10637:
	cmpl	$63, %eax
	je	.L10640
	cmpl	$66, %eax
	je	.L10640
.L10636:
	movq	632(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	624(%rsp), %rcx
	cmpw	$55, (%rcx)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L15845
.L10646:
	movl	620(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3064(%rsp)
	testl	%ebp, %ebp
	je	.L14573
.L10732:
	movslq	%ebp,%rax
	movq	%rax, 3056(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L10720
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L10724
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L10720
.L10724:
	movslq	%edx,%r8
	leaq	(%r8,%r8,4), %r14
	movq	%r8, 3048(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15846
.L10725:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15847
.L10726:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L10727
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3064(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L10720
.L10727:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 3040(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15848
.L10728:
	movq	3048(%rsp), %r14
	movq	632(%rsp), %rdi
	xorl	%eax, %eax
	movq	624(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3064(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14975
	movq	3040(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L10720:
	movq	3056(%rsp), %r9
	movl	mode_wider_mode(,%r9,4), %ebp
	testl	%ebp, %ebp
	jne	.L10732
.L14573:
	movl	$4, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%esi, %esi
	movq	624(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rdx), %rbp
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	632(%rsp), %rax
	movq	%rbp, (%rsp)
.L15192:
	movq	8(%rax), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L10343
.L14975:
	call	emit_insn
	jmp	.L10343
.L15848:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L10728
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L10728
.L15847:
	xorl	%eax, %eax
	movq	624(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10720
	jmp	.L10726
.L15846:
	xorl	%eax, %eax
	movq	632(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10720
	jmp	.L10725
.L15845:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 620(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	620(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L10660:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14564
.L10656:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L10656
.L14564:
	testl	%ecx, %ecx
	je	.L10649
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10658
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L10658
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L10658:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10660
.L10649:
	decl	%r9d
	jg	.L10646
	movq	632(%rsp), %r8
	movq	624(%rsp), %r11
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%r8), %rbx
	movq	8(%r11), %rdi
	movq	%r11, 6056(%rsp)
	movl	$0, 6084(%rsp)
	movq	%r8, 6032(%rsp)
	movq	%rbx, 6040(%rsp)
	movq	%rdi, 6064(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L10663
	cmpw	$88, %dx
	je	.L10663
	cmpw	$87, %dx
	je	.L10663
.L10662:
	movl	%ecx, 6048(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L10665
	cmpw	$88, %dx
	je	.L10665
	cmpw	$87, %dx
	je	.L10665
.L10664:
	movl	%ecx, 6072(%rsp)
	movl	$0, 6076(%rsp)
	movl	$0, 6052(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L10667
	cmpw	$87, %ax
	je	.L10667
.L10666:
	testl	%edx, %edx
	movl	%edx, 6088(%rsp)
	je	.L10668
	movl	%r10d, 6084(%rsp)
.L10668:
	movl	6072(%rsp), %eax
	movl	%r10d, 6080(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L10670
	movl	6048(%rsp), %eax
	testl	%eax, %eax
	jne	.L10669
.L10670:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 620(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	620(%rsp), %ebp
.L10684:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14567
.L10680:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L10680
.L14567:
	testl	%ecx, %ecx
	je	.L10673
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10682
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L10682
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L10682:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10684
.L10673:
	cmpl	$2, %r9d
	jle	.L10669
	testl	%r10d, %r10d
	jne	.L10686
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L10687
	cmpw	$46, %dx
	je	.L10687
	cmpw	$47, %dx
	je	.L10687
	cmpw	$49, %dx
	je	.L10687
	cmpw	$113, %dx
	je	.L10687
.L10686:
	movl	6048(%rsp), %eax
	testl	%eax, %eax
	jne	.L10669
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L10689
	cmpw	$46, %dx
	je	.L10689
	cmpw	$47, %dx
	je	.L10689
	cmpw	$49, %dx
	je	.L10689
	cmpw	$113, %dx
	je	.L10689
.L10669:
	cmpl	$8, 620(%rsp)
	movl	$8, %eax
	cmovl	620(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 620(%rsp)
	jle	.L10692
.L10714:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14570
.L10699:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L10699
.L14570:
	testl	%r13d, %r13d
	je	.L10692
	movslq	%r13d,%r14
	movq	%r14, %rcx
	salq	$4, %rcx
	addq	mov_optab(%rip), %rcx
	movl	8(%rcx), %edx
	cmpl	$210, %edx
	je	.L10701
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 620(%rsp)
	jl	.L10701
	movslq	%edx,%r11
	cmpl	%ebp, 6080(%rsp)
	leaq	6032(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %rdi
	movq	%rdi, 3072(%rsp)
	jl	.L10701
	movl	6088(%rsp), %edx
.L10712:
	testl	%edx, %edx
	je	.L10706
	subl	%ebp, 52(%rbx)
.L10706:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L10707
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15191:
	movq	%rax, 608(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L10709
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L10710:
	movq	%rax, %rsi
	movq	608(%rsp), %rdi
	xorl	%eax, %eax
	call	*3072(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L10711
	addl	%ebp, 52(%rbx)
.L10711:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L10712
.L10701:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L10714
.L10692:
	movl	6080(%rsp), %eax
	testl	%eax, %eax
.L15396:
	je	.L10343
	jmp	.L15283
.L10709:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L10710
.L10707:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15191
.L10689:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6040(%rsp)
	jmp	.L10669
.L10687:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6064(%rsp)
	jmp	.L10686
.L10667:
	movl	$1, %edx
	jmp	.L10666
.L10665:
	movl	$1, %ecx
	jmp	.L10664
.L10663:
	movl	$1, %ecx
	jmp	.L10662
.L10640:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L10636
.L15844:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L10634
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15849
.L10634:
	cmpl	$55, %eax
	jne	.L10637
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L10636
.L15849:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L10636
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L10636
.L10633:
	cmpq	$0, 16(%r13)
	jne	.L10641
	movq	8(%r13), %r13
	jmp	.L10636
.L10641:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L10642
	movq	%rsi, %r13
	jmp	.L10636
.L10642:
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L10636
.L10630:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L10626
.L15843:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L10624
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15850
.L10624:
	cmpl	$55, %eax
	jne	.L10627
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L10626
.L15850:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L10626
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 624(%rsp)
	jmp	.L10626
.L10623:
	cmpq	$0, 16(%r12)
	jne	.L10631
	movq	8(%r12), %rbp
	movq	%rbp, 624(%rsp)
	jmp	.L10626
.L10631:
	movq	24(%r12), %r11
	testq	%r11, %r11
	movq	%r11, 624(%rsp)
	jne	.L10626
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rbx
	movq	%rbx, 624(%rsp)
	jmp	.L10626
.L10620:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L10616
.L15842:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L10616
.L10613:
	cmpq	$0, 16(%r15)
	jne	.L10621
	movq	8(%r15), %r9
	movq	%r9, 632(%rsp)
	jmp	.L10616
.L10621:
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 632(%rsp)
	jne	.L10616
	movq	8(%r15), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rdx
	movq	%rdx, 632(%rsp)
	jmp	.L10616
.L15841:
	xorl	%eax, %eax
	movq	%rdx, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 696(%rsp)
	je	.L15851
.L10359:
	movl	$8, %edi
	call	size_int
	movq	3160(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r11
	movl	$57, %edi
	movq	32(%r11), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3160(%rsp), %rbx
	movq	%rax, %r14
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r14, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	$0, 640(%rsp)
	movq	%rax, 664(%rsp)
	movq	%rax, %r14
	movq	3160(%rsp), %rax
	movq	8(%rax), %rsi
	movl	48(%rsi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 660(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 672(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L10485
	cmpl	$55, %eax
	je	.L15852
	cmpl	$63, %eax
	je	.L10492
	cmpl	$66, %eax
	je	.L10492
.L10488:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L10495
	cmpl	$55, %eax
	je	.L15853
.L10499:
	cmpl	$63, %eax
	je	.L10502
	cmpl	$66, %eax
	je	.L10502
.L10498:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L10505
	cmpl	$55, %eax
	je	.L15854
.L10509:
	cmpl	$63, %eax
	je	.L10512
	cmpl	$66, %eax
	je	.L10512
.L10508:
	movq	672(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 664(%rsp)
	je	.L15283
	movq	664(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L15855
.L10518:
	movl	660(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3104(%rsp)
	testl	%ebp, %ebp
	je	.L14561
.L10604:
	movslq	%ebp,%rdx
	movq	%rdx, %rax
	movq	%rdx, 3096(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L10592
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L10596
	movq	664(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L10592
.L10596:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 3088(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15856
.L10597:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15857
.L10598:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L10599
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3104(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L10592
.L10599:
	call	get_last_insn
	movl	$1, %edx
	movq	664(%rsp), %rsi
	movq	%rax, 3080(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15858
.L10600:
	movq	3088(%rsp), %rbp
	movq	672(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3104(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14974
	movq	3080(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L10592:
	movq	3096(%rsp), %rsi
	movl	mode_wider_mode(,%rsi,4), %ebp
	testl	%ebp, %ebp
	jne	.L10604
.L14561:
	movq	664(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movq	672(%rsp), %r11
	movq	8(%r12), %rbx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%rbx, (%rsp)
	movq	8(%r11), %r8
	call	emit_library_call
.L10602:
	cmpw	$46, (%r14)
	je	.L15859
	movq	8(%r15), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	696(%rsp), %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 640(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L10606:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L10607
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L10607:
	cmpq	$0, 640(%rsp)
	je	.L10343
	movq	640(%rsp), %rdi
	call	emit_label
	jmp	.L10343
.L15859:
	movq	3160(%rsp), %rax
	movq	8(%r15), %rdi
	movl	32(%rax), %esi
	call	plus_constant_wide
	movq	696(%rsp), %rdi
	movq	3160(%rsp), %r14
	movq	%rax, %r12
	movl	32(%r14), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L10606
.L14974:
	call	emit_insn
	jmp	.L10602
.L15858:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L10600
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L10600
.L15857:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10592
	jmp	.L10598
.L15856:
	xorl	%eax, %eax
	movq	672(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10592
	jmp	.L10597
.L15855:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 660(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	660(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L10532:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14552
.L10528:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L10528
.L14552:
	testl	%ecx, %ecx
	je	.L10521
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L10530
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L10530
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L10530:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10532
.L10521:
	decl	%r9d
	jg	.L10518
	movq	672(%rsp), %r9
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movq	8(%r9), %rbx
	movq	%r12, 6056(%rsp)
	movq	%r9, 6032(%rsp)
	movl	$0, 6084(%rsp)
	movq	%rdi, 6064(%rsp)
	movl	$9, 656(%rsp)
	movq	%rbx, 6040(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L10535
	cmpw	$88, %dx
	je	.L10535
	cmpw	$87, %dx
	je	.L10535
.L10534:
	movl	%ecx, 6048(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L10537
	cmpw	$88, %dx
	je	.L10537
	cmpw	$87, %dx
	je	.L10537
.L10536:
	movl	%ecx, 6072(%rsp)
	movl	$0, 6076(%rsp)
	movl	$0, 6052(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L10539
	cmpw	$87, %ax
	je	.L10539
.L10538:
	testl	%edx, %edx
	movl	%edx, 6088(%rsp)
	je	.L10540
	movl	%r10d, 6084(%rsp)
.L10540:
	movl	6072(%rsp), %eax
	movl	%r10d, 6080(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L10542
	movl	6048(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L10541
.L10542:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 660(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	660(%rsp), %ebp
.L10556:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14555
.L10552:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L10552
.L14555:
	testl	%ecx, %ecx
	je	.L10545
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10554
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L10554
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L10554:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10556
.L10545:
	cmpl	$2, %r9d
	jle	.L10541
	testl	%r10d, %r10d
	jne	.L10558
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L10559
	cmpw	$46, %dx
	je	.L10559
	cmpw	$47, %dx
	je	.L10559
	cmpw	$49, %dx
	je	.L10559
	cmpw	$113, %dx
	je	.L10559
.L10558:
	movl	6048(%rsp), %esi
	testl	%esi, %esi
	jne	.L10541
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L10561
	cmpw	$46, %dx
	je	.L10561
	cmpw	$47, %dx
	je	.L10561
	cmpw	$49, %dx
	je	.L10561
	cmpw	$113, %dx
	je	.L10561
.L10541:
	cmpl	$8, 660(%rsp)
	movl	$8, %eax
	cmovl	660(%rsp), %eax
	cmpl	$1, 656(%rsp)
	movl	%eax, 660(%rsp)
	jle	.L10564
.L10586:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14558
.L10571:
	movslq	%edx,%rbx
	movl	656(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L10571
.L14558:
	testl	%r12d, %r12d
	je	.L10564
	movslq	%r12d,%r13
	movq	%r13, %r8
	salq	$4, %r8
	addq	mov_optab(%rip), %r8
	movl	8(%r8), %edx
	cmpl	$210, %edx
	je	.L10573
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 660(%rsp)
	jl	.L10573
	movslq	%edx,%r9
	cmpl	%ebp, 6080(%rsp)
	leaq	6032(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %rdi
	movq	%rdi, 3112(%rsp)
	jl	.L10573
	movl	6088(%rsp), %edx
.L10584:
	testl	%edx, %edx
	je	.L10578
	subl	%ebp, 52(%rbx)
.L10578:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L10579
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15190:
	movq	%rax, 648(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L10581
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L10582:
	movq	%rax, %rsi
	movq	648(%rsp), %rdi
	xorl	%eax, %eax
	call	*3112(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L10583
	addl	%ebp, 52(%rbx)
.L10583:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L10584
.L10573:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 656(%rsp)
	decl	%r12d
	jg	.L10586
.L10564:
	movl	6080(%rsp), %eax
	testl	%eax, %eax
	je	.L10602
	jmp	.L15283
.L10581:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L10582
.L10579:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15190
.L10561:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6040(%rsp)
	jmp	.L10541
.L10559:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6064(%rsp)
	jmp	.L10558
.L10539:
	movl	$1, %edx
	jmp	.L10538
.L10537:
	movl	$1, %ecx
	jmp	.L10536
.L10535:
	movl	$1, %ecx
	jmp	.L10534
.L10512:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L10508
.L15854:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L10506
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15860
.L10506:
	cmpl	$55, %eax
	jne	.L10509
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L10508
.L15860:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L10508
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 664(%rsp)
	jmp	.L10508
.L10505:
	cmpq	$0, 16(%r14)
	jne	.L10513
	movq	8(%r14), %rbp
	movq	%rbp, 664(%rsp)
	jmp	.L10508
.L10513:
	movq	24(%r14), %rax
	testq	%rax, %rax
	movq	%rax, 664(%rsp)
	jne	.L10508
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rbx
	movq	%rbx, 664(%rsp)
	jmp	.L10508
.L10502:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L10498
.L15853:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L10496
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15861
.L10496:
	cmpl	$55, %eax
	jne	.L10499
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L10498
.L15861:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L10498
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L10498
.L10495:
	cmpq	$0, 16(%r12)
	jne	.L10503
	movq	8(%r12), %r12
	jmp	.L10498
.L10503:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L10504
	movq	%rax, %r12
	jmp	.L10498
.L10504:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L10498
.L10492:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L10488
.L15852:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L10488
.L10485:
	cmpq	$0, 16(%r15)
	jne	.L10493
	movq	8(%r15), %r9
	movq	%r9, 672(%rsp)
	jmp	.L10488
.L10493:
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 672(%rsp)
	jne	.L10488
	movq	8(%r15), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r8
	movq	%r8, 672(%rsp)
	jmp	.L10488
.L15851:
	movq	3160(%rsp), %rcx
	movq	696(%rsp), %rdi
	movl	32(%rcx), %eax
	cmpl	%eax, 8(%rdi)
	jge	.L10359
	movq	%r12, 704(%rsp)
	movq	8(%rcx), %r9
	movl	48(%r9), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 692(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 712(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L10362
	cmpl	$55, %eax
	je	.L15862
	cmpl	$63, %eax
	je	.L10369
	cmpl	$66, %eax
	je	.L10369
.L10365:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L10372
	cmpl	$55, %eax
	je	.L15863
.L10376:
	cmpl	$63, %eax
	je	.L10379
	cmpl	$66, %eax
	je	.L10379
.L10375:
	movq	696(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L10382
	cmpl	$55, %eax
	je	.L15864
.L10386:
	cmpl	$63, %eax
	je	.L10389
	cmpl	$66, %eax
	je	.L10389
.L10385:
	movq	712(%rsp), %r11
	cmpw	$55, (%r11)
	jne	.L15283
	movq	704(%rsp), %r14
	cmpw	$55, (%r14)
	jne	.L15283
	cmpq	$0, 696(%rsp)
	je	.L15283
	movq	696(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15865
.L10395:
	movl	692(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3136(%rsp)
	testl	%ebp, %ebp
	je	.L14549
.L10481:
	movslq	%ebp,%rax
	movq	%rax, 3128(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L10469
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L10473
	movq	696(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L10469
.L10473:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15866
.L10474:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15867
.L10475:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L10476
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3136(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L10469
.L10476:
	call	get_last_insn
	movl	$1, %edx
	movq	696(%rsp), %rsi
	movq	%rax, 3120(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15868
.L10477:
	movq	712(%rsp), %rdi
	xorl	%eax, %eax
	movq	704(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3136(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14975
	movq	3120(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L10469:
	movq	3128(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L10481
.L14549:
	movq	696(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	704(%rsp), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%r10), %rbp
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	712(%rsp), %rax
	movl	$4, 8(%rsp)
	movq	%rbp, (%rsp)
	jmp	.L15192
.L15868:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L10477
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L10477
.L15867:
	xorl	%eax, %eax
	movq	704(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10469
	jmp	.L10475
.L15866:
	xorl	%eax, %eax
	movq	712(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10469
	jmp	.L10474
.L15865:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 692(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	692(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L10409:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14540
.L10405:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L10405
.L14540:
	testl	%ecx, %ecx
	je	.L10398
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10407
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L10407
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L10407:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10409
.L10398:
	decl	%r9d
	jg	.L10395
	movq	704(%rsp), %rcx
	movq	712(%rsp), %r8
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%r8), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5992(%rsp)
	movl	$0, 6020(%rsp)
	movq	%r8, 5968(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5976(%rsp)
	movq	%rdi, 6000(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L10412
	cmpw	$88, %dx
	je	.L10412
	cmpw	$87, %dx
	je	.L10412
.L10411:
	movl	%ecx, 5984(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L10414
	cmpw	$88, %dx
	je	.L10414
	cmpw	$87, %dx
	je	.L10414
.L10413:
	movl	%ecx, 6008(%rsp)
	movl	$0, 6012(%rsp)
	movl	$0, 5988(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L10416
	cmpw	$87, %ax
	je	.L10416
.L10415:
	testl	%edx, %edx
	movl	%edx, 6024(%rsp)
	je	.L10417
	movl	%r10d, 6020(%rsp)
.L10417:
	movl	6008(%rsp), %eax
	movl	%r10d, 6016(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L10419
	movl	5984(%rsp), %eax
	testl	%eax, %eax
	jne	.L10418
.L10419:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 692(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	692(%rsp), %ebp
.L10433:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14543
.L10429:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L10429
.L14543:
	testl	%ecx, %ecx
	je	.L10422
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10431
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L10431
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L10431:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10433
.L10422:
	cmpl	$2, %r9d
	jle	.L10418
	testl	%r10d, %r10d
	jne	.L10435
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L10436
	cmpw	$46, %dx
	je	.L10436
	cmpw	$47, %dx
	je	.L10436
	cmpw	$49, %dx
	je	.L10436
	cmpw	$113, %dx
	je	.L10436
.L10435:
	movl	5984(%rsp), %eax
	testl	%eax, %eax
	jne	.L10418
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L10438
	cmpw	$46, %dx
	je	.L10438
	cmpw	$47, %dx
	je	.L10438
	cmpw	$49, %dx
	je	.L10438
	cmpw	$113, %dx
	je	.L10438
.L10418:
	cmpl	$8, 692(%rsp)
	movl	$8, %eax
	cmovl	692(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 692(%rsp)
	jle	.L10441
.L10463:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14546
.L10448:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L10448
.L14546:
	testl	%r13d, %r13d
	je	.L10441
	movslq	%r13d,%r14
	movq	%r14, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L10450
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 692(%rsp)
	jl	.L10450
	movslq	%edx,%r9
	cmpl	%ebp, 6016(%rsp)
	leaq	5968(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %rdi
	movq	%rdi, 3144(%rsp)
	jl	.L10450
	movl	6024(%rsp), %edx
.L10461:
	testl	%edx, %edx
	je	.L10455
	subl	%ebp, 52(%rbx)
.L10455:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L10456
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15189:
	movl	40(%rbx), %r8d
	movq	%rax, 680(%rsp)
	testl	%r8d, %r8d
	je	.L10458
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L10459:
	movq	%rax, %rsi
	movq	680(%rsp), %rdi
	xorl	%eax, %eax
	call	*3144(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L10460
	addl	%ebp, 52(%rbx)
.L10460:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L10461
.L10450:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L10463
.L10441:
	movl	6016(%rsp), %r14d
	testl	%r14d, %r14d
	jmp	.L15396
.L10458:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L10459
.L10456:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15189
.L10438:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5976(%rsp)
	jmp	.L10418
.L10436:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6000(%rsp)
	jmp	.L10435
.L10416:
	movl	$1, %edx
	jmp	.L10415
.L10414:
	movl	$1, %ecx
	jmp	.L10413
.L10412:
	movl	$1, %ecx
	jmp	.L10411
.L10389:
	movq	696(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	696(%rsp), %r9
	movq	%rax, 8(%r9)
	movq	696(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	696(%rsp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.L10385
.L15864:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L10383
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L15869
.L10383:
	cmpl	$55, %eax
	jne	.L10386
	movq	696(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L10385
.L15869:
	movq	8(%rbp), %r11
	movq	%r11, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L10385
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	696(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15188:
	movq	%rbx, 696(%rsp)
	jmp	.L10385
.L10382:
	movq	696(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L10390
	movq	8(%rcx), %rbx
	jmp	.L15188
.L10390:
	movq	696(%rsp), %r10
	movq	24(%r10), %rsi
	testq	%rsi, %rsi
	je	.L10391
	movq	%rsi, 696(%rsp)
	jmp	.L10385
.L10391:
	movq	696(%rsp), %rsi
	movq	8(%rsi), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	696(%rsp), %r8
	movq	%rax, %rdi
	movq	8(%r8), %rsi
	movq	%rax, 24(%r8)
	call	gen_move_insn
	movq	696(%rsp), %rcx
	movq	%rax, %rdi
	movq	16(%rcx), %rsi
	call	emit_insn_before
	movq	696(%rsp), %r13
	movq	24(%r13), %rbx
	movq	%rbx, 696(%rsp)
	jmp	.L10385
.L10379:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L10375
.L15863:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L10373
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15870
.L10373:
	cmpl	$55, %eax
	jne	.L10376
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L10375
.L15870:
	movq	8(%rbp), %rbx
	movq	%rbx, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L10375
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 704(%rsp)
	jmp	.L10375
.L10372:
	cmpq	$0, 16(%r12)
	jne	.L10380
	movq	8(%r12), %rcx
	movq	%rcx, 704(%rsp)
	jmp	.L10375
.L10380:
	movq	24(%r12), %r8
	testq	%r8, %r8
	movq	%r8, 704(%rsp)
	jne	.L10375
	movq	8(%r12), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rbp
	movq	%rbp, 704(%rsp)
	jmp	.L10375
.L10369:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L10365
.L15862:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L10365
.L10362:
	cmpq	$0, 16(%r15)
	jne	.L10370
	movq	8(%r15), %rdx
	movq	%rdx, 712(%rsp)
	jmp	.L10365
.L10370:
	movq	24(%r15), %r13
	testq	%r13, %r13
	movq	%r13, 712(%rsp)
	jne	.L10365
	movq	8(%r15), %r14
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r10
	movq	%r10, 712(%rsp)
	jmp	.L10365
.L10351:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L10347
.L15840:
	jne	.L10348
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L10347
.L10344:
	cmpq	$0, 16(%r15)
	jne	.L10352
	movq	8(%r15), %r15
	jmp	.L10347
.L10352:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.L10353
	movq	%rsi, %r15
	jmp	.L10347
.L10353:
	movq	8(%r15), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L10347
.L15839:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3160(%rsp), %rdi
	movzbl	2(%r15), %edx
	movq	%rax, %rsi
	jmp	.L15187
.L10323:
	movl	(%r15), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15871
	movzbl	2(%r15), %edx
	movq	3160(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r15, %rsi
	call	expand_expr
	cmpw	$51, (%r15)
	movq	%rax, %r12
	je	.L15872
.L10341:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L10342
	cmpw	$46, %dx
	je	.L10342
	cmpw	$47, %dx
	je	.L10342
	cmpw	$49, %dx
	je	.L10342
	cmpw	$113, %dx
	jne	.L10288
	jmp	.L10342
.L15872:
	cmpl	$63, 8(%r15)
	jle	.L10288
	jmp	.L10341
.L15871:
	movq	3160(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r15), %rdi
	movzbl	3(%r15), %edx
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L10287
.L10332:
	movl	$1, %ebx
	jmp	.L10326
.L10324:
	xorl	%ebx, %ebx
	jmp	.L10326
.L10330:
	movq	8(%r15), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L10332
	movq	16(%r15), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L10326
	jmp	.L10332
.L15838:
	movzbl	2(%r15), %eax
	cmpb	$16, %al
	je	.L10316
	movl	cse_not_expected(%rip), %r14d
	movq	3160(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r14d, %r14d
	cmove	%r15, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L10342
	testb	%al, %al
	je	.L10342
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15361
.L15837:
	cmpb	$16, 2(%r15)
	jne	.L10289
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.L10293
.L14533:
	movzwl	(%r15), %eax
	movq	%r15, %r12
	cmpl	$59, %eax
	je	.L10295
	cmpl	$55, %eax
	je	.L15873
.L10299:
	cmpl	$63, %eax
	je	.L10302
	cmpl	$66, %eax
	je	.L10302
.L10298:
	movq	3160(%rsp), %r15
	xorl	%eax, %eax
	movq	%r13, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r15), %rdi
	call	jumpifnot
	movq	40(%r15), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	%ebp, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L10308
.L14535:
	movq	%r14, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	3160(%rsp), %r13
	movq	%r12, %rsi
	movq	48(%r13), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L10313
.L14537:
	movq	%r14, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L10287
.L10313:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L10313
	jmp	.L14537
.L10308:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L10308
	jmp	.L14535
.L10302:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L10298
.L15873:
	jne	.L10299
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L10298
.L10295:
	cmpq	$0, 16(%r15)
	jne	.L10303
	movq	8(%r15), %r12
	jmp	.L10298
.L10303:
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.L10304
	movq	%rax, %r12
	jmp	.L10298
.L10304:
	movq	8(%r15), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%rax, 24(%r12)
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r12
	jmp	.L10298
.L10293:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L10293
	jmp	.L14533
.L15836:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L10285
.L14531:
	movq	3160(%rsp), %r11
	movq	%r15, %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	movq	40(%r11), %rdi
	call	store_expr
	movq	%rax, %r12
	jmp	.L10287
.L10285:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L10285
	jmp	.L14531
.L15835:
	movq	16(%rdi), %rcx
	cmpw	$46, (%rcx)
	jne	.L10278
	movq	8(%rdi), %rax
	cmpq	virtual_incoming_args_rtx(%rip), %rax
	je	.L10277
	cmpq	virtual_stack_vars_rtx(%rip), %rax
	jne	.L10278
	jmp	.L10277
.L10270:
	movq	3160(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	%r15d, %r9d
	movl	%r13d, %ecx
	movl	3152(%rsp), %r11d
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %rbp
	movl	%r12d, %esi
	movl	%r14d, %edx
	xorl	%eax, %eax
	movl	%r11d, (%rsp)
	call	store_bit_field
	movl	732(%rsp), %edi
	testl	%edi, %edi
	je	.L10272
	movl	728(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L10273
	movl	(%rbx), %eax
	andl	$134283263, %eax
	cmpl	$134217783, %eax
	je	.L10273
	movl	3156(%rsp), %r14d
	testl	%r14d, %r14d
	je	.L10274
	movl	728(%rsp), %edx
	xorl	%esi, %esi
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	expand_and
.L15193:
	movq	%rax, %rbx
	jmp	.L10268
.L10274:
	movzbl	2(%rbp), %r15d
	testl	%r15d, %r15d
	cmove	732(%rsp), %r15d
	xorl	%esi, %esi
	movslq	%r15d,%rbx
	movl	mode_size(,%rbx,4), %edi
	sall	$3, %edi
	subl	%r12d, %edi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %r13
	movl	%r15d, %esi
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movl	$77, %edi
	xorl	%eax, %eax
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movl	$78, %edi
	movl	%r15d, %esi
	movq	%r13, %rcx
	xorl	%eax, %eax
	call	expand_shift
	jmp	.L15193
.L10273:
	movl	3152(%rsp), %edx
	movl	3156(%rsp), %ecx
	movq	%rbx, %rdi
	movl	732(%rsp), %r9d
	movl	%r12d, %esi
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r15d, 8(%rsp)
	movl	%edx, 16(%rsp)
	movl	%r14d, %edx
	call	extract_bit_field
	jmp	.L15193
.L10272:
	movq	const0_rtx(%rip), %rbx
	jmp	.L10268
.L15834:
	movzwl	(%rbx), %eax
	cmpw	$51, %ax
	je	.L10266
	cmpw	$53, %ax
	jne	.L10265
.L10266:
	movzbl	2(%rbx), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbp
	movl	mode_size(,%rbp,4), %esi
	call	assign_stack_temp
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	copy_rtx
	movb	$16, 2(%rax)
	movq	%rax, %r13
	movzbq	2(%rbx), %rcx
	movl	mode_size(,%rcx,4), %eax
	sall	$3, %eax
	cmpl	%eax, %r12d
	je	.L10267
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	call	emit_move_insn
.L10267:
	movl	3152(%rsp), %r8d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r8d, 16(%rsp)
	movq	3160(%rsp), %r8
	call	store_field
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	emit_move_insn
	jmp	.L10268
.L10262:
	movl	$0, 732(%rsp)
	jmp	.L10263
.L15833:
	orb	$8, 3(%rbx)
	jmp	.L10260
.L15832:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	cmpw	$55, (%rbx)
	movq	%rax, %rsi
	jne	.L15283
	movl	$4, %edi
	call	force_reg
	movq	8(%rbx), %rdx
	movl	$4, %esi
	movq	%rax, %rcx
	movl	$63, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %rbx
	jmp	.L10258
.L15831:
	movq	%rbp, %rdi
	call	stabilize_reference
	movq	%rax, %rbp
	jmp	.L10257
.L15830:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	mode_for_size
	movl	%eax, %r14d
	cmpl	$16, %eax
	cmove	%ebx, %r14d
	jmp	.L10254
.L15829:
	movq	40(%rbp), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L10248
	movq	8(%rbp), %rbx
	movq	32(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L10248
	movl	24(%rax), %eax
	imull	24(%rcx), %eax
	jmp	.L15186
.L15824:
	movl	flag_volatile(%rip), %eax
	testl	%eax, %eax
	je	.L10231
	movl	$1, 5480(%rsp)
	movzbl	16(%rbp), %edx
	jmp	.L10231
.L10226:
	movl	24(%rcx), %eax
	movl	%eax, 5500(%rsp)
	jmp	.L10225
.L15823:
	movq	3176(%rsp), %rbx
	movzbl	17(%rbx), %r8d
	movq	40(%rbx), %rcx
	shrb	$6, %r8b
	movl	%r8d, %r10d
	andl	$1, %r10d
	movl	%r10d, 3156(%rsp)
	jmp	.L10222
.L15822:
	movq	40(%rbp), %rax
	testb	$16, 53(%rax)
	movq	40(%rax), %rcx
	jne	.L10221
	movzbl	52(%rax), %r14d
.L10221:
	movzbl	17(%rax), %r9d
	shrb	$6, %r9b
	movl	%r9d, %edx
	andl	$1, %edx
	movl	%edx, 3156(%rsp)
	jmp	.L10222
.L15779:
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	jmp	.L10217
.L15778:
	movq	integer_one_node(%rip), %rsi
	jmp	.L10215
	.p2align 6,,7
.L8233:
	movq	32(%r15), %r11
	xorl	%edi, %edi
	cmpl	$0, 5408(%rsp)
	sete	%dil
	movq	%r11, 3664(%rsp)
	movq	40(%r15), %r15
	movq	$0, 1088(%rsp)
	movq	%r15, 3656(%rsp)
	movq	8(%r11), %rax
	movq	$0, 56(%rsp)
	movl	%edi, 3644(%rsp)
	movq	%rax, 3648(%rsp)
	movzbl	16(%r11), %edx
	testb	%dl, %dl
	je	.L15874
	leal	-37(%rdx), %r12d
	cmpb	$1, %r12b
	jbe	.L8237
	cmpb	$42, %dl
	je	.L15875
.L8236:
	cmpq	$0, 56(%rsp)
	je	.L15876
.L8753:
	cmpb	$35, %dl
	je	.L15877
	movq	3656(%rsp), %r9
	movzbl	16(%r9), %eax
.L8754:
	cmpb	$44, %al
	movl	$0, 1308(%rsp)
	je	.L15878
	cmpb	$48, %al
	je	.L15879
.L8763:
	movl	3644(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L8790
	movq	56(%rsp), %rdi
	cmpw	$55, (%rdi)
	je	.L15880
.L8790:
	movq	56(%rsp), %r11
	movzwl	(%r11), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L8798
	mov	%eax, %edi
	jmp	*.L8807(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L8807:
	.quad	.L8801
	.quad	.L8798
	.quad	.L8798
	.quad	.L8798
	.quad	.L8806
	.quad	.L8798
	.quad	.L8798
	.quad	.L8798
	.quad	.L8804
	.quad	.L8804
	.quad	.L8798
	.quad	.L8804
	.text
.L8801:
	movq	56(%rsp), %r12
	xorl	%eax, %eax
	movq	8(%r12), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L8800:
	testl	%ebx, %ebx
	je	.L8797
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L8809
	testb	%al, %al
	jne	.L15881
.L8809:
	movq	56(%rsp), %rbx
	movq	3656(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%rbx), %edx
.L15159:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15356:
	movq	%rax, %r12
.L8816:
	movl	$1, 1308(%rsp)
.L8762:
	cmpq	56(%rsp), %r12
	je	.L8817
	movq	3656(%rsp), %rdx
	cmpb	$0, 16(%rdx)
	je	.L8817
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L8818
	cmpl	$55, %eax
	je	.L15882
.L8822:
	cmpl	$63, %eax
	je	.L8825
	cmpl	$66, %eax
	je	.L8825
.L8821:
	movq	56(%rsp), %rbx
	movzbl	2(%r12), %eax
	movzbl	2(%rbx), %ecx
	cmpb	%cl, %al
	je	.L8828
	testb	%al, %al
	je	.L8828
	movq	3656(%rsp), %rbp
	movl	1308(%rsp), %eax
	movq	8(%rbp), %rdx
	movzbl	17(%rdx), %r10d
	shrb	$6, %r10b
	movl	%r10d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L8829
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rbx, %rdi
	movq	%rax, %r12
.L15166:
	movq	%r12, %rsi
	call	emit_move_insn
.L8817:
	movl	1308(%rsp), %eax
	testl	%eax, %eax
	cmove	56(%rsp), %r12
.L8761:
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	preserve_temp_slots
	xorl	%eax, %eax
	call	free_temp_slots
	movq	%r12, 56(%rsp)
.L8235:
	movq	3648(%rsp), %r12
	cmpq	$0, 128(%r12)
	je	.L9209
	movq	3656(%rsp), %r13
	movzbl	16(%r13), %edx
	leal	-33(%rdx), %r8d
	cmpb	$1, %r8b
	jbe	.L9211
	cmpb	$50, %dl
	je	.L9211
	cmpb	$47, %dl
	je	.L9211
	cmpb	$37, %dl
	je	.L9211
	xorl	%eax, %eax
	cmpb	$42, %dl
	je	.L9211
.L9212:
	testl	%eax, %eax
	je	.L15883
.L9209:
	cmpq	$0, 1088(%rsp)
	je	.L581
.L10199:
	movq	1088(%rsp), %rbx
	xorl	%r13d, %r13d
	movq	32(%rbx), %r14
	movq	24(%rbx), %rsi
	movq	%rsi, 3416(%rsp)
	movzbl	16(%r14), %edx
	testb	%dl, %dl
	je	.L15884
	leal	-37(%rdx), %edi
	cmpb	$1, %dil
	jbe	.L9227
	cmpb	$42, %dl
	je	.L15885
.L9226:
	testq	%r13, %r13
	je	.L15886
.L9743:
	cmpb	$35, %dl
	je	.L15887
	movq	3416(%rsp), %r11
	movzbl	16(%r11), %eax
.L9744:
	cmpb	$44, %al
	movl	$0, 1084(%rsp)
	je	.L15888
	cmpb	$48, %al
	je	.L15889
.L9753:
	xorl	%ecx, %ecx
	testl	%ecx, %ecx
	je	.L9780
	cmpw	$55, (%r13)
	je	.L15890
.L9780:
	movzwl	(%r13), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L9788
	mov	%eax, %r14d
	jmp	*.L9797(,%r14,8)
	.section	.rodata
	.align 8
	.align 4
.L9797:
	.quad	.L9791
	.quad	.L9788
	.quad	.L9788
	.quad	.L9788
	.quad	.L9796
	.quad	.L9788
	.quad	.L9788
	.quad	.L9788
	.quad	.L9794
	.quad	.L9794
	.quad	.L9788
	.quad	.L9794
	.text
.L9791:
	movq	8(%r13), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L9790:
	testl	%ebx, %ebx
	je	.L9787
	movzbl	2(%r13), %eax
	cmpb	$16, %al
	je	.L9799
	testb	%al, %al
	jne	.L15891
.L9799:
	movzbl	2(%r13), %edx
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
.L15178:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15359:
	movq	%rax, %r12
.L9806:
	movl	$1, 1084(%rsp)
.L9752:
	cmpq	%r13, %r12
	je	.L9807
	movq	3416(%rsp), %r11
	cmpb	$0, 16(%r11)
	je	.L9807
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L9808
	cmpl	$55, %eax
	je	.L15892
.L9812:
	cmpl	$63, %eax
	je	.L9815
	cmpl	$66, %eax
	je	.L9815
.L9811:
	movzbl	2(%r12), %eax
	movzbl	2(%r13), %ecx
	cmpb	%cl, %al
	je	.L9818
	testb	%al, %al
	je	.L9818
	movq	3416(%rsp), %rax
	movq	8(%rax), %r8
	movl	1084(%rsp), %eax
	movzbl	17(%r8), %r9d
	shrb	$6, %r9b
	movl	%r9d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L9819
	movq	%r12, %rsi
	movzbl	%cl, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r12
.L10074:
	movq	%r13, %rdi
	movq	%r12, %rsi
	call	emit_move_insn
.L9807:
	movl	1084(%rsp), %r10d
	testl	%r10d, %r10d
	cmove	%r13, %r12
.L9751:
	movq	%r12, %rdi
.L15184:
	xorl	%eax, %eax
	call	preserve_temp_slots
	xorl	%eax, %eax
	call	free_temp_slots
.L9225:
	movq	1088(%rsp), %r12
	movq	(%r12), %r13
	testq	%r13, %r13
	movq	%r13, 1088(%rsp)
	jne	.L10199
	jmp	.L581
.L9819:
	movq	%r13, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L9807
.L9818:
	cmpb	$16, %al
	jne	.L10074
	movq	3416(%rsp), %rdi
	cmpb	$28, 16(%rdi)
	je	.L15893
	cmpb	$16, %al
	jne	.L10074
	movq	3416(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 984(%rsp)
	call	expr_size
	movq	3416(%rsp), %r8
	movq	%rax, %r14
	movq	8(%r8), %rdi
	movl	48(%rdi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 980(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 992(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L10077
	cmpl	$55, %eax
	je	.L15894
	cmpl	$63, %eax
	je	.L10084
	cmpl	$66, %eax
	je	.L10084
.L10080:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L10087
	cmpl	$55, %eax
	je	.L15895
.L10091:
	cmpl	$63, %eax
	je	.L10094
	cmpl	$66, %eax
	je	.L10094
.L10090:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L10097
	cmpl	$55, %eax
	je	.L15896
.L10101:
	cmpl	$63, %eax
	je	.L10104
	cmpl	$66, %eax
	je	.L10104
.L10100:
	movq	992(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	984(%rsp), %rcx
	cmpw	$55, (%rcx)
	jne	.L15283
	testq	%r14, %r14
	je	.L15283
	cmpw	$46, (%r14)
	je	.L15897
.L10110:
	movl	980(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3208(%rsp)
	testl	%ebp, %ebp
	je	.L14529
.L10196:
	movslq	%ebp,%rax
	movq	%rax, 3200(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L10184
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L10188
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L10184
.L10188:
	movslq	%edx,%r9
	leaq	(%r9,%r9,4), %r15
	movq	%r9, 3192(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15898
.L10189:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15899
.L10190:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L10191
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3208(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L10184
.L10191:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, 3184(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15900
.L10192:
	movq	3192(%rsp), %r15
	movq	992(%rsp), %rdi
	xorl	%eax, %eax
	movq	984(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3208(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14972
	movq	3184(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L10184:
	movq	3200(%rsp), %r8
	movl	mode_wider_mode(,%r8,4), %ebp
	testl	%ebp, %ebp
	jne	.L10196
.L14529:
	movl	$4, %edi
	movq	%r14, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%esi, %esi
	movq	984(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rdx), %rbp
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	992(%rsp), %rax
	movq	%rbp, (%rsp)
.L15183:
	movq	8(%rax), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L9807
.L14972:
	call	emit_insn
	jmp	.L9807
	.p2align 6,,7
.L15900:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L10192
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L10192
	.p2align 6,,7
.L15899:
	xorl	%eax, %eax
	movq	984(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10184
	jmp	.L10190
.L15898:
	xorl	%eax, %eax
	movq	992(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10184
	jmp	.L10189
.L15897:
	movl	8(%r14), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 980(%rsp)
	movl	$9, %edi
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	980(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %r8d
.L10124:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14520
.L10120:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%edi, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L10120
.L14520:
	testl	%ecx, %ecx
	je	.L10113
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10122
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L10122
	movl	%r8d, %eax
	movl	%edx, %r8d
	xorl	%edx, %edx
	divl	%r8d
	addl	%eax, %r9d
	movl	%edx, %r8d
.L10122:
	movl	mode_size(,%rcx,4), %edi
	cmpl	$1, %edi
	jg	.L10124
.L10113:
	decl	%r9d
	jg	.L10110
	movq	992(%rsp), %r9
	movq	984(%rsp), %r11
	xorl	%ecx, %ecx
	movl	%r10d, %r14d
	movl	$9, %r15d
	movq	8(%r9), %rbx
	movq	8(%r11), %rdi
	movq	%r11, 6056(%rsp)
	movl	$0, 6084(%rsp)
	movq	%r9, 6032(%rsp)
	movq	%rbx, 6040(%rsp)
	movq	%rdi, 6064(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L10127
	cmpw	$88, %dx
	je	.L10127
	cmpw	$87, %dx
	je	.L10127
.L10126:
	movl	%ecx, 6048(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L10129
	cmpw	$88, %dx
	je	.L10129
	cmpw	$87, %dx
	je	.L10129
.L10128:
	movl	%ecx, 6072(%rsp)
	movl	$0, 6076(%rsp)
	movl	$0, 6052(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L10131
	cmpw	$87, %ax
	je	.L10131
.L10130:
	testl	%edx, %edx
	movl	%edx, 6088(%rsp)
	je	.L10132
	movl	%r10d, 6084(%rsp)
.L10132:
	movl	6072(%rsp), %eax
	movl	%r10d, 6080(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L10134
	movl	6048(%rsp), %eax
	testl	%eax, %eax
	jne	.L10133
.L10134:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 980(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	980(%rsp), %ebp
.L10148:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14523
.L10144:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L10144
.L14523:
	testl	%ecx, %ecx
	je	.L10137
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10146
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L10146
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L10146:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10148
.L10137:
	cmpl	$2, %r9d
	jle	.L10133
	testl	%r10d, %r10d
	jne	.L10150
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L10151
	cmpw	$46, %dx
	je	.L10151
	cmpw	$47, %dx
	je	.L10151
	cmpw	$49, %dx
	je	.L10151
	cmpw	$113, %dx
	je	.L10151
.L10150:
	movl	6048(%rsp), %eax
	testl	%eax, %eax
	jne	.L10133
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L10153
	cmpw	$46, %dx
	je	.L10153
	cmpw	$47, %dx
	je	.L10153
	cmpw	$49, %dx
	je	.L10153
	cmpw	$113, %dx
	je	.L10153
.L10133:
	cmpl	$8, 980(%rsp)
	movl	$8, %eax
	cmovl	980(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 980(%rsp)
	jle	.L10156
.L10178:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r14d, %r14d
	testl	%edx, %edx
	je	.L14526
.L10163:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r14d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L10163
.L14526:
	testl	%r14d, %r14d
	je	.L10156
	movslq	%r14d,%r15
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L10165
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 980(%rsp)
	jl	.L10165
	movslq	%edx,%r11
	cmpl	%ebp, 6080(%rsp)
	leaq	6032(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %rcx
	movq	%rcx, 3216(%rsp)
	jl	.L10165
	movl	6088(%rsp), %edx
.L10176:
	testl	%edx, %edx
	je	.L10170
	subl	%ebp, 52(%rbx)
.L10170:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L10171
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15182:
	movq	%rax, 968(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L10173
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L10174:
	movq	%rax, %rsi
	movq	968(%rsp), %rdi
	xorl	%eax, %eax
	call	*3216(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L10175
	addl	%ebp, 52(%rbx)
.L10175:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L10176
.L10165:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L10178
.L10156:
	movl	6080(%rsp), %eax
	testl	%eax, %eax
.L15395:
	je	.L9807
	jmp	.L15283
	.p2align 6,,7
.L10173:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L10174
.L10171:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15182
.L10153:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6040(%rsp)
	jmp	.L10133
.L10151:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6064(%rsp)
	jmp	.L10150
.L10131:
	movl	$1, %edx
	jmp	.L10130
.L10129:
	movl	$1, %ecx
	jmp	.L10128
.L10127:
	movl	$1, %ecx
	jmp	.L10126
.L10104:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L10100
.L15896:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L10098
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L15901
.L10098:
	cmpl	$55, %eax
	jne	.L10101
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L10100
.L15901:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L10100
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	%r15, %r14
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L10100
	.p2align 6,,7
.L10097:
	cmpq	$0, 16(%r14)
	jne	.L10105
	movq	8(%r14), %r14
	jmp	.L10100
.L10105:
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L10106
	movq	%rsi, %r14
	jmp	.L10100
.L10106:
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L10100
.L10094:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L10090
.L15895:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L10088
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15902
.L10088:
	cmpl	$55, %eax
	jne	.L10091
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L10090
.L15902:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L10090
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r15, 984(%rsp)
	jmp	.L10090
	.p2align 6,,7
.L10087:
	cmpq	$0, 16(%r12)
	jne	.L10095
	movq	8(%r12), %rbp
	movq	%rbp, 984(%rsp)
	jmp	.L10090
.L10095:
	movq	24(%r12), %r11
	testq	%r11, %r11
	movq	%r11, 984(%rsp)
	jne	.L10090
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rbx
	movq	%rbx, 984(%rsp)
	jmp	.L10090
.L10084:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L10080
.L15894:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L10080
	.p2align 6,,7
.L10077:
	cmpq	$0, 16(%r13)
	jne	.L10085
	movq	8(%r13), %r9
	movq	%r9, 992(%rsp)
	jmp	.L10080
.L10085:
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 992(%rsp)
	jne	.L10080
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rdx
	movq	%rdx, 992(%rsp)
	jmp	.L10080
	.p2align 6,,7
.L15893:
	xorl	%eax, %eax
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1056(%rsp)
	je	.L15903
.L9823:
	movl	$8, %edi
	call	size_int
	movq	3416(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r11
	movl	$57, %edi
	movq	32(%r11), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3416(%rsp), %rbx
	movq	%rax, %r15
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r15, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	$0, 1000(%rsp)
	movq	%rax, 1024(%rsp)
	movq	%rax, %r15
	movq	3416(%rsp), %rax
	movq	8(%rax), %rsi
	movl	48(%rsi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 1020(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 1032(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L9949
	cmpl	$55, %eax
	je	.L15904
	cmpl	$63, %eax
	je	.L9956
	cmpl	$66, %eax
	je	.L9956
.L9952:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L9959
	cmpl	$55, %eax
	je	.L15905
.L9963:
	cmpl	$63, %eax
	je	.L9966
	cmpl	$66, %eax
	je	.L9966
.L9962:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L9969
	cmpl	$55, %eax
	je	.L15906
.L9973:
	cmpl	$63, %eax
	je	.L9976
	cmpl	$66, %eax
	je	.L9976
.L9972:
	movq	1032(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1024(%rsp)
	je	.L15283
	movq	1024(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L15907
.L9982:
	movl	1020(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3248(%rsp)
	testl	%ebp, %ebp
	je	.L14517
.L10068:
	movslq	%ebp,%rdx
	movq	%rdx, %rax
	movq	%rdx, 3240(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L10056
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L10060
	movq	1024(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L10056
.L10060:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r14
	movq	%r10, 3232(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15908
.L10061:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15909
.L10062:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L10063
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3248(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L10056
.L10063:
	call	get_last_insn
	movl	$1, %edx
	movq	1024(%rsp), %rsi
	movq	%rax, 3224(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15910
.L10064:
	movq	3232(%rsp), %rbp
	movq	1032(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3248(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14971
	movq	3224(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L10056:
	movq	3240(%rsp), %rsi
	movl	mode_wider_mode(,%rsi,4), %ebp
	testl	%ebp, %ebp
	jne	.L10068
.L14517:
	movq	1024(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movq	1032(%rsp), %r11
	movq	8(%r12), %rbx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%rbx, (%rsp)
	movq	8(%r11), %r8
	call	emit_library_call
.L10066:
	cmpw	$46, (%r15)
	je	.L15911
	movq	8(%r13), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1056(%rsp), %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1000(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L10070:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L10071
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L10071:
	cmpq	$0, 1000(%rsp)
	je	.L9807
	movq	1000(%rsp), %rdi
	call	emit_label
	jmp	.L9807
.L15911:
	movq	3416(%rsp), %rax
	movq	8(%r13), %rdi
	movl	32(%rax), %esi
	call	plus_constant_wide
	movq	1056(%rsp), %rdi
	movq	3416(%rsp), %r15
	movq	%rax, %r12
	movl	32(%r15), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L10070
.L14971:
	call	emit_insn
	jmp	.L10066
	.p2align 6,,7
.L15910:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L10064
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L10064
	.p2align 6,,7
.L15909:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10056
	jmp	.L10062
.L15908:
	xorl	%eax, %eax
	movq	1032(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L10056
	jmp	.L10061
.L15907:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1020(%rsp)
	movl	$9, %edi
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1020(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %r8d
.L9996:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14508
.L9992:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%edi, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L9992
.L14508:
	testl	%ecx, %ecx
	je	.L9985
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9994
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L9994
	movl	%r8d, %eax
	movl	%edx, %r8d
	xorl	%edx, %edx
	divl	%r8d
	addl	%eax, %r9d
	movl	%edx, %r8d
.L9994:
	movl	mode_size(,%rcx,4), %edi
	cmpl	$1, %edi
	jg	.L9996
.L9985:
	decl	%r9d
	jg	.L9982
	movq	1032(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r14d
	movq	8(%rcx), %rbx
	movq	%r12, 6056(%rsp)
	movq	%rcx, 6032(%rsp)
	movl	$0, 6084(%rsp)
	movq	%rdi, 6064(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 1016(%rsp)
	movq	%rbx, 6040(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L9999
	cmpw	$88, %dx
	je	.L9999
	cmpw	$87, %dx
	je	.L9999
.L9998:
	movl	%ecx, 6048(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L10001
	cmpw	$88, %dx
	je	.L10001
	cmpw	$87, %dx
	je	.L10001
.L10000:
	movl	%ecx, 6072(%rsp)
	movl	$0, 6076(%rsp)
	movl	$0, 6052(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L10003
	cmpw	$87, %ax
	je	.L10003
.L10002:
	testl	%edx, %edx
	movl	%edx, 6088(%rsp)
	je	.L10004
	movl	%r10d, 6084(%rsp)
.L10004:
	movl	6072(%rsp), %eax
	movl	%r10d, 6080(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L10006
	movl	6048(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L10005
.L10006:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1020(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1020(%rsp), %ebp
.L10020:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14511
.L10016:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L10016
.L14511:
	testl	%ecx, %ecx
	je	.L10009
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L10018
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L10018
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L10018:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L10020
.L10009:
	cmpl	$2, %r9d
	jle	.L10005
	testl	%r10d, %r10d
	jne	.L10022
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L10023
	cmpw	$46, %dx
	je	.L10023
	cmpw	$47, %dx
	je	.L10023
	cmpw	$49, %dx
	je	.L10023
	cmpw	$113, %dx
	je	.L10023
.L10022:
	movl	6048(%rsp), %esi
	testl	%esi, %esi
	jne	.L10005
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L10025
	cmpw	$46, %dx
	je	.L10025
	cmpw	$47, %dx
	je	.L10025
	cmpw	$49, %dx
	je	.L10025
	cmpw	$113, %dx
	je	.L10025
.L10005:
	cmpl	$8, 1020(%rsp)
	movl	$8, %eax
	cmovl	1020(%rsp), %eax
	cmpl	$1, 1016(%rsp)
	movl	%eax, 1020(%rsp)
	jle	.L10028
.L10050:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14514
.L10035:
	movslq	%edx,%rbx
	movl	1016(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L10035
.L14514:
	testl	%r12d, %r12d
	je	.L10028
	movslq	%r12d,%r14
	movq	%r14, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L10037
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1020(%rsp)
	jl	.L10037
	movslq	%edx,%rcx
	cmpl	%ebp, 6080(%rsp)
	leaq	6032(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %r8
	movq	%r8, 3256(%rsp)
	jl	.L10037
	movl	6088(%rsp), %edx
.L10048:
	testl	%edx, %edx
	je	.L10042
	subl	%ebp, 52(%rbx)
.L10042:
	movl	16(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L10043
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15181:
	movq	%rax, 1008(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L10045
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L10046:
	movq	%rax, %rsi
	movq	1008(%rsp), %rdi
	xorl	%eax, %eax
	call	*3256(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L10047
	addl	%ebp, 52(%rbx)
.L10047:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L10048
.L10037:
	movl	mode_size(,%r14,4), %r12d
	movl	%r12d, 1016(%rsp)
	decl	%r12d
	jg	.L10050
.L10028:
	movl	6080(%rsp), %eax
	testl	%eax, %eax
	je	.L10066
	jmp	.L15283
	.p2align 6,,7
.L10045:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L10046
.L10043:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15181
.L10025:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6040(%rsp)
	jmp	.L10005
.L10023:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6064(%rsp)
	jmp	.L10022
.L10003:
	movl	$1, %edx
	jmp	.L10002
.L10001:
	movl	$1, %ecx
	jmp	.L10000
.L9999:
	movl	$1, %ecx
	jmp	.L9998
.L9976:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L9972
.L15906:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L9970
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15912
.L9970:
	cmpl	$55, %eax
	jne	.L9973
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L9972
.L15912:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L9972
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 1024(%rsp)
	jmp	.L9972
.L9969:
	cmpq	$0, 16(%r15)
	jne	.L9977
	movq	8(%r15), %rsi
	movq	%rsi, 1024(%rsp)
	jmp	.L9972
.L9977:
	movq	24(%r15), %rax
	testq	%rax, %rax
	movq	%rax, 1024(%rsp)
	jne	.L9972
	movq	8(%r15), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rbx
	movq	%rbx, 1024(%rsp)
	jmp	.L9972
.L9966:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L9962
.L15905:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L9960
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15913
.L9960:
	cmpl	$55, %eax
	jne	.L9963
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L9962
.L15913:
	movq	8(%rbp), %r14
	movq	%r14, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L9962
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L9962
.L9959:
	cmpq	$0, 16(%r12)
	jne	.L9967
	movq	8(%r12), %r12
	jmp	.L9962
.L9967:
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.L9968
	movq	%rdi, %r12
	jmp	.L9962
.L9968:
	movq	8(%r12), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L9962
.L9956:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L9952
.L15904:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L9952
.L9949:
	cmpq	$0, 16(%r13)
	jne	.L9957
	movq	8(%r13), %rdx
	movq	%rdx, 1032(%rsp)
	jmp	.L9952
.L9957:
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 1032(%rsp)
	jne	.L9952
	movq	8(%r13), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r9
	movq	%r9, 1032(%rsp)
	jmp	.L9952
	.p2align 6,,7
.L15903:
	movq	3416(%rsp), %r8
	movq	1056(%rsp), %r10
	movl	32(%r8), %eax
	cmpl	%eax, 8(%r10)
	jge	.L9823
	movq	%r12, 1064(%rsp)
	movq	8(%r8), %rdx
	movl	48(%rdx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 1052(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 1072(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L9826
	cmpl	$55, %eax
	je	.L15914
	cmpl	$63, %eax
	je	.L9833
	cmpl	$66, %eax
	je	.L9833
.L9829:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L9836
	cmpl	$55, %eax
	je	.L15915
.L9840:
	cmpl	$63, %eax
	je	.L9843
	cmpl	$66, %eax
	je	.L9843
.L9839:
	movq	1056(%rsp), %r8
	movzwl	(%r8), %eax
	cmpl	$59, %eax
	je	.L9846
	cmpl	$55, %eax
	je	.L15916
.L9850:
	cmpl	$63, %eax
	je	.L9853
	cmpl	$66, %eax
	je	.L9853
.L9849:
	movq	1072(%rsp), %r8
	cmpw	$55, (%r8)
	jne	.L15283
	movq	1064(%rsp), %r10
	cmpw	$55, (%r10)
	jne	.L15283
	cmpq	$0, 1056(%rsp)
	je	.L15283
	movq	1056(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L15917
.L9859:
	movl	1052(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3280(%rsp)
	testl	%ebp, %ebp
	je	.L14505
.L9945:
	movslq	%ebp,%rax
	movq	%rax, 3272(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L9933
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L9937
	movq	1056(%rsp), %r8
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r8)
	ja	.L9933
.L9937:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15918
.L9938:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15919
.L9939:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L9940
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3280(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L9933
.L9940:
	call	get_last_insn
	movl	$1, %edx
	movq	1056(%rsp), %rsi
	movq	%rax, 3264(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15920
.L9941:
	movq	1072(%rsp), %rdi
	xorl	%eax, %eax
	movq	1064(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3280(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14972
	movq	3264(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L9933:
	movq	3272(%rsp), %r14
	movl	mode_wider_mode(,%r14,4), %ebp
	testl	%ebp, %ebp
	jne	.L9945
.L14505:
	movq	1056(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	1064(%rsp), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%r10), %rbp
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	1072(%rsp), %rax
	movl	$4, 8(%rsp)
	movq	%rbp, (%rsp)
	jmp	.L15183
.L15920:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L9941
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L9941
.L15919:
	xorl	%eax, %eax
	movq	1064(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9933
	jmp	.L9939
	.p2align 6,,7
.L15918:
	xorl	%eax, %eax
	movq	1072(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9933
	jmp	.L9938
.L15917:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1052(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1052(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L9873:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14496
.L9869:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L9869
.L14496:
	testl	%ecx, %ecx
	je	.L9862
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9871
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L9871
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L9871:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9873
.L9862:
	decl	%r9d
	jg	.L9859
	movq	1072(%rsp), %rcx
	movq	1064(%rsp), %r11
	movl	%r10d, %r14d
	movl	$9, %r15d
	movq	8(%rcx), %rbx
	movq	8(%r11), %rdi
	movq	%r11, 5992(%rsp)
	movq	%rcx, 5968(%rsp)
	movl	$0, 6020(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5976(%rsp)
	movq	%rdi, 6000(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L9876
	cmpw	$88, %dx
	je	.L9876
	cmpw	$87, %dx
	je	.L9876
.L9875:
	movl	%ecx, 5984(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L9878
	cmpw	$88, %dx
	je	.L9878
	cmpw	$87, %dx
	je	.L9878
.L9877:
	movl	%ecx, 6008(%rsp)
	movl	$0, 6012(%rsp)
	movl	$0, 5988(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L9880
	cmpw	$87, %ax
	je	.L9880
.L9879:
	testl	%edx, %edx
	movl	%edx, 6024(%rsp)
	je	.L9881
	movl	%r10d, 6020(%rsp)
.L9881:
	movl	6008(%rsp), %eax
	movl	%r10d, 6016(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L9883
	movl	5984(%rsp), %eax
	testl	%eax, %eax
	jne	.L9882
.L9883:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1052(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	1052(%rsp), %ebp
.L9897:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14499
.L9893:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L9893
.L14499:
	testl	%ecx, %ecx
	je	.L9886
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L9895
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L9895
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L9895:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9897
.L9886:
	cmpl	$2, %r9d
	jle	.L9882
	testl	%r10d, %r10d
	jne	.L9899
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L9900
	cmpw	$46, %dx
	je	.L9900
	cmpw	$47, %dx
	je	.L9900
	cmpw	$49, %dx
	je	.L9900
	cmpw	$113, %dx
	je	.L9900
.L9899:
	movl	5984(%rsp), %eax
	testl	%eax, %eax
	jne	.L9882
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9902
	cmpw	$46, %dx
	je	.L9902
	cmpw	$47, %dx
	je	.L9902
	cmpw	$49, %dx
	je	.L9902
	cmpw	$113, %dx
	je	.L9902
.L9882:
	cmpl	$8, 1052(%rsp)
	movl	$8, %eax
	cmovl	1052(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 1052(%rsp)
	jle	.L9905
.L9927:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r14d, %r14d
	testl	%edx, %edx
	je	.L14502
.L9912:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r14d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L9912
.L14502:
	testl	%r14d, %r14d
	je	.L9905
	movslq	%r14d,%r15
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L9914
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1052(%rsp)
	jl	.L9914
	movslq	%edx,%r11
	cmpl	%ebp, 6016(%rsp)
	leaq	5968(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %rdx
	movq	%rdx, 3288(%rsp)
	jl	.L9914
	movl	6024(%rsp), %edx
.L9925:
	testl	%edx, %edx
	je	.L9919
	subl	%ebp, 52(%rbx)
.L9919:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L9920
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15180:
	movl	40(%rbx), %r9d
	movq	%rax, 1040(%rsp)
	testl	%r9d, %r9d
	je	.L9922
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L9923:
	movq	%rax, %rsi
	movq	1040(%rsp), %rdi
	xorl	%eax, %eax
	call	*3288(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L9924
	addl	%ebp, 52(%rbx)
.L9924:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L9925
.L9914:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L9927
.L9905:
	movl	6016(%rsp), %r15d
	testl	%r15d, %r15d
	jmp	.L15395
.L9922:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L9923
.L9920:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r14d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15180
.L9902:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5976(%rsp)
	jmp	.L9882
.L9900:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6000(%rsp)
	jmp	.L9899
.L9880:
	movl	$1, %edx
	jmp	.L9879
.L9878:
	movl	$1, %ecx
	jmp	.L9877
.L9876:
	movl	$1, %ecx
	jmp	.L9875
.L9853:
	movq	1056(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1056(%rsp), %rbp
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L9849
.L15916:
	movzbl	2(%r8), %edx
	cmpb	$16, %dl
	je	.L9847
	movq	8(%r8), %rbp
	cmpw	$59, (%rbp)
	je	.L15921
.L9847:
	cmpl	$55, %eax
	jne	.L9850
	movq	1056(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	movq	1056(%rsp), %rsi
	movq	%rax, 8(%rsi)
	jmp	.L9849
.L15921:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r8)
	cmpq	$0, 16(%rbp)
	je	.L9849
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1056(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 1056(%rsp)
	jmp	.L9849
.L9846:
	movq	1056(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L9854
	movq	8(%rsi), %rbx
	movq	%rbx, 1056(%rsp)
	jmp	.L9849
.L9854:
	movq	1056(%rsp), %rdi
	movq	24(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L15922
.L15179:
	movq	%rsi, 1056(%rsp)
	jmp	.L9849
.L15922:
	movq	1056(%rsp), %r9
	movq	8(%r9), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	1056(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %rsi
	movq	%rax, 24(%r11)
	call	gen_move_insn
	movq	1056(%rsp), %r15
	movq	%rax, %rdi
	movq	16(%r15), %rsi
	call	emit_insn_before
	movq	24(%r15), %rsi
	jmp	.L15179
.L9843:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L9839
.L15915:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L9837
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15923
.L9837:
	cmpl	$55, %eax
	jne	.L9840
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L9839
.L15923:
	movq	8(%rbp), %r14
	movq	%r14, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L9839
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r15, 1064(%rsp)
	jmp	.L9839
.L9836:
	cmpq	$0, 16(%r12)
	jne	.L9844
	movq	8(%r12), %r11
	movq	%r11, 1064(%rsp)
	jmp	.L9839
.L9844:
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 1064(%rsp)
	jne	.L9839
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r9
	movq	%r9, 1064(%rsp)
	jmp	.L9839
.L9833:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L9829
.L15914:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L9829
.L9826:
	cmpq	$0, 16(%r13)
	jne	.L9834
	movq	8(%r13), %rsi
	movq	%rsi, 1072(%rsp)
	jmp	.L9829
.L9834:
	movq	24(%r13), %rbp
	testq	%rbp, %rbp
	movq	%rbp, 1072(%rsp)
	jne	.L9829
	movq	8(%r13), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rdi
	movq	%rdi, 1072(%rsp)
	jmp	.L9829
	.p2align 6,,7
.L9815:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L9811
.L15892:
	jne	.L9812
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L9811
.L9808:
	cmpq	$0, 16(%r13)
	jne	.L9816
	movq	8(%r13), %r13
	jmp	.L9811
.L9816:
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L9817
	movq	%rax, %r13
	jmp	.L9811
.L9817:
	movq	8(%r13), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L9811
.L15891:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3416(%rsp), %rdi
	movzbl	2(%r13), %edx
	movq	%rax, %rsi
	jmp	.L15178
.L9787:
	movl	(%r13), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15924
	movzbl	2(%r13), %edx
	movq	3416(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r13, %rsi
	call	expand_expr
	cmpw	$51, (%r13)
	movq	%rax, %r12
	je	.L15925
.L9805:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L9806
	cmpw	$46, %dx
	je	.L9806
	cmpw	$47, %dx
	je	.L9806
	cmpw	$49, %dx
	je	.L9806
	cmpw	$113, %dx
	jne	.L9752
	jmp	.L9806
.L15925:
	cmpl	$63, 8(%r13)
	jle	.L9752
	jmp	.L9805
.L15924:
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r13), %rdi
	movzbl	3(%r13), %edx
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L9751
.L9796:
	movl	$1, %ebx
	jmp	.L9790
.L9788:
	xorl	%ebx, %ebx
	jmp	.L9790
.L9794:
	movq	8(%r13), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L9796
	movq	16(%r13), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L9790
	jmp	.L9796
.L15890:
	movzbl	2(%r13), %eax
	cmpb	$16, %al
	je	.L9780
	movl	cse_not_expected(%rip), %ebx
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%ebx, %ebx
	cmove	%r13, %rsi
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L9806
	testb	%al, %al
	je	.L9806
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15359
	.p2align 6,,7
.L15889:
	cmpb	$16, 2(%r13)
	jne	.L9753
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.L9757
.L14489:
	movzwl	(%r13), %eax
	movq	%r13, %r12
	cmpl	$59, %eax
	je	.L9759
	cmpl	$55, %eax
	je	.L15926
.L9763:
	cmpl	$63, %eax
	je	.L9766
	cmpl	$66, %eax
	je	.L9766
.L9762:
	movq	3416(%rsp), %r13
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r13), %rdi
	call	jumpifnot
	movq	3416(%rsp), %rdx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	40(%rdx), %rdi
	xorl	%edx, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L9772
.L14491:
	movq	%r14, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	3416(%rsp), %rbp
	movq	%r12, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L9777
.L14493:
	movq	%r14, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L9751
.L9777:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L9777
	jmp	.L14493
.L9772:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L9772
	jmp	.L14491
.L9766:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L9762
.L15926:
	jne	.L9763
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L9762
	.p2align 6,,7
.L9759:
	cmpq	$0, 16(%r13)
	jne	.L9767
	movq	8(%r13), %r12
	jmp	.L9762
.L9767:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.L9768
	movq	%rdi, %r12
	jmp	.L9762
.L9768:
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	%rax, 24(%r12)
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r12
	jmp	.L9762
	.p2align 6,,7
.L9757:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r8
	movq	%rax, 16(%rbx)
	testq	%r8, %r8
	movq	%r8, pending_chain(%rip)
	movq	%r8, %rbx
	jne	.L9757
	jmp	.L14489
.L15888:
	movq	3416(%rsp), %rcx
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	32(%rcx), %rdi
	xorl	%ecx, %ecx
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L9749
.L14487:
	movq	3416(%rsp), %rax
	movq	%r13, %rsi
	xorl	%edx, %edx
	movq	40(%rax), %rdi
	xorl	%eax, %eax
	call	store_expr
	movq	%rax, %r12
	jmp	.L9751
.L9749:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L9749
	jmp	.L14487
.L15887:
	movq	3416(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$39, %al
	jne	.L9744
	movl	current_function_returns_struct(%rip), %r14d
	testl	%r14d, %r14d
	je	.L9744
	movl	current_function_returns_pcc_struct(%rip), %r12d
	testl	%r12d, %r12d
	jne	.L9744
	movq	%rdx, %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	3416(%rsp), %rdi
	movq	%rax, %r15
	xorl	%eax, %eax
	call	expr_size
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%eax, %eax
	movq	%rdi, (%rsp)
	movq	8(%r13), %r8
	movq	memcpy_libfunc(%rip), %rdi
	call	emit_library_call
	movq	%r13, %rdi
	jmp	.L15184
	.p2align 6,,7
.L15886:
	xorl	%edx, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movzbl	16(%r14), %edx
	movq	%rax, %r13
	jmp	.L9743
.L15885:
	movq	40(%r14), %r15
	cmpb	$25, 16(%r15)
	jne	.L9226
	movq	8(%r14), %r9
	movq	32(%r9), %r11
	cmpb	$25, 16(%r11)
	jne	.L9226
.L9227:
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	movl	$0, 5504(%rsp)
	cmpb	$37, %dl
	movq	%r14, %r12
	leaq	5520(%rsp), %r13
	leaq	5504(%rsp), %r15
	movl	$0, 964(%rsp)
	je	.L15927
	cmpb	$38, %dl
	je	.L15928
	movq	8(%r14), %r10
	movzbl	44(%r10), %r8d
	movl	%r8d, 964(%rsp)
	movslq	964(%rsp),%rdx
	movl	mode_size(,%rdx,4), %eax
	sall	$3, %eax
	movl	%eax, 5524(%rsp)
	movq	8(%r14), %r9
	movzbl	17(%r9), %r11d
	shrb	$6, %r11b
	movl	%r11d, %edi
	andl	$1, %edi
	movl	%edi, 3412(%rsp)
.L9230:
	testq	%rcx, %rcx
	je	.L9233
	cmpb	$25, 16(%rcx)
	je	.L9234
	movl	$16, 964(%rsp)
	movl	$-1, 5524(%rsp)
.L9233:
	movl	$0, (%r13)
	.p2align 4,,7
.L9261:
	movzbl	16(%r12), %edx
	cmpb	$39, %dl
	je	.L15929
.L9239:
	leal	-37(%rdx), %ecx
	cmpb	$1, %cl
	ja	.L9240
	cmpb	$37, %dl
	je	.L15930
	movq	48(%r12), %rbx
.L9242:
	movzbl	16(%rbx), %eax
	cmpb	$53, %al
	je	.L15931
	cmpb	$25, %al
	je	.L15932
.L9251:
	testq	%rbp, %rbp
	je	.L9253
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rbp, %rsi
	movl	$53, %edi
.L15169:
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, %rbp
.L9255:
	testb	$16, 17(%r12)
	je	.L9260
	movl	$1, (%r15)
.L9260:
	movq	32(%r12), %r12
	jmp	.L9261
	.p2align 6,,7
.L9253:
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	jmp	.L15169
.L15932:
	movl	24(%rbx), %eax
.L15170:
	addl	%eax, (%r13)
	jmp	.L9255
	.p2align 6,,7
.L15931:
	movq	32(%rbx), %rsi
	cmpb	$25, 16(%rsi)
	je	.L15933
	movq	40(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L15283
	movq	%rsi, %rbx
.L9245:
	movl	24(%rax), %eax
	addl	%eax, (%r13)
	jmp	.L9251
.L15933:
	movq	40(%rbx), %rbx
	movq	%rsi, %rax
	jmp	.L9245
	.p2align 6,,7
.L15930:
	movq	40(%r12), %rsi
	movq	72(%rsi), %rbx
	jmp	.L9242
	.p2align 6,,7
.L9240:
	cmpb	$42, %dl
	je	.L15934
.L9256:
	cmpb	$103, %dl
	je	.L9255
	leal	-101(%rdx), %edi
	cmpb	$1, %dil
	ja	.L9237
	movq	32(%r12), %r8
	movq	8(%r12), %r9
	movq	8(%r8), %rdx
	movzbl	44(%rdx), %r11d
	cmpb	%r11b, 44(%r9)
	je	.L9255
.L9237:
	movl	964(%rsp), %eax
	testl	%eax, %eax
	jne	.L9262
	movl	(%r13), %eax
	movl	5524(%rsp), %edi
	cltd
	idivl	%edi
	testl	%edx, %edx
	movl	%edx, %ebx
	je	.L15935
.L9262:
	movl	964(%rsp), %eax
	movq	%rbp, 5512(%rsp)
	testl	%eax, %eax
	movl	%eax, 5508(%rsp)
	jne	.L9265
	xorl	%ebp, %ebp
	testl	%ebp, %ebp
	jne	.L15936
.L9265:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	5512(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	jne	.L15937
.L9266:
	movl	5504(%rsp), %eax
	testl	%eax, %eax
	je	.L9268
	cmpw	$55, (%rbx)
	je	.L15938
.L9268:
	xorl	%r10d, %r10d
	movl	5524(%rsp), %ebp
	movl	5520(%rsp), %r15d
	testl	%r10d, %r10d
	movl	5508(%rsp), %r13d
	je	.L9270
	movq	8(%r14), %rcx
	movzbl	44(%rcx), %r14d
	movl	%r14d, 960(%rsp)
.L9271:
	movq	8(%r12), %rdi
	movl	48(%rdi), %r12d
	call	int_size_in_bytes
	movl	$0, 956(%rsp)
	movl	%eax, 3408(%rsp)
	shrl	$3, %r12d
	cmpl	$31, %ebp
	jg	.L9272
	movl	$1, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 956(%rsp)
.L9272:
	cmpl	$16, %r13d
	je	.L15939
.L9273:
	testl	%r13d, %r13d
	je	.L9278
	cmpl	$16, %r13d
	je	.L9279
	movslq	%r13d,%rdi
	cmpb	$0, direct_store(%rdi)
	je	.L9278
.L9279:
	movzwl	(%rbx), %eax
	cmpw	$51, %ax
	je	.L9278
	cmpw	$53, %ax
	je	.L9278
	movl	960(%rsp), %r8d
	movq	8(%rbx), %rdi
	testl	%r8d, %r8d
	je	.L9285
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L9285
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9285
	cmpw	$46, %dx
	je	.L9285
	cmpw	$47, %dx
	je	.L9285
	cmpw	$49, %dx
	je	.L9285
	cmpw	$113, %dx
	je	.L9285
	cmpw	$63, %dx
	je	.L15940
.L9286:
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, %rdi
.L9285:
	cmpl	$-1, %r15d
	leal	7(%r15), %esi
	cmovle	%esi, %r15d
	sarl	$3, %r15d
	movl	%r15d, %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	orb	$16, 3(%rax)
	movq	%rax, %r14
	movl	$0, 952(%rsp)
	movl	960(%rsp), %eax
	movq	3416(%rsp), %rdx
	testl	%eax, %eax
	movzbl	16(%rdx), %eax
	setne	%cl
	cmpb	$44, %al
	movzbl	%cl, %ebp
	je	.L15941
	cmpb	$48, %al
	je	.L15942
.L9297:
	testl	%ebp, %ebp
	je	.L9324
	cmpw	$55, (%r14)
	je	.L15943
.L9324:
	movzwl	(%r14), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L9332
	mov	%eax, %ebx
	jmp	*.L9341(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L9341:
	.quad	.L9335
	.quad	.L9332
	.quad	.L9332
	.quad	.L9332
	.quad	.L9340
	.quad	.L9332
	.quad	.L9332
	.quad	.L9332
	.quad	.L9338
	.quad	.L9338
	.quad	.L9332
	.quad	.L9338
	.text
.L9335:
	movq	8(%r14), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L9334:
	testl	%ebx, %ebx
	je	.L9331
	movzbl	2(%r14), %eax
	cmpb	$16, %al
	je	.L9343
	testb	%al, %al
	jne	.L15944
.L9343:
	movzbl	2(%r14), %edx
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
.L15171:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15358:
	movq	%rax, %r12
.L9350:
	movl	$1, 952(%rsp)
.L9296:
	cmpq	%r14, %r12
	je	.L9351
	movq	3416(%rsp), %r10
	cmpb	$0, 16(%r10)
	je	.L9351
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L9352
	cmpl	$55, %eax
	je	.L15945
.L9356:
	cmpl	$63, %eax
	je	.L9359
	cmpl	$66, %eax
	je	.L9359
.L9355:
	movzbl	2(%r12), %eax
	movzbl	2(%r14), %ecx
	cmpb	%cl, %al
	je	.L9362
	testb	%al, %al
	je	.L9362
	movq	3416(%rsp), %rdi
	movl	952(%rsp), %eax
	movq	8(%rdi), %r11
	movzbl	17(%r11), %esi
	shrb	$6, %sil
	movl	%esi, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L9363
	movq	%r12, %rsi
	movzbl	%cl, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r12
.L9618:
	movq	%r14, %rdi
	movq	%r12, %rsi
	call	emit_move_insn
.L9351:
	movl	952(%rsp), %ebx
	testl	%ebx, %ebx
	cmove	%r14, %r12
.L9295:
	movq	%r12, %rbx
.L9276:
	movq	%rbx, %rdi
	jmp	.L15184
.L9363:
	movq	%r14, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L9351
.L9362:
	cmpb	$16, %al
	jne	.L9618
	movq	3416(%rsp), %rdx
	cmpb	$28, 16(%rdx)
	je	.L15946
	cmpb	$16, %al
	jne	.L9618
	movq	3416(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 856(%rsp)
	call	expr_size
	movq	3416(%rsp), %rsi
	movq	%rax, %r13
	movq	8(%rsi), %r9
	movl	48(%r9), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r14)
	movl	%eax, 852(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r14, 864(%rsp)
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L9621
	cmpl	$55, %eax
	je	.L15947
	cmpl	$63, %eax
	je	.L9628
	cmpl	$66, %eax
	je	.L9628
.L9624:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L9631
	cmpl	$55, %eax
	je	.L15948
.L9635:
	cmpl	$63, %eax
	je	.L9638
	cmpl	$66, %eax
	je	.L9638
.L9634:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L9641
	cmpl	$55, %eax
	je	.L15949
.L9645:
	cmpl	$63, %eax
	je	.L9648
	cmpl	$66, %eax
	je	.L9648
.L9644:
	movq	864(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	856(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L15950
.L9654:
	movl	852(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3320(%rsp)
	testl	%ebp, %ebp
	je	.L14485
.L9740:
	movslq	%ebp,%rax
	movq	%rax, 3312(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L9728
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L9732
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L9728
.L9732:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r15
	movq	%r10, 3304(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15951
.L9733:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L15952
.L9734:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L9735
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3320(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L9728
.L9735:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 3296(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15953
.L9736:
	movq	3304(%rsp), %rbp
	movq	864(%rsp), %rdi
	xorl	%eax, %eax
	movq	856(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3320(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14969
	movq	3296(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L9728:
	movq	3312(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L9740
.L14485:
	movq	%r13, %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	856(%rsp), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rsi), %r13
	xorl	%esi, %esi
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	864(%rsp), %rax
	movq	%r13, (%rsp)
.L15176:
	movq	8(%rax), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L9351
.L14969:
	call	emit_insn
	jmp	.L9351
.L15953:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L9736
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L9736
.L15952:
	xorl	%eax, %eax
	movq	856(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9728
	jmp	.L9734
.L15951:
	xorl	%eax, %eax
	movq	864(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9728
	jmp	.L9733
.L15950:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 852(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	852(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L9668:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14476
.L9664:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L9664
.L14476:
	testl	%ecx, %ecx
	je	.L9657
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9666
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L9666
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L9666:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9668
.L9657:
	decl	%r9d
	jg	.L9654
	movq	856(%rsp), %rcx
	movq	864(%rsp), %rbp
	movl	%r10d, %r13d
	movl	$9, %r15d
	movq	8(%rbp), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 5992(%rsp)
	movl	$0, 6020(%rsp)
	movq	%rbp, 5968(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 5976(%rsp)
	movq	%rdi, 6000(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L9671
	cmpw	$88, %dx
	je	.L9671
	cmpw	$87, %dx
	je	.L9671
.L9670:
	movl	%ecx, 5984(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L9673
	cmpw	$88, %dx
	je	.L9673
	cmpw	$87, %dx
	je	.L9673
.L9672:
	movl	%ecx, 6008(%rsp)
	movl	$0, 6012(%rsp)
	movl	$0, 5988(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L9675
	cmpw	$87, %ax
	je	.L9675
.L9674:
	testl	%edx, %edx
	movl	%edx, 6024(%rsp)
	je	.L9676
	movl	%r10d, 6020(%rsp)
.L9676:
	movl	6008(%rsp), %eax
	movl	%r10d, 6016(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L9678
	movl	5984(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L9677
.L9678:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 852(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	852(%rsp), %ebp
.L9692:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14479
.L9688:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L9688
.L14479:
	testl	%ecx, %ecx
	je	.L9681
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9690
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L9690
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L9690:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9692
.L9681:
	cmpl	$2, %r9d
	jle	.L9677
	testl	%r10d, %r10d
	jne	.L9694
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9695
	cmpw	$46, %dx
	je	.L9695
	cmpw	$47, %dx
	je	.L9695
	cmpw	$49, %dx
	je	.L9695
	cmpw	$113, %dx
	je	.L9695
.L9694:
	movl	5984(%rsp), %esi
	testl	%esi, %esi
	jne	.L9677
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L9697
	cmpw	$46, %dx
	je	.L9697
	cmpw	$47, %dx
	je	.L9697
	cmpw	$49, %dx
	je	.L9697
	cmpw	$113, %dx
	je	.L9697
.L9677:
	cmpl	$8, 852(%rsp)
	movl	$8, %eax
	cmovl	852(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 852(%rsp)
	jle	.L9700
.L9722:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14482
.L9707:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L9707
.L14482:
	testl	%r13d, %r13d
	je	.L9700
	movslq	%r13d,%r15
	movq	%r15, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L9709
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 852(%rsp)
	jl	.L9709
	movslq	%edx,%r9
	cmpl	%ebp, 6016(%rsp)
	leaq	5968(%rsp), %rbx
	movq	insn_gen_function(,%r9,8), %rcx
	movq	%rcx, 3328(%rsp)
	jl	.L9709
	movl	6024(%rsp), %edx
.L9720:
	testl	%edx, %edx
	je	.L9714
	subl	%ebp, 52(%rbx)
.L9714:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L9715
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15175:
	movl	40(%rbx), %r8d
	movq	%rax, 840(%rsp)
	testl	%r8d, %r8d
	je	.L9717
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L9718:
	movq	%rax, %rsi
	movq	840(%rsp), %rdi
	xorl	%eax, %eax
	call	*3328(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L9719
	addl	%ebp, 52(%rbx)
.L9719:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L9720
.L9709:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L9722
.L9700:
	movl	6016(%rsp), %r15d
	testl	%r15d, %r15d
.L15394:
	je	.L9351
	jmp	.L15283
.L9717:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L9718
.L9715:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15175
.L9697:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5976(%rsp)
	jmp	.L9677
.L9695:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6000(%rsp)
	jmp	.L9694
.L9675:
	movl	$1, %edx
	jmp	.L9674
.L9673:
	movl	$1, %ecx
	jmp	.L9672
.L9671:
	movl	$1, %ecx
	jmp	.L9670
.L9648:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L9644
.L15949:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L9642
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15954
.L9642:
	cmpl	$55, %eax
	jne	.L9645
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L9644
.L15954:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L9644
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	%r15, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L9644
.L9641:
	cmpq	$0, 16(%r13)
	jne	.L9649
	movq	8(%r13), %r13
	jmp	.L9644
.L9649:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L9650
	movq	%rsi, %r13
	jmp	.L9644
.L9650:
	movq	8(%r13), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L9644
.L9638:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L9634
.L15948:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L9632
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15955
.L9632:
	cmpl	$55, %eax
	jne	.L9635
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L9634
.L15955:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L9634
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r15, 856(%rsp)
	jmp	.L9634
.L9631:
	cmpq	$0, 16(%r12)
	jne	.L9639
	movq	8(%r12), %rbp
	movq	%rbp, 856(%rsp)
	jmp	.L9634
.L9639:
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 856(%rsp)
	jne	.L9634
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rbx
	movq	%rbx, 856(%rsp)
	jmp	.L9634
.L9628:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L9624
.L15947:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L9624
.L9621:
	cmpq	$0, 16(%r14)
	jne	.L9629
	movq	8(%r14), %r8
	movq	%r8, 864(%rsp)
	jmp	.L9624
.L9629:
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 864(%rsp)
	jne	.L9624
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rcx
	movq	%rcx, 864(%rsp)
	jmp	.L9624
.L15946:
	xorl	%eax, %eax
	movq	%rdx, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 928(%rsp)
	je	.L15956
.L9367:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	3416(%rsp), %rsi
	movq	%rax, %rdx
	movq	8(%rsi), %r9
	movq	32(%r9), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3416(%rsp), %rbx
	movq	%rax, %rbp
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%rbp, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	$0, 872(%rsp)
	movq	%rax, 896(%rsp)
	movq	%rax, %r15
	movq	3416(%rsp), %rax
	movq	8(%rax), %r10
	movl	48(%r10), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r14)
	movl	%eax, 892(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r14, 904(%rsp)
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L9493
	cmpl	$55, %eax
	je	.L15957
	cmpl	$63, %eax
	je	.L9500
	cmpl	$66, %eax
	je	.L9500
.L9496:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L9503
	cmpl	$55, %eax
	je	.L15958
.L9507:
	cmpl	$63, %eax
	je	.L9510
	cmpl	$66, %eax
	je	.L9510
.L9506:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L9513
	cmpl	$55, %eax
	je	.L15959
.L9517:
	cmpl	$63, %eax
	je	.L9520
	cmpl	$66, %eax
	je	.L9520
.L9516:
	movq	904(%rsp), %rsi
	cmpw	$55, (%rsi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 896(%rsp)
	je	.L15283
	movq	896(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L15960
.L9526:
	movl	892(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3360(%rsp)
	testl	%ebp, %ebp
	je	.L14473
.L9612:
	movslq	%ebp,%r11
	movq	%r11, %rax
	movq	%r11, 3352(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L9600
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L9604
	movq	896(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L9600
.L9604:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 3344(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15961
.L9605:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15962
.L9606:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L9607
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3360(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L9600
.L9607:
	call	get_last_insn
	movl	$1, %edx
	movq	896(%rsp), %rsi
	movq	%rax, 3336(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15963
.L9608:
	movq	3344(%rsp), %rbp
	movq	904(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3360(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14968
	movq	3336(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L9600:
	movq	3352(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L9612
.L14473:
	movq	896(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rbx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	904(%rsp), %r12
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rbx, (%rsp)
	movq	8(%r12), %r8
	call	emit_library_call
.L9610:
	cmpw	$46, (%r15)
	je	.L15964
	movq	8(%r14), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	928(%rsp), %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 872(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L9614:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L9615
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L9615:
	cmpq	$0, 872(%rsp)
	je	.L9351
	movq	872(%rsp), %rdi
	call	emit_label
	jmp	.L9351
.L15964:
	movq	3416(%rsp), %rax
	movq	8(%r14), %rdi
	movl	32(%rax), %esi
	call	plus_constant_wide
	movq	928(%rsp), %rdi
	movq	3416(%rsp), %r15
	movq	%rax, %r12
	movl	32(%r15), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L9614
.L14968:
	call	emit_insn
	jmp	.L9610
.L15963:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L9608
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L9608
.L15962:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9600
	jmp	.L9606
.L15961:
	xorl	%eax, %eax
	movq	904(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9600
	jmp	.L9605
.L15960:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 892(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	892(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L9540:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14464
.L9536:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L9536
.L14464:
	testl	%ecx, %ecx
	je	.L9529
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L9538
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L9538
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L9538:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9540
.L9529:
	decl	%r9d
	jg	.L9526
	movq	904(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 5992(%rsp)
	movq	%rcx, 5968(%rsp)
	movl	$0, 6020(%rsp)
	movq	%rdi, 6000(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 888(%rsp)
	movq	%rbx, 5976(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L9543
	cmpw	$88, %dx
	je	.L9543
	cmpw	$87, %dx
	je	.L9543
.L9542:
	movl	%ecx, 5984(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L9545
	cmpw	$88, %dx
	je	.L9545
	cmpw	$87, %dx
	je	.L9545
.L9544:
	movl	%ecx, 6008(%rsp)
	movl	$0, 6012(%rsp)
	movl	$0, 5988(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L9547
	cmpw	$87, %ax
	je	.L9547
.L9546:
	testl	%edx, %edx
	movl	%edx, 6024(%rsp)
	je	.L9548
	movl	%r10d, 6020(%rsp)
.L9548:
	movl	6008(%rsp), %eax
	movl	%r10d, 6016(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L9550
	movl	5984(%rsp), %eax
	testl	%eax, %eax
	jne	.L9549
.L9550:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 892(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	892(%rsp), %ebp
.L9564:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14467
.L9560:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L9560
.L14467:
	testl	%ecx, %ecx
	je	.L9553
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9562
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L9562
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L9562:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9564
.L9553:
	cmpl	$2, %r9d
	jle	.L9549
	testl	%r10d, %r10d
	jne	.L9566
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9567
	cmpw	$46, %dx
	je	.L9567
	cmpw	$47, %dx
	je	.L9567
	cmpw	$49, %dx
	je	.L9567
	cmpw	$113, %dx
	je	.L9567
.L9566:
	movl	5984(%rsp), %eax
	testl	%eax, %eax
	jne	.L9549
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L9569
	cmpw	$46, %dx
	je	.L9569
	cmpw	$47, %dx
	je	.L9569
	cmpw	$49, %dx
	je	.L9569
	cmpw	$113, %dx
	je	.L9569
.L9549:
	cmpl	$8, 892(%rsp)
	movl	$8, %eax
	cmovl	892(%rsp), %eax
	cmpl	$1, 888(%rsp)
	movl	%eax, 892(%rsp)
	jle	.L9572
.L9594:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14470
.L9579:
	movslq	%edx,%rbx
	movl	888(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L9579
.L14470:
	testl	%r12d, %r12d
	je	.L9572
	movslq	%r12d,%r13
	movq	%r13, %r9
	salq	$4, %r9
	addq	mov_optab(%rip), %r9
	movl	8(%r9), %edx
	cmpl	$210, %edx
	je	.L9581
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 892(%rsp)
	jl	.L9581
	movslq	%edx,%r8
	cmpl	%ebp, 6016(%rsp)
	leaq	5968(%rsp), %rbx
	movq	insn_gen_function(,%r8,8), %rsi
	movq	%rsi, 3368(%rsp)
	jl	.L9581
	movl	6024(%rsp), %edx
.L9592:
	testl	%edx, %edx
	je	.L9586
	subl	%ebp, 52(%rbx)
.L9586:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L9587
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15174:
	movq	%rax, 880(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L9589
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L9590:
	movq	%rax, %rsi
	movq	880(%rsp), %rdi
	xorl	%eax, %eax
	call	*3368(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L9591
	addl	%ebp, 52(%rbx)
.L9591:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L9592
.L9581:
	movl	mode_size(,%r13,4), %edi
	movl	%edi, 888(%rsp)
	decl	%edi
	jg	.L9594
.L9572:
	movl	6016(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L9610
	jmp	.L15283
.L9589:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L9590
.L9587:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15174
.L9569:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 5976(%rsp)
	jmp	.L9549
.L9567:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6000(%rsp)
	jmp	.L9566
.L9547:
	movl	$1, %edx
	jmp	.L9546
.L9545:
	movl	$1, %ecx
	jmp	.L9544
.L9543:
	movl	$1, %ecx
	jmp	.L9542
.L9520:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L9516
.L15959:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L9514
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L15965
.L9514:
	cmpl	$55, %eax
	jne	.L9517
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L9516
.L15965:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L9516
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 896(%rsp)
	jmp	.L9516
.L9513:
	cmpq	$0, 16(%r15)
	jne	.L9521
	movq	8(%r15), %rax
	movq	%rax, 896(%rsp)
	jmp	.L9516
.L9521:
	movq	24(%r15), %rbp
	testq	%rbp, %rbp
	movq	%rbp, 896(%rsp)
	jne	.L9516
	movq	8(%r15), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rbx
	movq	%rbx, 896(%rsp)
	jmp	.L9516
.L9510:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L9506
.L15958:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L9504
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15966
.L9504:
	cmpl	$55, %eax
	jne	.L9507
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L9506
.L15966:
	movq	8(%rbp), %r13
	movq	%r13, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L9506
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L9506
.L9503:
	cmpq	$0, 16(%r12)
	jne	.L9511
	movq	8(%r12), %r12
	jmp	.L9506
.L9511:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L9512
	movq	%rax, %r12
	jmp	.L9506
.L9512:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L9506
.L9500:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L9496
.L15957:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L9496
.L9493:
	cmpq	$0, 16(%r14)
	jne	.L9501
	movq	8(%r14), %rdi
	movq	%rdi, 904(%rsp)
	jmp	.L9496
.L9501:
	movq	24(%r14), %r8
	testq	%r8, %r8
	movq	%r8, 904(%rsp)
	jne	.L9496
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rcx
	movq	%rcx, 904(%rsp)
	jmp	.L9496
.L15956:
	movq	3416(%rsp), %rcx
	movq	928(%rsp), %r9
	movl	32(%rcx), %eax
	cmpl	%eax, 8(%r9)
	jge	.L9367
	movq	%r12, 936(%rsp)
	movq	8(%rcx), %rdx
	movl	48(%rdx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r14)
	movl	%eax, 924(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r14, 944(%rsp)
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L9370
	cmpl	$55, %eax
	je	.L15967
	cmpl	$63, %eax
	je	.L9377
	cmpl	$66, %eax
	je	.L9377
.L9373:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L9380
	cmpl	$55, %eax
	je	.L15968
.L9384:
	cmpl	$63, %eax
	je	.L9387
	cmpl	$66, %eax
	je	.L9387
.L9383:
	movq	928(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L9390
	cmpl	$55, %eax
	je	.L15969
.L9394:
	cmpl	$63, %eax
	je	.L9397
	cmpl	$66, %eax
	je	.L9397
.L9393:
	movq	944(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	movq	936(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpq	$0, 928(%rsp)
	je	.L15283
	movq	928(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15970
.L9403:
	movl	924(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3392(%rsp)
	testl	%ebp, %ebp
	je	.L14461
.L9489:
	movslq	%ebp,%rax
	movq	%rax, 3384(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L9477
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L9481
	movq	928(%rsp), %r15
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r15)
	ja	.L9477
.L9481:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15971
.L9482:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15972
.L9483:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L9484
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3392(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L9477
.L9484:
	call	get_last_insn
	movl	$1, %edx
	movq	928(%rsp), %rsi
	movq	%rax, 3376(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15973
.L9485:
	movq	944(%rsp), %rdi
	xorl	%eax, %eax
	movq	936(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3392(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14969
	movq	3376(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L9477:
	movq	3384(%rsp), %r11
	movl	mode_wider_mode(,%r11,4), %ebp
	testl	%ebp, %ebp
	jne	.L9489
.L14461:
	movq	928(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%esi, %esi
	movq	936(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rdx), %r13
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	944(%rsp), %rax
	movq	%r13, (%rsp)
	jmp	.L15176
.L15973:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L9485
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L9485
.L15972:
	xorl	%eax, %eax
	movq	936(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9477
	jmp	.L9483
.L15971:
	xorl	%eax, %eax
	movq	944(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9477
	jmp	.L9482
.L15970:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 924(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	924(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L9417:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14452
.L9413:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L9413
.L14452:
	testl	%ecx, %ecx
	je	.L9406
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9415
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L9415
	movl	%edi, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %edi
.L9415:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9417
.L9406:
	decl	%r9d
	jg	.L9403
	movq	944(%rsp), %rcx
	movq	936(%rsp), %r8
	movl	%r10d, %r13d
	movl	$9, %r15d
	movq	8(%rcx), %rbx
	movq	8(%r8), %rdi
	movq	%r8, 6056(%rsp)
	movq	%rcx, 6032(%rsp)
	movl	$0, 6084(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 6040(%rsp)
	movq	%rdi, 6064(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L9420
	cmpw	$88, %dx
	je	.L9420
	cmpw	$87, %dx
	je	.L9420
.L9419:
	movl	%ecx, 6048(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L9422
	cmpw	$88, %dx
	je	.L9422
	cmpw	$87, %dx
	je	.L9422
.L9421:
	movl	%ecx, 6072(%rsp)
	movl	$0, 6076(%rsp)
	movl	$0, 6052(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L9424
	cmpw	$87, %ax
	je	.L9424
.L9423:
	testl	%edx, %edx
	movl	%edx, 6088(%rsp)
	je	.L9425
	movl	%r10d, 6084(%rsp)
.L9425:
	movl	6072(%rsp), %eax
	movl	%r10d, 6080(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L9427
	movl	6048(%rsp), %eax
	testl	%eax, %eax
	jne	.L9426
.L9427:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 924(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	924(%rsp), %ebp
.L9441:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14455
.L9437:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L9437
.L14455:
	testl	%ecx, %ecx
	je	.L9430
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9439
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L9439
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L9439:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9441
.L9430:
	cmpl	$2, %r9d
	jle	.L9426
	testl	%r10d, %r10d
	jne	.L9443
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9444
	cmpw	$46, %dx
	je	.L9444
	cmpw	$47, %dx
	je	.L9444
	cmpw	$49, %dx
	je	.L9444
	cmpw	$113, %dx
	je	.L9444
.L9443:
	movl	6048(%rsp), %esi
	testl	%esi, %esi
	jne	.L9426
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L9446
	cmpw	$46, %dx
	je	.L9446
	cmpw	$47, %dx
	je	.L9446
	cmpw	$49, %dx
	je	.L9446
	cmpw	$113, %dx
	je	.L9446
.L9426:
	cmpl	$8, 924(%rsp)
	movl	$8, %eax
	cmovl	924(%rsp), %eax
	cmpl	$1, %r15d
	movl	%eax, 924(%rsp)
	jle	.L9449
.L9471:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14458
.L9456:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r15d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L9456
.L14458:
	testl	%r13d, %r13d
	je	.L9449
	movslq	%r13d,%r15
	movq	%r15, %rbp
	salq	$4, %rbp
	addq	mov_optab(%rip), %rbp
	movl	8(%rbp), %edx
	cmpl	$210, %edx
	je	.L9458
	movl	mode_size(,%r15,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 924(%rsp)
	jl	.L9458
	movslq	%edx,%r8
	cmpl	%ebp, 6080(%rsp)
	leaq	6032(%rsp), %rbx
	movq	insn_gen_function(,%r8,8), %r9
	movq	%r9, 3400(%rsp)
	jl	.L9458
	movl	6088(%rsp), %edx
.L9469:
	testl	%edx, %edx
	je	.L9463
	subl	%ebp, 52(%rbx)
.L9463:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L9464
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15173:
	movq	%rax, 912(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L9466
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L9467:
	movq	%rax, %rsi
	movq	912(%rsp), %rdi
	xorl	%eax, %eax
	call	*3400(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L9468
	addl	%ebp, 52(%rbx)
.L9468:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L9469
.L9458:
	movl	mode_size(,%r15,4), %r15d
	cmpl	$1, %r15d
	jg	.L9471
.L9449:
	movl	6080(%rsp), %eax
	testl	%eax, %eax
	jmp	.L15394
.L9466:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L9467
.L9464:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15173
.L9446:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6040(%rsp)
	jmp	.L9426
.L9444:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6064(%rsp)
	jmp	.L9443
.L9424:
	movl	$1, %edx
	jmp	.L9423
.L9422:
	movl	$1, %ecx
	jmp	.L9421
.L9420:
	movl	$1, %ecx
	jmp	.L9419
.L9397:
	movq	928(%rsp), %r15
	xorl	%esi, %esi
	movq	8(%r15), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	928(%rsp), %rdx
	movq	%rax, 8(%rdx)
	movq	928(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	928(%rsp), %r9
	movq	%rax, 16(%r9)
	jmp	.L9393
.L15969:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L9391
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L15974
.L9391:
	cmpl	$55, %eax
	jne	.L9394
	movq	928(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L9393
.L15974:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L9393
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	928(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15172:
	movq	%rbx, 928(%rsp)
	jmp	.L9393
.L9390:
	movq	928(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L9398
	movq	8(%rcx), %rbx
	jmp	.L15172
.L9398:
	movq	928(%rsp), %rbx
	movq	24(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L9399
	movq	%rsi, 928(%rsp)
	jmp	.L9393
.L9399:
	movq	928(%rsp), %r11
	movq	8(%r11), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	928(%rsp), %rcx
	movq	%rax, %rdi
	movq	8(%rcx), %rsi
	movq	%rax, 24(%rcx)
	call	gen_move_insn
	movq	928(%rsp), %r10
	movq	%rax, %rdi
	movq	16(%r10), %rsi
	call	emit_insn_before
	movq	928(%rsp), %r13
	movq	24(%r13), %r8
	movq	%r8, 928(%rsp)
	jmp	.L9393
.L9387:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L9383
.L15968:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L9381
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15975
.L9381:
	cmpl	$55, %eax
	jne	.L9384
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L9383
.L15975:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L9383
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 936(%rsp)
	jmp	.L9383
.L9380:
	cmpq	$0, 16(%r12)
	jne	.L9388
	movq	8(%r12), %r10
	movq	%r10, 936(%rsp)
	jmp	.L9383
.L9388:
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 936(%rsp)
	jne	.L9383
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rsi
	movq	%rsi, 936(%rsp)
	jmp	.L9383
.L9377:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L9373
.L15967:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L9373
.L9370:
	cmpq	$0, 16(%r14)
	jne	.L9378
	movq	8(%r14), %r13
	movq	%r13, 944(%rsp)
	jmp	.L9373
.L9378:
	movq	24(%r14), %rbp
	testq	%rbp, %rbp
	movq	%rbp, 944(%rsp)
	jne	.L9373
	movq	8(%r14), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r15
	movq	%r15, 944(%rsp)
	jmp	.L9373
	.p2align 6,,7
.L9359:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L9355
.L15945:
	jne	.L9356
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L9355
	.p2align 6,,7
.L9352:
	cmpq	$0, 16(%r14)
	jne	.L9360
	movq	8(%r14), %r14
	jmp	.L9355
.L9360:
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.L9361
	movq	%rax, %r14
	jmp	.L9355
.L9361:
	movq	8(%r14), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L9355
	.p2align 6,,7
.L15944:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3416(%rsp), %rdi
	movzbl	2(%r14), %edx
	movq	%rax, %rsi
	jmp	.L15171
.L9331:
	movl	(%r14), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L15976
	movzbl	2(%r14), %edx
	movq	3416(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r14, %rsi
	call	expand_expr
	cmpw	$51, (%r14)
	movq	%rax, %r12
	je	.L15977
.L9349:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L9350
	cmpw	$46, %dx
	je	.L9350
	cmpw	$47, %dx
	je	.L9350
	cmpw	$49, %dx
	je	.L9350
	cmpw	$113, %dx
	jne	.L9296
	jmp	.L9350
.L15977:
	cmpl	$63, 8(%r14)
	jle	.L9296
	jmp	.L9349
.L15976:
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r14), %rdi
	movzbl	3(%r14), %edx
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L9295
.L9340:
	movl	$1, %ebx
	jmp	.L9334
.L9332:
	xorl	%ebx, %ebx
	jmp	.L9334
.L9338:
	movq	8(%r14), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L9340
	movq	16(%r14), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L9334
	jmp	.L9340
.L15943:
	movzbl	2(%r14), %eax
	cmpb	$16, %al
	je	.L9324
	movl	cse_not_expected(%rip), %r15d
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r15d, %r15d
	cmove	%r14, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L9350
	testb	%al, %al
	je	.L9350
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15358
.L15942:
	cmpb	$16, 2(%r14)
	jne	.L9297
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r15
	testq	%rbx, %rbx
	jne	.L9301
.L14445:
	movzwl	(%r14), %eax
	movq	%r14, %r12
	cmpl	$59, %eax
	je	.L9303
	cmpl	$55, %eax
	je	.L15978
.L9307:
	cmpl	$63, %eax
	je	.L9310
	cmpl	$66, %eax
	je	.L9310
.L9306:
	movq	3416(%rsp), %r14
	xorl	%eax, %eax
	movq	%r13, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r14), %rdi
	call	jumpifnot
	movq	40(%r14), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	%ebp, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L9316
.L14447:
	movq	%r15, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	3416(%rsp), %r13
	movq	%r12, %rsi
	movq	48(%r13), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L9321
.L14449:
	movq	%r15, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L9295
.L9321:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rbp
	movq	%rax, 16(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, pending_chain(%rip)
	movq	%rbp, %rbx
	jne	.L9321
	jmp	.L14449
.L9316:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L9316
	jmp	.L14447
.L9310:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L9306
.L15978:
	jne	.L9307
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L9306
.L9303:
	cmpq	$0, 16(%r14)
	jne	.L9311
	movq	8(%r14), %r12
	jmp	.L9306
.L9311:
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.L9312
	movq	%rax, %r12
	jmp	.L9306
.L9312:
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%rax, 24(%r12)
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r12
	jmp	.L9306
	.p2align 6,,7
.L9301:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L9301
	jmp	.L14445
.L15941:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L9293
.L14443:
	movq	3416(%rsp), %r11
	movq	%r14, %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	movq	40(%r11), %rdi
	call	store_expr
	movq	%rax, %r12
	jmp	.L9295
.L9293:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r12
	movq	%rax, 16(%rbx)
	testq	%r12, %r12
	movq	%r12, pending_chain(%rip)
	movq	%r12, %rbx
	jne	.L9293
	jmp	.L14443
.L15940:
	movq	16(%rdi), %r14
	cmpw	$46, (%r14)
	jne	.L9286
	movq	8(%rdi), %rax
	cmpq	virtual_incoming_args_rtx(%rip), %rax
	je	.L9285
	cmpq	virtual_stack_vars_rtx(%rip), %rax
	jne	.L9286
	jmp	.L9285
	.p2align 6,,7
.L9278:
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	%r12d, %r9d
	movl	%r13d, %ecx
	movl	3408(%rsp), %r11d
	movq	%rax, %r8
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	xorl	%eax, %eax
	movl	%r11d, (%rsp)
	call	store_bit_field
	movl	960(%rsp), %eax
	testl	%eax, %eax
	je	.L9280
	movl	956(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L9281
	movl	(%rbx), %eax
	andl	$134283263, %eax
	cmpl	$134217783, %eax
	je	.L9281
	movl	3412(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L9282
	movl	956(%rsp), %edx
	xorl	%esi, %esi
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	expand_and
.L15177:
	movq	%rax, %rbx
	jmp	.L9276
.L9282:
	movzbl	2(%r14), %r13d
	testl	%r13d, %r13d
	cmove	960(%rsp), %r13d
	xorl	%esi, %esi
	movslq	%r13d,%rbx
	movl	mode_size(,%rbx,4), %edi
	sall	$3, %edi
	subl	%ebp, %edi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rbp
	movl	%r13d, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	movl	$77, %edi
	xorl	%eax, %eax
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movl	$78, %edi
	movl	%r13d, %esi
	movq	%rbp, %rcx
	xorl	%eax, %eax
	call	expand_shift
	jmp	.L15177
.L9281:
	movl	3408(%rsp), %edx
	movl	3412(%rsp), %ecx
	movq	%rbx, %rdi
	movl	960(%rsp), %r9d
	movl	%ebp, %esi
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%edx, 16(%rsp)
	movl	%r15d, %edx
	call	extract_bit_field
	jmp	.L15177
.L9280:
	movq	const0_rtx(%rip), %rbx
	jmp	.L9276
.L15939:
	movzwl	(%rbx), %eax
	cmpw	$51, %ax
	je	.L9274
	cmpw	$53, %ax
	jne	.L9273
.L9274:
	movzbl	2(%rbx), %edi
	xorl	%edx, %edx
	movslq	%edi,%r13
	movl	mode_size(,%r13,4), %esi
	call	assign_stack_temp
	movq	%rax, %rdi
	movq	%rax, %r13
	call	copy_rtx
	movb	$16, 2(%rax)
	movq	%rax, %r14
	movzbq	2(%rbx), %rsi
	movl	mode_size(,%rsi,4), %eax
	sall	$3, %eax
	cmpl	%eax, %ebp
	je	.L9275
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	emit_move_insn
.L9275:
	movl	%r12d, 8(%rsp)
	movq	3416(%rsp), %r8
	movq	%r14, %rdi
	movl	3408(%rsp), %r12d
	movl	%ebp, %esi
	movl	%r15d, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 16(%rsp)
	call	store_field
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	emit_move_insn
	jmp	.L9276
.L9270:
	movl	$0, 960(%rsp)
	jmp	.L9271
.L15938:
	orb	$8, 3(%rbx)
	jmp	.L9268
.L15937:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	cmpw	$55, (%rbx)
	jne	.L15283
	movl	$4, %edi
	movq	%rax, %rsi
	call	force_reg
	movq	8(%rbx), %rdx
	movl	$4, %esi
	movq	%rax, %rcx
	movl	$63, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, %rbx
	jmp	.L9266
.L15936:
	movq	%r12, %rdi
	call	stabilize_reference
	movq	%rax, %r12
	jmp	.L9265
.L15935:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	mode_for_size
	cmpl	$16, %eax
	cmovne	%eax, %ebx
	movl	%ebx, 964(%rsp)
	jmp	.L9262
	.p2align 6,,7
.L15934:
	movq	40(%r12), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L9256
	movq	8(%r12), %rbx
	movq	32(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L9256
	movl	24(%rax), %eax
	imull	24(%rcx), %eax
	jmp	.L15170
	.p2align 6,,7
.L15929:
	movl	flag_volatile(%rip), %eax
	testl	%eax, %eax
	je	.L9239
	movl	$1, (%r15)
	movzbl	16(%r12), %edx
	jmp	.L9239
.L9234:
	movl	24(%rcx), %eax
	movl	%eax, 5524(%rsp)
	jmp	.L9233
.L15928:
	movzbl	17(%r14), %ebx
	movq	40(%r14), %rcx
	shrb	$6, %bl
	movl	%ebx, %esi
	andl	$1, %esi
	movl	%esi, 3412(%rsp)
	jmp	.L9230
.L15927:
	movq	40(%r14), %rax
	testb	$16, 53(%rax)
	movq	40(%rax), %rcx
	jne	.L9229
	movzbl	52(%rax), %edx
	movl	%edx, 964(%rsp)
.L9229:
	movzbl	17(%rax), %r10d
	shrb	$6, %r10b
	movl	%r10d, %r8d
	andl	$1, %r8d
	movl	%r8d, 3412(%rsp)
	jmp	.L9230
.L15884:
	movq	3416(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	jmp	.L9225
.L15883:
	movq	3664(%rsp), %rdi
	xorl	%ebp, %ebp
	call	stabilize_reference
	movq	3648(%rsp), %r10
	movq	%rax, %r12
	movq	128(%r10), %rbx
	testq	%rbx, %rbx
	je	.L14439
.L9219:
	movq	32(%rbx), %rcx
	cmpb	$3, 16(%rcx)
	je	.L15979
	movq	8(%rcx), %rsi
	movl	$37, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	call	build
	movq	%rbp, %rdx
	movq	24(%rbx), %rdi
	movq	%rax, %rsi
	call	tree_cons
.L15168:
	movq	(%rbx), %rbx
	movq	%rax, %rbp
	testq	%rbx, %rbx
	jne	.L9219
.L14439:
	movq	%rbp, 1088(%rsp)
	jmp	.L9209
.L15979:
	movq	%r12, %rdi
	movq	%rcx, %rsi
	xorl	%eax, %eax
	call	init_noncopied_parts
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	chainon
	jmp	.L15168
.L9211:
	movl	$1, %eax
	jmp	.L9212
.L8829:
	movq	56(%rsp), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L8817
.L8828:
	cmpb	$16, %al
	je	.L15980
.L9084:
	movq	56(%rsp), %rdi
	jmp	.L15166
.L15980:
	movq	3656(%rsp), %rdi
	cmpb	$28, 16(%rdi)
	je	.L15981
	cmpb	$16, %al
	jne	.L9084
	movq	3656(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 1224(%rsp)
	call	expr_size
	movq	56(%rsp), %r15
	movq	3656(%rsp), %rbp
	movq	%rax, %r13
	movq	8(%rbp), %r11
	movl	48(%r11), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1220(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	56(%rsp), %rsi
	movq	%rsi, 1232(%rsp)
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L9087
	cmpl	$55, %eax
	je	.L15982
	cmpl	$63, %eax
	je	.L9094
	cmpl	$66, %eax
	je	.L9094
.L9090:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L9097
	cmpl	$55, %eax
	je	.L15983
.L9101:
	cmpl	$63, %eax
	je	.L9104
	cmpl	$66, %eax
	je	.L9104
.L9100:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L9107
	cmpl	$55, %eax
	je	.L15984
.L9111:
	cmpl	$63, %eax
	je	.L9114
	cmpl	$66, %eax
	je	.L9114
.L9110:
	movq	1232(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	1224(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L15985
.L9120:
	movl	1220(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3440(%rsp)
	testl	%ebp, %ebp
	je	.L14437
.L9206:
	movslq	%ebp,%rax
	movq	%rax, 3432(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L9194
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L9198
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L9194
.L9198:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15986
.L9199:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L15987
.L9200:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L9201
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3440(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L9194
.L9201:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 3424(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15988
.L9202:
	movq	1232(%rsp), %rdi
	xorl	%eax, %eax
	movq	1224(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3440(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14966
	movq	3424(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L9194:
	movq	3432(%rsp), %r14
	movl	mode_wider_mode(,%r14,4), %ebp
	testl	%ebp, %ebp
	jne	.L9206
.L14437:
	movl	$4, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	1232(%rsp), %rbx
	movl	$3, %ecx
	movq	1224(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	8(%rdx), %rbp
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movl	$4, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rbp, (%rsp)
.L15165:
	movq	8(%rbx), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L8817
.L14966:
	call	emit_insn
	jmp	.L8817
.L15988:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L9202
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L9202
.L15987:
	xorl	%eax, %eax
	movq	1224(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9194
	jmp	.L9200
.L15986:
	xorl	%eax, %eax
	movq	1232(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9194
	jmp	.L9199
.L15985:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1220(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1220(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L9134:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14428
.L9130:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L9130
.L14428:
	testl	%ecx, %ecx
	je	.L9123
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L9132
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L9132
	movl	%edi, %eax
	movl	%edx, %r15d
	xorl	%edx, %edx
	divl	%r15d
	addl	%eax, %r9d
	movl	%edx, %edi
.L9132:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9134
.L9123:
	decl	%r9d
	jg	.L9120
	movq	1224(%rsp), %rcx
	movq	1232(%rsp), %rbp
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rbp), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 6184(%rsp)
	movl	$0, 6212(%rsp)
	movq	%rbp, 6160(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 6168(%rsp)
	movq	%rdi, 6192(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L9137
	cmpw	$88, %dx
	je	.L9137
	cmpw	$87, %dx
	je	.L9137
.L9136:
	movl	%ecx, 6176(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L9139
	cmpw	$88, %dx
	je	.L9139
	cmpw	$87, %dx
	je	.L9139
.L9138:
	movl	%ecx, 6200(%rsp)
	movl	$0, 6204(%rsp)
	movl	$0, 6180(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L9141
	cmpw	$87, %ax
	je	.L9141
.L9140:
	testl	%edx, %edx
	movl	%edx, 6216(%rsp)
	je	.L9142
	movl	%r10d, 6212(%rsp)
.L9142:
	movl	%r10d, 6208(%rsp)
	movl	6200(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L9144
	movl	6176(%rsp), %edx
	testl	%edx, %edx
	jne	.L9143
.L9144:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1220(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r15d
	cmovl	1220(%rsp), %ebp
.L9158:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14431
.L9154:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L9154
.L14431:
	testl	%ecx, %ecx
	je	.L9147
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L9156
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r15d, %eax
	cmpl	%eax, %ebp
	jl	.L9156
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L9156:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9158
.L9147:
	cmpl	$2, %r9d
	jle	.L9143
	testl	%r10d, %r10d
	jne	.L9160
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9161
	cmpw	$46, %dx
	je	.L9161
	cmpw	$47, %dx
	je	.L9161
	cmpw	$49, %dx
	je	.L9161
	cmpw	$113, %dx
	je	.L9161
.L9160:
	movl	6176(%rsp), %eax
	testl	%eax, %eax
	jne	.L9143
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L9163
	cmpw	$46, %dx
	je	.L9163
	cmpw	$47, %dx
	je	.L9163
	cmpw	$49, %dx
	je	.L9163
	cmpw	$113, %dx
	je	.L9163
.L9143:
	cmpl	$8, 1220(%rsp)
	movl	$8, %eax
	cmovl	1220(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1220(%rsp)
	jle	.L9166
.L9188:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14434
.L9173:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L9173
.L14434:
	testl	%r13d, %r13d
	je	.L9166
	movslq	%r13d,%r14
	movq	%r14, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L9175
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1220(%rsp)
	jl	.L9175
	movslq	%edx,%r11
	cmpl	%ebp, 6208(%rsp)
	leaq	6160(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %r15
	movq	%r15, 3448(%rsp)
	jl	.L9175
	movl	6216(%rsp), %edx
.L9186:
	testl	%edx, %edx
	je	.L9180
	subl	%ebp, 52(%rbx)
.L9180:
	movl	16(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L9181
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15164:
	movl	40(%rbx), %ecx
	movq	%rax, %r15
	testl	%ecx, %ecx
	je	.L9183
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L9184:
	movq	%rax, %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*3448(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L9185
	addl	%ebp, 52(%rbx)
.L9185:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L9186
.L9175:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L9188
.L9166:
	movl	6208(%rsp), %eax
	testl	%eax, %eax
.L15393:
	je	.L8817
	jmp	.L15283
.L9183:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L9184
.L9181:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15164
.L9163:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6168(%rsp)
	jmp	.L9143
.L9161:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6192(%rsp)
	jmp	.L9160
.L9141:
	movl	$1, %edx
	jmp	.L9140
.L9139:
	movl	$1, %ecx
	jmp	.L9138
.L9137:
	movl	$1, %ecx
	jmp	.L9136
.L9114:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L9110
.L15984:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L9108
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L15989
.L9108:
	cmpl	$55, %eax
	jne	.L9111
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L9110
.L15989:
	movq	8(%rbp), %r14
	movq	%r14, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L9110
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	%r15, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L9110
.L9107:
	cmpq	$0, 16(%r13)
	jne	.L9115
	movq	8(%r13), %r13
	jmp	.L9110
.L9115:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L9116
	movq	%rsi, %r13
	jmp	.L9110
.L9116:
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L9110
.L9104:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L9100
.L15983:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L9098
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L15990
.L9098:
	cmpl	$55, %eax
	jne	.L9101
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L9100
.L15990:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L9100
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15163:
	movq	%rbx, 1224(%rsp)
	jmp	.L9100
.L9097:
	cmpq	$0, 16(%r12)
	jne	.L9105
	movq	8(%r12), %rbx
	jmp	.L15163
.L9105:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 1224(%rsp)
	jne	.L9100
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r9
	movq	%r9, 1224(%rsp)
	jmp	.L9100
.L9094:
	movq	56(%rsp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %r9
	movq	16(%r9), %rdi
	movq	%rax, 8(%r9)
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L9090
.L15982:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r10
	movq	%rax, 8(%r10)
	jmp	.L9090
.L9087:
	movq	56(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L9095
	movq	8(%rbx), %rax
	movq	%rax, 1232(%rsp)
	jmp	.L9090
.L9095:
	movq	56(%rsp), %rdx
	movq	24(%rdx), %r14
	testq	%r14, %r14
	movq	%r14, 1232(%rsp)
	jne	.L9090
	movq	56(%rsp), %rbp
	movq	8(%rbp), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r15
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	16(%rcx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r8
	movq	24(%r8), %rdi
	movq	%rdi, 1232(%rsp)
	jmp	.L9090
.L15981:
	xorl	%eax, %eax
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, %r15
	je	.L15991
.L8833:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	3656(%rsp), %rbx
	movq	%rax, %rdx
	movq	8(%rbx), %rcx
	movq	32(%rcx), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3656(%rsp), %r10
	movq	%rax, %r13
	movl	32(%r10), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r13, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	3656(%rsp), %r8
	movq	$0, 1240(%rsp)
	movq	%rax, 1264(%rsp)
	movq	%rax, %r14
	movq	8(%r8), %r9
	movl	48(%r9), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%rdx)
	movl	%eax, 1260(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	56(%rsp), %rbx
	movq	%rbx, 1272(%rsp)
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L8959
	cmpl	$55, %eax
	je	.L15992
	cmpl	$63, %eax
	je	.L8966
	cmpl	$66, %eax
	je	.L8966
.L8962:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L8969
	cmpl	$55, %eax
	je	.L15993
.L8973:
	cmpl	$63, %eax
	je	.L8976
	cmpl	$66, %eax
	je	.L8976
.L8972:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L8979
	cmpl	$55, %eax
	je	.L15994
.L8983:
	cmpl	$63, %eax
	je	.L8986
	cmpl	$66, %eax
	je	.L8986
.L8982:
	movq	1272(%rsp), %r8
	cmpw	$55, (%r8)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1264(%rsp)
	je	.L15283
	movq	1264(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L15995
.L8992:
	movl	1260(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3480(%rsp)
	testl	%ebp, %ebp
	je	.L14425
.L9078:
	movslq	%ebp,%r13
	movq	%r13, %rax
	movq	%r13, 3472(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L9066
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L9070
	movq	1264(%rsp), %r10
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r10)
	ja	.L9066
.L9070:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %r13
	movq	%rsi, 3464(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15996
.L9071:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L15997
.L9072:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L9073
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3480(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L9066
.L9073:
	call	get_last_insn
	movl	$1, %edx
	movq	1264(%rsp), %rsi
	movq	%rax, 3456(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L15998
.L9074:
	movq	3464(%rsp), %r9
	movq	1272(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3480(%rsp), %rcx
	call	*insn_gen_function(,%r9,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14965
	movq	3456(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L9066:
	movq	3472(%rsp), %rbx
	movl	mode_wider_mode(,%rbx,4), %ebp
	testl	%ebp, %ebp
	jne	.L9078
.L14425:
	movq	1264(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movq	1272(%rsp), %rax
	movq	%rdi, (%rsp)
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rax), %r8
	xorl	%eax, %eax
	call	emit_library_call
.L9076:
	cmpw	$46, (%r14)
	je	.L15999
	movq	56(%rsp), %r8
	movl	$4, %edi
	movq	8(%r8), %rsi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movl	$4, %edi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1240(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L9080:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L9081
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L9081:
	cmpq	$0, 1240(%rsp)
	je	.L8817
	movq	1240(%rsp), %rdi
	call	emit_label
	jmp	.L8817
.L15999:
	movq	56(%rsp), %rcx
	movq	3656(%rsp), %rdx
	movq	8(%rcx), %rdi
	movl	32(%rdx), %esi
	call	plus_constant_wide
	movq	%r15, %rdi
	movq	3656(%rsp), %r14
	movq	%rax, %r12
	movl	32(%r14), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L9080
.L14965:
	call	emit_insn
	jmp	.L9076
.L15998:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L9074
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L9074
.L15997:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9066
	jmp	.L9072
.L15996:
	xorl	%eax, %eax
	movq	1272(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L9066
	jmp	.L9071
.L15995:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1260(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1260(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L9006:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14416
.L9002:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L9002
.L14416:
	testl	%ecx, %ecx
	je	.L8995
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L9004
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L9004
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L9004:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9006
.L8995:
	decl	%r9d
	jg	.L8992
	movq	1272(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 6184(%rsp)
	movq	%rcx, 6160(%rsp)
	movl	$0, 6212(%rsp)
	movq	%rdi, 6192(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 1256(%rsp)
	movq	%rbx, 6168(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L9009
	cmpw	$88, %dx
	je	.L9009
	cmpw	$87, %dx
	je	.L9009
.L9008:
	movl	%ecx, 6176(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L9011
	cmpw	$88, %dx
	je	.L9011
	cmpw	$87, %dx
	je	.L9011
.L9010:
	movl	%ecx, 6200(%rsp)
	movl	$0, 6204(%rsp)
	movl	$0, 6180(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L9013
	cmpw	$87, %ax
	je	.L9013
.L9012:
	testl	%edx, %edx
	movl	%edx, 6216(%rsp)
	je	.L9014
	movl	%r10d, 6212(%rsp)
.L9014:
	movl	6200(%rsp), %eax
	movl	%r10d, 6208(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L9016
	movl	6176(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L9015
.L9016:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1260(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1260(%rsp), %ebp
.L9030:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14419
.L9026:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L9026
.L14419:
	testl	%ecx, %ecx
	je	.L9019
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L9028
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L9028
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L9028:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L9030
.L9019:
	cmpl	$2, %r9d
	jle	.L9015
	testl	%r10d, %r10d
	jne	.L9032
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9033
	cmpw	$46, %dx
	je	.L9033
	cmpw	$47, %dx
	je	.L9033
	cmpw	$49, %dx
	je	.L9033
	cmpw	$113, %dx
	je	.L9033
.L9032:
	movl	6176(%rsp), %esi
	testl	%esi, %esi
	jne	.L9015
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L9035
	cmpw	$46, %dx
	je	.L9035
	cmpw	$47, %dx
	je	.L9035
	cmpw	$49, %dx
	je	.L9035
	cmpw	$113, %dx
	je	.L9035
.L9015:
	cmpl	$8, 1260(%rsp)
	movl	$8, %eax
	cmovl	1260(%rsp), %eax
	cmpl	$1, 1256(%rsp)
	movl	%eax, 1260(%rsp)
	jle	.L9038
.L9060:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14422
.L9045:
	movslq	%edx,%rbx
	movl	1256(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L9045
.L14422:
	testl	%r12d, %r12d
	je	.L9038
	movslq	%r12d,%r13
	movq	%r13, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L9047
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1260(%rsp)
	jl	.L9047
	movslq	%edx,%rcx
	cmpl	%ebp, 6208(%rsp)
	leaq	6160(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %rdx
	movq	%rdx, 3488(%rsp)
	jl	.L9047
	movl	6216(%rsp), %edx
.L9058:
	testl	%edx, %edx
	je	.L9052
	subl	%ebp, 52(%rbx)
.L9052:
	movl	16(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L9053
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15162:
	movl	40(%rbx), %r11d
	movq	%rax, 1248(%rsp)
	testl	%r11d, %r11d
	je	.L9055
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L9056:
	movq	%rax, %rsi
	movq	1248(%rsp), %rdi
	xorl	%eax, %eax
	call	*3488(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L9057
	addl	%ebp, 52(%rbx)
.L9057:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L9058
.L9047:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 1256(%rsp)
	decl	%r12d
	jg	.L9060
.L9038:
	movl	6208(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L9076
	jmp	.L15283
.L9055:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L9056
.L9053:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15162
.L9035:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6168(%rsp)
	jmp	.L9015
.L9033:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6192(%rsp)
	jmp	.L9032
.L9013:
	movl	$1, %edx
	jmp	.L9012
.L9011:
	movl	$1, %ecx
	jmp	.L9010
.L9009:
	movl	$1, %ecx
	jmp	.L9008
.L8986:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L8982
.L15994:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L8980
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16000
.L8980:
	cmpl	$55, %eax
	jne	.L8983
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L8982
.L16000:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L8982
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15161:
	movq	%rbx, 1264(%rsp)
	jmp	.L8982
.L8979:
	cmpq	$0, 16(%r14)
	jne	.L8987
	movq	8(%r14), %rax
	movq	%rax, 1264(%rsp)
	jmp	.L8982
.L8987:
	movq	24(%r14), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 1264(%rsp)
	jne	.L8982
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rbx
	jmp	.L15161
.L8976:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L8972
.L15993:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L8970
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16001
.L8970:
	cmpl	$55, %eax
	jne	.L8973
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L8972
.L16001:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L8972
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L8972
.L8969:
	cmpq	$0, 16(%r12)
	jne	.L8977
	movq	8(%r12), %r12
	jmp	.L8972
.L8977:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L8978
	movq	%rax, %r12
	jmp	.L8972
.L8978:
	movq	8(%r12), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L8972
.L8966:
	movq	56(%rsp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %rbp
	movq	%rax, 8(%rbp)
	movq	56(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L8962
.L15992:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L8962
.L8959:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L8967
	movq	8(%rcx), %rdi
	movq	%rdi, 1272(%rsp)
	jmp	.L8962
.L8967:
	movq	56(%rsp), %r9
	movq	24(%r9), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 1272(%rsp)
	jne	.L8962
	movq	56(%rsp), %rsi
	movq	8(%rsi), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	8(%rcx), %rsi
	movq	%rax, 24(%rcx)
	call	gen_move_insn
	movq	56(%rsp), %r10
	movq	%rax, %rdi
	movq	16(%r10), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r13
	movq	24(%r13), %r8
	movq	%r8, 1272(%rsp)
	jmp	.L8962
.L15991:
	movq	3656(%rsp), %r8
	movl	32(%r8), %eax
	cmpl	%eax, 8(%r15)
	jge	.L8833
	movq	%r12, 1288(%rsp)
	movq	56(%rsp), %rsi
	movq	8(%r8), %r13
	movl	48(%r13), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%rsi)
	movl	%eax, 1284(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	56(%rsp), %rdx
	movq	%rdx, 1296(%rsp)
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L8836
	cmpl	$55, %eax
	je	.L16002
	cmpl	$63, %eax
	je	.L8843
	cmpl	$66, %eax
	je	.L8843
.L8839:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L8846
	cmpl	$55, %eax
	je	.L16003
.L8850:
	cmpl	$63, %eax
	je	.L8853
	cmpl	$66, %eax
	je	.L8853
.L8849:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L8856
	cmpl	$55, %eax
	je	.L16004
.L8860:
	cmpl	$63, %eax
	je	.L8863
	cmpl	$66, %eax
	je	.L8863
.L8859:
	movq	1296(%rsp), %r9
	cmpw	$55, (%r9)
	jne	.L15283
	movq	1288(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	testq	%r15, %r15
	je	.L15283
	cmpw	$46, (%r15)
	je	.L16005
.L8869:
	movl	1284(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3512(%rsp)
	testl	%ebp, %ebp
	je	.L14413
.L8955:
	movslq	%ebp,%rax
	movq	%rax, 3504(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L8943
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L8947
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r15)
	ja	.L8943
.L8947:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16006
.L8948:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16007
.L8949:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L8950
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3512(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L8943
.L8950:
	call	get_last_insn
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%rax, 3496(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16008
.L8951:
	movq	1296(%rsp), %rdi
	xorl	%eax, %eax
	movq	1288(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3512(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14966
	movq	3496(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L8943:
	movq	3504(%rsp), %r14
	movl	mode_wider_mode(,%r14,4), %ebp
	testl	%ebp, %ebp
	jne	.L8955
.L14413:
	movl	$4, %edi
	movq	%r15, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	1296(%rsp), %rbx
	movl	$3, %ecx
	movq	1288(%rsp), %r11
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	8(%r11), %rbp
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	%rbp, (%rsp)
	jmp	.L15165
.L16008:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L8951
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L8951
.L16007:
	xorl	%eax, %eax
	movq	1288(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8943
	jmp	.L8949
.L16006:
	xorl	%eax, %eax
	movq	1296(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8943
	jmp	.L8948
.L16005:
	movl	8(%r15), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1284(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1284(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L8883:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14404
.L8879:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L8879
.L14404:
	testl	%ecx, %ecx
	je	.L8872
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L8881
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L8881
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L8881:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8883
.L8872:
	decl	%r9d
	jg	.L8869
	movq	1296(%rsp), %rdx
	movq	1288(%rsp), %r11
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rdx), %rbx
	movq	8(%r11), %rdi
	movq	%r11, 6120(%rsp)
	movl	$0, 6148(%rsp)
	movq	%rdx, 6096(%rsp)
	movq	%rbx, 6104(%rsp)
	movq	%rdi, 6128(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L8886
	cmpw	$88, %dx
	je	.L8886
	cmpw	$87, %dx
	je	.L8886
.L8885:
	movl	%ecx, 6112(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L8888
	cmpw	$88, %dx
	je	.L8888
	cmpw	$87, %dx
	je	.L8888
.L8887:
	movl	%ecx, 6136(%rsp)
	movl	$0, 6140(%rsp)
	movl	$0, 6116(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L8890
	cmpw	$87, %ax
	je	.L8890
.L8889:
	testl	%edx, %edx
	movl	%edx, 6152(%rsp)
	je	.L8891
	movl	%r10d, 6148(%rsp)
.L8891:
	movl	%r10d, 6144(%rsp)
	movl	6136(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L8893
	movl	6112(%rsp), %eax
	testl	%eax, %eax
	jne	.L8892
.L8893:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1284(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r15d
	cmovl	1284(%rsp), %ebp
.L8907:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14407
.L8903:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L8903
.L14407:
	testl	%ecx, %ecx
	je	.L8896
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L8905
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r15d, %eax
	cmpl	%eax, %ebp
	jl	.L8905
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L8905:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8907
.L8896:
	cmpl	$2, %r9d
	jle	.L8892
	testl	%r10d, %r10d
	jne	.L8909
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L8910
	cmpw	$46, %dx
	je	.L8910
	cmpw	$47, %dx
	je	.L8910
	cmpw	$49, %dx
	je	.L8910
	cmpw	$113, %dx
	je	.L8910
.L8909:
	movl	6112(%rsp), %eax
	testl	%eax, %eax
	jne	.L8892
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L8912
	cmpw	$46, %dx
	je	.L8912
	cmpw	$47, %dx
	je	.L8912
	cmpw	$49, %dx
	je	.L8912
	cmpw	$113, %dx
	je	.L8912
.L8892:
	cmpl	$8, 1284(%rsp)
	movl	$8, %eax
	cmovl	1284(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1284(%rsp)
	jle	.L8915
.L8937:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14410
.L8922:
	movslq	%edx,%rcx
	salq	$2, %rcx
	cmpl	%r14d, mode_size(%rcx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rcx), %edx
	testl	%edx, %edx
	jne	.L8922
.L14410:
	testl	%r13d, %r13d
	je	.L8915
	movslq	%r13d,%r14
	movq	%r14, %rbx
	salq	$4, %rbx
	addq	mov_optab(%rip), %rbx
	movl	8(%rbx), %edx
	cmpl	$210, %edx
	je	.L8924
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1284(%rsp)
	jl	.L8924
	movslq	%edx,%r15
	cmpl	%ebp, 6144(%rsp)
	leaq	6096(%rsp), %rbx
	movq	insn_gen_function(,%r15,8), %rdi
	movq	%rdi, 3520(%rsp)
	jl	.L8924
	movl	6152(%rsp), %edx
.L8935:
	testl	%edx, %edx
	je	.L8929
	subl	%ebp, 52(%rbx)
.L8929:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L8930
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15160:
	movq	%rax, %r15
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L8932
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L8933:
	movq	%rax, %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*3520(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L8934
	addl	%ebp, 52(%rbx)
.L8934:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L8935
.L8924:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L8937
.L8915:
	movl	6144(%rsp), %eax
	testl	%eax, %eax
	jmp	.L15393
.L8932:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L8933
.L8930:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15160
.L8912:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6104(%rsp)
	jmp	.L8892
.L8910:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6128(%rsp)
	jmp	.L8909
.L8890:
	movl	$1, %edx
	jmp	.L8889
.L8888:
	movl	$1, %ecx
	jmp	.L8887
.L8886:
	movl	$1, %ecx
	jmp	.L8885
.L8863:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L8859
.L16004:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L8857
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L16009
.L8857:
	cmpl	$55, %eax
	jne	.L8860
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L8859
.L16009:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L8859
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r15
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L8859
.L8856:
	cmpq	$0, 16(%r15)
	jne	.L8864
	movq	8(%r15), %r15
	jmp	.L8859
.L8864:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.L8865
	movq	%rsi, %r15
	jmp	.L8859
.L8865:
	movq	8(%r15), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L8859
.L8853:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L8849
.L16003:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L8847
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16010
.L8847:
	cmpl	$55, %eax
	jne	.L8850
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L8849
.L16010:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L8849
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 1288(%rsp)
	jmp	.L8849
.L8846:
	cmpq	$0, 16(%r12)
	jne	.L8854
	movq	8(%r12), %rdx
	movq	%rdx, 1288(%rsp)
	jmp	.L8849
.L8854:
	movq	24(%r12), %r11
	testq	%r11, %r11
	movq	%r11, 1288(%rsp)
	jne	.L8849
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r14
	movq	%r14, 1288(%rsp)
	jmp	.L8849
.L8843:
	movq	56(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L8839
.L16002:
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r11
	movq	%rax, 8(%r11)
	jmp	.L8839
.L8836:
	movq	56(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L8844
	movq	8(%rsi), %rcx
	movq	%rcx, 1296(%rsp)
	jmp	.L8839
.L8844:
	movq	56(%rsp), %rbx
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 1296(%rsp)
	jne	.L8839
	movq	56(%rsp), %rax
	movq	8(%rax), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r8
	movq	%rax, %rdi
	movq	8(%r8), %rsi
	movq	%rax, 24(%r8)
	call	gen_move_insn
	movq	56(%rsp), %rbp
	movq	%rax, %rdi
	movq	16(%rbp), %rsi
	call	emit_insn_before
	movq	24(%rbp), %r9
	movq	%r9, 1296(%rsp)
	jmp	.L8839
	.p2align 6,,7
.L8825:
	movq	56(%rsp), %r15
	xorl	%esi, %esi
	movq	8(%r15), %rdi
	call	protect_from_queue
	movq	56(%rsp), %r13
	movq	%rax, 8(%r13)
	movq	56(%rsp), %rsi
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %rbp
	movq	%rax, 16(%rbp)
	jmp	.L8821
.L15882:
	jne	.L8822
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L8821
	.p2align 6,,7
.L8818:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L8826
	movq	8(%rcx), %r11
	movq	%r11, 56(%rsp)
	jmp	.L8821
.L8826:
	movq	56(%rsp), %rdi
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.L8827
	movq	%rax, 56(%rsp)
	jmp	.L8821
.L8827:
	movq	56(%rsp), %rax
	movq	8(%rax), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r9
	movq	%rax, %rdi
	movq	8(%r9), %rsi
	movq	%rax, 24(%r9)
	call	gen_move_insn
	movq	56(%rsp), %rbx
	movq	%rax, %rdi
	movq	16(%rbx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r14
	movq	24(%r14), %rcx
	movq	%rcx, 56(%rsp)
	jmp	.L8821
	.p2align 6,,7
.L15881:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3656(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rax, %rsi
	jmp	.L15159
.L8797:
	movq	56(%rsp), %r9
	movl	(%r9), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16011
	movq	56(%rsp), %r8
	movq	3656(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%r8), %edx
	movq	%r8, %rsi
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L16012
.L8815:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L8816
	cmpw	$46, %dx
	je	.L8816
	cmpw	$47, %dx
	je	.L8816
	cmpw	$49, %dx
	je	.L8816
	cmpw	$113, %dx
	jne	.L8762
	jmp	.L8816
.L16012:
	cmpl	$63, 8(%rdx)
	jle	.L8762
	jmp	.L8815
.L16011:
	movq	3656(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, %r12
	movq	56(%rsp), %rax
	movq	%r12, %rsi
	movzbl	3(%rax), %edx
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L8761
.L8806:
	movl	$1, %ebx
	jmp	.L8800
.L8798:
	xorl	%ebx, %ebx
	jmp	.L8800
.L8804:
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	8(%rcx), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L8806
	movq	56(%rsp), %r14
	xorl	%eax, %eax
	movq	16(%r14), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L8800
	jmp	.L8806
.L15880:
	movzbl	2(%rdi), %eax
	cmpb	$16, %al
	je	.L8790
	movl	cse_not_expected(%rip), %r15d
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r15d, %r15d
	cmove	%rdi, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	3656(%rsp), %rdi
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L8816
	testb	%al, %al
	je	.L8816
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15356
	.p2align 6,,7
.L15879:
	movq	56(%rsp), %rbp
	cmpb	$16, 2(%rbp)
	jne	.L8763
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r13
	testq	%rbx, %rbx
	jne	.L8767
.L14397:
	movq	56(%rsp), %r12
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L8769
	cmpl	$55, %eax
	je	.L16013
.L8773:
	cmpl	$63, %eax
	je	.L8776
	cmpl	$66, %eax
	je	.L8776
.L8772:
	movq	3656(%rsp), %rax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%rax), %rdi
	xorl	%eax, %eax
	call	jumpifnot
	movq	3656(%rsp), %r8
	movl	3644(%rsp), %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	40(%r8), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L8782
.L14399:
	movq	%r13, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	3644(%rsp), %edx
	movq	3656(%rsp), %rbp
	movq	%r12, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L8787
.L14401:
	movq	%r13, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L8761
.L8787:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L8787
	jmp	.L14401
.L8782:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L8782
	jmp	.L14399
.L8776:
	movq	56(%rsp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %r15
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L8772
.L16013:
	jne	.L8773
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r12
	movq	%rax, 8(%r12)
	jmp	.L8772
.L8769:
	movq	56(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L8777
	movq	8(%rbx), %r12
	jmp	.L8772
.L8777:
	movq	56(%rsp), %r12
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %r12
	jne	.L8772
	movq	56(%rsp), %rdx
	movq	8(%rdx), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	16(%rcx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %rbx
	movq	24(%rbx), %r12
	jmp	.L8772
	.p2align 6,,7
.L8767:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L8767
	jmp	.L14397
.L15878:
	movq	3656(%rsp), %rdx
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	32(%rdx), %rdi
	xorl	%edx, %edx
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L8759
.L14395:
	movq	3656(%rsp), %rax
	movq	56(%rsp), %rsi
	movl	3644(%rsp), %edx
	movq	40(%rax), %rdi
	xorl	%eax, %eax
	call	store_expr
	movq	%rax, %r12
	jmp	.L8761
.L8759:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r8
	movq	%rax, 16(%rbx)
	testq	%r8, %r8
	movq	%r8, pending_chain(%rip)
	movq	%r8, %rbx
	jne	.L8759
	jmp	.L14395
.L15877:
	movq	3656(%rsp), %rbx
	movzbl	16(%rbx), %eax
	cmpb	$39, %al
	jne	.L8754
	movl	current_function_returns_struct(%rip), %r12d
	testl	%r12d, %r12d
	je	.L8754
	movl	current_function_returns_pcc_struct(%rip), %r11d
	testl	%r11d, %r11d
	jne	.L8754
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	3656(%rsp), %rdi
	movq	%rax, %r14
	xorl	%eax, %eax
	call	expr_size
	movl	$4, %r9d
	movq	56(%rsp), %rbx
	movq	8(%r14), %rcx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rcx, (%rsp)
	movq	8(%rbx), %r8
	movl	$3, %ecx
	call	emit_library_call
.L15167:
	movq	56(%rsp), %rdi
	xorl	%eax, %eax
	call	preserve_temp_slots
	xorl	%eax, %eax
	call	free_temp_slots
	jmp	.L8235
.L15876:
	movq	3664(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	3664(%rsp), %r15
	movq	%rax, 56(%rsp)
	movzbl	16(%r15), %edx
	jmp	.L8753
.L15875:
	movq	3664(%rsp), %r8
	movq	40(%r8), %r15
	cmpb	$25, 16(%r15)
	jne	.L8236
	movq	3648(%rsp), %r9
	movq	32(%r9), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L8236
.L8237:
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	cmpb	$37, %dl
	movl	$0, 5528(%rsp)
	movq	3664(%rsp), %r12
	leaq	5544(%rsp), %r13
	leaq	5528(%rsp), %r14
	je	.L16014
	cmpb	$38, %dl
	je	.L16015
	movq	3648(%rsp), %rsi
	movzbl	44(%rsi), %r15d
	movslq	%r15d,%r10
	movl	mode_size(,%r10,4), %eax
	sall	$3, %eax
	movl	%eax, 5548(%rsp)
	movq	3664(%rsp), %rax
	movq	8(%rax), %r9
	movzbl	17(%r9), %r8d
	shrb	$6, %r8b
	movl	%r8d, %edi
	andl	$1, %edi
	movl	%edi, 3640(%rsp)
.L8240:
	testq	%rcx, %rcx
	je	.L8243
	cmpb	$25, 16(%rcx)
	je	.L8244
	movl	$16, %r15d
	movl	$-1, 5548(%rsp)
.L8243:
	movl	$0, (%r13)
	.p2align 4,,7
.L8271:
	movzbl	16(%r12), %edx
	cmpb	$39, %dl
	je	.L16016
.L8249:
	leal	-37(%rdx), %ecx
	cmpb	$1, %cl
	ja	.L8250
	cmpb	$37, %dl
	je	.L16017
	movq	48(%r12), %rbx
.L8252:
	movzbl	16(%rbx), %eax
	cmpb	$53, %al
	je	.L16018
	cmpb	$25, %al
	je	.L16019
.L8261:
	testq	%rbp, %rbp
	je	.L8263
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rbp, %rsi
	movl	$53, %edi
.L15150:
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, %rbp
.L8265:
	testb	$16, 17(%r12)
	je	.L8270
	movl	$1, (%r14)
.L8270:
	movq	32(%r12), %r12
	jmp	.L8271
.L8263:
	movl	$8, %edi
	call	size_int
	movq	%rbx, %rsi
	movl	$58, %edi
	jmp	.L15150
.L16019:
	movl	24(%rbx), %eax
.L15151:
	addl	%eax, (%r13)
	jmp	.L8265
.L16018:
	movq	32(%rbx), %rsi
	cmpb	$25, 16(%rsi)
	je	.L16020
	movq	40(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L15283
	movq	%rsi, %rbx
.L8255:
	movl	24(%rax), %eax
	addl	%eax, (%r13)
	jmp	.L8261
.L16020:
	movq	40(%rbx), %rbx
	movq	%rsi, %rax
	jmp	.L8255
.L16017:
	movq	40(%r12), %rdx
	movq	72(%rdx), %rbx
	jmp	.L8252
.L8250:
	cmpb	$42, %dl
	je	.L16021
.L8266:
	cmpb	$103, %dl
	je	.L8265
	leal	-101(%rdx), %r11d
	cmpb	$1, %r11b
	ja	.L8247
	movq	32(%r12), %r10
	movq	8(%r12), %r8
	movq	8(%r10), %r9
	movzbl	44(%r9), %edi
	cmpb	%dil, 44(%r8)
	je	.L8265
.L8247:
	testl	%r15d, %r15d
	jne	.L8272
	movl	(%r13), %eax
	movl	5548(%rsp), %edi
	cltd
	idivl	%edi
	testl	%edx, %edx
	movl	%edx, %ebx
	je	.L16022
.L8272:
	testl	%r15d, %r15d
	movl	%r15d, 5532(%rsp)
	movq	%rbp, 5536(%rsp)
	jne	.L8275
	movl	3644(%rsp), %eax
	testl	%eax, %eax
	jne	.L16023
.L8275:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	5536(%rsp), %rdi
	movq	%rax, 56(%rsp)
	testq	%rdi, %rdi
	jne	.L16024
.L8276:
	movl	5528(%rsp), %eax
	testl	%eax, %eax
	je	.L8278
	movq	56(%rsp), %rsi
	cmpw	$55, (%rsi)
	je	.L16025
.L8278:
	movl	3644(%rsp), %eax
	movl	5548(%rsp), %ebp
	movl	5544(%rsp), %r14d
	movl	5532(%rsp), %ebx
	testl	%eax, %eax
	je	.L8280
	movq	3664(%rsp), %rax
	movq	8(%rax), %rsi
	movzbl	44(%rsi), %r15d
	movl	%r15d, 1216(%rsp)
.L8281:
	movq	8(%r12), %rdi
	movl	48(%rdi), %r12d
	call	int_size_in_bytes
	movl	$0, 1212(%rsp)
	movl	%eax, %r15d
	shrl	$3, %r12d
	cmpl	$31, %ebp
	jg	.L8282
	movl	$1, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 1212(%rsp)
.L8282:
	cmpl	$16, %ebx
	je	.L16026
.L8283:
	testl	%ebx, %ebx
	je	.L8288
	cmpl	$16, %ebx
	je	.L8289
	movslq	%ebx,%rdi
	cmpb	$0, direct_store(%rdi)
	je	.L8288
.L8289:
	movq	56(%rsp), %r8
	movzwl	(%r8), %eax
	cmpw	$51, %ax
	je	.L8288
	cmpw	$53, %ax
	je	.L8288
	movl	1216(%rsp), %r15d
	movq	56(%rsp), %rsi
	testl	%r15d, %r15d
	movq	8(%rsi), %rdi
	je	.L8295
	movzwl	(%rdi), %edx
	cmpw	$51, %dx
	je	.L8295
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L8295
	cmpw	$46, %dx
	je	.L8295
	cmpw	$47, %dx
	je	.L8295
	cmpw	$49, %dx
	je	.L8295
	cmpw	$113, %dx
	je	.L8295
	cmpw	$63, %dx
	je	.L16027
.L8296:
	xorl	%eax, %eax
	call	copy_to_reg
	movq	%rax, %rdi
.L8295:
	cmpl	$-1, %r14d
	leal	7(%r14), %r8d
	cmovle	%r8d, %r14d
	sarl	$3, %r14d
	movl	%r14d, %esi
	call	plus_constant_wide
	movl	%ebx, %esi
	movq	56(%rsp), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	orb	$16, 3(%rax)
	movq	%rax, %r15
	movl	$0, 1208(%rsp)
	movl	1216(%rsp), %eax
	testl	%eax, %eax
	setne	%dl
	movzbl	%dl, %ebp
	movq	3656(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$44, %al
	je	.L16028
	cmpb	$48, %al
	je	.L16029
.L8307:
	testl	%ebp, %ebp
	je	.L8334
	cmpw	$55, (%r15)
	je	.L16030
.L8334:
	movzwl	(%r15), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L8342
	mov	%eax, %r14d
	jmp	*.L8351(,%r14,8)
	.section	.rodata
	.align 8
	.align 4
.L8351:
	.quad	.L8345
	.quad	.L8342
	.quad	.L8342
	.quad	.L8342
	.quad	.L8350
	.quad	.L8342
	.quad	.L8342
	.quad	.L8342
	.quad	.L8348
	.quad	.L8348
	.quad	.L8342
	.quad	.L8348
	.text
.L8345:
	movq	8(%r15), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L8344:
	testl	%ebx, %ebx
	je	.L8341
	movzbl	2(%r15), %eax
	cmpb	$16, %al
	je	.L8353
	testb	%al, %al
	jne	.L16031
.L8353:
	movzbl	2(%r15), %edx
	movq	3656(%rsp), %rdi
	xorl	%esi, %esi
.L15152:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15355:
	movq	%rax, %r12
.L8360:
	movl	$1, 1208(%rsp)
.L8306:
	cmpq	%r15, %r12
	je	.L8361
	movq	3656(%rsp), %r11
	cmpb	$0, 16(%r11)
	je	.L8361
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L8362
	cmpl	$55, %eax
	je	.L16032
.L8366:
	cmpl	$63, %eax
	je	.L8369
	cmpl	$66, %eax
	je	.L8369
.L8365:
	movzbl	2(%r12), %eax
	movzbl	2(%r15), %ecx
	cmpb	%cl, %al
	je	.L8372
	testb	%al, %al
	je	.L8372
	movq	3656(%rsp), %rbx
	movl	1208(%rsp), %eax
	movq	8(%rbx), %rdi
	movzbl	17(%rdi), %r8d
	shrb	$6, %r8b
	movl	%r8d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L8373
	movq	%r12, %rsi
	movzbl	%cl, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rax, %r12
.L8628:
	movq	%r15, %rdi
	movq	%r12, %rsi
	call	emit_move_insn
.L8361:
	movl	1208(%rsp), %edi
	testl	%edi, %edi
	cmove	%r15, %r12
.L8305:
	movq	%r12, 56(%rsp)
	jmp	.L15167
.L8373:
	movq	%r15, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_move
	jmp	.L8361
	.p2align 6,,7
.L8372:
	cmpb	$16, %al
	jne	.L8628
	movq	3656(%rsp), %rdx
	cmpb	$28, 16(%rdx)
	je	.L16033
	cmpb	$16, %al
	jne	.L8628
	movq	3656(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, 1112(%rsp)
	call	expr_size
	movq	%rax, %r13
	movq	3656(%rsp), %rax
	movq	8(%rax), %rbx
	movl	48(%rbx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1108(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 1120(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L8631
	cmpl	$55, %eax
	je	.L16034
	cmpl	$63, %eax
	je	.L8638
	cmpl	$66, %eax
	je	.L8638
.L8634:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L8641
	cmpl	$55, %eax
	je	.L16035
.L8645:
	cmpl	$63, %eax
	je	.L8648
	cmpl	$66, %eax
	je	.L8648
.L8644:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L8651
	cmpl	$55, %eax
	je	.L16036
.L8655:
	cmpl	$63, %eax
	je	.L8658
	cmpl	$66, %eax
	je	.L8658
.L8654:
	movq	1120(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	movq	1112(%rsp), %r8
	cmpw	$55, (%r8)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L16037
.L8664:
	movl	1108(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3552(%rsp)
	testl	%ebp, %ebp
	je	.L14393
.L8750:
	movslq	%ebp,%rax
	movq	%rax, 3544(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L8738
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L8742
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L8738
.L8742:
	movslq	%edx,%r8
	leaq	(%r8,%r8,4), %r14
	movq	%r8, 3536(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16038
.L8743:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16039
.L8744:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L8745
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3552(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L8738
.L8745:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 3528(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16040
.L8746:
	movq	3536(%rsp), %rbp
	movq	1120(%rsp), %rdi
	xorl	%eax, %eax
	movq	1112(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3552(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14963
	movq	3528(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L8738:
	movq	3544(%rsp), %r10
	movl	mode_wider_mode(,%r10,4), %ebp
	testl	%ebp, %ebp
	jne	.L8750
.L14393:
	movq	%r13, %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	1112(%rsp), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rsi), %r13
	xorl	%esi, %esi
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	1120(%rsp), %rax
	movq	%r13, (%rsp)
.L15157:
	movq	8(%rax), %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	call	emit_library_call
	jmp	.L8361
.L14963:
	call	emit_insn
	jmp	.L8361
.L16040:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L8746
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L8746
.L16039:
	xorl	%eax, %eax
	movq	1112(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8738
	jmp	.L8744
.L16038:
	xorl	%eax, %eax
	movq	1120(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8738
	jmp	.L8743
.L16037:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1108(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1108(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L8678:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14384
.L8674:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L8674
.L14384:
	testl	%ecx, %ecx
	je	.L8667
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L8676
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L8676
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L8676:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8678
.L8667:
	decl	%r9d
	jg	.L8664
	movq	1112(%rsp), %rcx
	movq	1120(%rsp), %rbp
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rbp), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 6120(%rsp)
	movl	$0, 6148(%rsp)
	movq	%rbp, 6096(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 6104(%rsp)
	movq	%rdi, 6128(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L8681
	cmpw	$88, %dx
	je	.L8681
	cmpw	$87, %dx
	je	.L8681
.L8680:
	movl	%ecx, 6112(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L8683
	cmpw	$88, %dx
	je	.L8683
	cmpw	$87, %dx
	je	.L8683
.L8682:
	movl	%ecx, 6136(%rsp)
	movl	$0, 6140(%rsp)
	movl	$0, 6116(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L8685
	cmpw	$87, %ax
	je	.L8685
.L8684:
	testl	%edx, %edx
	movl	%edx, 6152(%rsp)
	je	.L8686
	movl	%r10d, 6148(%rsp)
.L8686:
	movl	6136(%rsp), %eax
	movl	%r10d, 6144(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L8688
	movl	6112(%rsp), %eax
	testl	%eax, %eax
	jne	.L8687
.L8688:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1108(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	1108(%rsp), %ebp
.L8702:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14387
.L8698:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L8698
.L14387:
	testl	%ecx, %ecx
	je	.L8691
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L8700
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L8700
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L8700:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8702
.L8691:
	cmpl	$2, %r9d
	jle	.L8687
	testl	%r10d, %r10d
	jne	.L8704
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L8705
	cmpw	$46, %dx
	je	.L8705
	cmpw	$47, %dx
	je	.L8705
	cmpw	$49, %dx
	je	.L8705
	cmpw	$113, %dx
	je	.L8705
.L8704:
	movl	6112(%rsp), %esi
	testl	%esi, %esi
	jne	.L8687
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L8707
	cmpw	$46, %dx
	je	.L8707
	cmpw	$47, %dx
	je	.L8707
	cmpw	$49, %dx
	je	.L8707
	cmpw	$113, %dx
	je	.L8707
.L8687:
	cmpl	$8, 1108(%rsp)
	movl	$8, %eax
	cmovl	1108(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1108(%rsp)
	jle	.L8710
.L8732:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14390
.L8717:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L8717
.L14390:
	testl	%r13d, %r13d
	je	.L8710
	movslq	%r13d,%r14
	movq	%r14, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L8719
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1108(%rsp)
	jl	.L8719
	movslq	%edx,%rcx
	cmpl	%ebp, 6144(%rsp)
	leaq	6096(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %rdx
	movq	%rdx, 3560(%rsp)
	jl	.L8719
	movl	6152(%rsp), %edx
.L8730:
	testl	%edx, %edx
	je	.L8724
	subl	%ebp, 52(%rbx)
.L8724:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L8725
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15156:
	movl	40(%rbx), %r9d
	movq	%rax, 1096(%rsp)
	testl	%r9d, %r9d
	je	.L8727
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L8728:
	movq	%rax, %rsi
	movq	1096(%rsp), %rdi
	xorl	%eax, %eax
	call	*3560(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L8729
	addl	%ebp, 52(%rbx)
.L8729:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L8730
.L8719:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L8732
.L8710:
	movl	6144(%rsp), %r14d
	testl	%r14d, %r14d
.L15392:
	je	.L8361
	jmp	.L15283
.L8727:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L8728
.L8725:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15156
.L8707:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6104(%rsp)
	jmp	.L8687
.L8705:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6128(%rsp)
	jmp	.L8704
.L8685:
	movl	$1, %edx
	jmp	.L8684
.L8683:
	movl	$1, %ecx
	jmp	.L8682
.L8681:
	movl	$1, %ecx
	jmp	.L8680
.L8658:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L8654
.L16036:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L8652
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L16041
.L8652:
	cmpl	$55, %eax
	jne	.L8655
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L8654
.L16041:
	movq	8(%rbp), %rbx
	movq	%rbx, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L8654
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L8654
.L8651:
	cmpq	$0, 16(%r13)
	jne	.L8659
	movq	8(%r13), %r13
	jmp	.L8654
.L8659:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L8660
	movq	%rsi, %r13
	jmp	.L8654
.L8660:
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L8654
.L8648:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L8644
.L16035:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L8642
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16042
.L8642:
	cmpl	$55, %eax
	jne	.L8645
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L8644
.L16042:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L8644
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 1112(%rsp)
	jmp	.L8644
.L8641:
	cmpq	$0, 16(%r12)
	jne	.L8649
	movq	8(%r12), %r10
	movq	%r10, 1112(%rsp)
	jmp	.L8644
.L8649:
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 1112(%rsp)
	jne	.L8644
	movq	8(%r12), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rsi
	movq	%rsi, 1112(%rsp)
	jmp	.L8644
.L8638:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L8634
.L16034:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L8634
.L8631:
	cmpq	$0, 16(%r15)
	jne	.L8639
	movq	8(%r15), %r9
	movq	%r9, 1120(%rsp)
	jmp	.L8634
.L8639:
	movq	24(%r15), %r8
	testq	%r8, %r8
	movq	%r8, 1120(%rsp)
	jne	.L8634
	movq	8(%r15), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rdi
	movq	%rdi, 1120(%rsp)
	jmp	.L8634
.L16033:
	xorl	%eax, %eax
	movq	%rdx, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1184(%rsp)
	je	.L16043
.L8377:
	movl	$8, %edi
	call	size_int
	movq	3656(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r9
	movl	$57, %edi
	movq	32(%r9), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3656(%rsp), %rbx
	movq	%rax, %r14
	movl	32(%rbx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r14, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	expand_expr
	movq	3656(%rsp), %rbp
	movq	$0, 1128(%rsp)
	movq	%rax, 1152(%rsp)
	movq	%rax, %r14
	movq	8(%rbp), %rsi
	movl	48(%rsi), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1148(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 1160(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L8503
	cmpl	$55, %eax
	je	.L16044
	cmpl	$63, %eax
	je	.L8510
	cmpl	$66, %eax
	je	.L8510
.L8506:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L8513
	cmpl	$55, %eax
	je	.L16045
.L8517:
	cmpl	$63, %eax
	je	.L8520
	cmpl	$66, %eax
	je	.L8520
.L8516:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L8523
	cmpl	$55, %eax
	je	.L16046
.L8527:
	cmpl	$63, %eax
	je	.L8530
	cmpl	$66, %eax
	je	.L8530
.L8526:
	movq	1160(%rsp), %rdi
	cmpw	$55, (%rdi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1152(%rsp)
	je	.L15283
	movq	1152(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L16047
.L8536:
	movl	1148(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3592(%rsp)
	testl	%ebp, %ebp
	je	.L14381
.L8622:
	movslq	%ebp,%rcx
	movq	%rcx, %rax
	movq	%rcx, 3584(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L8610
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L8614
	movq	1152(%rsp), %r11
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r11)
	ja	.L8610
.L8614:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 3576(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16048
.L8615:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16049
.L8616:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L8617
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3592(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L8610
.L8617:
	call	get_last_insn
	movl	$1, %edx
	movq	1152(%rsp), %rsi
	movq	%rax, 3568(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16050
.L8618:
	movq	3576(%rsp), %r13
	movq	1160(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3592(%rsp), %rcx
	call	*insn_gen_function(,%r13,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14962
	movq	3568(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L8610:
	movq	3584(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L8622
.L14381:
	movq	1152(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	1160(%rsp), %r12
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rsp)
	xorl	%esi, %esi
	movq	8(%r12), %r8
	call	emit_library_call
.L8620:
	cmpw	$46, (%r14)
	je	.L16051
	movq	8(%r15), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1184(%rsp), %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	movq	%rax, %r12
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1128(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L8624:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L8625
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L8625:
	cmpq	$0, 1128(%rsp)
	je	.L8361
	movq	1128(%rsp), %rdi
	call	emit_label
	jmp	.L8361
.L16051:
	movq	3656(%rsp), %rbp
	movq	8(%r15), %rdi
	movl	32(%rbp), %esi
	call	plus_constant_wide
	movq	1184(%rsp), %rdi
	movq	3656(%rsp), %r14
	movq	%rax, %r12
	movl	32(%r14), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L8624
.L14962:
	call	emit_insn
	jmp	.L8620
.L16050:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L8618
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L8618
.L16049:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8610
	jmp	.L8616
.L16048:
	xorl	%eax, %eax
	movq	1160(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8610
	jmp	.L8615
.L16047:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1148(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1148(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L8550:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14372
.L8546:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L8546
.L14372:
	testl	%ecx, %ecx
	je	.L8539
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L8548
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L8548
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L8548:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8550
.L8539:
	decl	%r9d
	jg	.L8536
	movq	1160(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 6120(%rsp)
	movq	%rcx, 6096(%rsp)
	movl	$0, 6148(%rsp)
	movq	%rdi, 6128(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 1144(%rsp)
	movq	%rbx, 6104(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L8553
	cmpw	$88, %dx
	je	.L8553
	cmpw	$87, %dx
	je	.L8553
.L8552:
	movl	%ecx, 6112(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L8555
	cmpw	$88, %dx
	je	.L8555
	cmpw	$87, %dx
	je	.L8555
.L8554:
	movl	%ecx, 6136(%rsp)
	movl	$0, 6140(%rsp)
	movl	$0, 6116(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L8557
	cmpw	$87, %ax
	je	.L8557
.L8556:
	testl	%edx, %edx
	movl	%edx, 6152(%rsp)
	je	.L8558
	movl	%r10d, 6148(%rsp)
.L8558:
	movl	6136(%rsp), %eax
	movl	%r10d, 6144(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L8560
	movl	6112(%rsp), %eax
	testl	%eax, %eax
	jne	.L8559
.L8560:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1148(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1148(%rsp), %ebp
.L8574:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14375
.L8570:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L8570
.L14375:
	testl	%ecx, %ecx
	je	.L8563
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L8572
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L8572
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L8572:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8574
.L8563:
	cmpl	$2, %r9d
	jle	.L8559
	testl	%r10d, %r10d
	jne	.L8576
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L8577
	cmpw	$46, %dx
	je	.L8577
	cmpw	$47, %dx
	je	.L8577
	cmpw	$49, %dx
	je	.L8577
	cmpw	$113, %dx
	je	.L8577
.L8576:
	movl	6112(%rsp), %eax
	testl	%eax, %eax
	jne	.L8559
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L8579
	cmpw	$46, %dx
	je	.L8579
	cmpw	$47, %dx
	je	.L8579
	cmpw	$49, %dx
	je	.L8579
	cmpw	$113, %dx
	je	.L8579
.L8559:
	cmpl	$8, 1148(%rsp)
	movl	$8, %eax
	cmovl	1148(%rsp), %eax
	cmpl	$1, 1144(%rsp)
	movl	%eax, 1148(%rsp)
	jle	.L8582
.L8604:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14378
.L8589:
	movslq	%edx,%rbp
	movl	1144(%rsp), %eax
	salq	$2, %rbp
	cmpl	%eax, mode_size(%rbp)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbp), %edx
	testl	%edx, %edx
	jne	.L8589
.L14378:
	testl	%r12d, %r12d
	je	.L8582
	movslq	%r12d,%r13
	movq	%r13, %rbx
	salq	$4, %rbx
	addq	mov_optab(%rip), %rbx
	movl	8(%rbx), %edx
	cmpl	$210, %edx
	je	.L8591
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1148(%rsp)
	jl	.L8591
	movslq	%edx,%r8
	cmpl	%ebp, 6144(%rsp)
	leaq	6096(%rsp), %rbx
	movq	insn_gen_function(,%r8,8), %r9
	movq	%r9, 3600(%rsp)
	jl	.L8591
	movl	6152(%rsp), %edx
.L8602:
	testl	%edx, %edx
	je	.L8596
	subl	%ebp, 52(%rbx)
.L8596:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L8597
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15155:
	movq	%rax, 1136(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L8599
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L8600:
	movq	%rax, %rsi
	movq	1136(%rsp), %rdi
	xorl	%eax, %eax
	call	*3600(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L8601
	addl	%ebp, 52(%rbx)
.L8601:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L8602
.L8591:
	movl	mode_size(,%r13,4), %edi
	movl	%edi, 1144(%rsp)
	decl	%edi
	jg	.L8604
.L8582:
	movl	6144(%rsp), %eax
	testl	%eax, %eax
	je	.L8620
	jmp	.L15283
.L8599:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L8600
.L8597:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15155
.L8579:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6104(%rsp)
	jmp	.L8559
.L8577:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6128(%rsp)
	jmp	.L8576
.L8557:
	movl	$1, %edx
	jmp	.L8556
.L8555:
	movl	$1, %ecx
	jmp	.L8554
.L8553:
	movl	$1, %ecx
	jmp	.L8552
.L8530:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L8526
.L16046:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L8524
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16052
.L8524:
	cmpl	$55, %eax
	jne	.L8527
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L8526
.L16052:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L8526
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 1152(%rsp)
	jmp	.L8526
.L8523:
	cmpq	$0, 16(%r14)
	jne	.L8531
	movq	8(%r14), %rax
	movq	%rax, 1152(%rsp)
	jmp	.L8526
.L8531:
	movq	24(%r14), %rbp
	testq	%rbp, %rbp
	movq	%rbp, 1152(%rsp)
	jne	.L8526
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rbx
	movq	%rbx, 1152(%rsp)
	jmp	.L8526
.L8520:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L8516
.L16045:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L8514
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16053
.L8514:
	cmpl	$55, %eax
	jne	.L8517
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L8516
.L16053:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L8516
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L8516
.L8513:
	cmpq	$0, 16(%r12)
	jne	.L8521
	movq	8(%r12), %r12
	jmp	.L8516
.L8521:
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.L8522
	movq	%rax, %r12
	jmp	.L8516
.L8522:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L8516
.L8510:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L8506
.L16044:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L8506
.L8503:
	cmpq	$0, 16(%r15)
	jne	.L8511
	movq	8(%r15), %rcx
	movq	%rcx, 1160(%rsp)
	jmp	.L8506
.L8511:
	movq	24(%r15), %r11
	testq	%r11, %r11
	movq	%r11, 1160(%rsp)
	jne	.L8506
	movq	8(%r15), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r8
	movq	%r8, 1160(%rsp)
	jmp	.L8506
.L16043:
	movq	3656(%rsp), %rcx
	movq	1184(%rsp), %r9
	movl	32(%rcx), %eax
	cmpl	%eax, 8(%r9)
	jge	.L8377
	movq	%r12, 1192(%rsp)
	movq	8(%rcx), %r10
	movl	48(%r10), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1180(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 1200(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L8380
	cmpl	$55, %eax
	je	.L16054
	cmpl	$63, %eax
	je	.L8387
	cmpl	$66, %eax
	je	.L8387
.L8383:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L8390
	cmpl	$55, %eax
	je	.L16055
.L8394:
	cmpl	$63, %eax
	je	.L8397
	cmpl	$66, %eax
	je	.L8397
.L8393:
	movq	1184(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L8400
	cmpl	$55, %eax
	je	.L16056
.L8404:
	cmpl	$63, %eax
	je	.L8407
	cmpl	$66, %eax
	je	.L8407
.L8403:
	movq	1200(%rsp), %r8
	cmpw	$55, (%r8)
	jne	.L15283
	movq	1192(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpq	$0, 1184(%rsp)
	je	.L15283
	movq	1184(%rsp), %rdi
	cmpw	$46, (%rdi)
	je	.L16057
.L8413:
	movl	1180(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3624(%rsp)
	testl	%ebp, %ebp
	je	.L14369
.L8499:
	movslq	%ebp,%rax
	movq	%rax, 3616(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L8487
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L8491
	movq	1184(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L8487
.L8491:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16058
.L8492:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16059
.L8493:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L8494
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3624(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L8487
.L8494:
	call	get_last_insn
	movl	$1, %edx
	movq	1184(%rsp), %rsi
	movq	%rax, 3608(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16060
.L8495:
	movq	1200(%rsp), %rdi
	xorl	%eax, %eax
	movq	1192(%rsp), %rsi
	movq	%rbx, %rdx
	movq	3624(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14963
	movq	3608(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L8487:
	movq	3616(%rsp), %rax
	movl	mode_wider_mode(,%rax,4), %ebp
	testl	%ebp, %ebp
	jne	.L8499
.L14369:
	movq	1184(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$3, %ecx
	xorl	%esi, %esi
	movq	1192(%rsp), %rdx
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rdx), %r10
	xorl	%edx, %edx
	movl	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movq	1200(%rsp), %rax
	movq	%r10, (%rsp)
	jmp	.L15157
.L16060:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L8495
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L8495
.L16059:
	xorl	%eax, %eax
	movq	1192(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8487
	jmp	.L8493
.L16058:
	xorl	%eax, %eax
	movq	1200(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8487
	jmp	.L8492
.L16057:
	movl	8(%rdi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1180(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1180(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L8427:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14360
.L8423:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L8423
.L14360:
	testl	%ecx, %ecx
	je	.L8416
	movslq	%ecx,%rcx
	movq	%rcx, %r13
	salq	$4, %r13
	cmpl	$210, 8(%r11,%r13)
	je	.L8425
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L8425
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L8425:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8427
.L8416:
	decl	%r9d
	jg	.L8413
	movq	1192(%rsp), %rcx
	movq	1200(%rsp), %r11
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%r11), %rbx
	movq	8(%rcx), %rdi
	movq	%rcx, 6184(%rsp)
	movl	$0, 6212(%rsp)
	movq	%r11, 6160(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, 6168(%rsp)
	movq	%rdi, 6192(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L8430
	cmpw	$88, %dx
	je	.L8430
	cmpw	$87, %dx
	je	.L8430
.L8429:
	movl	%ecx, 6176(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L8432
	cmpw	$88, %dx
	je	.L8432
	cmpw	$87, %dx
	je	.L8432
.L8431:
	movl	%ecx, 6200(%rsp)
	movl	$0, 6204(%rsp)
	movl	$0, 6180(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L8434
	cmpw	$87, %ax
	je	.L8434
.L8433:
	testl	%edx, %edx
	movl	%edx, 6216(%rsp)
	je	.L8435
	movl	%r10d, 6212(%rsp)
.L8435:
	movl	6200(%rsp), %eax
	movl	%r10d, 6208(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L8437
	movl	6176(%rsp), %eax
	testl	%eax, %eax
	jne	.L8436
.L8437:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1180(%rsp)
	movq	mov_optab(%rip), %r11
	cmovl	1180(%rsp), %ebp
.L8451:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14363
.L8447:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L8447
.L14363:
	testl	%ecx, %ecx
	je	.L8440
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L8449
	movl	mode_size(,%rcx,4), %eax
	movl	$8, %r8d
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r8d, %eax
	cmpl	%eax, %ebp
	jl	.L8449
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L8449:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8451
.L8440:
	cmpl	$2, %r9d
	jle	.L8436
	testl	%r10d, %r10d
	jne	.L8453
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L8454
	cmpw	$46, %dx
	je	.L8454
	cmpw	$47, %dx
	je	.L8454
	cmpw	$49, %dx
	je	.L8454
	cmpw	$113, %dx
	je	.L8454
.L8453:
	movl	6176(%rsp), %esi
	testl	%esi, %esi
	jne	.L8436
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L8456
	cmpw	$46, %dx
	je	.L8456
	cmpw	$47, %dx
	je	.L8456
	cmpw	$49, %dx
	je	.L8456
	cmpw	$113, %dx
	je	.L8456
.L8436:
	cmpl	$8, 1180(%rsp)
	movl	$8, %eax
	cmovl	1180(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1180(%rsp)
	jle	.L8459
.L8481:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r13d, %r13d
	testl	%edx, %edx
	je	.L14366
.L8466:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r13d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L8466
.L14366:
	testl	%r13d, %r13d
	je	.L8459
	movslq	%r13d,%r14
	movq	%r14, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L8468
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1180(%rsp)
	jl	.L8468
	movslq	%edx,%rcx
	cmpl	%ebp, 6208(%rsp)
	leaq	6160(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %r9
	movq	%r9, 3632(%rsp)
	jl	.L8468
	movl	6216(%rsp), %edx
.L8479:
	testl	%edx, %edx
	je	.L8473
	subl	%ebp, 52(%rbx)
.L8473:
	movl	16(%rbx), %r11d
	testl	%r11d, %r11d
	je	.L8474
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15154:
	movl	40(%rbx), %r8d
	movq	%rax, 1168(%rsp)
	testl	%r8d, %r8d
	je	.L8476
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L8477:
	movq	%rax, %rsi
	movq	1168(%rsp), %rdi
	xorl	%eax, %eax
	call	*3632(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L8478
	addl	%ebp, 52(%rbx)
.L8478:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L8479
.L8468:
	movl	mode_size(,%r14,4), %r14d
	cmpl	$1, %r14d
	jg	.L8481
.L8459:
	movl	6208(%rsp), %r14d
	testl	%r14d, %r14d
	jmp	.L15392
.L8476:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L8477
.L8474:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r13d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15154
.L8456:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6168(%rsp)
	jmp	.L8436
.L8454:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6192(%rsp)
	jmp	.L8453
.L8434:
	movl	$1, %edx
	jmp	.L8433
.L8432:
	movl	$1, %ecx
	jmp	.L8431
.L8430:
	movl	$1, %ecx
	jmp	.L8429
.L8407:
	movq	1184(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1184(%rsp), %r10
	movq	%rax, 8(%r10)
	movq	1184(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	1184(%rsp), %r9
	movq	%rax, 16(%r9)
	jmp	.L8403
.L16056:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L8401
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16061
.L8401:
	cmpl	$55, %eax
	jne	.L8404
	movq	1184(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L8403
.L16061:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L8403
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1184(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15153:
	movq	%rbx, 1184(%rsp)
	jmp	.L8403
.L8400:
	movq	1184(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L8408
	movq	8(%rcx), %rbx
	jmp	.L15153
.L8408:
	movq	1184(%rsp), %rcx
	movq	24(%rcx), %rsi
	testq	%rsi, %rsi
	je	.L8409
	movq	%rsi, 1184(%rsp)
	jmp	.L8403
.L8409:
	movq	1184(%rsp), %rdi
	movq	8(%rdi), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	1184(%rsp), %rdx
	movq	%rax, %rdi
	movq	8(%rdx), %rsi
	movq	%rax, 24(%rdx)
	call	gen_move_insn
	movq	1184(%rsp), %r11
	movq	%rax, %rdi
	movq	16(%r11), %rsi
	call	emit_insn_before
	movq	1184(%rsp), %r13
	movq	24(%r13), %rsi
	movq	%rsi, 1184(%rsp)
	jmp	.L8403
.L8397:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L8393
.L16055:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L8391
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16062
.L8391:
	cmpl	$55, %eax
	jne	.L8394
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L8393
.L16062:
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L8393
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 1192(%rsp)
	jmp	.L8393
.L8390:
	cmpq	$0, 16(%r12)
	jne	.L8398
	movq	8(%r12), %r11
	movq	%r11, 1192(%rsp)
	jmp	.L8393
.L8398:
	movq	24(%r12), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 1192(%rsp)
	jne	.L8393
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r8
	movq	%r8, 1192(%rsp)
	jmp	.L8393
.L8387:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L8383
.L16054:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L8383
.L8380:
	cmpq	$0, 16(%r15)
	jne	.L8388
	movq	8(%r15), %r13
	movq	%r13, 1200(%rsp)
	jmp	.L8383
.L8388:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 1200(%rsp)
	jne	.L8383
	movq	8(%r15), %r14
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rbp
	movq	%rbp, 1200(%rsp)
	jmp	.L8383
	.p2align 6,,7
.L8369:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L8365
.L16032:
	jne	.L8366
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L8365
	.p2align 6,,7
.L8362:
	cmpq	$0, 16(%r15)
	jne	.L8370
	movq	8(%r15), %r15
	jmp	.L8365
.L8370:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.L8371
	movq	%rsi, %r15
	jmp	.L8365
.L8371:
	movq	8(%r15), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L8365
	.p2align 6,,7
.L16031:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3656(%rsp), %rdi
	movzbl	2(%r15), %edx
	movq	%rax, %rsi
	jmp	.L15152
.L8341:
	movl	(%r15), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16063
	movzbl	2(%r15), %edx
	movq	3656(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r15, %rsi
	call	expand_expr
	cmpw	$51, (%r15)
	movq	%rax, %r12
	je	.L16064
.L8359:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L8360
	cmpw	$46, %dx
	je	.L8360
	cmpw	$47, %dx
	je	.L8360
	cmpw	$49, %dx
	je	.L8360
	cmpw	$113, %dx
	jne	.L8306
	jmp	.L8360
	.p2align 6,,7
.L16064:
	cmpl	$63, 8(%r15)
	jle	.L8306
	jmp	.L8359
.L16063:
	movq	3656(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	8(%r15), %rdi
	movzbl	3(%r15), %edx
	movq	%rax, %r12
	movq	%rax, %rsi
	xorl	%eax, %eax
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	jmp	.L8305
.L8350:
	movl	$1, %ebx
	jmp	.L8344
.L8342:
	xorl	%ebx, %ebx
	jmp	.L8344
.L8348:
	movq	8(%r15), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L8350
	movq	16(%r15), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L8344
	jmp	.L8350
	.p2align 6,,7
.L16030:
	movzbl	2(%r15), %eax
	cmpb	$16, %al
	je	.L8334
	movl	cse_not_expected(%rip), %r12d
	movq	3656(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r12d, %r12d
	cmove	%r15, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L8360
	testb	%al, %al
	je	.L8360
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15355
	.p2align 6,,7
.L16029:
	cmpb	$16, 2(%r15)
	jne	.L8307
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.L8311
.L14353:
	movzwl	(%r15), %eax
	movq	%r15, %r12
	cmpl	$59, %eax
	je	.L8313
	cmpl	$55, %eax
	je	.L16065
.L8317:
	cmpl	$63, %eax
	je	.L8320
	cmpl	$66, %eax
	je	.L8320
.L8316:
	movq	3656(%rsp), %r15
	xorl	%eax, %eax
	movq	%r13, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r15), %rdi
	call	jumpifnot
	movq	40(%r15), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	%ebp, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L8326
.L14355:
	movq	%r14, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	3656(%rsp), %r13
	movq	%r12, %rsi
	movq	48(%r13), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L8331
.L14357:
	movq	%r14, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L8305
	.p2align 6,,7
.L8331:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rbp
	movq	%rax, 16(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, pending_chain(%rip)
	movq	%rbp, %rbx
	jne	.L8331
	jmp	.L14357
	.p2align 6,,7
.L8326:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L8326
	jmp	.L14355
.L8320:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L8316
.L16065:
	jne	.L8317
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L8316
.L8313:
	cmpq	$0, 16(%r15)
	jne	.L8321
	movq	8(%r15), %r12
	jmp	.L8316
.L8321:
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.L8322
	movq	%rax, %r12
	jmp	.L8316
.L8322:
	movq	8(%r15), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	%rax, 24(%r12)
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r12
	jmp	.L8316
	.p2align 6,,7
.L8311:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L8311
	jmp	.L14353
	.p2align 6,,7
.L16028:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L8303
.L14351:
	movq	3656(%rsp), %rbx
	movq	%r15, %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	movq	40(%rbx), %rdi
	call	store_expr
	movq	%rax, %r12
	jmp	.L8305
.L8303:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L8303
	jmp	.L14351
.L16027:
	movq	16(%rdi), %r11
	cmpw	$46, (%r11)
	jne	.L8296
	movq	8(%rdi), %rax
	cmpq	virtual_incoming_args_rtx(%rip), %rax
	je	.L8295
	cmpq	virtual_stack_vars_rtx(%rip), %rax
	jne	.L8296
	jmp	.L8295
	.p2align 6,,7
.L8288:
	movq	3656(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movl	%r12d, %r9d
	movl	%ebx, %ecx
	movq	56(%rsp), %rdi
	movq	%rax, %r8
	movq	%rax, %r13
	movl	%ebp, %esi
	movl	%r14d, %edx
	xorl	%eax, %eax
	movl	%r15d, (%rsp)
	call	store_bit_field
	movl	1216(%rsp), %eax
	testl	%eax, %eax
	je	.L8290
	movl	1212(%rsp), %eax
	testl	%eax, %eax
	je	.L8291
	movq	56(%rsp), %r9
	movl	(%r9), %eax
	andl	$134283263, %eax
	cmpl	$134217783, %eax
	je	.L8291
	movl	3640(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L8292
	movl	1212(%rsp), %edx
	xorl	%esi, %esi
	movl	$46, %edi
	xorl	%eax, %eax
	call	gen_rtx
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	expand_and
.L15158:
	movq	%rax, 56(%rsp)
	jmp	.L15167
.L8292:
	movzbl	2(%r13), %r12d
	testl	%r12d, %r12d
	cmove	1216(%rsp), %r12d
	xorl	%esi, %esi
	movslq	%r12d,%r14
	movl	mode_size(,%r14,4), %edi
	sall	$3, %edi
	subl	%ebp, %edi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rbp
	movl	%r12d, %esi
	movq	%r13, %rdx
	movq	%rax, %rcx
	movl	$77, %edi
	xorl	%eax, %eax
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movl	$78, %edi
	movl	%r12d, %esi
	movq	%rbp, %rcx
	xorl	%eax, %eax
	call	expand_shift
	jmp	.L15158
.L8291:
	movq	56(%rsp), %rdi
	movl	3640(%rsp), %ecx
	movl	%ebp, %esi
	movl	1216(%rsp), %r9d
	movl	%r14d, %edx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	call	extract_bit_field
	jmp	.L15158
.L8290:
	movq	const0_rtx(%rip), %r13
	movq	%r13, 56(%rsp)
	jmp	.L15167
.L16026:
	movq	56(%rsp), %rcx
	movzwl	(%rcx), %eax
	cmpw	$51, %ax
	je	.L8284
	cmpw	$53, %ax
	jne	.L8283
.L8284:
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %edi
	movslq	%edi,%rdx
	movl	mode_size(,%rdx,4), %esi
	xorl	%edx, %edx
	call	assign_stack_temp
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	copy_rtx
	movq	56(%rsp), %rdx
	movb	$16, 2(%rax)
	movq	%rax, %r13
	movzbq	2(%rdx), %r11
	movl	mode_size(,%r11,4), %eax
	sall	$3, %eax
	cmpl	%eax, %ebp
	je	.L8285
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	call	emit_move_insn
.L8285:
	movq	3656(%rsp), %r8
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	$16, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	call	store_field
	movq	%rbx, %rsi
	movq	56(%rsp), %rdi
	call	emit_move_insn
	jmp	.L15167
.L8280:
	movl	$0, 1216(%rsp)
	jmp	.L8281
.L16025:
	orb	$8, 3(%rsi)
	jmp	.L8278
.L16024:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %r14
	movq	%rax, %rsi
	cmpw	$55, (%r14)
	jne	.L15283
	movl	$4, %edi
	call	force_reg
	movq	56(%rsp), %r13
	movl	$4, %esi
	movq	%rax, %rcx
	movl	$63, %edi
	xorl	%eax, %eax
	movq	8(%r13), %rdx
	call	gen_rtx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	movq	%rax, 56(%rsp)
	jmp	.L8276
.L16023:
	movq	%r12, %rdi
	call	stabilize_reference
	movq	%rax, %r12
	jmp	.L8275
.L16022:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	mode_for_size
	movl	%eax, %r15d
	cmpl	$16, %eax
	cmove	%ebx, %r15d
	jmp	.L8272
	.p2align 6,,7
.L16021:
	movq	40(%r12), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L8266
	movq	8(%r12), %rbx
	movq	32(%rbx), %rax
	cmpb	$25, 16(%rax)
	jne	.L8266
	movl	24(%rax), %eax
	imull	24(%rcx), %eax
	jmp	.L15151
	.p2align 6,,7
.L16016:
	movl	flag_volatile(%rip), %eax
	testl	%eax, %eax
	je	.L8249
	movl	$1, (%r14)
	movzbl	16(%r12), %edx
	jmp	.L8249
.L8244:
	movl	24(%rcx), %eax
	movl	%eax, 5548(%rsp)
	jmp	.L8243
.L16015:
	movq	3664(%rsp), %r11
	movzbl	17(%r11), %edx
	movq	40(%r11), %rcx
	shrb	$6, %dl
	movl	%edx, %ebx
	andl	$1, %ebx
	movl	%ebx, 3640(%rsp)
	jmp	.L8240
.L16014:
	movq	40(%r12), %rax
	testb	$16, 53(%rax)
	movq	40(%rax), %rcx
	jne	.L8239
	movzbl	52(%rax), %r15d
.L8239:
	movzbl	17(%rax), %esi
	shrb	$6, %sil
	movl	%esi, %r10d
	andl	$1, %r10d
	movl	%r10d, 3640(%rsp)
	jmp	.L8240
.L15874:
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, 56(%rsp)
	jmp	.L8235
.L8226:
	movq	32(%r15), %rbx
	cmpb	$33, 16(%rbx)
	jne	.L15283
	cmpq	$0, 56(%rsp)
	jne	.L8228
	movq	120(%rbx), %rax
	testq	%rax, %rax
	je	.L8229
	movq	%rax, 56(%rsp)
	movq	40(%r15), %r8
	testq	%r8, %r8
	je	.L581
.L8232:
	movq	%r8, %rdi
	movq	$0, 40(%r15)
	jmp	.L15405
.L8229:
	movq	5424(%rsp), %rdi
	call	int_size_in_bytes
	xorl	%edx, %edx
	movl	5412(%rsp), %edi
	movl	%eax, %esi
	call	assign_stack_temp
	movq	%rax, 56(%rsp)
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	preserve_temp_slots
	movq	56(%rsp), %rbp
	movq	%rbp, 120(%rbx)
.L15149:
	movq	40(%r15), %r8
	jmp	.L8232
.L8228:
	movq	56(%rsp), %rdx
	movq	%rdx, 120(%rbx)
	jmp	.L15149
.L3790:
	movq	cleanups_this_call(%rip), %rax
	movq	$0, 1928(%rsp)
	movq	$0, 1936(%rsp)
	movq	$0, 1944(%rsp)
	movq	$0, cleanups_this_call(%rip)
	movq	%rax, 4712(%rsp)
	movq	40(%r15), %rdi
	call	integer_onep
	testl	%eax, %eax
	jne	.L16067
.L3791:
	movl	5412(%rsp), %eax
	testl	%eax, %eax
	je	.L3795
	movl	5408(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L3794
.L3795:
	movq	$0, 56(%rsp)
.L3796:
	movq	40(%r15), %rcx
	movq	tree_code_type(%rip), %rdx
	movzbq	16(%rcx), %rbx
	movq	(%rdx,%rbx,8), %rbp
	cmpb	$50, (%rbp)
	je	.L16068
.L3857:
	movq	48(%r15), %rcx
	movzbq	16(%rcx), %r8
	movq	(%rdx,%r8,8), %r12
	cmpb	$50, (%r12)
	je	.L16069
.L3859:
	movq	40(%r15), %rcx
	movzbq	16(%rcx), %r9
	movq	(%rdx,%r9,8), %rdi
	cmpb	$49, (%rdi)
	je	.L16070
.L3861:
	movq	48(%r15), %rcx
	movzbq	16(%rcx), %r13
	movq	(%rdx,%r13,8), %r14
	cmpb	$49, (%r14)
	je	.L16071
.L3858:
	cmpq	$0, 1928(%rsp)
	je	.L3864
	cmpq	$0, 1936(%rsp)
	je	.L3864
	movq	32(%r15), %rcx
	testb	$1, 17(%rcx)
	jne	.L3864
	movq	1936(%rsp), %rax
	movzbl	16(%rax), %edx
	leal	-53(%rdx), %r12d
	cmpb	$1, %r12b
	jbe	.L3865
	cmpb	$81, %dl
	je	.L3865
	cmpb	$82, %dl
	je	.L3865
	cmpb	$83, %dl
	je	.L3865
.L3864:
	incl	inhibit_defer_pop(%rip)
	call	gen_label_rtx
	cmpq	$0, 1928(%rsp)
	movq	%rax, 1920(%rsp)
	je	.L3932
	movq	32(%r15), %rbp
	testb	$1, 17(%rbp)
	jne	.L3932
	cmpq	$0, 56(%rsp)
	je	.L3933
	cmpq	$0, 1936(%rsp)
	je	.L3936
	movq	1936(%rsp), %rax
	movq	56(%rsp), %r12
	xorl	%r13d, %r13d
	movq	40(%rax), %rbx
	movzwl	(%r12), %eax
	cmpw	$53, %ax
	je	.L16072
	movl	%eax, %ecx
.L3939:
	cmpw	$55, %cx
	je	.L16073
.L3941:
	movzbl	16(%rbx), %edx
	movzbl	%dl, %edi 
	salq	$3, %rdi
	addq	tree_code_type(%rip), %rdi
	movq	(%rdi), %r10
	movsbl	(%r10),%eax
	subl	$49, %eax
	cmpl	$71, %eax
	ja	.L3943
	mov	%eax, %r9d
	jmp	*.L3982(,%r9,8)
	.section	.rodata
	.align 8
	.align 4
.L3982:
	.quad	.L3952
	.quad	.L3954
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3954
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3988
	.quad	.L3944
	.quad	.L3957
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3957
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3943
	.quad	.L3946
	.text
.L3944:
	movq	120(%rbx), %r13
.L3943:
	movl	$1, %ebp
.L15066:
	testq	%r13, %r13
	je	.L3938
.L14863:
	cmpw	$53, (%r13)
	je	.L16074
.L3985:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.L3938
	cmpw	$55, (%r12)
	je	.L16075
.L3988:
	movl	$1, %ebp
.L3938:
	testl	%ebp, %ebp
	je	.L3935
.L3936:
	movq	56(%rsp), %r8
	cmpw	$51, (%r8)
	je	.L16076
.L3934:
	movq	56(%rsp), %r13
	movq	1928(%rsp), %rdx
	xorl	%ebp, %ebp
	movq	%r13, 1856(%rsp)
	movzbl	16(%rdx), %eax
	cmpb	$44, %al
	je	.L16077
	cmpb	$48, %al
	je	.L16078
.L3997:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L4024
	movq	56(%rsp), %rcx
	cmpw	$55, (%rcx)
	je	.L16079
.L4024:
	movq	56(%rsp), %rsi
	movzwl	(%rsi), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L4032
	mov	%eax, %edi
	jmp	*.L4041(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L4041:
	.quad	.L4035
	.quad	.L4032
	.quad	.L4032
	.quad	.L4032
	.quad	.L4040
	.quad	.L4032
	.quad	.L4032
	.quad	.L4032
	.quad	.L4038
	.quad	.L4038
	.quad	.L4032
	.quad	.L4038
	.text
.L4035:
	movq	56(%rsp), %rax
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L4034:
	testl	%ebx, %ebx
	je	.L4031
	movq	56(%rsp), %rcx
	movzbl	2(%rcx), %eax
	cmpb	$16, %al
	je	.L4043
	testb	%al, %al
	jne	.L16080
.L4043:
	movq	56(%rsp), %r14
	movq	1928(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%r14), %edx
.L15069:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15333:
	movq	%rax, %r12
.L4050:
	movl	$1, %ebp
.L3996:
	cmpq	56(%rsp), %r12
	je	.L4443
	movq	1928(%rsp), %rsi
	cmpb	$0, 16(%rsi)
	je	.L4443
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L4052
	cmpl	$55, %eax
	je	.L16081
.L4056:
	cmpl	$63, %eax
	je	.L4059
	cmpl	$66, %eax
	je	.L4059
.L4055:
	movq	1856(%rsp), %rbx
	movzbl	2(%r12), %eax
	movzbl	2(%rbx), %ecx
	cmpb	%cl, %al
	je	.L4062
	testb	%al, %al
	je	.L4062
	movq	1928(%rsp), %r8
	movq	8(%r8), %r13
	movzbl	17(%r13), %edi
	shrb	$6, %dil
	movl	%edi, %edx
	andl	$1, %edx
	testl	%ebp, %ebp
	je	.L4063
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rbx, %rdi
	movq	%rax, %rsi
.L15076:
	call	emit_move_insn
.L4443:
	cmpq	$0, cleanups_this_call(%rip)
	jne	.L16082
.L4448:
	movq	1928(%rsp), %r11
	cmpq	40(%r15), %r11
	je	.L16083
	movq	32(%r15), %rdi
	movq	1920(%rsp), %rsi
	xorl	%eax, %eax
	call	jumpifnot
.L4450:
	cmpq	$0, 1936(%rsp)
	je	.L4457
	cmpq	$0, 56(%rsp)
	jne	.L4451
	movq	1936(%rsp), %rax
	movl	5408(%rsp), %r15d
	xorl	%esi, %esi
	addq	$40, %rax
	testl	%r15d, %r15d
	je	.L4455
	movq	const0_rtx(%rip), %rsi
.L4455:
	movq	(%rax), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L6845:
	movq	1920(%rsp), %r12
	movq	%r12, 1312(%rsp)
.L5367:
	cmpq	$0, cleanups_this_call(%rip)
	jne	.L16084
.L8220:
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L8224
.L14349:
	movq	1312(%rsp), %rdi
	call	emit_label
	movq	4712(%rsp), %rbx
	decl	inhibit_defer_pop(%rip)
	movq	%rbx, cleanups_this_call(%rip)
	jmp	.L581
.L8224:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L8224
	jmp	.L14349
.L16084:
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	sorry
	movq	$0, cleanups_this_call(%rip)
	jmp	.L8220
.L4451:
	movq	5424(%rsp), %rdi
	movq	56(%rsp), %rsi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	call	make_tree
	movq	5424(%rsp), %rsi
	movq	1936(%rsp), %r13
	movq	%rax, %rdx
	xorl	%eax, %eax
	movzbl	16(%r13), %edi
	movq	40(%r13), %rcx
	call	build
	movq	56(%rsp), %r15
	movq	%rax, 4584(%rsp)
	movq	%rax, %rsi
	movzbl	16(%rax), %eax
	cmpb	$44, %al
	je	.L16085
	cmpb	$48, %al
	je	.L16086
.L4466:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L4493
	movq	56(%rsp), %rdx
	cmpw	$55, (%rdx)
	je	.L16087
.L4493:
	movq	56(%rsp), %rsi
	movzwl	(%rsi), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L4501
	mov	%eax, %r14d
	jmp	*.L4510(,%r14,8)
	.section	.rodata
	.align 8
	.align 4
.L4510:
	.quad	.L4504
	.quad	.L4501
	.quad	.L4501
	.quad	.L4501
	.quad	.L4509
	.quad	.L4501
	.quad	.L4501
	.quad	.L4501
	.quad	.L4507
	.quad	.L4507
	.quad	.L4501
	.quad	.L4507
	.text
.L4504:
	movq	56(%rsp), %rax
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L4503:
	testl	%ebx, %ebx
	je	.L4500
	movq	56(%rsp), %r11
	movzbl	2(%r11), %eax
	cmpb	$16, %al
	je	.L4512
	testb	%al, %al
	jne	.L16088
.L4512:
	movq	56(%rsp), %rcx
	movq	4584(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%rcx), %edx
.L15078:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15334:
	movq	%rax, %r12
.L4519:
	movl	$1, %ebp
.L4465:
	cmpq	56(%rsp), %r12
	je	.L6845
	movq	4584(%rsp), %rbx
	cmpb	$0, 16(%rbx)
	je	.L6845
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L4521
	cmpl	$55, %eax
	je	.L16089
.L4525:
	cmpl	$63, %eax
	je	.L4528
	cmpl	$66, %eax
	je	.L4528
.L4524:
	movzbl	2(%r12), %eax
	movzbl	2(%r15), %ecx
	cmpb	%cl, %al
	je	.L4531
	testb	%al, %al
	je	.L4531
	movq	4584(%rsp), %rbx
.L15416:
	movq	8(%rbx), %r11
	movzbl	17(%r11), %esi
	shrb	$6, %sil
	movl	%esi, %edx
	andl	$1, %edx
	testl	%ebp, %ebp
	je	.L6913
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%r15, %rdi
	movq	%rax, %rsi
.L15130:
	call	emit_move_insn
	jmp	.L6845
.L6913:
	movq	%r15, %rdi
	movq	%r12, %rsi
.L15131:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L6845
.L4531:
	cmpb	$16, %al
	je	.L16090
.L7168:
	movq	%r15, %rdi
	movq	%r12, %rsi
	jmp	.L15130
.L16090:
	movq	4584(%rsp), %rsi
	cmpb	$28, 16(%rsi)
	je	.L16091
	cmpb	$16, %al
	jne	.L7168
	movq	4584(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	4584(%rsp), %rdi
	movq	%rax, %r13
	movq	8(%rdi), %rbx
	movl	48(%rbx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1788(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L4790
	cmpl	$55, %eax
	je	.L16092
.L4794:
	cmpl	$63, %eax
	je	.L4797
	cmpl	$66, %eax
	je	.L4797
.L4793:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L4800
	cmpl	$55, %eax
	je	.L16093
.L4804:
	cmpl	$63, %eax
	je	.L4807
	cmpl	$66, %eax
	je	.L4807
.L4803:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L4810
	cmpl	$55, %eax
	je	.L16094
.L4814:
	cmpl	$63, %eax
	je	.L4817
	cmpl	$66, %eax
	je	.L4817
.L4813:
	cmpw	$55, (%r15)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L16095
.L4823:
	movl	1788(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4512(%rsp)
	testl	%ebp, %ebp
	je	.L14257
.L4909:
	movslq	%ebp,%rax
	movq	%rax, 4504(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L4897
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L4901
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L4897
.L4901:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %r14
	movq	%rdi, 4496(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16096
.L4902:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16097
.L4903:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L4904
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4512(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L4897
.L4904:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 4488(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16098
.L4905:
	movq	4496(%rsp), %rbp
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4512(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14954
	movq	4488(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L4897:
	movq	4504(%rsp), %r14
	movl	mode_wider_mode(,%r14,4), %ebp
	testl	%ebp, %ebp
	jne	.L4909
.L14257:
	movl	$4, %edi
	movq	%r13, %rsi
.L15129:
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %r13
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r13, (%rsp)
	movq	8(%r15), %r8
	call	emit_library_call
	jmp	.L6845
.L14954:
	call	emit_insn
	jmp	.L6845
.L16098:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L4905
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L4905
.L16097:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4897
	jmp	.L4903
.L16096:
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4897
	jmp	.L4902
.L16095:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1788(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1788(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L4837:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14026
.L4833:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L4833
.L14026:
	testl	%ecx, %ecx
	je	.L4826
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L4835
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L4835
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L4835:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4837
.L4826:
	decl	%r9d
	jg	.L4823
	movq	8(%r15), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 7144(%rsp)
	movl	$0, 7172(%rsp)
	movq	%r15, 7120(%rsp)
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	%rbx, 7128(%rsp)
	movq	%rdi, 7152(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L4840
	cmpw	$88, %dx
	je	.L4840
	cmpw	$87, %dx
	je	.L4840
.L4839:
	movl	%ecx, 7136(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L4842
	cmpw	$88, %dx
	je	.L4842
	cmpw	$87, %dx
	je	.L4842
.L4841:
	movl	%ecx, 7160(%rsp)
	movl	$0, 7164(%rsp)
	movl	$0, 7140(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L4844
	cmpw	$87, %ax
	je	.L4844
.L4843:
	testl	%edx, %edx
	movl	%edx, 7176(%rsp)
	je	.L4845
	movl	%r10d, 7172(%rsp)
.L4845:
	movl	%r10d, 7168(%rsp)
	movl	7160(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L4847
	movl	7136(%rsp), %eax
	testl	%eax, %eax
	jne	.L4846
.L4847:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1788(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1788(%rsp), %ebp
.L4861:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14029
.L4857:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L4857
.L14029:
	testl	%ecx, %ecx
	je	.L4850
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L4859
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L4859
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L4859:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4861
.L4850:
	cmpl	$2, %r9d
	jle	.L4846
	testl	%r10d, %r10d
	jne	.L4863
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L4864
	cmpw	$46, %dx
	je	.L4864
	cmpw	$47, %dx
	je	.L4864
	cmpw	$49, %dx
	je	.L4864
	cmpw	$113, %dx
	je	.L4864
.L4863:
	movl	7136(%rsp), %eax
	testl	%eax, %eax
	jne	.L4846
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L4866
	cmpw	$46, %dx
	je	.L4866
	cmpw	$47, %dx
	je	.L4866
	cmpw	$49, %dx
	je	.L4866
	cmpw	$113, %dx
	je	.L4866
.L4846:
	cmpl	$8, 1788(%rsp)
	movl	$8, %eax
	cmovl	1788(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1788(%rsp)
	jle	.L4869
.L4891:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14032
.L4876:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L4876
.L14032:
	testl	%r12d, %r12d
	je	.L4869
	movslq	%r12d,%r13
	movq	%r13, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L4878
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1788(%rsp)
	jl	.L4878
	cmpl	%ebp, 7168(%rsp)
	movslq	%edx,%r10
	leaq	7120(%rsp), %rbx
	movq	insn_gen_function(,%r10,8), %r15
	jl	.L4878
	movl	7176(%rsp), %edx
.L4889:
	testl	%edx, %edx
	je	.L4883
	subl	%ebp, 52(%rbx)
.L4883:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L4884
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15082:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L4886
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L4887:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r15
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L4888
	addl	%ebp, 52(%rbx)
.L4888:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L4889
.L4878:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L4891
.L4869:
	movl	7168(%rsp), %eax
	testl	%eax, %eax
.L15389:
	je	.L6845
	jmp	.L15283
.L4886:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L4887
.L4884:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15082
.L4866:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7128(%rsp)
	jmp	.L4846
.L4864:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7152(%rsp)
	jmp	.L4863
.L4844:
	movl	$1, %edx
	jmp	.L4843
.L4842:
	movl	$1, %ecx
	jmp	.L4841
.L4840:
	movl	$1, %ecx
	jmp	.L4839
.L4817:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L4813
.L16094:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L4811
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L16099
.L4811:
	cmpl	$55, %eax
	jne	.L4814
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L4813
.L16099:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L4813
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4813
.L4810:
	cmpq	$0, 16(%r13)
	jne	.L4818
	movq	8(%r13), %r13
	jmp	.L4813
.L4818:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L4819
	movq	%rsi, %r13
	jmp	.L4813
.L4819:
	movq	8(%r13), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L4813
.L4807:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L4803
.L16093:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L4801
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16100
.L4801:
	cmpl	$55, %eax
	jne	.L4804
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L4803
.L16100:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L4803
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4803
.L4800:
	cmpq	$0, 16(%r12)
	jne	.L4808
	movq	8(%r12), %r12
	jmp	.L4803
.L4808:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L4809
	movq	%rsi, %r12
	jmp	.L4803
.L4809:
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L4803
.L4797:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L4793
.L16092:
	jne	.L4794
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L4793
.L4790:
	cmpq	$0, 16(%r15)
	jne	.L4798
	movq	8(%r15), %r15
	jmp	.L4793
.L4798:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.L4799
	movq	%rdi, %r15
	jmp	.L4793
.L4799:
	movq	8(%r15), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L4793
.L16091:
	xorl	%eax, %eax
	movq	%rsi, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1840(%rsp)
	je	.L16101
.L4536:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	4584(%rsp), %r9
	movq	%rax, %rdx
	movq	8(%r9), %rcx
	movq	32(%rcx), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	4584(%rsp), %r11
	movq	%rax, %r14
	movl	32(%r11), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r14, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	4584(%rsp), %r13
	movq	$0, 1792(%rsp)
	movq	%rax, 1816(%rsp)
	movq	%rax, %r14
	movq	8(%r13), %rbp
	movl	48(%rbp), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1812(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 1824(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L4662
	cmpl	$55, %eax
	je	.L16102
	cmpl	$63, %eax
	je	.L4669
	cmpl	$66, %eax
	je	.L4669
.L4665:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L4672
	cmpl	$55, %eax
	je	.L16103
.L4676:
	cmpl	$63, %eax
	je	.L4679
	cmpl	$66, %eax
	je	.L4679
.L4675:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L4682
	cmpl	$55, %eax
	je	.L16104
.L4686:
	cmpl	$63, %eax
	je	.L4689
	cmpl	$66, %eax
	je	.L4689
.L4685:
	movq	1824(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1816(%rsp)
	je	.L15283
	movq	1816(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L16105
.L4695:
	movl	1812(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4544(%rsp)
	testl	%ebp, %ebp
	je	.L14023
.L4781:
	movslq	%ebp,%r8
	movq	%r8, %rax
	movq	%r8, 4536(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L4769
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L4773
	movq	1816(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L4769
.L4773:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r13
	movq	%r10, 4528(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16106
.L4774:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16107
.L4775:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L4776
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4544(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L4769
.L4776:
	call	get_last_insn
	movl	$1, %edx
	movq	1816(%rsp), %rsi
	movq	%rax, 4520(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16108
.L4777:
	movq	4528(%rsp), %rbp
	movq	1824(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4544(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14936
	movq	4520(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L4769:
	movq	4536(%rsp), %rsi
	movl	mode_wider_mode(,%rsi,4), %ebp
	testl	%ebp, %ebp
	jne	.L4781
.L14023:
	movq	1816(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movq	1824(%rsp), %r9
	xorl	%edx, %edx
	movq	8(%r12), %rcx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%eax, %eax
	movq	%rcx, (%rsp)
	movq	8(%r9), %r8
	movl	$3, %ecx
	movl	$4, %r9d
	call	emit_library_call
.L4779:
	cmpw	$46, (%r14)
	je	.L16109
	movq	8(%r15), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1840(%rsp), %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1792(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L4783:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L4784
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L4784:
	cmpq	$0, 1792(%rsp)
	je	.L6845
	movq	1792(%rsp), %rdi
.L15348:
	call	emit_label
	jmp	.L6845
.L16109:
	movq	4584(%rsp), %r14
	movq	8(%r15), %rdi
	movl	32(%r14), %esi
	call	plus_constant_wide
	movq	1840(%rsp), %rdi
	movq	4584(%rsp), %r15
	movq	%rax, %rbp
	movl	32(%r15), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L4783
.L14936:
	call	emit_insn
	jmp	.L4779
.L16108:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L4777
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L4777
.L16107:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4769
	jmp	.L4775
.L16106:
	xorl	%eax, %eax
	movq	1824(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4769
	jmp	.L4774
.L16105:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1812(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1812(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L4709:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14014
.L4705:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L4705
.L14014:
	testl	%ecx, %ecx
	je	.L4698
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L4707
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L4707
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L4707:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4709
.L4698:
	decl	%r9d
	jg	.L4695
	movq	1824(%rsp), %rdx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movq	8(%rdx), %rbx
	movq	%r12, 7144(%rsp)
	movq	%rdx, 7120(%rsp)
	movl	$0, 7172(%rsp)
	movq	%rdi, 7152(%rsp)
	movl	$9, 1808(%rsp)
	movq	%rbx, 7128(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L4712
	cmpw	$88, %dx
	je	.L4712
	cmpw	$87, %dx
	je	.L4712
.L4711:
	movl	%ecx, 7136(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L4714
	cmpw	$88, %dx
	je	.L4714
	cmpw	$87, %dx
	je	.L4714
.L4713:
	movl	%ecx, 7160(%rsp)
	movl	$0, 7164(%rsp)
	movl	$0, 7140(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L4716
	cmpw	$87, %ax
	je	.L4716
.L4715:
	testl	%edx, %edx
	movl	%edx, 7176(%rsp)
	je	.L4717
	movl	%r10d, 7172(%rsp)
.L4717:
	movl	%r10d, 7168(%rsp)
	movl	7160(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L4719
	movl	7136(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L4718
.L4719:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1812(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1812(%rsp), %ebp
.L4733:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14017
.L4729:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L4729
.L14017:
	testl	%ecx, %ecx
	je	.L4722
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L4731
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L4731
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L4731:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4733
.L4722:
	cmpl	$2, %r9d
	jle	.L4718
	testl	%r10d, %r10d
	jne	.L4735
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L4736
	cmpw	$46, %dx
	je	.L4736
	cmpw	$47, %dx
	je	.L4736
	cmpw	$49, %dx
	je	.L4736
	cmpw	$113, %dx
	je	.L4736
.L4735:
	movl	7136(%rsp), %esi
	testl	%esi, %esi
	jne	.L4718
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L4738
	cmpw	$46, %dx
	je	.L4738
	cmpw	$47, %dx
	je	.L4738
	cmpw	$49, %dx
	je	.L4738
	cmpw	$113, %dx
	je	.L4738
.L4718:
	cmpl	$8, 1812(%rsp)
	movl	$8, %eax
	cmovl	1812(%rsp), %eax
	cmpl	$1, 1808(%rsp)
	movl	%eax, 1812(%rsp)
	jle	.L4741
.L4763:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14020
.L4748:
	movslq	%edx,%rbx
	movl	1808(%rsp), %r9d
	salq	$2, %rbx
	cmpl	%r9d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L4748
.L14020:
	testl	%r12d, %r12d
	je	.L4741
	movslq	%r12d,%r13
	movq	%r13, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L4750
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1812(%rsp)
	jl	.L4750
	movslq	%edx,%r11
	cmpl	%ebp, 7168(%rsp)
	leaq	7120(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %rdx
	movq	%rdx, 4552(%rsp)
	jl	.L4750
	movl	7176(%rsp), %edx
.L4761:
	testl	%edx, %edx
	je	.L4755
	subl	%ebp, 52(%rbx)
.L4755:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L4756
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15081:
	movq	%rax, 1800(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L4758
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L4759:
	movq	%rax, %rsi
	movq	1800(%rsp), %rdi
	xorl	%eax, %eax
	call	*4552(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L4760
	addl	%ebp, 52(%rbx)
.L4760:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L4761
.L4750:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 1808(%rsp)
	decl	%r12d
	jg	.L4763
.L4741:
	movl	7168(%rsp), %eax
	testl	%eax, %eax
	je	.L4779
	jmp	.L15283
.L4758:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L4759
.L4756:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15081
.L4738:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7128(%rsp)
	jmp	.L4718
.L4736:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7152(%rsp)
	jmp	.L4735
.L4716:
	movl	$1, %edx
	jmp	.L4715
.L4714:
	movl	$1, %ecx
	jmp	.L4713
.L4712:
	movl	$1, %ecx
	jmp	.L4711
.L4689:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L4685
.L16104:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L4683
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16110
.L4683:
	cmpl	$55, %eax
	jne	.L4686
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L4685
.L16110:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L4685
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 1816(%rsp)
	jmp	.L4685
.L4682:
	cmpq	$0, 16(%r14)
	jne	.L4690
	movq	8(%r14), %rbp
	movq	%rbp, 1816(%rsp)
	jmp	.L4685
.L4690:
	movq	24(%r14), %r11
	testq	%r11, %r11
	movq	%r11, 1816(%rsp)
	jne	.L4685
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rcx
	movq	%rcx, 1816(%rsp)
	jmp	.L4685
.L4679:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L4675
.L16103:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L4673
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16111
.L4673:
	cmpl	$55, %eax
	jne	.L4676
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L4675
.L16111:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L4675
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4675
.L4672:
	cmpq	$0, 16(%r12)
	jne	.L4680
	movq	8(%r12), %r12
	jmp	.L4675
.L4680:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L4681
	movq	%rsi, %r12
	jmp	.L4675
.L4681:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L4675
.L4669:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L4665
.L16102:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L4665
.L4662:
	cmpq	$0, 16(%r15)
	jne	.L4670
	movq	8(%r15), %rax
	movq	%rax, 1824(%rsp)
	jmp	.L4665
.L4670:
	movq	24(%r15), %r10
	testq	%r10, %r10
	movq	%r10, 1824(%rsp)
	jne	.L4665
	movq	8(%r15), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rsi
	movq	%rsi, 1824(%rsp)
	jmp	.L4665
.L16101:
	movq	4584(%rsp), %rdi
	movq	1840(%rsp), %rbp
	movl	32(%rdi), %eax
	cmpl	%eax, 8(%rbp)
	jge	.L4536
	movq	8(%rdi), %r10
	movl	48(%r10), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1836(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L4539
	cmpl	$55, %eax
	je	.L16112
.L4543:
	cmpl	$63, %eax
	je	.L4546
	cmpl	$66, %eax
	je	.L4546
.L4542:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L4549
	cmpl	$55, %eax
	je	.L16113
.L4553:
	cmpl	$63, %eax
	je	.L4556
	cmpl	$66, %eax
	je	.L4556
.L4552:
	movq	1840(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L4559
	cmpl	$55, %eax
	je	.L16114
.L4563:
	cmpl	$63, %eax
	je	.L4566
	cmpl	$66, %eax
	je	.L4566
.L4562:
	cmpw	$55, (%r15)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1840(%rsp)
	je	.L15283
	movq	1840(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L16115
.L4572:
	movl	1836(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4576(%rsp)
	testl	%ebp, %ebp
	je	.L14011
.L4658:
	movslq	%ebp,%rax
	movq	%rax, 4568(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L4646
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L4650
	movq	1840(%rsp), %rdi
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%rdi)
	ja	.L4646
.L4650:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16116
.L4651:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16117
.L4652:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L4653
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4576(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L4646
.L4653:
	call	get_last_insn
	movl	$1, %edx
	movq	1840(%rsp), %rsi
	movq	%rax, 4560(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16118
.L4654:
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4576(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14954
	movq	4560(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L4646:
	movq	4568(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L4658
.L14011:
	movq	1840(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15129
.L16118:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L4654
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L4654
.L16117:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4646
	jmp	.L4652
.L16116:
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4646
	jmp	.L4651
.L16115:
	movl	8(%rbx), %r10d
	xorl	%r9d, %r9d
	movl	$9, %r8d
	cmpl	$8, 1836(%rsp)
	movl	$8, %ebx
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1836(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L4586:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14002
.L4582:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L4582
.L14002:
	testl	%ecx, %ecx
	je	.L4575
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L4584
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L4584
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L4584:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4586
.L4575:
	decl	%r9d
	jg	.L4572
	movq	8(%r15), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 7208(%rsp)
	movl	$0, 7236(%rsp)
	movq	%r15, 7184(%rsp)
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	%rbx, 7192(%rsp)
	movq	%rdi, 7216(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L4589
	cmpw	$88, %dx
	je	.L4589
	cmpw	$87, %dx
	je	.L4589
.L4588:
	movl	%ecx, 7200(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L4591
	cmpw	$88, %dx
	je	.L4591
	cmpw	$87, %dx
	je	.L4591
.L4590:
	movl	%ecx, 7224(%rsp)
	movl	$0, 7228(%rsp)
	movl	$0, 7204(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L4593
	cmpw	$87, %ax
	je	.L4593
.L4592:
	testl	%edx, %edx
	movl	%edx, 7240(%rsp)
	je	.L4594
	movl	%r10d, 7236(%rsp)
.L4594:
	movl	%r10d, 7232(%rsp)
	movl	7224(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L4596
	movl	7200(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L4595
.L4596:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1836(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1836(%rsp), %ebp
.L4610:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14005
.L4606:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L4606
.L14005:
	testl	%ecx, %ecx
	je	.L4599
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L4608
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L4608
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L4608:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4610
.L4599:
	cmpl	$2, %r9d
	jle	.L4595
	testl	%r10d, %r10d
	jne	.L4612
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L4613
	cmpw	$46, %dx
	je	.L4613
	cmpw	$47, %dx
	je	.L4613
	cmpw	$49, %dx
	je	.L4613
	cmpw	$113, %dx
	je	.L4613
.L4612:
	movl	7200(%rsp), %eax
	testl	%eax, %eax
	jne	.L4595
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L4615
	cmpw	$46, %dx
	je	.L4615
	cmpw	$47, %dx
	je	.L4615
	cmpw	$49, %dx
	je	.L4615
	cmpw	$113, %dx
	je	.L4615
.L4595:
	cmpl	$8, 1836(%rsp)
	movl	$8, %eax
	cmovl	1836(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1836(%rsp)
	jle	.L4618
.L4640:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14008
.L4625:
	movslq	%edx,%r9
	salq	$2, %r9
	cmpl	%r14d, mode_size(%r9)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%r9), %edx
	testl	%edx, %edx
	jne	.L4625
.L14008:
	testl	%r12d, %r12d
	je	.L4618
	movslq	%r12d,%r13
	movq	%r13, %r10
	salq	$4, %r10
	addq	mov_optab(%rip), %r10
	movl	8(%r10), %edx
	cmpl	$210, %edx
	je	.L4627
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1836(%rsp)
	jl	.L4627
	cmpl	%ebp, 7232(%rsp)
	movslq	%edx,%rbx
	movq	insn_gen_function(,%rbx,8), %r15
	leaq	7184(%rsp), %rbx
	jl	.L4627
	movl	7240(%rsp), %edx
.L4638:
	testl	%edx, %edx
	je	.L4632
	subl	%ebp, 52(%rbx)
.L4632:
	movl	16(%rbx), %r14d
	testl	%r14d, %r14d
	je	.L4633
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15080:
	movl	40(%rbx), %esi
	movq	%rax, %r14
	testl	%esi, %esi
	je	.L4635
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L4636:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r15
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L4637
	addl	%ebp, 52(%rbx)
.L4637:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L4638
.L4627:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L4640
.L4618:
	movl	7232(%rsp), %r8d
	testl	%r8d, %r8d
	jmp	.L15389
.L4635:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L4636
.L4633:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15080
.L4615:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7192(%rsp)
	jmp	.L4595
.L4613:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7216(%rsp)
	jmp	.L4612
.L4593:
	movl	$1, %edx
	jmp	.L4592
.L4591:
	movl	$1, %ecx
	jmp	.L4590
.L4589:
	movl	$1, %ecx
	jmp	.L4588
.L4566:
	movq	1840(%rsp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1840(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	1840(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	1840(%rsp), %r11
	movq	%rax, 16(%r11)
	jmp	.L4562
.L16114:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L4560
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16119
.L4560:
	cmpl	$55, %eax
	jne	.L4563
	movq	1840(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L4562
.L16119:
	movq	8(%rbp), %r13
	movq	%r13, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L4562
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1840(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15079:
	movq	%rbx, 1840(%rsp)
	jmp	.L4562
.L4559:
	movq	1840(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L4567
	movq	8(%rcx), %rbx
	jmp	.L15079
.L4567:
	movq	1840(%rsp), %r9
	movq	24(%r9), %rsi
	testq	%rsi, %rsi
	je	.L4568
	movq	%rsi, 1840(%rsp)
	jmp	.L4562
.L4568:
	movq	1840(%rsp), %rdx
	movq	8(%rdx), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	1840(%rsp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	1840(%rsp), %rbx
	movq	%rax, %rdi
	movq	16(%rbx), %rsi
	call	emit_insn_before
	movq	1840(%rsp), %r10
	movq	24(%r10), %rdi
	movq	%rdi, 1840(%rsp)
	jmp	.L4562
.L4556:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L4552
.L16113:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L4550
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16120
.L4550:
	cmpl	$55, %eax
	jne	.L4553
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L4552
.L16120:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L4552
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4552
.L4549:
	cmpq	$0, 16(%r12)
	jne	.L4557
	movq	8(%r12), %r12
	jmp	.L4552
.L4557:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L4558
	movq	%rsi, %r12
	jmp	.L4552
.L4558:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L4552
.L4546:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L4542
.L16112:
	jne	.L4543
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L4542
.L4539:
	cmpq	$0, 16(%r15)
	jne	.L4547
	movq	8(%r15), %r15
	jmp	.L4542
.L4547:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.L4548
	movq	%rdi, %r15
	jmp	.L4542
.L4548:
	movq	8(%r15), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L4542
.L4528:
	movq	56(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %rdx
	movq	%rax, 8(%rdx)
	movq	56(%rsp), %r14
	movq	16(%r14), %rdi
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L4524
.L16089:
	jne	.L4525
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L4524
.L4521:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L4529
	movq	8(%rcx), %r15
	jmp	.L4524
.L4529:
	movq	56(%rsp), %r11
	movq	24(%r11), %r13
	testq	%r13, %r13
	movq	%r13, %r15
	jne	.L4524
	movq	56(%rsp), %r9
	movq	8(%r9), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r15
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	16(%rcx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %rdi
	movq	24(%rdi), %r15
	jmp	.L4524
	.p2align 6,,7
.L16088:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	56(%rsp), %rdi
	movq	%rax, %rsi
	movzbl	2(%rdi), %edx
	movq	4584(%rsp), %rdi
	jmp	.L15078
.L4500:
	movq	56(%rsp), %r8
	movl	(%r8), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16121
	movq	56(%rsp), %r9
	movq	4584(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%r9), %edx
	movq	%r9, %rsi
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L16122
.L4518:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L4519
	cmpw	$46, %dx
	je	.L4519
	cmpw	$47, %dx
	je	.L4519
	cmpw	$49, %dx
	je	.L4519
	cmpw	$113, %dx
	jne	.L4465
	jmp	.L4519
.L16122:
	cmpl	$63, 8(%rdx)
	jle	.L4465
	jmp	.L4518
	.p2align 6,,7
.L16121:
	movq	4584(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %r15
	movq	%rax, %rsi
	movzbl	3(%r15), %edx
	movq	%r15, %r8
	shrb	$2, %dl
	andl	$1, %edx
.L15415:
	movq	8(%r8), %rdi
	jmp	.L15131
.L4509:
	movl	$1, %ebx
	jmp	.L4503
.L4501:
	xorl	%ebx, %ebx
	jmp	.L4503
.L4507:
	movq	56(%rsp), %rdx
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	8(%rdx), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L4509
	movq	56(%rsp), %r13
	xorl	%eax, %eax
	movq	16(%r13), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L4503
	jmp	.L4509
	.p2align 6,,7
.L16087:
	movzbl	2(%rdx), %eax
	cmpb	$16, %al
	je	.L4493
	movl	cse_not_expected(%rip), %ebx
	movq	4584(%rsp), %rdi
	xorl	%esi, %esi
	testl	%ebx, %ebx
	cmove	%rdx, %rsi
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L4519
	testb	%al, %al
	je	.L4519
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15334
	.p2align 6,,7
.L16086:
	movq	56(%rsp), %rbx
	cmpb	$16, 2(%rbx)
	jne	.L4466
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r12
	testq	%rbx, %rbx
	jne	.L4470
.L13995:
	movq	56(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L4472
	cmpl	$55, %eax
	je	.L16123
.L4476:
	cmpl	$63, %eax
	je	.L4479
	cmpl	$66, %eax
	je	.L4479
.L4475:
	movq	4584(%rsp), %r8
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r8), %rdi
	call	jumpifnot
	movq	4584(%rsp), %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	40(%rcx), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L4485
.L13997:
	movq	%r12, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	4584(%rsp), %rbp
	movq	%r15, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L4490
.L14221:
	movq	%r12, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L6845
	.p2align 6,,7
.L4490:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L4490
	jmp	.L14221
	.p2align 6,,7
.L4485:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r9
	movq	%rax, 16(%rbx)
	testq	%r9, %r9
	movq	%r9, pending_chain(%rip)
	movq	%r9, %rbx
	jne	.L4485
	jmp	.L13997
.L4479:
	movq	56(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L4475
.L16123:
	jne	.L4476
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 8(%rsi)
	jmp	.L4475
.L4472:
	movq	56(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L4480
	movq	8(%rsi), %r15
	jmp	.L4475
.L4480:
	movq	56(%rsp), %rdx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L4475
	movq	56(%rsp), %rdi
	movq	8(%rdi), %r15
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %rsi
	movq	%rax, 24(%r11)
	call	gen_move_insn
	movq	56(%rsp), %r13
	movq	%rax, %rdi
	movq	16(%r13), %rsi
	call	emit_insn_before
	movq	24(%r13), %r15
	jmp	.L4475
	.p2align 6,,7
.L4470:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L4470
	jmp	.L13995
	.p2align 6,,7
.L16085:
	movq	32(%rsi), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	const0_rtx(%rip), %rsi
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L4462
.L13993:
	movq	4584(%rsp), %r9
	movq	40(%r9), %rdi
.L15350:
	movq	56(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	store_expr
	jmp	.L6845
.L4462:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	testq	%rcx, %rcx
	movq	%rcx, pending_chain(%rip)
	movq	%rcx, %rbx
	jne	.L4462
	jmp	.L13993
	.p2align 6,,7
.L4457:
	movq	5424(%rsp), %rdi
	movq	56(%rsp), %rsi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	call	make_tree
	movq	5424(%rsp), %rsi
	movq	1944(%rsp), %rdx
	movzbl	16(%rdx), %edi
	movq	%rax, %rdx
	call	build1
	movq	56(%rsp), %r15
	movq	%rax, 4480(%rsp)
	movq	%rax, %rdx
	movzbl	16(%rax), %eax
	cmpb	$44, %al
	je	.L16124
	cmpb	$48, %al
	je	.L16125
.L4921:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L4948
	movq	56(%rsp), %rdi
	cmpw	$55, (%rdi)
	je	.L16126
.L4948:
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L4956
	mov	%eax, %r11d
	jmp	*.L4965(,%r11,8)
	.section	.rodata
	.align 8
	.align 4
.L4965:
	.quad	.L4959
	.quad	.L4956
	.quad	.L4956
	.quad	.L4956
	.quad	.L4964
	.quad	.L4956
	.quad	.L4956
	.quad	.L4956
	.quad	.L4962
	.quad	.L4962
	.quad	.L4956
	.quad	.L4962
	.text
.L4959:
	movq	56(%rsp), %r10
	xorl	%eax, %eax
	movq	8(%r10), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L4958:
	testl	%ebx, %ebx
	je	.L4955
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L4967
	testb	%al, %al
	jne	.L16127
.L4967:
	movq	56(%rsp), %r9
	movq	4480(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%r9), %edx
.L15083:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15335:
	movq	%rax, %r12
.L4974:
	movl	$1, %ebp
.L4920:
	cmpq	56(%rsp), %r12
	je	.L6845
	movq	4480(%rsp), %rdi
	cmpb	$0, 16(%rdi)
	je	.L6845
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L4976
	cmpl	$55, %eax
	je	.L16128
.L4980:
	cmpl	$63, %eax
	je	.L4983
	cmpl	$66, %eax
	je	.L4983
.L4979:
	movzbl	2(%r12), %eax
	movzbl	2(%r15), %ecx
	cmpb	%cl, %al
	je	.L4986
	testb	%al, %al
	je	.L4986
	movq	4480(%rsp), %rbx
	jmp	.L15416
.L4986:
	cmpb	$16, %al
	jne	.L7168
	movq	4480(%rsp), %rsi
	cmpb	$28, 16(%rsi)
	je	.L16129
	cmpb	$16, %al
	jne	.L7168
	movq	4480(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	4480(%rsp), %rbx
	movq	%rax, %r13
	movq	8(%rbx), %r9
	movl	48(%r9), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1724(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L5245
	cmpl	$55, %eax
	je	.L16130
.L5249:
	cmpl	$63, %eax
	je	.L5252
	cmpl	$66, %eax
	je	.L5252
.L5248:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L5255
	cmpl	$55, %eax
	je	.L16131
.L5259:
	cmpl	$63, %eax
	je	.L5262
	cmpl	$66, %eax
	je	.L5262
.L5258:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L5265
	cmpl	$55, %eax
	je	.L16132
.L5269:
	cmpl	$63, %eax
	je	.L5272
	cmpl	$66, %eax
	je	.L5272
.L5268:
	cmpw	$55, (%r15)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L16133
.L5278:
	movl	1724(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4408(%rsp)
	testl	%ebp, %ebp
	je	.L14257
.L5364:
	movslq	%ebp,%rax
	movq	%rax, 4400(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L5352
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L5356
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L5352
.L5356:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %r14
	movq	%rsi, 4392(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16134
.L5357:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16135
.L5358:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L5359
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4408(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L5352
.L5359:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 4384(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16136
.L5360:
	movq	4392(%rsp), %r14
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4408(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14954
	movq	4384(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L5352:
	movq	4400(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L5364
	jmp	.L14257
.L16136:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L5360
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L5360
.L16135:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L5352
	jmp	.L5358
.L16134:
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L5352
	jmp	.L5357
.L16133:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1724(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1724(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L5292:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14070
.L5288:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L5288
.L14070:
	testl	%ecx, %ecx
	je	.L5281
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L5290
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L5290
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L5290:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L5292
.L5281:
	decl	%r9d
	jg	.L5278
	movq	8(%r15), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 7016(%rsp)
	movl	$0, 7044(%rsp)
	movq	%r15, 6992(%rsp)
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	%rbx, 7000(%rsp)
	movq	%rdi, 7024(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L5295
	cmpw	$88, %dx
	je	.L5295
	cmpw	$87, %dx
	je	.L5295
.L5294:
	movl	%ecx, 7008(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L5297
	cmpw	$88, %dx
	je	.L5297
	cmpw	$87, %dx
	je	.L5297
.L5296:
	movl	%ecx, 7032(%rsp)
	movl	$0, 7036(%rsp)
	movl	$0, 7012(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L5299
	cmpw	$87, %ax
	je	.L5299
.L5298:
	testl	%edx, %edx
	movl	%edx, 7048(%rsp)
	je	.L5300
	movl	%r10d, 7044(%rsp)
.L5300:
	movl	%r10d, 7040(%rsp)
	movl	7032(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L5302
	movl	7008(%rsp), %eax
	testl	%eax, %eax
	jne	.L5301
.L5302:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1724(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1724(%rsp), %ebp
.L5316:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14073
.L5312:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L5312
.L14073:
	testl	%ecx, %ecx
	je	.L5305
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L5314
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L5314
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L5314:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L5316
.L5305:
	cmpl	$2, %r9d
	jle	.L5301
	testl	%r10d, %r10d
	jne	.L5318
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L5319
	cmpw	$46, %dx
	je	.L5319
	cmpw	$47, %dx
	je	.L5319
	cmpw	$49, %dx
	je	.L5319
	cmpw	$113, %dx
	je	.L5319
.L5318:
	movl	7008(%rsp), %eax
	testl	%eax, %eax
	jne	.L5301
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L5321
	cmpw	$46, %dx
	je	.L5321
	cmpw	$47, %dx
	je	.L5321
	cmpw	$49, %dx
	je	.L5321
	cmpw	$113, %dx
	je	.L5321
.L5301:
	cmpl	$8, 1724(%rsp)
	movl	$8, %eax
	cmovl	1724(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1724(%rsp)
	jle	.L5324
.L5346:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14076
.L5331:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L5331
.L14076:
	testl	%r12d, %r12d
	je	.L5324
	movslq	%r12d,%r13
	movq	%r13, %rcx
	salq	$4, %rcx
	addq	mov_optab(%rip), %rcx
	movl	8(%rcx), %edx
	cmpl	$210, %edx
	je	.L5333
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1724(%rsp)
	jl	.L5333
	cmpl	%ebp, 7040(%rsp)
	movslq	%edx,%r11
	leaq	6992(%rsp), %rbx
	movq	insn_gen_function(,%r11,8), %r15
	jl	.L5333
	movl	7048(%rsp), %edx
.L5344:
	testl	%edx, %edx
	je	.L5338
	subl	%ebp, 52(%rbx)
.L5338:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L5339
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15087:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L5341
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L5342:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r15
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L5343
	addl	%ebp, 52(%rbx)
.L5343:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L5344
.L5333:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L5346
.L5324:
	movl	7040(%rsp), %eax
	testl	%eax, %eax
	jmp	.L15389
.L5341:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L5342
.L5339:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15087
.L5321:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7000(%rsp)
	jmp	.L5301
.L5319:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7024(%rsp)
	jmp	.L5318
.L5299:
	movl	$1, %edx
	jmp	.L5298
.L5297:
	movl	$1, %ecx
	jmp	.L5296
.L5295:
	movl	$1, %ecx
	jmp	.L5294
.L5272:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L5268
.L16132:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L5266
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L16137
.L5266:
	cmpl	$55, %eax
	jne	.L5269
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L5268
.L16137:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L5268
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5268
.L5265:
	cmpq	$0, 16(%r13)
	jne	.L5273
	movq	8(%r13), %r13
	jmp	.L5268
.L5273:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L5274
	movq	%rsi, %r13
	jmp	.L5268
.L5274:
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L5268
.L5262:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L5258
.L16131:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L5256
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16138
.L5256:
	cmpl	$55, %eax
	jne	.L5259
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L5258
.L16138:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L5258
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5258
.L5255:
	cmpq	$0, 16(%r12)
	jne	.L5263
	movq	8(%r12), %r12
	jmp	.L5258
.L5263:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L5264
	movq	%rsi, %r12
	jmp	.L5258
.L5264:
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L5258
.L5252:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L5248
.L16130:
	jne	.L5249
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L5248
.L5245:
	cmpq	$0, 16(%r15)
	jne	.L5253
	movq	8(%r15), %r15
	jmp	.L5248
.L5253:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.L5254
	movq	%rdi, %r15
	jmp	.L5248
.L5254:
	movq	8(%r15), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L5248
.L16129:
	xorl	%eax, %eax
	movq	%rsi, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1776(%rsp)
	je	.L16139
.L4991:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	4480(%rsp), %r9
	movq	%rax, %rdx
	movq	8(%r9), %r10
	movq	32(%r10), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	4480(%rsp), %r11
	movq	%rax, %r14
	movl	32(%r11), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r14, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	4480(%rsp), %r13
	movq	$0, 1728(%rsp)
	movq	%rax, 1752(%rsp)
	movq	%rax, %r14
	movq	8(%r13), %rbp
	movl	48(%rbp), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1748(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 1760(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L5117
	cmpl	$55, %eax
	je	.L16140
	cmpl	$63, %eax
	je	.L5124
	cmpl	$66, %eax
	je	.L5124
.L5120:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L5127
	cmpl	$55, %eax
	je	.L16141
.L5131:
	cmpl	$63, %eax
	je	.L5134
	cmpl	$66, %eax
	je	.L5134
.L5130:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L5137
	cmpl	$55, %eax
	je	.L16142
.L5141:
	cmpl	$63, %eax
	je	.L5144
	cmpl	$66, %eax
	je	.L5144
.L5140:
	movq	1760(%rsp), %rbx
	cmpw	$55, (%rbx)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1752(%rsp)
	je	.L15283
	movq	1752(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L16143
.L5150:
	movl	1748(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4440(%rsp)
	testl	%ebp, %ebp
	je	.L14067
.L5236:
	movslq	%ebp,%r11
	movq	%r11, %rax
	movq	%r11, 4432(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L5224
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L5228
	movq	1752(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L5224
.L5228:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %r13
	movq	%rsi, 4424(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16144
.L5229:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16145
.L5230:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L5231
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4440(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L5224
.L5231:
	call	get_last_insn
	movl	$1, %edx
	movq	1752(%rsp), %rsi
	movq	%rax, 4416(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16146
.L5232:
	movq	4424(%rsp), %rbp
	movq	1760(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4440(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14939
	movq	4416(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L5224:
	movq	4432(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L5236
.L14067:
	movq	1752(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movq	1760(%rsp), %rax
	xorl	%edx, %edx
	movq	%r10, (%rsp)
	movq	8(%rax), %r8
	xorl	%eax, %eax
	call	emit_library_call
.L5234:
	cmpw	$46, (%r14)
	je	.L16147
	movq	8(%r15), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1776(%rsp), %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1728(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L5238:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L5239
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L5239:
	cmpq	$0, 1728(%rsp)
	je	.L6845
	movq	1728(%rsp), %rdi
	jmp	.L15348
.L16147:
	movq	4480(%rsp), %r14
	movq	8(%r15), %rdi
	movl	32(%r14), %esi
	call	plus_constant_wide
	movq	1776(%rsp), %rdi
	movq	4480(%rsp), %r15
	movq	%rax, %rbp
	movl	32(%r15), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L5238
.L14939:
	call	emit_insn
	jmp	.L5234
.L16146:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L5232
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L5232
.L16145:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L5224
	jmp	.L5230
.L16144:
	xorl	%eax, %eax
	movq	1760(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L5224
	jmp	.L5229
.L16143:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1748(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1748(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L5164:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14058
.L5160:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L5160
.L14058:
	testl	%ecx, %ecx
	je	.L5153
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L5162
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L5162
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L5162:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L5164
.L5153:
	decl	%r9d
	jg	.L5150
	movq	1760(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 7016(%rsp)
	movq	%rcx, 6992(%rsp)
	movl	$0, 7044(%rsp)
	movq	%rdi, 7024(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 1744(%rsp)
	movq	%rbx, 7000(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L5167
	cmpw	$88, %dx
	je	.L5167
	cmpw	$87, %dx
	je	.L5167
.L5166:
	movl	%ecx, 7008(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L5169
	cmpw	$88, %dx
	je	.L5169
	cmpw	$87, %dx
	je	.L5169
.L5168:
	movl	%ecx, 7032(%rsp)
	movl	$0, 7036(%rsp)
	movl	$0, 7012(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L5171
	cmpw	$87, %ax
	je	.L5171
.L5170:
	testl	%edx, %edx
	movl	%edx, 7048(%rsp)
	je	.L5172
	movl	%r10d, 7044(%rsp)
.L5172:
	movl	%r10d, 7040(%rsp)
	movl	7032(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L5174
	movl	7008(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L5173
.L5174:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1748(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1748(%rsp), %ebp
.L5188:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14061
.L5184:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L5184
.L14061:
	testl	%ecx, %ecx
	je	.L5177
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L5186
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L5186
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L5186:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L5188
.L5177:
	cmpl	$2, %r9d
	jle	.L5173
	testl	%r10d, %r10d
	jne	.L5190
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L5191
	cmpw	$46, %dx
	je	.L5191
	cmpw	$47, %dx
	je	.L5191
	cmpw	$49, %dx
	je	.L5191
	cmpw	$113, %dx
	je	.L5191
.L5190:
	movl	7008(%rsp), %eax
	testl	%eax, %eax
	jne	.L5173
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L5193
	cmpw	$46, %dx
	je	.L5193
	cmpw	$47, %dx
	je	.L5193
	cmpw	$49, %dx
	je	.L5193
	cmpw	$113, %dx
	je	.L5193
.L5173:
	cmpl	$8, 1748(%rsp)
	movl	$8, %eax
	cmovl	1748(%rsp), %eax
	cmpl	$1, 1744(%rsp)
	movl	%eax, 1748(%rsp)
	jle	.L5196
.L5218:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14064
.L5203:
	movslq	%edx,%r10
	movl	1744(%rsp), %r9d
	salq	$2, %r10
	cmpl	%r9d, mode_size(%r10)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%r10), %edx
	testl	%edx, %edx
	jne	.L5203
.L14064:
	testl	%r12d, %r12d
	je	.L5196
	movslq	%r12d,%r13
	movq	%r13, %rbx
	salq	$4, %rbx
	addq	mov_optab(%rip), %rbx
	movl	8(%rbx), %edx
	cmpl	$210, %edx
	je	.L5205
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1748(%rsp)
	jl	.L5205
	movslq	%edx,%rcx
	cmpl	%ebp, 7040(%rsp)
	leaq	6992(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %rdi
	movq	%rdi, 4448(%rsp)
	jl	.L5205
	movl	7048(%rsp), %edx
.L5216:
	testl	%edx, %edx
	je	.L5210
	subl	%ebp, 52(%rbx)
.L5210:
	movl	16(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L5211
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15086:
	movq	%rax, 1736(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L5213
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L5214:
	movq	%rax, %rsi
	movq	1736(%rsp), %rdi
	xorl	%eax, %eax
	call	*4448(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L5215
	addl	%ebp, 52(%rbx)
.L5215:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L5216
.L5205:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 1744(%rsp)
	decl	%r12d
	jg	.L5218
.L5196:
	movl	7040(%rsp), %eax
	testl	%eax, %eax
	je	.L5234
	jmp	.L15283
.L5213:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L5214
.L5211:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15086
.L5193:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7000(%rsp)
	jmp	.L5173
.L5191:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7024(%rsp)
	jmp	.L5190
.L5171:
	movl	$1, %edx
	jmp	.L5170
.L5169:
	movl	$1, %ecx
	jmp	.L5168
.L5167:
	movl	$1, %ecx
	jmp	.L5166
.L5144:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L5140
.L16142:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L5138
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16148
.L5138:
	cmpl	$55, %eax
	jne	.L5141
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L5140
.L16148:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L5140
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 1752(%rsp)
	jmp	.L5140
.L5137:
	cmpq	$0, 16(%r14)
	jne	.L5145
	movq	8(%r14), %rax
	movq	%rax, 1752(%rsp)
	jmp	.L5140
.L5145:
	movq	24(%r14), %rbp
	testq	%rbp, %rbp
	movq	%rbp, 1752(%rsp)
	jne	.L5140
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r10
	movq	%r10, 1752(%rsp)
	jmp	.L5140
.L5134:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L5130
.L16141:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L5128
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16149
.L5128:
	cmpl	$55, %eax
	jne	.L5131
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L5130
.L16149:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L5130
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5130
.L5127:
	cmpq	$0, 16(%r12)
	jne	.L5135
	movq	8(%r12), %r12
	jmp	.L5130
.L5135:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L5136
	movq	%rsi, %r12
	jmp	.L5130
.L5136:
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L5130
.L5124:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L5120
.L16140:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L5120
.L5117:
	cmpq	$0, 16(%r15)
	jne	.L5125
	movq	8(%r15), %rbx
	movq	%rbx, 1760(%rsp)
	jmp	.L5120
.L5125:
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 1760(%rsp)
	jne	.L5120
	movq	8(%r15), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rsi
	movq	%rsi, 1760(%rsp)
	jmp	.L5120
.L16139:
	movq	4480(%rsp), %rdi
	movq	1776(%rsp), %rbp
	movl	32(%rdi), %eax
	cmpl	%eax, 8(%rbp)
	jge	.L4991
	movq	8(%rdi), %r13
	movl	48(%r13), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1772(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L4994
	cmpl	$55, %eax
	je	.L16150
.L4998:
	cmpl	$63, %eax
	je	.L5001
	cmpl	$66, %eax
	je	.L5001
.L4997:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L5004
	cmpl	$55, %eax
	je	.L16151
.L5008:
	cmpl	$63, %eax
	je	.L5011
	cmpl	$66, %eax
	je	.L5011
.L5007:
	movq	1776(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L5014
	cmpl	$55, %eax
	je	.L16152
.L5018:
	cmpl	$63, %eax
	je	.L5021
	cmpl	$66, %eax
	je	.L5021
.L5017:
	cmpw	$55, (%r15)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1776(%rsp)
	je	.L15283
	movq	1776(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L16153
.L5027:
	movl	1772(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4472(%rsp)
	testl	%ebp, %ebp
	je	.L14055
.L5113:
	movslq	%ebp,%rax
	movq	%rax, 4464(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L5101
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L5105
	movq	1776(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L5101
.L5105:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16154
.L5106:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16155
.L5107:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L5108
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4472(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L5101
.L5108:
	call	get_last_insn
	movl	$1, %edx
	movq	1776(%rsp), %rsi
	movq	%rax, 4456(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16156
.L5109:
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4472(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14954
	movq	4456(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L5101:
	movq	4464(%rsp), %r8
	movl	mode_wider_mode(,%r8,4), %ebp
	testl	%ebp, %ebp
	jne	.L5113
.L14055:
	movq	1776(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15129
.L16156:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L5109
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L5109
.L16155:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L5101
	jmp	.L5107
.L16154:
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L5101
	jmp	.L5106
.L16153:
	movl	8(%rbx), %r10d
	xorl	%r9d, %r9d
	movl	$9, %r8d
	cmpl	$8, 1772(%rsp)
	movl	$8, %ebx
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1772(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L5041:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14046
.L5037:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L5037
.L14046:
	testl	%ecx, %ecx
	je	.L5030
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L5039
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L5039
	movl	%edi, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %edi
.L5039:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L5041
.L5030:
	decl	%r9d
	jg	.L5027
	movq	8(%r15), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 7080(%rsp)
	movl	$0, 7108(%rsp)
	movq	%r15, 7056(%rsp)
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	%rbx, 7064(%rsp)
	movq	%rdi, 7088(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L5044
	cmpw	$88, %dx
	je	.L5044
	cmpw	$87, %dx
	je	.L5044
.L5043:
	movl	%ecx, 7072(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L5046
	cmpw	$88, %dx
	je	.L5046
	cmpw	$87, %dx
	je	.L5046
.L5045:
	movl	%ecx, 7096(%rsp)
	movl	$0, 7100(%rsp)
	movl	$0, 7076(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L5048
	cmpw	$87, %ax
	je	.L5048
.L5047:
	testl	%edx, %edx
	movl	%edx, 7112(%rsp)
	je	.L5049
	movl	%r10d, 7108(%rsp)
.L5049:
	movl	%r10d, 7104(%rsp)
	movl	7096(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L5051
	movl	7072(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L5050
.L5051:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1772(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1772(%rsp), %ebp
.L5065:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14049
.L5061:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L5061
.L14049:
	testl	%ecx, %ecx
	je	.L5054
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L5063
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L5063
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L5063:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L5065
.L5054:
	cmpl	$2, %r9d
	jle	.L5050
	testl	%r10d, %r10d
	jne	.L5067
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L5068
	cmpw	$46, %dx
	je	.L5068
	cmpw	$47, %dx
	je	.L5068
	cmpw	$49, %dx
	je	.L5068
	cmpw	$113, %dx
	je	.L5068
.L5067:
	movl	7072(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L5050
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L5070
	cmpw	$46, %dx
	je	.L5070
	cmpw	$47, %dx
	je	.L5070
	cmpw	$49, %dx
	je	.L5070
	cmpw	$113, %dx
	je	.L5070
.L5050:
	cmpl	$8, 1772(%rsp)
	movl	$8, %eax
	cmovl	1772(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1772(%rsp)
	jle	.L5073
.L5095:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14052
.L5080:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L5080
.L14052:
	testl	%r12d, %r12d
	je	.L5073
	movslq	%r12d,%r13
	movq	%r13, %rcx
	salq	$4, %rcx
	addq	mov_optab(%rip), %rcx
	movl	8(%rcx), %edx
	cmpl	$210, %edx
	je	.L5082
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1772(%rsp)
	jl	.L5082
	cmpl	%ebp, 7104(%rsp)
	movslq	%edx,%rsi
	leaq	7056(%rsp), %rbx
	movq	insn_gen_function(,%rsi,8), %r15
	jl	.L5082
	movl	7112(%rsp), %edx
.L5093:
	testl	%edx, %edx
	je	.L5087
	subl	%ebp, 52(%rbx)
.L5087:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L5088
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15085:
	movl	40(%rbx), %edi
	movq	%rax, %r14
	testl	%edi, %edi
	je	.L5090
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L5091:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r15
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L5092
	addl	%ebp, 52(%rbx)
.L5092:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L5093
.L5082:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L5095
.L5073:
	movl	7104(%rsp), %edx
	testl	%edx, %edx
	jmp	.L15389
.L5090:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L5091
.L5088:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15085
.L5070:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7064(%rsp)
	jmp	.L5050
.L5068:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7088(%rsp)
	jmp	.L5067
.L5048:
	movl	$1, %edx
	jmp	.L5047
.L5046:
	movl	$1, %ecx
	jmp	.L5045
.L5044:
	movl	$1, %ecx
	jmp	.L5043
.L5021:
	movq	1776(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1776(%rsp), %r9
	movq	%rax, 8(%r9)
	movq	1776(%rsp), %r10
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	1776(%rsp), %r11
	movq	%rax, 16(%r11)
	jmp	.L5017
.L16152:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L5015
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16157
.L5015:
	cmpl	$55, %eax
	jne	.L5018
	movq	1776(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L5017
.L16157:
	movq	8(%rbp), %rbx
	movq	%rbx, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L5017
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1776(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15084:
	movq	%rbx, 1776(%rsp)
	jmp	.L5017
.L5014:
	movq	1776(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L5022
	movq	8(%rcx), %rbx
	jmp	.L15084
.L5022:
	movq	1776(%rsp), %rdx
	movq	24(%rdx), %rsi
	testq	%rsi, %rsi
	je	.L5023
	movq	%rsi, 1776(%rsp)
	jmp	.L5017
.L5023:
	movq	1776(%rsp), %rdi
	movq	8(%rdi), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	1776(%rsp), %rcx
	movq	%rax, %rdi
	movq	8(%rcx), %rsi
	movq	%rax, 24(%rcx)
	call	gen_move_insn
	movq	1776(%rsp), %r14
	movq	%rax, %rdi
	movq	16(%r14), %rsi
	call	emit_insn_before
	movq	1776(%rsp), %r13
	movq	24(%r13), %r8
	movq	%r8, 1776(%rsp)
	jmp	.L5017
.L5011:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L5007
.L16151:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L5005
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16158
.L5005:
	cmpl	$55, %eax
	jne	.L5008
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L5007
.L16158:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L5007
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5007
.L5004:
	cmpq	$0, 16(%r12)
	jne	.L5012
	movq	8(%r12), %r12
	jmp	.L5007
.L5012:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L5013
	movq	%rsi, %r12
	jmp	.L5007
.L5013:
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L5007
.L5001:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L4997
.L16150:
	jne	.L4998
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L4997
.L4994:
	cmpq	$0, 16(%r15)
	jne	.L5002
	movq	8(%r15), %r15
	jmp	.L4997
.L5002:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.L5003
	movq	%rdi, %r15
	jmp	.L4997
.L5003:
	movq	8(%r15), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L4997
	.p2align 6,,7
.L4983:
	movq	56(%rsp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %rbx
	movq	%rax, 8(%rbx)
	movq	56(%rsp), %rcx
	movq	16(%rcx), %rdi
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L4979
.L16128:
	jne	.L4980
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L4979
	.p2align 6,,7
.L4976:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L4984
	movq	8(%rcx), %r15
	jmp	.L4979
.L4984:
	movq	56(%rsp), %r15
	movq	24(%r15), %r10
	testq	%r10, %r10
	movq	%r10, %r15
	jne	.L4979
	movq	56(%rsp), %r8
	movq	8(%r8), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movq	8(%rax), %rsi
	movq	%rdi, 24(%rax)
	call	gen_move_insn
	movq	56(%rsp), %r9
	movq	%rax, %rdi
	movq	16(%r9), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r14
	movq	24(%r14), %r15
	jmp	.L4979
	.p2align 6,,7
.L16127:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	4480(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rax, %rsi
	jmp	.L15083
.L4955:
	movq	56(%rsp), %rdx
	movl	(%rdx), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16159
	movq	56(%rsp), %r8
	movq	4480(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%r8), %edx
	movq	%r8, %rsi
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L16160
.L4973:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L4974
	cmpw	$46, %dx
	je	.L4974
	cmpw	$47, %dx
	je	.L4974
	cmpw	$49, %dx
	je	.L4974
	cmpw	$113, %dx
	jne	.L4920
	jmp	.L4974
	.p2align 6,,7
.L16160:
	cmpl	$63, 8(%rdx)
	jle	.L4920
	jmp	.L4973
.L16159:
	movq	4480(%rsp), %rdi
.L15414:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %r8
	movq	%rax, %rsi
	movzbl	3(%r8), %edx
	shrb	$2, %dl
	andl	$1, %edx
	jmp	.L15415
.L4964:
	movl	$1, %ebx
	jmp	.L4958
.L4956:
	xorl	%ebx, %ebx
	jmp	.L4958
.L4962:
	movq	56(%rsp), %r14
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	8(%r14), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L4964
	movq	56(%rsp), %rax
	movq	16(%rax), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L4958
	jmp	.L4964
	.p2align 6,,7
.L16126:
	movzbl	2(%rdi), %eax
	cmpb	$16, %al
	je	.L4948
	movl	cse_not_expected(%rip), %ecx
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%ecx, %ecx
	cmove	%rdi, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	4480(%rsp), %rdi
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L4974
	testb	%al, %al
	je	.L4974
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15335
	.p2align 6,,7
.L16125:
	movq	56(%rsp), %r9
	cmpb	$16, 2(%r9)
	jne	.L4921
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r12
	testq	%rbx, %rbx
	jne	.L4925
.L14039:
	movq	56(%rsp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L4927
	cmpl	$55, %eax
	je	.L16161
.L4931:
	cmpl	$63, %eax
	je	.L4934
	cmpl	$66, %eax
	je	.L4934
.L4930:
	movq	4480(%rsp), %r13
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r13), %rdi
	call	jumpifnot
	movq	4480(%rsp), %r8
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	40(%r8), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L4940
.L14041:
	movq	%r12, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	4480(%rsp), %rbp
	movq	%r15, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	je	.L14221
.L4945:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L4945
	jmp	.L14221
	.p2align 6,,7
.L4940:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L4940
	jmp	.L14041
.L4934:
	movq	56(%rsp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, 8(%rcx)
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.L4930
.L16161:
	jne	.L4931
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r13
	movq	%rax, 8(%r13)
	jmp	.L4930
.L4927:
	movq	56(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L4935
	movq	8(%rbx), %r15
	jmp	.L4930
.L4935:
	movq	56(%rsp), %r15
	movq	24(%r15), %r11
	testq	%r11, %r11
	movq	%r11, %r15
	jne	.L4930
	movq	56(%rsp), %r9
	movq	8(%r9), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movq	8(%rax), %rsi
	movq	%rdi, 24(%rax)
	call	gen_move_insn
	movq	56(%rsp), %r14
	movq	%rax, %rdi
	movq	16(%r14), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r10
	movq	24(%r10), %r15
	jmp	.L4930
	.p2align 6,,7
.L4925:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r8
	movq	%rax, 16(%rbx)
	testq	%r8, %r8
	movq	%r8, pending_chain(%rip)
	movq	%r8, %rbx
	jne	.L4925
	jmp	.L14039
	.p2align 6,,7
.L16124:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L4917
.L14037:
	movq	4480(%rsp), %rcx
.L15349:
	movq	40(%rcx), %rdi
	jmp	.L15350
.L4917:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r12
	movq	%rax, 16(%rbx)
	testq	%r12, %r12
	movq	%r12, pending_chain(%rip)
	movq	%r12, %rbx
	jne	.L4917
	jmp	.L14037
.L16083:
	movq	32(%r15), %rdi
	movq	1920(%rsp), %rsi
	xorl	%eax, %eax
	call	jumpif
	jmp	.L4450
.L16082:
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	sorry
	movq	$0, cleanups_this_call(%rip)
	jmp	.L4448
.L4063:
	movq	1856(%rsp), %rdi
	movq	%r12, %rsi
.L15077:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L4443
.L4062:
	cmpb	$16, %al
	je	.L16162
.L4318:
	movq	1856(%rsp), %rdi
	movq	%r12, %rsi
	jmp	.L15076
.L16162:
	movq	1928(%rsp), %rdi
	cmpb	$28, 16(%rdi)
	je	.L16163
	cmpb	$16, %al
	jne	.L4318
	movq	1928(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	1856(%rsp), %r9
	movq	1928(%rsp), %r10
	movq	%rax, %r13
	movq	8(%r10), %r8
	movl	48(%r8), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r9)
	movl	%eax, 1852(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	1856(%rsp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L4321
	cmpl	$55, %eax
	je	.L16164
.L4325:
	cmpl	$63, %eax
	je	.L4328
	cmpl	$66, %eax
	je	.L4328
.L4324:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L4331
	cmpl	$55, %eax
	je	.L16165
.L4335:
	cmpl	$63, %eax
	je	.L4338
	cmpl	$66, %eax
	je	.L4338
.L4334:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L4341
	cmpl	$55, %eax
	je	.L16166
.L4345:
	cmpl	$63, %eax
	je	.L4348
	cmpl	$66, %eax
	je	.L4348
.L4344:
	movq	1856(%rsp), %rsi
	cmpw	$55, (%rsi)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L16167
.L4354:
	movl	1852(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4616(%rsp)
	testl	%ebp, %ebp
	je	.L13991
.L4440:
	movslq	%ebp,%rax
	movq	%rax, 4608(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L4428
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L4432
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L4428
.L4432:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %r14
	movq	%rax, 4600(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16168
.L4433:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16169
.L4434:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L4435
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4616(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L4428
.L4435:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 4592(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16170
.L4436:
	movq	4600(%rsp), %rbp
	movq	1856(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4616(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14934
	movq	4592(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L4428:
	movq	4608(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L4440
.L13991:
	movl	$4, %edi
	movq	%r13, %rsi
.L15075:
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	1856(%rsp), %r12
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%eax, %eax
	movq	%rdi, (%rsp)
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%r12), %r8
	call	emit_library_call
	jmp	.L4443
.L14934:
	call	emit_insn
	jmp	.L4443
.L16170:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L4436
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L4436
.L16169:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4428
	jmp	.L4434
.L16168:
	xorl	%eax, %eax
	movq	1856(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4428
	jmp	.L4433
.L16167:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1852(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1852(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L4368:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13982
.L4364:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L4364
.L13982:
	testl	%ecx, %ecx
	je	.L4357
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L4366
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L4366
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L4366:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4368
.L4357:
	decl	%r9d
	jg	.L4354
	movq	1856(%rsp), %rbp
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rbp), %rbx
	movq	%r12, 7336(%rsp)
	movq	%rbp, 7312(%rsp)
	movl	$0, 7364(%rsp)
	movq	%rdi, 7344(%rsp)
	movq	%rbx, 7320(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L4371
	cmpw	$88, %dx
	je	.L4371
	cmpw	$87, %dx
	je	.L4371
.L4370:
	movl	%ecx, 7328(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L4373
	cmpw	$88, %dx
	je	.L4373
	cmpw	$87, %dx
	je	.L4373
.L4372:
	movl	%ecx, 7352(%rsp)
	movl	$0, 7356(%rsp)
	movl	$0, 7332(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L4375
	cmpw	$87, %ax
	je	.L4375
.L4374:
	testl	%edx, %edx
	movl	%edx, 7368(%rsp)
	je	.L4376
	movl	%r10d, 7364(%rsp)
.L4376:
	movl	%r10d, 7360(%rsp)
	movl	7352(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L4378
	movl	7328(%rsp), %eax
	testl	%eax, %eax
	jne	.L4377
.L4378:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1852(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1852(%rsp), %ebp
.L4392:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13985
.L4388:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L4388
.L13985:
	testl	%ecx, %ecx
	je	.L4381
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L4390
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L4390
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L4390:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4392
.L4381:
	cmpl	$2, %r9d
	jle	.L4377
	testl	%r10d, %r10d
	jne	.L4394
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L4395
	cmpw	$46, %dx
	je	.L4395
	cmpw	$47, %dx
	je	.L4395
	cmpw	$49, %dx
	je	.L4395
	cmpw	$113, %dx
	je	.L4395
.L4394:
	movl	7328(%rsp), %eax
	testl	%eax, %eax
	jne	.L4377
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L4397
	cmpw	$46, %dx
	je	.L4397
	cmpw	$47, %dx
	je	.L4397
	cmpw	$49, %dx
	je	.L4397
	cmpw	$113, %dx
	je	.L4397
.L4377:
	cmpl	$8, 1852(%rsp)
	movl	$8, %eax
	cmovl	1852(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1852(%rsp)
	jle	.L4400
.L4422:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L13988
.L4407:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L4407
.L13988:
	testl	%r12d, %r12d
	je	.L4400
	movslq	%r12d,%r13
	movq	%r13, %r10
	salq	$4, %r10
	addq	mov_optab(%rip), %r10
	movl	8(%r10), %edx
	cmpl	$210, %edx
	je	.L4409
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1852(%rsp)
	jl	.L4409
	movslq	%edx,%r14
	cmpl	%ebp, 7360(%rsp)
	leaq	7312(%rsp), %rbx
	movq	insn_gen_function(,%r14,8), %rsi
	movq	%rsi, 4624(%rsp)
	jl	.L4409
	movl	7368(%rsp), %edx
.L4420:
	testl	%edx, %edx
	je	.L4414
	subl	%ebp, 52(%rbx)
.L4414:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L4415
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15074:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L4417
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L4418:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*4624(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L4419
	addl	%ebp, 52(%rbx)
.L4419:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L4420
.L4409:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L4422
.L4400:
	movl	7360(%rsp), %eax
	testl	%eax, %eax
.L15380:
	je	.L4443
	jmp	.L15283
.L4417:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L4418
.L4415:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15074
.L4397:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7320(%rsp)
	jmp	.L4377
.L4395:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7344(%rsp)
	jmp	.L4394
.L4375:
	movl	$1, %edx
	jmp	.L4374
.L4373:
	movl	$1, %ecx
	jmp	.L4372
.L4371:
	movl	$1, %ecx
	jmp	.L4370
.L4348:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L4344
.L16166:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L4342
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L16171
.L4342:
	cmpl	$55, %eax
	jne	.L4345
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L4344
.L16171:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L4344
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4344
.L4341:
	cmpq	$0, 16(%r13)
	jne	.L4349
	movq	8(%r13), %r13
	jmp	.L4344
.L4349:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L4350
	movq	%rsi, %r13
	jmp	.L4344
.L4350:
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L4344
.L4338:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L4334
.L16165:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L4332
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16172
.L4332:
	cmpl	$55, %eax
	jne	.L4335
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L4334
.L16172:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L4334
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4334
.L4331:
	cmpq	$0, 16(%r12)
	jne	.L4339
	movq	8(%r12), %r12
	jmp	.L4334
.L4339:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L4340
	movq	%rsi, %r12
	jmp	.L4334
.L4340:
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L4334
.L4328:
	movq	1856(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1856(%rsp), %rbx
	movq	16(%rbx), %rdi
	movq	%rax, 8(%rbx)
	call	protect_from_queue
	movq	1856(%rsp), %rbp
	movq	%rax, 16(%rbp)
	jmp	.L4324
.L16164:
	jne	.L4325
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	1856(%rsp), %rsi
	movq	%rax, 8(%rsi)
	jmp	.L4324
.L4321:
	movq	1856(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L4329
	movq	8(%rbx), %rsi
.L15073:
	movq	%rsi, 1856(%rsp)
	jmp	.L4324
.L4329:
	movq	1856(%rsp), %r14
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.L4330
	movq	%rdi, 1856(%rsp)
	jmp	.L4324
.L4330:
	movq	1856(%rsp), %rdi
	movq	8(%rdi), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	1856(%rsp), %rdx
	movq	%rax, %rdi
	movq	8(%rdx), %rsi
	movq	%rax, 24(%rdx)
	call	gen_move_insn
	movq	1856(%rsp), %rbp
	movq	%rax, %rdi
	movq	16(%rbp), %rsi
	call	emit_insn_before
	movq	24(%rbp), %rsi
	jmp	.L15073
.L16163:
	xorl	%eax, %eax
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1912(%rsp)
	je	.L16173
.L4067:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	1928(%rsp), %rsi
	movq	%rax, %rdx
	movq	8(%rsi), %rbx
	movq	32(%rbx), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	1928(%rsp), %rcx
	movq	%rax, %r14
	movl	32(%rcx), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r14, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	1856(%rsp), %rbp
	movq	1928(%rsp), %r10
	movq	$0, 1864(%rsp)
	movq	%rax, 1888(%rsp)
	movq	%rax, %r14
	movq	8(%r10), %r13
	movl	48(%r13), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%rbp)
	movl	%eax, 1884(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	1856(%rsp), %r11
	movq	%r11, 1896(%rsp)
	movzwl	(%r11), %eax
	cmpl	$59, %eax
	je	.L4193
	cmpl	$55, %eax
	je	.L16174
	cmpl	$63, %eax
	je	.L4200
	cmpl	$66, %eax
	je	.L4200
.L4196:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L4203
	cmpl	$55, %eax
	je	.L16175
.L4207:
	cmpl	$63, %eax
	je	.L4210
	cmpl	$66, %eax
	je	.L4210
.L4206:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L4213
	cmpl	$55, %eax
	je	.L16176
.L4217:
	cmpl	$63, %eax
	je	.L4220
	cmpl	$66, %eax
	je	.L4220
.L4216:
	movq	1896(%rsp), %rbp
	cmpw	$55, (%rbp)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1888(%rsp)
	je	.L15283
	movq	1888(%rsp), %rdx
	cmpw	$46, (%rdx)
	je	.L16177
.L4226:
	movl	1884(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4656(%rsp)
	testl	%ebp, %ebp
	je	.L13979
.L4312:
	movslq	%ebp,%r13
	movq	%r13, %rax
	movq	%r13, 4648(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L4300
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L4304
	movq	1888(%rsp), %r10
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r10)
	ja	.L4300
.L4304:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %r13
	movq	%rsi, 4640(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16178
.L4305:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16179
.L4306:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L4307
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4656(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L4300
.L4307:
	call	get_last_insn
	movl	$1, %edx
	movq	1888(%rsp), %rsi
	movq	%rax, 4632(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16180
.L4308:
	movq	4640(%rsp), %rbp
	movq	1896(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4656(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14933
	movq	4632(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L4300:
	movq	4648(%rsp), %rbx
	movl	mode_wider_mode(,%rbx,4), %ebp
	testl	%ebp, %ebp
	jne	.L4312
.L13979:
	movq	1888(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movq	1896(%rsp), %rax
	movq	%rdi, (%rsp)
	movq	memcpy_libfunc(%rip), %rdi
	movq	8(%rax), %r8
	xorl	%eax, %eax
	call	emit_library_call
.L4310:
	cmpw	$46, (%r14)
	je	.L16181
	movq	1856(%rsp), %r11
	movl	$4, %edi
	movq	8(%r11), %rsi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1912(%rsp), %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1864(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L4314:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L4315
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L4315:
	cmpq	$0, 1864(%rsp)
	je	.L4443
	movq	1864(%rsp), %rdi
	call	emit_label
	jmp	.L4443
.L16181:
	movq	1856(%rsp), %rcx
	movq	1928(%rsp), %rdx
	movq	8(%rcx), %rdi
	movl	32(%rdx), %esi
	call	plus_constant_wide
	movq	1912(%rsp), %rdi
	movq	1928(%rsp), %r14
	movq	%rax, %rbp
	movl	32(%r14), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L4314
.L14933:
	call	emit_insn
	jmp	.L4310
.L16180:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L4308
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L4308
.L16179:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4300
	jmp	.L4306
.L16178:
	xorl	%eax, %eax
	movq	1896(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4300
	jmp	.L4305
.L16177:
	movl	8(%rdx), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1884(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1884(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L4240:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13970
.L4236:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L4236
.L13970:
	testl	%ecx, %ecx
	je	.L4229
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L4238
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L4238
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L4238:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4240
.L4229:
	decl	%r9d
	jg	.L4226
	movq	1896(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 7336(%rsp)
	movq	%rcx, 7312(%rsp)
	movl	$0, 7364(%rsp)
	movq	%rdi, 7344(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 1880(%rsp)
	movq	%rbx, 7320(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L4243
	cmpw	$88, %dx
	je	.L4243
	cmpw	$87, %dx
	je	.L4243
.L4242:
	movl	%ecx, 7328(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L4245
	cmpw	$88, %dx
	je	.L4245
	cmpw	$87, %dx
	je	.L4245
.L4244:
	movl	%ecx, 7352(%rsp)
	movl	$0, 7356(%rsp)
	movl	$0, 7332(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L4247
	cmpw	$87, %ax
	je	.L4247
.L4246:
	testl	%edx, %edx
	movl	%edx, 7368(%rsp)
	je	.L4248
	movl	%r10d, 7364(%rsp)
.L4248:
	movl	7352(%rsp), %eax
	movl	%r10d, 7360(%rsp)
	testl	%eax, %eax
	movl	%eax, %r10d
	je	.L4250
	movl	7328(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L4249
.L4250:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1884(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1884(%rsp), %ebp
.L4264:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13973
.L4260:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L4260
.L13973:
	testl	%ecx, %ecx
	je	.L4253
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L4262
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L4262
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L4262:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4264
.L4253:
	cmpl	$2, %r9d
	jle	.L4249
	testl	%r10d, %r10d
	jne	.L4266
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L4267
	cmpw	$46, %dx
	je	.L4267
	cmpw	$47, %dx
	je	.L4267
	cmpw	$49, %dx
	je	.L4267
	cmpw	$113, %dx
	je	.L4267
.L4266:
	movl	7328(%rsp), %esi
	testl	%esi, %esi
	jne	.L4249
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L4269
	cmpw	$46, %dx
	je	.L4269
	cmpw	$47, %dx
	je	.L4269
	cmpw	$49, %dx
	je	.L4269
	cmpw	$113, %dx
	je	.L4269
.L4249:
	cmpl	$8, 1884(%rsp)
	movl	$8, %eax
	cmovl	1884(%rsp), %eax
	cmpl	$1, 1880(%rsp)
	movl	%eax, 1884(%rsp)
	jle	.L4272
.L4294:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L13976
.L4279:
	movslq	%edx,%rbx
	movl	1880(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L4279
.L13976:
	testl	%r12d, %r12d
	je	.L4272
	movslq	%r12d,%r13
	movq	%r13, %rdi
	salq	$4, %rdi
	addq	mov_optab(%rip), %rdi
	movl	8(%rdi), %edx
	cmpl	$210, %edx
	je	.L4281
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1884(%rsp)
	jl	.L4281
	movslq	%edx,%rcx
	cmpl	%ebp, 7360(%rsp)
	leaq	7312(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %rdx
	movq	%rdx, 4664(%rsp)
	jl	.L4281
	movl	7368(%rsp), %edx
.L4292:
	testl	%edx, %edx
	je	.L4286
	subl	%ebp, 52(%rbx)
.L4286:
	movl	16(%rbx), %r11d
	testl	%r11d, %r11d
	je	.L4287
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15072:
	movl	40(%rbx), %r9d
	movq	%rax, 1872(%rsp)
	testl	%r9d, %r9d
	je	.L4289
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L4290:
	movq	%rax, %rsi
	movq	1872(%rsp), %rdi
	xorl	%eax, %eax
	call	*4664(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L4291
	addl	%ebp, 52(%rbx)
.L4291:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L4292
.L4281:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 1880(%rsp)
	decl	%r12d
	jg	.L4294
.L4272:
	movl	7360(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L4310
	jmp	.L15283
.L4289:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L4290
.L4287:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15072
.L4269:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7320(%rsp)
	jmp	.L4249
.L4267:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7344(%rsp)
	jmp	.L4266
.L4247:
	movl	$1, %edx
	jmp	.L4246
.L4245:
	movl	$1, %ecx
	jmp	.L4244
.L4243:
	movl	$1, %ecx
	jmp	.L4242
.L4220:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L4216
.L16176:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L4214
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16182
.L4214:
	cmpl	$55, %eax
	jne	.L4217
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L4216
.L16182:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L4216
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 1888(%rsp)
	jmp	.L4216
.L4213:
	cmpq	$0, 16(%r14)
	jne	.L4221
	movq	8(%r14), %r9
	movq	%r9, 1888(%rsp)
	jmp	.L4216
.L4221:
	movq	24(%r14), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 1888(%rsp)
	jne	.L4216
	movq	8(%r14), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
	movq	%rax, 1888(%rsp)
	jmp	.L4216
.L4210:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L4206
.L16175:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L4204
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16183
.L4204:
	cmpl	$55, %eax
	jne	.L4207
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L4206
.L16183:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L4206
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4206
.L4203:
	cmpq	$0, 16(%r12)
	jne	.L4211
	movq	8(%r12), %r12
	jmp	.L4206
.L4211:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L4212
	movq	%rsi, %r12
	jmp	.L4206
.L4212:
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L4206
.L4200:
	movq	1856(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbp)
	call	protect_from_queue
	movq	%rax, 16(%rbp)
	jmp	.L4196
.L16174:
	movq	1856(%rsp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	movq	1856(%rsp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.L4196
.L4193:
	movq	1856(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L4201
	movq	8(%rsi), %rdx
	movq	%rdx, 1896(%rsp)
	jmp	.L4196
.L4201:
	movq	1856(%rsp), %rax
	movq	24(%rax), %r13
	testq	%r13, %r13
	movq	%r13, 1896(%rsp)
	jne	.L4196
	movq	1856(%rsp), %rbx
	movq	8(%rbx), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	1856(%rsp), %r10
	movq	%rax, %rdi
	movq	8(%r10), %rsi
	movq	%rax, 24(%r10)
	call	gen_move_insn
	movq	1856(%rsp), %rbp
	movq	%rax, %rdi
	movq	16(%rbp), %rsi
	call	emit_insn_before
	movq	24(%rbp), %r8
	movq	%r8, 1896(%rsp)
	jmp	.L4196
.L16173:
	movq	1928(%rsp), %r8
	movq	1912(%rsp), %rbp
	movl	32(%r8), %eax
	cmpl	%eax, 8(%rbp)
	jge	.L4067
	movq	8(%r8), %rcx
	movq	1856(%rsp), %r14
	movl	48(%rcx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r14)
	movl	%eax, 1908(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	1856(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L4070
	cmpl	$55, %eax
	je	.L16184
.L4074:
	cmpl	$63, %eax
	je	.L4077
	cmpl	$66, %eax
	je	.L4077
.L4073:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L4080
	cmpl	$55, %eax
	je	.L16185
.L4084:
	cmpl	$63, %eax
	je	.L4087
	cmpl	$66, %eax
	je	.L4087
.L4083:
	movq	1912(%rsp), %rcx
	movzwl	(%rcx), %eax
	cmpl	$59, %eax
	je	.L4090
	cmpl	$55, %eax
	je	.L16186
.L4094:
	cmpl	$63, %eax
	je	.L4097
	cmpl	$66, %eax
	je	.L4097
.L4093:
	movq	1856(%rsp), %r11
	cmpw	$55, (%r11)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1912(%rsp)
	je	.L15283
	movq	1912(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L16187
.L4103:
	movl	1908(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4688(%rsp)
	testl	%ebp, %ebp
	je	.L13967
.L4189:
	movslq	%ebp,%rax
	movq	%rax, 4680(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L4177
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L4181
	movq	1912(%rsp), %r8
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r8)
	ja	.L4177
.L4181:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16188
.L4182:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16189
.L4183:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L4184
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4688(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L4177
.L4184:
	call	get_last_insn
	movl	$1, %edx
	movq	1912(%rsp), %rsi
	movq	%rax, 4672(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16190
.L4185:
	movq	1856(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4688(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14934
	movq	4672(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L4177:
	movq	4680(%rsp), %rax
	movl	mode_wider_mode(,%rax,4), %ebp
	testl	%ebp, %ebp
	jne	.L4189
.L13967:
	movq	1912(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15075
.L16190:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L4185
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L4185
.L16189:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4177
	jmp	.L4183
.L16188:
	xorl	%eax, %eax
	movq	1856(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L4177
	jmp	.L4182
.L16187:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1908(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1908(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L4117:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13958
.L4113:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L4113
.L13958:
	testl	%ecx, %ecx
	je	.L4106
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L4115
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L4115
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L4115:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4117
.L4106:
	decl	%r9d
	jg	.L4103
	movq	1856(%rsp), %rbp
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	8(%rbp), %rbx
	movq	%r12, 7272(%rsp)
	movq	%rbp, 7248(%rsp)
	movl	$0, 7300(%rsp)
	movq	%rdi, 7280(%rsp)
	movq	%rbx, 7256(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L4120
	cmpw	$88, %dx
	je	.L4120
	cmpw	$87, %dx
	je	.L4120
.L4119:
	movl	%ecx, 7264(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L4122
	cmpw	$88, %dx
	je	.L4122
	cmpw	$87, %dx
	je	.L4122
.L4121:
	movl	%ecx, 7288(%rsp)
	movl	$0, 7292(%rsp)
	movl	$0, 7268(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L4124
	cmpw	$87, %ax
	je	.L4124
.L4123:
	testl	%edx, %edx
	movl	%edx, 7304(%rsp)
	je	.L4125
	movl	%r10d, 7300(%rsp)
.L4125:
	movl	%r10d, 7296(%rsp)
	movl	7288(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L4127
	movl	7264(%rsp), %eax
	testl	%eax, %eax
	jne	.L4126
.L4127:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1908(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1908(%rsp), %ebp
.L4141:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L13961
.L4137:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L4137
.L13961:
	testl	%ecx, %ecx
	je	.L4130
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L4139
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L4139
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L4139:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L4141
.L4130:
	cmpl	$2, %r9d
	jle	.L4126
	testl	%r10d, %r10d
	jne	.L4143
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L4144
	cmpw	$46, %dx
	je	.L4144
	cmpw	$47, %dx
	je	.L4144
	cmpw	$49, %dx
	je	.L4144
	cmpw	$113, %dx
	je	.L4144
.L4143:
	movl	7264(%rsp), %esi
	testl	%esi, %esi
	jne	.L4126
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L4146
	cmpw	$46, %dx
	je	.L4146
	cmpw	$47, %dx
	je	.L4146
	cmpw	$49, %dx
	je	.L4146
	cmpw	$113, %dx
	je	.L4146
.L4126:
	cmpl	$8, 1908(%rsp)
	movl	$8, %eax
	cmovl	1908(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1908(%rsp)
	jle	.L4149
.L4171:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L13964
.L4156:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L4156
.L13964:
	testl	%r12d, %r12d
	je	.L4149
	movslq	%r12d,%r13
	movq	%r13, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L4158
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1908(%rsp)
	jl	.L4158
	movslq	%edx,%rdi
	cmpl	%ebp, 7296(%rsp)
	leaq	7248(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r14
	movq	%r14, 4696(%rsp)
	jl	.L4158
	movl	7304(%rsp), %edx
.L4169:
	testl	%edx, %edx
	je	.L4163
	subl	%ebp, 52(%rbx)
.L4163:
	movl	16(%rbx), %edx
	testl	%edx, %edx
	je	.L4164
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15071:
	movl	40(%rbx), %r9d
	movq	%rax, %r14
	testl	%r9d, %r9d
	je	.L4166
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L4167:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*4696(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L4168
	addl	%ebp, 52(%rbx)
.L4168:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L4169
.L4158:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L4171
.L4149:
	movl	7296(%rsp), %r12d
	testl	%r12d, %r12d
	jmp	.L15380
.L4166:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L4167
.L4164:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15071
.L4146:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7256(%rsp)
	jmp	.L4126
.L4144:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 7280(%rsp)
	jmp	.L4143
.L4124:
	movl	$1, %edx
	jmp	.L4123
.L4122:
	movl	$1, %ecx
	jmp	.L4121
.L4120:
	movl	$1, %ecx
	jmp	.L4119
.L4097:
	movq	1912(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1912(%rsp), %r9
	movq	%rax, 8(%r9)
	movq	1912(%rsp), %rdx
	movq	16(%rdx), %rdi
	call	protect_from_queue
	movq	1912(%rsp), %r10
	movq	%rax, 16(%r10)
	jmp	.L4093
.L16186:
	movzbl	2(%rcx), %edx
	cmpb	$16, %dl
	je	.L4091
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16191
.L4091:
	cmpl	$55, %eax
	jne	.L4094
	movq	1912(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L4093
.L16191:
	movq	8(%rbp), %r11
	movq	%r11, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L4093
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1912(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15070:
	movq	%rbx, 1912(%rsp)
	jmp	.L4093
.L4090:
	movq	1912(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L4098
	movq	8(%rcx), %rbx
	jmp	.L15070
.L4098:
	movq	1912(%rsp), %r8
	movq	24(%r8), %rsi
	testq	%rsi, %rsi
	je	.L4099
	movq	%rsi, 1912(%rsp)
	jmp	.L4093
.L4099:
	movq	1912(%rsp), %rbx
	movq	8(%rbx), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	1912(%rsp), %rcx
	movq	%rax, %rdi
	movq	8(%rcx), %rsi
	movq	%rax, 24(%rcx)
	call	gen_move_insn
	movq	1912(%rsp), %r14
	movq	%rax, %rdi
	movq	16(%r14), %rsi
	call	emit_insn_before
	movq	1912(%rsp), %rdi
	movq	24(%rdi), %rsi
	movq	%rsi, 1912(%rsp)
	jmp	.L4093
.L4087:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L4083
.L16185:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L4081
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16192
.L4081:
	cmpl	$55, %eax
	jne	.L4084
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L4083
.L16192:
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L4083
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4083
.L4080:
	cmpq	$0, 16(%r12)
	jne	.L4088
	movq	8(%r12), %r12
	jmp	.L4083
.L4088:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L4089
	movq	%rsi, %r12
	jmp	.L4083
.L4089:
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L4083
.L4077:
	movq	1856(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1856(%rsp), %r10
	movq	%rax, 8(%r10)
	movq	1856(%rsp), %r11
	movq	16(%r11), %rdi
	call	protect_from_queue
	movq	1856(%rsp), %rbx
	movq	%rax, 16(%rbx)
	jmp	.L4073
.L16184:
	jne	.L4074
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L4073
.L4070:
	movq	1856(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L4078
	movq	8(%rcx), %r9
	movq	%r9, 1856(%rsp)
	jmp	.L4073
.L4078:
	movq	1856(%rsp), %rax
	movq	24(%rax), %rdi
	testq	%rdi, %rdi
	je	.L4079
	movq	%rdi, 1856(%rsp)
	jmp	.L4073
.L4079:
	movq	1856(%rsp), %r14
	movq	8(%r14), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	1856(%rsp), %rbp
	movq	%rax, %rdi
	movq	8(%rbp), %rsi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	1856(%rsp), %r13
	movq	%rax, %rdi
	movq	16(%r13), %rsi
	call	emit_insn_before
	movq	1856(%rsp), %rdi
	movq	24(%rdi), %rsi
	movq	%rsi, 1856(%rsp)
	jmp	.L4073
	.p2align 6,,7
.L4059:
	movq	56(%rsp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %r13
	movq	%rax, 8(%r13)
	movq	56(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	56(%rsp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.L4055
.L16081:
	jne	.L4056
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L4055
	.p2align 6,,7
.L4052:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L4060
	movq	8(%rcx), %r14
	movq	%r14, 1856(%rsp)
	jmp	.L4055
.L4060:
	movq	56(%rsp), %rbx
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 1856(%rsp)
	jne	.L4055
	movq	56(%rsp), %rax
	movq	8(%rax), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r9
	movq	%rax, %rdi
	movq	8(%r9), %rsi
	movq	%rax, 24(%r9)
	call	gen_move_insn
	movq	56(%rsp), %rdx
	movq	%rax, %rdi
	movq	16(%rdx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r10
	movq	24(%r10), %r11
	movq	%r11, 1856(%rsp)
	jmp	.L4055
	.p2align 6,,7
.L16080:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	1928(%rsp), %rdi
	movq	56(%rsp), %rbx
	movq	%rax, %rsi
	movzbl	2(%rbx), %edx
	jmp	.L15069
.L4031:
	movq	56(%rsp), %rdx
	movl	(%rdx), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16193
	movq	56(%rsp), %r10
	movq	1928(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%r10), %edx
	movq	%r10, %rsi
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L16194
.L4049:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L4050
	cmpw	$46, %dx
	je	.L4050
	cmpw	$47, %dx
	je	.L4050
	cmpw	$49, %dx
	je	.L4050
	cmpw	$113, %dx
	jne	.L3996
	jmp	.L4050
	.p2align 6,,7
.L16194:
	cmpl	$63, 8(%rdx)
	jle	.L3996
	jmp	.L4049
.L16193:
	movq	1928(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %rbp
	movq	%rax, %rsi
	movzbl	3(%rbp), %edx
	movq	8(%rbp), %rdi
	shrb	$2, %dl
	andl	$1, %edx
	jmp	.L15077
.L4040:
	movl	$1, %ebx
	jmp	.L4034
.L4032:
	xorl	%ebx, %ebx
	jmp	.L4034
.L4038:
	movq	56(%rsp), %r13
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	8(%r13), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L4040
	movq	56(%rsp), %r8
	xorl	%eax, %eax
	movq	16(%r8), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L4034
	jmp	.L4040
	.p2align 6,,7
.L16079:
	movzbl	2(%rcx), %eax
	cmpb	$16, %al
	je	.L4024
	movl	cse_not_expected(%rip), %r9d
	movq	1928(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r9d, %r9d
	cmove	%rcx, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L4050
	testb	%al, %al
	je	.L4050
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15333
	.p2align 6,,7
.L16078:
	movq	56(%rsp), %r12
	cmpb	$16, 2(%r12)
	jne	.L3997
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r12
	testq	%rbx, %rbx
	jne	.L4001
.L13951:
	movq	56(%rsp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L4003
	cmpl	$55, %eax
	je	.L16195
.L4007:
	cmpl	$63, %eax
	je	.L4010
	cmpl	$66, %eax
	je	.L4010
.L4006:
	movq	1928(%rsp), %r14
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r14), %rdi
	call	jumpifnot
	movq	1928(%rsp), %rdx
	movq	1856(%rsp), %rsi
	xorl	%eax, %eax
	movq	40(%rdx), %rdi
	xorl	%edx, %edx
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L4016
.L13953:
	movq	%r12, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	1928(%rsp), %rbp
	movq	1856(%rsp), %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L4021
.L13955:
	movq	%r12, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L4443
	.p2align 6,,7
.L4021:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L4021
	jmp	.L13955
	.p2align 6,,7
.L4016:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r11
	movq	%rax, 16(%rbx)
	testq	%r11, %r11
	movq	%r11, pending_chain(%rip)
	movq	%r11, %rbx
	jne	.L4016
	jmp	.L13953
.L4010:
	movq	56(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %r9
	movq	16(%r9), %rdi
	movq	%rax, 8(%r9)
	call	protect_from_queue
	movq	56(%rsp), %r10
	movq	%rax, 16(%r10)
	jmp	.L4006
.L16195:
	jne	.L4007
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r11
	movq	%rax, 8(%r11)
	jmp	.L4006
.L4003:
	movq	56(%rsp), %rbx
	cmpq	$0, 16(%rbx)
	jne	.L4011
	movq	8(%rbx), %rsi
.L15068:
	movq	%rsi, 1856(%rsp)
	jmp	.L4006
.L4011:
	movq	56(%rsp), %rdi
	movq	24(%rdi), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 1856(%rsp)
	jne	.L4006
	movq	56(%rsp), %rbx
	movq	8(%rbx), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r8
	movq	%rax, %rdi
	movq	8(%r8), %rsi
	movq	%rax, 24(%r8)
	call	gen_move_insn
	movq	56(%rsp), %r13
	movq	%rax, %rdi
	movq	16(%r13), %rsi
	call	emit_insn_before
	movq	24(%r13), %rsi
	jmp	.L15068
	.p2align 6,,7
.L4001:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r14
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	movq	%r14, pending_chain(%rip)
	movq	%r14, %rbx
	jne	.L4001
	jmp	.L13951
	.p2align 6,,7
.L16077:
	movq	32(%rdx), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L3993
.L13949:
	movq	1928(%rsp), %rbx
	movq	56(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	40(%rbx), %rdi
	call	store_expr
	jmp	.L4443
.L3993:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L3993
	jmp	.L13949
.L16076:
	cmpl	$63, 8(%r8)
	jg	.L3934
.L3935:
	movl	5412(%rsp), %edi
	call	gen_reg_rtx
	movq	%rax, 56(%rsp)
	jmp	.L3934
.L16075:
	cmpw	$55, (%r13)
	jne	.L3988
	testb	$32, 17(%rbx)
.L15331:
	je	.L3938
	jmp	.L3988
	.p2align 6,,7
.L16074:
	movq	8(%r13), %r13
	cmpw	$51, (%r13)
	jne	.L3985
	cmpl	$63, 8(%r13)
	jg	.L3985
.L14931:
	xorl	%ebp, %ebp
	jmp	.L3938
.L3952:
	movq	32(%rbx), %rsi
	movq	%r12, %rdi
.L15330:
	xorl	%eax, %eax
	call	safe_from_p
.L15067:
	movl	%eax, %ebp
	jmp	.L3938
.L3954:
	movq	32(%rbx), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	xorl	%ebp, %ebp
	call	safe_from_p
	testl	%eax, %eax
	je	.L3938
	movq	%r12, %rdi
	movq	40(%rbx), %rsi
.L15332:
	xorl	%eax, %eax
	call	safe_from_p
	testl	%eax, %eax
	jmp	.L15331
.L3957:
	movzbl	%dl, %eax
	subl	$39, %eax
	cmpl	$67, %eax
	ja	.L3958
	mov	%eax, %esi
	jmp	*.L3973(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L3973:
	.quad	.L3960
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3971
	.quad	.L3962
	.quad	.L15283
	.quad	.L3969
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3958
	.quad	.L3970
	.quad	.L3967
	.quad	.L3959
	.text
.L3959:
	movq	32(%rbx), %rdi
	call	staticp
	jmp	.L15067
.L3960:
	xorl	%ebp, %ebp
	cmpw	$55, %cx
	je	.L3938
.L3958:
	testq	%r13, %r13
	jne	.L14863
	movzbl	%dl, %ecx 
	xorl	%ebp, %ebp
	salq	$2, %rcx
	addq	tree_code_length(%rip), %rcx
	movl	(%rcx), %r14d
	cmpl	%r14d, %ebp
	jge	.L3943
.L3981:
	movslq	%ebp,%r8
	movq	32(%rbx,%r8,8), %rsi
	testq	%rsi, %rsi
	jne	.L16196
.L3978:
	incl	%ebp
	cmpl	%r14d, %ebp
	jl	.L3981
	jmp	.L3943
.L16196:
	xorl	%eax, %eax
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	jne	.L3978
	jmp	.L14931
.L3971:
	movq	%r12, %rdi
	movq	40(%rbx), %rsi
	jmp	.L15330
.L3962:
	movq	48(%rbx), %r13
	testq	%r13, %r13
	jne	.L14863
	cmpw	$51, %cx
	je	.L16197
.L3966:
	cmpw	$55, %cx
	jne	.L3958
	jmp	.L14931
.L16197:
	cmpl	$63, 8(%r12)
	jle	.L14931
	jmp	.L3966
.L3969:
	movq	40(%rbx), %r13
	jmp	.L3958
.L3970:
	movq	48(%rbx), %r13
	jmp	.L3958
.L3967:
	movq	40(%rbx), %r13
	xorl	%ebp, %ebp
	jmp	.L15066
.L3946:
	cmpb	$3, %dl
	jne	.L14931
	movq	32(%rbx), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	jne	.L16198
.L3949:
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	testq	%rsi, %rsi
	jne	.L15332
	jmp	.L3988
.L16198:
	xorl	%eax, %eax
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	je	.L3938
	jmp	.L3949
	.p2align 6,,7
.L16073:
	movq	8(%r12), %rax
	movq	virtual_outgoing_args_rtx(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L3988
	cmpw	$63, (%rax)
	jne	.L3941
	cmpq	%rdx, 8(%rax)
	jne	.L3941
	jmp	.L3988
	.p2align 6,,7
.L16072:
	movq	8(%r12), %r12
	movzwl	(%r12), %ecx
	cmpw	$51, %cx
	jne	.L3939
	cmpl	$63, 8(%r12)
	jg	.L3939
	jmp	.L14931
	.p2align 6,,7
.L3933:
	movl	5408(%rsp), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L4447
	movq	const1_rtx(%rip), %rsi
.L4447:
	movq	1928(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	jmp	.L4443
.L3932:
	cmpq	$0, 56(%rsp)
	je	.L6331
	movq	32(%r15), %rdx
	movzbq	16(%rdx), %r12
	salq	$3, %r12
	addq	tree_code_type(%rip), %r12
	movq	(%r12), %rdi
	cmpb	$60, (%rdi)
	je	.L16199
.L5368:
	cmpq	$0, 56(%rsp)
	je	.L6331
	movq	32(%r15), %rdx
	movzbq	16(%rdx), %r12
	salq	$3, %r12
	addq	tree_code_type(%rip), %r12
	movq	(%r12), %rdi
	cmpb	$60, (%rdi)
	je	.L16200
.L6331:
	call	gen_label_rtx
	movq	1920(%rsp), %rsi
	movq	%rax, 1312(%rsp)
	xorl	%eax, %eax
	movq	32(%r15), %rdi
	call	jumpifnot
	cmpq	$0, 56(%rsp)
	je	.L7294
	movq	40(%r15), %r8
	xorl	%ebp, %ebp
	movq	56(%rsp), %r13
	movq	%r8, 3928(%rsp)
	movzbl	16(%r8), %eax
	cmpb	$44, %al
	je	.L16201
	cmpb	$48, %al
	je	.L16202
.L7303:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L7330
	movq	56(%rsp), %rdi
	cmpw	$55, (%rdi)
	je	.L16203
.L7330:
	movq	56(%rsp), %rdi
	movzwl	(%rdi), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L7338
	mov	%eax, %r8d
	jmp	*.L7347(,%r8,8)
	.section	.rodata
	.align 8
	.align 4
.L7347:
	.quad	.L7341
	.quad	.L7338
	.quad	.L7338
	.quad	.L7338
	.quad	.L7346
	.quad	.L7338
	.quad	.L7338
	.quad	.L7338
	.quad	.L7344
	.quad	.L7344
	.quad	.L7338
	.quad	.L7344
	.text
.L7341:
	movq	56(%rsp), %r10
	xorl	%eax, %eax
	movq	8(%r10), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L7340:
	testl	%ebx, %ebx
	je	.L7337
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L7349
	testb	%al, %al
	jne	.L16204
.L7349:
	movq	56(%rsp), %rax
	movq	3928(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%rax), %edx
.L15132:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15352:
	movq	%rax, %r12
.L7356:
	movl	$1, %ebp
.L7302:
	cmpq	56(%rsp), %r12
	je	.L7749
	movq	3928(%rsp), %rdx
	cmpb	$0, 16(%rdx)
	je	.L7749
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L7358
	cmpl	$55, %eax
	je	.L16205
.L7362:
	cmpl	$63, %eax
	je	.L7365
	cmpl	$66, %eax
	je	.L7365
.L7361:
	movzbl	2(%r12), %eax
	movzbl	2(%r13), %ecx
	cmpb	%cl, %al
	je	.L7368
	testb	%al, %al
	je	.L7368
	movq	3928(%rsp), %r10
	movq	8(%r10), %r14
	movzbl	17(%r14), %esi
	shrb	$6, %sil
	movl	%esi, %edx
	andl	$1, %edx
	testl	%ebp, %ebp
	je	.L7369
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%r13, %rdi
	movq	%rax, %rsi
.L15139:
	call	emit_move_insn
.L7749:
	cmpq	$0, cleanups_this_call(%rip)
	jne	.L16206
.L7754:
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L7758
.L14303:
	movq	1312(%rsp), %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	1920(%rsp), %rdi
	call	emit_label
	cmpq	$0, 56(%rsp)
	je	.L7760
	movq	48(%r15), %r15
	xorl	%ebp, %ebp
	movq	56(%rsp), %r13
	movq	%r15, 3784(%rsp)
	movzbl	16(%r15), %eax
	cmpb	$44, %al
	je	.L16207
	cmpb	$48, %al
	je	.L16208
.L7769:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L7796
	movq	56(%rsp), %rdx
	cmpw	$55, (%rdx)
	je	.L16209
.L7796:
	movq	56(%rsp), %r14
	movzwl	(%r14), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L7804
	mov	%eax, %esi
	jmp	*.L7813(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L7813:
	.quad	.L7807
	.quad	.L7804
	.quad	.L7804
	.quad	.L7804
	.quad	.L7812
	.quad	.L7804
	.quad	.L7804
	.quad	.L7804
	.quad	.L7810
	.quad	.L7810
	.quad	.L7804
	.quad	.L7810
	.text
.L7807:
	movq	56(%rsp), %rax
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	movl	%eax, %ebx
.L7806:
	testl	%ebx, %ebx
	je	.L7803
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L7815
	testb	%al, %al
	jne	.L16210
.L7815:
	movq	56(%rsp), %rcx
	movq	3784(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%rcx), %edx
.L15141:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15353:
	movq	%rax, %r12
.L7822:
	movl	$1, %ebp
.L7768:
	cmpq	56(%rsp), %r12
	je	.L5367
	movq	3784(%rsp), %rdx
	cmpb	$0, 16(%rdx)
	je	.L5367
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L7824
	cmpl	$55, %eax
	je	.L16211
.L7828:
	cmpl	$63, %eax
	je	.L7831
	cmpl	$66, %eax
	je	.L7831
.L7827:
	movzbl	2(%r12), %eax
	movzbl	2(%r13), %ecx
	cmpb	%cl, %al
	je	.L7834
	testb	%al, %al
	je	.L7834
	movq	3784(%rsp), %r11
	movq	8(%r11), %rdx
	movzbl	17(%rdx), %edi
	shrb	$6, %dil
	movl	%edi, %edx
	andl	$1, %edx
	testl	%ebp, %ebp
	je	.L7835
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%r13, %rdi
	movq	%rax, %rsi
.L15147:
	call	emit_move_insn
	jmp	.L5367
.L7835:
	movq	%r13, %rdi
	movq	%r12, %rsi
.L15148:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L5367
.L7834:
	cmpb	$16, %al
	je	.L16212
.L8090:
	movq	%r13, %rdi
	movq	%r12, %rsi
	jmp	.L15147
.L16212:
	movq	3784(%rsp), %rsi
	cmpb	$28, 16(%rsi)
	je	.L16213
	cmpb	$16, %al
	jne	.L8090
	movq	3784(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	3784(%rsp), %rsi
	movq	%rax, %r14
	movq	8(%rsi), %r9
	movl	48(%r9), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%r13)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L8093
	cmpl	$55, %eax
	je	.L16214
.L8097:
	cmpl	$63, %eax
	je	.L8100
	cmpl	$66, %eax
	je	.L8100
.L8096:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L8103
	cmpl	$55, %eax
	je	.L16215
.L8107:
	cmpl	$63, %eax
	je	.L8110
	cmpl	$66, %eax
	je	.L8110
.L8106:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L8113
	cmpl	$55, %eax
	je	.L16216
.L8117:
	cmpl	$63, %eax
	je	.L8120
	cmpl	$66, %eax
	je	.L8120
.L8116:
	cmpw	$55, (%r13)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	testq	%r14, %r14
	je	.L15283
	cmpw	$46, (%r14)
	je	.L16217
.L8126:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3696(%rsp)
	testl	%ebp, %ebp
	je	.L14347
.L8212:
	movslq	%ebp,%r8
	movq	%r8, %rax
	movq	%r8, 3688(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L8200
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L8204
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L8200
.L8204:
	movslq	%edx,%rcx
	leaq	(%rcx,%rcx,4), %r15
	movq	%rcx, 3680(%rsp)
	salq	$4, %r15
	movq	insn_operand_predicate(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L16218
.L8205:
	movq	insn_operand_predicate+8(%r15), %rdx
	testq	%rdx, %rdx
	jne	.L16219
.L8206:
	movq	insn_operand_predicate+24(%r15), %rdx
	testq	%rdx, %rdx
	je	.L8207
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3696(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L8200
.L8207:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, 3672(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r15), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16220
.L8208:
	movq	3680(%rsp), %r9
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3696(%rsp), %rcx
	call	*insn_gen_function(,%r9,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14960
	movq	3672(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L8200:
	movq	3688(%rsp), %rsi
	movl	mode_wider_mode(,%rsi,4), %ebp
	testl	%ebp, %ebp
	jne	.L8212
.L14347:
	movl	$4, %edi
	movq	%r14, %rsi
.L15146:
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %r14
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, (%rsp)
	movq	8(%r13), %r8
	call	emit_library_call
	jmp	.L5367
.L14960:
	call	emit_insn
	jmp	.L5367
.L16220:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L8208
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L8208
.L16219:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8200
	jmp	.L8206
.L16218:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8200
	jmp	.L8205
.L16217:
	movl	8(%r14), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L8140:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14338
.L8136:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L8136
.L14338:
	testl	%ecx, %ecx
	je	.L8129
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L8138
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L8138
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L8138:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8140
.L8129:
	decl	%r9d
	jg	.L8126
	movq	8(%r13), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 6248(%rsp)
	movl	$0, 6276(%rsp)
	movq	%r13, 6224(%rsp)
	movl	%r10d, %r14d
	movl	$9, 1324(%rsp)
	movq	%rbx, 6232(%rsp)
	movq	%rdi, 6256(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L8143
	cmpw	$88, %dx
	je	.L8143
	cmpw	$87, %dx
	je	.L8143
.L8142:
	movl	%ecx, 6240(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L8145
	cmpw	$88, %dx
	je	.L8145
	cmpw	$87, %dx
	je	.L8145
.L8144:
	movl	%ecx, 6264(%rsp)
	movl	$0, 6268(%rsp)
	movl	$0, 6244(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L8147
	cmpw	$87, %ax
	je	.L8147
.L8146:
	testl	%edx, %edx
	movl	%edx, 6280(%rsp)
	je	.L8148
	movl	%r10d, 6276(%rsp)
.L8148:
	movl	%r10d, 6272(%rsp)
	movl	6264(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L8150
	movl	6240(%rsp), %eax
	testl	%eax, %eax
	jne	.L8149
.L8150:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	%r15d, %ebp
.L8164:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14341
.L8160:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L8160
.L14341:
	testl	%ecx, %ecx
	je	.L8153
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L8162
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L8162
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L8162:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8164
.L8153:
	cmpl	$2, %r9d
	jle	.L8149
	testl	%r10d, %r10d
	jne	.L8166
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L8167
	cmpw	$46, %dx
	je	.L8167
	cmpw	$47, %dx
	je	.L8167
	cmpw	$49, %dx
	je	.L8167
	cmpw	$113, %dx
	je	.L8167
.L8166:
	movl	6240(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L8149
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L8169
	cmpw	$46, %dx
	je	.L8169
	cmpw	$47, %dx
	je	.L8169
	cmpw	$49, %dx
	je	.L8169
	cmpw	$113, %dx
	je	.L8169
.L8149:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, 1324(%rsp)
	jle	.L8172
.L8194:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14344
.L8179:
	movslq	%edx,%rbx
	movl	1324(%rsp), %r10d
	salq	$2, %rbx
	cmpl	%r10d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L8179
.L14344:
	testl	%r12d, %r12d
	je	.L8172
	movslq	%r12d,%r13
	movq	%r13, %rbp
	salq	$4, %rbp
	addq	mov_optab(%rip), %rbp
	movl	8(%rbp), %edx
	cmpl	$210, %edx
	je	.L8181
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L8181
	movslq	%edx,%rdi
	cmpl	%ebp, 6272(%rsp)
	leaq	6224(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %rdx
	movq	%rdx, 3704(%rsp)
	jl	.L8181
	movl	6280(%rsp), %edx
.L8192:
	testl	%edx, %edx
	je	.L8186
	subl	%ebp, 52(%rbx)
.L8186:
	movl	16(%rbx), %r11d
	testl	%r11d, %r11d
	je	.L8187
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15145:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L8189
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L8190:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*3704(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L8191
	addl	%ebp, 52(%rbx)
.L8191:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L8192
.L8181:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 1324(%rsp)
	decl	%r12d
	jg	.L8194
.L8172:
	movl	6272(%rsp), %r15d
	testl	%r15d, %r15d
.L15391:
	je	.L5367
	jmp	.L15283
.L8189:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L8190
.L8187:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15145
.L8169:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6232(%rsp)
	jmp	.L8149
.L8167:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6256(%rsp)
	jmp	.L8166
.L8147:
	movl	$1, %edx
	jmp	.L8146
.L8145:
	movl	$1, %ecx
	jmp	.L8144
.L8143:
	movl	$1, %ecx
	jmp	.L8142
.L8120:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L8116
.L16216:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L8114
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16221
.L8114:
	cmpl	$55, %eax
	jne	.L8117
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L8116
.L16221:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L8116
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r14
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L8116
.L8113:
	cmpq	$0, 16(%r14)
	jne	.L8121
	movq	8(%r14), %r14
	jmp	.L8116
.L8121:
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L8122
	movq	%rsi, %r14
	jmp	.L8116
.L8122:
	movq	8(%r14), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L8116
.L8110:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L8106
.L16215:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L8104
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16222
.L8104:
	cmpl	$55, %eax
	jne	.L8107
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L8106
.L16222:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L8106
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L8106
.L8103:
	cmpq	$0, 16(%r12)
	jne	.L8111
	movq	8(%r12), %r12
	jmp	.L8106
.L8111:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L8112
	movq	%rsi, %r12
	jmp	.L8106
.L8112:
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L8106
.L8100:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L8096
.L16214:
	jne	.L8097
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L8096
.L8093:
	cmpq	$0, 16(%r13)
	jne	.L8101
	movq	8(%r13), %r13
	jmp	.L8096
.L8101:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.L8102
	movq	%rdi, %r13
	jmp	.L8096
.L8102:
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L8096
.L16213:
	xorl	%eax, %eax
	movq	%rsi, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1376(%rsp)
	je	.L16223
.L7839:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	3784(%rsp), %rsi
	movq	%rax, %rdx
	movq	8(%rsi), %r9
	movq	32(%r9), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3784(%rsp), %r11
	movq	%rax, %r15
	movl	32(%r11), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r15, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	3784(%rsp), %rcx
	movq	$0, 1328(%rsp)
	movq	%rax, 1352(%rsp)
	movq	%rax, %r15
	movq	8(%rcx), %rbp
	movl	48(%rbp), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 1348(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 1360(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L7965
	cmpl	$55, %eax
	je	.L16224
	cmpl	$63, %eax
	je	.L7972
	cmpl	$66, %eax
	je	.L7972
.L7968:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L7975
	cmpl	$55, %eax
	je	.L16225
.L7979:
	cmpl	$63, %eax
	je	.L7982
	cmpl	$66, %eax
	je	.L7982
.L7978:
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L7985
	cmpl	$55, %eax
	je	.L16226
.L7989:
	cmpl	$63, %eax
	je	.L7992
	cmpl	$66, %eax
	je	.L7992
.L7988:
	movq	1360(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1352(%rsp)
	je	.L15283
	movq	1352(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L16227
.L7998:
	movl	1348(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3736(%rsp)
	testl	%ebp, %ebp
	je	.L14335
.L8084:
	movslq	%ebp,%r8
	movq	%r8, %rax
	movq	%r8, 3728(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L8072
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L8076
	movq	1352(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L8072
.L8076:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r14
	movq	%r10, 3720(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16228
.L8077:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16229
.L8078:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L8079
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3736(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L8072
.L8079:
	call	get_last_insn
	movl	$1, %edx
	movq	1352(%rsp), %rsi
	movq	%rax, 3712(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16230
.L8080:
	movq	3720(%rsp), %rbp
	movq	1360(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3736(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14959
	movq	3712(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L8072:
	movq	3728(%rsp), %rcx
	movl	mode_wider_mode(,%rcx,4), %ebp
	testl	%ebp, %ebp
	jne	.L8084
.L14335:
	movq	1352(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movq	1360(%rsp), %r11
	movq	8(%r12), %rbx
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%rbx, (%rsp)
	movq	8(%r11), %r8
	call	emit_library_call
.L8082:
	cmpw	$46, (%r15)
	je	.L16231
	movq	8(%r13), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1376(%rsp), %rdx
	movl	$4, %edi
	movq	%r15, %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1328(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L8086:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L8087
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L8087:
	cmpq	$0, 1328(%rsp)
	je	.L5367
	movq	1328(%rsp), %rdi
	call	emit_label
	jmp	.L5367
.L16231:
	movq	3784(%rsp), %r15
	movq	8(%r13), %rdi
	movl	32(%r15), %esi
	call	plus_constant_wide
	movq	1376(%rsp), %rdi
	movq	3784(%rsp), %r13
	movq	%rax, %rbp
	movl	32(%r13), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L8086
.L14959:
	call	emit_insn
	jmp	.L8082
.L16230:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L8080
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L8080
.L16229:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8072
	jmp	.L8078
.L16228:
	xorl	%eax, %eax
	movq	1360(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L8072
	jmp	.L8077
.L16227:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1348(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1348(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L8012:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14326
.L8008:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L8008
.L14326:
	testl	%ecx, %ecx
	je	.L8001
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L8010
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L8010
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L8010:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8012
.L8001:
	decl	%r9d
	jg	.L7998
	movq	1360(%rsp), %rdx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movl	%r10d, %r14d
	movq	8(%rdx), %rbx
	movq	%r12, 6248(%rsp)
	movq	%rdx, 6224(%rsp)
	movl	$0, 6276(%rsp)
	movq	%rdi, 6256(%rsp)
	movl	$9, 1344(%rsp)
	movq	%rbx, 6232(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L8015
	cmpw	$88, %dx
	je	.L8015
	cmpw	$87, %dx
	je	.L8015
.L8014:
	movl	%ecx, 6240(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L8017
	cmpw	$88, %dx
	je	.L8017
	cmpw	$87, %dx
	je	.L8017
.L8016:
	movl	%ecx, 6264(%rsp)
	movl	$0, 6268(%rsp)
	movl	$0, 6244(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L8019
	cmpw	$87, %ax
	je	.L8019
.L8018:
	testl	%edx, %edx
	movl	%edx, 6280(%rsp)
	je	.L8020
	movl	%r10d, 6276(%rsp)
.L8020:
	movl	%r10d, 6272(%rsp)
	movl	6264(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L8022
	movl	6240(%rsp), %eax
	testl	%eax, %eax
	jne	.L8021
.L8022:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1348(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1348(%rsp), %ebp
.L8036:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14329
.L8032:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L8032
.L14329:
	testl	%ecx, %ecx
	je	.L8025
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L8034
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L8034
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L8034:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L8036
.L8025:
	cmpl	$2, %r9d
	jle	.L8021
	testl	%r10d, %r10d
	jne	.L8038
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L8039
	cmpw	$46, %dx
	je	.L8039
	cmpw	$47, %dx
	je	.L8039
	cmpw	$49, %dx
	je	.L8039
	cmpw	$113, %dx
	je	.L8039
.L8038:
	movl	6240(%rsp), %eax
	testl	%eax, %eax
	jne	.L8021
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L8041
	cmpw	$46, %dx
	je	.L8041
	cmpw	$47, %dx
	je	.L8041
	cmpw	$49, %dx
	je	.L8041
	cmpw	$113, %dx
	je	.L8041
.L8021:
	cmpl	$8, 1348(%rsp)
	movl	$8, %eax
	cmovl	1348(%rsp), %eax
	cmpl	$1, 1344(%rsp)
	movl	%eax, 1348(%rsp)
	jle	.L8044
.L8066:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14332
.L8051:
	movslq	%edx,%rbx
	movl	1344(%rsp), %r11d
	salq	$2, %rbx
	cmpl	%r11d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L8051
.L14332:
	testl	%r12d, %r12d
	je	.L8044
	movslq	%r12d,%r14
	movq	%r14, %r9
	salq	$4, %r9
	addq	mov_optab(%rip), %r9
	movl	8(%r9), %edx
	cmpl	$210, %edx
	je	.L8053
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1348(%rsp)
	jl	.L8053
	movslq	%edx,%rdi
	cmpl	%ebp, 6272(%rsp)
	leaq	6224(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %rsi
	movq	%rsi, 3744(%rsp)
	jl	.L8053
	movl	6280(%rsp), %edx
.L8064:
	testl	%edx, %edx
	je	.L8058
	subl	%ebp, 52(%rbx)
.L8058:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L8059
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15144:
	movq	%rax, 1336(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L8061
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L8062:
	movq	%rax, %rsi
	movq	1336(%rsp), %rdi
	xorl	%eax, %eax
	call	*3744(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L8063
	addl	%ebp, 52(%rbx)
.L8063:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L8064
.L8053:
	movl	mode_size(,%r14,4), %r12d
	movl	%r12d, 1344(%rsp)
	decl	%r12d
	jg	.L8066
.L8044:
	movl	6272(%rsp), %edx
	testl	%edx, %edx
	je	.L8082
	jmp	.L15283
.L8061:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L8062
.L8059:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15144
.L8041:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6232(%rsp)
	jmp	.L8021
.L8039:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6256(%rsp)
	jmp	.L8038
.L8019:
	movl	$1, %edx
	jmp	.L8018
.L8017:
	movl	$1, %ecx
	jmp	.L8016
.L8015:
	movl	$1, %ecx
	jmp	.L8014
.L7992:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L7988
.L16226:
	movzbl	2(%r15), %edx
	cmpb	$16, %dl
	je	.L7986
	movq	8(%r15), %rbp
	cmpw	$59, (%rbp)
	je	.L16232
.L7986:
	cmpl	$55, %eax
	jne	.L7989
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L7988
.L16232:
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%r15)
	cmpq	$0, 16(%rbp)
	je	.L7988
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r14, 1352(%rsp)
	jmp	.L7988
.L7985:
	cmpq	$0, 16(%r15)
	jne	.L7993
	movq	8(%r15), %rbp
	movq	%rbp, 1352(%rsp)
	jmp	.L7988
.L7993:
	movq	24(%r15), %r11
	testq	%r11, %r11
	movq	%r11, 1352(%rsp)
	jne	.L7988
	movq	8(%r15), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r9
	movq	%r9, 1352(%rsp)
	jmp	.L7988
.L7982:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L7978
.L16225:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L7976
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16233
.L7976:
	cmpl	$55, %eax
	jne	.L7979
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L7978
.L16233:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L7978
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7978
.L7975:
	cmpq	$0, 16(%r12)
	jne	.L7983
	movq	8(%r12), %r12
	jmp	.L7978
.L7983:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L7984
	movq	%rsi, %r12
	jmp	.L7978
.L7984:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L7978
.L7972:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L7968
.L16224:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L7968
.L7965:
	cmpq	$0, 16(%r13)
	jne	.L7973
	movq	8(%r13), %rax
	movq	%rax, 1360(%rsp)
	jmp	.L7968
.L7973:
	movq	24(%r13), %rbx
	testq	%rbx, %rbx
	movq	%rbx, 1360(%rsp)
	jne	.L7968
	movq	8(%r13), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r10
	movq	%r10, 1360(%rsp)
	jmp	.L7968
.L16223:
	movq	3784(%rsp), %rdi
	movq	1376(%rsp), %rbp
	movl	32(%rdi), %eax
	cmpl	%eax, 8(%rbp)
	jge	.L7839
	movq	8(%rdi), %r14
	movl	48(%r14), %r15d
	shrl	$3, %r15d
	cmpb	$16, 2(%r13)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L7842
	cmpl	$55, %eax
	je	.L16234
.L7846:
	cmpl	$63, %eax
	je	.L7849
	cmpl	$66, %eax
	je	.L7849
.L7845:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L7852
	cmpl	$55, %eax
	je	.L16235
.L7856:
	cmpl	$63, %eax
	je	.L7859
	cmpl	$66, %eax
	je	.L7859
.L7855:
	movq	1376(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L7862
	cmpl	$55, %eax
	je	.L16236
.L7866:
	cmpl	$63, %eax
	je	.L7869
	cmpl	$66, %eax
	je	.L7869
.L7865:
	cmpw	$55, (%r13)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1376(%rsp)
	je	.L15283
	movq	1376(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L16237
.L7875:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	movl	%r15d, %edx
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3768(%rsp)
	testl	%ebp, %ebp
	je	.L14323
.L7961:
	movslq	%ebp,%r15
	movq	%r15, %rax
	movq	%r15, 3760(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L7949
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L7953
	movq	1376(%rsp), %r14
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L7949
.L7953:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r14
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16238
.L7954:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16239
.L7955:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L7956
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3768(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L7949
.L7956:
	call	get_last_insn
	movl	$1, %edx
	movq	1376(%rsp), %rsi
	movq	%rax, 3752(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16240
.L7957:
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3768(%rsp), %rcx
	call	*insn_gen_function(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14960
	movq	3752(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L7949:
	movq	3760(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L7961
.L14323:
	movq	1376(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15146
.L16240:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L7957
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L7957
.L16239:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7949
	jmp	.L7955
.L16238:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7949
	jmp	.L7954
.L16237:
	movl	8(%rbx), %r10d
	xorl	%r9d, %r9d
	movl	$9, %r8d
	movl	$8, %ebx
	cmpl	$8, %r15d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	%r15d, %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L7889:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14314
.L7885:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L7885
.L14314:
	testl	%ecx, %ecx
	je	.L7878
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L7887
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L7887
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L7887:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7889
.L7878:
	decl	%r9d
	jg	.L7875
	movq	8(%r13), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 6312(%rsp)
	movl	$0, 6340(%rsp)
	movq	%r13, 6288(%rsp)
	movl	%r10d, %r14d
	movl	$9, 1372(%rsp)
	movq	%rbx, 6296(%rsp)
	movq	%rdi, 6320(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L7892
	cmpw	$88, %dx
	je	.L7892
	cmpw	$87, %dx
	je	.L7892
.L7891:
	movl	%ecx, 6304(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L7894
	cmpw	$88, %dx
	je	.L7894
	cmpw	$87, %dx
	je	.L7894
.L7893:
	movl	%ecx, 6328(%rsp)
	movl	$0, 6332(%rsp)
	movl	$0, 6308(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L7896
	cmpw	$87, %ax
	je	.L7896
.L7895:
	testl	%edx, %edx
	movl	%edx, 6344(%rsp)
	je	.L7897
	movl	%r10d, 6340(%rsp)
.L7897:
	movl	%r10d, 6336(%rsp)
	movl	6328(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L7899
	movl	6304(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L7898
.L7899:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, %r15d
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	%r15d, %ebp
.L7913:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14317
.L7909:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L7909
.L14317:
	testl	%ecx, %ecx
	je	.L7902
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L7911
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L7911
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L7911:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7913
.L7902:
	cmpl	$2, %r9d
	jle	.L7898
	testl	%r10d, %r10d
	jne	.L7915
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L7916
	cmpw	$46, %dx
	je	.L7916
	cmpw	$47, %dx
	je	.L7916
	cmpw	$49, %dx
	je	.L7916
	cmpw	$113, %dx
	je	.L7916
.L7915:
	movl	6304(%rsp), %eax
	testl	%eax, %eax
	jne	.L7898
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L7918
	cmpw	$46, %dx
	je	.L7918
	cmpw	$47, %dx
	je	.L7918
	cmpw	$49, %dx
	je	.L7918
	cmpw	$113, %dx
	je	.L7918
.L7898:
	cmpl	$8, %r15d
	movl	$8, %eax
	cmovge	%eax, %r15d
	cmpl	$1, 1372(%rsp)
	jle	.L7921
.L7943:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14320
.L7928:
	movslq	%edx,%rsi
	movl	1372(%rsp), %r9d
	salq	$2, %rsi
	cmpl	%r9d, mode_size(%rsi)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rsi), %edx
	testl	%edx, %edx
	jne	.L7928
.L14320:
	testl	%r12d, %r12d
	je	.L7921
	movslq	%r12d,%r13
	movq	%r13, %rbx
	salq	$4, %rbx
	addq	mov_optab(%rip), %rbx
	movl	8(%rbx), %edx
	cmpl	$210, %edx
	je	.L7930
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, %r15d
	jl	.L7930
	movslq	%edx,%r8
	cmpl	%ebp, 6336(%rsp)
	leaq	6288(%rsp), %rbx
	movq	insn_gen_function(,%r8,8), %r10
	movq	%r10, 3776(%rsp)
	jl	.L7930
	movl	6344(%rsp), %edx
.L7941:
	testl	%edx, %edx
	je	.L7935
	subl	%ebp, 52(%rbx)
.L7935:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L7936
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15143:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L7938
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L7939:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*3776(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L7940
	addl	%ebp, 52(%rbx)
.L7940:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L7941
.L7930:
	movl	mode_size(,%r13,4), %edi
	movl	%edi, 1372(%rsp)
	decl	%edi
	jg	.L7943
.L7921:
	movl	6336(%rsp), %eax
	testl	%eax, %eax
	jmp	.L15391
.L7938:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L7939
.L7936:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15143
.L7918:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6296(%rsp)
	jmp	.L7898
.L7916:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6320(%rsp)
	jmp	.L7915
.L7896:
	movl	$1, %edx
	jmp	.L7895
.L7894:
	movl	$1, %ecx
	jmp	.L7893
.L7892:
	movl	$1, %ecx
	jmp	.L7891
.L7869:
	movq	1376(%rsp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1376(%rsp), %r8
	movq	%rax, 8(%r8)
	movq	1376(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	1376(%rsp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.L7865
.L16236:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L7863
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16241
.L7863:
	cmpl	$55, %eax
	jne	.L7866
	movq	1376(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L7865
.L16241:
	movq	8(%rbp), %r10
	movq	%r10, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L7865
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1376(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15142:
	movq	%rbx, 1376(%rsp)
	jmp	.L7865
.L7862:
	movq	1376(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L7870
	movq	8(%rcx), %rbx
	jmp	.L15142
.L7870:
	movq	1376(%rsp), %r11
	movq	24(%r11), %rsi
	testq	%rsi, %rsi
	je	.L7871
	movq	%rsi, 1376(%rsp)
	jmp	.L7865
.L7871:
	movq	1376(%rsp), %r10
	movq	8(%r10), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	1376(%rsp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	1376(%rsp), %r9
	movq	%rax, %rdi
	movq	16(%r9), %rsi
	call	emit_insn_before
	movq	1376(%rsp), %rsi
	movq	24(%rsi), %rdi
	movq	%rdi, 1376(%rsp)
	jmp	.L7865
.L7859:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L7855
.L16235:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L7853
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16242
.L7853:
	cmpl	$55, %eax
	jne	.L7856
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L7855
.L16242:
	movq	8(%rbp), %r9
	movq	%r9, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L7855
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7855
.L7852:
	cmpq	$0, 16(%r12)
	jne	.L7860
	movq	8(%r12), %r12
	jmp	.L7855
.L7860:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L7861
	movq	%rsi, %r12
	jmp	.L7855
.L7861:
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L7855
.L7849:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L7845
.L16234:
	jne	.L7846
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L7845
.L7842:
	cmpq	$0, 16(%r13)
	jne	.L7850
	movq	8(%r13), %r13
	jmp	.L7845
.L7850:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.L7851
	movq	%rdi, %r13
	jmp	.L7845
.L7851:
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L7845
	.p2align 6,,7
.L7831:
	movq	56(%rsp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	movq	56(%rsp), %rsi
	movq	%rax, 8(%rsi)
	xorl	%esi, %esi
	movq	56(%rsp), %r14
	movq	16(%r14), %rdi
	call	protect_from_queue
	movq	56(%rsp), %r11
	movq	%rax, 16(%r11)
	jmp	.L7827
.L16211:
	jne	.L7828
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L7827
	.p2align 6,,7
.L7824:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L7832
	movq	8(%rcx), %r13
	jmp	.L7827
.L7832:
	movq	56(%rsp), %r9
	movq	24(%r9), %r15
	testq	%r15, %r15
	movq	%r15, %r13
	jne	.L7827
	movq	56(%rsp), %r13
	movq	8(%r13), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	8(%rcx), %rsi
	movq	%rax, 24(%rcx)
	call	gen_move_insn
	movq	56(%rsp), %r10
	movq	%rax, %rdi
	movq	16(%r10), %rsi
	call	emit_insn_before
	movq	56(%rsp), %rbx
	movq	24(%rbx), %r13
	jmp	.L7827
	.p2align 6,,7
.L16210:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3784(%rsp), %rdi
	movq	56(%rsp), %r10
	movq	%rax, %rsi
	movzbl	2(%r10), %edx
	jmp	.L15141
.L7803:
	movq	56(%rsp), %r8
	movl	(%r8), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16243
	movq	56(%rsp), %r12
	movq	3784(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%r12), %edx
	movq	%r12, %rsi
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L16244
.L7821:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %edi
	cmpw	$1, %di
	jbe	.L7822
	cmpw	$46, %dx
	je	.L7822
	cmpw	$47, %dx
	je	.L7822
	cmpw	$49, %dx
	je	.L7822
	cmpw	$113, %dx
	jne	.L7768
	jmp	.L7822
.L16244:
	cmpl	$63, 8(%rdx)
	jle	.L7768
	jmp	.L7821
.L16243:
	movq	3784(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %rbp
	movq	%rax, %rsi
	movzbl	3(%rbp), %edx
	movq	8(%rbp), %rdi
	shrb	$2, %dl
	andl	$1, %edx
	jmp	.L15148
.L7812:
	movl	$1, %ebx
	jmp	.L7806
.L7804:
	xorl	%ebx, %ebx
	jmp	.L7806
.L7810:
	movq	56(%rsp), %r15
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	8(%r15), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L7812
	movq	56(%rsp), %r9
	xorl	%eax, %eax
	movq	16(%r9), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L7806
	jmp	.L7812
.L16209:
	movzbl	2(%rdx), %eax
	cmpb	$16, %al
	je	.L7796
	movl	cse_not_expected(%rip), %r11d
	movq	3784(%rsp), %rdi
	xorl	%esi, %esi
	testl	%r11d, %r11d
	cmove	%rdx, %rsi
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	xorl	%eax, %eax
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L7822
	testb	%al, %al
	je	.L7822
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15353
.L16208:
	movq	56(%rsp), %r12
	cmpb	$16, 2(%r12)
	jne	.L7769
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r12
	testq	%rbx, %rbx
	jne	.L7773
.L14307:
	movq	56(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L7775
	cmpl	$55, %eax
	je	.L16245
.L7779:
	cmpl	$63, %eax
	je	.L7782
	cmpl	$66, %eax
	je	.L7782
.L7778:
	movq	3784(%rsp), %r8
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r8), %rdi
	call	jumpifnot
	movq	3784(%rsp), %r10
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	40(%r10), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L7788
.L14309:
	movq	%r12, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	3784(%rsp), %rbp
	movq	%r13, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L7793
.L14311:
	movq	%r12, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L5367
.L7793:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L7793
	jmp	.L14311
.L7788:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdi
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, pending_chain(%rip)
	movq	%rdi, %rbx
	jne	.L7788
	jmp	.L14309
.L7782:
	movq	56(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L7778
.L16245:
	jne	.L7779
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %r11
	movq	%rax, 8(%r11)
	jmp	.L7778
.L7775:
	movq	56(%rsp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.L7783
	movq	8(%rsi), %r13
	jmp	.L7778
.L7783:
	movq	56(%rsp), %r13
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	movq	%rsi, %r13
	jne	.L7778
	movq	56(%rsp), %rcx
	movq	8(%rcx), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %rbx
	movq	%rax, %rdi
	movq	8(%rbx), %rsi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	56(%rsp), %r15
	movq	%rax, %rdi
	movq	16(%r15), %rsi
	call	emit_insn_before
	movq	24(%r15), %r13
	jmp	.L7778
	.p2align 6,,7
.L7773:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L7773
	jmp	.L14307
.L16207:
	movq	32(%r15), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L7765
.L14305:
	movq	3784(%rsp), %rax
	movq	56(%rsp), %rsi
	xorl	%edx, %edx
	movq	40(%rax), %rdi
	xorl	%eax, %eax
	call	store_expr
	jmp	.L5367
.L7765:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r15
	movq	%rax, 16(%rbx)
	testq	%r15, %r15
	movq	%r15, pending_chain(%rip)
	movq	%r15, %rbx
	jne	.L7765
	jmp	.L14305
	.p2align 6,,7
.L7760:
	movl	5408(%rsp), %r13d
	xorl	%esi, %esi
	leaq	48(%r15), %rax
	testl	%r13d, %r13d
	je	.L8219
	movq	const0_rtx(%rip), %rsi
.L8219:
	movq	(%rax), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	jmp	.L5367
.L7758:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r8
	movq	%rax, 16(%rbx)
	testq	%r8, %r8
	movq	%r8, pending_chain(%rip)
	movq	%r8, %rbx
	jne	.L7758
	jmp	.L14303
.L16206:
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	sorry
	movq	$0, cleanups_this_call(%rip)
	jmp	.L7754
.L7369:
	movq	%r13, %rdi
	movq	%r12, %rsi
.L15140:
	xorl	%eax, %eax
	call	convert_move
	jmp	.L7749
.L7368:
	cmpb	$16, %al
	je	.L16246
.L7624:
	movq	%r13, %rdi
	movq	%r12, %rsi
	jmp	.L15139
.L16246:
	movq	3928(%rsp), %rsi
	cmpb	$28, 16(%rsi)
	je	.L16247
	cmpb	$16, %al
	jne	.L7624
	movq	3928(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	3928(%rsp), %r8
	movq	%rax, %r14
	movq	8(%r8), %r11
	movl	48(%r11), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 1388(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L7627
	cmpl	$55, %eax
	je	.L16248
.L7631:
	cmpl	$63, %eax
	je	.L7634
	cmpl	$66, %eax
	je	.L7634
.L7630:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L7637
	cmpl	$55, %eax
	je	.L16249
.L7641:
	cmpl	$63, %eax
	je	.L7644
	cmpl	$66, %eax
	je	.L7644
.L7640:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L7647
	cmpl	$55, %eax
	je	.L16250
.L7651:
	cmpl	$63, %eax
	je	.L7654
	cmpl	$66, %eax
	je	.L7654
.L7650:
	cmpw	$55, (%r13)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	testq	%r14, %r14
	je	.L15283
	cmpw	$46, (%r14)
	je	.L16251
.L7660:
	movl	1388(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3824(%rsp)
	testl	%ebp, %ebp
	je	.L14301
.L7746:
	movslq	%ebp,%rdx
	movq	%rdx, %rax
	movq	%rdx, 3816(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L7734
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L7738
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r14)
	ja	.L7734
.L7738:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %r11
	movq	%rsi, 3808(%rsp)
	salq	$4, %r11
	movq	insn_operand_predicate(%r11), %rdx
	movq	%r11, 3800(%rsp)
	testq	%rdx, %rdx
	jne	.L16252
.L7739:
	movq	3800(%rsp), %rbx
	movq	insn_operand_predicate+8(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L16253
.L7740:
	movq	3800(%rsp), %r9
	movq	insn_operand_predicate+24(%r9), %rdx
	testq	%rdx, %rdx
	je	.L7741
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3824(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L7734
.L7741:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rax, 3792(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	3800(%rsp), %rcx
	movq	%rax, %rbx
	movq	insn_operand_predicate+16(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L16254
.L7742:
	movq	3808(%rsp), %rbp
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3824(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14957
	movq	3792(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L7734:
	movq	3816(%rsp), %r10
	movl	mode_wider_mode(,%r10,4), %ebp
	testl	%ebp, %ebp
	jne	.L7746
.L14301:
	movl	$4, %edi
	movq	%r14, %rsi
.L15138:
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %r14
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, (%rsp)
	movq	8(%r13), %r8
	call	emit_library_call
	jmp	.L7749
.L14957:
	call	emit_insn
	jmp	.L7749
.L16254:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L7742
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L7742
.L16253:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7734
	jmp	.L7740
.L16252:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7734
	jmp	.L7739
.L16251:
	movl	8(%r14), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1388(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1388(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L7674:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14292
.L7670:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L7670
.L14292:
	testl	%ecx, %ecx
	je	.L7663
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L7672
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L7672
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L7672:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7674
.L7663:
	decl	%r9d
	jg	.L7660
	movq	8(%r13), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 6376(%rsp)
	movl	$0, 6404(%rsp)
	movq	%r13, 6352(%rsp)
	movl	%r10d, %r14d
	movl	$9, 1384(%rsp)
	movq	%rbx, 6360(%rsp)
	movq	%rdi, 6384(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L7677
	cmpw	$88, %dx
	je	.L7677
	cmpw	$87, %dx
	je	.L7677
.L7676:
	movl	%ecx, 6368(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L7679
	cmpw	$88, %dx
	je	.L7679
	cmpw	$87, %dx
	je	.L7679
.L7678:
	movl	%ecx, 6392(%rsp)
	movl	$0, 6396(%rsp)
	movl	$0, 6372(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L7681
	cmpw	$87, %ax
	je	.L7681
.L7680:
	testl	%edx, %edx
	movl	%edx, 6408(%rsp)
	je	.L7682
	movl	%r10d, 6404(%rsp)
.L7682:
	movl	%r10d, 6400(%rsp)
	movl	6392(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L7684
	movl	6368(%rsp), %eax
	testl	%eax, %eax
	jne	.L7683
.L7684:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1388(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1388(%rsp), %ebp
.L7698:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14295
.L7694:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L7694
.L14295:
	testl	%ecx, %ecx
	je	.L7687
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L7696
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L7696
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L7696:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7698
.L7687:
	cmpl	$2, %r9d
	jle	.L7683
	testl	%r10d, %r10d
	jne	.L7700
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L7701
	cmpw	$46, %dx
	je	.L7701
	cmpw	$47, %dx
	je	.L7701
	cmpw	$49, %dx
	je	.L7701
	cmpw	$113, %dx
	je	.L7701
.L7700:
	movl	6368(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L7683
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L7703
	cmpw	$46, %dx
	je	.L7703
	cmpw	$47, %dx
	je	.L7703
	cmpw	$49, %dx
	je	.L7703
	cmpw	$113, %dx
	je	.L7703
.L7683:
	cmpl	$8, 1388(%rsp)
	movl	$8, %eax
	cmovl	1388(%rsp), %eax
	cmpl	$1, 1384(%rsp)
	movl	%eax, 1388(%rsp)
	jle	.L7706
.L7728:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14298
.L7713:
	movslq	%edx,%rbx
	movl	1384(%rsp), %r9d
	salq	$2, %rbx
	cmpl	%r9d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L7713
.L14298:
	testl	%r12d, %r12d
	je	.L7706
	movslq	%r12d,%r13
	movq	%r13, %rcx
	salq	$4, %rcx
	addq	mov_optab(%rip), %rcx
	movl	8(%rcx), %edx
	cmpl	$210, %edx
	je	.L7715
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1388(%rsp)
	jl	.L7715
	movslq	%edx,%r8
	cmpl	%ebp, 6400(%rsp)
	leaq	6352(%rsp), %rbx
	movq	insn_gen_function(,%r8,8), %r10
	movq	%r10, 3832(%rsp)
	jl	.L7715
	movl	6408(%rsp), %edx
.L7726:
	testl	%edx, %edx
	je	.L7720
	subl	%ebp, 52(%rbx)
.L7720:
	movl	16(%rbx), %edi
	testl	%edi, %edi
	je	.L7721
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15137:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L7723
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L7724:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*3832(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L7725
	addl	%ebp, 52(%rbx)
.L7725:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L7726
.L7715:
	movl	mode_size(,%r13,4), %r12d
	movl	%r12d, 1384(%rsp)
	decl	%r12d
	jg	.L7728
.L7706:
	movl	6400(%rsp), %r13d
	testl	%r13d, %r13d
.L15390:
	je	.L7749
	jmp	.L15283
.L7723:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L7724
.L7721:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15137
.L7703:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6360(%rsp)
	jmp	.L7683
.L7701:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6384(%rsp)
	jmp	.L7700
.L7681:
	movl	$1, %edx
	jmp	.L7680
.L7679:
	movl	$1, %ecx
	jmp	.L7678
.L7677:
	movl	$1, %ecx
	jmp	.L7676
.L7654:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L7650
.L16250:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L7648
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16255
.L7648:
	cmpl	$55, %eax
	jne	.L7651
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L7650
.L16255:
	movq	8(%rbp), %r10
	movq	%r10, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L7650
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r14
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7650
.L7647:
	cmpq	$0, 16(%r14)
	jne	.L7655
	movq	8(%r14), %r14
	jmp	.L7650
.L7655:
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.L7656
	movq	%rsi, %r14
	jmp	.L7650
.L7656:
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L7650
.L7644:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L7640
.L16249:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L7638
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16256
.L7638:
	cmpl	$55, %eax
	jne	.L7641
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L7640
.L16256:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L7640
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	%rbx, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7640
.L7637:
	cmpq	$0, 16(%r12)
	jne	.L7645
	movq	8(%r12), %r12
	jmp	.L7640
.L7645:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L7646
	movq	%rsi, %r12
	jmp	.L7640
.L7646:
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L7640
.L7634:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L7630
.L16248:
	jne	.L7631
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L7630
.L7627:
	cmpq	$0, 16(%r13)
	jne	.L7635
	movq	8(%r13), %r13
	jmp	.L7630
.L7635:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.L7636
	movq	%rdi, %r13
	jmp	.L7630
.L7636:
	movq	8(%r13), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L7630
.L16247:
	xorl	%eax, %eax
	movq	%rsi, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1440(%rsp)
	je	.L16257
.L7373:
	movl	$8, %edi
	call	size_int
	movq	3928(%rsp), %rdi
	movq	%rax, %rdx
	movq	8(%rdi), %r8
	movl	$57, %edi
	movq	32(%r8), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	3928(%rsp), %r11
	movq	%rax, %r14
	movl	32(%r11), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r14, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	3928(%rsp), %r9
	movq	$0, 1392(%rsp)
	movq	%rax, 3880(%rsp)
	movq	%rax, 1416(%rsp)
	movq	8(%r9), %rbx
	movl	48(%rbx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 1412(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r13, 1424(%rsp)
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L7499
	cmpl	$55, %eax
	je	.L16258
	cmpl	$63, %eax
	je	.L7506
	cmpl	$66, %eax
	je	.L7506
.L7502:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L7509
	cmpl	$55, %eax
	je	.L16259
.L7513:
	cmpl	$63, %eax
	je	.L7516
	cmpl	$66, %eax
	je	.L7516
.L7512:
	movq	3880(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L7519
	cmpl	$55, %eax
	je	.L16260
.L7523:
	cmpl	$63, %eax
	je	.L7526
	cmpl	$66, %eax
	je	.L7526
.L7522:
	movq	1424(%rsp), %r11
	cmpw	$55, (%r11)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1416(%rsp)
	je	.L15283
	movq	1416(%rsp), %rsi
	cmpw	$46, (%rsi)
	je	.L16261
.L7532:
	movl	1412(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3864(%rsp)
	testl	%ebp, %ebp
	je	.L14289
.L7618:
	movslq	%ebp,%rcx
	movq	%rcx, %rax
	movq	%rcx, 3856(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L7606
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L7610
	movq	1416(%rsp), %r9
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r9)
	ja	.L7606
.L7610:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r14
	movq	%r10, 3848(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16262
.L7611:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16263
.L7612:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L7613
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3864(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L7606
.L7613:
	call	get_last_insn
	movl	$1, %edx
	movq	1416(%rsp), %rsi
	movq	%rax, 3840(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16264
.L7614:
	movq	3848(%rsp), %r14
	movq	1424(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3864(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14956
	movq	3840(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L7606:
	movq	3856(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L7618
.L14289:
	movq	1416(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %rsi
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%edx, %edx
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	movq	1424(%rsp), %rax
	movq	%rsi, (%rsp)
	xorl	%esi, %esi
	movq	8(%rax), %r8
	xorl	%eax, %eax
	call	emit_library_call
.L7616:
	movq	3880(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L16265
	movq	8(%r13), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	3880(%rsp), %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1440(%rsp), %rdx
	movl	$4, %edi
	movq	3880(%rsp), %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1392(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L7620:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L7621
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L7621:
	cmpq	$0, 1392(%rsp)
	je	.L7749
	movq	1392(%rsp), %rdi
	call	emit_label
	jmp	.L7749
.L16265:
	movq	3928(%rsp), %rbp
	movq	8(%r13), %rdi
	movl	32(%rbp), %esi
	call	plus_constant_wide
	movq	1440(%rsp), %rdi
	movq	3928(%rsp), %r13
	movq	%rax, %rbp
	movl	32(%r13), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L7620
.L14956:
	call	emit_insn
	jmp	.L7616
.L16264:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L7614
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L7614
.L16263:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7606
	jmp	.L7612
.L16262:
	xorl	%eax, %eax
	movq	1424(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7606
	jmp	.L7611
.L16261:
	movl	8(%rsi), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1412(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1412(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L7546:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14280
.L7542:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L7542
.L14280:
	testl	%ecx, %ecx
	je	.L7535
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L7544
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L7544
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L7544:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7546
.L7535:
	decl	%r9d
	jg	.L7532
	movq	1424(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r14d
	movq	8(%rcx), %rbx
	movq	%r12, 6376(%rsp)
	movq	%rcx, 6352(%rsp)
	movl	$0, 6404(%rsp)
	movq	%rdi, 6384(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 1408(%rsp)
	movq	%rbx, 6360(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L7549
	cmpw	$88, %dx
	je	.L7549
	cmpw	$87, %dx
	je	.L7549
.L7548:
	movl	%ecx, 6368(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L7551
	cmpw	$88, %dx
	je	.L7551
	cmpw	$87, %dx
	je	.L7551
.L7550:
	movl	%ecx, 6392(%rsp)
	movl	$0, 6396(%rsp)
	movl	$0, 6372(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L7553
	cmpw	$87, %ax
	je	.L7553
.L7552:
	testl	%edx, %edx
	movl	%edx, 6408(%rsp)
	je	.L7554
	movl	%r10d, 6404(%rsp)
.L7554:
	movl	%r10d, 6400(%rsp)
	movl	6392(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L7556
	movl	6368(%rsp), %eax
	testl	%eax, %eax
	jne	.L7555
.L7556:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1412(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1412(%rsp), %ebp
.L7570:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14283
.L7566:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L7566
.L14283:
	testl	%ecx, %ecx
	je	.L7559
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L7568
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L7568
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L7568:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7570
.L7559:
	cmpl	$2, %r9d
	jle	.L7555
	testl	%r10d, %r10d
	jne	.L7572
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L7573
	cmpw	$46, %dx
	je	.L7573
	cmpw	$47, %dx
	je	.L7573
	cmpw	$49, %dx
	je	.L7573
	cmpw	$113, %dx
	je	.L7573
.L7572:
	movl	6368(%rsp), %eax
	testl	%eax, %eax
	jne	.L7555
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L7575
	cmpw	$46, %dx
	je	.L7575
	cmpw	$47, %dx
	je	.L7575
	cmpw	$49, %dx
	je	.L7575
	cmpw	$113, %dx
	je	.L7575
.L7555:
	cmpl	$8, 1412(%rsp)
	movl	$8, %eax
	cmovl	1412(%rsp), %eax
	cmpl	$1, 1408(%rsp)
	movl	%eax, 1412(%rsp)
	jle	.L7578
.L7600:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14286
.L7585:
	movslq	%edx,%rbx
	movl	1408(%rsp), %eax
	salq	$2, %rbx
	cmpl	%eax, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L7585
.L14286:
	testl	%r12d, %r12d
	je	.L7578
	movslq	%r12d,%r14
	movq	%r14, %rbp
	salq	$4, %rbp
	addq	mov_optab(%rip), %rbp
	movl	8(%rbp), %edx
	cmpl	$210, %edx
	je	.L7587
	movl	mode_size(,%r14,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1412(%rsp)
	jl	.L7587
	movslq	%edx,%r8
	cmpl	%ebp, 6400(%rsp)
	leaq	6352(%rsp), %rbx
	movq	insn_gen_function(,%r8,8), %r11
	movq	%r11, 3872(%rsp)
	jl	.L7587
	movl	6408(%rsp), %edx
.L7598:
	testl	%edx, %edx
	je	.L7592
	subl	%ebp, 52(%rbx)
.L7592:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L7593
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15136:
	movq	%rax, 1400(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L7595
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L7596:
	movq	%rax, %rsi
	movq	1400(%rsp), %rdi
	xorl	%eax, %eax
	call	*3872(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L7597
	addl	%ebp, 52(%rbx)
.L7597:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L7598
.L7587:
	movl	mode_size(,%r14,4), %edi
	movl	%edi, 1408(%rsp)
	decl	%edi
	jg	.L7600
.L7578:
	movl	6400(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L7616
	jmp	.L15283
.L7595:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L7596
.L7593:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15136
.L7575:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6360(%rsp)
	jmp	.L7555
.L7573:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6384(%rsp)
	jmp	.L7572
.L7553:
	movl	$1, %edx
	jmp	.L7552
.L7551:
	movl	$1, %ecx
	jmp	.L7550
.L7549:
	movl	$1, %ecx
	jmp	.L7548
.L7526:
	movq	3880(%rsp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	3880(%rsp), %r8
	movq	%rax, 8(%r8)
	movq	3880(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	3880(%rsp), %r11
	movq	%rax, 16(%r11)
	jmp	.L7522
.L16260:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L7520
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16266
.L7520:
	cmpl	$55, %eax
	jne	.L7523
	movq	3880(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L7522
.L16266:
	movq	8(%rbp), %r9
	movq	%r9, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L7522
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	3880(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15135:
	movq	%rbx, 1416(%rsp)
	jmp	.L7522
.L7519:
	movq	3880(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L7527
	movq	8(%rcx), %rbx
	jmp	.L15135
.L7527:
	movq	3880(%rsp), %r10
	movq	24(%r10), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 1416(%rsp)
	jne	.L7522
	movq	3880(%rsp), %rbp
	movq	8(%rbp), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	3880(%rsp), %rbx
	movq	%rax, %rdi
	movq	8(%rbx), %rsi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	3880(%rsp), %r14
	movq	%rax, %rdi
	movq	16(%r14), %rsi
	call	emit_insn_before
	movq	3880(%rsp), %rsi
	movq	24(%rsi), %rdi
	movq	%rdi, 1416(%rsp)
	jmp	.L7522
.L7516:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L7512
.L16259:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L7510
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16267
.L7510:
	cmpl	$55, %eax
	jne	.L7513
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L7512
.L16267:
	movq	8(%rbp), %rsi
	movq	%rsi, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L7512
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7512
.L7509:
	cmpq	$0, 16(%r12)
	jne	.L7517
	movq	8(%r12), %r12
	jmp	.L7512
.L7517:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L7518
	movq	%rsi, %r12
	jmp	.L7512
.L7518:
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L7512
.L7506:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L7502
.L16258:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L7502
.L7499:
	cmpq	$0, 16(%r13)
	jne	.L7507
	movq	8(%r13), %rcx
	movq	%rcx, 1424(%rsp)
	jmp	.L7502
.L7507:
	movq	24(%r13), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 1424(%rsp)
	jne	.L7502
	movq	8(%r13), %rbp
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r10
	movq	%r10, 1424(%rsp)
	jmp	.L7502
.L16257:
	movq	3928(%rsp), %rdi
	movq	1440(%rsp), %rbp
	movl	32(%rdi), %eax
	cmpl	%eax, 8(%rbp)
	jge	.L7373
	movq	8(%rdi), %r8
	movl	48(%r8), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r13)
	movl	%eax, 1436(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L7376
	cmpl	$55, %eax
	je	.L16268
.L7380:
	cmpl	$63, %eax
	je	.L7383
	cmpl	$66, %eax
	je	.L7383
.L7379:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L7386
	cmpl	$55, %eax
	je	.L16269
.L7390:
	cmpl	$63, %eax
	je	.L7393
	cmpl	$66, %eax
	je	.L7393
.L7389:
	movq	1440(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L7396
	cmpl	$55, %eax
	je	.L16270
.L7400:
	cmpl	$63, %eax
	je	.L7403
	cmpl	$66, %eax
	je	.L7403
.L7399:
	cmpw	$55, (%r13)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1440(%rsp)
	je	.L15283
	movq	1440(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L16271
.L7409:
	movl	1436(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3912(%rsp)
	testl	%ebp, %ebp
	je	.L14277
.L7495:
	movslq	%ebp,%r14
	movq	%r14, %rax
	movq	%r14, 3904(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L7483
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L7487
	movq	1440(%rsp), %r10
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r10)
	ja	.L7483
.L7487:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %r14
	movq	%rax, 3896(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16272
.L7488:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16273
.L7489:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L7490
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3912(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L7483
.L7490:
	call	get_last_insn
	movl	$1, %edx
	movq	1440(%rsp), %rsi
	movq	%rax, 3888(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16274
.L7491:
	movq	3896(%rsp), %rbp
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3912(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14957
	movq	3888(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L7483:
	movq	3904(%rsp), %rsi
	movl	mode_wider_mode(,%rsi,4), %ebp
	testl	%ebp, %ebp
	jne	.L7495
.L14277:
	movq	1440(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15138
.L16274:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L7491
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L7491
.L16273:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7483
	jmp	.L7489
.L16272:
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7483
	jmp	.L7488
.L16271:
	movl	8(%rbx), %r10d
	xorl	%r9d, %r9d
	movl	$9, %r8d
	cmpl	$8, 1436(%rsp)
	movl	$8, %ebx
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1436(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L7423:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14268
.L7419:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L7419
.L14268:
	testl	%ecx, %ecx
	je	.L7412
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L7421
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L7421
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L7421:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7423
.L7412:
	decl	%r9d
	jg	.L7409
	movq	8(%r13), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 6440(%rsp)
	movl	$0, 6468(%rsp)
	movq	%r13, 6416(%rsp)
	movl	%r10d, %r14d
	movl	$9, 1432(%rsp)
	movq	%rbx, 6424(%rsp)
	movq	%rdi, 6448(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L7426
	cmpw	$88, %dx
	je	.L7426
	cmpw	$87, %dx
	je	.L7426
.L7425:
	movl	%ecx, 6432(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r13d
	cmpw	$1, %r13w
	jbe	.L7428
	cmpw	$88, %dx
	je	.L7428
	cmpw	$87, %dx
	je	.L7428
.L7427:
	movl	%ecx, 6456(%rsp)
	movl	$0, 6460(%rsp)
	movl	$0, 6436(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L7430
	cmpw	$87, %ax
	je	.L7430
.L7429:
	testl	%edx, %edx
	movl	%edx, 6472(%rsp)
	je	.L7431
	movl	%r10d, 6468(%rsp)
.L7431:
	movl	%r10d, 6464(%rsp)
	movl	6456(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L7433
	movl	6432(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L7432
.L7433:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1436(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1436(%rsp), %ebp
.L7447:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14271
.L7443:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L7443
.L14271:
	testl	%ecx, %ecx
	je	.L7436
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L7445
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L7445
	movl	%r14d, %eax
	movl	%edx, %r14d
	xorl	%edx, %edx
	divl	%r14d
	addl	%eax, %r9d
	movl	%edx, %r14d
.L7445:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7447
.L7436:
	cmpl	$2, %r9d
	jle	.L7432
	testl	%r10d, %r10d
	jne	.L7449
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L7450
	cmpw	$46, %dx
	je	.L7450
	cmpw	$47, %dx
	je	.L7450
	cmpw	$49, %dx
	je	.L7450
	cmpw	$113, %dx
	je	.L7450
.L7449:
	movl	6432(%rsp), %eax
	testl	%eax, %eax
	jne	.L7432
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L7452
	cmpw	$46, %dx
	je	.L7452
	cmpw	$47, %dx
	je	.L7452
	cmpw	$49, %dx
	je	.L7452
	cmpw	$113, %dx
	je	.L7452
.L7432:
	cmpl	$8, 1436(%rsp)
	movl	$8, %eax
	cmovl	1436(%rsp), %eax
	cmpl	$1, 1432(%rsp)
	movl	%eax, 1436(%rsp)
	jle	.L7455
.L7477:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14274
.L7462:
	movslq	%edx,%rbx
	movl	1432(%rsp), %r9d
	salq	$2, %rbx
	cmpl	%r9d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L7462
.L14274:
	testl	%r12d, %r12d
	je	.L7455
	movslq	%r12d,%r13
	movq	%r13, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L7464
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1436(%rsp)
	jl	.L7464
	movslq	%edx,%rdi
	cmpl	%ebp, 6464(%rsp)
	leaq	6416(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %rcx
	movq	%rcx, 3920(%rsp)
	jl	.L7464
	movl	6472(%rsp), %edx
.L7475:
	testl	%edx, %edx
	je	.L7469
	subl	%ebp, 52(%rbx)
.L7469:
	movl	16(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L7470
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15134:
	movq	%rax, %r14
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L7472
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L7473:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*3920(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L7474
	addl	%ebp, 52(%rbx)
.L7474:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L7475
.L7464:
	movl	mode_size(,%r13,4), %edx
	movl	%edx, 1432(%rsp)
	decl	%edx
	jg	.L7477
.L7455:
	movl	6464(%rsp), %eax
	testl	%eax, %eax
	jmp	.L15390
.L7472:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L7473
.L7470:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15134
.L7452:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6424(%rsp)
	jmp	.L7432
.L7450:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6448(%rsp)
	jmp	.L7449
.L7430:
	movl	$1, %edx
	jmp	.L7429
.L7428:
	movl	$1, %ecx
	jmp	.L7427
.L7426:
	movl	$1, %ecx
	jmp	.L7425
.L7403:
	movq	1440(%rsp), %r10
	xorl	%esi, %esi
	movq	8(%r10), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1440(%rsp), %rdx
	movq	%rax, 8(%rdx)
	movq	1440(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	1440(%rsp), %rbx
	movq	%rax, 16(%rbx)
	jmp	.L7399
.L16270:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L7397
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16275
.L7397:
	cmpl	$55, %eax
	jne	.L7400
	movq	1440(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L7399
.L16275:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L7399
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1440(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15133:
	movq	%rbx, 1440(%rsp)
	jmp	.L7399
.L7396:
	movq	1440(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L7404
	movq	8(%rcx), %rbx
	jmp	.L15133
.L7404:
	movq	1440(%rsp), %r8
	movq	24(%r8), %rsi
	testq	%rsi, %rsi
	je	.L7405
	movq	%rsi, 1440(%rsp)
	jmp	.L7399
.L7405:
	movq	1440(%rsp), %rdi
	movq	8(%rdi), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	1440(%rsp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	1440(%rsp), %r11
	movq	%rax, %rdi
	movq	16(%r11), %rsi
	call	emit_insn_before
	movq	1440(%rsp), %r9
	movq	24(%r9), %rsi
	movq	%rsi, 1440(%rsp)
	jmp	.L7399
.L7393:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L7389
.L16269:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L7387
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16276
.L7387:
	cmpl	$55, %eax
	jne	.L7390
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L7389
.L16276:
	movq	8(%rbp), %r11
	movq	%r11, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L7389
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7389
.L7386:
	cmpq	$0, 16(%r12)
	jne	.L7394
	movq	8(%r12), %r12
	jmp	.L7389
.L7394:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L7395
	movq	%rsi, %r12
	jmp	.L7389
.L7395:
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L7389
.L7383:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L7379
.L16268:
	jne	.L7380
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L7379
.L7376:
	cmpq	$0, 16(%r13)
	jne	.L7384
	movq	8(%r13), %r13
	jmp	.L7379
.L7384:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.L7385
	movq	%rdi, %r13
	jmp	.L7379
.L7385:
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L7379
	.p2align 6,,7
.L7365:
	movq	56(%rsp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %r8
	movq	%rax, 8(%r8)
	movq	56(%rsp), %r10
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	56(%rsp), %r14
	movq	%rax, 16(%r14)
	jmp	.L7361
.L16205:
	jne	.L7362
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L7361
	.p2align 6,,7
.L7358:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L7366
	movq	8(%rcx), %r13
	jmp	.L7361
.L7366:
	movq	56(%rsp), %rdi
	movq	24(%rdi), %r11
	testq	%r11, %r11
	movq	%r11, %r13
	jne	.L7361
	movq	56(%rsp), %rdx
	movq	8(%rdx), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r13
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	56(%rsp), %rcx
	movq	%rax, %rdi
	movq	16(%rcx), %rsi
	call	emit_insn_before
	movq	56(%rsp), %rax
	movq	24(%rax), %r13
	jmp	.L7361
	.p2align 6,,7
.L16204:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	3928(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rax, %rsi
	jmp	.L15132
.L7337:
	movq	56(%rsp), %rcx
	movl	(%rcx), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16277
	movq	56(%rsp), %rbx
	movq	3928(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%rbx), %edx
	movq	%rbx, %rsi
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L16278
.L7355:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L7356
	cmpw	$46, %dx
	je	.L7356
	cmpw	$47, %dx
	je	.L7356
	cmpw	$49, %dx
	je	.L7356
	cmpw	$113, %dx
	jne	.L7302
	jmp	.L7356
.L16278:
	cmpl	$63, 8(%rdx)
	jle	.L7302
	jmp	.L7355
.L16277:
	movq	3928(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	56(%rsp), %r13
	movq	%rax, %rsi
	movzbl	3(%r13), %edx
	movq	8(%r13), %rdi
	shrb	$2, %dl
	andl	$1, %edx
	jmp	.L15140
.L7346:
	movl	$1, %ebx
	jmp	.L7340
.L7338:
	xorl	%ebx, %ebx
	jmp	.L7340
.L7344:
	movq	56(%rsp), %r9
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	8(%r9), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L7346
	movq	56(%rsp), %r11
	xorl	%eax, %eax
	movq	16(%r11), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L7340
	jmp	.L7346
.L16203:
	movzbl	2(%rdi), %eax
	cmpb	$16, %al
	je	.L7330
	movl	cse_not_expected(%rip), %r14d
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%r14d, %r14d
	cmove	%rdi, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	3928(%rsp), %rdi
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L7356
	testb	%al, %al
	je	.L7356
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15352
.L16202:
	movq	56(%rsp), %rax
	cmpb	$16, 2(%rax)
	jne	.L7303
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r12
	testq	%rbx, %rbx
	jne	.L7307
.L14261:
	movq	56(%rsp), %rcx
	movzwl	(%rcx), %eax
	cmpl	$59, %eax
	je	.L7309
	cmpl	$55, %eax
	je	.L16279
.L7313:
	cmpl	$63, %eax
	je	.L7316
	cmpl	$66, %eax
	je	.L7316
.L7312:
	movq	3928(%rsp), %rbx
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%rbx), %rdi
	call	jumpifnot
	movq	3928(%rsp), %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	40(%rcx), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L7322
.L14263:
	movq	%r12, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	3928(%rsp), %rbp
	movq	%r13, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L7327
.L14265:
	movq	%r12, %rdi
	call	emit_label
	decl	inhibit_defer_pop(%rip)
	jmp	.L7749
.L7327:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rdx
	movq	%rax, 16(%rbx)
	testq	%rdx, %rdx
	movq	%rdx, pending_chain(%rip)
	movq	%rdx, %rbx
	jne	.L7327
	jmp	.L14265
.L7322:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %rsi
	movq	%rax, 16(%rbx)
	testq	%rsi, %rsi
	movq	%rsi, pending_chain(%rip)
	movq	%rsi, %rbx
	jne	.L7322
	jmp	.L14263
.L7316:
	movq	56(%rsp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	movq	56(%rsp), %rdx
	movq	%rax, 8(%rdx)
	movq	56(%rsp), %rsi
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %rbx
	movq	%rax, 16(%rbx)
	jmp	.L7312
.L16279:
	jne	.L7313
	movq	8(%rcx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	56(%rsp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.L7312
.L7309:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L7317
	movq	8(%rcx), %r13
	jmp	.L7312
.L7317:
	movq	56(%rsp), %rdi
	movq	24(%rdi), %r8
	testq	%r8, %r8
	movq	%r8, %r13
	jne	.L7312
	movq	56(%rsp), %rax
	movq	8(%rax), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r9
	movq	%rax, %rdi
	movq	8(%r9), %rsi
	movq	%rax, 24(%r9)
	call	gen_move_insn
	movq	56(%rsp), %r13
	movq	%rax, %rdi
	movq	16(%r13), %rsi
	call	emit_insn_before
	movq	56(%rsp), %r10
	movq	24(%r10), %r13
	jmp	.L7312
	.p2align 6,,7
.L7307:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r11
	movq	%rax, 16(%rbx)
	testq	%r11, %r11
	movq	%r11, pending_chain(%rip)
	movq	%r11, %rbx
	jne	.L7307
	jmp	.L14261
.L16201:
	movq	32(%r8), %rdi
	movq	const0_rtx(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L7299
.L14259:
	movq	3928(%rsp), %r9
	movq	56(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	40(%r9), %rdi
	call	store_expr
	jmp	.L7749
.L7299:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r10
	movq	%rax, 16(%rbx)
	testq	%r10, %r10
	movq	%r10, pending_chain(%rip)
	movq	%r10, %rbx
	jne	.L7299
	jmp	.L14259
	.p2align 6,,7
.L7294:
	movl	5408(%rsp), %edi
	xorl	%esi, %esi
	leaq	40(%r15), %rax
	testl	%edi, %edi
	je	.L7753
	movq	const0_rtx(%rip), %rsi
.L7753:
	movq	(%rax), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
	jmp	.L7749
.L16200:
	movq	40(%rdx), %rdi
	call	integer_zerop
	testl	%eax, %eax
	je	.L6331
	movq	32(%r15), %rbp
	movq	48(%r15), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	32(%rbp), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L6331
	movq	32(%r15), %r8
	testb	$1, 17(%r8)
	jne	.L6331
	movq	56(%rsp), %r12
	xorl	%r13d, %r13d
	movq	40(%r15), %rbx
	movzwl	(%r12), %eax
	cmpw	$53, %ax
	je	.L16280
	movl	%eax, %ecx
.L6334:
	cmpw	$55, %cx
	je	.L16281
.L6336:
	movzbl	16(%rbx), %edx
	movzbl	%dl, %r9d 
	salq	$3, %r9
	addq	tree_code_type(%rip), %r9
	movq	(%r9), %r10
	movsbl	(%r10),%eax
	subl	$49, %eax
	cmpl	$71, %eax
	ja	.L6338
	mov	%eax, %r11d
	jmp	*.L6377(,%r11,8)
	.section	.rodata
	.align 8
	.align 4
.L6377:
	.quad	.L6347
	.quad	.L6349
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6349
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6383
	.quad	.L6339
	.quad	.L6352
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6352
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6338
	.quad	.L6341
	.text
.L6339:
	movq	120(%rbx), %r13
.L6338:
	movl	$1, %ebp
.L15113:
	testq	%r13, %r13
	je	.L6333
.L14865:
	cmpw	$53, (%r13)
	je	.L16282
.L6380:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.L6333
	cmpw	$55, (%r12)
	je	.L16283
.L6383:
	movl	$1, %ebp
.L6333:
	testl	%ebp, %ebp
	je	.L6331
	movq	56(%rsp), %rax
	cmpw	$51, (%rax)
	je	.L16284
.L6384:
	movq	48(%r15), %rdx
	movq	56(%rsp), %r13
	xorl	%ebp, %ebp
	movq	%rdx, 4152(%rsp)
	movq	%r13, 1520(%rsp)
	movzbl	16(%rdx), %eax
	cmpb	$44, %al
	je	.L16285
	cmpb	$48, %al
	je	.L16286
.L6393:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L6420
	movq	56(%rsp), %rcx
	cmpw	$55, (%rcx)
	je	.L16287
.L6420:
	movq	56(%rsp), %rcx
	movzwl	(%rcx), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L6428
	mov	%eax, %edx
	jmp	*.L6437(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L6437:
	.quad	.L6431
	.quad	.L6428
	.quad	.L6428
	.quad	.L6428
	.quad	.L6436
	.quad	.L6428
	.quad	.L6428
	.quad	.L6428
	.quad	.L6434
	.quad	.L6434
	.quad	.L6428
	.quad	.L6434
	.text
.L6431:
	movq	56(%rsp), %r13
	xorl	%eax, %eax
	movq	8(%r13), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L6430:
	testl	%ebx, %ebx
	je	.L6427
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L6439
	testb	%al, %al
	jne	.L16288
.L6439:
	movq	56(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%rdi), %edx
	movq	4152(%rsp), %rdi
.L15115:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15346:
	movq	%rax, %r12
.L6446:
	movl	$1, %ebp
.L6392:
	cmpq	56(%rsp), %r12
	je	.L6391
	movq	4152(%rsp), %r11
	cmpb	$0, 16(%r11)
	je	.L6391
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L6448
	cmpl	$55, %eax
	je	.L16289
.L6452:
	cmpl	$63, %eax
	je	.L6455
	cmpl	$66, %eax
	je	.L6455
.L6451:
	movq	1520(%rsp), %rbx
	movzbl	2(%r12), %eax
	movzbl	2(%rbx), %ecx
	cmpb	%cl, %al
	je	.L6458
	testb	%al, %al
	je	.L6458
	movq	4152(%rsp), %r14
	movq	8(%r14), %rdx
	movzbl	17(%rdx), %r13d
	shrb	$6, %r13b
	movl	%r13d, %edx
	andl	$1, %edx
	testl	%ebp, %ebp
	je	.L6459
	movzbl	%cl, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	%rbx, %rdi
	movq	%rax, %rsi
.L15122:
	call	emit_move_insn
.L6391:
	movq	32(%r15), %rdi
	movq	1920(%rsp), %rsi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	call	jumpifnot
	movq	40(%r15), %r10
	movq	56(%rsp), %r15
	movq	%r10, 4032(%rsp)
	movq	4032(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$44, %al
	je	.L16290
	cmpb	$48, %al
	je	.L16291
.L6847:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L6874
	movq	56(%rsp), %rdi
	cmpw	$55, (%rdi)
	je	.L16292
.L6874:
	movq	56(%rsp), %rdx
	movzwl	(%rdx), %eax
	subl	$55, %eax
	cmpl	$11, %eax
	ja	.L6882
	mov	%eax, %edi
	jmp	*.L6891(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L6891:
	.quad	.L6885
	.quad	.L6882
	.quad	.L6882
	.quad	.L6882
	.quad	.L6890
	.quad	.L6882
	.quad	.L6882
	.quad	.L6882
	.quad	.L6888
	.quad	.L6888
	.quad	.L6882
	.quad	.L6888
	.text
.L6885:
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movq	8(%rcx), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L6884:
	testl	%ebx, %ebx
	je	.L6881
	movq	56(%rsp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$16, %al
	je	.L6893
	testb	%al, %al
	jne	.L16293
.L6893:
	movq	56(%rsp), %r13
	movq	4032(%rsp), %rdi
	xorl	%esi, %esi
	movzbl	2(%r13), %edx
.L15124:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	expand_expr
.L15347:
	movq	%rax, %r12
.L6900:
	movl	$1, %ebp
.L6846:
	cmpq	56(%rsp), %r12
	je	.L6845
	movq	4032(%rsp), %r11
	cmpb	$0, 16(%r11)
	je	.L6845
	movq	56(%rsp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$59, %eax
	je	.L6902
	cmpl	$55, %eax
	je	.L16294
.L6906:
	cmpl	$63, %eax
	je	.L6909
	cmpl	$66, %eax
	je	.L6909
.L6905:
	movzbl	2(%r12), %eax
	movzbl	2(%r15), %ecx
	cmpb	%cl, %al
	je	.L6912
	testb	%al, %al
	je	.L6912
	movq	4032(%rsp), %rbx
	jmp	.L15416
.L6912:
	cmpb	$16, %al
	jne	.L7168
	movq	4032(%rsp), %rsi
	cmpb	$28, 16(%rsi)
	je	.L16295
	cmpb	$16, %al
	jne	.L7168
	movq	4032(%rsp), %rdi
	xorl	%eax, %eax
	call	expr_size
	movq	4032(%rsp), %r9
	movq	%rax, %r13
	movq	8(%r9), %rbx
	movl	48(%rbx), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1452(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L7171
	cmpl	$55, %eax
	je	.L16296
.L7175:
	cmpl	$63, %eax
	je	.L7178
	cmpl	$66, %eax
	je	.L7178
.L7174:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L7181
	cmpl	$55, %eax
	je	.L16297
.L7185:
	cmpl	$63, %eax
	je	.L7188
	cmpl	$66, %eax
	je	.L7188
.L7184:
	movzwl	(%r13), %eax
	cmpl	$59, %eax
	je	.L7191
	cmpl	$55, %eax
	je	.L16298
.L7195:
	cmpl	$63, %eax
	je	.L7198
	cmpl	$66, %eax
	je	.L7198
.L7194:
	cmpw	$55, (%r15)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	testq	%r13, %r13
	je	.L15283
	cmpw	$46, (%r13)
	je	.L16299
.L7204:
	movl	1452(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3960(%rsp)
	testl	%ebp, %ebp
	je	.L14257
.L7290:
	movslq	%ebp,%rax
	movq	%rax, 3952(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L7278
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L7282
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L7278
.L7282:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %r14
	movq	%rdi, 3944(%rsp)
	salq	$4, %r14
	movq	insn_operand_predicate(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16300
.L7283:
	movq	insn_operand_predicate+8(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L16301
.L7284:
	movq	insn_operand_predicate+24(%r14), %rdx
	testq	%rdx, %rdx
	je	.L7285
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3960(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L7278
.L7285:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, 3936(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r14), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16302
.L7286:
	movq	3944(%rsp), %rbp
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3960(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14954
	movq	3936(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L7278:
	movq	3952(%rsp), %r8
	movl	mode_wider_mode(,%r8,4), %ebp
	testl	%ebp, %ebp
	jne	.L7290
	jmp	.L14257
.L16302:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L7286
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L7286
.L16301:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7278
	jmp	.L7284
.L16300:
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7278
	jmp	.L7283
.L16299:
	movl	8(%r13), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1452(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1452(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L7218:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14248
.L7214:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L7214
.L14248:
	testl	%ecx, %ecx
	je	.L7207
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L7216
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L7216
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L7216:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7218
.L7207:
	decl	%r9d
	jg	.L7204
	movq	8(%r15), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movl	$0, 6532(%rsp)
	movq	%r15, 6480(%rsp)
	movq	%r12, 6504(%rsp)
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	%rbx, 6488(%rsp)
	movq	%rdi, 6512(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L7221
	cmpw	$88, %dx
	je	.L7221
	cmpw	$87, %dx
	je	.L7221
.L7220:
	movl	%ecx, 6496(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L7223
	cmpw	$88, %dx
	je	.L7223
	cmpw	$87, %dx
	je	.L7223
.L7222:
	movl	%ecx, 6520(%rsp)
	movl	$0, 6524(%rsp)
	movl	$0, 6500(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L7225
	cmpw	$87, %ax
	je	.L7225
.L7224:
	testl	%edx, %edx
	movl	%edx, 6536(%rsp)
	je	.L7226
	movl	%r10d, 6532(%rsp)
.L7226:
	movl	%r10d, 6528(%rsp)
	movl	6520(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L7228
	movl	6496(%rsp), %eax
	testl	%eax, %eax
	jne	.L7227
.L7228:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1452(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1452(%rsp), %ebp
.L7242:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14251
.L7238:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L7238
.L14251:
	testl	%ecx, %ecx
	je	.L7231
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L7240
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L7240
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L7240:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7242
.L7231:
	cmpl	$2, %r9d
	jle	.L7227
	testl	%r10d, %r10d
	jne	.L7244
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L7245
	cmpw	$46, %dx
	je	.L7245
	cmpw	$47, %dx
	je	.L7245
	cmpw	$49, %dx
	je	.L7245
	cmpw	$113, %dx
	je	.L7245
.L7244:
	movl	6496(%rsp), %eax
	testl	%eax, %eax
	jne	.L7227
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L7247
	cmpw	$46, %dx
	je	.L7247
	cmpw	$47, %dx
	je	.L7247
	cmpw	$49, %dx
	je	.L7247
	cmpw	$113, %dx
	je	.L7247
.L7227:
	cmpl	$8, 1452(%rsp)
	movl	$8, %eax
	cmovl	1452(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1452(%rsp)
	jle	.L7250
.L7272:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14254
.L7257:
	movslq	%edx,%rbx
	salq	$2, %rbx
	cmpl	%r14d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L7257
.L14254:
	testl	%r12d, %r12d
	je	.L7250
	movslq	%r12d,%r13
	movq	%r13, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L7259
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1452(%rsp)
	jl	.L7259
	cmpl	%ebp, 6528(%rsp)
	movslq	%edx,%rcx
	leaq	6480(%rsp), %rbx
	movq	insn_gen_function(,%rcx,8), %r15
	jl	.L7259
	movl	6536(%rsp), %edx
.L7270:
	testl	%edx, %edx
	je	.L7264
	subl	%ebp, 52(%rbx)
.L7264:
	movl	16(%rbx), %esi
	testl	%esi, %esi
	je	.L7265
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15128:
	movl	40(%rbx), %edx
	movq	%rax, %r14
	testl	%edx, %edx
	je	.L7267
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L7268:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r15
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L7269
	addl	%ebp, 52(%rbx)
.L7269:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L7270
.L7259:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L7272
.L7250:
	movl	6528(%rsp), %r14d
	testl	%r14d, %r14d
	jmp	.L15389
.L7267:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L7268
.L7265:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15128
.L7247:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6488(%rsp)
	jmp	.L7227
.L7245:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6512(%rsp)
	jmp	.L7244
.L7225:
	movl	$1, %edx
	jmp	.L7224
.L7223:
	movl	$1, %ecx
	jmp	.L7222
.L7221:
	movl	$1, %ecx
	jmp	.L7220
.L7198:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, 8(%r13)
	call	protect_from_queue
	movq	%rax, 16(%r13)
	jmp	.L7194
.L16298:
	movzbl	2(%r13), %edx
	cmpb	$16, %dl
	je	.L7192
	movq	8(%r13), %rbp
	cmpw	$59, (%rbp)
	je	.L16303
.L7192:
	cmpl	$55, %eax
	jne	.L7195
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r13)
	jmp	.L7194
.L16303:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r13)
	cmpq	$0, 16(%rbp)
	je	.L7194
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r13
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7194
.L7191:
	cmpq	$0, 16(%r13)
	jne	.L7199
	movq	8(%r13), %r13
	jmp	.L7194
.L7199:
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	je	.L7200
	movq	%rsi, %r13
	jmp	.L7194
.L7200:
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L7194
.L7188:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L7184
.L16297:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L7182
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16304
.L7182:
	cmpl	$55, %eax
	jne	.L7185
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L7184
.L16304:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L7184
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	%r14, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7184
.L7181:
	cmpq	$0, 16(%r12)
	jne	.L7189
	movq	8(%r12), %r12
	jmp	.L7184
.L7189:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L7190
	movq	%rsi, %r12
	jmp	.L7184
.L7190:
	movq	8(%r12), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L7184
.L7178:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L7174
.L16296:
	jne	.L7175
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L7174
.L7171:
	cmpq	$0, 16(%r15)
	jne	.L7179
	movq	8(%r15), %r15
	jmp	.L7174
.L7179:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.L7180
	movq	%rdi, %r15
	jmp	.L7174
.L7180:
	movq	8(%r15), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L7174
.L16295:
	xorl	%eax, %eax
	movq	%rsi, %rdi
	call	expr_size
	cmpw	$46, (%rax)
	movq	%rax, 1504(%rsp)
	je	.L16305
.L6917:
	movl	$8, %edi
	call	size_int
	movl	$57, %edi
	movq	4032(%rsp), %r11
	movq	%rax, %rdx
	movq	8(%r11), %r9
	movq	32(%r9), %rsi
	call	size_binop
	xorl	%esi, %esi
	movq	4032(%rsp), %r10
	movq	%rax, %r14
	movl	32(%r10), %edi
	call	build_int_2_wide
	movq	sizetype(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%r14, %rdx
	movq	sizetype(%rip), %rsi
	movq	%rax, %rcx
	movl	$73, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	expand_expr
	movq	4032(%rsp), %r13
	movq	$0, 1456(%rsp)
	movq	%rax, 1480(%rsp)
	movq	%rax, %r14
	movq	8(%r13), %rbp
	movl	48(%rbp), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1476(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movq	%r15, 1488(%rsp)
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L7043
	cmpl	$55, %eax
	je	.L16306
	cmpl	$63, %eax
	je	.L7050
	cmpl	$66, %eax
	je	.L7050
.L7046:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L7053
	cmpl	$55, %eax
	je	.L16307
.L7057:
	cmpl	$63, %eax
	je	.L7060
	cmpl	$66, %eax
	je	.L7060
.L7056:
	movzwl	(%r14), %eax
	cmpl	$59, %eax
	je	.L7063
	cmpl	$55, %eax
	je	.L16308
.L7067:
	cmpl	$63, %eax
	je	.L7070
	cmpl	$66, %eax
	je	.L7070
.L7066:
	movq	1488(%rsp), %rax
	cmpw	$55, (%rax)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1480(%rsp)
	je	.L15283
	movq	1480(%rsp), %rax
	cmpw	$46, (%rax)
	je	.L16309
.L7076:
	movl	1476(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 3992(%rsp)
	testl	%ebp, %ebp
	je	.L14245
.L7162:
	movslq	%ebp,%rcx
	movq	%rcx, %rax
	movq	%rcx, 3984(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L7150
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L7154
	movq	1480(%rsp), %r13
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%r13)
	ja	.L7150
.L7154:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %r13
	movq	%rsi, 3976(%rsp)
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16310
.L7155:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16311
.L7156:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L7157
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	3992(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L7150
.L7157:
	call	get_last_insn
	movl	$1, %edx
	movq	1480(%rsp), %rsi
	movq	%rax, 3968(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16312
.L7158:
	movq	3976(%rsp), %rbp
	movq	1488(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	3992(%rsp), %rcx
	call	*insn_gen_function(,%rbp,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14953
	movq	3968(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L7150:
	movq	3984(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L7162
.L14245:
	movq	1480(%rsp), %rsi
	movl	$4, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	call	convert_to_mode
	movl	$4, %r9d
	movl	$3, %ecx
	movq	8(%r12), %r10
	movq	memcpy_libfunc(%rip), %rdi
	xorl	%esi, %esi
	movq	1488(%rsp), %r12
	movq	%rax, 16(%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 24(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r10, (%rsp)
	movq	8(%r12), %r8
	call	emit_library_call
.L7160:
	cmpw	$46, (%r14)
	je	.L16313
	movq	8(%r15), %rsi
	movl	$4, %edi
	call	force_reg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	add_optab(%rip), %rsi
	movq	%rax, %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	movl	$3, (%rsp)
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	sub_optab(%rip), %rsi
	movq	1504(%rsp), %rdx
	movl	$4, %edi
	movq	%r14, %rcx
	movq	%rax, %rbp
	movl	$3, (%rsp)
	xorl	%eax, %eax
	call	expand_binop
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r8d
	movq	const0_rtx(%rip), %rsi
	movq	%rax, %rdi
	movl	$94, %edx
	movq	%rax, %rbx
	movl	$0, (%rsp)
	xorl	%eax, %eax
	call	emit_cmp_insn
	call	gen_label_rtx
	movq	%rax, %rdi
	movq	%rax, 1456(%rsp)
	call	gen_blt
	movq	%rax, %rdi
	call	emit_jump_insn
.L7164:
	movq	const0_rtx(%rip), %rax
	cmpq	%rax, %rbx
	je	.L7165
	movq	memset_libfunc(%rip), %rdi
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %r8
	movl	$4, %r9d
	xorl	%eax, %eax
	movl	$4, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$4, 24(%rsp)
	call	emit_library_call
.L7165:
	cmpq	$0, 1456(%rsp)
	je	.L6845
	movq	1456(%rsp), %rdi
	jmp	.L15348
.L16313:
	movq	4032(%rsp), %r14
	movq	8(%r15), %rdi
	movl	32(%r14), %esi
	call	plus_constant_wide
	movq	1504(%rsp), %rdi
	movq	4032(%rsp), %r15
	movq	%rax, %rbp
	movl	32(%r15), %esi
	negl	%esi
	call	plus_constant_wide
	movq	%rax, %rbx
	jmp	.L7164
.L14953:
	call	emit_insn
	jmp	.L7160
.L16312:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L7158
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L7158
.L16311:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7150
	jmp	.L7156
.L16310:
	xorl	%eax, %eax
	movq	1488(%rsp), %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7150
	jmp	.L7155
.L16309:
	movl	8(%rax), %r10d
	xorl	%r9d, %r9d
	movl	$8, %ebx
	cmpl	$8, 1476(%rsp)
	movl	$9, %r8d
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1476(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L7090:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14236
.L7086:
	movslq	%edx,%r13
	salq	$2, %r13
	cmpl	%r8d, mode_size(%r13)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r13), %edx
	testl	%edx, %edx
	jne	.L7086
.L14236:
	testl	%ecx, %ecx
	je	.L7079
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L7088
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L7088
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L7088:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7090
.L7079:
	decl	%r9d
	jg	.L7076
	movq	1488(%rsp), %rcx
	movq	8(%r12), %rdi
	movl	%r10d, %r13d
	movq	8(%rcx), %rbx
	movq	%r12, 6504(%rsp)
	movq	%rcx, 6480(%rsp)
	movl	$0, 6532(%rsp)
	movq	%rdi, 6512(%rsp)
	xorl	%ecx, %ecx
	movl	$9, 1472(%rsp)
	movq	%rbx, 6488(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L7093
	cmpw	$88, %dx
	je	.L7093
	cmpw	$87, %dx
	je	.L7093
.L7092:
	movl	%ecx, 6496(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %ebp
	cmpw	$1, %bp
	jbe	.L7095
	cmpw	$88, %dx
	je	.L7095
	cmpw	$87, %dx
	je	.L7095
.L7094:
	movl	%ecx, 6520(%rsp)
	movl	$0, 6524(%rsp)
	movl	$0, 6500(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L7097
	cmpw	$87, %ax
	je	.L7097
.L7096:
	testl	%edx, %edx
	movl	%edx, 6536(%rsp)
	je	.L7098
	movl	%r10d, 6532(%rsp)
.L7098:
	movl	%r10d, 6528(%rsp)
	movl	6520(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L7100
	movl	6496(%rsp), %eax
	testl	%eax, %eax
	jne	.L7099
.L7100:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1476(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1476(%rsp), %ebp
.L7114:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14239
.L7110:
	movslq	%edx,%rax
	salq	$2, %rax
	cmpl	%r8d, mode_size(%rax)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%rax), %edx
	testl	%edx, %edx
	jne	.L7110
.L14239:
	testl	%ecx, %ecx
	je	.L7103
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L7112
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L7112
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L7112:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L7114
.L7103:
	cmpl	$2, %r9d
	jle	.L7099
	testl	%r10d, %r10d
	jne	.L7116
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L7117
	cmpw	$46, %dx
	je	.L7117
	cmpw	$47, %dx
	je	.L7117
	cmpw	$49, %dx
	je	.L7117
	cmpw	$113, %dx
	je	.L7117
.L7116:
	movl	6496(%rsp), %eax
	testl	%eax, %eax
	jne	.L7099
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L7119
	cmpw	$46, %dx
	je	.L7119
	cmpw	$47, %dx
	je	.L7119
	cmpw	$49, %dx
	je	.L7119
	cmpw	$113, %dx
	je	.L7119
.L7099:
	cmpl	$8, 1476(%rsp)
	movl	$8, %eax
	cmovl	1476(%rsp), %eax
	cmpl	$1, 1472(%rsp)
	movl	%eax, 1476(%rsp)
	jle	.L7122
.L7144:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14242
.L7129:
	movslq	%edx,%rbx
	movl	1472(%rsp), %r9d
	salq	$2, %rbx
	cmpl	%r9d, mode_size(%rbx)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%rbx), %edx
	testl	%edx, %edx
	jne	.L7129
.L14242:
	testl	%r12d, %r12d
	je	.L7122
	movslq	%r12d,%r13
	movq	%r13, %r11
	salq	$4, %r11
	addq	mov_optab(%rip), %r11
	movl	8(%r11), %edx
	cmpl	$210, %edx
	je	.L7131
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1476(%rsp)
	jl	.L7131
	movslq	%edx,%rdi
	cmpl	%ebp, 6528(%rsp)
	leaq	6480(%rsp), %rbx
	movq	insn_gen_function(,%rdi,8), %r8
	movq	%r8, 4000(%rsp)
	jl	.L7131
	movl	6536(%rsp), %edx
.L7142:
	testl	%edx, %edx
	je	.L7136
	subl	%ebp, 52(%rbx)
.L7136:
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L7137
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15127:
	movq	%rax, 1464(%rsp)
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.L7139
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L7140:
	movq	%rax, %rsi
	movq	1464(%rsp), %rdi
	xorl	%eax, %eax
	call	*4000(%rsp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L7141
	addl	%ebp, 52(%rbx)
.L7141:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L7142
.L7131:
	movl	mode_size(,%r13,4), %eax
	movl	%eax, 1472(%rsp)
	decl	%eax
	jg	.L7144
.L7122:
	movl	6528(%rsp), %eax
	testl	%eax, %eax
	je	.L7160
	jmp	.L15283
.L7139:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L7140
.L7137:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15127
.L7119:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6488(%rsp)
	jmp	.L7099
.L7117:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6512(%rsp)
	jmp	.L7116
.L7097:
	movl	$1, %edx
	jmp	.L7096
.L7095:
	movl	$1, %ecx
	jmp	.L7094
.L7093:
	movl	$1, %ecx
	jmp	.L7092
.L7070:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, 8(%r14)
	call	protect_from_queue
	movq	%rax, 16(%r14)
	jmp	.L7066
.L16308:
	movzbl	2(%r14), %edx
	cmpb	$16, %dl
	je	.L7064
	movq	8(%r14), %rbp
	cmpw	$59, (%rbp)
	je	.L16314
.L7064:
	cmpl	$55, %eax
	jne	.L7067
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r14)
	jmp	.L7066
.L16314:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%r14)
	cmpq	$0, 16(%rbp)
	je	.L7066
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	%r13, 1480(%rsp)
	jmp	.L7066
.L7063:
	cmpq	$0, 16(%r14)
	jne	.L7071
	movq	8(%r14), %rbp
	movq	%rbp, 1480(%rsp)
	jmp	.L7066
.L7071:
	movq	24(%r14), %r10
	testq	%r10, %r10
	movq	%r10, 1480(%rsp)
	jne	.L7066
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r9
	movq	%r9, 1480(%rsp)
	jmp	.L7066
.L7060:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L7056
.L16307:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L7054
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16315
.L7054:
	cmpl	$55, %eax
	jne	.L7057
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L7056
.L16315:
	movq	8(%rbp), %r8
	movq	%r8, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L7056
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7056
.L7053:
	cmpq	$0, 16(%r12)
	jne	.L7061
	movq	8(%r12), %r12
	jmp	.L7056
.L7061:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L7062
	movq	%rsi, %r12
	jmp	.L7056
.L7062:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L7056
.L7050:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L7046
.L16306:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L7046
.L7043:
	cmpq	$0, 16(%r15)
	jne	.L7051
	movq	8(%r15), %rax
	movq	%rax, 1488(%rsp)
	jmp	.L7046
.L7051:
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 1488(%rsp)
	jne	.L7046
	movq	8(%r15), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %rcx
	movq	%rcx, 1488(%rsp)
	jmp	.L7046
.L16305:
	movq	4032(%rsp), %rdi
	movq	1504(%rsp), %rbp
	movl	32(%rdi), %eax
	cmpl	%eax, 8(%rbp)
	jge	.L6917
	movq	8(%rdi), %r14
	movl	48(%r14), %eax
	shrl	$3, %eax
	cmpb	$16, 2(%r15)
	movl	%eax, 1500(%rsp)
	jne	.L15283
	cmpb	$16, 2(%r12)
	jne	.L15283
	movzwl	(%r15), %eax
	cmpl	$59, %eax
	je	.L6920
	cmpl	$55, %eax
	je	.L16316
.L6924:
	cmpl	$63, %eax
	je	.L6927
	cmpl	$66, %eax
	je	.L6927
.L6923:
	movzwl	(%r12), %eax
	cmpl	$59, %eax
	je	.L6930
	cmpl	$55, %eax
	je	.L16317
.L6934:
	cmpl	$63, %eax
	je	.L6937
	cmpl	$66, %eax
	je	.L6937
.L6933:
	movq	1504(%rsp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$59, %eax
	je	.L6940
	cmpl	$55, %eax
	je	.L16318
.L6944:
	cmpl	$63, %eax
	je	.L6947
	cmpl	$66, %eax
	je	.L6947
.L6943:
	cmpw	$55, (%r15)
	jne	.L15283
	cmpw	$55, (%r12)
	jne	.L15283
	cmpq	$0, 1504(%rsp)
	je	.L15283
	movq	1504(%rsp), %rbx
	cmpw	$46, (%rbx)
	je	.L16319
.L6953:
	movl	1500(%rsp), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$46, %edi
	call	gen_rtx
	movl	class_narrowest_mode+4(%rip), %ebp
	movq	%rax, 4024(%rsp)
	testl	%ebp, %ebp
	je	.L14233
.L7039:
	movslq	%ebp,%rax
	movq	%rax, 4016(%rsp)
	salq	$2, %rax
	movl	movstr_optab(%rax), %edx
	cmpl	$210, %edx
	je	.L7027
	movl	mode_size(%rax), %eax
	leal	0(,%rax,8), %ecx
	cmpl	$31, %ecx
	jg	.L7031
	movq	1504(%rsp), %rdi
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	cmpl	%eax, 8(%rdi)
	ja	.L7027
.L7031:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r13
	salq	$4, %r13
	movq	insn_operand_predicate(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16320
.L7032:
	movq	insn_operand_predicate+8(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L16321
.L7033:
	movq	insn_operand_predicate+24(%r13), %rdx
	testq	%rdx, %rdx
	je	.L7034
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	4024(%rsp), %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L7027
.L7034:
	call	get_last_insn
	movl	$1, %edx
	movq	1504(%rsp), %rsi
	movq	%rax, 4008(%rsp)
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	convert_to_mode
	movq	insn_operand_predicate+16(%r13), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	jne	.L16322
.L7035:
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	4024(%rsp), %rcx
	call	*insn_gen_function(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L14954
	movq	4008(%rsp), %rdi
	xorl	%eax, %eax
	call	delete_insns_since
.L7027:
	movq	4016(%rsp), %rdx
	movl	mode_wider_mode(,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L7039
.L14233:
	movq	1504(%rsp), %rsi
	movl	$4, %edi
	jmp	.L15129
.L16322:
	movq	%rax, %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	*%rdx
	testl	%eax, %eax
	jne	.L7035
	movq	%rbx, %rsi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L7035
.L16321:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7027
	jmp	.L7033
.L16320:
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	$16, %esi
	call	*%rdx
	testl	%eax, %eax
	je	.L7027
	jmp	.L7032
.L16319:
	movl	8(%rbx), %r10d
	xorl	%r9d, %r9d
	movl	$9, %r8d
	cmpl	$8, 1500(%rsp)
	movl	$8, %ebx
	movl	class_narrowest_mode+4(%rip), %esi
	cmovl	1500(%rsp), %ebx
	movq	mov_optab(%rip), %r11
	movl	$8, %ebp
	movl	%r10d, %edi
.L6967:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14224
.L6963:
	movslq	%edx,%r14
	salq	$2, %r14
	cmpl	%r8d, mode_size(%r14)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r14), %edx
	testl	%edx, %edx
	jne	.L6963
.L14224:
	testl	%ecx, %ecx
	je	.L6956
	movslq	%ecx,%rcx
	movq	%rcx, %r8
	salq	$4, %r8
	cmpl	$210, 8(%r11,%r8)
	je	.L6965
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%ebp, %eax
	cmpl	%eax, %ebx
	jl	.L6965
	movl	%edi, %eax
	movl	%edx, %edi
	xorl	%edx, %edx
	divl	%edi
	addl	%eax, %r9d
	movl	%edx, %edi
.L6965:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L6967
.L6956:
	decl	%r9d
	jg	.L6953
	movq	8(%r15), %rbx
	movq	8(%r12), %rdi
	xorl	%ecx, %ecx
	movq	%r12, 6568(%rsp)
	movl	$0, 6596(%rsp)
	movq	%r15, 6544(%rsp)
	movl	%r10d, %r13d
	movl	$9, %r14d
	movq	%rbx, 6552(%rsp)
	movq	%rdi, 6576(%rsp)
	movzwl	(%rbx), %edx
	leal	-85(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L6970
	cmpw	$88, %dx
	je	.L6970
	cmpw	$87, %dx
	je	.L6970
.L6969:
	movl	%ecx, 6560(%rsp)
	movzwl	(%rdi), %edx
	xorl	%ecx, %ecx
	leal	-85(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L6972
	cmpw	$88, %dx
	je	.L6972
	cmpw	$87, %dx
	je	.L6972
.L6971:
	movl	%ecx, 6584(%rsp)
	movl	$0, 6588(%rsp)
	movl	$0, 6564(%rsp)
	movzwl	(%rbx), %eax
	xorl	%edx, %edx
	cmpw	$85, %ax
	je	.L6974
	cmpw	$87, %ax
	je	.L6974
.L6973:
	testl	%edx, %edx
	movl	%edx, 6600(%rsp)
	je	.L6975
	movl	%r10d, 6596(%rsp)
.L6975:
	movl	%r10d, 6592(%rsp)
	movl	6584(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L6977
	movl	6560(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L6976
.L6977:
	xorl	%r9d, %r9d
	movl	$8, %ebp
	movl	$9, %r8d
	cmpl	$8, 1500(%rsp)
	movq	mov_optab(%rip), %r11
	movl	$8, %r12d
	cmovl	1500(%rsp), %ebp
.L6991:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	testl	%esi, %esi
	je	.L14227
.L6987:
	movslq	%edx,%r15
	salq	$2, %r15
	cmpl	%r8d, mode_size(%r15)
	cmovl	%edx, %ecx
	movl	mode_wider_mode(%r15), %edx
	testl	%edx, %edx
	jne	.L6987
.L14227:
	testl	%ecx, %ecx
	je	.L6980
	movslq	%ecx,%rcx
	movq	%rcx, %rdx
	salq	$4, %rdx
	cmpl	$210, 8(%r11,%rdx)
	je	.L6989
	movl	mode_size(,%rcx,4), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	cmovge	%r12d, %eax
	cmpl	%eax, %ebp
	jl	.L6989
	movl	%r13d, %eax
	movl	%edx, %r13d
	xorl	%edx, %edx
	divl	%r13d
	addl	%eax, %r9d
	movl	%edx, %r13d
.L6989:
	movl	mode_size(,%rcx,4), %r8d
	cmpl	$1, %r8d
	jg	.L6991
.L6980:
	cmpl	$2, %r9d
	jle	.L6976
	testl	%r10d, %r10d
	jne	.L6993
	movzwl	(%rdi), %edx
	leal	-56(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L6994
	cmpw	$46, %dx
	je	.L6994
	cmpw	$47, %dx
	je	.L6994
	cmpw	$49, %dx
	je	.L6994
	cmpw	$113, %dx
	je	.L6994
.L6993:
	movl	6560(%rsp), %eax
	testl	%eax, %eax
	jne	.L6976
	movzwl	(%rbx), %edx
	leal	-56(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L6996
	cmpw	$46, %dx
	je	.L6996
	cmpw	$47, %dx
	je	.L6996
	cmpw	$49, %dx
	je	.L6996
	cmpw	$113, %dx
	je	.L6996
.L6976:
	cmpl	$8, 1500(%rsp)
	movl	$8, %eax
	cmovl	1500(%rsp), %eax
	cmpl	$1, %r14d
	movl	%eax, 1500(%rsp)
	jle	.L6999
.L7021:
	movl	class_narrowest_mode+4(%rip), %edx
	xorl	%r12d, %r12d
	testl	%edx, %edx
	je	.L14230
.L7006:
	movslq	%edx,%r11
	salq	$2, %r11
	cmpl	%r14d, mode_size(%r11)
	cmovl	%edx, %r12d
	movl	mode_wider_mode(%r11), %edx
	testl	%edx, %edx
	jne	.L7006
.L14230:
	testl	%r12d, %r12d
	je	.L6999
	movslq	%r12d,%r13
	movq	%r13, %rsi
	salq	$4, %rsi
	addq	mov_optab(%rip), %rsi
	movl	8(%rsi), %edx
	cmpl	$210, %edx
	je	.L7008
	movl	mode_size(,%r13,4), %ebp
	movl	$8, %eax
	cmpl	$9, %ebp
	cmovl	%ebp, %eax
	cmpl	%eax, 1500(%rsp)
	jl	.L7008
	cmpl	%ebp, 6592(%rsp)
	movslq	%edx,%rbx
	movq	insn_gen_function(,%rbx,8), %r15
	leaq	6544(%rsp), %rbx
	jl	.L7008
	movl	6600(%rsp), %edx
.L7019:
	testl	%edx, %edx
	je	.L7013
	subl	%ebp, 52(%rbx)
.L7013:
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L7014
	movq	8(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L15126:
	movl	40(%rbx), %r8d
	movq	%rax, %r14
	testl	%r8d, %r8d
	je	.L7016
	movq	32(%rbx), %rdx
	movl	$55, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	gen_rtx
.L7017:
	movq	%rax, %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r15
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L7018
	addl	%ebp, 52(%rbx)
.L7018:
	movl	48(%rbx), %eax
	subl	%ebp, %eax
	cmpl	%ebp, %eax
	movl	%eax, 48(%rbx)
	jge	.L7019
.L7008:
	movl	mode_size(,%r13,4), %r14d
	cmpl	$1, %r14d
	jg	.L7021
.L6999:
	movl	6592(%rsp), %r14d
	testl	%r14d, %r14d
	jmp	.L15389
.L7016:
	movq	32(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	24(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L7017
.L7014:
	movq	8(%rbx), %rdi
	movl	52(%rbx), %esi
	call	plus_constant_wide
	movl	%r12d, %esi
	movq	(%rbx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	change_address
	jmp	.L15126
.L6996:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6552(%rsp)
	jmp	.L6976
.L6994:
	xorl	%eax, %eax
	call	copy_addr_to_reg
	movq	%rax, 6576(%rsp)
	jmp	.L6993
.L6974:
	movl	$1, %edx
	jmp	.L6973
.L6972:
	movl	$1, %ecx
	jmp	.L6971
.L6970:
	movl	$1, %ecx
	jmp	.L6969
.L6947:
	movq	1504(%rsp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	1504(%rsp), %r10
	movq	%rax, 8(%r10)
	movq	1504(%rsp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	1504(%rsp), %r8
	movq	%rax, 16(%r8)
	jmp	.L6943
.L16318:
	movq	%rdx, %rcx
	movzbl	2(%rdx), %edx
	cmpb	$16, %dl
	je	.L6941
	movq	8(%rcx), %rbp
	cmpw	$59, (%rbp)
	je	.L16323
.L6941:
	cmpl	$55, %eax
	jne	.L6944
	movq	1504(%rsp), %rbp
	xorl	%esi, %esi
	movq	8(%rbp), %rdi
	call	protect_from_queue
	movq	%rax, 8(%rbp)
	jmp	.L6943
.L16323:
	movq	8(%rbp), %rdi
	movq	%rdi, 8(%rcx)
	cmpq	$0, 16(%rbp)
	je	.L6943
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	1504(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
.L15125:
	movq	%rbx, 1504(%rsp)
	jmp	.L6943
.L6940:
	movq	1504(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L6948
	movq	8(%rcx), %rbx
	jmp	.L15125
.L6948:
	movq	1504(%rsp), %r11
	movq	24(%r11), %rsi
	testq	%rsi, %rsi
	je	.L6949
	movq	%rsi, 1504(%rsp)
	jmp	.L6943
.L6949:
	movq	1504(%rsp), %rdx
	movq	8(%rdx), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	1504(%rsp), %rcx
	movq	%rax, %rdi
	movq	8(%rcx), %rsi
	movq	%rax, 24(%rcx)
	call	gen_move_insn
	movq	1504(%rsp), %rbx
	movq	%rax, %rdi
	movq	16(%rbx), %rsi
	call	emit_insn_before
	movq	1504(%rsp), %r14
	movq	24(%r14), %rsi
	movq	%rsi, 1504(%rsp)
	jmp	.L6943
.L6937:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, 8(%r12)
	call	protect_from_queue
	movq	%rax, 16(%r12)
	jmp	.L6933
.L16317:
	movzbl	2(%r12), %edx
	cmpb	$16, %dl
	je	.L6931
	movq	8(%r12), %rbp
	cmpw	$59, (%rbp)
	je	.L16324
.L6931:
	cmpl	$55, %eax
	jne	.L6934
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r12)
	jmp	.L6933
.L16324:
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%r12)
	cmpq	$0, 16(%rbp)
	je	.L6933
	movzbl	%dl, %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	%r13, %r12
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6933
.L6930:
	cmpq	$0, 16(%r12)
	jne	.L6938
	movq	8(%r12), %r12
	jmp	.L6933
.L6938:
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.L6939
	movq	%rsi, %r12
	jmp	.L6933
.L6939:
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L6933
.L6927:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, 8(%r15)
	call	protect_from_queue
	movq	%rax, 16(%r15)
	jmp	.L6923
.L16316:
	jne	.L6924
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%r15)
	jmp	.L6923
.L6920:
	cmpq	$0, 16(%r15)
	jne	.L6928
	movq	8(%r15), %r15
	jmp	.L6923
.L6928:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.L6929
	movq	%rdi, %r15
	jmp	.L6923
.L6929:
	movq	8(%r15), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L6923
.L6909:
	movq	56(%rsp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	56(%rsp), %rdx
	movq	%rax, 8(%rdx)
	movq	56(%rsp), %rbx
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	56(%rsp), %r14
	movq	%rax, 16(%r14)
	jmp	.L6905
.L16294:
	jne	.L6906
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, 8(%rbx)
	jmp	.L6905
.L6902:
	movq	56(%rsp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.L6910
	movq	8(%rcx), %r15
	jmp	.L6905
.L6910:
	movq	56(%rsp), %r15
	movq	24(%r15), %rax
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L6905
	movq	56(%rsp), %r9
	movq	8(%r9), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	56(%rsp), %r13
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	56(%rsp), %r8
	movq	%rax, %rdi
	movq	16(%r8), %rsi
	call	emit_insn_before
	movq	56(%rsp), %rdi
	movq	24(%rdi), %r15
	jmp	.L6905
.L16293:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	4032(%rsp), %rdi
	movzbl	2(%rbx), %edx
	movq	%rax, %rsi
	jmp	.L15124
.L6881:
	movq	56(%rsp), %r10
	movl	(%r10), %eax
	andl	$268500991, %eax
	cmpl	$268435509, %eax
	je	.L16325
	movq	56(%rsp), %r9
	movq	4032(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movzbl	2(%r9), %edx
	movq	%r9, %rsi
	call	expand_expr
	movq	56(%rsp), %rdx
	movq	%rax, %r12
	cmpw	$51, (%rdx)
	je	.L16326
.L6899:
	movzwl	(%r12), %edx
	leal	-56(%rdx), %esi
	cmpw	$1, %si
	jbe	.L6900
	cmpw	$46, %dx
	je	.L6900
	cmpw	$47, %dx
	je	.L6900
	cmpw	$49, %dx
	je	.L6900
	cmpw	$113, %dx
	jne	.L6846
	jmp	.L6900
.L16326:
	cmpl	$63, 8(%rdx)
	jle	.L6846
	jmp	.L6899
.L16325:
	movq	4032(%rsp), %rdi
	jmp	.L15414
.L6890:
	movl	$1, %ebx
	jmp	.L6884
.L6882:
	xorl	%ebx, %ebx
	jmp	.L6884
.L6888:
	movq	56(%rsp), %rax
	xorl	%ebx, %ebx
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L6890
	movq	56(%rsp), %r8
	xorl	%eax, %eax
	movq	16(%r8), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L6884
	jmp	.L6890
.L16292:
	movzbl	2(%rdi), %eax
	cmpb	$16, %al
	je	.L6874
	movl	cse_not_expected(%rip), %ebx
	xorl	%esi, %esi
	movzbl	%al, %edx
	testl	%ebx, %ebx
	cmove	%rdi, %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	4032(%rsp), %rdi
	call	expand_expr
	movq	%rax, %r12
	movzbl	2(%rax), %eax
	cmpb	$16, %al
	je	.L6900
	testb	%al, %al
	je	.L6900
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	copy_to_reg
	jmp	.L15347
.L16291:
	movq	56(%rsp), %rsi
	cmpb	$16, 2(%rsi)
	jne	.L6847
	call	gen_label_rtx
	movq	%rax, %rbp
	call	gen_label_rtx
	movq	pending_chain(%rip), %rbx
	movq	%rax, %r12
	testq	%rbx, %rbx
	jne	.L6851
.L14217:
	movq	56(%rsp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$59, %eax
	je	.L6853
	cmpl	$55, %eax
	je	.L16327
.L6857:
	cmpl	$63, %eax
	je	.L6860
	cmpl	$66, %eax
	je	.L6860
.L6856:
	movq	4032(%rsp), %r9
	xorl	%eax, %eax
	movq	%rbp, %rsi
	incl	inhibit_defer_pop(%rip)
	movq	32(%r9), %rdi
	call	jumpifnot
	movq	4032(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	40(%rsi), %rdi
	movq	%r15, %rsi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L6866
.L14219:
	movq	%r12, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%rbp, %rdi
	call	emit_label
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	4032(%rsp), %rbp
	movq	%r15, %rsi
	movq	48(%rbp), %rdi
	call	store_expr
	movq	pending_chain(%rip), %rbx
	testq	%rbx, %rbx
	je	.L14221
.L6871:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r14
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	movq	%r14, pending_chain(%rip)
	movq	%r14, %rbx
	jne	.L6871
	jmp	.L14221
.L6866:
	movq	32(%rbx), %rdi
	call	emit_insn
	movq	40(%rbx), %r11
	movq	%rax, 16(%rbx)
	testq	%r11, %r11
	movq	%r11, pending_chain(%rip)
	movq	%r11, %rbx
	jne	.L6866
.L6860:
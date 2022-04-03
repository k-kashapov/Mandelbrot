	.file	"main.cpp"
	.text
	.p2align 4
	.globl	_Z15ProcessKeyboardP7Vector2PfPi
	.type	_Z15ProcessKeyboardP7Vector2PfPi, @function
_Z15ProcessKeyboardP7Vector2PfPi:
.LFB5895:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$90, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L2
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	0(%rbp), %xmm2, %xmm0
	vmulsd	.LC0(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 0(%rbp)
.L2:
	movl	$88, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L3
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	0(%rbp), %xmm3, %xmm0
	vdivsd	.LC0(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 0(%rbp)
.L3:
	movl	$65, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L4
	vmovss	.LC1(%rip), %xmm0
	vmulss	0(%rbp), %xmm0, %xmm0
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, (%rbx)
.L4:
	movl	$68, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L5
	vmovss	.LC1(%rip), %xmm0
	vmulss	0(%rbp), %xmm0, %xmm1
	vmovss	(%rbx), %xmm0
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rbx)
.L5:
	movl	$87, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L6
	vmovss	.LC1(%rip), %xmm0
	vmulss	0(%rbp), %xmm0, %xmm0
	vaddss	4(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 4(%rbx)
.L6:
	movl	$83, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L7
	vmovss	.LC1(%rip), %xmm0
	vmulss	0(%rbp), %xmm0, %xmm1
	vmovss	4(%rbx), %xmm0
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 4(%rbx)
.L7:
	movl	$79, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L8
	addl	$4, (%r12)
.L8:
	movl	$80, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L9
	subl	$4, (%r12)
.L9:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	GetKeyPressed@PLT
	.cfi_endproc
.LFE5895:
	.size	_Z15ProcessKeyboardP7Vector2PfPi, .-_Z15ProcessKeyboardP7Vector2PfPi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"FPS = %d\n"
	.text
	.p2align 4
	.globl	_Z7Drawingv
	.type	_Z7Drawingv, @function
_Z7Drawingv:
.LFB5896:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$0x3c23d70a, -128(%rbp)
	movq	$0, -120(%rbp)
	movl	$256, -124(%rbp)
	call	WindowShouldClose@PLT
	testb	%al, %al
	jne	.L37
	.p2align 4,,10
	.p2align 3
.L47:
	call	BeginDrawing@PLT
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-120(%rbp), %rdi
	call	_Z15ProcessKeyboardP7Vector2PfPi
	movl	$-16777216, %edi
	call	ClearBackground@PLT
	vxorps	%xmm5, %xmm5, %xmm5
	leaq	-112(%rbp), %rax
	movl	$600, %ecx
	vcvtsi2ssl	-124(%rbp), %xmm5, %xmm0
	movq	%rax, -152(%rbp)
	leaq	-80(%rbp), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%rax, -160(%rbp)
	vmovss	%xmm0, -144(%rbp)
	.p2align 4,,10
	.p2align 3
.L40:
	vcvttss2sil	%xmm2, %ebx
	movl	$100, %r13d
	vxorps	%xmm1, %xmm1, %xmm1
.L39:
	vcvttss2sil	%xmm1, %r12d
	movq	-152(%rbp), %r15
.L38:
	vxorps	%xmm3, %xmm3, %xmm3
	movl	%ecx, -140(%rbp)
	xorb	%r14b, %r14b
	addq	$4, %r15
	vcvtsi2ssl	-4(%r15), %xmm3, %xmm0
	vmulss	.LC4(%rip), %xmm0, %xmm0
	vmovss	%xmm2, -136(%rbp)
	vmovss	%xmm1, -132(%rbp)
	vdivss	-144(%rbp), %xmm0, %xmm0
	call	sinf@PLT
	movl	%r14d, %ecx
	movl	%r12d, %edi
	movl	%ebx, %esi
	vmulss	.LC5(%rip), %xmm0, %xmm0
	addl	$1, %r12d
	vcvttss2sil	%xmm0, %eax
	movb	%al, %ch
	movzbl	%al, %eax
	movl	%ecx, %r14d
	sall	$16, %eax
	andl	$-16711681, %r14d
	orl	%r14d, %eax
	orl	$-16777216, %eax
	movl	%eax, %edx
	movl	%eax, %r14d
	call	DrawPixel@PLT
	cmpq	%r15, -160(%rbp)
	vmovss	-132(%rbp), %xmm1
	vmovss	-136(%rbp), %xmm2
	movl	-140(%rbp), %ecx
	jne	.L38
	vaddss	.LC6(%rip), %xmm1, %xmm1
	subl	$1, %r13d
	jne	.L39
	vaddss	.LC7(%rip), %xmm2, %xmm2
	subl	$1, %ecx
	jne	.L40
	call	GetFPS@PLT
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	movl	%eax, %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	call	EndDrawing@PLT
	call	WindowShouldClose@PLT
	testb	%al, %al
	je	.L47
.L37:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L48
	subq	$-128, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L48:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5896:
	.size	_Z7Drawingv, .-_Z7Drawingv
	.section	.rodata.str1.1
.LC9:
	.string	"Mandelbrot"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"An error occured during game loop! Terminating..."
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5897:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$600, %esi
	movl	$800, %edi
	leaq	.LC9(%rip), %rdx
	call	InitWindow@PLT
	movl	$60, %edi
	call	SetTargetFPS@PLT
	call	_Z7Drawingv
	movl	%eax, %ebx
	call	CloseWindow@PLT
	testl	%ebx, %ebx
	jne	.L55
.L50:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L55:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	jmp	.L50
	.cfi_endproc
.LFE5897:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z15ProcessKeyboardP7Vector2PfPi, @function
_GLOBAL__sub_I__Z15ProcessKeyboardP7Vector2PfPi:
.LFB5899:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vmovaps	.LC11(%rip), %ymm0
	vmovaps	%ymm0, _ZL10MaxDistSqr(%rip)
	vmovaps	.LC12(%rip), %ymm0
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovaps	%ymm0, _ZL2DX(%rip)
	vzeroupper
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5899:
	.size	_GLOBAL__sub_I__Z15ProcessKeyboardP7Vector2PfPi, .-_GLOBAL__sub_I__Z15ProcessKeyboardP7Vector2PfPi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z15ProcessKeyboardP7Vector2PfPi
	.local	_ZL2DX
	.comm	_ZL2DX,32,32
	.local	_ZL10MaxDistSqr
	.comm	_ZL10MaxDistSqr,32,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	3435973837
	.long	1072483532
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1092616192
	.align 4
.LC4:
	.long	1078530011
	.align 4
.LC5:
	.long	1132396544
	.align 4
.LC6:
	.long	1090519040
	.align 4
.LC7:
	.long	1065353216
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC11:
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.align 32
.LC12:
	.long	0
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:

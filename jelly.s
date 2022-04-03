	.file	"main.cpp"
	.text
	.globl	_Z15ProcessKeyboardP7Vector2PfPi
	.type	_Z15ProcessKeyboardP7Vector2PfPi, @function
_Z15ProcessKeyboardP7Vector2PfPi:
.LFB5895:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rdx, %r12
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
	call	GetKeyPressed@PLT
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5895:
	.size	_Z15ProcessKeyboardP7Vector2PfPi, .-_Z15ProcessKeyboardP7Vector2PfPi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"FPS = %d\n"
	.text
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
	subq	$192, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$0x3c23d70a, -128(%rbp)
	movl	$0x00000000, -120(%rbp)
	movl	$0x00000000, -116(%rbp)
	movl	$256, -124(%rbp)
	jmp	.L20
.L28:
	vmovdqa	%ymm4, -112(%rbp)
.L16:
	movl	$0, %r12d
	leaq	-112(%rbp), %r15
	vxorps	%xmm6, %xmm6, %xmm6
	vcvtsi2ssl	%r14d, %xmm6, %xmm0
	vmovss	%xmm0, -180(%rbp)
.L14:
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsi2ssl	(%r15,%r12,4), %xmm3, %xmm0
	vmulss	.LC6(%rip), %xmm0, %xmm0
	vdivss	-180(%rbp), %xmm0, %xmm0
	call	sinf@PLT
	vmulss	.LC7(%rip), %xmm0, %xmm0
	vcvttss2sil	%xmm0, %eax
	movb	$0, %bl
	movb	%al, %bh
	movzbl	%al, %eax
	sall	$16, %eax
	andl	$-16711681, %ebx
	orl	%ebx, %eax
	orl	$-16777216, %eax
	movl	%eax, %edx
	movl	%eax, %ebx
	vcvttss2sil	-132(%rbp), %esi
	vcvttss2sil	-136(%rbp), %edi
	addl	%r12d, %edi
	call	DrawPixel@PLT
	addq	$1, %r12
	cmpq	$8, %r12
	jne	.L14
	vmovss	-136(%rbp), %xmm2
	vaddss	.LC8(%rip), %xmm2, %xmm1
	vmovss	%xmm1, -136(%rbp)
	vmovss	-144(%rbp), %xmm4
	vmulss	.LC8(%rip), %xmm4, %xmm0
	vaddss	-140(%rbp), %xmm0, %xmm6
	vmovss	%xmm6, -140(%rbp)
	subl	$1, %r13d
	je	.L27
.L18:
	vbroadcastss	-144(%rbp), %ymm3
	vmulps	_ZL2DX(%rip), %ymm3, %ymm3
	vbroadcastss	-140(%rbp), %ymm0
	vaddps	%ymm0, %ymm3, %ymm3
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, -112(%rbp)
	testl	%r14d, %r14d
	jle	.L16
	vmovaps	_ZL10MaxDistSqr(%rip), %ymm6
	vmovaps	-240(%rbp), %ymm0
	vmovaps	%ymm3, %ymm2
	vpxor	%xmm4, %xmm4, %xmm4
	movl	$0, %edx
.L17:
	vmulps	%ymm2, %ymm2, %ymm1
	vmulps	%ymm0, %ymm0, %ymm5
	vmulps	%ymm0, %ymm2, %ymm0
	vsubps	%ymm5, %ymm1, %ymm2
	vaddps	%ymm3, %ymm2, %ymm2
	vaddps	%ymm0, %ymm0, %ymm0
	vaddps	-176(%rbp), %ymm0, %ymm0
	vaddps	%ymm5, %ymm1, %ymm1
	vcmpps	$18, %ymm6, %ymm1, %ymm1
	vpsubd	%ymm1, %ymm4, %ymm4
	vmovmskps	%ymm1, %eax
	testl	%eax, %eax
	je	.L28
	addl	$1, %edx
	cmpl	%edx, %r14d
	jne	.L17
	vmovdqa	%ymm4, -112(%rbp)
	jmp	.L16
.L27:
	vmovss	-132(%rbp), %xmm5
	vaddss	.LC9(%rip), %xmm5, %xmm7
	vmovss	%xmm7, -132(%rbp)
	subl	$1, -192(%rbp)
	je	.L29
.L19:
	vmovss	-132(%rbp), %xmm6
	vsubss	.LC5(%rip), %xmm6, %xmm0
	vmulss	-144(%rbp), %xmm0, %xmm0
	vsubss	-184(%rbp), %xmm0, %xmm0
	vmovss	-188(%rbp), %xmm1
	vmovss	%xmm1, -140(%rbp)
	movl	$100, %r13d
	vxorps	%xmm2, %xmm2, %xmm2
	vmovss	%xmm2, -136(%rbp)
	vbroadcastss	%xmm0, %ymm7
	vmovaps	%ymm7, -176(%rbp)
	vmovaps	%ymm7, -240(%rbp)
	jmp	.L18
.L29:
	call	GetFPS@PLT
	movl	%eax, %edx
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	call	EndDrawing@PLT
.L20:
	call	WindowShouldClose@PLT
	testb	%al, %al
	jne	.L12
	call	BeginDrawing@PLT
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-120(%rbp), %rdi
	call	_Z15ProcessKeyboardP7Vector2PfPi
	movl	$-16777216, %edi
	call	ClearBackground@PLT
	movl	-124(%rbp), %r14d
	vmovss	-128(%rbp), %xmm5
	vmovss	%xmm5, -144(%rbp)
	vmovss	-116(%rbp), %xmm1
	vmovss	%xmm1, -184(%rbp)
	vmulss	.LC4(%rip), %xmm5, %xmm0
	vsubss	-120(%rbp), %xmm0, %xmm2
	vmovss	%xmm2, -188(%rbp)
	movl	$600, -192(%rbp)
	vxorps	%xmm4, %xmm4, %xmm4
	vmovss	%xmm4, -132(%rbp)
	jmp	.L19
.L12:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L30
	movl	$0, %eax
	addq	$192, %rsp
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
.L30:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5896:
	.size	_Z7Drawingv, .-_Z7Drawingv
	.section	.rodata.str1.1
.LC11:
	.string	"Mandelbrot"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC12:
	.string	"An error occured during game loop! Terminating..."
	.text
	.globl	main
	.type	main, @function
main:
.LFB5897:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC11(%rip), %rdx
	movl	$600, %esi
	movl	$800, %edi
	call	InitWindow@PLT
	movl	$60, %edi
	call	SetTargetFPS@PLT
	call	_Z7Drawingv
	movl	%eax, %ebx
	call	CloseWindow@PLT
	testl	%ebx, %ebx
	jne	.L34
.L32:
	movl	$0, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L34:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	jmp	.L32
	.cfi_endproc
.LFE5897:
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z15ProcessKeyboardP7Vector2PfPi, @function
_GLOBAL__sub_I__Z15ProcessKeyboardP7Vector2PfPi:
.LFB5899:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovaps	.LC13(%rip), %ymm0
	vmovaps	%ymm0, _ZL10MaxDistSqr(%rip)
	vmovaps	.LC14(%rip), %ymm0
	vmovaps	%ymm0, _ZL2DX(%rip)
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
	.long	3284664320
	.align 4
.LC5:
	.long	1133903872
	.align 4
.LC6:
	.long	1078530011
	.align 4
.LC7:
	.long	1132396544
	.align 4
.LC8:
	.long	1090519040
	.align 4
.LC9:
	.long	1065353216
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC13:
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.long	1120403456
	.align 32
.LC14:
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

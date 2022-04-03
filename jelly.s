	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	_Z15ProcessKeyboardP7Vector2PfPi
	.type	_Z15ProcessKeyboardP7Vector2PfPi, @function
_Z15ProcessKeyboardP7Vector2PfPi:
.LFB5895:
	.cfi_startproc
	endbr64
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rdx
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi
	mov	edi, 90
	call	IsKeyDown@PLT
	test	al, al
	je	.L2
	vxorpd	xmm2, xmm2, xmm2
	vcvtss2sd	xmm0, xmm2, DWORD PTR 0[rbp]
	vmulsd	xmm0, xmm0, QWORD PTR .LC0[rip]
	vcvtsd2ss	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 0[rbp], xmm0
.L2:
	mov	edi, 88
	call	IsKeyDown@PLT
	test	al, al
	je	.L3
	vxorpd	xmm3, xmm3, xmm3
	vcvtss2sd	xmm0, xmm3, DWORD PTR 0[rbp]
	vdivsd	xmm0, xmm0, QWORD PTR .LC0[rip]
	vcvtsd2ss	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 0[rbp], xmm0
.L3:
	mov	edi, 65
	call	IsKeyDown@PLT
	test	al, al
	je	.L4
	vmovss	xmm0, DWORD PTR .LC1[rip]
	vmulss	xmm0, xmm0, DWORD PTR 0[rbp]
	vaddss	xmm0, xmm0, DWORD PTR [rbx]
	vmovss	DWORD PTR [rbx], xmm0
.L4:
	mov	edi, 68
	call	IsKeyDown@PLT
	test	al, al
	je	.L5
	vmovss	xmm0, DWORD PTR .LC1[rip]
	vmulss	xmm1, xmm0, DWORD PTR 0[rbp]
	vmovss	xmm0, DWORD PTR [rbx]
	vsubss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR [rbx], xmm0
.L5:
	mov	edi, 87
	call	IsKeyDown@PLT
	test	al, al
	je	.L6
	vmovss	xmm0, DWORD PTR .LC1[rip]
	vmulss	xmm0, xmm0, DWORD PTR 0[rbp]
	vaddss	xmm0, xmm0, DWORD PTR 4[rbx]
	vmovss	DWORD PTR 4[rbx], xmm0
.L6:
	mov	edi, 83
	call	IsKeyDown@PLT
	test	al, al
	je	.L7
	vmovss	xmm0, DWORD PTR .LC1[rip]
	vmulss	xmm1, xmm0, DWORD PTR 0[rbp]
	vmovss	xmm0, DWORD PTR 4[rbx]
	vsubss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR 4[rbx], xmm0
.L7:
	mov	edi, 79
	call	IsKeyDown@PLT
	test	al, al
	je	.L8
	add	DWORD PTR [r12], 4
.L8:
	mov	edi, 80
	call	IsKeyDown@PLT
	test	al, al
	je	.L9
	sub	DWORD PTR [r12], 4
.L9:
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
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
	lea	r10, 8[rsp]
	.cfi_def_cfa 10, 0
	and	rsp, -32
	push	QWORD PTR -8[r10]
	push	rbp
	mov	rbp, rsp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	push	r15
	push	r14
	push	r13
	push	r12
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	push	rbx
	add	rsp, -128
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -128[rbp], 0x3c23d70a
	mov	QWORD PTR -120[rbp], 0
	mov	DWORD PTR -124[rbp], 256
	call	WindowShouldClose@PLT
	test	al, al
	jne	.L37
	.p2align 4,,10
	.p2align 3
.L47:
	call	BeginDrawing@PLT
	lea	rdx, -124[rbp]
	lea	rsi, -128[rbp]
	lea	rdi, -120[rbp]
	call	_Z15ProcessKeyboardP7Vector2PfPi
	mov	edi, -16777216
	call	ClearBackground@PLT
	vxorps	xmm5, xmm5, xmm5
	lea	rax, -112[rbp]
	mov	ecx, 600
	vcvtsi2ss	xmm0, xmm5, DWORD PTR -124[rbp]
	mov	QWORD PTR -152[rbp], rax
	lea	rax, -80[rbp]
	vxorps	xmm2, xmm2, xmm2
	mov	QWORD PTR -160[rbp], rax
	vmovss	DWORD PTR -144[rbp], xmm0
	.p2align 4,,10
	.p2align 3
.L40:
	vcvttss2si	ebx, xmm2
	mov	r13d, 100
	vxorps	xmm1, xmm1, xmm1
.L39:
	vcvttss2si	r12d, xmm1
	mov	r15, QWORD PTR -152[rbp]
.L38:
	vxorps	xmm3, xmm3, xmm3
	mov	DWORD PTR -140[rbp], ecx
	xor	r14b, r14b
	add	r15, 4
	vcvtsi2ss	xmm0, xmm3, DWORD PTR -4[r15]
	vmulss	xmm0, xmm0, DWORD PTR .LC4[rip]
	vmovss	DWORD PTR -136[rbp], xmm2
	vmovss	DWORD PTR -132[rbp], xmm1
	vdivss	xmm0, xmm0, DWORD PTR -144[rbp]
	call	sinf@PLT
	mov	ecx, r14d
	mov	edi, r12d
	mov	esi, ebx
	vmulss	xmm0, xmm0, DWORD PTR .LC5[rip]
	add	r12d, 1
	vcvttss2si	eax, xmm0
	mov	ch, al
	movzx	eax, al
	mov	r14d, ecx
	sal	eax, 16
	and	r14d, -16711681
	or	eax, r14d
	or	eax, -16777216
	mov	edx, eax
	mov	r14d, eax
	call	DrawPixel@PLT
	cmp	QWORD PTR -160[rbp], r15
	vmovss	xmm1, DWORD PTR -132[rbp]
	vmovss	xmm2, DWORD PTR -136[rbp]
	mov	ecx, DWORD PTR -140[rbp]
	jne	.L38
	vaddss	xmm1, xmm1, DWORD PTR .LC6[rip]
	sub	r13d, 1
	jne	.L39
	vaddss	xmm2, xmm2, DWORD PTR .LC7[rip]
	sub	ecx, 1
	jne	.L40
	call	GetFPS@PLT
	lea	rsi, .LC8[rip]
	mov	edi, 1
	mov	edx, eax
	xor	eax, eax
	call	__printf_chk@PLT
	call	EndDrawing@PLT
	call	WindowShouldClose@PLT
	test	al, al
	je	.L47
.L37:
	mov	rax, QWORD PTR -56[rbp]
	xor	rax, QWORD PTR fs:40
	jne	.L48
	sub	rsp, -128
	xor	eax, eax
	pop	rbx
	pop	r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsp, -8[r10]
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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	esi, 600
	mov	edi, 800
	lea	rdx, .LC9[rip]
	call	InitWindow@PLT
	mov	edi, 60
	call	SetTargetFPS@PLT
	call	_Z7Drawingv
	mov	ebx, eax
	call	CloseWindow@PLT
	test	ebx, ebx
	jne	.L55
.L50:
	xor	eax, eax
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L55:
	.cfi_restore_state
	lea	rdi, .LC10[rip]
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vmovaps	ymm0, YMMWORD PTR .LC11[rip]
	vmovaps	YMMWORD PTR _ZL10MaxDistSqr[rip], ymm0
	vmovaps	ymm0, YMMWORD PTR .LC12[rip]
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	vmovaps	YMMWORD PTR _ZL2DX[rip], ymm0
	vzeroupper
	pop	rbp
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

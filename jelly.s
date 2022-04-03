	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z15ProcessKeyboardP7Vector2PfPi
	.type	_Z15ProcessKeyboardP7Vector2PfPi, @function
_Z15ProcessKeyboardP7Vector2PfPi:
.LFB5895:
	.cfi_startproc
	endbr64
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi
	mov	rbp, rsi
	mov	r12, rdx
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
	call	GetKeyPressed@PLT
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
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
	sub	rsp, 192
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -128[rbp], 0x3c23d70a
	mov	DWORD PTR -120[rbp], 0x00000000
	mov	DWORD PTR -116[rbp], 0x00000000
	mov	DWORD PTR -124[rbp], 256
	jmp	.L20
.L28:
	vmovdqa	YMMWORD PTR -112[rbp], ymm4
.L16:
	mov	r12d, 0
	lea	r15, -112[rbp]
	vxorps	xmm6, xmm6, xmm6
	vcvtsi2ss	xmm0, xmm6, r14d
	vmovss	DWORD PTR -180[rbp], xmm0
.L14:
	vxorps	xmm3, xmm3, xmm3
	vcvtsi2ss	xmm0, xmm3, DWORD PTR [r15+r12*4]
	vmulss	xmm0, xmm0, DWORD PTR .LC6[rip]
	vdivss	xmm0, xmm0, DWORD PTR -180[rbp]
	call	sinf@PLT
	vmulss	xmm0, xmm0, DWORD PTR .LC7[rip]
	vcvttss2si	eax, xmm0
	mov	bl, 0
	mov	bh, al
	movzx	eax, al
	sal	eax, 16
	and	ebx, -16711681
	or	eax, ebx
	or	eax, -16777216
	mov	edx, eax
	mov	ebx, eax
	vcvttss2si	esi, DWORD PTR -132[rbp]
	vcvttss2si	edi, DWORD PTR -136[rbp]
	add	edi, r12d
	call	DrawPixel@PLT
	add	r12, 1
	cmp	r12, 8
	jne	.L14
	vmovss	xmm2, DWORD PTR -136[rbp]
	vaddss	xmm1, xmm2, DWORD PTR .LC8[rip]
	vmovss	DWORD PTR -136[rbp], xmm1
	vmovss	xmm4, DWORD PTR -144[rbp]
	vmulss	xmm0, xmm4, DWORD PTR .LC8[rip]
	vaddss	xmm6, xmm0, DWORD PTR -140[rbp]
	vmovss	DWORD PTR -140[rbp], xmm6
	sub	r13d, 1
	je	.L27
.L18:
	vbroadcastss	ymm3, DWORD PTR -144[rbp]
	vmulps	ymm3, ymm3, YMMWORD PTR _ZL2DX[rip]
	vbroadcastss	ymm0, DWORD PTR -140[rbp]
	vaddps	ymm3, ymm3, ymm0
	vpxor	xmm0, xmm0, xmm0
	vmovdqa	YMMWORD PTR -112[rbp], ymm0
	test	r14d, r14d
	jle	.L16
	vmovaps	ymm6, YMMWORD PTR _ZL10MaxDistSqr[rip]
	vmovaps	ymm0, YMMWORD PTR -240[rbp]
	vmovaps	ymm2, ymm3
	vpxor	xmm4, xmm4, xmm4
	mov	edx, 0
.L17:
	vmulps	ymm1, ymm2, ymm2
	vmulps	ymm5, ymm0, ymm0
	vmulps	ymm0, ymm2, ymm0
	vsubps	ymm2, ymm1, ymm5
	vaddps	ymm2, ymm2, ymm3
	vaddps	ymm0, ymm0, ymm0
	vaddps	ymm0, ymm0, YMMWORD PTR -176[rbp]
	vaddps	ymm1, ymm1, ymm5
	vcmpps	ymm1, ymm1, ymm6, 18
	vpsubd	ymm4, ymm4, ymm1
	vmovmskps	eax, ymm1
	test	eax, eax
	je	.L28
	add	edx, 1
	cmp	r14d, edx
	jne	.L17
	vmovdqa	YMMWORD PTR -112[rbp], ymm4
	jmp	.L16
.L27:
	vmovss	xmm5, DWORD PTR -132[rbp]
	vaddss	xmm7, xmm5, DWORD PTR .LC9[rip]
	vmovss	DWORD PTR -132[rbp], xmm7
	sub	DWORD PTR -192[rbp], 1
	je	.L29
.L19:
	vmovss	xmm6, DWORD PTR -132[rbp]
	vsubss	xmm0, xmm6, DWORD PTR .LC5[rip]
	vmulss	xmm0, xmm0, DWORD PTR -144[rbp]
	vsubss	xmm0, xmm0, DWORD PTR -184[rbp]
	vmovss	xmm1, DWORD PTR -188[rbp]
	vmovss	DWORD PTR -140[rbp], xmm1
	mov	r13d, 100
	vxorps	xmm2, xmm2, xmm2
	vmovss	DWORD PTR -136[rbp], xmm2
	vbroadcastss	ymm7, xmm0
	vmovaps	YMMWORD PTR -176[rbp], ymm7
	vmovaps	YMMWORD PTR -240[rbp], ymm7
	jmp	.L18
.L29:
	call	GetFPS@PLT
	mov	edx, eax
	lea	rsi, .LC10[rip]
	mov	edi, 1
	mov	eax, 0
	call	__printf_chk@PLT
	call	EndDrawing@PLT
.L20:
	call	WindowShouldClose@PLT
	test	al, al
	jne	.L12
	call	BeginDrawing@PLT
	lea	rdx, -124[rbp]
	lea	rsi, -128[rbp]
	lea	rdi, -120[rbp]
	call	_Z15ProcessKeyboardP7Vector2PfPi
	mov	edi, -16777216
	call	ClearBackground@PLT
	mov	r14d, DWORD PTR -124[rbp]
	vmovss	xmm5, DWORD PTR -128[rbp]
	vmovss	DWORD PTR -144[rbp], xmm5
	vmovss	xmm1, DWORD PTR -116[rbp]
	vmovss	DWORD PTR -184[rbp], xmm1
	vmulss	xmm0, xmm5, DWORD PTR .LC4[rip]
	vsubss	xmm2, xmm0, DWORD PTR -120[rbp]
	vmovss	DWORD PTR -188[rbp], xmm2
	mov	DWORD PTR -192[rbp], 600
	vxorps	xmm4, xmm4, xmm4
	vmovss	DWORD PTR -132[rbp], xmm4
	jmp	.L19
.L12:
	mov	rax, QWORD PTR -56[rbp]
	xor	rax, QWORD PTR fs:40
	jne	.L30
	mov	eax, 0
	add	rsp, 192
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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	rdx, .LC11[rip]
	mov	esi, 600
	mov	edi, 800
	call	InitWindow@PLT
	mov	edi, 60
	call	SetTargetFPS@PLT
	call	_Z7Drawingv
	mov	ebx, eax
	call	CloseWindow@PLT
	test	ebx, ebx
	jne	.L34
.L32:
	mov	eax, 0
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L34:
	.cfi_restore_state
	lea	rdi, .LC12[rip]
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	vmovaps	ymm0, YMMWORD PTR .LC13[rip]
	vmovaps	YMMWORD PTR _ZL10MaxDistSqr[rip], ymm0
	vmovaps	ymm0, YMMWORD PTR .LC14[rip]
	vmovaps	YMMWORD PTR _ZL2DX[rip], ymm0
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

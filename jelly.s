	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZSt3sinf,"axG",@progbits,_ZSt3sinf,comdat
	.weak	_ZSt3sinf
	.type	_ZSt3sinf, @function
_ZSt3sinf:
.LFB81:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	vmovss	DWORD PTR -4[rbp], xmm0
	mov	eax, DWORD PTR -4[rbp]
	vmovd	xmm0, eax
	call	sinf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	_ZSt3sinf, .-_ZSt3sinf
	.section	.rodata
	.align 4
	.type	_ZL5Scr_w, @object
	.size	_ZL5Scr_w, 4
_ZL5Scr_w:
	.long	800
	.align 4
	.type	_ZL5Scr_h, @object
	.size	_ZL5Scr_h, 4
_ZL5Scr_h:
	.long	600
	.section	.text._Z18MandelbrotToCanvasd7Vector2i,"axG",@progbits,_Z18MandelbrotToCanvasd7Vector2i,comdat
	.weak	_Z18MandelbrotToCanvasd7Vector2i
	.type	_Z18MandelbrotToCanvasd7Vector2i, @function
_Z18MandelbrotToCanvasd7Vector2i:
.LFB4602:
	.cfi_startproc
	endbr64
	lea	r10, 8[rsp]
	.cfi_def_cfa 10, 0
	and	rsp, -32
	push	QWORD PTR -8[r10]
	push	rbp
	mov	rbp, rsp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	push	rbx
	sub	rsp, 1472
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	vmovsd	QWORD PTR -1448[rbp], xmm0
	vmovq	QWORD PTR -1456[rbp], xmm1
	mov	DWORD PTR -1460[rbp], edi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	vmovsd	xmm0, QWORD PTR .LC0[rip]
	vmovsd	QWORD PTR -1336[rbp], xmm0
	vbroadcastsd	ymm0, QWORD PTR -1336[rbp]
	vmovapd	YMMWORD PTR -1200[rbp], ymm0
	vmovsd	xmm0, QWORD PTR .LC1[rip]
	vmovsd	QWORD PTR -1368[rbp], xmm0
	vmovsd	xmm0, QWORD PTR .LC2[rip]
	vmovsd	QWORD PTR -1360[rbp], xmm0
	vmovsd	xmm0, QWORD PTR .LC3[rip]
	vmovsd	QWORD PTR -1352[rbp], xmm0
	vxorpd	xmm0, xmm0, xmm0
	vmovsd	QWORD PTR -1344[rbp], xmm0
	vmovsd	xmm0, QWORD PTR -1368[rbp]
	vmovsd	xmm1, QWORD PTR -1360[rbp]
	vunpcklpd	xmm1, xmm1, xmm0
	vmovsd	xmm0, QWORD PTR -1352[rbp]
	vmovsd	xmm2, QWORD PTR -1344[rbp]
	vunpcklpd	xmm0, xmm2, xmm0
	vinsertf128	ymm0, ymm0, xmm1, 0x1
	vmovapd	YMMWORD PTR -1168[rbp], ymm0
	vxorpd	xmm0, xmm0, xmm0
	vmovsd	QWORD PTR -1416[rbp], xmm0
.L33:
	vmovsd	xmm0, QWORD PTR .LC5[rip]
	vcomisd	xmm0, QWORD PTR -1416[rbp]
	jbe	.L38
	vmovsd	xmm0, QWORD PTR -1416[rbp]
	vmovsd	xmm1, QWORD PTR .LC6[rip]
	vsubsd	xmm0, xmm0, xmm1
	vmulsd	xmm0, xmm0, QWORD PTR -1448[rbp]
	vmovss	xmm1, DWORD PTR -1452[rbp]
	vcvtss2sd	xmm1, xmm1, xmm1
	vsubsd	xmm0, xmm0, xmm1
	vmovsd	QWORD PTR -1384[rbp], xmm0
	vmovsd	xmm1, QWORD PTR -1448[rbp]
	vmovsd	xmm0, QWORD PTR .LC7[rip]
	vmulsd	xmm0, xmm1, xmm0
	vmovss	xmm1, DWORD PTR -1456[rbp]
	vcvtss2sd	xmm1, xmm1, xmm1
	vsubsd	xmm0, xmm0, xmm1
	vmovsd	QWORD PTR -1408[rbp], xmm0
	vxorpd	xmm0, xmm0, xmm0
	vmovsd	QWORD PTR -1400[rbp], xmm0
.L32:
	vmovsd	xmm0, QWORD PTR .LC8[rip]
	vcomisd	xmm0, QWORD PTR -1400[rbp]
	jbe	.L39
	vmovsd	xmm0, QWORD PTR -1448[rbp]
	vmovsd	QWORD PTR -1304[rbp], xmm0
	vbroadcastsd	ymm0, QWORD PTR -1304[rbp]
	vmovapd	ymm1, ymm0
	vmovapd	ymm0, YMMWORD PTR -1168[rbp]
	vmovapd	YMMWORD PTR -752[rbp], ymm0
	vmovapd	YMMWORD PTR -720[rbp], ymm1
	vmovapd	ymm0, YMMWORD PTR -752[rbp]
	vmulpd	ymm0, ymm0, YMMWORD PTR -720[rbp]
	vmovsd	xmm1, QWORD PTR -1408[rbp]
	vmovsd	QWORD PTR -1312[rbp], xmm1
	vbroadcastsd	ymm1, QWORD PTR -1312[rbp]
	vmovapd	YMMWORD PTR -816[rbp], ymm1
	vmovapd	YMMWORD PTR -784[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -816[rbp]
	vaddpd	ymm0, ymm0, YMMWORD PTR -784[rbp]
	vmovapd	YMMWORD PTR -1136[rbp], ymm0
	vmovsd	xmm0, QWORD PTR -1384[rbp]
	vmovsd	QWORD PTR -1320[rbp], xmm0
	vbroadcastsd	ymm0, QWORD PTR -1320[rbp]
	vmovapd	YMMWORD PTR -1104[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1136[rbp]
	vmovapd	YMMWORD PTR -1296[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1104[rbp]
	vmovapd	YMMWORD PTR -1264[rbp], ymm0
	mov	QWORD PTR -1328[rbp], 0
	vpbroadcastq	ymm0, QWORD PTR -1328[rbp]
	vmovdqa	YMMWORD PTR -1232[rbp], ymm0
	mov	DWORD PTR -1428[rbp], 0
.L29:
	mov	eax, DWORD PTR -1428[rbp]
	cmp	eax, DWORD PTR -1460[rbp]
	jge	.L16
	vmovapd	ymm0, YMMWORD PTR -1296[rbp]
	vmovapd	ymm1, YMMWORD PTR -1296[rbp]
	vmovapd	YMMWORD PTR -112[rbp], ymm1
	vmovapd	YMMWORD PTR -80[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -112[rbp]
	vmulpd	ymm0, ymm0, YMMWORD PTR -80[rbp]
	vmovapd	YMMWORD PTR -1072[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1264[rbp]
	vmovapd	ymm1, YMMWORD PTR -1264[rbp]
	vmovapd	YMMWORD PTR -176[rbp], ymm1
	vmovapd	YMMWORD PTR -144[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -176[rbp]
	vmulpd	ymm0, ymm0, YMMWORD PTR -144[rbp]
	vmovapd	YMMWORD PTR -1040[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1264[rbp]
	vmovapd	ymm1, YMMWORD PTR -1296[rbp]
	vmovapd	YMMWORD PTR -240[rbp], ymm1
	vmovapd	YMMWORD PTR -208[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -240[rbp]
	vmulpd	ymm0, ymm0, YMMWORD PTR -208[rbp]
	vmovapd	YMMWORD PTR -1008[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1072[rbp]
	vmovapd	YMMWORD PTR -304[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1040[rbp]
	vmovapd	YMMWORD PTR -272[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -304[rbp]
	vsubpd	ymm0, ymm0, YMMWORD PTR -272[rbp]
	vmovapd	YMMWORD PTR -368[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1136[rbp]
	vmovapd	YMMWORD PTR -336[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -368[rbp]
	vaddpd	ymm0, ymm0, YMMWORD PTR -336[rbp]
	vmovapd	YMMWORD PTR -976[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1008[rbp]
	vmovapd	YMMWORD PTR -432[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1008[rbp]
	vmovapd	YMMWORD PTR -400[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -432[rbp]
	vaddpd	ymm0, ymm0, YMMWORD PTR -400[rbp]
	vmovapd	YMMWORD PTR -496[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1104[rbp]
	vmovapd	YMMWORD PTR -464[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -496[rbp]
	vaddpd	ymm0, ymm0, YMMWORD PTR -464[rbp]
	vmovapd	YMMWORD PTR -944[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1072[rbp]
	vmovapd	YMMWORD PTR -560[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -1040[rbp]
	vmovapd	YMMWORD PTR -528[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -560[rbp]
	vaddpd	ymm0, ymm0, YMMWORD PTR -528[rbp]
	vmovapd	YMMWORD PTR -912[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -912[rbp]
	vmovapd	ymm1, YMMWORD PTR -1200[rbp]
	vcmppd	ymm0, ymm0, ymm1, 18
	vmovapd	YMMWORD PTR -880[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -880[rbp]
	vmovapd	YMMWORD PTR -592[rbp], ymm0
	vmovdqa	ymm0, YMMWORD PTR -592[rbp]
	vmovdqa	YMMWORD PTR -848[rbp], ymm0
	vmovdqa	ymm0, YMMWORD PTR -1232[rbp]
	vmovdqa	YMMWORD PTR -656[rbp], ymm0
	vmovdqa	ymm0, YMMWORD PTR -848[rbp]
	vmovdqa	YMMWORD PTR -624[rbp], ymm0
	vmovdqa	ymm0, YMMWORD PTR -656[rbp]
	vmovdqa	ymm1, YMMWORD PTR -624[rbp]
	vpsubq	ymm0, ymm0, ymm1
	vmovdqa	YMMWORD PTR -1232[rbp], ymm0
	vmovdqa	ymm0, YMMWORD PTR -848[rbp]
	vmovdqa	YMMWORD PTR -688[rbp], ymm0
	vmovdqa	ymm0, YMMWORD PTR -688[rbp]
	vpmovmskb	eax, ymm0
	nop
	mov	DWORD PTR -1424[rbp], eax
	cmp	DWORD PTR -1424[rbp], 0
	je	.L40
	vmovapd	ymm0, YMMWORD PTR -976[rbp]
	vmovapd	YMMWORD PTR -1296[rbp], ymm0
	vmovapd	ymm0, YMMWORD PTR -944[rbp]
	vmovapd	YMMWORD PTR -1264[rbp], ymm0
	inc	DWORD PTR -1428[rbp]
	jmp	.L29
.L40:
	nop
.L16:
	lea	rax, -1232[rbp]
	mov	QWORD PTR -1376[rbp], rax
	mov	QWORD PTR -1392[rbp], 0
.L31:
	cmp	QWORD PTR -1392[rbp], 3
	jg	.L30
	mov	rax, QWORD PTR -1392[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -1376[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -1420[rbp], eax
	mov	rax, QWORD PTR -1392[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -1376[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	vcvtsi2ss	xmm0, xmm0, rax
	vmovss	xmm1, DWORD PTR .LC9[rip]
	vmulss	xmm0, xmm0, xmm1
	vcvtsi2ss	xmm1, xmm1, DWORD PTR -1460[rbp]
	vdivss	xmm0, xmm0, xmm1
	call	_ZSt3sinf
	vmovss	xmm1, DWORD PTR .LC10[rip]
	vmulss	xmm0, xmm0, xmm1
	vcvttss2si	eax, xmm0
	mov	BYTE PTR -1429[rbp], al
	mov	bl, 0
	movzx	eax, BYTE PTR -1429[rbp]
	mov	bh, al
	movzx	eax, BYTE PTR -1429[rbp]
	sal	eax, 16
	and	ebx, -16711681
	mov	edx, ebx
	or	eax, edx
	mov	ebx, eax
	mov	eax, ebx
	or	eax, -16777216
	mov	ebx, eax
	vmovsd	xmm0, QWORD PTR -1416[rbp]
	vcvttsd2si	eax, xmm0
	vmovsd	xmm0, QWORD PTR -1400[rbp]
	vcvttsd2si	edx, xmm0
	mov	ecx, edx
	mov	rdx, QWORD PTR -1392[rbp]
	add	edx, ecx
	mov	ecx, edx
	mov	edx, ebx
	mov	esi, eax
	mov	edi, ecx
	call	DrawPixel@PLT
	inc	QWORD PTR -1392[rbp]
	jmp	.L31
.L30:
	vmovsd	xmm1, QWORD PTR -1400[rbp]
	vmovsd	xmm0, QWORD PTR .LC11[rip]
	vaddsd	xmm0, xmm1, xmm0
	vmovsd	QWORD PTR -1400[rbp], xmm0
	vmovsd	xmm1, QWORD PTR -1448[rbp]
	vmovsd	xmm0, QWORD PTR .LC11[rip]
	vmulsd	xmm0, xmm1, xmm0
	vmovsd	xmm1, QWORD PTR -1408[rbp]
	vaddsd	xmm0, xmm1, xmm0
	vmovsd	QWORD PTR -1408[rbp], xmm0
	jmp	.L32
.L39:
	vmovsd	xmm1, QWORD PTR -1416[rbp]
	vmovsd	xmm0, QWORD PTR .LC3[rip]
	vaddsd	xmm0, xmm1, xmm0
	vmovsd	QWORD PTR -1416[rbp], xmm0
	jmp	.L33
.L38:
	mov	eax, 0
	mov	rsi, QWORD PTR -24[rbp]
	xor	rsi, QWORD PTR fs:40
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	add	rsp, 1472
	pop	rbx
	pop	r10
	.cfi_def_cfa 10, 0
	pop	rbp
	lea	rsp, -8[r10]
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4602:
	.size	_Z18MandelbrotToCanvasd7Vector2i, .-_Z18MandelbrotToCanvasd7Vector2i
	.text
	.globl	_Z15ProcessKeyboardP7Vector2PdPi
	.type	_Z15ProcessKeyboardP7Vector2PdPi, @function
_Z15ProcessKeyboardP7Vector2PdPi:
.LFB4603:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	edi, 90
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L42
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	xmm1, QWORD PTR [rax]
	vmovsd	xmm0, QWORD PTR .LC12[rip]
	vmulsd	xmm0, xmm1, xmm0
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	QWORD PTR [rax], xmm0
.L42:
	mov	edi, 88
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L43
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	xmm0, QWORD PTR [rax]
	vmovsd	xmm1, QWORD PTR .LC12[rip]
	vdivsd	xmm0, xmm0, xmm1
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	QWORD PTR [rax], xmm0
.L43:
	mov	edi, 65
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L44
	mov	rax, QWORD PTR -8[rbp]
	vmovss	xmm0, DWORD PTR [rax]
	vcvtss2sd	xmm1, xmm0, xmm0
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	xmm2, QWORD PTR [rax]
	vmovsd	xmm0, QWORD PTR .LC13[rip]
	vmulsd	xmm0, xmm2, xmm0
	vaddsd	xmm0, xmm1, xmm0
	vcvtsd2ss	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -8[rbp]
	vmovss	DWORD PTR [rax], xmm0
.L44:
	mov	edi, 68
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L45
	mov	rax, QWORD PTR -8[rbp]
	vmovss	xmm0, DWORD PTR [rax]
	vcvtss2sd	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	xmm2, QWORD PTR [rax]
	vmovsd	xmm1, QWORD PTR .LC13[rip]
	vmulsd	xmm1, xmm2, xmm1
	vsubsd	xmm0, xmm0, xmm1
	vcvtsd2ss	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -8[rbp]
	vmovss	DWORD PTR [rax], xmm0
.L45:
	mov	edi, 87
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L46
	mov	rax, QWORD PTR -8[rbp]
	vmovss	xmm0, DWORD PTR 4[rax]
	vcvtss2sd	xmm1, xmm0, xmm0
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	xmm2, QWORD PTR [rax]
	vmovsd	xmm0, QWORD PTR .LC13[rip]
	vmulsd	xmm0, xmm2, xmm0
	vaddsd	xmm0, xmm1, xmm0
	vcvtsd2ss	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -8[rbp]
	vmovss	DWORD PTR 4[rax], xmm0
.L46:
	mov	edi, 83
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L47
	mov	rax, QWORD PTR -8[rbp]
	vmovss	xmm0, DWORD PTR 4[rax]
	vcvtss2sd	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -16[rbp]
	vmovsd	xmm2, QWORD PTR [rax]
	vmovsd	xmm1, QWORD PTR .LC13[rip]
	vmulsd	xmm1, xmm2, xmm1
	vsubsd	xmm0, xmm0, xmm1
	vcvtsd2ss	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR -8[rbp]
	vmovss	DWORD PTR 4[rax], xmm0
.L47:
	mov	edi, 79
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L48
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 4[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
.L48:
	mov	edi, 80
	call	IsKeyDown@PLT
	movzx	eax, al
	test	ax, ax
	je	.L49
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, -4[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
.L49:
	call	GetKeyPressed@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4603:
	.size	_Z15ProcessKeyboardP7Vector2PdPi, .-_Z15ProcessKeyboardP7Vector2PdPi
	.section	.rodata
	.align 8
.LC16:
	.string	"FPS = %d | Scale = %lf | Position = (%.3f, %.3f) | Steps = %d\n"
	.text
	.globl	_Z7Drawingv
	.type	_Z7Drawingv, @function
_Z7Drawingv:
.LFB4604:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	sub	rsp, 56
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -40[rbp], rax
	xor	eax, eax
	vmovsd	xmm0, QWORD PTR .LC14[rip]
	vmovsd	QWORD PTR -56[rbp], xmm0
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR -48[rbp], xmm0
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR -44[rbp], xmm0
	mov	DWORD PTR -60[rbp], 256
.L53:
	call	WindowShouldClose@PLT
	xor	eax, 1
	movzx	eax, al
	test	ax, ax
	je	.L52
	call	BeginDrawing@PLT
	lea	rdx, -60[rbp]
	lea	rcx, -56[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_Z15ProcessKeyboardP7Vector2PdPi
	mov	bl, 0
	mov	eax, 0
	mov	bh, al
	mov	eax, ebx
	and	eax, -16711681
	mov	ebx, eax
	mov	eax, ebx
	or	eax, -16777216
	mov	ebx, eax
	mov	edi, ebx
	call	ClearBackground@PLT
	mov	edx, DWORD PTR -60[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	edi, edx
	vmovq	xmm1, rcx
	vmovq	xmm0, rax
	call	_Z18MandelbrotToCanvasd7Vector2i
	mov	r13d, DWORD PTR -60[rbp]
	vmovss	xmm0, DWORD PTR -44[rbp]
	vcvtss2sd	xmm3, xmm0, xmm0
	vmovsd	QWORD PTR -72[rbp], xmm3
	vmovss	xmm0, DWORD PTR -48[rbp]
	vcvtss2sd	xmm4, xmm0, xmm0
	vmovsd	QWORD PTR -80[rbp], xmm4
	mov	r12, QWORD PTR -56[rbp]
	call	GetFPS@PLT
	mov	edx, r13d
	vmovsd	xmm2, QWORD PTR -72[rbp]
	vmovsd	xmm1, QWORD PTR -80[rbp]
	vmovq	xmm0, r12
	mov	esi, eax
	lea	rdi, .LC16[rip]
	mov	eax, 3
	call	printf@PLT
	call	EndDrawing@PLT
	jmp	.L53
.L52:
	mov	eax, 0
	mov	rsi, QWORD PTR -40[rbp]
	xor	rsi, QWORD PTR fs:40
	je	.L55
	call	__stack_chk_fail@PLT
.L55:
	add	rsp, 56
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4604:
	.size	_Z7Drawingv, .-_Z7Drawingv
	.section	.rodata
.LC17:
	.string	"Mandelbrot"
	.align 8
.LC18:
	.string	"An error occured during game loop! Terminating..."
	.text
	.globl	main
	.type	main, @function
main:
.LFB4605:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	lea	rdx, .LC17[rip]
	mov	esi, 600
	mov	edi, 800
	call	InitWindow@PLT
	call	_Z7Drawingv
	mov	DWORD PTR -4[rbp], eax
	call	CloseWindow@PLT
	cmp	DWORD PTR -4[rbp], 0
	je	.L57
	lea	rdi, .LC18[rip]
	call	puts@PLT
.L57:
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4605:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.align 8
.LC1:
	.long	0
	.long	1074266112
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1082310656
	.align 8
.LC6:
	.long	0
	.long	1081262080
	.align 8
.LC7:
	.long	0
	.long	-1065811968
	.align 8
.LC8:
	.long	0
	.long	1082720256
	.align 4
.LC9:
	.long	1078530011
	.align 4
.LC10:
	.long	1132396544
	.align 8
.LC11:
	.long	0
	.long	1074790400
	.align 8
.LC12:
	.long	3435973837
	.long	1072483532
	.align 8
.LC13:
	.long	0
	.long	1076101120
	.align 8
.LC14:
	.long	2576980378
	.long	1068079513
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

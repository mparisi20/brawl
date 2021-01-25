.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkBallSocketChainBuildJacobian
hkBallSocketChainBuildJacobian:
/* 8028FBC8 00285948  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 8028FBCC 0028594C  7C 2C 0B 78 */	mr r12, r1
/* 8028FBD0 00285950  21 6B FD 40 */	subfic r11, r11, -704
/* 8028FBD4 00285954  7C 21 59 6E */	stwux r1, r1, r11
/* 8028FBD8 00285958  7C 08 02 A6 */	mflr r0
/* 8028FBDC 0028595C  90 0C 00 04 */	stw r0, 4(r12)
/* 8028FBE0 00285960  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8028FBE4 00285964  F3 EC 0F F8 */	psq_st f31, -8(r12), 0, qr0
/* 8028FBE8 00285968  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 8028FBEC 0028596C  F3 CC 0F E8 */	psq_st f30, -24(r12), 0, qr0
/* 8028FBF0 00285970  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 8028FBF4 00285974  F3 AC 0F D8 */	psq_st f29, -40(r12), 0, qr0
/* 8028FBF8 00285978  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 8028FBFC 0028597C  F3 8C 0F C8 */	psq_st f28, -56(r12), 0, qr0
/* 8028FC00 00285980  DB 6C FF B0 */	stfd f27, -0x50(r12)
/* 8028FC04 00285984  F3 6C 0F B8 */	psq_st f27, -72(r12), 0, qr0
/* 8028FC08 00285988  DB 4C FF A0 */	stfd f26, -0x60(r12)
/* 8028FC0C 0028598C  F3 4C 0F A8 */	psq_st f26, -88(r12), 0, qr0
/* 8028FC10 00285990  DB 2C FF 90 */	stfd f25, -0x70(r12)
/* 8028FC14 00285994  F3 2C 0F 98 */	psq_st f25, -104(r12), 0, qr0
/* 8028FC18 00285998  DB 0C FF 80 */	stfd f24, -0x80(r12)
/* 8028FC1C 0028599C  F3 0C 0F 88 */	psq_st f24, -120(r12), 0, qr0
/* 8028FC20 002859A0  DA EC FF 70 */	stfd f23, -0x90(r12)
/* 8028FC24 002859A4  F2 EC 0F 78 */	psq_st f23, -136(r12), 0, qr0
/* 8028FC28 002859A8  DA CC FF 60 */	stfd f22, -0xa0(r12)
/* 8028FC2C 002859AC  F2 CC 0F 68 */	psq_st f22, -152(r12), 0, qr0
/* 8028FC30 002859B0  39 6C FF 60 */	addi r11, r12, -160
/* 8028FC34 002859B4  48 16 16 C1 */	bl _savegpr_16
/* 8028FC38 002859B8  83 A8 00 08 */	lwz r29, 8(r8)
/* 8028FC3C 002859BC  35 23 00 01 */	addic. r9, r3, 1
/* 8028FC40 002859C0  7C B7 2B 78 */	mr r23, r5
/* 8028FC44 002859C4  FF C0 18 90 */	fmr f30, f3
/* 8028FC48 002859C8  90 7D 00 04 */	stw r3, 4(r29)
/* 8028FC4C 002859CC  7C 76 1B 78 */	mr r22, r3
/* 8028FC50 002859D0  55 27 10 3A */	slwi r7, r9, 2
/* 8028FC54 002859D4  7C D8 33 78 */	mr r24, r6
/* 8028FC58 002859D8  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8028FC5C 002859DC  38 07 00 10 */	addi r0, r7, 0x10
/* 8028FC60 002859E0  7D 19 43 78 */	mr r25, r8
/* 8028FC64 002859E4  D0 5D 00 0C */	stfs f2, 0xc(r29)
/* 8028FC68 002859E8  64 00 17 07 */	oris r0, r0, 0x1707
/* 8028FC6C 002859EC  38 BD 00 10 */	addi r5, r29, 0x10
/* 8028FC70 002859F0  90 1D 00 00 */	stw r0, 0(r29)
/* 8028FC74 002859F4  40 81 00 7C */	ble lbl_8028FCF0
/* 8028FC78 002859F8  55 20 E8 FF */	rlwinm. r0, r9, 0x1d, 3, 0x1f
/* 8028FC7C 002859FC  7C 09 03 A6 */	mtctr r0
/* 8028FC80 00285A00  41 82 00 58 */	beq lbl_8028FCD8
lbl_8028FC84:
/* 8028FC84 00285A04  80 04 00 00 */	lwz r0, 0(r4)
/* 8028FC88 00285A08  90 05 00 00 */	stw r0, 0(r5)
/* 8028FC8C 00285A0C  80 04 00 04 */	lwz r0, 4(r4)
/* 8028FC90 00285A10  90 05 00 04 */	stw r0, 4(r5)
/* 8028FC94 00285A14  80 04 00 08 */	lwz r0, 8(r4)
/* 8028FC98 00285A18  90 05 00 08 */	stw r0, 8(r5)
/* 8028FC9C 00285A1C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8028FCA0 00285A20  90 05 00 0C */	stw r0, 0xc(r5)
/* 8028FCA4 00285A24  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8028FCA8 00285A28  90 05 00 10 */	stw r0, 0x10(r5)
/* 8028FCAC 00285A2C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8028FCB0 00285A30  90 05 00 14 */	stw r0, 0x14(r5)
/* 8028FCB4 00285A34  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8028FCB8 00285A38  90 05 00 18 */	stw r0, 0x18(r5)
/* 8028FCBC 00285A3C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8028FCC0 00285A40  38 84 00 20 */	addi r4, r4, 0x20
/* 8028FCC4 00285A44  90 05 00 1C */	stw r0, 0x1c(r5)
/* 8028FCC8 00285A48  38 A5 00 20 */	addi r5, r5, 0x20
/* 8028FCCC 00285A4C  42 00 FF B8 */	bdnz lbl_8028FC84
/* 8028FCD0 00285A50  71 29 00 07 */	andi. r9, r9, 7
/* 8028FCD4 00285A54  41 82 00 1C */	beq lbl_8028FCF0
lbl_8028FCD8:
/* 8028FCD8 00285A58  7D 29 03 A6 */	mtctr r9
lbl_8028FCDC:
/* 8028FCDC 00285A5C  80 04 00 00 */	lwz r0, 0(r4)
/* 8028FCE0 00285A60  38 84 00 04 */	addi r4, r4, 4
/* 8028FCE4 00285A64  90 05 00 00 */	stw r0, 0(r5)
/* 8028FCE8 00285A68  38 A5 00 04 */	addi r5, r5, 4
/* 8028FCEC 00285A6C  42 00 FF F0 */	bdnz lbl_8028FCDC
lbl_8028FCF0:
/* 8028FCF0 00285A70  C3 E2 AA D8 */	lfs f31, lbl_805A3DF8-_SDA2_BASE_(r2)
/* 8028FCF4 00285A74  1F 43 00 90 */	mulli r26, r3, 0x90
/* 8028FCF8 00285A78  83 68 00 00 */	lwz r27, 0(r8)
/* 8028FCFC 00285A7C  3B 9D 00 10 */	addi r28, r29, 0x10
/* 8028FD00 00285A80  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8028FD04 00285A84  3A 43 FF FF */	addi r18, r3, -1
/* 8028FD08 00285A88  C3 A2 AA DC */	lfs f29, lbl_805A3DFC-_SDA2_BASE_(r2)
/* 8028FD0C 00285A8C  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 8028FD10 00285A90  3B C0 00 00 */	li r30, 0
/* 8028FD14 00285A94  3A 80 00 00 */	li r20, 0
/* 8028FD18 00285A98  3A 60 00 00 */	li r19, 0
/* 8028FD1C 00285A9C  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 8028FD20 00285AA0  3B E0 00 03 */	li r31, 3
/* 8028FD24 00285AA4  3A A0 00 03 */	li r21, 3
/* 8028FD28 00285AA8  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 8028FD2C 00285AAC  D3 E1 00 F0 */	stfs f31, 0xf0(r1)
/* 8028FD30 00285AB0  D3 E1 00 F4 */	stfs f31, 0xf4(r1)
/* 8028FD34 00285AB4  D3 E1 00 F8 */	stfs f31, 0xf8(r1)
/* 8028FD38 00285AB8  D3 E1 00 FC */	stfs f31, 0xfc(r1)
/* 8028FD3C 00285ABC  D3 E1 01 00 */	stfs f31, 0x100(r1)
/* 8028FD40 00285AC0  D3 E1 01 04 */	stfs f31, 0x104(r1)
/* 8028FD44 00285AC4  D3 E1 01 08 */	stfs f31, 0x108(r1)
/* 8028FD48 00285AC8  D3 E1 01 0C */	stfs f31, 0x10c(r1)
/* 8028FD4C 00285ACC  D3 E1 01 10 */	stfs f31, 0x110(r1)
/* 8028FD50 00285AD0  D3 E1 01 14 */	stfs f31, 0x114(r1)
/* 8028FD54 00285AD4  D3 E1 01 18 */	stfs f31, 0x118(r1)
/* 8028FD58 00285AD8  D3 E1 01 1C */	stfs f31, 0x11c(r1)
/* 8028FD5C 00285ADC  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 8028FD60 00285AE0  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 8028FD64 00285AE4  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 8028FD68 00285AE8  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 8028FD6C 00285AEC  D3 E1 01 20 */	stfs f31, 0x120(r1)
/* 8028FD70 00285AF0  D3 E1 01 24 */	stfs f31, 0x124(r1)
/* 8028FD74 00285AF4  D3 E1 01 28 */	stfs f31, 0x128(r1)
/* 8028FD78 00285AF8  D3 E1 01 2C */	stfs f31, 0x12c(r1)
/* 8028FD7C 00285AFC  D3 E1 01 30 */	stfs f31, 0x130(r1)
/* 8028FD80 00285B00  D3 E1 01 34 */	stfs f31, 0x134(r1)
/* 8028FD84 00285B04  D3 E1 01 38 */	stfs f31, 0x138(r1)
/* 8028FD88 00285B08  D3 E1 01 3C */	stfs f31, 0x13c(r1)
/* 8028FD8C 00285B0C  D3 E1 01 40 */	stfs f31, 0x140(r1)
/* 8028FD90 00285B10  D3 E1 01 44 */	stfs f31, 0x144(r1)
/* 8028FD94 00285B14  D3 E1 01 48 */	stfs f31, 0x148(r1)
/* 8028FD98 00285B18  D3 E1 01 4C */	stfs f31, 0x14c(r1)
/* 8028FD9C 00285B1C  48 00 07 30 */	b lbl_802904CC
lbl_8028FDA0:
/* 8028FDA0 00285B20  7C DE F9 D6 */	mullw r6, r30, r31
/* 8028FDA4 00285B24  38 1E 00 01 */	addi r0, r30, 1
/* 8028FDA8 00285B28  38 A0 00 00 */	li r5, 0
/* 8028FDAC 00285B2C  54 00 10 3A */	slwi r0, r0, 2
/* 8028FDB0 00285B30  39 00 00 00 */	li r8, 0
/* 8028FDB4 00285B34  39 20 00 00 */	li r9, 0
lbl_8028FDB8:
/* 8028FDB8 00285B38  7C 66 2A 14 */	add r3, r6, r5
/* 8028FDBC 00285B3C  20 E5 00 03 */	subfic r7, r5, 3
/* 8028FDC0 00285B40  1C 63 00 30 */	mulli r3, r3, 0x30
/* 8028FDC4 00285B44  7C A4 2B 78 */	mr r4, r5
/* 8028FDC8 00285B48  54 AB 10 3A */	slwi r11, r5, 2
/* 8028FDCC 00285B4C  54 AA 20 36 */	slwi r10, r5, 4
/* 8028FDD0 00285B50  7C 78 1A 14 */	add r3, r24, r3
/* 8028FDD4 00285B54  7C E9 03 A6 */	mtctr r7
/* 8028FDD8 00285B58  2C 05 00 03 */	cmpwi r5, 3
/* 8028FDDC 00285B5C  40 80 02 20 */	bge lbl_8028FFFC
lbl_8028FDE0:
/* 8028FDE0 00285B60  7C E6 22 14 */	add r7, r6, r4
/* 8028FDE4 00285B64  7E 1C 98 2E */	lwzx r16, r28, r19
/* 8028FDE8 00285B68  1E 27 00 30 */	mulli r17, r7, 0x30
/* 8028FDEC 00285B6C  7D 9C 00 2E */	lwzx r12, r28, r0
/* 8028FDF0 00285B70  7C F7 82 14 */	add r7, r23, r16
/* 8028FDF4 00285B74  C0 63 00 00 */	lfs f3, 0(r3)
/* 8028FDF8 00285B78  C3 87 00 3C */	lfs f28, 0x3c(r7)
/* 8028FDFC 00285B7C  7E 17 62 14 */	add r16, r23, r12
/* 8028FE00 00285B80  7D 98 8A 14 */	add r12, r24, r17
/* 8028FE04 00285B84  7C 38 8C 2E */	lfsx f1, r24, r17
/* 8028FE08 00285B88  C0 43 00 04 */	lfs f2, 4(r3)
/* 8028FE0C 00285B8C  EC 83 00 72 */	fmuls f4, f3, f1
/* 8028FE10 00285B90  C0 0C 00 04 */	lfs f0, 4(r12)
/* 8028FE14 00285B94  C0 A3 00 08 */	lfs f5, 8(r3)
/* 8028FE18 00285B98  EC 62 00 32 */	fmuls f3, f2, f0
/* 8028FE1C 00285B9C  C0 2C 00 08 */	lfs f1, 8(r12)
/* 8028FE20 00285BA0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8028FE24 00285BA4  ED 85 00 72 */	fmuls f12, f5, f1
/* 8028FE28 00285BA8  C0 0C 00 0C */	lfs f0, 0xc(r12)
/* 8028FE2C 00285BAC  C0 A3 00 10 */	lfs f5, 0x10(r3)
/* 8028FE30 00285BB0  ED 62 00 32 */	fmuls f11, f2, f0
/* 8028FE34 00285BB4  C0 2C 00 10 */	lfs f1, 0x10(r12)
/* 8028FE38 00285BB8  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8028FE3C 00285BBC  EC 25 00 72 */	fmuls f1, f5, f1
/* 8028FE40 00285BC0  C0 0C 00 14 */	lfs f0, 0x14(r12)
/* 8028FE44 00285BC4  C0 E3 00 18 */	lfs f7, 0x18(r3)
/* 8028FE48 00285BC8  EC 42 00 32 */	fmuls f2, f2, f0
/* 8028FE4C 00285BCC  C0 CC 00 18 */	lfs f6, 0x18(r12)
/* 8028FE50 00285BD0  C0 A3 00 1C */	lfs f5, 0x1c(r3)
/* 8028FE54 00285BD4  ED 47 01 B2 */	fmuls f10, f7, f6
/* 8028FE58 00285BD8  C0 0C 00 1C */	lfs f0, 0x1c(r12)
/* 8028FE5C 00285BDC  C0 E3 00 20 */	lfs f7, 0x20(r3)
/* 8028FE60 00285BE0  ED 25 00 32 */	fmuls f9, f5, f0
/* 8028FE64 00285BE4  C0 CC 00 20 */	lfs f6, 0x20(r12)
/* 8028FE68 00285BE8  C0 A3 00 24 */	lfs f5, 0x24(r3)
/* 8028FE6C 00285BEC  EE C7 01 B2 */	fmuls f22, f7, f6
/* 8028FE70 00285BF0  C0 0C 00 24 */	lfs f0, 0x24(r12)
/* 8028FE74 00285BF4  C1 03 00 28 */	lfs f8, 0x28(r3)
/* 8028FE78 00285BF8  EC 05 00 32 */	fmuls f0, f5, f0
/* 8028FE7C 00285BFC  C0 EC 00 28 */	lfs f7, 0x28(r12)
/* 8028FE80 00285C00  C0 C3 00 2C */	lfs f6, 0x2c(r3)
/* 8028FE84 00285C04  ED 08 01 F2 */	fmuls f8, f8, f7
/* 8028FE88 00285C08  C0 AC 00 2C */	lfs f5, 0x2c(r12)
/* 8028FE8C 00285C0C  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8028FE90 00285C10  EC E6 01 72 */	fmuls f7, f6, f5
/* 8028FE94 00285C14  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8028FE98 00285C18  D1 81 00 38 */	stfs f12, 0x38(r1)
/* 8028FE9C 00285C1C  D1 61 00 3C */	stfs f11, 0x3c(r1)
/* 8028FEA0 00285C20  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8028FEA4 00285C24  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8028FEA8 00285C28  D1 41 00 48 */	stfs f10, 0x48(r1)
/* 8028FEAC 00285C2C  D1 21 00 4C */	stfs f9, 0x4c(r1)
/* 8028FEB0 00285C30  D2 C1 00 50 */	stfs f22, 0x50(r1)
/* 8028FEB4 00285C34  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8028FEB8 00285C38  D1 01 00 58 */	stfs f8, 0x58(r1)
/* 8028FEBC 00285C3C  D0 E1 00 5C */	stfs f7, 0x5c(r1)
/* 8028FEC0 00285C40  D3 81 00 60 */	stfs f28, 0x60(r1)
/* 8028FEC4 00285C44  D3 81 00 64 */	stfs f28, 0x64(r1)
/* 8028FEC8 00285C48  D3 81 00 68 */	stfs f28, 0x68(r1)
/* 8028FECC 00285C4C  C1 B0 00 3C */	lfs f13, 0x3c(r16)
/* 8028FED0 00285C50  EC DC 01 32 */	fmuls f6, f28, f4
/* 8028FED4 00285C54  C2 E7 00 30 */	lfs f23, 0x30(r7)
/* 8028FED8 00285C58  EC BC 00 F2 */	fmuls f5, f28, f3
/* 8028FEDC 00285C5C  C3 07 00 34 */	lfs f24, 0x34(r7)
/* 8028FEE0 00285C60  EC 8D 01 32 */	fmuls f4, f13, f4
/* 8028FEE4 00285C64  C3 67 00 38 */	lfs f27, 0x38(r7)
/* 8028FEE8 00285C68  EF 02 06 32 */	fmuls f24, f2, f24
/* 8028FEEC 00285C6C  C3 50 00 34 */	lfs f26, 0x34(r16)
/* 8028FEF0 00285C70  EC 6D 00 F2 */	fmuls f3, f13, f3
/* 8028FEF4 00285C74  C3 30 00 30 */	lfs f25, 0x30(r16)
/* 8028FEF8 00285C78  EE E1 05 F2 */	fmuls f23, f1, f23
/* 8028FEFC 00285C7C  D0 C1 00 80 */	stfs f6, 0x80(r1)
/* 8028FF00 00285C80  EC 36 06 72 */	fmuls f1, f22, f25
/* 8028FF04 00285C84  C3 30 00 38 */	lfs f25, 0x38(r16)
/* 8028FF08 00285C88  EC 00 06 B2 */	fmuls f0, f0, f26
/* 8028FF0C 00285C8C  D0 A1 00 84 */	stfs f5, 0x84(r1)
/* 8028FF10 00285C90  ED 4A 06 F2 */	fmuls f10, f10, f27
/* 8028FF14 00285C94  38 E1 01 50 */	addi r7, r1, 0x150
/* 8028FF18 00285C98  EF 28 06 72 */	fmuls f25, f8, f25
/* 8028FF1C 00285C9C  D2 E1 00 40 */	stfs f23, 0x40(r1)
/* 8028FF20 00285CA0  EF 46 20 2A */	fadds f26, f6, f4
/* 8028FF24 00285CA4  7C E7 52 14 */	add r7, r7, r10
/* 8028FF28 00285CA8  EF 65 18 2A */	fadds f27, f5, f3
/* 8028FF2C 00285CAC  D1 41 00 48 */	stfs f10, 0x48(r1)
/* 8028FF30 00285CB0  EE DC 03 32 */	fmuls f22, f28, f12
/* 8028FF34 00285CB4  D3 01 00 44 */	stfs f24, 0x44(r1)
/* 8028FF38 00285CB8  EC 4D 03 32 */	fmuls f2, f13, f12
/* 8028FF3C 00285CBC  39 81 01 50 */	addi r12, r1, 0x150
/* 8028FF40 00285CC0  ED 17 08 2A */	fadds f8, f23, f1
/* 8028FF44 00285CC4  D3 81 00 6C */	stfs f28, 0x6c(r1)
/* 8028FF48 00285CC8  EC D8 00 2A */	fadds f6, f24, f0
/* 8028FF4C 00285CCC  D2 C1 00 88 */	stfs f22, 0x88(r1)
/* 8028FF50 00285CD0  EF 1C 02 F2 */	fmuls f24, f28, f11
/* 8028FF54 00285CD4  7D 8C 42 14 */	add r12, r12, r8
/* 8028FF58 00285CD8  EE ED 02 F2 */	fmuls f23, f13, f11
/* 8028FF5C 00285CDC  D1 A1 00 70 */	stfs f13, 0x70(r1)
/* 8028FF60 00285CE0  EF 89 07 32 */	fmuls f28, f9, f28
/* 8028FF64 00285CE4  D3 01 00 8C */	stfs f24, 0x8c(r1)
/* 8028FF68 00285CE8  ED 67 03 72 */	fmuls f11, f7, f13
/* 8028FF6C 00285CEC  38 84 00 01 */	addi r4, r4, 1
/* 8028FF70 00285CF0  ED 96 10 2A */	fadds f12, f22, f2
/* 8028FF74 00285CF4  D1 A1 00 74 */	stfs f13, 0x74(r1)
/* 8028FF78 00285CF8  EC AA C8 2A */	fadds f5, f10, f25
/* 8028FF7C 00285CFC  D3 81 00 4C */	stfs f28, 0x4c(r1)
/* 8028FF80 00285D00  ED 48 D0 2A */	fadds f10, f8, f26
/* 8028FF84 00285D04  39 4A 00 10 */	addi r10, r10, 0x10
/* 8028FF88 00285D08  ED 06 D8 2A */	fadds f8, f6, f27
/* 8028FF8C 00285D0C  D1 A1 00 78 */	stfs f13, 0x78(r1)
/* 8028FF90 00285D10  EC C5 60 2A */	fadds f6, f5, f12
/* 8028FF94 00285D14  D1 A1 00 7C */	stfs f13, 0x7c(r1)
/* 8028FF98 00285D18  EC AA 40 2A */	fadds f5, f10, f8
/* 8028FF9C 00285D1C  ED 38 B8 2A */	fadds f9, f24, f23
/* 8028FFA0 00285D20  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8028FFA4 00285D24  EC FC 58 2A */	fadds f7, f28, f11
/* 8028FFA8 00285D28  EE C6 28 2A */	fadds f22, f6, f5
/* 8028FFAC 00285D2C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8028FFB0 00285D30  EC A7 48 2A */	fadds f5, f7, f9
/* 8028FFB4 00285D34  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8028FFB8 00285D38  7E C7 4D 2E */	stfsx f22, r7, r9
/* 8028FFBC 00285D3C  7E CC 5D 2E */	stfsx f22, r12, r11
/* 8028FFC0 00285D40  39 6B 00 04 */	addi r11, r11, 4
/* 8028FFC4 00285D44  D2 E1 00 9C */	stfs f23, 0x9c(r1)
/* 8028FFC8 00285D48  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8028FFCC 00285D4C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8028FFD0 00285D50  D3 21 00 58 */	stfs f25, 0x58(r1)
/* 8028FFD4 00285D54  D1 61 00 5C */	stfs f11, 0x5c(r1)
/* 8028FFD8 00285D58  D3 41 00 80 */	stfs f26, 0x80(r1)
/* 8028FFDC 00285D5C  D3 61 00 84 */	stfs f27, 0x84(r1)
/* 8028FFE0 00285D60  D1 81 00 88 */	stfs f12, 0x88(r1)
/* 8028FFE4 00285D64  D1 21 00 8C */	stfs f9, 0x8c(r1)
/* 8028FFE8 00285D68  D1 41 00 40 */	stfs f10, 0x40(r1)
/* 8028FFEC 00285D6C  D1 01 00 44 */	stfs f8, 0x44(r1)
/* 8028FFF0 00285D70  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 8028FFF4 00285D74  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 8028FFF8 00285D78  42 00 FD E8 */	bdnz lbl_8028FDE0
lbl_8028FFFC:
/* 8028FFFC 00285D7C  38 61 01 50 */	addi r3, r1, 0x150
/* 80290000 00285D80  38 A5 00 01 */	addi r5, r5, 1
/* 80290004 00285D84  7C 63 42 14 */	add r3, r3, r8
/* 80290008 00285D88  39 08 00 10 */	addi r8, r8, 0x10
/* 8029000C 00285D8C  7C 03 4C 2E */	lfsx f0, r3, r9
/* 80290010 00285D90  2C 05 00 03 */	cmpwi r5, 3
/* 80290014 00285D94  EC 00 F0 2A */	fadds f0, f0, f30
/* 80290018 00285D98  7C 03 4D 2E */	stfsx f0, r3, r9
/* 8029001C 00285D9C  39 29 00 04 */	addi r9, r9, 4
/* 80290020 00285DA0  41 80 FD 98 */	blt lbl_8028FDB8
/* 80290024 00285DA4  7C 1E 90 00 */	cmpw r30, r18
/* 80290028 00285DA8  D3 E1 00 AC */	stfs f31, 0xac(r1)
/* 8029002C 00285DAC  D3 E1 00 A8 */	stfs f31, 0xa8(r1)
/* 80290030 00285DB0  D3 E1 00 A4 */	stfs f31, 0xa4(r1)
/* 80290034 00285DB4  D3 E1 00 A0 */	stfs f31, 0xa0(r1)
/* 80290038 00285DB8  D3 E1 01 80 */	stfs f31, 0x180(r1)
/* 8029003C 00285DBC  D3 E1 01 84 */	stfs f31, 0x184(r1)
/* 80290040 00285DC0  D3 E1 01 88 */	stfs f31, 0x188(r1)
/* 80290044 00285DC4  D3 E1 01 8C */	stfs f31, 0x18c(r1)
/* 80290048 00285DC8  D3 E1 01 90 */	stfs f31, 0x190(r1)
/* 8029004C 00285DCC  D3 E1 01 94 */	stfs f31, 0x194(r1)
/* 80290050 00285DD0  D3 E1 01 98 */	stfs f31, 0x198(r1)
/* 80290054 00285DD4  D3 E1 01 9C */	stfs f31, 0x19c(r1)
/* 80290058 00285DD8  D3 E1 01 A0 */	stfs f31, 0x1a0(r1)
/* 8029005C 00285DDC  D3 E1 01 A4 */	stfs f31, 0x1a4(r1)
/* 80290060 00285DE0  D3 E1 01 A8 */	stfs f31, 0x1a8(r1)
/* 80290064 00285DE4  D3 E1 01 AC */	stfs f31, 0x1ac(r1)
/* 80290068 00285DE8  40 80 01 68 */	bge lbl_802901D0
/* 8029006C 00285DEC  38 1E 00 01 */	addi r0, r30, 1
/* 80290070 00285DF0  38 80 00 00 */	li r4, 0
/* 80290074 00285DF4  54 09 10 3A */	slwi r9, r0, 2
/* 80290078 00285DF8  38 A0 00 00 */	li r5, 0
lbl_8029007C:
/* 8029007C 00285DFC  7C 06 22 14 */	add r0, r6, r4
/* 80290080 00285E00  38 60 00 00 */	li r3, 0
/* 80290084 00285E04  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80290088 00285E08  38 E0 00 00 */	li r7, 0
/* 8029008C 00285E0C  7D 58 02 14 */	add r10, r24, r0
/* 80290090 00285E10  7E A9 03 A6 */	mtctr r21
lbl_80290094:
/* 80290094 00285E14  7D 03 32 14 */	add r8, r3, r6
/* 80290098 00285E18  7D 7C 48 2E */	lwzx r11, r28, r9
/* 8029009C 00285E1C  38 08 00 03 */	addi r0, r8, 3
/* 802900A0 00285E20  39 81 01 80 */	addi r12, r1, 0x180
/* 802900A4 00285E24  1C 00 00 30 */	mulli r0, r0, 0x30
/* 802900A8 00285E28  7D 77 5A 14 */	add r11, r23, r11
/* 802900AC 00285E2C  C0 6B 00 3C */	lfs f3, 0x3c(r11)
/* 802900B0 00285E30  7D 8C 3A 14 */	add r12, r12, r7
/* 802900B4 00285E34  C0 4A 00 00 */	lfs f2, 0(r10)
/* 802900B8 00285E38  38 63 00 01 */	addi r3, r3, 1
/* 802900BC 00285E3C  7C 18 04 2E */	lfsx f0, r24, r0
/* 802900C0 00285E40  7D 18 02 14 */	add r8, r24, r0
/* 802900C4 00285E44  C0 2A 00 04 */	lfs f1, 4(r10)
/* 802900C8 00285E48  38 E7 00 10 */	addi r7, r7, 0x10
/* 802900CC 00285E4C  EC 42 00 32 */	fmuls f2, f2, f0
/* 802900D0 00285E50  C0 08 00 04 */	lfs f0, 4(r8)
/* 802900D4 00285E54  C0 8A 00 20 */	lfs f4, 0x20(r10)
/* 802900D8 00285E58  EC 21 00 32 */	fmuls f1, f1, f0
/* 802900DC 00285E5C  C0 08 00 10 */	lfs f0, 0x10(r8)
/* 802900E0 00285E60  C0 AA 00 24 */	lfs f5, 0x24(r10)
/* 802900E4 00285E64  EC C4 00 32 */	fmuls f6, f4, f0
/* 802900E8 00285E68  C0 88 00 14 */	lfs f4, 0x14(r8)
/* 802900EC 00285E6C  C0 0B 00 30 */	lfs f0, 0x30(r11)
/* 802900F0 00285E70  EC A5 01 32 */	fmuls f5, f5, f4
/* 802900F4 00285E74  C1 0A 00 08 */	lfs f8, 8(r10)
/* 802900F8 00285E78  ED 26 00 32 */	fmuls f9, f6, f0
/* 802900FC 00285E7C  ED 83 00 B2 */	fmuls f12, f3, f2
/* 80290100 00285E80  C0 08 00 08 */	lfs f0, 8(r8)
/* 80290104 00285E84  D0 C1 00 D0 */	stfs f6, 0xd0(r1)
/* 80290108 00285E88  EC 08 00 32 */	fmuls f0, f8, f0
/* 8029010C 00285E8C  C0 8B 00 34 */	lfs f4, 0x34(r11)
/* 80290110 00285E90  ED 63 00 72 */	fmuls f11, f3, f1
/* 80290114 00285E94  ED 05 01 32 */	fmuls f8, f5, f4
/* 80290118 00285E98  D0 A1 00 D4 */	stfs f5, 0xd4(r1)
/* 8029011C 00285E9C  C0 AA 00 28 */	lfs f5, 0x28(r10)
/* 80290120 00285EA0  C0 88 00 18 */	lfs f4, 0x18(r8)
/* 80290124 00285EA4  EC E9 60 28 */	fsubs f7, f9, f12
/* 80290128 00285EA8  D1 21 00 D0 */	stfs f9, 0xd0(r1)
/* 8029012C 00285EAC  ED A5 01 32 */	fmuls f13, f5, f4
/* 80290130 00285EB0  C0 AB 00 38 */	lfs f5, 0x38(r11)
/* 80290134 00285EB4  EC C8 58 28 */	fsubs f6, f8, f11
/* 80290138 00285EB8  D1 01 00 D4 */	stfs f8, 0xd4(r1)
/* 8029013C 00285EBC  ED 43 00 32 */	fmuls f10, f3, f0
/* 80290140 00285EC0  C3 8A 00 0C */	lfs f28, 0xc(r10)
/* 80290144 00285EC4  EC AD 01 72 */	fmuls f5, f13, f5
/* 80290148 00285EC8  C1 28 00 0C */	lfs f9, 0xc(r8)
/* 8029014C 00285ECC  C1 08 00 1C */	lfs f8, 0x1c(r8)
/* 80290150 00285ED0  EC 87 30 2A */	fadds f4, f7, f6
/* 80290154 00285ED4  ED BC 02 72 */	fmuls f13, f28, f9
/* 80290158 00285ED8  C1 2A 00 2C */	lfs f9, 0x2c(r10)
/* 8029015C 00285EDC  EC A5 50 28 */	fsubs f5, f5, f10
/* 80290160 00285EE0  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 80290164 00285EE4  ED 29 02 32 */	fmuls f9, f9, f8
/* 80290168 00285EE8  ED 03 03 72 */	fmuls f8, f3, f13
/* 8029016C 00285EEC  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 80290170 00285EF0  EC 85 20 2A */	fadds f4, f5, f4
/* 80290174 00285EF4  EC 49 00 F2 */	fmuls f2, f9, f3
/* 80290178 00285EF8  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8029017C 00285EFC  D1 A1 00 EC */	stfs f13, 0xec(r1)
/* 80290180 00285F00  EC 42 40 28 */	fsubs f2, f2, f8
/* 80290184 00285F04  D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 80290188 00285F08  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 8029018C 00285F0C  D0 61 00 C8 */	stfs f3, 0xc8(r1)
/* 80290190 00285F10  D0 61 00 CC */	stfs f3, 0xcc(r1)
/* 80290194 00285F14  D1 81 00 B0 */	stfs f12, 0xb0(r1)
/* 80290198 00285F18  D1 61 00 B4 */	stfs f11, 0xb4(r1)
/* 8029019C 00285F1C  D1 41 00 B8 */	stfs f10, 0xb8(r1)
/* 802901A0 00285F20  D1 01 00 BC */	stfs f8, 0xbc(r1)
/* 802901A4 00285F24  D0 E1 00 D0 */	stfs f7, 0xd0(r1)
/* 802901A8 00285F28  D0 C1 00 D4 */	stfs f6, 0xd4(r1)
/* 802901AC 00285F2C  D0 A1 00 D8 */	stfs f5, 0xd8(r1)
/* 802901B0 00285F30  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 802901B4 00285F34  7C 8C 2D 2E */	stfsx f4, r12, r5
/* 802901B8 00285F38  42 00 FE DC */	bdnz lbl_80290094
/* 802901BC 00285F3C  38 84 00 01 */	addi r4, r4, 1
/* 802901C0 00285F40  38 A5 00 04 */	addi r5, r5, 4
/* 802901C4 00285F44  2C 04 00 03 */	cmpwi r4, 3
/* 802901C8 00285F48  41 80 FE B4 */	blt lbl_8029007C
/* 802901CC 00285F4C  48 00 00 34 */	b lbl_80290200
lbl_802901D0:
/* 802901D0 00285F50  D3 E1 01 8C */	stfs f31, 0x18c(r1)
/* 802901D4 00285F54  D3 E1 01 88 */	stfs f31, 0x188(r1)
/* 802901D8 00285F58  D3 E1 01 84 */	stfs f31, 0x184(r1)
/* 802901DC 00285F5C  D3 E1 01 80 */	stfs f31, 0x180(r1)
/* 802901E0 00285F60  D3 E1 01 9C */	stfs f31, 0x19c(r1)
/* 802901E4 00285F64  D3 E1 01 98 */	stfs f31, 0x198(r1)
/* 802901E8 00285F68  D3 E1 01 94 */	stfs f31, 0x194(r1)
/* 802901EC 00285F6C  D3 E1 01 90 */	stfs f31, 0x190(r1)
/* 802901F0 00285F70  D3 E1 01 AC */	stfs f31, 0x1ac(r1)
/* 802901F4 00285F74  D3 E1 01 A8 */	stfs f31, 0x1a8(r1)
/* 802901F8 00285F78  D3 E1 01 A4 */	stfs f31, 0x1a4(r1)
/* 802901FC 00285F7C  D3 E1 01 A0 */	stfs f31, 0x1a0(r1)
lbl_80290200:
/* 80290200 00285F80  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80290204 00285F84  7C 9B A2 14 */	add r4, r27, r20
/* 80290208 00285F88  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 8029020C 00285F8C  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 80290210 00285F90  7C 3B A5 2E */	stfsx f1, r27, r20
/* 80290214 00285F94  38 A1 01 20 */	addi r5, r1, 0x120
/* 80290218 00285F98  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 8029021C 00285F9C  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80290220 00285FA0  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80290224 00285FA4  D0 24 00 28 */	stfs f1, 0x28(r4)
/* 80290228 00285FA8  C0 81 00 F4 */	lfs f4, 0xf4(r1)
/* 8029022C 00285FAC  D3 E4 00 0C */	stfs f31, 0xc(r4)
/* 80290230 00285FB0  C0 61 01 10 */	lfs f3, 0x110(r1)
/* 80290234 00285FB4  D3 E4 00 1C */	stfs f31, 0x1c(r4)
/* 80290238 00285FB8  C0 41 00 F8 */	lfs f2, 0xf8(r1)
/* 8029023C 00285FBC  D3 E4 00 2C */	stfs f31, 0x2c(r4)
/* 80290240 00285FC0  C0 21 01 14 */	lfs f1, 0x114(r1)
/* 80290244 00285FC4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80290248 00285FC8  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 8029024C 00285FCC  D0 84 00 10 */	stfs f4, 0x10(r4)
/* 80290250 00285FD0  D0 64 00 08 */	stfs f3, 8(r4)
/* 80290254 00285FD4  D0 44 00 20 */	stfs f2, 0x20(r4)
/* 80290258 00285FD8  D0 24 00 18 */	stfs f1, 0x18(r4)
/* 8029025C 00285FDC  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 80290260 00285FE0  4B FF 27 99 */	bl hkMatrix3_setMulMat3Mat3
/* 80290264 00285FE4  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 80290268 00285FE8  7C 7B A2 14 */	add r3, r27, r20
/* 8029026C 00285FEC  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80290270 00285FF0  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80290274 00285FF4  FC 20 08 18 */	frsp f1, f1
/* 80290278 00285FF8  C0 41 01 58 */	lfs f2, 0x158(r1)
/* 8029027C 00285FFC  FD 80 00 18 */	frsp f12, f0
/* 80290280 00286000  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80290284 00286004  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80290288 00286008  FD 60 10 18 */	frsp f11, f2
/* 8029028C 0028600C  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 80290290 00286010  C0 41 01 60 */	lfs f2, 0x160(r1)
/* 80290294 00286014  FD 40 00 18 */	frsp f10, f0
/* 80290298 00286018  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8029029C 0028601C  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 802902A0 00286020  FD 20 10 18 */	frsp f9, f2
/* 802902A4 00286024  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 802902A8 00286028  C0 41 01 68 */	lfs f2, 0x168(r1)
/* 802902AC 0028602C  FD 00 00 18 */	frsp f8, f0
/* 802902B0 00286030  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802902B4 00286034  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 802902B8 00286038  FC E0 10 18 */	frsp f7, f2
/* 802902BC 0028603C  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 802902C0 00286040  C0 41 01 70 */	lfs f2, 0x170(r1)
/* 802902C4 00286044  FC C0 00 18 */	frsp f6, f0
/* 802902C8 00286048  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802902CC 0028604C  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 802902D0 00286050  FC A0 10 18 */	frsp f5, f2
/* 802902D4 00286054  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 802902D8 00286058  C0 41 01 78 */	lfs f2, 0x178(r1)
/* 802902DC 0028605C  FC 80 00 18 */	frsp f4, f0
/* 802902E0 00286060  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802902E4 00286064  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 802902E8 00286068  FC 60 10 18 */	frsp f3, f2
/* 802902EC 0028606C  D0 43 00 58 */	stfs f2, 0x58(r3)
/* 802902F0 00286070  FC 40 00 18 */	frsp f2, f0
/* 802902F4 00286074  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802902F8 00286078  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 802902FC 0028607C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80290300 00286080  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80290304 00286084  FC 00 00 18 */	frsp f0, f0
/* 80290308 00286088  C0 21 01 B4 */	lfs f1, 0x1b4(r1)
/* 8029030C 0028608C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 80290310 00286090  EC 2C 08 28 */	fsubs f1, f12, f1
/* 80290314 00286094  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80290318 00286098  C0 21 01 B8 */	lfs f1, 0x1b8(r1)
/* 8029031C 0028609C  EC 2B 08 28 */	fsubs f1, f11, f1
/* 80290320 002860A0  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80290324 002860A4  C0 21 01 BC */	lfs f1, 0x1bc(r1)
/* 80290328 002860A8  EC 2A 08 28 */	fsubs f1, f10, f1
/* 8029032C 002860AC  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 80290330 002860B0  C0 21 01 C0 */	lfs f1, 0x1c0(r1)
/* 80290334 002860B4  EC 29 08 28 */	fsubs f1, f9, f1
/* 80290338 002860B8  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8029033C 002860BC  C0 21 01 C4 */	lfs f1, 0x1c4(r1)
/* 80290340 002860C0  EC 28 08 28 */	fsubs f1, f8, f1
/* 80290344 002860C4  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 80290348 002860C8  C0 21 01 C8 */	lfs f1, 0x1c8(r1)
/* 8029034C 002860CC  EC 27 08 28 */	fsubs f1, f7, f1
/* 80290350 002860D0  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 80290354 002860D4  C0 21 01 CC */	lfs f1, 0x1cc(r1)
/* 80290358 002860D8  EC 26 08 28 */	fsubs f1, f6, f1
/* 8029035C 002860DC  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80290360 002860E0  C0 21 01 D0 */	lfs f1, 0x1d0(r1)
/* 80290364 002860E4  EC 25 08 28 */	fsubs f1, f5, f1
/* 80290368 002860E8  D0 23 00 50 */	stfs f1, 0x50(r3)
/* 8029036C 002860EC  C0 21 01 D4 */	lfs f1, 0x1d4(r1)
/* 80290370 002860F0  EC 24 08 28 */	fsubs f1, f4, f1
/* 80290374 002860F4  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 80290378 002860F8  C0 21 01 D8 */	lfs f1, 0x1d8(r1)
/* 8029037C 002860FC  EC 23 08 28 */	fsubs f1, f3, f1
/* 80290380 00286100  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 80290384 00286104  C0 21 01 DC */	lfs f1, 0x1dc(r1)
/* 80290388 00286108  EC 22 08 28 */	fsubs f1, f2, f1
/* 8029038C 0028610C  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 80290390 00286110  40 81 00 08 */	ble lbl_80290398
/* 80290394 00286114  48 00 00 08 */	b lbl_8029039C
lbl_80290398:
/* 80290398 00286118  FC 00 E8 90 */	fmr f0, f29
lbl_8029039C:
/* 8029039C 0028611C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802903A0 00286120  38 83 00 40 */	addi r4, r3, 0x40
/* 802903A4 00286124  C0 04 00 04 */	lfs f0, 4(r4)
/* 802903A8 00286128  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 802903AC 0028612C  40 81 00 08 */	ble lbl_802903B4
/* 802903B0 00286130  48 00 00 08 */	b lbl_802903B8
lbl_802903B4:
/* 802903B4 00286134  FC 00 E8 90 */	fmr f0, f29
lbl_802903B8:
/* 802903B8 00286138  D0 04 00 04 */	stfs f0, 4(r4)
/* 802903BC 0028613C  38 83 00 50 */	addi r4, r3, 0x50
/* 802903C0 00286140  C0 04 00 08 */	lfs f0, 8(r4)
/* 802903C4 00286144  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 802903C8 00286148  40 81 00 08 */	ble lbl_802903D0
/* 802903CC 0028614C  48 00 00 08 */	b lbl_802903D4
lbl_802903D0:
/* 802903D0 00286150  FC 00 E8 90 */	fmr f0, f29
lbl_802903D4:
/* 802903D4 00286154  7C 7B A2 14 */	add r3, r27, r20
/* 802903D8 00286158  D0 04 00 08 */	stfs f0, 8(r4)
/* 802903DC 0028615C  38 63 00 30 */	addi r3, r3, 0x30
/* 802903E0 00286160  4B FF 28 95 */	bl hkMatrix3_invertSymmetric
/* 802903E4 00286164  7C 7B A2 14 */	add r3, r27, r20
/* 802903E8 00286168  38 A1 01 80 */	addi r5, r1, 0x180
/* 802903EC 0028616C  7C 64 1B 78 */	mr r4, r3
/* 802903F0 00286170  38 84 00 30 */	addi r4, r4, 0x30
/* 802903F4 00286174  38 63 00 60 */	addi r3, r3, 0x60
/* 802903F8 00286178  4B FF 26 01 */	bl hkMatrix3_setMulMat3Mat3
/* 802903FC 0028617C  7C 7B A2 14 */	add r3, r27, r20
/* 80290400 00286180  C1 81 01 80 */	lfs f12, 0x180(r1)
/* 80290404 00286184  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80290408 00286188  3B DE 00 01 */	addi r30, r30, 1
/* 8029040C 0028618C  C1 61 01 84 */	lfs f11, 0x184(r1)
/* 80290410 00286190  3A 94 00 90 */	addi r20, r20, 0x90
/* 80290414 00286194  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80290418 00286198  3A 73 00 04 */	addi r19, r19, 4
/* 8029041C 0028619C  C1 41 01 88 */	lfs f10, 0x188(r1)
/* 80290420 002861A0  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 80290424 002861A4  C1 21 01 8C */	lfs f9, 0x18c(r1)
/* 80290428 002861A8  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 8029042C 002861AC  C1 01 01 90 */	lfs f8, 0x190(r1)
/* 80290430 002861B0  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 80290434 002861B4  C0 E1 01 94 */	lfs f7, 0x194(r1)
/* 80290438 002861B8  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 8029043C 002861BC  C0 C1 01 98 */	lfs f6, 0x198(r1)
/* 80290440 002861C0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80290444 002861C4  C0 A1 01 9C */	lfs f5, 0x19c(r1)
/* 80290448 002861C8  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 8029044C 002861CC  C0 81 01 A0 */	lfs f4, 0x1a0(r1)
/* 80290450 002861D0  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80290454 002861D4  C0 61 01 A4 */	lfs f3, 0x1a4(r1)
/* 80290458 002861D8  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 8029045C 002861DC  C0 41 01 A8 */	lfs f2, 0x1a8(r1)
/* 80290460 002861E0  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80290464 002861E4  C0 21 01 AC */	lfs f1, 0x1ac(r1)
/* 80290468 002861E8  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 8029046C 002861EC  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80290470 002861F0  D1 81 00 F0 */	stfs f12, 0xf0(r1)
/* 80290474 002861F4  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80290478 002861F8  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 8029047C 002861FC  D1 61 00 F4 */	stfs f11, 0xf4(r1)
/* 80290480 00286200  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 80290484 00286204  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80290488 00286208  D1 41 00 F8 */	stfs f10, 0xf8(r1)
/* 8029048C 0028620C  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 80290490 00286210  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80290494 00286214  D1 21 00 FC */	stfs f9, 0xfc(r1)
/* 80290498 00286218  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 8029049C 0028621C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 802904A0 00286220  D1 01 01 00 */	stfs f8, 0x100(r1)
/* 802904A4 00286224  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 802904A8 00286228  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 802904AC 0028622C  D0 E1 01 04 */	stfs f7, 0x104(r1)
/* 802904B0 00286230  D0 C1 01 08 */	stfs f6, 0x108(r1)
/* 802904B4 00286234  D0 A1 01 0C */	stfs f5, 0x10c(r1)
/* 802904B8 00286238  D0 81 01 10 */	stfs f4, 0x110(r1)
/* 802904BC 0028623C  D0 61 01 14 */	stfs f3, 0x114(r1)
/* 802904C0 00286240  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 802904C4 00286244  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 802904C8 00286248  D0 01 01 4C */	stfs f0, 0x14c(r1)
lbl_802904CC:
/* 802904CC 0028624C  7C 1E B0 00 */	cmpw r30, r22
/* 802904D0 00286250  41 80 F8 D0 */	blt lbl_8028FDA0
/* 802904D4 00286254  80 79 00 00 */	lwz r3, 0(r25)
/* 802904D8 00286258  38 16 00 01 */	addi r0, r22, 1
/* 802904DC 0028625C  54 00 20 36 */	slwi r0, r0, 4
/* 802904E0 00286260  80 99 00 08 */	lwz r4, 8(r25)
/* 802904E4 00286264  7C 63 D2 14 */	add r3, r3, r26
/* 802904E8 00286268  7C 03 02 14 */	add r0, r3, r0
/* 802904EC 0028626C  90 19 00 00 */	stw r0, 0(r25)
/* 802904F0 00286270  80 1D 00 00 */	lwz r0, 0(r29)
/* 802904F4 00286274  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802904F8 00286278  7C 04 02 14 */	add r0, r4, r0
/* 802904FC 0028627C  90 19 00 08 */	stw r0, 8(r25)
/* 80290500 00286280  81 41 00 00 */	lwz r10, 0(r1)
/* 80290504 00286284  38 00 FF F8 */	li r0, -8
/* 80290508 00286288  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 8029050C 0028628C  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 80290510 00286290  38 00 FF E8 */	li r0, -24
/* 80290514 00286294  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 80290518 00286298  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 8029051C 0028629C  38 00 FF D8 */	li r0, -40
/* 80290520 002862A0  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 80290524 002862A4  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 80290528 002862A8  38 00 FF C8 */	li r0, -56
/* 8029052C 002862AC  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 80290530 002862B0  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 80290534 002862B4  38 00 FF B8 */	li r0, -72
/* 80290538 002862B8  13 6A 00 0C */	psq_lx f27, r10, r0, 0, qr0
/* 8029053C 002862BC  CB 6A FF B0 */	lfd f27, -0x50(r10)
/* 80290540 002862C0  38 00 FF A8 */	li r0, -88
/* 80290544 002862C4  13 4A 00 0C */	psq_lx f26, r10, r0, 0, qr0
/* 80290548 002862C8  CB 4A FF A0 */	lfd f26, -0x60(r10)
/* 8029054C 002862CC  38 00 FF 98 */	li r0, -104
/* 80290550 002862D0  13 2A 00 0C */	psq_lx f25, r10, r0, 0, qr0
/* 80290554 002862D4  CB 2A FF 90 */	lfd f25, -0x70(r10)
/* 80290558 002862D8  38 00 FF 88 */	li r0, -120
/* 8029055C 002862DC  13 0A 00 0C */	psq_lx f24, r10, r0, 0, qr0
/* 80290560 002862E0  CB 0A FF 80 */	lfd f24, -0x80(r10)
/* 80290564 002862E4  38 00 FF 78 */	li r0, -136
/* 80290568 002862E8  12 EA 00 0C */	psq_lx f23, r10, r0, 0, qr0
/* 8029056C 002862EC  CA EA FF 70 */	lfd f23, -0x90(r10)
/* 80290570 002862F0  38 00 FF 68 */	li r0, -152
/* 80290574 002862F4  12 CA 00 0C */	psq_lx f22, r10, r0, 0, qr0
/* 80290578 002862F8  CA CA FF 60 */	lfd f22, -0xa0(r10)
/* 8029057C 002862FC  39 6A FF 60 */	addi r11, r10, -160
/* 80290580 00286300  48 16 0D C1 */	bl _restgpr_16
/* 80290584 00286304  80 0A 00 04 */	lwz r0, 4(r10)
/* 80290588 00286308  7C 08 03 A6 */	mtlr r0
/* 8029058C 0028630C  7D 41 53 78 */	mr r1, r10
/* 80290590 00286310  4E 80 00 20 */	blr 


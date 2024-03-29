.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global Vec3f$7vlRotateFix
Vec3f$7vlRotateFix:
/* 8003E244 00033FC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003E248 00033FC8  7C 08 02 A6 */	mflr r0
/* 8003E24C 00033FCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003E250 00033FD0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8003E254 00033FD4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8003E258 00033FD8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8003E25C 00033FDC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 8003E260 00033FE0  FF C0 08 90 */	fmr f30, f1
/* 8003E264 00033FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E268 00033FE8  7C 9F 23 78 */	mr r31, r4
/* 8003E26C 00033FEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8003E270 00033FF0  7C 7E 1B 78 */	mr r30, r3
/* 8003E274 00033FF4  48 3C 27 6D */	bl sin
/* 8003E278 00033FF8  FF E0 08 18 */	frsp f31, f1
/* 8003E27C 00033FFC  FC 20 F0 90 */	fmr f1, f30
/* 8003E280 00034000  48 3C 22 59 */	bl cos
/* 8003E284 00034004  2C 1F 00 03 */	cmpwi r31, 3
/* 8003E288 00034008  FC A0 08 18 */	frsp f5, f1
/* 8003E28C 0003400C  41 82 00 98 */	beq lbl_8003E324
/* 8003E290 00034010  40 80 00 14 */	bge lbl_8003E2A4
/* 8003E294 00034014  2C 1F 00 01 */	cmpwi r31, 1
/* 8003E298 00034018  41 82 00 18 */	beq lbl_8003E2B0
/* 8003E29C 0003401C  40 80 00 3C */	bge lbl_8003E2D8
/* 8003E2A0 00034020  48 00 00 84 */	b lbl_8003E324
lbl_8003E2A4:
/* 8003E2A4 00034024  2C 1F 00 05 */	cmpwi r31, 5
/* 8003E2A8 00034028  40 80 00 7C */	bge lbl_8003E324
/* 8003E2AC 0003402C  48 00 00 54 */	b lbl_8003E300
lbl_8003E2B0:
/* 8003E2B0 00034030  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8003E2B4 00034034  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8003E2B8 00034038  EC 61 01 72 */	fmuls f3, f1, f5
/* 8003E2BC 0003403C  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8003E2C0 00034040  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8003E2C4 00034044  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8003E2C8 00034048  EC 00 01 72 */	fmuls f0, f0, f5
/* 8003E2CC 0003404C  EC C3 10 28 */	fsubs f6, f3, f2
/* 8003E2D0 00034050  EC E1 00 2A */	fadds f7, f1, f0
/* 8003E2D4 00034054  48 00 00 50 */	b lbl_8003E324
lbl_8003E2D8:
/* 8003E2D8 00034058  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8003E2DC 0003405C  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8003E2E0 00034060  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8003E2E4 00034064  C0 DE 00 04 */	lfs f6, 4(r30)
/* 8003E2E8 00034068  EC 20 01 72 */	fmuls f1, f0, f5
/* 8003E2EC 0003406C  EC 04 07 F2 */	fmuls f0, f4, f31
/* 8003E2F0 00034070  EC 64 01 72 */	fmuls f3, f4, f5
/* 8003E2F4 00034074  EC E1 00 28 */	fsubs f7, f1, f0
/* 8003E2F8 00034078  EC 83 10 2A */	fadds f4, f3, f2
/* 8003E2FC 0003407C  48 00 00 28 */	b lbl_8003E324
lbl_8003E300:
/* 8003E300 00034080  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8003E304 00034084  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8003E308 00034088  EC 61 01 72 */	fmuls f3, f1, f5
/* 8003E30C 0003408C  C0 FE 00 08 */	lfs f7, 8(r30)
/* 8003E310 00034090  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8003E314 00034094  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8003E318 00034098  EC 00 01 72 */	fmuls f0, f0, f5
/* 8003E31C 0003409C  EC 83 10 28 */	fsubs f4, f3, f2
/* 8003E320 000340A0  EC C1 00 2A */	fadds f6, f1, f0
lbl_8003E324:
/* 8003E324 000340A4  D0 9E 00 00 */	stfs f4, 0(r30)
/* 8003E328 000340A8  7F C3 F3 78 */	mr r3, r30
/* 8003E32C 000340AC  D0 DE 00 04 */	stfs f6, 4(r30)
/* 8003E330 000340B0  D0 FE 00 08 */	stfs f7, 8(r30)
/* 8003E334 000340B4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8003E338 000340B8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8003E33C 000340BC  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 8003E340 000340C0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8003E344 000340C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E348 000340C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003E34C 000340CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003E350 000340D0  7C 08 03 A6 */	mtlr r0
/* 8003E354 000340D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8003E358 000340D8  4E 80 00 20 */	blr 


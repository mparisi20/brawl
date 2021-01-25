.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d9ResAnmVisCFUlf$7GetAnmResult
nw4r3g3d9ResAnmVisCFUlf$7GetAnmResult:
/* 801932AC 0018902C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801932B0 00189030  7C 08 02 A6 */	mflr r0
/* 801932B4 00189034  80 A3 00 00 */	lwz r5, 0(r3)
/* 801932B8 00189038  90 01 00 24 */	stw r0, 0x24(r1)
/* 801932BC 0018903C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801932C0 00189040  80 05 00 10 */	lwz r0, 0x10(r5)
/* 801932C4 00189044  2C 00 00 00 */	cmpwi r0, 0
/* 801932C8 00189048  41 82 00 0C */	beq lbl_801932D4
/* 801932CC 0018904C  7C 05 02 14 */	add r0, r5, r0
/* 801932D0 00189050  48 00 00 08 */	b lbl_801932D8
lbl_801932D4:
/* 801932D4 00189054  38 00 00 00 */	li r0, 0
lbl_801932D8:
/* 801932D8 00189058  2C 00 00 00 */	cmpwi r0, 0
/* 801932DC 0018905C  41 82 00 2C */	beq lbl_80193308
/* 801932E0 00189060  38 84 00 01 */	addi r4, r4, 1
/* 801932E4 00189064  54 84 20 36 */	slwi r4, r4, 4
/* 801932E8 00189068  7C 80 22 14 */	add r4, r0, r4
/* 801932EC 0018906C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 801932F0 00189070  2C 04 00 00 */	cmpwi r4, 0
/* 801932F4 00189074  41 82 00 0C */	beq lbl_80193300
/* 801932F8 00189078  7F E0 22 14 */	add r31, r0, r4
/* 801932FC 0018907C  48 00 00 10 */	b lbl_8019330C
lbl_80193300:
/* 80193300 00189080  3B E0 00 00 */	li r31, 0
/* 80193304 00189084  48 00 00 08 */	b lbl_8019330C
lbl_80193308:
/* 80193308 00189088  3B E0 00 00 */	li r31, 0
lbl_8019330C:
/* 8019330C 0018908C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80193310 00189090  80 63 00 00 */	lwz r3, 0(r3)
/* 80193314 00189094  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80193318 00189098  41 82 00 0C */	beq lbl_80193324
/* 8019331C 0018909C  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 80193320 001890A0  48 00 00 98 */	b lbl_801933B8
lbl_80193324:
/* 80193324 001890A4  C0 02 9E A8 */	lfs f0, lbl_805A31C8-_SDA2_BASE_(r2)
/* 80193328 001890A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019332C 001890AC  4C 40 13 82 */	cror 2, 0, 2
/* 80193330 001890B0  40 82 00 08 */	bne lbl_80193338
/* 80193334 001890B4  48 00 00 44 */	b lbl_80193378
lbl_80193338:
/* 80193338 001890B8  A0 63 00 1C */	lhz r3, 0x1c(r3)
/* 8019333C 001890BC  3C 00 43 30 */	lis r0, 0x4330
/* 80193340 001890C0  90 01 00 08 */	stw r0, 8(r1)
/* 80193344 001890C4  C8 42 9E B0 */	lfd f2, lbl_805A31D0-_SDA2_BASE_(r2)
/* 80193348 001890C8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8019334C 001890CC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80193350 001890D0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80193354 001890D4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80193358 001890D8  4C 40 13 82 */	cror 2, 0, 2
/* 8019335C 001890DC  40 82 00 18 */	bne lbl_80193374
/* 80193360 001890E0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80193364 001890E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80193368 001890E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8019336C 001890EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80193370 001890F0  48 00 00 08 */	b lbl_80193378
lbl_80193374:
/* 80193374 001890F4  FC 00 08 90 */	fmr f0, f1
lbl_80193378:
/* 80193378 001890F8  FC 20 00 90 */	fmr f1, f0
/* 8019337C 001890FC  48 26 D2 31 */	bl floor
/* 80193380 00189100  FC 00 08 18 */	frsp f0, f1
/* 80193384 00189104  3C 60 80 00 */	lis r3, 0x8000
/* 80193388 00189108  FC 00 00 1E */	fctiwz f0, f0
/* 8019338C 0018910C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80193390 00189110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193394 00189114  54 04 E8 FA */	rlwinm r4, r0, 0x1d, 3, 0x1d
/* 80193398 00189118  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 8019339C 0018911C  7C 9F 22 14 */	add r4, r31, r4
/* 801933A0 00189120  80 84 00 08 */	lwz r4, 8(r4)
/* 801933A4 00189124  7C 60 04 30 */	srw r0, r3, r0
/* 801933A8 00189128  7C 83 00 38 */	and r3, r4, r0
/* 801933AC 0018912C  7C 03 00 D0 */	neg r0, r3
/* 801933B0 00189130  7C 00 1B 78 */	or r0, r0, r3
/* 801933B4 00189134  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801933B8:
/* 801933B8 00189138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801933BC 0018913C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801933C0 00189140  7C 08 03 A6 */	mtlr r0
/* 801933C4 00189144  38 21 00 20 */	addi r1, r1, 0x20
/* 801933C8 00189148  4E 80 00 20 */	blr 

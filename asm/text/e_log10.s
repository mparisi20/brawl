.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __ieee754_log10
__ieee754_log10:
/* 803FD904 003F3684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FD908 003F3688  7C 08 02 A6 */	mflr r0
/* 803FD90C 003F368C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FD910 003F3690  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 803FD914 003F3694  D8 21 00 08 */	stfd f1, 8(r1)
/* 803FD918 003F3698  3C 00 00 10 */	lis r0, 0x10
/* 803FD91C 003F369C  38 80 00 00 */	li r4, 0
/* 803FD920 003F36A0  80 A1 00 08 */	lwz r5, 8(r1)
/* 803FD924 003F36A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803FD928 003F36A8  7C 05 00 00 */	cmpw r5, r0
/* 803FD92C 003F36AC  40 80 00 5C */	bge lbl_803FD988
/* 803FD930 003F36B0  54 A0 00 7E */	clrlwi r0, r5, 1
/* 803FD934 003F36B4  7C 00 1B 79 */	or. r0, r0, r3
/* 803FD938 003F36B8  40 82 00 1C */	bne lbl_803FD954
/* 803FD93C 003F36BC  C8 22 BA C8 */	lfd f1, lbl_805A4DE8-_SDA2_BASE_(r2)
/* 803FD940 003F36C0  38 00 00 21 */	li r0, 0x21
/* 803FD944 003F36C4  C8 0D CE E0 */	lfd f0, lbl_805A1300-_SDA_BASE_(r13)
/* 803FD948 003F36C8  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 803FD94C 003F36CC  FC 21 00 24 */	fdiv f1, f1, f0
/* 803FD950 003F36D0  48 00 00 B4 */	b lbl_803FDA04
lbl_803FD954:
/* 803FD954 003F36D4  2C 05 00 00 */	cmpwi r5, 0
/* 803FD958 003F36D8  40 80 00 1C */	bge lbl_803FD974
/* 803FD95C 003F36DC  FC 21 08 28 */	fsub f1, f1, f1
/* 803FD960 003F36E0  C8 0D CE E0 */	lfd f0, lbl_805A1300-_SDA_BASE_(r13)
/* 803FD964 003F36E4  38 00 00 21 */	li r0, 0x21
/* 803FD968 003F36E8  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 803FD96C 003F36EC  FC 21 00 24 */	fdiv f1, f1, f0
/* 803FD970 003F36F0  48 00 00 94 */	b lbl_803FDA04
lbl_803FD974:
/* 803FD974 003F36F4  C8 02 BA D0 */	lfd f0, lbl_805A4DF0-_SDA2_BASE_(r2)
/* 803FD978 003F36F8  38 80 FF CA */	li r4, -54
/* 803FD97C 003F36FC  FC 21 00 32 */	fmul f1, f1, f0
/* 803FD980 003F3700  D8 21 00 08 */	stfd f1, 8(r1)
/* 803FD984 003F3704  80 A1 00 08 */	lwz r5, 8(r1)
lbl_803FD988:
/* 803FD988 003F3708  3C 00 7F F0 */	lis r0, 0x7ff0
/* 803FD98C 003F370C  7C 05 00 00 */	cmpw r5, r0
/* 803FD990 003F3710  41 80 00 0C */	blt lbl_803FD99C
/* 803FD994 003F3714  FC 21 08 2A */	fadd f1, f1, f1
/* 803FD998 003F3718  48 00 00 6C */	b lbl_803FDA04
lbl_803FD99C:
/* 803FD99C 003F371C  7C A3 A6 70 */	srawi r3, r5, 0x14
/* 803FD9A0 003F3720  3C 00 43 30 */	lis r0, 0x4330
/* 803FD9A4 003F3724  7C 64 1A 14 */	add r3, r4, r3
/* 803FD9A8 003F3728  90 01 00 10 */	stw r0, 0x10(r1)
/* 803FD9AC 003F372C  38 83 FC 01 */	addi r4, r3, -1023
/* 803FD9B0 003F3730  C8 22 BA F0 */	lfd f1, lbl_805A4E10-_SDA2_BASE_(r2)
/* 803FD9B4 003F3734  54 83 0F FE */	srwi r3, r4, 0x1f
/* 803FD9B8 003F3738  7C 04 1A 14 */	add r0, r4, r3
/* 803FD9BC 003F373C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803FD9C0 003F3740  20 63 03 FF */	subfic r3, r3, 0x3ff
/* 803FD9C4 003F3744  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD9C8 003F3748  54 60 A0 16 */	slwi r0, r3, 0x14
/* 803FD9CC 003F374C  50 A0 03 3E */	rlwimi r0, r5, 0, 0xc, 0x1f
/* 803FD9D0 003F3750  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803FD9D4 003F3754  90 01 00 08 */	stw r0, 8(r1)
/* 803FD9D8 003F3758  FF E0 08 28 */	fsub f31, f0, f1
/* 803FD9DC 003F375C  C8 21 00 08 */	lfd f1, 8(r1)
/* 803FD9E0 003F3760  4B FF FC 71 */	bl __ieee754_log
/* 803FD9E4 003F3764  C8 02 BA E0 */	lfd f0, lbl_805A4E00-_SDA2_BASE_(r2)
/* 803FD9E8 003F3768  C8 42 BA D8 */	lfd f2, lbl_805A4DF8-_SDA2_BASE_(r2)
/* 803FD9EC 003F376C  FC 60 00 72 */	fmul f3, f0, f1
/* 803FD9F0 003F3770  C8 02 BA E8 */	lfd f0, lbl_805A4E08-_SDA2_BASE_(r2)
/* 803FD9F4 003F3774  FC 22 07 F2 */	fmul f1, f2, f31
/* 803FD9F8 003F3778  FC 00 07 F2 */	fmul f0, f0, f31
/* 803FD9FC 003F377C  FC 21 18 2A */	fadd f1, f1, f3
/* 803FDA00 003F3780  FC 21 00 2A */	fadd f1, f1, f0
lbl_803FDA04:
/* 803FDA04 003F3784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FDA08 003F3788  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 803FDA0C 003F378C  7C 08 03 A6 */	mtlr r0
/* 803FDA10 003F3790  38 21 00 20 */	addi r1, r1, 0x20
/* 803FDA14 003F3794  4E 80 00 20 */	blr 

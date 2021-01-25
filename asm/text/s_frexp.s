.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global frexp
frexp:
/* 804006F0 003F6470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804006F4 003F6474  38 80 00 00 */	li r4, 0
/* 804006F8 003F6478  3C 00 7F F0 */	lis r0, 0x7ff0
/* 804006FC 003F647C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80400700 003F6480  80 A1 00 08 */	lwz r5, 8(r1)
/* 80400704 003F6484  90 83 00 00 */	stw r4, 0(r3)
/* 80400708 003F6488  54 A4 00 7E */	clrlwi r4, r5, 1
/* 8040070C 003F648C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80400710 003F6490  7C 04 00 00 */	cmpw r4, r0
/* 80400714 003F6494  40 80 00 5C */	bge lbl_80400770
/* 80400718 003F6498  7C 80 33 79 */	or. r0, r4, r6
/* 8040071C 003F649C  40 82 00 08 */	bne lbl_80400724
/* 80400720 003F64A0  48 00 00 50 */	b lbl_80400770
lbl_80400724:
/* 80400724 003F64A4  3C 00 00 10 */	lis r0, 0x10
/* 80400728 003F64A8  7C 04 00 00 */	cmpw r4, r0
/* 8040072C 003F64AC  40 80 00 20 */	bge lbl_8040074C
/* 80400730 003F64B0  C8 02 BD A8 */	lfd f0, lbl_805A50C8-_SDA2_BASE_(r2)
/* 80400734 003F64B4  38 00 FF CA */	li r0, -54
/* 80400738 003F64B8  90 03 00 00 */	stw r0, 0(r3)
/* 8040073C 003F64BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80400740 003F64C0  D8 21 00 08 */	stfd f1, 8(r1)
/* 80400744 003F64C4  80 A1 00 08 */	lwz r5, 8(r1)
/* 80400748 003F64C8  54 A4 00 7E */	clrlwi r4, r5, 1
lbl_8040074C:
/* 8040074C 003F64CC  54 A0 03 00 */	rlwinm r0, r5, 0, 0xc, 0
/* 80400750 003F64D0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80400754 003F64D4  7C 84 A6 70 */	srawi r4, r4, 0x14
/* 80400758 003F64D8  64 00 3F E0 */	oris r0, r0, 0x3fe0
/* 8040075C 003F64DC  90 01 00 08 */	stw r0, 8(r1)
/* 80400760 003F64E0  7C 84 2A 14 */	add r4, r4, r5
/* 80400764 003F64E4  38 04 FC 02 */	addi r0, r4, -1022
/* 80400768 003F64E8  90 03 00 00 */	stw r0, 0(r3)
/* 8040076C 003F64EC  C8 21 00 08 */	lfd f1, 8(r1)
lbl_80400770:
/* 80400770 003F64F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80400774 003F64F4  4E 80 00 20 */	blr 


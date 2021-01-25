.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMath_atan2fApproximation
hkMath_atan2fApproximation:
/* 802820A4 00277E24  FC A0 0A 10 */	fabs f5, f1
/* 802820A8 00277E28  FC C0 12 10 */	fabs f6, f2
/* 802820AC 00277E2C  FC A0 28 18 */	frsp f5, f5
/* 802820B0 00277E30  FC C0 30 18 */	frsp f6, f6
/* 802820B4 00277E34  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 802820B8 00277E38  4C 40 13 82 */	cror 2, 0, 2
/* 802820BC 00277E3C  40 82 00 30 */	bne lbl_802820EC
/* 802820C0 00277E40  C0 02 A9 B0 */	lfs f0, lbl_805A3CD0-_SDA2_BASE_(r2)
/* 802820C4 00277E44  C0 62 A9 B4 */	lfs f3, lbl_805A3CD4-_SDA2_BASE_(r2)
/* 802820C8 00277E48  EC 86 00 2A */	fadds f4, f6, f0
/* 802820CC 00277E4C  C0 02 A9 B8 */	lfs f0, lbl_805A3CD8-_SDA2_BASE_(r2)
/* 802820D0 00277E50  EC 85 20 24 */	fdivs f4, f5, f4
/* 802820D4 00277E54  EC 63 01 32 */	fmuls f3, f3, f4
/* 802820D8 00277E58  EC 00 01 32 */	fmuls f0, f0, f4
/* 802820DC 00277E5C  EC 64 20 FA */	fmadds f3, f4, f3, f4
/* 802820E0 00277E60  EC 04 00 32 */	fmuls f0, f4, f0
/* 802820E4 00277E64  EC 64 18 3A */	fmadds f3, f4, f0, f3
/* 802820E8 00277E68  48 00 00 34 */	b lbl_8028211C
lbl_802820EC:
/* 802820EC 00277E6C  C0 02 A9 B0 */	lfs f0, lbl_805A3CD0-_SDA2_BASE_(r2)
/* 802820F0 00277E70  C0 82 A9 B4 */	lfs f4, lbl_805A3CD4-_SDA2_BASE_(r2)
/* 802820F4 00277E74  EC A5 00 2A */	fadds f5, f5, f0
/* 802820F8 00277E78  C0 62 A9 B8 */	lfs f3, lbl_805A3CD8-_SDA2_BASE_(r2)
/* 802820FC 00277E7C  C0 02 A9 BC */	lfs f0, lbl_805A3CDC-_SDA2_BASE_(r2)
/* 80282100 00277E80  EC A6 28 24 */	fdivs f5, f6, f5
/* 80282104 00277E84  EC 84 01 72 */	fmuls f4, f4, f5
/* 80282108 00277E88  EC 63 01 72 */	fmuls f3, f3, f5
/* 8028210C 00277E8C  EC 85 29 3A */	fmadds f4, f5, f4, f5
/* 80282110 00277E90  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80282114 00277E94  EC 85 20 FA */	fmadds f4, f5, f3, f4
/* 80282118 00277E98  EC 60 20 28 */	fsubs f3, f0, f4
lbl_8028211C:
/* 8028211C 00277E9C  C0 02 A9 C4 */	lfs f0, lbl_805A3CE4-_SDA2_BASE_(r2)
/* 80282120 00277EA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80282124 00277EA4  40 80 00 0C */	bge lbl_80282130
/* 80282128 00277EA8  C0 02 A9 C0 */	lfs f0, lbl_805A3CE0-_SDA2_BASE_(r2)
/* 8028212C 00277EAC  EC 60 18 28 */	fsubs f3, f0, f3
lbl_80282130:
/* 80282130 00277EB0  C0 02 A9 C4 */	lfs f0, lbl_805A3CE4-_SDA2_BASE_(r2)
/* 80282134 00277EB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80282138 00277EB8  40 80 00 08 */	bge lbl_80282140
/* 8028213C 00277EBC  FC 60 18 50 */	fneg f3, f3
lbl_80282140:
/* 80282140 00277EC0  FC 20 18 90 */	fmr f1, f3
/* 80282144 00277EC4  4E 80 00 20 */	blr 

.global hkMath$7hkFloatToInt
hkMath$7hkFloatToInt:
/* 80282148 00277EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028214C 00277ECC  3C E0 FF 80 */	lis r7, 0xff80
/* 80282150 00277ED0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80282154 00277ED4  80 81 00 08 */	lwz r4, 8(r1)
/* 80282158 00277ED8  54 83 4E 3E */	rlwinm r3, r4, 9, 0x18, 0x1f
/* 8028215C 00277EDC  54 85 00 7E */	clrlwi r5, r4, 1
/* 80282160 00277EE0  39 03 FF 6A */	addi r8, r3, -150
/* 80282164 00277EE4  38 C3 FF 81 */	addi r6, r3, -127
/* 80282168 00277EE8  38 65 FF FF */	addi r3, r5, -1
/* 8028216C 00277EEC  21 26 00 17 */	subfic r9, r6, 0x17
/* 80282170 00277EF0  38 08 FF FF */	addi r0, r8, -1
/* 80282174 00277EF4  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 80282178 00277EF8  70 A0 00 17 */	andi. r0, r5, 0x17
/* 8028217C 00277EFC  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 80282180 00277F00  7D 29 28 38 */	and r9, r9, r5
/* 80282184 00277F04  7C A5 28 F8 */	nor r5, r5, r5
/* 80282188 00277F08  7C 83 18 78 */	andc r3, r4, r3
/* 8028218C 00277F0C  7C 09 00 50 */	subf r0, r9, r0
/* 80282190 00277F10  7D 08 28 38 */	and r8, r8, r5
/* 80282194 00277F14  7C E7 06 30 */	sraw r7, r7, r0
/* 80282198 00277F18  54 60 02 7E */	clrlwi r0, r3, 9
/* 8028219C 00277F1C  54 63 00 00 */	rlwinm r3, r3, 0, 0, 0
/* 802821A0 00277F20  7C E7 2B 78 */	or r7, r7, r5
/* 802821A4 00277F24  64 00 00 80 */	oris r0, r0, 0x80
/* 802821A8 00277F28  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 802821AC 00277F2C  7C 05 38 38 */	and r5, r0, r7
/* 802821B0 00277F30  54 A4 08 3C */	slwi r4, r5, 1
/* 802821B4 00277F34  7C C0 FE 70 */	srawi r0, r6, 0x1f
/* 802821B8 00277F38  38 84 FF FF */	addi r4, r4, -1
/* 802821BC 00277F3C  7C 84 1B 78 */	or r4, r4, r3
/* 802821C0 00277F40  7C 65 20 50 */	subf r3, r5, r4
/* 802821C4 00277F44  38 63 00 01 */	addi r3, r3, 1
/* 802821C8 00277F48  7C 60 00 78 */	andc r0, r3, r0
/* 802821CC 00277F4C  7C 00 4E 30 */	sraw r0, r0, r9
/* 802821D0 00277F50  7C 03 40 30 */	slw r3, r0, r8
/* 802821D4 00277F54  38 21 00 10 */	addi r1, r1, 0x10
/* 802821D8 00277F58  4E 80 00 20 */	blr 


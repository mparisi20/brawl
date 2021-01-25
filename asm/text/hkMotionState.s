.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMotionState$7initMotionState
hkMotionState$7initMotionState:
/* 80281FB0 00277D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281FB4 00277D34  7C 08 02 A6 */	mflr r0
/* 80281FB8 00277D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281FBC 00277D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80281FC0 00277D40  7C BF 2B 78 */	mr r31, r5
/* 80281FC4 00277D44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80281FC8 00277D48  7C 9E 23 78 */	mr r30, r4
/* 80281FCC 00277D4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80281FD0 00277D50  7C 7D 1B 78 */	mr r29, r3
/* 80281FD4 00277D54  38 63 00 40 */	addi r3, r3, 0x40
/* 80281FD8 00277D58  48 00 3C F5 */	bl hkSweptTransform$7initSweptTransform
/* 80281FDC 00277D5C  7F A3 EB 78 */	mr r3, r29
/* 80281FE0 00277D60  7F E4 FB 78 */	mr r4, r31
/* 80281FE4 00277D64  48 00 3A 89 */	bl hkRotation$7set
/* 80281FE8 00277D68  C0 22 A9 A8 */	lfs f1, lbl_805A3CC8-_SDA2_BASE_(r2)
/* 80281FEC 00277D6C  C0 BE 00 00 */	lfs f5, 0(r30)
/* 80281FF0 00277D70  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80281FF4 00277D74  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80281FF8 00277D78  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80281FFC 00277D7C  C0 02 A9 AC */	lfs f0, lbl_805A3CCC-_SDA2_BASE_(r2)
/* 80282000 00277D80  D0 BD 00 30 */	stfs f5, 0x30(r29)
/* 80282004 00277D84  D0 9D 00 34 */	stfs f4, 0x34(r29)
/* 80282008 00277D88  D0 7D 00 38 */	stfs f3, 0x38(r29)
/* 8028200C 00277D8C  D0 5D 00 3C */	stfs f2, 0x3c(r29)
/* 80282010 00277D90  D0 3D 00 9C */	stfs f1, 0x9c(r29)
/* 80282014 00277D94  D0 3D 00 98 */	stfs f1, 0x98(r29)
/* 80282018 00277D98  D0 3D 00 94 */	stfs f1, 0x94(r29)
/* 8028201C 00277D9C  D0 3D 00 90 */	stfs f1, 0x90(r29)
/* 80282020 00277DA0  D0 1D 00 A0 */	stfs f0, 0xa0(r29)
/* 80282024 00277DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80282028 00277DA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028202C 00277DAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80282030 00277DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80282034 00277DB4  7C 08 03 A6 */	mtlr r0
/* 80282038 00277DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8028203C 00277DBC  4E 80 00 20 */	blr 

.global __sinit_$3hkMotionStateClass_cpp
__sinit_$3hkMotionStateClass_cpp:
/* 80282040 00277DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80282044 00277DC4  7C 08 02 A6 */	mflr r0
/* 80282048 00277DC8  3C A0 80 41 */	lis r5, lbl_8040F790@ha
/* 8028204C 00277DCC  3C 60 80 53 */	lis r3, lbl_805324D0@ha
/* 80282050 00277DD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80282054 00277DD4  38 A5 F7 90 */	addi r5, r5, lbl_8040F790@l
/* 80282058 00277DD8  3C 80 80 41 */	lis r4, lbl_8040F858@ha
/* 8028205C 00277DDC  38 00 00 00 */	li r0, 0
/* 80282060 00277DE0  90 A1 00 08 */	stw r5, 8(r1)
/* 80282064 00277DE4  38 A0 00 0A */	li r5, 0xa
/* 80282068 00277DE8  38 63 24 D0 */	addi r3, r3, lbl_805324D0@l
/* 8028206C 00277DEC  38 84 F8 58 */	addi r4, r4, lbl_8040F858@l
/* 80282070 00277DF0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80282074 00277DF4  38 A0 00 00 */	li r5, 0
/* 80282078 00277DF8  38 C0 00 C0 */	li r6, 0xc0
/* 8028207C 00277DFC  38 E0 00 00 */	li r7, 0
/* 80282080 00277E00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80282084 00277E04  39 00 00 00 */	li r8, 0
/* 80282088 00277E08  39 20 00 00 */	li r9, 0
/* 8028208C 00277E0C  39 40 00 00 */	li r10, 0
/* 80282090 00277E10  4B FF A7 79 */	bl hkClass$7__ct
/* 80282094 00277E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80282098 00277E18  7C 08 03 A6 */	mtlr r0
/* 8028209C 00277E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802820A0 00277E20  4E 80 00 20 */	blr 

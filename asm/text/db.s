.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DBInit
DBInit:
/* 801E75A8 001DD328  3C 80 80 00 */	lis r4, 0x80000040@ha
/* 801E75AC 001DD32C  3C 60 80 1E */	lis r3, __DBExceptionDestination@ha
/* 801E75B0 001DD330  38 A4 00 40 */	addi r5, r4, 0x80000040@l
/* 801E75B4 001DD334  38 00 00 01 */	li r0, 1
/* 801E75B8 001DD338  38 63 76 18 */	addi r3, r3, __DBExceptionDestination@l
/* 801E75BC 001DD33C  90 AD C3 78 */	stw r5, lbl_805A0798-_SDA_BASE_(r13)
/* 801E75C0 001DD340  3C 63 80 00 */	addis r3, r3, 0x8000
/* 801E75C4 001DD344  90 64 00 48 */	stw r3, 0x48(r4)
/* 801E75C8 001DD348  90 0D C3 7C */	stw r0, lbl_805A079C-_SDA_BASE_(r13)
/* 801E75CC 001DD34C  4E 80 00 20 */	blr 

.global __DBExceptionDestinationAux
__DBExceptionDestinationAux:
/* 801E75D0 001DD350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E75D4 001DD354  7C 08 02 A6 */	mflr r0
/* 801E75D8 001DD358  3C 60 80 47 */	lis r3, lbl_80474F58@ha
/* 801E75DC 001DD35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E75E0 001DD360  38 63 4F 58 */	addi r3, r3, lbl_80474F58@l
/* 801E75E4 001DD364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E75E8 001DD368  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 801E75EC 001DD36C  3F E4 80 00 */	addis r31, r4, 0x8000
/* 801E75F0 001DD370  4C C6 31 82 */	crclr 6
/* 801E75F4 001DD374  4B FF 10 0D */	bl OSReport
/* 801E75F8 001DD378  7F E3 FB 78 */	mr r3, r31
/* 801E75FC 001DD37C  4B FF 0C D9 */	bl OSDumpContext
/* 801E7600 001DD380  4B FE DA A9 */	bl PPCHalt
/* 801E7604 001DD384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E7608 001DD388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E760C 001DD38C  7C 08 03 A6 */	mtlr r0
/* 801E7610 001DD390  38 21 00 10 */	addi r1, r1, 0x10
/* 801E7614 001DD394  4E 80 00 20 */	blr 

.global __DBExceptionDestination
__DBExceptionDestination:
/* 801E7618 001DD398  7C 60 00 A6 */	mfmsr r3
/* 801E761C 001DD39C  60 63 00 30 */	ori r3, r3, 0x30
/* 801E7620 001DD3A0  7C 60 01 24 */	mtmsr r3
/* 801E7624 001DD3A4  4B FF FF AC */	b __DBExceptionDestinationAux

.global __DBIsExceptionMarked
__DBIsExceptionMarked:
/* 801E7628 001DD3A8  80 8D C3 78 */	lwz r4, lbl_805A0798-_SDA_BASE_(r13)
/* 801E762C 001DD3AC  38 00 00 01 */	li r0, 1
/* 801E7630 001DD3B0  7C 00 18 30 */	slw r0, r0, r3
/* 801E7634 001DD3B4  80 64 00 04 */	lwz r3, 4(r4)
/* 801E7638 001DD3B8  7C 63 00 38 */	and r3, r3, r0
/* 801E763C 001DD3BC  4E 80 00 20 */	blr 

.global DBPrintf
DBPrintf:
/* 801E7640 001DD3C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801E7644 001DD3C4  40 86 00 24 */	bne cr1, lbl_801E7668
/* 801E7648 001DD3C8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 801E764C 001DD3CC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 801E7650 001DD3D0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 801E7654 001DD3D4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 801E7658 001DD3D8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 801E765C 001DD3DC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 801E7660 001DD3E0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 801E7664 001DD3E4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_801E7668:
/* 801E7668 001DD3E8  90 61 00 08 */	stw r3, 8(r1)
/* 801E766C 001DD3EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 801E7670 001DD3F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801E7674 001DD3F4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801E7678 001DD3F8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 801E767C 001DD3FC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801E7680 001DD400  91 21 00 20 */	stw r9, 0x20(r1)
/* 801E7684 001DD404  91 41 00 24 */	stw r10, 0x24(r1)
/* 801E7688 001DD408  38 21 00 70 */	addi r1, r1, 0x70
/* 801E768C 001DD40C  4E 80 00 20 */	blr 

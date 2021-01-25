.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __OSReboot
__OSReboot:
/* 801DEF64 001D4CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DEF68 001D4CE8  7C 08 02 A6 */	mflr r0
/* 801DEF6C 001D4CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DEF70 001D4CF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DEF74 001D4CF4  7C 9F 23 78 */	mr r31, r4
/* 801DEF78 001D4CF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DEF7C 001D4CFC  7C 7E 1B 78 */	mr r30, r3
/* 801DEF80 001D4D00  4B FF DF 91 */	bl OSDisableInterrupts
/* 801DEF84 001D4D04  3C 60 81 28 */	lis r3, 0x8128
/* 801DEF88 001D4D08  4B FF 81 FD */	bl OSSetArenaLo
/* 801DEF8C 001D4D0C  3C 60 81 2F */	lis r3, 0x812f
/* 801DEF90 001D4D10  4B FF 81 DD */	bl OSSetArenaHi
/* 801DEF94 001D4D14  38 00 00 00 */	li r0, 0
/* 801DEF98 001D4D18  3C C0 80 00 */	lis r6, 0x80003194@ha
/* 801DEF9C 001D4D1C  90 01 00 08 */	stw r0, 8(r1)
/* 801DEFA0 001D4D20  7F E3 FB 78 */	mr r3, r31
/* 801DEFA4 001D4D24  67 C4 80 00 */	oris r4, r30, 0x8000
/* 801DEFA8 001D4D28  38 A1 00 08 */	addi r5, r1, 8
/* 801DEFAC 001D4D2C  80 06 31 94 */	lwz r0, 0x80003194@l(r6)
/* 801DEFB0 001D4D30  90 0D C2 78 */	stw r0, lbl_805A0698-_SDA_BASE_(r13)
/* 801DEFB4 001D4D34  4B FF BD 71 */	bl __OSBootDol
/* 801DEFB8 001D4D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DEFBC 001D4D3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DEFC0 001D4D40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DEFC4 001D4D44  7C 08 03 A6 */	mtlr r0
/* 801DEFC8 001D4D48  38 21 00 20 */	addi r1, r1, 0x20
/* 801DEFCC 001D4D4C  4E 80 00 20 */	blr 

.global OSGetSaveRegion
OSGetSaveRegion:
/* 801DEFD0 001D4D50  80 0D C2 B8 */	lwz r0, lbl_805A06D8-_SDA_BASE_(r13)
/* 801DEFD4 001D4D54  90 03 00 00 */	stw r0, 0(r3)
/* 801DEFD8 001D4D58  80 0D C2 BC */	lwz r0, lbl_805A06DC-_SDA_BASE_(r13)
/* 801DEFDC 001D4D5C  90 04 00 00 */	stw r0, 0(r4)
/* 801DEFE0 001D4D60  4E 80 00 20 */	blr 


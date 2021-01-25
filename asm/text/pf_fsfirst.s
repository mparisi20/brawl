.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_fsfirst
VFipf2_fsfirst:
/* 803C2C2C 003B89AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C2C30 003B89B0  7C 08 02 A6 */	mflr r0
/* 803C2C34 003B89B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C2C38 003B89B8  7C 60 1B 78 */	mr r0, r3
/* 803C2C3C 003B89BC  38 61 00 08 */	addi r3, r1, 8
/* 803C2C40 003B89C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C2C44 003B89C4  7C BF 2B 78 */	mr r31, r5
/* 803C2C48 003B89C8  38 A0 00 01 */	li r5, 1
/* 803C2C4C 003B89CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C2C50 003B89D0  7C 9E 23 78 */	mr r30, r4
/* 803C2C54 003B89D4  7C 04 03 78 */	mr r4, r0
/* 803C2C58 003B89D8  4B FE 6F 5D */	bl VFiPFSTR_InitStr
/* 803C2C5C 003B89DC  2C 03 00 00 */	cmpwi r3, 0
/* 803C2C60 003B89E0  40 82 00 18 */	bne lbl_803C2C78
/* 803C2C64 003B89E4  7F C4 F3 78 */	mr r4, r30
/* 803C2C68 003B89E8  7F E5 FB 78 */	mr r5, r31
/* 803C2C6C 003B89EC  38 61 00 08 */	addi r3, r1, 8
/* 803C2C70 003B89F0  4B FE EE C5 */	bl VFiPFDIR_fsfirst
/* 803C2C74 003B89F4  48 00 00 10 */	b lbl_803C2C84
lbl_803C2C78:
/* 803C2C78 003B89F8  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803C2C7C 003B89FC  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803C2C80 003B8A00  90 64 00 1C */	stw r3, 0x1c(r4)
lbl_803C2C84:
/* 803C2C84 003B8A04  4B FF FC 89 */	bl VFiPFAPI_convertReturnValue
/* 803C2C88 003B8A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C2C8C 003B8A0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C2C90 003B8A10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C2C94 003B8A14  7C 08 03 A6 */	mtlr r0
/* 803C2C98 003B8A18  38 21 00 20 */	addi r1, r1, 0x20
/* 803C2C9C 003B8A1C  4E 80 00 20 */	blr 


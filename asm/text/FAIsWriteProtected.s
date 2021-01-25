.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAIsWriteProtected
FAIsWriteProtected:
/* 803EC094 003E1E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC098 003E1E18  7C 08 02 A6 */	mflr r0
/* 803EC09C 003E1E1C  7C 63 07 74 */	extsb r3, r3
/* 803EC0A0 003E1E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC0A4 003E1E24  4B FF F8 11 */	bl pf2_iswriteprotected
/* 803EC0A8 003E1E28  2C 03 00 00 */	cmpwi r3, 0
/* 803EC0AC 003E1E2C  41 82 00 10 */	beq lbl_803EC0BC
/* 803EC0B0 003E1E30  2C 03 00 01 */	cmpwi r3, 1
/* 803EC0B4 003E1E34  41 82 00 08 */	beq lbl_803EC0BC
/* 803EC0B8 003E1E38  38 60 FF FF */	li r3, -1
lbl_803EC0BC:
/* 803EC0BC 003E1E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC0C0 003E1E40  7C 08 03 A6 */	mtlr r0
/* 803EC0C4 003E1E44  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC0C8 003E1E48  4E 80 00 20 */	blr 


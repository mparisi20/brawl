.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global MuMsgRegData$7getYesString
MuMsgRegData$7getYesString:
/* 800BFCA4 000B5A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFCA8 000B5A28  7C 08 02 A6 */	mflr r0
/* 800BFCAC 000B5A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFCB0 000B5A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BFCB4 000B5A34  7C 7F 1B 78 */	mr r31, r3
/* 800BFCB8 000B5A38  80 63 00 40 */	lwz r3, 0x40(r3)
/* 800BFCBC 000B5A3C  4B FF 65 05 */	bl isNodeAnimFinished__8MuObjectFv
/* 800BFCC0 000B5A40  2C 03 00 00 */	cmpwi r3, 0
/* 800BFCC4 000B5A44  41 82 00 0C */	beq lbl_800BFCD0
/* 800BFCC8 000B5A48  38 60 00 01 */	li r3, 1
/* 800BFCCC 000B5A4C  48 00 00 08 */	b lbl_800BFCD4
lbl_800BFCD0:
/* 800BFCD0 000B5A50  80 7F 01 04 */	lwz r3, 0x104(r31)
lbl_800BFCD4:
/* 800BFCD4 000B5A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFCD8 000B5A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BFCDC 000B5A5C  7C 08 03 A6 */	mtlr r0
/* 800BFCE0 000B5A60  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFCE4 000B5A64  4E 80 00 20 */	blr 


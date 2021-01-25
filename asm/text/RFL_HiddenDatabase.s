.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global RFLiInitHiddenDatabase
RFLiInitHiddenDatabase:
/* 803D4848 003CA5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D484C 003CA5CC  7C 08 02 A6 */	mflr r0
/* 803D4850 003CA5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D4854 003CA5D4  4B FF 8A 71 */	bl RFLiGetHDBManager
/* 803D4858 003CA5D8  2C 03 00 00 */	cmpwi r3, 0
/* 803D485C 003CA5DC  41 82 00 10 */	beq lbl_803D486C
/* 803D4860 003CA5E0  38 00 00 00 */	li r0, 0
/* 803D4864 003CA5E4  90 03 00 34 */	stw r0, 0x34(r3)
/* 803D4868 003CA5E8  90 03 00 38 */	stw r0, 0x38(r3)
lbl_803D486C:
/* 803D486C 003CA5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D4870 003CA5F0  7C 08 03 A6 */	mtlr r0
/* 803D4874 003CA5F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D4878 003CA5F8  4E 80 00 20 */	blr 


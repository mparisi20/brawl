.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ifSimpleResultTask$7resolveTargetBonus
ifSimpleResultTask$7resolveTargetBonus:
/* 800F17CC 000E754C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F17D0 000E7550  7C 08 02 A6 */	mflr r0
/* 800F17D4 000E7554  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F17D8 000E7558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F17DC 000E755C  7C 7F 1B 78 */	mr r31, r3
/* 800F17E0 000E7560  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 800F17E4 000E7564  48 00 10 B1 */	bl IfSnapSaveTask$7getState
/* 800F17E8 000E7568  2C 03 00 00 */	cmpwi r3, 0
/* 800F17EC 000E756C  41 82 00 1C */	beq lbl_800F1808
/* 800F17F0 000E7570  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 800F17F4 000E7574  4B F3 C7 41 */	bl gfTask$7exit
/* 800F17F8 000E7578  38 00 00 00 */	li r0, 0
/* 800F17FC 000E757C  38 60 00 01 */	li r3, 1
/* 800F1800 000E7580  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 800F1804 000E7584  48 00 00 08 */	b lbl_800F180C
lbl_800F1808:
/* 800F1808 000E7588  80 7F 00 34 */	lwz r3, 0x34(r31)
lbl_800F180C:
/* 800F180C 000E758C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F1810 000E7590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F1814 000E7594  7C 08 03 A6 */	mtlr r0
/* 800F1818 000E7598  38 21 00 10 */	addi r1, r1, 0x10
/* 800F181C 000E759C  4E 80 00 20 */	blr 


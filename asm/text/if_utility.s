.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global utility12StandardTaskFv$7preLoad
utility12StandardTaskFv$7preLoad:
/* 800F77B4 000ED534  38 C0 00 06 */	li r6, 6
/* 800F77B8 000ED538  48 00 00 08 */	b lbl_800F77C0

.global utility12StandardTaskCFv$7checkLoadFinish
utility12StandardTaskCFv$7checkLoadFinish:
/* 800F77BC 000ED53C  38 C0 00 00 */	li r6, 0

.global lbl_800F77C0
lbl_800F77C0:
/* 800F77C0 000ED540  34 06 00 02 */	addic. r0, r6, 2
/* 800F77C4 000ED544  40 82 00 38 */	bne lbl_800F77FC
/* 800F77C8 000ED548  80 A3 00 9C */	lwz r5, 0x9c(r3)
/* 800F77CC 000ED54C  38 61 00 08 */	addi r3, r1, 8
/* 800F77D0 000ED550  38 8D 9F C0 */	addi r4, r13, lbl_8059E3E0-_SDA_BASE_
/* 800F77D4 000ED554  80 A5 00 08 */	lwz r5, 8(r5)
/* 800F77D8 000ED558  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 800F77DC 000ED55C  2C 00 00 00 */	cmpwi r0, 0
/* 800F77E0 000ED560  41 82 00 0C */	beq lbl_800F77EC
/* 800F77E4 000ED564  7C A5 02 14 */	add r5, r5, r0
/* 800F77E8 000ED568  48 00 00 08 */	b lbl_800F77F0
lbl_800F77EC:
/* 800F77EC 000ED56C  38 A0 00 00 */	li r5, 0
lbl_800F77F0:
/* 800F77F0 000ED570  4C C6 31 82 */	crclr 6
/* 800F77F4 000ED574  48 30 12 09 */	bl sprintf
/* 800F77F8 000ED578  48 00 00 38 */	b lbl_800F7830
lbl_800F77FC:
/* 800F77FC 000ED57C  80 A3 00 9C */	lwz r5, 0x9c(r3)
/* 800F7800 000ED580  38 61 00 08 */	addi r3, r1, 8
/* 800F7804 000ED584  38 8D 9F C8 */	addi r4, r13, lbl_8059E3E8-_SDA_BASE_
/* 800F7808 000ED588  80 A5 00 08 */	lwz r5, 8(r5)
/* 800F780C 000ED58C  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 800F7810 000ED590  2C 00 00 00 */	cmpwi r0, 0
/* 800F7814 000ED594  41 82 00 0C */	beq lbl_800F7820
/* 800F7818 000ED598  7C A5 02 14 */	add r5, r5, r0
/* 800F781C 000ED59C  48 00 00 08 */	b lbl_800F7824
lbl_800F7820:
/* 800F7820 000ED5A0  38 A0 00 00 */	li r5, 0
lbl_800F7824:
/* 800F7824 000ED5A4  38 C6 00 02 */	addi r6, r6, 2
/* 800F7828 000ED5A8  4C C6 31 82 */	crclr 6
/* 800F782C 000ED5AC  48 30 11 D1 */	bl sprintf
lbl_800F7830:
/* 800F7830 000ED5B0  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 800F7834 000ED5B4  38 81 00 08 */	addi r4, r1, 8
/* 800F7838 000ED5B8  4B FB DB 15 */	bl MuObject$7changeAnimN
/* 800F783C 000ED5BC  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 800F7840 000ED5C0  38 80 00 01 */	li r4, 1
/* 800F7844 000ED5C4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800F7848 000ED5C8  4B F3 0A 31 */	bl gfModelAnimation$7setLoop
/* 800F784C 000ED5CC  81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 800F7850 000ED5D0  7F E3 FB 78 */	mr r3, r31
/* 800F7854 000ED5D4  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 800F7858 000ED5D8  7D 89 03 A6 */	mtctr r12
/* 800F785C 000ED5DC  4E 80 04 21 */	bctrl 
/* 800F7860 000ED5E0  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 800F7864 000ED5E4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800F7868 000ED5E8  4B F3 0D E9 */	bl gfModelAnimation$7setUpdateRate
/* 800F786C 000ED5EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800F7870 000ED5F0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800F7874 000ED5F4  7C 08 03 A6 */	mtlr r0
/* 800F7878 000ED5F8  38 21 00 50 */	addi r1, r1, 0x50
/* 800F787C 000ED5FC  4E 80 00 20 */	blr 


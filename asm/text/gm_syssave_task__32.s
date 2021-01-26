.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gmSysSaveTask$7processDefault
gmSysSaveTask$7processDefault:
/* 8005C534 000522B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005C538 000522B8  7C 08 02 A6 */	mflr r0
/* 8005C53C 000522BC  2C 03 00 00 */	cmpwi r3, 0
/* 8005C540 000522C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005C544 000522C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005C548 000522C8  7C 7F 1B 78 */	mr r31, r3
/* 8005C54C 000522CC  41 82 00 10 */	beq lbl_8005C55C
/* 8005C550 000522D0  2C 04 00 00 */	cmpwi r4, 0
/* 8005C554 000522D4  40 81 00 08 */	ble lbl_8005C55C
/* 8005C558 000522D8  4B FB 03 71 */	bl __dl
lbl_8005C55C:
/* 8005C55C 000522DC  7F E3 FB 78 */	mr r3, r31
/* 8005C560 000522E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005C564 000522E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005C568 000522E8  7C 08 03 A6 */	mtlr r0
/* 8005C56C 000522EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8005C570 000522F0  4E 80 00 20 */	blr 

.global __sinit_$3ef_manager_cpp
__sinit_$3ef_manager_cpp:
/* 8005C574 000522F4  3C 80 80 42 */	lis r4, lbl_80420BA0@ha
/* 8005C578 000522F8  3C 60 80 43 */	lis r3, lbl_8042EBE0@ha
/* 8005C57C 000522FC  38 CD BC E8 */	addi r6, r13, lbl_805A0108-_SDA_BASE_
/* 8005C580 00052300  38 00 00 00 */	li r0, 0
/* 8005C584 00052304  38 84 0B A0 */	addi r4, r4, lbl_80420BA0@l
/* 8005C588 00052308  3C A0 80 49 */	lis r5, lbl_80497800@ha
/* 8005C58C 0005230C  90 86 00 04 */	stw r4, 4(r6)
/* 8005C590 00052310  38 63 EB E0 */	addi r3, r3, lbl_8042EBE0@l
/* 8005C594 00052314  3C 80 80 06 */	lis r4, efPostRenderCallback$7__dt@ha
/* 8005C598 00052318  38 A5 78 00 */	addi r5, r5, lbl_80497800@l
/* 8005C59C 0005231C  90 66 00 04 */	stw r3, 4(r6)
/* 8005C5A0 00052320  38 84 C5 B0 */	addi r4, r4, efPostRenderCallback$7__dt@l
/* 8005C5A4 00052324  38 6D BC E8 */	addi r3, r13, lbl_805A0108-_SDA_BASE_
/* 8005C5A8 00052328  90 0D BC E8 */	stw r0, lbl_805A0108-_SDA_BASE_(r13)
/* 8005C5AC 0005232C  48 39 41 78 */	b __register_global_object_tmp


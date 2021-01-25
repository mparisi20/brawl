.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail4TaskFv$7__dt
nw4r3snd6detail4TaskFv$7__dt:
/* 801CF9D4 001C5754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CF9D8 001C5758  7C 08 02 A6 */	mflr r0
/* 801CF9DC 001C575C  2C 03 00 00 */	cmpwi r3, 0
/* 801CF9E0 001C5760  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CF9E4 001C5764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CF9E8 001C5768  7C 7F 1B 78 */	mr r31, r3
/* 801CF9EC 001C576C  41 82 00 10 */	beq lbl_801CF9FC
/* 801CF9F0 001C5770  2C 04 00 00 */	cmpwi r4, 0
/* 801CF9F4 001C5774  40 81 00 08 */	ble lbl_801CF9FC
/* 801CF9F8 001C5778  4B E3 CE D1 */	bl __dl
lbl_801CF9FC:
/* 801CF9FC 001C577C  7F E3 FB 78 */	mr r3, r31
/* 801CFA00 001C5780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CFA04 001C5784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CFA08 001C5788  7C 08 03 A6 */	mtlr r0
/* 801CFA0C 001C578C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CFA10 001C5790  4E 80 00 20 */	blr 


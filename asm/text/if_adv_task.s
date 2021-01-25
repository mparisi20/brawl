.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ifAdvTask$7create
ifAdvTask$7create:
/* 80107EC4 000FDC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80107EC8 000FDC48  7C 08 02 A6 */	mflr r0
/* 80107ECC 000FDC4C  38 60 00 44 */	li r3, 0x44
/* 80107ED0 000FDC50  38 80 00 28 */	li r4, 0x28
/* 80107ED4 000FDC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80107ED8 000FDC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80107EDC 000FDC5C  4B F0 49 DD */	bl srHeapType$7__nw
/* 80107EE0 000FDC60  2C 03 00 00 */	cmpwi r3, 0
/* 80107EE4 000FDC64  7C 7F 1B 78 */	mr r31, r3
/* 80107EE8 000FDC68  41 82 00 34 */	beq lbl_80107F1C
/* 80107EEC 000FDC6C  3C 80 80 46 */	lis r4, lbl_8045D070@ha
/* 80107EF0 000FDC70  38 A0 00 12 */	li r5, 0x12
/* 80107EF4 000FDC74  38 84 D0 70 */	addi r4, r4, lbl_8045D070@l
/* 80107EF8 000FDC78  38 C0 00 0E */	li r6, 0xe
/* 80107EFC 000FDC7C  38 E0 00 06 */	li r7, 6
/* 80107F00 000FDC80  39 00 00 01 */	li r8, 1
/* 80107F04 000FDC84  4B F2 59 B5 */	bl gfTask$7__ct
/* 80107F08 000FDC88  3C 60 80 46 */	lis r3, lbl_8045D07C@ha
/* 80107F0C 000FDC8C  38 00 00 00 */	li r0, 0
/* 80107F10 000FDC90  38 63 D0 7C */	addi r3, r3, lbl_8045D07C@l
/* 80107F14 000FDC94  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80107F18 000FDC98  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_80107F1C:
/* 80107F1C 000FDC9C  81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 80107F20 000FDCA0  7F E3 FB 78 */	mr r3, r31
/* 80107F24 000FDCA4  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 80107F28 000FDCA8  7D 89 03 A6 */	mtctr r12
/* 80107F2C 000FDCAC  4E 80 04 21 */	bctrl 
/* 80107F30 000FDCB0  88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 80107F34 000FDCB4  7F E3 FB 78 */	mr r3, r31
/* 80107F38 000FDCB8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80107F3C 000FDCBC  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 80107F40 000FDCC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80107F44 000FDCC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80107F48 000FDCC8  7C 08 03 A6 */	mtlr r0
/* 80107F4C 000FDCCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80107F50 000FDCD0  4E 80 00 20 */	blr 

.global ifAdvTask$7processDefault
ifAdvTask$7processDefault:
/* 80107F54 000FDCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80107F58 000FDCD8  7C 08 02 A6 */	mflr r0
/* 80107F5C 000FDCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80107F60 000FDCE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80107F64 000FDCE4  7C 7F 1B 78 */	mr r31, r3
/* 80107F68 000FDCE8  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80107F6C 000FDCEC  2C 00 00 00 */	cmpwi r0, 0
/* 80107F70 000FDCF0  40 82 00 20 */	bne lbl_80107F90
/* 80107F74 000FDCF4  80 6D BF 00 */	lwz r3, lbl_805A0320-_SDA_BASE_(r13)
/* 80107F78 000FDCF8  4B FF F3 51 */	bl IfAdvMngr$7main
/* 80107F7C 000FDCFC  2C 03 00 00 */	cmpwi r3, 0
/* 80107F80 000FDD00  41 82 00 10 */	beq lbl_80107F90
/* 80107F84 000FDD04  2C 03 00 01 */	cmpwi r3, 1
/* 80107F88 000FDD08  41 82 00 08 */	beq lbl_80107F90
/* 80107F8C 000FDD0C  90 7F 00 40 */	stw r3, 0x40(r31)
lbl_80107F90:
/* 80107F90 000FDD10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80107F94 000FDD14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80107F98 000FDD18  7C 08 03 A6 */	mtlr r0
/* 80107F9C 000FDD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80107FA0 000FDD20  4E 80 00 20 */	blr 

.global ifAdvTask$7renderPre
ifAdvTask$7renderPre:
/* 80107FA4 000FDD24  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80107FA8 000FDD28  2C 00 00 00 */	cmpwi r0, 0
/* 80107FAC 000FDD2C  4C 82 00 20 */	bnelr 
/* 80107FB0 000FDD30  80 6D BF 00 */	lwz r3, lbl_805A0320-_SDA_BASE_(r13)
/* 80107FB4 000FDD34  4B FF F7 B0 */	b IfAdvMngr$7renderPre
/* 80107FB8 000FDD38  4E 80 00 20 */	blr 

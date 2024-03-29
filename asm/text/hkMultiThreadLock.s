.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMultiThreadLock$7staticInit
hkMultiThreadLock$7staticInit:
/* 80281E48 00277BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281E4C 00277BCC  7C 08 02 A6 */	mflr r0
/* 80281E50 00277BD0  38 80 00 01 */	li r4, 1
/* 80281E54 00277BD4  38 A0 00 13 */	li r5, 0x13
/* 80281E58 00277BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281E5C 00277BDC  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80281E60 00277BE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80281E64 00277BE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80281E68 00277BE8  7D 89 03 A6 */	mtctr r12
/* 80281E6C 00277BEC  4E 80 04 21 */	bctrl 
/* 80281E70 00277BF0  2C 03 00 00 */	cmpwi r3, 0
/* 80281E74 00277BF4  90 6D CA D0 */	stw r3, lbl_805A0EF0-_SDA_BASE_(r13)
/* 80281E78 00277BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281E7C 00277BFC  7C 08 03 A6 */	mtlr r0
/* 80281E80 00277C00  38 21 00 10 */	addi r1, r1, 0x10
/* 80281E84 00277C04  4E 80 00 20 */	blr 

.global hkMultiThreadLock$7staticQuit
hkMultiThreadLock$7staticQuit:
/* 80281E88 00277C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281E8C 00277C0C  7C 08 02 A6 */	mflr r0
/* 80281E90 00277C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281E94 00277C14  80 8D CA D0 */	lwz r4, lbl_805A0EF0-_SDA_BASE_(r13)
/* 80281E98 00277C18  2C 04 00 00 */	cmpwi r4, 0
/* 80281E9C 00277C1C  41 82 00 2C */	beq lbl_80281EC8
/* 80281EA0 00277C20  41 82 00 20 */	beq lbl_80281EC0
/* 80281EA4 00277C24  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80281EA8 00277C28  38 A0 00 01 */	li r5, 1
/* 80281EAC 00277C2C  38 C0 00 13 */	li r6, 0x13
/* 80281EB0 00277C30  81 83 00 00 */	lwz r12, 0(r3)
/* 80281EB4 00277C34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80281EB8 00277C38  7D 89 03 A6 */	mtctr r12
/* 80281EBC 00277C3C  4E 80 04 21 */	bctrl 
lbl_80281EC0:
/* 80281EC0 00277C40  38 00 00 00 */	li r0, 0
/* 80281EC4 00277C44  90 0D CA D0 */	stw r0, lbl_805A0EF0-_SDA_BASE_(r13)
lbl_80281EC8:
/* 80281EC8 00277C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281ECC 00277C4C  7C 08 03 A6 */	mtlr r0
/* 80281ED0 00277C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80281ED4 00277C54  4E 80 00 20 */	blr 

.global hkMultiThreadLock$7disableChecks
hkMultiThreadLock$7disableChecks:
/* 80281ED8 00277C58  38 00 FF D1 */	li r0, -47
/* 80281EDC 00277C5C  90 03 00 00 */	stw r0, 0(r3)
/* 80281EE0 00277C60  4E 80 00 20 */	blr 

.global __sinit_$3hkMultiThreadLockClass_cpp
__sinit_$3hkMultiThreadLockClass_cpp:
/* 80281EE4 00277C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281EE8 00277C68  7C 08 02 A6 */	mflr r0
/* 80281EEC 00277C6C  3C A0 80 41 */	lis r5, lbl_8040F668@ha
/* 80281EF0 00277C70  3C 60 80 53 */	lis r3, lbl_80532480@ha
/* 80281EF4 00277C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281EF8 00277C78  38 A5 F6 68 */	addi r5, r5, lbl_8040F668@l
/* 80281EFC 00277C7C  3C 80 80 41 */	lis r4, lbl_8040F6A4@ha
/* 80281F00 00277C80  3D 20 80 41 */	lis r9, lbl_8040F628@ha
/* 80281F04 00277C84  90 A1 00 08 */	stw r5, 8(r1)
/* 80281F08 00277C88  38 A0 00 03 */	li r5, 3
/* 80281F0C 00277C8C  38 00 00 00 */	li r0, 0
/* 80281F10 00277C90  38 63 24 80 */	addi r3, r3, lbl_80532480@l
/* 80281F14 00277C94  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80281F18 00277C98  38 84 F6 A4 */	addi r4, r4, lbl_8040F6A4@l
/* 80281F1C 00277C9C  39 29 F6 28 */	addi r9, r9, lbl_8040F628@l
/* 80281F20 00277CA0  38 A0 00 00 */	li r5, 0
/* 80281F24 00277CA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80281F28 00277CA8  38 C0 00 08 */	li r6, 8
/* 80281F2C 00277CAC  38 E0 00 00 */	li r7, 0
/* 80281F30 00277CB0  39 00 00 00 */	li r8, 0
/* 80281F34 00277CB4  39 40 00 02 */	li r10, 2
/* 80281F38 00277CB8  4B FF A8 D1 */	bl hkClass$7__ct
/* 80281F3C 00277CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281F40 00277CC0  7C 08 03 A6 */	mtlr r0
/* 80281F44 00277CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80281F48 00277CC8  4E 80 00 20 */	blr 

.global __sinit_$3hkAabbClass_cpp
__sinit_$3hkAabbClass_cpp:
/* 80281F4C 00277CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281F50 00277CD0  7C 08 02 A6 */	mflr r0
/* 80281F54 00277CD4  3C A0 80 41 */	lis r5, lbl_8040F6B8@ha
/* 80281F58 00277CD8  3C 60 80 53 */	lis r3, lbl_805324A8@ha
/* 80281F5C 00277CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281F60 00277CE0  38 A5 F6 B8 */	addi r5, r5, lbl_8040F6B8@l
/* 80281F64 00277CE4  3C 80 80 41 */	lis r4, lbl_8040F6E0@ha
/* 80281F68 00277CE8  38 00 00 00 */	li r0, 0
/* 80281F6C 00277CEC  90 A1 00 08 */	stw r5, 8(r1)
/* 80281F70 00277CF0  38 A0 00 02 */	li r5, 2
/* 80281F74 00277CF4  38 63 24 A8 */	addi r3, r3, lbl_805324A8@l
/* 80281F78 00277CF8  38 84 F6 E0 */	addi r4, r4, lbl_8040F6E0@l
/* 80281F7C 00277CFC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80281F80 00277D00  38 A0 00 00 */	li r5, 0
/* 80281F84 00277D04  38 C0 00 20 */	li r6, 0x20
/* 80281F88 00277D08  38 E0 00 00 */	li r7, 0
/* 80281F8C 00277D0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80281F90 00277D10  39 00 00 00 */	li r8, 0
/* 80281F94 00277D14  39 20 00 00 */	li r9, 0
/* 80281F98 00277D18  39 40 00 00 */	li r10, 0
/* 80281F9C 00277D1C  4B FF A8 6D */	bl hkClass$7__ct
/* 80281FA0 00277D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281FA4 00277D24  7C 08 03 A6 */	mtlr r0
/* 80281FA8 00277D28  38 21 00 20 */	addi r1, r1, 0x20
/* 80281FAC 00277D2C  4E 80 00 20 */	blr 


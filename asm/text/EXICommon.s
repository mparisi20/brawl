.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global EXIWriteReg
EXIWriteReg:
/* 801E5DBC 001DBB3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E5DC0 001DBB40  7C 08 02 A6 */	mflr r0
/* 801E5DC4 001DBB44  2C 07 00 02 */	cmpwi r7, 2
/* 801E5DC8 001DBB48  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E5DCC 001DBB4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E5DD0 001DBB50  7C 7F 1B 78 */	mr r31, r3
/* 801E5DD4 001DBB54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E5DD8 001DBB58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E5DDC 001DBB5C  7C 9D 23 78 */	mr r29, r4
/* 801E5DE0 001DBB60  90 A1 00 08 */	stw r5, 8(r1)
/* 801E5DE4 001DBB64  41 82 00 24 */	beq lbl_801E5E08
/* 801E5DE8 001DBB68  40 80 00 34 */	bge lbl_801E5E1C
/* 801E5DEC 001DBB6C  2C 07 00 01 */	cmpwi r7, 1
/* 801E5DF0 001DBB70  40 80 00 08 */	bge lbl_801E5DF8
/* 801E5DF4 001DBB74  48 00 00 28 */	b lbl_801E5E1C
lbl_801E5DF8:
/* 801E5DF8 001DBB78  88 06 00 00 */	lbz r0, 0(r6)
/* 801E5DFC 001DBB7C  54 00 C0 0E */	slwi r0, r0, 0x18
/* 801E5E00 001DBB80  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E5E04 001DBB84  48 00 00 34 */	b lbl_801E5E38
lbl_801E5E08:
/* 801E5E08 001DBB88  A0 66 00 00 */	lhz r3, 0(r6)
/* 801E5E0C 001DBB8C  54 60 42 1E */	rlwinm r0, r3, 8, 8, 0xf
/* 801E5E10 001DBB90  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 801E5E14 001DBB94  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E5E18 001DBB98  48 00 00 20 */	b lbl_801E5E38
lbl_801E5E1C:
/* 801E5E1C 001DBB9C  80 86 00 00 */	lwz r4, 0(r6)
/* 801E5E20 001DBBA0  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 801E5E24 001DBBA4  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 801E5E28 001DBBA8  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 801E5E2C 001DBBAC  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 801E5E30 001DBBB0  7C 60 03 78 */	or r0, r3, r0
/* 801E5E34 001DBBB4  90 01 00 0C */	stw r0, 0xc(r1)
lbl_801E5E38:
/* 801E5E38 001DBBB8  7F E3 FB 78 */	mr r3, r31
/* 801E5E3C 001DBBBC  7F A4 EB 78 */	mr r4, r29
/* 801E5E40 001DBBC0  38 A0 00 00 */	li r5, 0
/* 801E5E44 001DBBC4  4B FF F6 9D */	bl EXILock
/* 801E5E48 001DBBC8  7C 60 00 34 */	cntlzw r0, r3
/* 801E5E4C 001DBBCC  54 1E D9 7F */	rlwinm. r30, r0, 0x1b, 5, 0x1f
/* 801E5E50 001DBBD0  41 82 00 0C */	beq lbl_801E5E5C
/* 801E5E54 001DBBD4  38 60 00 00 */	li r3, 0
/* 801E5E58 001DBBD8  48 00 00 D4 */	b lbl_801E5F2C
lbl_801E5E5C:
/* 801E5E5C 001DBBDC  7F E3 FB 78 */	mr r3, r31
/* 801E5E60 001DBBE0  7F A4 EB 78 */	mr r4, r29
/* 801E5E64 001DBBE4  38 A0 00 04 */	li r5, 4
/* 801E5E68 001DBBE8  4B FF EE E5 */	bl EXISelect
/* 801E5E6C 001DBBEC  7C 60 00 34 */	cntlzw r0, r3
/* 801E5E70 001DBBF0  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5E74 001DBBF4  7F DE 03 79 */	or. r30, r30, r0
/* 801E5E78 001DBBF8  41 82 00 14 */	beq lbl_801E5E8C
/* 801E5E7C 001DBBFC  7F E3 FB 78 */	mr r3, r31
/* 801E5E80 001DBC00  4B FF F7 5D */	bl EXIUnlock
/* 801E5E84 001DBC04  38 60 00 00 */	li r3, 0
/* 801E5E88 001DBC08  48 00 00 A4 */	b lbl_801E5F2C
lbl_801E5E8C:
/* 801E5E8C 001DBC0C  7F E3 FB 78 */	mr r3, r31
/* 801E5E90 001DBC10  38 81 00 08 */	addi r4, r1, 8
/* 801E5E94 001DBC14  38 A0 00 04 */	li r5, 4
/* 801E5E98 001DBC18  38 C0 00 01 */	li r6, 1
/* 801E5E9C 001DBC1C  38 E0 00 00 */	li r7, 0
/* 801E5EA0 001DBC20  4B FF E4 45 */	bl EXIImm
/* 801E5EA4 001DBC24  7C 60 00 34 */	cntlzw r0, r3
/* 801E5EA8 001DBC28  7F E3 FB 78 */	mr r3, r31
/* 801E5EAC 001DBC2C  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5EB0 001DBC30  7F DE 03 78 */	or r30, r30, r0
/* 801E5EB4 001DBC34  4B FF E8 49 */	bl EXISync
/* 801E5EB8 001DBC38  7C 60 00 34 */	cntlzw r0, r3
/* 801E5EBC 001DBC3C  7F E3 FB 78 */	mr r3, r31
/* 801E5EC0 001DBC40  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5EC4 001DBC44  38 81 00 0C */	addi r4, r1, 0xc
/* 801E5EC8 001DBC48  7F DE 03 78 */	or r30, r30, r0
/* 801E5ECC 001DBC4C  38 A0 00 04 */	li r5, 4
/* 801E5ED0 001DBC50  38 C0 00 01 */	li r6, 1
/* 801E5ED4 001DBC54  38 E0 00 00 */	li r7, 0
/* 801E5ED8 001DBC58  4B FF E4 0D */	bl EXIImm
/* 801E5EDC 001DBC5C  7C 60 00 34 */	cntlzw r0, r3
/* 801E5EE0 001DBC60  7F E3 FB 78 */	mr r3, r31
/* 801E5EE4 001DBC64  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5EE8 001DBC68  7F DE 03 78 */	or r30, r30, r0
/* 801E5EEC 001DBC6C  4B FF E8 11 */	bl EXISync
/* 801E5EF0 001DBC70  7C 60 00 34 */	cntlzw r0, r3
/* 801E5EF4 001DBC74  7F E3 FB 78 */	mr r3, r31
/* 801E5EF8 001DBC78  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5EFC 001DBC7C  7F DE 03 78 */	or r30, r30, r0
/* 801E5F00 001DBC80  4B FF EF 7D */	bl EXIDeselect
/* 801E5F04 001DBC84  7C 60 00 34 */	cntlzw r0, r3
/* 801E5F08 001DBC88  7F E3 FB 78 */	mr r3, r31
/* 801E5F0C 001DBC8C  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5F10 001DBC90  7F DE 03 78 */	or r30, r30, r0
/* 801E5F14 001DBC94  4B FF F6 C9 */	bl EXIUnlock
/* 801E5F18 001DBC98  7C 60 00 34 */	cntlzw r0, r3
/* 801E5F1C 001DBC9C  54 00 D9 7E */	srwi r0, r0, 5
/* 801E5F20 001DBCA0  7F DE 03 78 */	or r30, r30, r0
/* 801E5F24 001DBCA4  7F C0 00 34 */	cntlzw r0, r30
/* 801E5F28 001DBCA8  54 03 D9 7E */	srwi r3, r0, 5
lbl_801E5F2C:
/* 801E5F2C 001DBCAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E5F30 001DBCB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E5F34 001DBCB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E5F38 001DBCB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E5F3C 001DBCBC  7C 08 03 A6 */	mtlr r0
/* 801E5F40 001DBCC0  38 21 00 20 */	addi r1, r1, 0x20
/* 801E5F44 001DBCC4  4E 80 00 20 */	blr 


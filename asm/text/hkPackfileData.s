.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkPackfileData$7__ct
hkPackfileData$7__ct:
/* 80331DD8 00327B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80331DDC 00327B5C  7C 08 02 A6 */	mflr r0
/* 80331DE0 00327B60  3C 80 80 49 */	lis r4, lbl_80488F30@ha
/* 80331DE4 00327B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80331DE8 00327B68  38 00 00 01 */	li r0, 1
/* 80331DEC 00327B6C  38 84 8F 30 */	addi r4, r4, lbl_80488F30@l
/* 80331DF0 00327B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80331DF4 00327B74  3B E0 00 00 */	li r31, 0
/* 80331DF8 00327B78  93 C1 00 08 */	stw r30, 8(r1)
/* 80331DFC 00327B7C  7C 7E 1B 78 */	mr r30, r3
/* 80331E00 00327B80  B0 03 00 06 */	sth r0, 6(r3)
/* 80331E04 00327B84  90 83 00 00 */	stw r4, 0(r3)
/* 80331E08 00327B88  93 E3 00 08 */	stw r31, 8(r3)
/* 80331E0C 00327B8C  38 63 00 0C */	addi r3, r3, 0xc
/* 80331E10 00327B90  4B F4 B1 A9 */	bl hkPointerMapBase$0Ul$1$7__ct
/* 80331E14 00327B94  3C 00 80 00 */	lis r0, 0x8000
/* 80331E18 00327B98  93 FE 00 18 */	stw r31, 0x18(r30)
/* 80331E1C 00327B9C  7F C3 F3 78 */	mr r3, r30
/* 80331E20 00327BA0  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 80331E24 00327BA4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80331E28 00327BA8  93 FE 00 24 */	stw r31, 0x24(r30)
/* 80331E2C 00327BAC  93 FE 00 28 */	stw r31, 0x28(r30)
/* 80331E30 00327BB0  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80331E34 00327BB4  93 FE 00 30 */	stw r31, 0x30(r30)
/* 80331E38 00327BB8  93 FE 00 34 */	stw r31, 0x34(r30)
/* 80331E3C 00327BBC  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80331E40 00327BC0  93 FE 00 3C */	stw r31, 0x3c(r30)
/* 80331E44 00327BC4  93 FE 00 40 */	stw r31, 0x40(r30)
/* 80331E48 00327BC8  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80331E4C 00327BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80331E50 00327BD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80331E54 00327BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80331E58 00327BD8  7C 08 03 A6 */	mtlr r0
/* 80331E5C 00327BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80331E60 00327BE0  4E 80 00 20 */	blr 

.global hkPackfileData$7callDestructors
hkPackfileData$7callDestructors:
/* 80331E64 00327BE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80331E68 00327BE8  7C 08 02 A6 */	mflr r0
/* 80331E6C 00327BEC  38 A0 00 00 */	li r5, 0
/* 80331E70 00327BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80331E74 00327BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80331E78 00327BF8  3B E0 00 00 */	li r31, 0
/* 80331E7C 00327BFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80331E80 00327C00  7C 7E 1B 78 */	mr r30, r3
/* 80331E84 00327C04  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80331E88 00327C08  38 06 00 01 */	addi r0, r6, 1
/* 80331E8C 00327C0C  7C 09 03 A6 */	mtctr r0
/* 80331E90 00327C10  2C 06 00 00 */	cmpwi r6, 0
/* 80331E94 00327C14  41 80 00 90 */	blt lbl_80331F24
lbl_80331E98:
/* 80331E98 00327C18  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80331E9C 00327C1C  7C 04 28 2E */	lwzx r0, r4, r5
/* 80331EA0 00327C20  2C 00 00 00 */	cmpwi r0, 0
/* 80331EA4 00327C24  40 82 00 80 */	bne lbl_80331F24
/* 80331EA8 00327C28  38 A5 00 04 */	addi r5, r5, 4
/* 80331EAC 00327C2C  3B FF 00 01 */	addi r31, r31, 1
/* 80331EB0 00327C30  42 00 FF E8 */	bdnz lbl_80331E98
/* 80331EB4 00327C34  48 00 00 70 */	b lbl_80331F24
lbl_80331EB8:
/* 80331EB8 00327C38  7C 1F 32 14 */	add r0, r31, r6
/* 80331EBC 00327C3C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80331EC0 00327C40  54 00 10 3A */	slwi r0, r0, 2
/* 80331EC4 00327C44  7C 64 02 14 */	add r3, r4, r0
/* 80331EC8 00327C48  80 63 00 04 */	lwz r3, 4(r3)
/* 80331ECC 00327C4C  81 83 00 08 */	lwz r12, 8(r3)
/* 80331ED0 00327C50  2C 0C 00 00 */	cmpwi r12, 0
/* 80331ED4 00327C54  41 82 00 14 */	beq lbl_80331EE8
/* 80331ED8 00327C58  57 E0 10 3A */	slwi r0, r31, 2
/* 80331EDC 00327C5C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80331EE0 00327C60  7D 89 03 A6 */	mtctr r12
/* 80331EE4 00327C64  4E 80 04 21 */	bctrl 
lbl_80331EE8:
/* 80331EE8 00327C68  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 80331EEC 00327C6C  3B FF 00 01 */	addi r31, r31, 1
/* 80331EF0 00327C70  57 E4 10 3A */	slwi r4, r31, 2
/* 80331EF4 00327C74  38 06 00 01 */	addi r0, r6, 1
/* 80331EF8 00327C78  7C 1F 00 50 */	subf r0, r31, r0
/* 80331EFC 00327C7C  7C 09 03 A6 */	mtctr r0
/* 80331F00 00327C80  7C 1F 30 00 */	cmpw r31, r6
/* 80331F04 00327C84  41 81 00 20 */	bgt lbl_80331F24
lbl_80331F08:
/* 80331F08 00327C88  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80331F0C 00327C8C  7C 03 20 2E */	lwzx r0, r3, r4
/* 80331F10 00327C90  2C 00 00 00 */	cmpwi r0, 0
/* 80331F14 00327C94  40 82 00 10 */	bne lbl_80331F24
/* 80331F18 00327C98  38 84 00 04 */	addi r4, r4, 4
/* 80331F1C 00327C9C  3B FF 00 01 */	addi r31, r31, 1
/* 80331F20 00327CA0  42 00 FF E8 */	bdnz lbl_80331F08
lbl_80331F24:
/* 80331F24 00327CA4  7C C4 FE 70 */	srawi r4, r6, 0x1f
/* 80331F28 00327CA8  57 E3 0F FE */	srwi r3, r31, 0x1f
/* 80331F2C 00327CAC  7C 1F 30 10 */	subfc r0, r31, r6
/* 80331F30 00327CB0  7C 04 19 14 */	adde r0, r4, r3
/* 80331F34 00327CB4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80331F38 00327CB8  7C 00 07 75 */	extsb. r0, r0
/* 80331F3C 00327CBC  40 82 FF 7C */	bne lbl_80331EB8
/* 80331F40 00327CC0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80331F44 00327CC4  4B F4 B4 F5 */	bl hkPointerMapBase$0Ul$1$7clear
/* 80331F48 00327CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80331F4C 00327CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80331F50 00327CD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80331F54 00327CD4  7C 08 03 A6 */	mtlr r0
/* 80331F58 00327CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80331F5C 00327CDC  4E 80 00 20 */	blr 

.global hkPackfileData$7__dt
hkPackfileData$7__dt:
/* 80331F60 00327CE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80331F64 00327CE4  7C 08 02 A6 */	mflr r0
/* 80331F68 00327CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80331F6C 00327CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80331F70 00327CF0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80331F74 00327CF4  7C 7E 1B 78 */	mr r30, r3
/* 80331F78 00327CF8  7C 9F 23 78 */	mr r31, r4
/* 80331F7C 00327CFC  41 82 01 A8 */	beq lbl_80332124
/* 80331F80 00327D00  3D 80 80 49 */	lis r12, lbl_80488F30@ha
/* 80331F84 00327D04  39 8C 8F 30 */	addi r12, r12, lbl_80488F30@l
/* 80331F88 00327D08  91 83 00 00 */	stw r12, 0(r3)
/* 80331F8C 00327D0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80331F90 00327D10  7D 89 03 A6 */	mtctr r12
/* 80331F94 00327D14  4E 80 04 21 */	bctrl 
/* 80331F98 00327D18  83 6D CA 98 */	lwz r27, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80331F9C 00327D1C  3B 80 00 00 */	li r28, 0
/* 80331FA0 00327D20  3B A0 00 00 */	li r29, 0
/* 80331FA4 00327D24  48 00 00 28 */	b lbl_80331FCC
lbl_80331FA8:
/* 80331FA8 00327D28  81 9B 00 00 */	lwz r12, 0(r27)
/* 80331FAC 00327D2C  7F 63 DB 78 */	mr r3, r27
/* 80331FB0 00327D30  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80331FB4 00327D34  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80331FB8 00327D38  7C 84 E8 2E */	lwzx r4, r4, r29
/* 80331FBC 00327D3C  7D 89 03 A6 */	mtctr r12
/* 80331FC0 00327D40  4E 80 04 21 */	bctrl 
/* 80331FC4 00327D44  3B BD 00 04 */	addi r29, r29, 4
/* 80331FC8 00327D48  3B 9C 00 01 */	addi r28, r28, 1
lbl_80331FCC:
/* 80331FCC 00327D4C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80331FD0 00327D50  7C 1C 00 00 */	cmpw r28, r0
/* 80331FD4 00327D54  41 80 FF D4 */	blt lbl_80331FA8
/* 80331FD8 00327D58  3B 80 00 00 */	li r28, 0
/* 80331FDC 00327D5C  3B A0 00 00 */	li r29, 0
/* 80331FE0 00327D60  48 00 00 34 */	b lbl_80332014
lbl_80331FE4:
/* 80331FE4 00327D64  81 9B 00 00 */	lwz r12, 0(r27)
/* 80331FE8 00327D68  7F 63 DB 78 */	mr r3, r27
/* 80331FEC 00327D6C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80331FF0 00327D70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80331FF4 00327D74  7C C0 EA 14 */	add r6, r0, r29
/* 80331FF8 00327D78  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80331FFC 00327D7C  80 A6 00 04 */	lwz r5, 4(r6)
/* 80332000 00327D80  80 C6 00 08 */	lwz r6, 8(r6)
/* 80332004 00327D84  7D 89 03 A6 */	mtctr r12
/* 80332008 00327D88  4E 80 04 21 */	bctrl 
/* 8033200C 00327D8C  3B BD 00 0C */	addi r29, r29, 0xc
/* 80332010 00327D90  3B 9C 00 01 */	addi r28, r28, 1
lbl_80332014:
/* 80332014 00327D94  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80332018 00327D98  7C 1C 00 00 */	cmpw r28, r0
/* 8033201C 00327D9C  41 80 FF C8 */	blt lbl_80331FE4
/* 80332020 00327DA0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80332024 00327DA4  80 9E 00 08 */	lwz r4, 8(r30)
/* 80332028 00327DA8  81 83 00 00 */	lwz r12, 0(r3)
/* 8033202C 00327DAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80332030 00327DB0  7D 89 03 A6 */	mtctr r12
/* 80332034 00327DB4  4E 80 04 21 */	bctrl 
/* 80332038 00327DB8  34 1E 00 3C */	addic. r0, r30, 0x3c
/* 8033203C 00327DBC  41 82 00 28 */	beq lbl_80332064
/* 80332040 00327DC0  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80332044 00327DC4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80332048 00327DC8  40 82 00 1C */	bne lbl_80332064
/* 8033204C 00327DCC  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80332050 00327DD0  38 C0 00 15 */	li r6, 0x15
/* 80332054 00327DD4  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80332058 00327DD8  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 8033205C 00327DDC  54 05 18 38 */	slwi r5, r0, 3
/* 80332060 00327DE0  4B F4 CA 5D */	bl hkThreadMemory$7deallocateChunk
lbl_80332064:
/* 80332064 00327DE4  34 1E 00 30 */	addic. r0, r30, 0x30
/* 80332068 00327DE8  41 82 00 28 */	beq lbl_80332090
/* 8033206C 00327DEC  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80332070 00327DF0  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80332074 00327DF4  40 82 00 1C */	bne lbl_80332090
/* 80332078 00327DF8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8033207C 00327DFC  38 C0 00 15 */	li r6, 0x15
/* 80332080 00327E00  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80332084 00327E04  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 80332088 00327E08  54 05 18 38 */	slwi r5, r0, 3
/* 8033208C 00327E0C  4B F4 CA 31 */	bl hkThreadMemory$7deallocateChunk
lbl_80332090:
/* 80332090 00327E10  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80332094 00327E14  41 82 00 2C */	beq lbl_803320C0
/* 80332098 00327E18  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8033209C 00327E1C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803320A0 00327E20  40 82 00 20 */	bne lbl_803320C0
/* 803320A4 00327E24  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 803320A8 00327E28  38 C0 00 15 */	li r6, 0x15
/* 803320AC 00327E2C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 803320B0 00327E30  54 00 00 BE */	clrlwi r0, r0, 2
/* 803320B4 00327E34  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 803320B8 00327E38  1C A0 00 0C */	mulli r5, r0, 0xc
/* 803320BC 00327E3C  4B F4 CA 01 */	bl hkThreadMemory$7deallocateChunk
lbl_803320C0:
/* 803320C0 00327E40  34 1E 00 18 */	addic. r0, r30, 0x18
/* 803320C4 00327E44  41 82 00 28 */	beq lbl_803320EC
/* 803320C8 00327E48  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 803320CC 00327E4C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803320D0 00327E50  40 82 00 1C */	bne lbl_803320EC
/* 803320D4 00327E54  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 803320D8 00327E58  38 C0 00 15 */	li r6, 0x15
/* 803320DC 00327E5C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 803320E0 00327E60  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 803320E4 00327E64  54 05 10 3A */	slwi r5, r0, 2
/* 803320E8 00327E68  4B F4 C9 D5 */	bl hkThreadMemory$7deallocateChunk
lbl_803320EC:
/* 803320EC 00327E6C  34 7E 00 0C */	addic. r3, r30, 0xc
/* 803320F0 00327E70  41 82 00 0C */	beq lbl_803320FC
/* 803320F4 00327E74  38 80 FF FF */	li r4, -1
/* 803320F8 00327E78  4B F4 AF 25 */	bl hkPointerMapBase$0Ul$1$7__dt
lbl_803320FC:
/* 803320FC 00327E7C  2C 1F 00 00 */	cmpwi r31, 0
/* 80332100 00327E80  40 81 00 24 */	ble lbl_80332124
/* 80332104 00327E84  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80332108 00327E88  7F C4 F3 78 */	mr r4, r30
/* 8033210C 00327E8C  A0 BE 00 04 */	lhz r5, 4(r30)
/* 80332110 00327E90  38 C0 00 13 */	li r6, 0x13
/* 80332114 00327E94  81 83 00 00 */	lwz r12, 0(r3)
/* 80332118 00327E98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8033211C 00327E9C  7D 89 03 A6 */	mtctr r12
/* 80332120 00327EA0  4E 80 04 21 */	bctrl 
lbl_80332124:
/* 80332124 00327EA4  7F C3 F3 78 */	mr r3, r30
/* 80332128 00327EA8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8033212C 00327EAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80332130 00327EB0  7C 08 03 A6 */	mtlr r0
/* 80332134 00327EB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80332138 00327EB8  4E 80 00 20 */	blr 

.global hkPackfileData$7getImportsExports
hkPackfileData$7getImportsExports:
/* 8033213C 00327EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80332140 00327EC0  7C 08 02 A6 */	mflr r0
/* 80332144 00327EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80332148 00327EC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033214C 00327ECC  7C BF 2B 78 */	mr r31, r5
/* 80332150 00327ED0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80332154 00327ED4  7C 7E 1B 78 */	mr r30, r3
/* 80332158 00327ED8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033215C 00327EDC  7C 9D 23 78 */	mr r29, r4
/* 80332160 00327EE0  80 C4 00 08 */	lwz r6, 8(r4)
/* 80332164 00327EE4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80332168 00327EE8  54 C6 00 BE */	clrlwi r6, r6, 2
/* 8033216C 00327EEC  7C 06 00 00 */	cmpw r6, r0
/* 80332170 00327EF0  40 80 00 50 */	bge lbl_803321C0
/* 80332174 00327EF4  80 04 00 08 */	lwz r0, 8(r4)
/* 80332178 00327EF8  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8033217C 00327EFC  40 82 00 18 */	bne lbl_80332194
/* 80332180 00327F00  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80332184 00327F04  54 C5 18 38 */	slwi r5, r6, 3
/* 80332188 00327F08  80 84 00 00 */	lwz r4, 0(r4)
/* 8033218C 00327F0C  38 C0 00 15 */	li r6, 0x15
/* 80332190 00327F10  4B F4 C9 2D */	bl hkThreadMemory$7deallocateChunk
lbl_80332194:
/* 80332194 00327F14  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80332198 00327F18  38 A0 00 15 */	li r5, 0x15
/* 8033219C 00327F1C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 803321A0 00327F20  54 04 18 38 */	slwi r4, r0, 3
/* 803321A4 00327F24  4B F4 C8 7D */	bl hkThreadMemory$7allocateChunk
/* 803321A8 00327F28  90 7D 00 00 */	stw r3, 0(r29)
/* 803321AC 00327F2C  80 1D 00 08 */	lwz r0, 8(r29)
/* 803321B0 00327F30  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 803321B4 00327F34  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 803321B8 00327F38  7C 60 03 78 */	or r0, r3, r0
/* 803321BC 00327F3C  90 1D 00 08 */	stw r0, 8(r29)
lbl_803321C0:
/* 803321C0 00327F40  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 803321C4 00327F44  38 A0 00 00 */	li r5, 0
/* 803321C8 00327F48  80 FD 00 00 */	lwz r7, 0(r29)
/* 803321CC 00327F4C  90 9D 00 04 */	stw r4, 4(r29)
/* 803321D0 00327F50  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 803321D4 00327F54  80 DE 00 30 */	lwz r6, 0x30(r30)
/* 803321D8 00327F58  40 85 01 18 */	ble cr1, lbl_803322F0
/* 803321DC 00327F5C  2C 04 00 08 */	cmpwi r4, 8
/* 803321E0 00327F60  39 04 FF F8 */	addi r8, r4, -8
/* 803321E4 00327F64  40 81 00 D4 */	ble lbl_803322B8
/* 803321E8 00327F68  39 20 00 00 */	li r9, 0
/* 803321EC 00327F6C  41 84 00 18 */	blt cr1, lbl_80332204
/* 803321F0 00327F70  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 803321F4 00327F74  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 803321F8 00327F78  7C 04 00 00 */	cmpw r4, r0
/* 803321FC 00327F7C  41 81 00 08 */	bgt lbl_80332204
/* 80332200 00327F80  39 20 00 01 */	li r9, 1
lbl_80332204:
/* 80332204 00327F84  2C 09 00 00 */	cmpwi r9, 0
/* 80332208 00327F88  41 82 00 B0 */	beq lbl_803322B8
/* 8033220C 00327F8C  38 08 00 07 */	addi r0, r8, 7
/* 80332210 00327F90  7C C3 33 78 */	mr r3, r6
/* 80332214 00327F94  54 00 E8 FE */	srwi r0, r0, 3
/* 80332218 00327F98  7C E9 3B 78 */	mr r9, r7
/* 8033221C 00327F9C  7C 09 03 A6 */	mtctr r0
/* 80332220 00327FA0  2C 08 00 00 */	cmpwi r8, 0
/* 80332224 00327FA4  40 81 00 94 */	ble lbl_803322B8
lbl_80332228:
/* 80332228 00327FA8  80 03 00 00 */	lwz r0, 0(r3)
/* 8033222C 00327FAC  38 A5 00 08 */	addi r5, r5, 8
/* 80332230 00327FB0  90 09 00 00 */	stw r0, 0(r9)
/* 80332234 00327FB4  80 03 00 04 */	lwz r0, 4(r3)
/* 80332238 00327FB8  90 09 00 04 */	stw r0, 4(r9)
/* 8033223C 00327FBC  80 03 00 08 */	lwz r0, 8(r3)
/* 80332240 00327FC0  90 09 00 08 */	stw r0, 8(r9)
/* 80332244 00327FC4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80332248 00327FC8  90 09 00 0C */	stw r0, 0xc(r9)
/* 8033224C 00327FCC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80332250 00327FD0  90 09 00 10 */	stw r0, 0x10(r9)
/* 80332254 00327FD4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80332258 00327FD8  90 09 00 14 */	stw r0, 0x14(r9)
/* 8033225C 00327FDC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80332260 00327FE0  90 09 00 18 */	stw r0, 0x18(r9)
/* 80332264 00327FE4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80332268 00327FE8  90 09 00 1C */	stw r0, 0x1c(r9)
/* 8033226C 00327FEC  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80332270 00327FF0  90 09 00 20 */	stw r0, 0x20(r9)
/* 80332274 00327FF4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80332278 00327FF8  90 09 00 24 */	stw r0, 0x24(r9)
/* 8033227C 00327FFC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80332280 00328000  90 09 00 28 */	stw r0, 0x28(r9)
/* 80332284 00328004  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80332288 00328008  90 09 00 2C */	stw r0, 0x2c(r9)
/* 8033228C 0032800C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80332290 00328010  90 09 00 30 */	stw r0, 0x30(r9)
/* 80332294 00328014  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80332298 00328018  90 09 00 34 */	stw r0, 0x34(r9)
/* 8033229C 0032801C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 803322A0 00328020  90 09 00 38 */	stw r0, 0x38(r9)
/* 803322A4 00328024  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 803322A8 00328028  38 63 00 40 */	addi r3, r3, 0x40
/* 803322AC 0032802C  90 09 00 3C */	stw r0, 0x3c(r9)
/* 803322B0 00328030  39 29 00 40 */	addi r9, r9, 0x40
/* 803322B4 00328034  42 00 FF 74 */	bdnz lbl_80332228
lbl_803322B8:
/* 803322B8 00328038  54 A8 18 38 */	slwi r8, r5, 3
/* 803322BC 0032803C  7C 05 20 50 */	subf r0, r5, r4
/* 803322C0 00328040  7C 66 42 14 */	add r3, r6, r8
/* 803322C4 00328044  7C C7 42 14 */	add r6, r7, r8
/* 803322C8 00328048  7C 09 03 A6 */	mtctr r0
/* 803322CC 0032804C  7C 05 20 00 */	cmpw r5, r4
/* 803322D0 00328050  40 80 00 20 */	bge lbl_803322F0
lbl_803322D4:
/* 803322D4 00328054  80 03 00 00 */	lwz r0, 0(r3)
/* 803322D8 00328058  90 06 00 00 */	stw r0, 0(r6)
/* 803322DC 0032805C  80 03 00 04 */	lwz r0, 4(r3)
/* 803322E0 00328060  38 63 00 08 */	addi r3, r3, 8
/* 803322E4 00328064  90 06 00 04 */	stw r0, 4(r6)
/* 803322E8 00328068  38 C6 00 08 */	addi r6, r6, 8
/* 803322EC 0032806C  42 00 FF E8 */	bdnz lbl_803322D4
lbl_803322F0:
/* 803322F0 00328070  80 7F 00 08 */	lwz r3, 8(r31)
/* 803322F4 00328074  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 803322F8 00328078  54 64 00 BE */	clrlwi r4, r3, 2
/* 803322FC 0032807C  7C 04 00 00 */	cmpw r4, r0
/* 80332300 00328080  40 80 00 50 */	bge lbl_80332350
/* 80332304 00328084  80 1F 00 08 */	lwz r0, 8(r31)
/* 80332308 00328088  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8033230C 0032808C  40 82 00 18 */	bne lbl_80332324
/* 80332310 00328090  54 85 18 38 */	slwi r5, r4, 3
/* 80332314 00328094  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80332318 00328098  80 9F 00 00 */	lwz r4, 0(r31)
/* 8033231C 0032809C  38 C0 00 15 */	li r6, 0x15
/* 80332320 003280A0  4B F4 C7 9D */	bl hkThreadMemory$7deallocateChunk
lbl_80332324:
/* 80332324 003280A4  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80332328 003280A8  38 A0 00 15 */	li r5, 0x15
/* 8033232C 003280AC  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80332330 003280B0  54 04 18 38 */	slwi r4, r0, 3
/* 80332334 003280B4  4B F4 C6 ED */	bl hkThreadMemory$7allocateChunk
/* 80332338 003280B8  90 7F 00 00 */	stw r3, 0(r31)
/* 8033233C 003280BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80332340 003280C0  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80332344 003280C4  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 80332348 003280C8  7C 60 03 78 */	or r0, r3, r0
/* 8033234C 003280CC  90 1F 00 08 */	stw r0, 8(r31)
lbl_80332350:
/* 80332350 003280D0  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 80332354 003280D4  38 A0 00 00 */	li r5, 0
/* 80332358 003280D8  80 FF 00 00 */	lwz r7, 0(r31)
/* 8033235C 003280DC  90 9F 00 04 */	stw r4, 4(r31)
/* 80332360 003280E0  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 80332364 003280E4  80 DE 00 3C */	lwz r6, 0x3c(r30)
/* 80332368 003280E8  40 85 01 18 */	ble cr1, lbl_80332480
/* 8033236C 003280EC  2C 04 00 08 */	cmpwi r4, 8
/* 80332370 003280F0  39 04 FF F8 */	addi r8, r4, -8
/* 80332374 003280F4  40 81 00 D4 */	ble lbl_80332448
/* 80332378 003280F8  39 20 00 00 */	li r9, 0
/* 8033237C 003280FC  41 84 00 18 */	blt cr1, lbl_80332394
/* 80332380 00328100  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 80332384 00328104  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 80332388 00328108  7C 04 00 00 */	cmpw r4, r0
/* 8033238C 0032810C  41 81 00 08 */	bgt lbl_80332394
/* 80332390 00328110  39 20 00 01 */	li r9, 1
lbl_80332394:
/* 80332394 00328114  2C 09 00 00 */	cmpwi r9, 0
/* 80332398 00328118  41 82 00 B0 */	beq lbl_80332448
/* 8033239C 0032811C  38 08 00 07 */	addi r0, r8, 7
/* 803323A0 00328120  7C C3 33 78 */	mr r3, r6
/* 803323A4 00328124  54 00 E8 FE */	srwi r0, r0, 3
/* 803323A8 00328128  7C E9 3B 78 */	mr r9, r7
/* 803323AC 0032812C  7C 09 03 A6 */	mtctr r0
/* 803323B0 00328130  2C 08 00 00 */	cmpwi r8, 0
/* 803323B4 00328134  40 81 00 94 */	ble lbl_80332448
lbl_803323B8:
/* 803323B8 00328138  80 03 00 00 */	lwz r0, 0(r3)
/* 803323BC 0032813C  38 A5 00 08 */	addi r5, r5, 8
/* 803323C0 00328140  90 09 00 00 */	stw r0, 0(r9)
/* 803323C4 00328144  80 03 00 04 */	lwz r0, 4(r3)
/* 803323C8 00328148  90 09 00 04 */	stw r0, 4(r9)
/* 803323CC 0032814C  80 03 00 08 */	lwz r0, 8(r3)
/* 803323D0 00328150  90 09 00 08 */	stw r0, 8(r9)
/* 803323D4 00328154  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803323D8 00328158  90 09 00 0C */	stw r0, 0xc(r9)
/* 803323DC 0032815C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803323E0 00328160  90 09 00 10 */	stw r0, 0x10(r9)
/* 803323E4 00328164  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803323E8 00328168  90 09 00 14 */	stw r0, 0x14(r9)
/* 803323EC 0032816C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803323F0 00328170  90 09 00 18 */	stw r0, 0x18(r9)
/* 803323F4 00328174  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803323F8 00328178  90 09 00 1C */	stw r0, 0x1c(r9)
/* 803323FC 0032817C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80332400 00328180  90 09 00 20 */	stw r0, 0x20(r9)
/* 80332404 00328184  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80332408 00328188  90 09 00 24 */	stw r0, 0x24(r9)
/* 8033240C 0032818C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80332410 00328190  90 09 00 28 */	stw r0, 0x28(r9)
/* 80332414 00328194  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80332418 00328198  90 09 00 2C */	stw r0, 0x2c(r9)
/* 8033241C 0032819C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80332420 003281A0  90 09 00 30 */	stw r0, 0x30(r9)
/* 80332424 003281A4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80332428 003281A8  90 09 00 34 */	stw r0, 0x34(r9)
/* 8033242C 003281AC  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80332430 003281B0  90 09 00 38 */	stw r0, 0x38(r9)
/* 80332434 003281B4  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80332438 003281B8  38 63 00 40 */	addi r3, r3, 0x40
/* 8033243C 003281BC  90 09 00 3C */	stw r0, 0x3c(r9)
/* 80332440 003281C0  39 29 00 40 */	addi r9, r9, 0x40
/* 80332444 003281C4  42 00 FF 74 */	bdnz lbl_803323B8
lbl_80332448:
/* 80332448 003281C8  54 A8 18 38 */	slwi r8, r5, 3
/* 8033244C 003281CC  7C 05 20 50 */	subf r0, r5, r4
/* 80332450 003281D0  7C 66 42 14 */	add r3, r6, r8
/* 80332454 003281D4  7C C7 42 14 */	add r6, r7, r8
/* 80332458 003281D8  7C 09 03 A6 */	mtctr r0
/* 8033245C 003281DC  7C 05 20 00 */	cmpw r5, r4
/* 80332460 003281E0  40 80 00 20 */	bge lbl_80332480
lbl_80332464:
/* 80332464 003281E4  80 03 00 00 */	lwz r0, 0(r3)
/* 80332468 003281E8  90 06 00 00 */	stw r0, 0(r6)
/* 8033246C 003281EC  80 03 00 04 */	lwz r0, 4(r3)
/* 80332470 003281F0  38 63 00 08 */	addi r3, r3, 8
/* 80332474 003281F4  90 06 00 04 */	stw r0, 4(r6)
/* 80332478 003281F8  38 C6 00 08 */	addi r6, r6, 8
/* 8033247C 003281FC  42 00 FF E8 */	bdnz lbl_80332464
lbl_80332480:
/* 80332480 00328200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80332484 00328204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80332488 00328208  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033248C 0032820C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80332490 00328210  7C 08 03 A6 */	mtlr r0
/* 80332494 00328214  38 21 00 20 */	addi r1, r1, 0x20
/* 80332498 00328218  4E 80 00 20 */	blr 

.global hkPackfileData$7addExport
hkPackfileData$7addExport:
/* 8033249C 0032821C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803324A0 00328220  7C 08 02 A6 */	mflr r0
/* 803324A4 00328224  90 01 00 24 */	stw r0, 0x24(r1)
/* 803324A8 00328228  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803324AC 0032822C  7C BF 2B 78 */	mr r31, r5
/* 803324B0 00328230  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803324B4 00328234  7C 9E 23 78 */	mr r30, r4
/* 803324B8 00328238  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803324BC 0032823C  7C 7D 1B 78 */	mr r29, r3
/* 803324C0 00328240  80 03 00 38 */	lwz r0, 0x38(r3)
/* 803324C4 00328244  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 803324C8 00328248  54 00 00 BE */	clrlwi r0, r0, 2
/* 803324CC 0032824C  7C 06 00 00 */	cmpw r6, r0
/* 803324D0 00328250  40 82 00 10 */	bne lbl_803324E0
/* 803324D4 00328254  38 80 00 08 */	li r4, 8
/* 803324D8 00328258  38 63 00 30 */	addi r3, r3, 0x30
/* 803324DC 0032825C  4B F4 A9 61 */	bl hkArrayUtil$7_reserveMore
lbl_803324E0:
/* 803324E0 00328260  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 803324E4 00328264  80 BD 00 30 */	lwz r5, 0x30(r29)
/* 803324E8 00328268  38 64 00 01 */	addi r3, r4, 1
/* 803324EC 0032826C  54 80 18 38 */	slwi r0, r4, 3
/* 803324F0 00328270  90 7D 00 34 */	stw r3, 0x34(r29)
/* 803324F4 00328274  7C 65 02 14 */	add r3, r5, r0
/* 803324F8 00328278  7F C5 01 2E */	stwx r30, r5, r0
/* 803324FC 0032827C  93 E3 00 04 */	stw r31, 4(r3)
/* 80332500 00328280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80332504 00328284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80332508 00328288  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033250C 0032828C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80332510 00328290  7C 08 03 A6 */	mtlr r0
/* 80332514 00328294  38 21 00 20 */	addi r1, r1, 0x20
/* 80332518 00328298  4E 80 00 20 */	blr 

.global hkPackfileData$7addImport
hkPackfileData$7addImport:
/* 8033251C 0032829C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80332520 003282A0  7C 08 02 A6 */	mflr r0
/* 80332524 003282A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80332528 003282A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033252C 003282AC  7C BF 2B 78 */	mr r31, r5
/* 80332530 003282B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80332534 003282B4  7C 9E 23 78 */	mr r30, r4
/* 80332538 003282B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033253C 003282BC  7C 7D 1B 78 */	mr r29, r3
/* 80332540 003282C0  80 03 00 44 */	lwz r0, 0x44(r3)
/* 80332544 003282C4  80 C3 00 40 */	lwz r6, 0x40(r3)
/* 80332548 003282C8  54 00 00 BE */	clrlwi r0, r0, 2
/* 8033254C 003282CC  7C 06 00 00 */	cmpw r6, r0
/* 80332550 003282D0  40 82 00 10 */	bne lbl_80332560
/* 80332554 003282D4  38 80 00 08 */	li r4, 8
/* 80332558 003282D8  38 63 00 3C */	addi r3, r3, 0x3c
/* 8033255C 003282DC  4B F4 A8 E1 */	bl hkArrayUtil$7_reserveMore
lbl_80332560:
/* 80332560 003282E0  80 9D 00 40 */	lwz r4, 0x40(r29)
/* 80332564 003282E4  80 BD 00 3C */	lwz r5, 0x3c(r29)
/* 80332568 003282E8  38 64 00 01 */	addi r3, r4, 1
/* 8033256C 003282EC  54 80 18 38 */	slwi r0, r4, 3
/* 80332570 003282F0  90 7D 00 40 */	stw r3, 0x40(r29)
/* 80332574 003282F4  7C 65 02 14 */	add r3, r5, r0
/* 80332578 003282F8  7F C5 01 2E */	stwx r30, r5, r0
/* 8033257C 003282FC  93 E3 00 04 */	stw r31, 4(r3)
/* 80332580 00328300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80332584 00328304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80332588 00328308  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033258C 0032830C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80332590 00328310  7C 08 03 A6 */	mtlr r0
/* 80332594 00328314  38 21 00 20 */	addi r1, r1, 0x20
/* 80332598 00328318  4E 80 00 20 */	blr 


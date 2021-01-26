.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfModuleManager$7setTempolaryLoadHeap
gfModuleManager$7setTempolaryLoadHeap:
/* 80026C78 0001C9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026C7C 0001C9FC  7C 08 02 A6 */	mflr r0
/* 80026C80 0001CA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026C84 0001CA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80026C88 0001CA08  7C 9F 23 78 */	mr r31, r4
/* 80026C8C 0001CA0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80026C90 0001CA10  7C 7E 1B 78 */	mr r30, r3
/* 80026C94 0001CA14  7F E3 FB 78 */	mr r3, r31
/* 80026C98 0001CA18  4B FF DD 35 */	bl gfHeapManager$7getHeap
/* 80026C9C 0001CA1C  90 7E 00 04 */	stw r3, 4(r30)
/* 80026CA0 0001CA20  93 FE 00 00 */	stw r31, 0(r30)
/* 80026CA4 0001CA24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80026CA8 0001CA28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80026CAC 0001CA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026CB0 0001CA30  7C 08 03 A6 */	mtlr r0
/* 80026CB4 0001CA34  38 21 00 10 */	addi r1, r1, 0x10
/* 80026CB8 0001CA38  4E 80 00 20 */	blr 

.global gfModuleManager$7update
gfModuleManager$7update:
/* 80026CBC 0001CA3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026CC0 0001CA40  7C 08 02 A6 */	mflr r0
/* 80026CC4 0001CA44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026CC8 0001CA48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80026CCC 0001CA4C  3B E0 00 00 */	li r31, 0
/* 80026CD0 0001CA50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80026CD4 0001CA54  3B C3 00 08 */	addi r30, r3, 8
/* 80026CD8 0001CA58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80026CDC 0001CA5C  3B A0 00 00 */	li r29, 0
lbl_80026CE0:
/* 80026CE0 0001CA60  88 7E 00 19 */	lbz r3, 0x19(r30)
/* 80026CE4 0001CA64  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80026CE8 0001CA68  41 82 00 EC */	beq lbl_80026DD4
/* 80026CEC 0001CA6C  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80026CF0 0001CA70  40 82 00 E4 */	bne lbl_80026DD4
/* 80026CF4 0001CA74  38 7E 00 14 */	addi r3, r30, 0x14
/* 80026CF8 0001CA78  4B FF B2 41 */	bl gfFileIOHandle$7isReady
/* 80026CFC 0001CA7C  2C 03 00 00 */	cmpwi r3, 0
/* 80026D00 0001CA80  41 82 00 D4 */	beq lbl_80026DD4
/* 80026D04 0001CA84  38 7E 00 14 */	addi r3, r30, 0x14
/* 80026D08 0001CA88  4B FF B2 61 */	bl gfFileIOHandle$7getReturnStatus
/* 80026D0C 0001CA8C  2C 03 00 00 */	cmpwi r3, 0
/* 80026D10 0001CA90  40 82 00 C4 */	bne lbl_80026DD4
/* 80026D14 0001CA94  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80026D18 0001CA98  38 7E 00 14 */	addi r3, r30, 0x14
/* 80026D1C 0001CA9C  60 00 00 20 */	ori r0, r0, 0x20
/* 80026D20 0001CAA0  98 1E 00 19 */	stb r0, 0x19(r30)
/* 80026D24 0001CAA4  4B FF B2 71 */	bl gfFileIOHandle$7getBuffer
/* 80026D28 0001CAA8  90 7E 00 04 */	stw r3, 4(r30)
/* 80026D2C 0001CAAC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80026D30 0001CAB0  4B FF B2 59 */	bl gfFileIOHandle$7getSize
/* 80026D34 0001CAB4  90 7E 00 08 */	stw r3, 8(r30)
/* 80026D38 0001CAB8  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80026D3C 0001CABC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80026D40 0001CAC0  41 82 00 80 */	beq lbl_80026DC0
/* 80026D44 0001CAC4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80026D48 0001CAC8  80 9E 00 04 */	lwz r4, 4(r30)
/* 80026D4C 0001CACC  2C 03 00 00 */	cmpwi r3, 0
/* 80026D50 0001CAD0  40 82 00 24 */	bne lbl_80026D74
/* 80026D54 0001CAD4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80026D58 0001CAD8  80 BE 00 08 */	lwz r5, 8(r30)
/* 80026D5C 0001CADC  4B FF F7 7D */	bl gfModule$7create
/* 80026D60 0001CAE0  90 7E 00 00 */	stw r3, 0(r30)
/* 80026D64 0001CAE4  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80026D68 0001CAE8  60 00 00 04 */	ori r0, r0, 4
/* 80026D6C 0001CAEC  98 1E 00 19 */	stb r0, 0x19(r30)
/* 80026D70 0001CAF0  48 00 00 1C */	b lbl_80026D8C
lbl_80026D74:
/* 80026D74 0001CAF4  80 BE 00 08 */	lwz r5, 8(r30)
/* 80026D78 0001CAF8  4B FF FA B1 */	bl gfModule$7create_427
/* 80026D7C 0001CAFC  90 7E 00 00 */	stw r3, 0(r30)
/* 80026D80 0001CB00  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80026D84 0001CB04  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80026D88 0001CB08  98 1E 00 19 */	stb r0, 0x19(r30)
lbl_80026D8C:
/* 80026D8C 0001CB0C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80026D90 0001CB10  88 64 00 08 */	lbz r3, 8(r4)
/* 80026D94 0001CB14  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80026D98 0001CB18  40 82 00 1C */	bne lbl_80026DB4
/* 80026D9C 0001CB1C  60 60 00 80 */	ori r0, r3, 0x80
/* 80026DA0 0001CB20  98 04 00 08 */	stb r0, 8(r4)
/* 80026DA4 0001CB24  80 64 00 00 */	lwz r3, 0(r4)
/* 80026DA8 0001CB28  81 83 00 34 */	lwz r12, 0x34(r3)
/* 80026DAC 0001CB2C  7D 89 03 A6 */	mtctr r12
/* 80026DB0 0001CB30  4E 80 04 21 */	bctrl 
lbl_80026DB4:
/* 80026DB4 0001CB34  80 7E 00 04 */	lwz r3, 4(r30)
/* 80026DB8 0001CB38  4B FF DC 95 */	bl gfHeapManager$7free
/* 80026DBC 0001CB3C  93 FE 00 04 */	stw r31, 4(r30)
lbl_80026DC0:
/* 80026DC0 0001CB40  38 7E 00 14 */	addi r3, r30, 0x14
/* 80026DC4 0001CB44  4B FF B1 E9 */	bl gfFileIOHandle$7release
/* 80026DC8 0001CB48  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80026DCC 0001CB4C  60 00 00 10 */	ori r0, r0, 0x10
/* 80026DD0 0001CB50  98 1E 00 19 */	stb r0, 0x19(r30)
lbl_80026DD4:
/* 80026DD4 0001CB54  3B BD 00 01 */	addi r29, r29, 1
/* 80026DD8 0001CB58  3B DE 00 3C */	addi r30, r30, 0x3c
/* 80026DDC 0001CB5C  2C 1D 00 10 */	cmpwi r29, 0x10
/* 80026DE0 0001CB60  41 80 FF 00 */	blt lbl_80026CE0
/* 80026DE4 0001CB64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026DE8 0001CB68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80026DEC 0001CB6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80026DF0 0001CB70  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80026DF4 0001CB74  7C 08 03 A6 */	mtlr r0
/* 80026DF8 0001CB78  38 21 00 20 */	addi r1, r1, 0x20
/* 80026DFC 0001CB7C  4E 80 00 20 */	blr 

.global gfModuleManager$7loadModuleRequest
gfModuleManager$7loadModuleRequest:
/* 80026E00 0001CB80  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80026E04 0001CB84  7C 08 02 A6 */	mflr r0
/* 80026E08 0001CB88  90 01 00 84 */	stw r0, 0x84(r1)
/* 80026E0C 0001CB8C  39 61 00 80 */	addi r11, r1, 0x80
/* 80026E10 0001CB90  48 3C A4 FD */	bl _savegpr_22
/* 80026E14 0001CB94  7C 7A 1B 78 */	mr r26, r3
/* 80026E18 0001CB98  7C 9B 23 78 */	mr r27, r4
/* 80026E1C 0001CB9C  7C BC 2B 78 */	mr r28, r5
/* 80026E20 0001CBA0  7C C3 33 78 */	mr r3, r6
/* 80026E24 0001CBA4  7C FD 3B 78 */	mr r29, r7
/* 80026E28 0001CBA8  7D 1E 43 78 */	mr r30, r8
/* 80026E2C 0001CBAC  4B FF DB A1 */	bl gfHeapManager$7getHeap
/* 80026E30 0001CBB0  3A DB 00 08 */	addi r22, r27, 8
/* 80026E34 0001CBB4  7C 7F 1B 78 */	mr r31, r3
/* 80026E38 0001CBB8  7E D9 B3 78 */	mr r25, r22
/* 80026E3C 0001CBBC  3A FB 00 22 */	addi r23, r27, 0x22
/* 80026E40 0001CBC0  3B 00 00 00 */	li r24, 0
lbl_80026E44:
/* 80026E44 0001CBC4  88 19 00 19 */	lbz r0, 0x19(r25)
/* 80026E48 0001CBC8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026E4C 0001CBCC  41 82 00 1C */	beq lbl_80026E68
/* 80026E50 0001CBD0  7E E3 BB 78 */	mr r3, r23
/* 80026E54 0001CBD4  7F 84 E3 78 */	mr r4, r28
/* 80026E58 0001CBD8  48 3D 35 A5 */	bl strcmp
/* 80026E5C 0001CBDC  2C 03 00 00 */	cmpwi r3, 0
/* 80026E60 0001CBE0  40 82 00 08 */	bne lbl_80026E68
/* 80026E64 0001CBE4  48 00 00 1C */	b lbl_80026E80
lbl_80026E68:
/* 80026E68 0001CBE8  3B 18 00 01 */	addi r24, r24, 1
/* 80026E6C 0001CBEC  3A F7 00 3C */	addi r23, r23, 0x3c
/* 80026E70 0001CBF0  2C 18 00 10 */	cmpwi r24, 0x10
/* 80026E74 0001CBF4  3B 39 00 3C */	addi r25, r25, 0x3c
/* 80026E78 0001CBF8  41 80 FF CC */	blt lbl_80026E44
/* 80026E7C 0001CBFC  3B 00 FF FF */	li r24, -1
lbl_80026E80:
/* 80026E80 0001CC00  2C 18 FF FF */	cmpwi r24, -1
/* 80026E84 0001CC04  41 82 00 14 */	beq lbl_80026E98
/* 80026E88 0001CC08  1C 18 00 3C */	mulli r0, r24, 0x3c
/* 80026E8C 0001CC0C  7C 7B 02 14 */	add r3, r27, r0
/* 80026E90 0001CC10  3B 03 00 08 */	addi r24, r3, 8
/* 80026E94 0001CC14  48 00 01 2C */	b lbl_80026FC0
lbl_80026E98:
/* 80026E98 0001CC18  38 00 00 02 */	li r0, 2
/* 80026E9C 0001CC1C  38 60 00 00 */	li r3, 0
/* 80026EA0 0001CC20  7C 09 03 A6 */	mtctr r0
lbl_80026EA4:
/* 80026EA4 0001CC24  88 16 00 19 */	lbz r0, 0x19(r22)
/* 80026EA8 0001CC28  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026EAC 0001CC2C  40 82 00 08 */	bne lbl_80026EB4
/* 80026EB0 0001CC30  48 00 00 A0 */	b lbl_80026F50
lbl_80026EB4:
/* 80026EB4 0001CC34  88 16 00 55 */	lbz r0, 0x55(r22)
/* 80026EB8 0001CC38  38 63 00 01 */	addi r3, r3, 1
/* 80026EBC 0001CC3C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026EC0 0001CC40  40 82 00 08 */	bne lbl_80026EC8
/* 80026EC4 0001CC44  48 00 00 8C */	b lbl_80026F50
lbl_80026EC8:
/* 80026EC8 0001CC48  88 16 00 91 */	lbz r0, 0x91(r22)
/* 80026ECC 0001CC4C  38 63 00 01 */	addi r3, r3, 1
/* 80026ED0 0001CC50  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026ED4 0001CC54  40 82 00 08 */	bne lbl_80026EDC
/* 80026ED8 0001CC58  48 00 00 78 */	b lbl_80026F50
lbl_80026EDC:
/* 80026EDC 0001CC5C  88 16 00 CD */	lbz r0, 0xcd(r22)
/* 80026EE0 0001CC60  38 63 00 01 */	addi r3, r3, 1
/* 80026EE4 0001CC64  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026EE8 0001CC68  40 82 00 08 */	bne lbl_80026EF0
/* 80026EEC 0001CC6C  48 00 00 64 */	b lbl_80026F50
lbl_80026EF0:
/* 80026EF0 0001CC70  88 16 01 09 */	lbz r0, 0x109(r22)
/* 80026EF4 0001CC74  38 63 00 01 */	addi r3, r3, 1
/* 80026EF8 0001CC78  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026EFC 0001CC7C  40 82 00 08 */	bne lbl_80026F04
/* 80026F00 0001CC80  48 00 00 50 */	b lbl_80026F50
lbl_80026F04:
/* 80026F04 0001CC84  88 16 01 45 */	lbz r0, 0x145(r22)
/* 80026F08 0001CC88  38 63 00 01 */	addi r3, r3, 1
/* 80026F0C 0001CC8C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026F10 0001CC90  40 82 00 08 */	bne lbl_80026F18
/* 80026F14 0001CC94  48 00 00 3C */	b lbl_80026F50
lbl_80026F18:
/* 80026F18 0001CC98  88 16 01 81 */	lbz r0, 0x181(r22)
/* 80026F1C 0001CC9C  38 63 00 01 */	addi r3, r3, 1
/* 80026F20 0001CCA0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026F24 0001CCA4  40 82 00 08 */	bne lbl_80026F2C
/* 80026F28 0001CCA8  48 00 00 28 */	b lbl_80026F50
lbl_80026F2C:
/* 80026F2C 0001CCAC  88 16 01 BD */	lbz r0, 0x1bd(r22)
/* 80026F30 0001CCB0  38 63 00 01 */	addi r3, r3, 1
/* 80026F34 0001CCB4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80026F38 0001CCB8  40 82 00 08 */	bne lbl_80026F40
/* 80026F3C 0001CCBC  48 00 00 14 */	b lbl_80026F50
lbl_80026F40:
/* 80026F40 0001CCC0  3A D6 01 E0 */	addi r22, r22, 0x1e0
/* 80026F44 0001CCC4  38 63 00 01 */	addi r3, r3, 1
/* 80026F48 0001CCC8  42 00 FF 5C */	bdnz lbl_80026EA4
/* 80026F4C 0001CCCC  38 60 FF FF */	li r3, -1
lbl_80026F50:
/* 80026F50 0001CCD0  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80026F54 0001CCD4  3B 20 00 00 */	li r25, 0
/* 80026F58 0001CCD8  38 61 00 08 */	addi r3, r1, 8
/* 80026F5C 0001CCDC  38 80 FF FF */	li r4, -1
/* 80026F60 0001CCE0  7C BB 02 14 */	add r5, r27, r0
/* 80026F64 0001CCE4  93 25 00 08 */	stw r25, 8(r5)
/* 80026F68 0001CCE8  3B 05 00 08 */	addi r24, r5, 8
/* 80026F6C 0001CCEC  93 25 00 18 */	stw r25, 0x18(r5)
/* 80026F70 0001CCF0  93 25 00 0C */	stw r25, 0xc(r5)
/* 80026F74 0001CCF4  93 21 00 08 */	stw r25, 8(r1)
/* 80026F78 0001CCF8  93 25 00 1C */	stw r25, 0x1c(r5)
/* 80026F7C 0001CCFC  4B FF 9B BD */	bl gfFileIOHandle$7__dt
/* 80026F80 0001CD00  88 18 00 19 */	lbz r0, 0x19(r24)
/* 80026F84 0001CD04  7F 84 E3 78 */	mr r4, r28
/* 80026F88 0001CD08  38 78 00 1A */	addi r3, r24, 0x1a
/* 80026F8C 0001CD0C  38 A0 00 1F */	li r5, 0x1f
/* 80026F90 0001CD10  9B 38 00 1A */	stb r25, 0x1a(r24)
/* 80026F94 0001CD14  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80026F98 0001CD18  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80026F9C 0001CD1C  93 38 00 0C */	stw r25, 0xc(r24)
/* 80026FA0 0001CD20  50 00 0E F6 */	rlwimi r0, r0, 1, 0x1b, 0x1b
/* 80026FA4 0001CD24  50 00 0E B4 */	rlwimi r0, r0, 1, 0x1a, 0x1a
/* 80026FA8 0001CD28  50 00 16 30 */	rlwimi r0, r0, 2, 0x18, 0x18
/* 80026FAC 0001CD2C  93 38 00 10 */	stw r25, 0x10(r24)
/* 80026FB0 0001CD30  60 00 00 A4 */	ori r0, r0, 0xa4
/* 80026FB4 0001CD34  98 18 00 19 */	stb r0, 0x19(r24)
/* 80026FB8 0001CD38  9B 38 00 18 */	stb r25, 0x18(r24)
/* 80026FBC 0001CD3C  48 3D 33 85 */	bl strncpy
lbl_80026FC0:
/* 80026FC0 0001CD40  88 78 00 18 */	lbz r3, 0x18(r24)
/* 80026FC4 0001CD44  38 63 00 01 */	addi r3, r3, 1
/* 80026FC8 0001CD48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80026FCC 0001CD4C  98 78 00 18 */	stb r3, 0x18(r24)
/* 80026FD0 0001CD50  28 00 00 01 */	cmplwi r0, 1
/* 80026FD4 0001CD54  40 82 00 70 */	bne lbl_80027044
/* 80026FD8 0001CD58  3C 80 80 42 */	lis r4, lbl_80422D00@ha
/* 80026FDC 0001CD5C  38 61 00 10 */	addi r3, r1, 0x10
/* 80026FE0 0001CD60  38 84 2D 00 */	addi r4, r4, lbl_80422D00@l
/* 80026FE4 0001CD64  48 3D 32 9D */	bl strcpy
/* 80026FE8 0001CD68  7F 84 E3 78 */	mr r4, r28
/* 80026FEC 0001CD6C  38 61 00 10 */	addi r3, r1, 0x10
/* 80026FF0 0001CD70  38 A0 00 20 */	li r5, 0x20
/* 80026FF4 0001CD74  48 3D 33 BD */	bl strncat
/* 80026FF8 0001CD78  93 F8 00 10 */	stw r31, 0x10(r24)
/* 80026FFC 0001CD7C  2C 1E 00 00 */	cmpwi r30, 0
/* 80027000 0001CD80  88 18 00 19 */	lbz r0, 0x19(r24)
/* 80027004 0001CD84  53 A0 36 72 */	rlwimi r0, r29, 6, 0x19, 0x19
/* 80027008 0001CD88  98 18 00 19 */	stb r0, 0x19(r24)
/* 8002700C 0001CD8C  41 82 00 20 */	beq lbl_8002702C
/* 80027010 0001CD90  80 BB 00 00 */	lwz r5, 0(r27)
/* 80027014 0001CD94  38 78 00 14 */	addi r3, r24, 0x14
/* 80027018 0001CD98  38 81 00 10 */	addi r4, r1, 0x10
/* 8002701C 0001CD9C  38 C0 00 00 */	li r6, 0
/* 80027020 0001CDA0  38 E0 00 00 */	li r7, 0
/* 80027024 0001CDA4  4B FF A6 5D */	bl gfFileIOHandle$7readRequestCached
/* 80027028 0001CDA8  48 00 00 1C */	b lbl_80027044
lbl_8002702C:
/* 8002702C 0001CDAC  80 BB 00 00 */	lwz r5, 0(r27)
/* 80027030 0001CDB0  38 78 00 14 */	addi r3, r24, 0x14
/* 80027034 0001CDB4  38 81 00 10 */	addi r4, r1, 0x10
/* 80027038 0001CDB8  38 C0 00 00 */	li r6, 0
/* 8002703C 0001CDBC  38 E0 00 00 */	li r7, 0
/* 80027040 0001CDC0  4B FF A4 59 */	bl gfFileIOHandle$7readRequest
lbl_80027044:
/* 80027044 0001CDC4  93 1A 00 00 */	stw r24, 0(r26)
/* 80027048 0001CDC8  39 61 00 80 */	addi r11, r1, 0x80
/* 8002704C 0001CDCC  48 3C A3 0D */	bl _restgpr_22
/* 80027050 0001CDD0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80027054 0001CDD4  7C 08 03 A6 */	mtlr r0
/* 80027058 0001CDD8  38 21 00 80 */	addi r1, r1, 0x80
/* 8002705C 0001CDDC  4E 80 00 20 */	blr 

.global gfModuleManager$7loadModuleRequestOnImage
gfModuleManager$7loadModuleRequestOnImage:
/* 80027060 0001CDE0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80027064 0001CDE4  7C 08 02 A6 */	mflr r0
/* 80027068 0001CDE8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8002706C 0001CDEC  39 61 00 80 */	addi r11, r1, 0x80
/* 80027070 0001CDF0  48 3C A2 A1 */	bl _savegpr_23
/* 80027074 0001CDF4  7C 7E 1B 78 */	mr r30, r3
/* 80027078 0001CDF8  7C 9B 23 78 */	mr r27, r4
/* 8002707C 0001CDFC  7C A3 2B 78 */	mr r3, r5
/* 80027080 0001CE00  7C DC 33 78 */	mr r28, r6
/* 80027084 0001CE04  7C FD 3B 78 */	mr r29, r7
/* 80027088 0001CE08  4B FF D9 45 */	bl gfHeapManager$7getHeap
/* 8002708C 0001CE0C  3A FE 00 08 */	addi r23, r30, 8
/* 80027090 0001CE10  7C 7F 1B 78 */	mr r31, r3
/* 80027094 0001CE14  7E F9 BB 78 */	mr r25, r23
/* 80027098 0001CE18  3B 1E 00 22 */	addi r24, r30, 0x22
/* 8002709C 0001CE1C  3B 40 00 00 */	li r26, 0
lbl_800270A0:
/* 800270A0 0001CE20  88 19 00 19 */	lbz r0, 0x19(r25)
/* 800270A4 0001CE24  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800270A8 0001CE28  41 82 00 1C */	beq lbl_800270C4
/* 800270AC 0001CE2C  7F 03 C3 78 */	mr r3, r24
/* 800270B0 0001CE30  7F 64 DB 78 */	mr r4, r27
/* 800270B4 0001CE34  48 3D 33 49 */	bl strcmp
/* 800270B8 0001CE38  2C 03 00 00 */	cmpwi r3, 0
/* 800270BC 0001CE3C  40 82 00 08 */	bne lbl_800270C4
/* 800270C0 0001CE40  48 00 00 1C */	b lbl_800270DC
lbl_800270C4:
/* 800270C4 0001CE44  3B 5A 00 01 */	addi r26, r26, 1
/* 800270C8 0001CE48  3B 18 00 3C */	addi r24, r24, 0x3c
/* 800270CC 0001CE4C  2C 1A 00 10 */	cmpwi r26, 0x10
/* 800270D0 0001CE50  3B 39 00 3C */	addi r25, r25, 0x3c
/* 800270D4 0001CE54  41 80 FF CC */	blt lbl_800270A0
/* 800270D8 0001CE58  3B 40 FF FF */	li r26, -1
lbl_800270DC:
/* 800270DC 0001CE5C  2C 1A FF FF */	cmpwi r26, -1
/* 800270E0 0001CE60  41 82 00 14 */	beq lbl_800270F4
/* 800270E4 0001CE64  1C 1A 00 3C */	mulli r0, r26, 0x3c
/* 800270E8 0001CE68  7C 7E 02 14 */	add r3, r30, r0
/* 800270EC 0001CE6C  3B C3 00 08 */	addi r30, r3, 8
/* 800270F0 0001CE70  48 00 01 2C */	b lbl_8002721C
lbl_800270F4:
/* 800270F4 0001CE74  38 00 00 02 */	li r0, 2
/* 800270F8 0001CE78  38 60 00 00 */	li r3, 0
/* 800270FC 0001CE7C  7C 09 03 A6 */	mtctr r0
lbl_80027100:
/* 80027100 0001CE80  88 17 00 19 */	lbz r0, 0x19(r23)
/* 80027104 0001CE84  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80027108 0001CE88  40 82 00 08 */	bne lbl_80027110
/* 8002710C 0001CE8C  48 00 00 A0 */	b lbl_800271AC
lbl_80027110:
/* 80027110 0001CE90  88 17 00 55 */	lbz r0, 0x55(r23)
/* 80027114 0001CE94  38 63 00 01 */	addi r3, r3, 1
/* 80027118 0001CE98  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8002711C 0001CE9C  40 82 00 08 */	bne lbl_80027124
/* 80027120 0001CEA0  48 00 00 8C */	b lbl_800271AC
lbl_80027124:
/* 80027124 0001CEA4  88 17 00 91 */	lbz r0, 0x91(r23)
/* 80027128 0001CEA8  38 63 00 01 */	addi r3, r3, 1
/* 8002712C 0001CEAC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80027130 0001CEB0  40 82 00 08 */	bne lbl_80027138
/* 80027134 0001CEB4  48 00 00 78 */	b lbl_800271AC
lbl_80027138:
/* 80027138 0001CEB8  88 17 00 CD */	lbz r0, 0xcd(r23)
/* 8002713C 0001CEBC  38 63 00 01 */	addi r3, r3, 1
/* 80027140 0001CEC0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80027144 0001CEC4  40 82 00 08 */	bne lbl_8002714C
/* 80027148 0001CEC8  48 00 00 64 */	b lbl_800271AC
lbl_8002714C:
/* 8002714C 0001CECC  88 17 01 09 */	lbz r0, 0x109(r23)
/* 80027150 0001CED0  38 63 00 01 */	addi r3, r3, 1
/* 80027154 0001CED4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80027158 0001CED8  40 82 00 08 */	bne lbl_80027160
/* 8002715C 0001CEDC  48 00 00 50 */	b lbl_800271AC
lbl_80027160:
/* 80027160 0001CEE0  88 17 01 45 */	lbz r0, 0x145(r23)
/* 80027164 0001CEE4  38 63 00 01 */	addi r3, r3, 1
/* 80027168 0001CEE8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8002716C 0001CEEC  40 82 00 08 */	bne lbl_80027174
/* 80027170 0001CEF0  48 00 00 3C */	b lbl_800271AC
lbl_80027174:
/* 80027174 0001CEF4  88 17 01 81 */	lbz r0, 0x181(r23)
/* 80027178 0001CEF8  38 63 00 01 */	addi r3, r3, 1
/* 8002717C 0001CEFC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80027180 0001CF00  40 82 00 08 */	bne lbl_80027188
/* 80027184 0001CF04  48 00 00 28 */	b lbl_800271AC
lbl_80027188:
/* 80027188 0001CF08  88 17 01 BD */	lbz r0, 0x1bd(r23)
/* 8002718C 0001CF0C  38 63 00 01 */	addi r3, r3, 1
/* 80027190 0001CF10  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80027194 0001CF14  40 82 00 08 */	bne lbl_8002719C
/* 80027198 0001CF18  48 00 00 14 */	b lbl_800271AC
lbl_8002719C:
/* 8002719C 0001CF1C  3A F7 01 E0 */	addi r23, r23, 0x1e0
/* 800271A0 0001CF20  38 63 00 01 */	addi r3, r3, 1
/* 800271A4 0001CF24  42 00 FF 5C */	bdnz lbl_80027100
/* 800271A8 0001CF28  38 60 FF FF */	li r3, -1
lbl_800271AC:
/* 800271AC 0001CF2C  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 800271B0 0001CF30  3B 40 00 00 */	li r26, 0
/* 800271B4 0001CF34  38 61 00 08 */	addi r3, r1, 8
/* 800271B8 0001CF38  38 80 FF FF */	li r4, -1
/* 800271BC 0001CF3C  7C BE 02 14 */	add r5, r30, r0
/* 800271C0 0001CF40  93 45 00 08 */	stw r26, 8(r5)
/* 800271C4 0001CF44  3B C5 00 08 */	addi r30, r5, 8
/* 800271C8 0001CF48  93 45 00 18 */	stw r26, 0x18(r5)
/* 800271CC 0001CF4C  93 45 00 0C */	stw r26, 0xc(r5)
/* 800271D0 0001CF50  93 41 00 08 */	stw r26, 8(r1)
/* 800271D4 0001CF54  93 45 00 1C */	stw r26, 0x1c(r5)
/* 800271D8 0001CF58  4B FF 99 61 */	bl gfFileIOHandle$7__dt
/* 800271DC 0001CF5C  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 800271E0 0001CF60  7F 64 DB 78 */	mr r4, r27
/* 800271E4 0001CF64  38 7E 00 1A */	addi r3, r30, 0x1a
/* 800271E8 0001CF68  38 A0 00 1F */	li r5, 0x1f
/* 800271EC 0001CF6C  9B 5E 00 1A */	stb r26, 0x1a(r30)
/* 800271F0 0001CF70  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800271F4 0001CF74  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800271F8 0001CF78  93 5E 00 0C */	stw r26, 0xc(r30)
/* 800271FC 0001CF7C  50 00 0E F6 */	rlwimi r0, r0, 1, 0x1b, 0x1b
/* 80027200 0001CF80  50 00 0E B4 */	rlwimi r0, r0, 1, 0x1a, 0x1a
/* 80027204 0001CF84  50 00 16 30 */	rlwimi r0, r0, 2, 0x18, 0x18
/* 80027208 0001CF88  93 5E 00 10 */	stw r26, 0x10(r30)
/* 8002720C 0001CF8C  60 00 00 A4 */	ori r0, r0, 0xa4
/* 80027210 0001CF90  98 1E 00 19 */	stb r0, 0x19(r30)
/* 80027214 0001CF94  9B 5E 00 18 */	stb r26, 0x18(r30)
/* 80027218 0001CF98  48 3D 31 29 */	bl strncpy
lbl_8002721C:
/* 8002721C 0001CF9C  88 7E 00 18 */	lbz r3, 0x18(r30)
/* 80027220 0001CFA0  38 63 00 01 */	addi r3, r3, 1
/* 80027224 0001CFA4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80027228 0001CFA8  98 7E 00 18 */	stb r3, 0x18(r30)
/* 8002722C 0001CFAC  28 00 00 01 */	cmplwi r0, 1
/* 80027230 0001CFB0  40 82 00 B8 */	bne lbl_800272E8
/* 80027234 0001CFB4  3C 80 80 42 */	lis r4, lbl_80422D00@ha
/* 80027238 0001CFB8  38 61 00 10 */	addi r3, r1, 0x10
/* 8002723C 0001CFBC  38 84 2D 00 */	addi r4, r4, lbl_80422D00@l
/* 80027240 0001CFC0  48 3D 30 41 */	bl strcpy
/* 80027244 0001CFC4  7F 64 DB 78 */	mr r4, r27
/* 80027248 0001CFC8  38 61 00 10 */	addi r3, r1, 0x10
/* 8002724C 0001CFCC  38 A0 00 20 */	li r5, 0x20
/* 80027250 0001CFD0  48 3D 31 61 */	bl strncat
/* 80027254 0001CFD4  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80027258 0001CFD8  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 8002725C 0001CFDC  93 9E 00 04 */	stw r28, 4(r30)
/* 80027260 0001CFE0  60 00 00 70 */	ori r0, r0, 0x70
/* 80027264 0001CFE4  93 BE 00 08 */	stw r29, 8(r30)
/* 80027268 0001CFE8  98 1E 00 19 */	stb r0, 0x19(r30)
/* 8002726C 0001CFEC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80027270 0001CFF0  2C 03 00 00 */	cmpwi r3, 0
/* 80027274 0001CFF4  40 82 00 28 */	bne lbl_8002729C
/* 80027278 0001CFF8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8002727C 0001CFFC  7F 84 E3 78 */	mr r4, r28
/* 80027280 0001D000  80 BE 00 08 */	lwz r5, 8(r30)
/* 80027284 0001D004  4B FF F2 55 */	bl gfModule$7create
/* 80027288 0001D008  90 7E 00 00 */	stw r3, 0(r30)
/* 8002728C 0001D00C  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80027290 0001D010  60 00 00 04 */	ori r0, r0, 4
/* 80027294 0001D014  98 1E 00 19 */	stb r0, 0x19(r30)
/* 80027298 0001D018  48 00 00 20 */	b lbl_800272B8
lbl_8002729C:
/* 8002729C 0001D01C  80 BE 00 08 */	lwz r5, 8(r30)
/* 800272A0 0001D020  7F 84 E3 78 */	mr r4, r28
/* 800272A4 0001D024  4B FF F5 85 */	bl gfModule$7create_427
/* 800272A8 0001D028  90 7E 00 00 */	stw r3, 0(r30)
/* 800272AC 0001D02C  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 800272B0 0001D030  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800272B4 0001D034  98 1E 00 19 */	stb r0, 0x19(r30)
lbl_800272B8:
/* 800272B8 0001D038  80 9E 00 00 */	lwz r4, 0(r30)
/* 800272BC 0001D03C  88 64 00 08 */	lbz r3, 8(r4)
/* 800272C0 0001D040  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 800272C4 0001D044  40 82 00 1C */	bne lbl_800272E0
/* 800272C8 0001D048  60 60 00 80 */	ori r0, r3, 0x80
/* 800272CC 0001D04C  98 04 00 08 */	stb r0, 8(r4)
/* 800272D0 0001D050  80 64 00 00 */	lwz r3, 0(r4)
/* 800272D4 0001D054  81 83 00 34 */	lwz r12, 0x34(r3)
/* 800272D8 0001D058  7D 89 03 A6 */	mtctr r12
/* 800272DC 0001D05C  4E 80 04 21 */	bctrl 
lbl_800272E0:
/* 800272E0 0001D060  38 00 00 00 */	li r0, 0
/* 800272E4 0001D064  90 1E 00 04 */	stw r0, 4(r30)
lbl_800272E8:
/* 800272E8 0001D068  39 61 00 80 */	addi r11, r1, 0x80
/* 800272EC 0001D06C  48 3C A0 71 */	bl _restgpr_23
/* 800272F0 0001D070  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800272F4 0001D074  7C 08 03 A6 */	mtlr r0
/* 800272F8 0001D078  38 21 00 80 */	addi r1, r1, 0x80
/* 800272FC 0001D07C  4E 80 00 20 */	blr 

.global gfModuleManager$7isLoaded
gfModuleManager$7isLoaded:
/* 80027300 0001D080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80027304 0001D084  7C 08 02 A6 */	mflr r0
/* 80027308 0001D088  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002730C 0001D08C  39 61 00 20 */	addi r11, r1, 0x20
/* 80027310 0001D090  48 3C A0 11 */	bl _savegpr_27
/* 80027314 0001D094  7C 7B 1B 78 */	mr r27, r3
/* 80027318 0001D098  7C 9C 23 78 */	mr r28, r4
/* 8002731C 0001D09C  3B E3 00 08 */	addi r31, r3, 8
/* 80027320 0001D0A0  3B C0 00 00 */	li r30, 0
/* 80027324 0001D0A4  3B A0 00 00 */	li r29, 0
lbl_80027328:
/* 80027328 0001D0A8  7F 84 E3 78 */	mr r4, r28
/* 8002732C 0001D0AC  38 7F 00 1A */	addi r3, r31, 0x1a
/* 80027330 0001D0B0  48 3D 30 CD */	bl strcmp
/* 80027334 0001D0B4  2C 03 00 00 */	cmpwi r3, 0
/* 80027338 0001D0B8  40 82 00 18 */	bne lbl_80027350
/* 8002733C 0001D0BC  1C 1D 00 3C */	mulli r0, r29, 0x3c
/* 80027340 0001D0C0  7C 7B 02 14 */	add r3, r27, r0
/* 80027344 0001D0C4  88 03 00 21 */	lbz r0, 0x21(r3)
/* 80027348 0001D0C8  54 1E E7 FE */	rlwinm r30, r0, 0x1c, 0x1f, 0x1f
/* 8002734C 0001D0CC  48 00 00 14 */	b lbl_80027360
lbl_80027350:
/* 80027350 0001D0D0  3B BD 00 01 */	addi r29, r29, 1
/* 80027354 0001D0D4  3B FF 00 3C */	addi r31, r31, 0x3c
/* 80027358 0001D0D8  28 1D 00 10 */	cmplwi r29, 0x10
/* 8002735C 0001D0DC  41 80 FF CC */	blt lbl_80027328
lbl_80027360:
/* 80027360 0001D0E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80027364 0001D0E4  7F C3 F3 78 */	mr r3, r30
/* 80027368 0001D0E8  48 3C A0 05 */	bl _restgpr_27
/* 8002736C 0001D0EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80027370 0001D0F0  7C 08 03 A6 */	mtlr r0
/* 80027374 0001D0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80027378 0001D0F8  4E 80 00 20 */	blr 

.global gfModuleManager$7destroy
gfModuleManager$7destroy:
/* 8002737C 0001D0FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80027380 0001D100  7C 08 02 A6 */	mflr r0
/* 80027384 0001D104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80027388 0001D108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002738C 0001D10C  3B E0 00 00 */	li r31, 0
/* 80027390 0001D110  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80027394 0001D114  3B C3 00 08 */	addi r30, r3, 8
/* 80027398 0001D118  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8002739C 0001D11C  3B A0 00 00 */	li r29, 0
/* 800273A0 0001D120  93 81 00 10 */	stw r28, 0x10(r1)
/* 800273A4 0001D124  7C 9C 23 78 */	mr r28, r4
lbl_800273A8:
/* 800273A8 0001D128  7F 84 E3 78 */	mr r4, r28
/* 800273AC 0001D12C  38 7E 00 1A */	addi r3, r30, 0x1a
/* 800273B0 0001D130  38 A0 00 1F */	li r5, 0x1f
/* 800273B4 0001D134  48 3D 31 65 */	bl strncmp
/* 800273B8 0001D138  2C 03 00 00 */	cmpwi r3, 0
/* 800273BC 0001D13C  40 82 00 E0 */	bne lbl_8002749C
/* 800273C0 0001D140  88 7E 00 18 */	lbz r3, 0x18(r30)
/* 800273C4 0001D144  28 03 00 01 */	cmplwi r3, 1
/* 800273C8 0001D148  40 81 00 10 */	ble lbl_800273D8
/* 800273CC 0001D14C  38 03 FF FF */	addi r0, r3, -1
/* 800273D0 0001D150  98 1E 00 18 */	stb r0, 0x18(r30)
/* 800273D4 0001D154  48 00 00 C0 */	b lbl_80027494
lbl_800273D8:
/* 800273D8 0001D158  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 800273DC 0001D15C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800273E0 0001D160  98 1E 00 19 */	stb r0, 0x19(r30)
/* 800273E4 0001D164  80 9E 00 00 */	lwz r4, 0(r30)
/* 800273E8 0001D168  2C 04 00 00 */	cmpwi r4, 0
/* 800273EC 0001D16C  41 82 00 58 */	beq lbl_80027444
/* 800273F0 0001D170  88 64 00 08 */	lbz r3, 8(r4)
/* 800273F4 0001D174  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 800273F8 0001D178  40 82 00 1C */	bne lbl_80027414
/* 800273FC 0001D17C  60 60 00 40 */	ori r0, r3, 0x40
/* 80027400 0001D180  98 04 00 08 */	stb r0, 8(r4)
/* 80027404 0001D184  80 64 00 00 */	lwz r3, 0(r4)
/* 80027408 0001D188  81 83 00 38 */	lwz r12, 0x38(r3)
/* 8002740C 0001D18C  7D 89 03 A6 */	mtctr r12
/* 80027410 0001D190  4E 80 04 21 */	bctrl 
lbl_80027414:
/* 80027414 0001D194  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80027418 0001D198  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8002741C 0001D19C  41 82 00 20 */	beq lbl_8002743C
/* 80027420 0001D1A0  83 FE 00 00 */	lwz r31, 0(r30)
/* 80027424 0001D1A4  2C 1F 00 00 */	cmpwi r31, 0
/* 80027428 0001D1A8  41 82 00 14 */	beq lbl_8002743C
/* 8002742C 0001D1AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80027430 0001D1B0  48 1B 6A 7D */	bl OSUnlink
/* 80027434 0001D1B4  7F E3 FB 78 */	mr r3, r31
/* 80027438 0001D1B8  4B FE 54 91 */	bl __dl
lbl_8002743C:
/* 8002743C 0001D1BC  38 00 00 00 */	li r0, 0
/* 80027440 0001D1C0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80027444:
/* 80027444 0001D1C4  3B E0 00 00 */	li r31, 0
/* 80027448 0001D1C8  38 61 00 08 */	addi r3, r1, 8
/* 8002744C 0001D1CC  93 FE 00 00 */	stw r31, 0(r30)
/* 80027450 0001D1D0  38 80 FF FF */	li r4, -1
/* 80027454 0001D1D4  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80027458 0001D1D8  93 FE 00 04 */	stw r31, 4(r30)
/* 8002745C 0001D1DC  93 E1 00 08 */	stw r31, 8(r1)
/* 80027460 0001D1E0  93 FE 00 14 */	stw r31, 0x14(r30)
/* 80027464 0001D1E4  4B FF 96 D5 */	bl gfFileIOHandle$7__dt
/* 80027468 0001D1E8  93 FE 00 0C */	stw r31, 0xc(r30)
/* 8002746C 0001D1EC  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80027470 0001D1F0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80027474 0001D1F4  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80027478 0001D1F8  50 00 0E F6 */	rlwimi r0, r0, 1, 0x1b, 0x1b
/* 8002747C 0001D1FC  50 00 0E B4 */	rlwimi r0, r0, 1, 0x1a, 0x1a
/* 80027480 0001D200  50 00 16 30 */	rlwimi r0, r0, 2, 0x18, 0x18
/* 80027484 0001D204  60 00 00 04 */	ori r0, r0, 4
/* 80027488 0001D208  98 1E 00 19 */	stb r0, 0x19(r30)
/* 8002748C 0001D20C  9B FE 00 1A */	stb r31, 0x1a(r30)
/* 80027490 0001D210  9B FE 00 18 */	stb r31, 0x18(r30)
lbl_80027494:
/* 80027494 0001D214  3B E0 00 01 */	li r31, 1
/* 80027498 0001D218  48 00 00 14 */	b lbl_800274AC
lbl_8002749C:
/* 8002749C 0001D21C  3B BD 00 01 */	addi r29, r29, 1
/* 800274A0 0001D220  3B DE 00 3C */	addi r30, r30, 0x3c
/* 800274A4 0001D224  28 1D 00 10 */	cmplwi r29, 0x10
/* 800274A8 0001D228  41 80 FF 00 */	blt lbl_800273A8
lbl_800274AC:
/* 800274AC 0001D22C  7F E3 FB 78 */	mr r3, r31
/* 800274B0 0001D230  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800274B4 0001D234  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800274B8 0001D238  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800274BC 0001D23C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800274C0 0001D240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800274C4 0001D244  7C 08 03 A6 */	mtlr r0
/* 800274C8 0001D248  38 21 00 20 */	addi r1, r1, 0x20
/* 800274CC 0001D24C  4E 80 00 20 */	blr 

.global gfModuleManager$7removeModule
gfModuleManager$7removeModule:
/* 800274D0 0001D250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800274D4 0001D254  7C 08 02 A6 */	mflr r0
/* 800274D8 0001D258  90 01 00 24 */	stw r0, 0x24(r1)
/* 800274DC 0001D25C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800274E0 0001D260  3B E0 00 00 */	li r31, 0
/* 800274E4 0001D264  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800274E8 0001D268  3B C3 00 08 */	addi r30, r3, 8
/* 800274EC 0001D26C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800274F0 0001D270  7C 9D 23 78 */	mr r29, r4
lbl_800274F4:
/* 800274F4 0001D274  7F A4 EB 78 */	mr r4, r29
/* 800274F8 0001D278  38 7E 00 1A */	addi r3, r30, 0x1a
/* 800274FC 0001D27C  38 A0 00 1F */	li r5, 0x1f
/* 80027500 0001D280  48 3D 30 19 */	bl strncmp
/* 80027504 0001D284  2C 03 00 00 */	cmpwi r3, 0
/* 80027508 0001D288  40 82 00 DC */	bne lbl_800275E4
/* 8002750C 0001D28C  88 7E 00 18 */	lbz r3, 0x18(r30)
/* 80027510 0001D290  28 03 00 01 */	cmplwi r3, 1
/* 80027514 0001D294  40 81 00 10 */	ble lbl_80027524
/* 80027518 0001D298  38 03 FF FF */	addi r0, r3, -1
/* 8002751C 0001D29C  98 1E 00 18 */	stb r0, 0x18(r30)
/* 80027520 0001D2A0  48 00 00 D4 */	b lbl_800275F4
lbl_80027524:
/* 80027524 0001D2A4  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80027528 0001D2A8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8002752C 0001D2AC  98 1E 00 19 */	stb r0, 0x19(r30)
/* 80027530 0001D2B0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80027534 0001D2B4  2C 04 00 00 */	cmpwi r4, 0
/* 80027538 0001D2B8  41 82 00 58 */	beq lbl_80027590
/* 8002753C 0001D2BC  88 64 00 08 */	lbz r3, 8(r4)
/* 80027540 0001D2C0  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80027544 0001D2C4  40 82 00 1C */	bne lbl_80027560
/* 80027548 0001D2C8  60 60 00 40 */	ori r0, r3, 0x40
/* 8002754C 0001D2CC  98 04 00 08 */	stb r0, 8(r4)
/* 80027550 0001D2D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80027554 0001D2D4  81 83 00 38 */	lwz r12, 0x38(r3)
/* 80027558 0001D2D8  7D 89 03 A6 */	mtctr r12
/* 8002755C 0001D2DC  4E 80 04 21 */	bctrl 
lbl_80027560:
/* 80027560 0001D2E0  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80027564 0001D2E4  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80027568 0001D2E8  41 82 00 20 */	beq lbl_80027588
/* 8002756C 0001D2EC  83 FE 00 00 */	lwz r31, 0(r30)
/* 80027570 0001D2F0  2C 1F 00 00 */	cmpwi r31, 0
/* 80027574 0001D2F4  41 82 00 14 */	beq lbl_80027588
/* 80027578 0001D2F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8002757C 0001D2FC  48 1B 69 31 */	bl OSUnlink
/* 80027580 0001D300  7F E3 FB 78 */	mr r3, r31
/* 80027584 0001D304  4B FE 53 45 */	bl __dl
lbl_80027588:
/* 80027588 0001D308  38 00 00 00 */	li r0, 0
/* 8002758C 0001D30C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80027590:
/* 80027590 0001D310  3B E0 00 00 */	li r31, 0
/* 80027594 0001D314  38 61 00 08 */	addi r3, r1, 8
/* 80027598 0001D318  93 FE 00 00 */	stw r31, 0(r30)
/* 8002759C 0001D31C  38 80 FF FF */	li r4, -1
/* 800275A0 0001D320  93 FE 00 10 */	stw r31, 0x10(r30)
/* 800275A4 0001D324  93 FE 00 04 */	stw r31, 4(r30)
/* 800275A8 0001D328  93 E1 00 08 */	stw r31, 8(r1)
/* 800275AC 0001D32C  93 FE 00 14 */	stw r31, 0x14(r30)
/* 800275B0 0001D330  4B FF 95 89 */	bl gfFileIOHandle$7__dt
/* 800275B4 0001D334  93 FE 00 0C */	stw r31, 0xc(r30)
/* 800275B8 0001D338  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 800275BC 0001D33C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800275C0 0001D340  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800275C4 0001D344  50 00 0E F6 */	rlwimi r0, r0, 1, 0x1b, 0x1b
/* 800275C8 0001D348  50 00 0E B4 */	rlwimi r0, r0, 1, 0x1a, 0x1a
/* 800275CC 0001D34C  50 00 16 30 */	rlwimi r0, r0, 2, 0x18, 0x18
/* 800275D0 0001D350  60 00 00 04 */	ori r0, r0, 4
/* 800275D4 0001D354  98 1E 00 19 */	stb r0, 0x19(r30)
/* 800275D8 0001D358  9B FE 00 1A */	stb r31, 0x1a(r30)
/* 800275DC 0001D35C  9B FE 00 18 */	stb r31, 0x18(r30)
/* 800275E0 0001D360  48 00 00 14 */	b lbl_800275F4
lbl_800275E4:
/* 800275E4 0001D364  3B FF 00 01 */	addi r31, r31, 1
/* 800275E8 0001D368  3B DE 00 3C */	addi r30, r30, 0x3c
/* 800275EC 0001D36C  28 1F 00 10 */	cmplwi r31, 0x10
/* 800275F0 0001D370  41 80 FF 04 */	blt lbl_800274F4
lbl_800275F4:
/* 800275F4 0001D374  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800275F8 0001D378  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800275FC 0001D37C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80027600 0001D380  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80027604 0001D384  7C 08 03 A6 */	mtlr r0
/* 80027608 0001D388  38 21 00 20 */	addi r1, r1, 0x20
/* 8002760C 0001D38C  4E 80 00 20 */	blr 

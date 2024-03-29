.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NETiAESEncryptoBlock
NETiAESEncryptoBlock:
/* 8038FEE0 00385C60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038FEE4 00385C64  7C 08 02 A6 */	mflr r0
/* 8038FEE8 00385C68  80 C5 00 00 */	lwz r6, 0(r5)
/* 8038FEEC 00385C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038FEF0 00385C70  81 05 00 04 */	lwz r8, 4(r5)
/* 8038FEF4 00385C74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038FEF8 00385C78  7C 7F 1B 78 */	mr r31, r3
/* 8038FEFC 00385C7C  80 E5 00 08 */	lwz r7, 8(r5)
/* 8038FF00 00385C80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038FF04 00385C84  7C 9E 23 78 */	mr r30, r4
/* 8038FF08 00385C88  80 03 00 00 */	lwz r0, 0(r3)
/* 8038FF0C 00385C8C  7C C0 02 78 */	xor r0, r6, r0
/* 8038FF10 00385C90  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 8038FF14 00385C94  90 01 00 08 */	stw r0, 8(r1)
/* 8038FF18 00385C98  38 A1 00 08 */	addi r5, r1, 8
/* 8038FF1C 00385C9C  80 03 00 04 */	lwz r0, 4(r3)
/* 8038FF20 00385CA0  7D 00 02 78 */	xor r0, r8, r0
/* 8038FF24 00385CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038FF28 00385CA8  80 03 00 08 */	lwz r0, 8(r3)
/* 8038FF2C 00385CAC  7C E0 02 78 */	xor r0, r7, r0
/* 8038FF30 00385CB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8038FF34 00385CB4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038FF38 00385CB8  7C C0 02 78 */	xor r0, r6, r0
/* 8038FF3C 00385CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038FF40 00385CC0  4B FF F6 11 */	bl AESiEncryptBlock
/* 8038FF44 00385CC4  80 1E 00 00 */	lwz r0, 0(r30)
/* 8038FF48 00385CC8  90 1F 00 00 */	stw r0, 0(r31)
/* 8038FF4C 00385CCC  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038FF50 00385CD0  90 1F 00 04 */	stw r0, 4(r31)
/* 8038FF54 00385CD4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038FF58 00385CD8  90 1F 00 08 */	stw r0, 8(r31)
/* 8038FF5C 00385CDC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8038FF60 00385CE0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8038FF64 00385CE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038FF68 00385CE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038FF6C 00385CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038FF70 00385CF0  7C 08 03 A6 */	mtlr r0
/* 8038FF74 00385CF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038FF78 00385CF8  4E 80 00 20 */	blr 

.global NETiAESDecryptoBlock
NETiAESDecryptoBlock:
/* 8038FF7C 00385CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038FF80 00385D00  7C 08 02 A6 */	mflr r0
/* 8038FF84 00385D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038FF88 00385D08  39 61 00 20 */	addi r11, r1, 0x20
/* 8038FF8C 00385D0C  48 06 13 95 */	bl _savegpr_27
/* 8038FF90 00385D10  83 E3 00 00 */	lwz r31, 0(r3)
/* 8038FF94 00385D14  7C 9B 23 78 */	mr r27, r4
/* 8038FF98 00385D18  81 05 00 00 */	lwz r8, 0(r5)
/* 8038FF9C 00385D1C  83 C3 00 04 */	lwz r30, 4(r3)
/* 8038FFA0 00385D20  80 E5 00 04 */	lwz r7, 4(r5)
/* 8038FFA4 00385D24  83 A3 00 08 */	lwz r29, 8(r3)
/* 8038FFA8 00385D28  80 C5 00 08 */	lwz r6, 8(r5)
/* 8038FFAC 00385D2C  83 83 00 0C */	lwz r28, 0xc(r3)
/* 8038FFB0 00385D30  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8038FFB4 00385D34  91 03 00 00 */	stw r8, 0(r3)
/* 8038FFB8 00385D38  90 E3 00 04 */	stw r7, 4(r3)
/* 8038FFBC 00385D3C  90 C3 00 08 */	stw r6, 8(r3)
/* 8038FFC0 00385D40  90 03 00 0C */	stw r0, 0xc(r3)
/* 8038FFC4 00385D44  4B FF F8 05 */	bl AESiDecryptBlock
/* 8038FFC8 00385D48  80 1B 00 00 */	lwz r0, 0(r27)
/* 8038FFCC 00385D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8038FFD0 00385D50  80 9B 00 04 */	lwz r4, 4(r27)
/* 8038FFD4 00385D54  7C 05 FA 78 */	xor r5, r0, r31
/* 8038FFD8 00385D58  80 7B 00 08 */	lwz r3, 8(r27)
/* 8038FFDC 00385D5C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8038FFE0 00385D60  7C 84 F2 78 */	xor r4, r4, r30
/* 8038FFE4 00385D64  7C 63 EA 78 */	xor r3, r3, r29
/* 8038FFE8 00385D68  90 BB 00 00 */	stw r5, 0(r27)
/* 8038FFEC 00385D6C  7C 00 E2 78 */	xor r0, r0, r28
/* 8038FFF0 00385D70  90 9B 00 04 */	stw r4, 4(r27)
/* 8038FFF4 00385D74  90 7B 00 08 */	stw r3, 8(r27)
/* 8038FFF8 00385D78  90 1B 00 0C */	stw r0, 0xc(r27)
/* 8038FFFC 00385D7C  48 06 13 71 */	bl _restgpr_27
/* 80390000 00385D80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80390004 00385D84  7C 08 03 A6 */	mtlr r0
/* 80390008 00385D88  38 21 00 20 */	addi r1, r1, 0x20
/* 8039000C 00385D8C  4E 80 00 20 */	blr 


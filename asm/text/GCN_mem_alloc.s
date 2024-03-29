.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __sys_free
__sys_free:
/* 803F2F90 003E8D10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F2F94 003E8D14  7C 08 02 A6 */	mflr r0
/* 803F2F98 003E8D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F2F9C 003E8D1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F2FA0 003E8D20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F2FA4 003E8D24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803F2FA8 003E8D28  7C 7D 1B 78 */	mr r29, r3
/* 803F2FAC 003E8D2C  80 0D A5 90 */	lwz r0, lbl_8059E9B0-_SDA_BASE_(r13)
/* 803F2FB0 003E8D30  2C 00 FF FF */	cmpwi r0, -1
/* 803F2FB4 003E8D34  40 82 00 6C */	bne lbl_803F3020
/* 803F2FB8 003E8D38  3F E0 80 42 */	lis r31, lbl_8041F478@ha
/* 803F2FBC 003E8D3C  38 7F F4 78 */	addi r3, r31, lbl_8041F478@l
/* 803F2FC0 003E8D40  4C C6 31 82 */	crclr 6
/* 803F2FC4 003E8D44  4B DE 56 3D */	bl OSReport
/* 803F2FC8 003E8D48  38 7F F4 78 */	addi r3, r31, -2952
/* 803F2FCC 003E8D4C  38 63 00 36 */	addi r3, r3, 0x36
/* 803F2FD0 003E8D50  4C C6 31 82 */	crclr 6
/* 803F2FD4 003E8D54  4B DE 56 2D */	bl OSReport
/* 803F2FD8 003E8D58  4B DE 41 7D */	bl OSGetArenaLo
/* 803F2FDC 003E8D5C  7C 7E 1B 78 */	mr r30, r3
/* 803F2FE0 003E8D60  4B DE 41 5D */	bl OSGetArenaHi
/* 803F2FE4 003E8D64  7C 7F 1B 78 */	mr r31, r3
/* 803F2FE8 003E8D68  7F C3 F3 78 */	mr r3, r30
/* 803F2FEC 003E8D6C  7F E4 FB 78 */	mr r4, r31
/* 803F2FF0 003E8D70  38 A0 00 01 */	li r5, 1
/* 803F2FF4 003E8D74  4B DE 40 5D */	bl OSInitAlloc
/* 803F2FF8 003E8D78  7C 7E 1B 78 */	mr r30, r3
/* 803F2FFC 003E8D7C  4B DE 41 89 */	bl OSSetArenaLo
/* 803F3000 003E8D80  38 1E 00 1F */	addi r0, r30, 0x1f
/* 803F3004 003E8D84  57 FE 00 34 */	rlwinm r30, r31, 0, 0, 0x1a
/* 803F3008 003E8D88  7F C4 F3 78 */	mr r4, r30
/* 803F300C 003E8D8C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803F3010 003E8D90  4B DE 40 B1 */	bl OSCreateHeap
/* 803F3014 003E8D94  4B DE 40 2D */	bl OSSetCurrentHeap
/* 803F3018 003E8D98  7F C3 F3 78 */	mr r3, r30
/* 803F301C 003E8D9C  4B DE 41 69 */	bl OSSetArenaLo
lbl_803F3020:
/* 803F3020 003E8DA0  80 6D A5 90 */	lwz r3, lbl_8059E9B0-_SDA_BASE_(r13)
/* 803F3024 003E8DA4  7F A4 EB 78 */	mr r4, r29
/* 803F3028 003E8DA8  4B DE 3F A1 */	bl OSFreeToHeap
/* 803F302C 003E8DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3030 003E8DB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F3034 003E8DB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F3038 003E8DB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803F303C 003E8DBC  7C 08 03 A6 */	mtlr r0
/* 803F3040 003E8DC0  38 21 00 20 */	addi r1, r1, 0x20
/* 803F3044 003E8DC4  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global PFFAT16_ReadFATEntry
PFFAT16_ReadFATEntry:
/* 803E2CDC 003D8A5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2CE0 003D8A60  7C 08 02 A6 */	mflr r0
/* 803E2CE4 003D8A64  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2CE8 003D8A68  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2CEC 003D8A6C  48 00 E6 31 */	bl _savegpr_26
/* 803E2CF0 003D8A70  A1 23 00 18 */	lhz r9, 0x18(r3)
/* 803E2CF4 003D8A74  54 88 08 3C */	slwi r8, r4, 1
/* 803E2CF8 003D8A78  88 C3 00 20 */	lbz r6, 0x20(r3)
/* 803E2CFC 003D8A7C  7C 7F 1B 78 */	mr r31, r3
/* 803E2D00 003D8A80  A0 83 00 00 */	lhz r4, 0(r3)
/* 803E2D04 003D8A84  55 20 06 31 */	rlwinm. r0, r9, 0, 0x18, 0x18
/* 803E2D08 003D8A88  80 E3 00 28 */	lwz r7, 0x28(r3)
/* 803E2D0C 003D8A8C  7D 03 34 30 */	srw r3, r8, r6
/* 803E2D10 003D8A90  38 04 FF FF */	addi r0, r4, -1
/* 803E2D14 003D8A94  7C BA 2B 78 */	mr r26, r5
/* 803E2D18 003D8A98  7C 67 1A 14 */	add r3, r7, r3
/* 803E2D1C 003D8A9C  3B 60 00 01 */	li r27, 1
/* 803E2D20 003D8AA0  7D 00 00 38 */	and r0, r8, r0
/* 803E2D24 003D8AA4  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 803E2D28 003D8AA8  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803E2D2C 003D8AAC  41 82 00 08 */	beq lbl_803E2D34
/* 803E2D30 003D8AB0  55 3B 07 7E */	clrlwi r27, r9, 0x1d
lbl_803E2D34:
/* 803E2D34 003D8AB4  7F E3 FB 78 */	mr r3, r31
/* 803E2D38 003D8AB8  7F C5 F3 78 */	mr r5, r30
/* 803E2D3C 003D8ABC  7F A6 EB 78 */	mr r6, r29
/* 803E2D40 003D8AC0  38 81 00 08 */	addi r4, r1, 8
/* 803E2D44 003D8AC4  38 E0 00 02 */	li r7, 2
/* 803E2D48 003D8AC8  48 00 60 79 */	bl PFSEC_ReadFAT
/* 803E2D4C 003D8ACC  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803E2D50 003D8AD0  7C 7C 1B 78 */	mr r28, r3
/* 803E2D54 003D8AD4  40 82 00 50 */	bne lbl_803E2DA4
/* 803E2D58 003D8AD8  81 9F 1F C0 */	lwz r12, 0x1fc0(r31)
/* 803E2D5C 003D8ADC  2C 0C 00 00 */	cmpwi r12, 0
/* 803E2D60 003D8AE0  41 82 00 44 */	beq lbl_803E2DA4
/* 803E2D64 003D8AE4  80 7F 1F 84 */	lwz r3, 0x1f84(r31)
/* 803E2D68 003D8AE8  7D 89 03 A6 */	mtctr r12
/* 803E2D6C 003D8AEC  4E 80 04 21 */	bctrl 
/* 803E2D70 003D8AF0  2C 03 00 00 */	cmpwi r3, 0
/* 803E2D74 003D8AF4  41 82 00 48 */	beq lbl_803E2DBC
/* 803E2D78 003D8AF8  2C 03 00 01 */	cmpwi r3, 1
/* 803E2D7C 003D8AFC  40 82 00 28 */	bne lbl_803E2DA4
/* 803E2D80 003D8B00  88 1F 00 22 */	lbz r0, 0x22(r31)
/* 803E2D84 003D8B04  28 00 00 02 */	cmplwi r0, 2
/* 803E2D88 003D8B08  41 80 00 1C */	blt lbl_803E2DA4
/* 803E2D8C 003D8B0C  7C 1B 00 40 */	cmplw r27, r0
/* 803E2D90 003D8B10  40 80 00 14 */	bge lbl_803E2DA4
/* 803E2D94 003D8B14  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803E2D98 003D8B18  3B 7B 00 01 */	addi r27, r27, 1
/* 803E2D9C 003D8B1C  7F DE 02 14 */	add r30, r30, r0
/* 803E2DA0 003D8B20  48 00 00 1C */	b lbl_803E2DBC
lbl_803E2DA4:
/* 803E2DA4 003D8B24  2C 1C 00 00 */	cmpwi r28, 0
/* 803E2DA8 003D8B28  41 82 00 14 */	beq lbl_803E2DBC
/* 803E2DAC 003D8B2C  38 00 FF FF */	li r0, -1
/* 803E2DB0 003D8B30  7F 83 E3 78 */	mr r3, r28
/* 803E2DB4 003D8B34  90 1A 00 00 */	stw r0, 0(r26)
/* 803E2DB8 003D8B38  48 00 00 20 */	b lbl_803E2DD8
lbl_803E2DBC:
/* 803E2DBC 003D8B3C  2C 1C 00 00 */	cmpwi r28, 0
/* 803E2DC0 003D8B40  40 82 FF 74 */	bne lbl_803E2D34
/* 803E2DC4 003D8B44  A0 81 00 08 */	lhz r4, 8(r1)
/* 803E2DC8 003D8B48  38 60 00 00 */	li r3, 0
/* 803E2DCC 003D8B4C  54 80 44 2E */	rlwinm r0, r4, 8, 0x10, 0x17
/* 803E2DD0 003D8B50  50 80 C6 3E */	rlwimi r0, r4, 0x18, 0x18, 0x1f
/* 803E2DD4 003D8B54  90 1A 00 00 */	stw r0, 0(r26)
lbl_803E2DD8:
/* 803E2DD8 003D8B58  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2DDC 003D8B5C  48 00 E5 8D */	bl _restgpr_26
/* 803E2DE0 003D8B60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2DE4 003D8B64  7C 08 03 A6 */	mtlr r0
/* 803E2DE8 003D8B68  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2DEC 003D8B6C  4E 80 00 20 */	blr 

.global PFFAT16_WriteFATEntry
PFFAT16_WriteFATEntry:
/* 803E2DF0 003D8B70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2DF4 003D8B74  7C 08 02 A6 */	mflr r0
/* 803E2DF8 003D8B78  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2DFC 003D8B7C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2E00 003D8B80  48 00 E5 21 */	bl _savegpr_27
/* 803E2E04 003D8B84  A0 C3 00 00 */	lhz r6, 0(r3)
/* 803E2E08 003D8B88  54 89 08 3C */	slwi r9, r4, 1
/* 803E2E0C 003D8B8C  88 E3 00 20 */	lbz r7, 0x20(r3)
/* 803E2E10 003D8B90  38 01 00 08 */	addi r0, r1, 8
/* 803E2E14 003D8B94  81 03 00 28 */	lwz r8, 0x28(r3)
/* 803E2E18 003D8B98  38 86 FF FF */	addi r4, r6, -1
/* 803E2E1C 003D8B9C  7D 26 3C 30 */	srw r6, r9, r7
/* 803E2E20 003D8BA0  7C 7B 1B 78 */	mr r27, r3
/* 803E2E24 003D8BA4  7C C8 32 14 */	add r6, r8, r6
/* 803E2E28 003D8BA8  7D 23 20 38 */	and r3, r9, r4
/* 803E2E2C 003D8BAC  7C A0 07 2C */	sthbrx r5, 0, r0
/* 803E2E30 003D8BB0  54 DF 04 3E */	clrlwi r31, r6, 0x10
/* 803E2E34 003D8BB4  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 803E2E38 003D8BB8  3B 80 00 00 */	li r28, 0
/* 803E2E3C 003D8BBC  3B A0 00 00 */	li r29, 0
/* 803E2E40 003D8BC0  48 00 00 40 */	b lbl_803E2E80
lbl_803E2E44:
/* 803E2E44 003D8BC4  7F 63 DB 78 */	mr r3, r27
/* 803E2E48 003D8BC8  7F E5 FB 78 */	mr r5, r31
/* 803E2E4C 003D8BCC  7F C6 F3 78 */	mr r6, r30
/* 803E2E50 003D8BD0  38 81 00 08 */	addi r4, r1, 8
/* 803E2E54 003D8BD4  38 E0 00 02 */	li r7, 2
/* 803E2E58 003D8BD8  48 00 63 21 */	bl PFSEC_WriteFAT
/* 803E2E5C 003D8BDC  2C 03 00 00 */	cmpwi r3, 0
/* 803E2E60 003D8BE0  41 82 00 10 */	beq lbl_803E2E70
/* 803E2E64 003D8BE4  2C 1C 00 00 */	cmpwi r28, 0
/* 803E2E68 003D8BE8  40 82 00 08 */	bne lbl_803E2E70
/* 803E2E6C 003D8BEC  7C 7C 1B 78 */	mr r28, r3
lbl_803E2E70:
/* 803E2E70 003D8BF0  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 803E2E74 003D8BF4  3B BD 00 01 */	addi r29, r29, 1
/* 803E2E78 003D8BF8  7C 1F 02 14 */	add r0, r31, r0
/* 803E2E7C 003D8BFC  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_803E2E80:
/* 803E2E80 003D8C00  88 1B 00 22 */	lbz r0, 0x22(r27)
/* 803E2E84 003D8C04  7C 1D 00 40 */	cmplw r29, r0
/* 803E2E88 003D8C08  41 80 FF BC */	blt lbl_803E2E44
/* 803E2E8C 003D8C0C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2E90 003D8C10  7F 83 E3 78 */	mr r3, r28
/* 803E2E94 003D8C14  48 00 E4 D9 */	bl _restgpr_27
/* 803E2E98 003D8C18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2E9C 003D8C1C  7C 08 03 A6 */	mtlr r0
/* 803E2EA0 003D8C20  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2EA4 003D8C24  4E 80 00 20 */	blr 

.global PFFAT16_WriteFATEntryWithBuf
PFFAT16_WriteFATEntryWithBuf:
/* 803E2EA8 003D8C28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2EAC 003D8C2C  7C 08 02 A6 */	mflr r0
/* 803E2EB0 003D8C30  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2EB4 003D8C34  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2EB8 003D8C38  48 00 E4 61 */	bl _savegpr_25
/* 803E2EBC 003D8C3C  88 03 00 20 */	lbz r0, 0x20(r3)
/* 803E2EC0 003D8C40  54 87 08 3C */	slwi r7, r4, 1
/* 803E2EC4 003D8C44  80 83 00 28 */	lwz r4, 0x28(r3)
/* 803E2EC8 003D8C48  7C 7F 1B 78 */	mr r31, r3
/* 803E2ECC 003D8C4C  7C E0 04 30 */	srw r0, r7, r0
/* 803E2ED0 003D8C50  A0 63 00 00 */	lhz r3, 0(r3)
/* 803E2ED4 003D8C54  7C 84 02 14 */	add r4, r4, r0
/* 803E2ED8 003D8C58  80 06 00 18 */	lwz r0, 0x18(r6)
/* 803E2EDC 003D8C5C  54 9E 04 3E */	clrlwi r30, r4, 0x10
/* 803E2EE0 003D8C60  38 63 FF FF */	addi r3, r3, -1
/* 803E2EE4 003D8C64  7C 00 F0 40 */	cmplw r0, r30
/* 803E2EE8 003D8C68  7C B9 2B 78 */	mr r25, r5
/* 803E2EEC 003D8C6C  7C E0 18 38 */	and r0, r7, r3
/* 803E2EF0 003D8C70  7C DA 33 78 */	mr r26, r6
/* 803E2EF4 003D8C74  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803E2EF8 003D8C78  38 60 00 00 */	li r3, 0
/* 803E2EFC 003D8C7C  3B 60 00 00 */	li r27, 0
/* 803E2F00 003D8C80  41 82 00 70 */	beq lbl_803E2F70
/* 803E2F04 003D8C84  3B 80 00 00 */	li r28, 0
/* 803E2F08 003D8C88  48 00 00 40 */	b lbl_803E2F48
lbl_803E2F0C:
/* 803E2F0C 003D8C8C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803E2F10 003D8C90  7F E3 FB 78 */	mr r3, r31
/* 803E2F14 003D8C94  80 BA 00 18 */	lwz r5, 0x18(r26)
/* 803E2F18 003D8C98  38 C0 00 00 */	li r6, 0
/* 803E2F1C 003D8C9C  7C 1C 01 D6 */	mullw r0, r28, r0
/* 803E2F20 003D8CA0  80 9A 00 08 */	lwz r4, 8(r26)
/* 803E2F24 003D8CA4  A0 FF 00 00 */	lhz r7, 0(r31)
/* 803E2F28 003D8CA8  7C A5 02 14 */	add r5, r5, r0
/* 803E2F2C 003D8CAC  48 00 62 4D */	bl PFSEC_WriteFAT
/* 803E2F30 003D8CB0  2C 03 00 00 */	cmpwi r3, 0
/* 803E2F34 003D8CB4  41 82 00 10 */	beq lbl_803E2F44
/* 803E2F38 003D8CB8  2C 1B 00 00 */	cmpwi r27, 0
/* 803E2F3C 003D8CBC  40 82 00 08 */	bne lbl_803E2F44
/* 803E2F40 003D8CC0  7C 7B 1B 78 */	mr r27, r3
lbl_803E2F44:
/* 803E2F44 003D8CC4  3B 9C 00 01 */	addi r28, r28, 1
lbl_803E2F48:
/* 803E2F48 003D8CC8  88 1F 00 22 */	lbz r0, 0x22(r31)
/* 803E2F4C 003D8CCC  7C 1C 00 40 */	cmplw r28, r0
/* 803E2F50 003D8CD0  41 80 FF BC */	blt lbl_803E2F0C
/* 803E2F54 003D8CD4  93 DA 00 18 */	stw r30, 0x18(r26)
/* 803E2F58 003D8CD8  7F E3 FB 78 */	mr r3, r31
/* 803E2F5C 003D8CDC  80 9A 00 08 */	lwz r4, 8(r26)
/* 803E2F60 003D8CE0  7F C5 F3 78 */	mr r5, r30
/* 803E2F64 003D8CE4  A0 FF 00 00 */	lhz r7, 0(r31)
/* 803E2F68 003D8CE8  38 C0 00 00 */	li r6, 0
/* 803E2F6C 003D8CEC  48 00 5E 55 */	bl PFSEC_ReadFAT
lbl_803E2F70:
/* 803E2F70 003D8CF0  80 9A 00 08 */	lwz r4, 8(r26)
/* 803E2F74 003D8CF4  2C 03 00 00 */	cmpwi r3, 0
/* 803E2F78 003D8CF8  57 25 C6 3E */	rlwinm r5, r25, 0x18, 0x18, 0x1f
/* 803E2F7C 003D8CFC  7F 24 E9 AE */	stbx r25, r4, r29
/* 803E2F80 003D8D00  80 1A 00 08 */	lwz r0, 8(r26)
/* 803E2F84 003D8D04  7C 9D 02 14 */	add r4, r29, r0
/* 803E2F88 003D8D08  98 A4 00 01 */	stb r5, 1(r4)
/* 803E2F8C 003D8D0C  41 82 00 08 */	beq lbl_803E2F94
/* 803E2F90 003D8D10  7C 7B 1B 78 */	mr r27, r3
lbl_803E2F94:
/* 803E2F94 003D8D14  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2F98 003D8D18  7F 63 DB 78 */	mr r3, r27
/* 803E2F9C 003D8D1C  48 00 E3 C9 */	bl _restgpr_25
/* 803E2FA0 003D8D20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2FA4 003D8D24  7C 08 03 A6 */	mtlr r0
/* 803E2FA8 003D8D28  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2FAC 003D8D2C  4E 80 00 20 */	blr 

.global PFFAT16_ReadFATEntryWithBuf
PFFAT16_ReadFATEntryWithBuf:
/* 803E2FB0 003D8D30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2FB4 003D8D34  7C 08 02 A6 */	mflr r0
/* 803E2FB8 003D8D38  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2FBC 003D8D3C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2FC0 003D8D40  48 00 E3 59 */	bl _savegpr_25
/* 803E2FC4 003D8D44  A0 E3 00 18 */	lhz r7, 0x18(r3)
/* 803E2FC8 003D8D48  54 9F 08 3C */	slwi r31, r4, 1
/* 803E2FCC 003D8D4C  88 83 00 20 */	lbz r4, 0x20(r3)
/* 803E2FD0 003D8D50  7C 7B 1B 78 */	mr r27, r3
/* 803E2FD4 003D8D54  54 E0 06 31 */	rlwinm. r0, r7, 0, 0x18, 0x18
/* 803E2FD8 003D8D58  80 63 00 28 */	lwz r3, 0x28(r3)
/* 803E2FDC 003D8D5C  7F E0 24 30 */	srw r0, r31, r4
/* 803E2FE0 003D8D60  7C BC 2B 78 */	mr r28, r5
/* 803E2FE4 003D8D64  7C DD 33 78 */	mr r29, r6
/* 803E2FE8 003D8D68  3B C0 00 01 */	li r30, 1
/* 803E2FEC 003D8D6C  7C 03 02 14 */	add r0, r3, r0
/* 803E2FF0 003D8D70  54 1A 04 3E */	clrlwi r26, r0, 0x10
/* 803E2FF4 003D8D74  41 82 00 08 */	beq lbl_803E2FFC
/* 803E2FF8 003D8D78  54 FE 07 7E */	clrlwi r30, r7, 0x1d
lbl_803E2FFC:
/* 803E2FFC 003D8D7C  80 06 00 18 */	lwz r0, 0x18(r6)
/* 803E3000 003D8D80  7C 00 D0 40 */	cmplw r0, r26
/* 803E3004 003D8D84  41 82 00 E0 */	beq lbl_803E30E4
/* 803E3008 003D8D88  A0 06 00 02 */	lhz r0, 2(r6)
/* 803E300C 003D8D8C  28 00 00 01 */	cmplwi r0, 1
/* 803E3010 003D8D90  40 82 00 48 */	bne lbl_803E3058
/* 803E3014 003D8D94  3B 20 00 00 */	li r25, 0
/* 803E3018 003D8D98  48 00 00 30 */	b lbl_803E3048
lbl_803E301C:
/* 803E301C 003D8D9C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 803E3020 003D8DA0  57 24 04 3E */	clrlwi r4, r25, 0x10
/* 803E3024 003D8DA4  80 BD 00 18 */	lwz r5, 0x18(r29)
/* 803E3028 003D8DA8  7F 63 DB 78 */	mr r3, r27
/* 803E302C 003D8DAC  7C 04 01 D6 */	mullw r0, r4, r0
/* 803E3030 003D8DB0  80 9D 00 08 */	lwz r4, 8(r29)
/* 803E3034 003D8DB4  A0 FB 00 00 */	lhz r7, 0(r27)
/* 803E3038 003D8DB8  38 C0 00 00 */	li r6, 0
/* 803E303C 003D8DBC  7C A5 02 14 */	add r5, r5, r0
/* 803E3040 003D8DC0  48 00 61 39 */	bl PFSEC_WriteFAT
/* 803E3044 003D8DC4  3B 39 00 01 */	addi r25, r25, 1
lbl_803E3048:
/* 803E3048 003D8DC8  88 1B 00 22 */	lbz r0, 0x22(r27)
/* 803E304C 003D8DCC  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 803E3050 003D8DD0  7C 03 00 00 */	cmpw r3, r0
/* 803E3054 003D8DD4  41 80 FF C8 */	blt lbl_803E301C
lbl_803E3058:
/* 803E3058 003D8DD8  80 9D 00 08 */	lwz r4, 8(r29)
/* 803E305C 003D8DDC  7F 63 DB 78 */	mr r3, r27
/* 803E3060 003D8DE0  A0 FB 00 00 */	lhz r7, 0(r27)
/* 803E3064 003D8DE4  7F 45 D3 78 */	mr r5, r26
/* 803E3068 003D8DE8  38 C0 00 00 */	li r6, 0
/* 803E306C 003D8DEC  48 00 5D 55 */	bl PFSEC_ReadFAT
/* 803E3070 003D8DF0  2C 03 10 00 */	cmpwi r3, 0x1000
/* 803E3074 003D8DF4  7C 79 1B 78 */	mr r25, r3
/* 803E3078 003D8DF8  40 82 00 50 */	bne lbl_803E30C8
/* 803E307C 003D8DFC  81 9B 1F C0 */	lwz r12, 0x1fc0(r27)
/* 803E3080 003D8E00  2C 0C 00 00 */	cmpwi r12, 0
/* 803E3084 003D8E04  41 82 00 44 */	beq lbl_803E30C8
/* 803E3088 003D8E08  80 7B 1F 84 */	lwz r3, 0x1f84(r27)
/* 803E308C 003D8E0C  7D 89 03 A6 */	mtctr r12
/* 803E3090 003D8E10  4E 80 04 21 */	bctrl 
/* 803E3094 003D8E14  2C 03 00 00 */	cmpwi r3, 0
/* 803E3098 003D8E18  41 82 00 44 */	beq lbl_803E30DC
/* 803E309C 003D8E1C  2C 03 00 01 */	cmpwi r3, 1
/* 803E30A0 003D8E20  40 82 00 28 */	bne lbl_803E30C8
/* 803E30A4 003D8E24  88 1B 00 22 */	lbz r0, 0x22(r27)
/* 803E30A8 003D8E28  28 00 00 02 */	cmplwi r0, 2
/* 803E30AC 003D8E2C  41 80 00 1C */	blt lbl_803E30C8
/* 803E30B0 003D8E30  7C 1E 00 40 */	cmplw r30, r0
/* 803E30B4 003D8E34  40 80 00 14 */	bge lbl_803E30C8
/* 803E30B8 003D8E38  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 803E30BC 003D8E3C  3B DE 00 01 */	addi r30, r30, 1
/* 803E30C0 003D8E40  7F 5A 02 14 */	add r26, r26, r0
/* 803E30C4 003D8E44  48 00 00 18 */	b lbl_803E30DC
lbl_803E30C8:
/* 803E30C8 003D8E48  2C 19 00 00 */	cmpwi r25, 0
/* 803E30CC 003D8E4C  41 82 00 0C */	beq lbl_803E30D8
/* 803E30D0 003D8E50  7F 23 CB 78 */	mr r3, r25
/* 803E30D4 003D8E54  48 00 00 34 */	b lbl_803E3108
lbl_803E30D8:
/* 803E30D8 003D8E58  93 5D 00 18 */	stw r26, 0x18(r29)
lbl_803E30DC:
/* 803E30DC 003D8E5C  2C 19 00 00 */	cmpwi r25, 0
/* 803E30E0 003D8E60  40 82 FF 78 */	bne lbl_803E3058
lbl_803E30E4:
/* 803E30E4 003D8E64  A0 BB 00 00 */	lhz r5, 0(r27)
/* 803E30E8 003D8E68  38 60 00 00 */	li r3, 0
/* 803E30EC 003D8E6C  80 9D 00 08 */	lwz r4, 8(r29)
/* 803E30F0 003D8E70  38 05 FF FF */	addi r0, r5, -1
/* 803E30F4 003D8E74  7F E0 00 38 */	and r0, r31, r0
/* 803E30F8 003D8E78  7C 84 02 2E */	lhzx r4, r4, r0
/* 803E30FC 003D8E7C  54 80 44 2E */	rlwinm r0, r4, 8, 0x10, 0x17
/* 803E3100 003D8E80  50 80 C6 3E */	rlwimi r0, r4, 0x18, 0x18, 0x1f
/* 803E3104 003D8E84  90 1C 00 00 */	stw r0, 0(r28)
lbl_803E3108:
/* 803E3108 003D8E88  39 61 00 30 */	addi r11, r1, 0x30
/* 803E310C 003D8E8C  48 00 E2 59 */	bl _restgpr_25
/* 803E3110 003D8E90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E3114 003D8E94  7C 08 03 A6 */	mtlr r0
/* 803E3118 003D8E98  38 21 00 30 */	addi r1, r1, 0x30
/* 803E311C 003D8E9C  4E 80 00 20 */	blr 


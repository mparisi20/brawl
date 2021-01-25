.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFiPFSEC_ReadFAT
VFiPFSEC_ReadFAT:
/* 803BFFC8 003B5D48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BFFCC 003B5D4C  7C 08 02 A6 */	mflr r0
/* 803BFFD0 003B5D50  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BFFD4 003B5D54  39 61 00 30 */	addi r11, r1, 0x30
/* 803BFFD8 003B5D58  48 03 13 49 */	bl _savegpr_27
/* 803BFFDC 003B5D5C  2C 03 00 00 */	cmpwi r3, 0
/* 803BFFE0 003B5D60  7C 7B 1B 78 */	mr r27, r3
/* 803BFFE4 003B5D64  7C 9C 23 78 */	mr r28, r4
/* 803BFFE8 003B5D68  7C BD 2B 78 */	mr r29, r5
/* 803BFFEC 003B5D6C  7C DE 33 78 */	mr r30, r6
/* 803BFFF0 003B5D70  7C FF 3B 78 */	mr r31, r7
/* 803BFFF4 003B5D74  40 82 00 0C */	bne lbl_803C0000
/* 803BFFF8 003B5D78  38 60 00 0A */	li r3, 0xa
/* 803BFFFC 003B5D7C  48 00 00 6C */	b lbl_803C0068
lbl_803C0000:
/* 803C0000 003B5D80  2C 04 00 00 */	cmpwi r4, 0
/* 803C0004 003B5D84  40 82 00 0C */	bne lbl_803C0010
/* 803C0008 003B5D88  38 60 00 0A */	li r3, 0xa
/* 803C000C 003B5D8C  48 00 00 5C */	b lbl_803C0068
lbl_803C0010:
/* 803C0010 003B5D90  A0 03 18 78 */	lhz r0, 0x1878(r3)
/* 803C0014 003B5D94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C0018 003B5D98  41 82 00 10 */	beq lbl_803C0028
/* 803C001C 003B5D9C  4B FE A4 CD */	bl VFiPFDRV_IsInserted
/* 803C0020 003B5DA0  2C 03 00 00 */	cmpwi r3, 0
/* 803C0024 003B5DA4  40 82 00 0C */	bne lbl_803C0030
lbl_803C0028:
/* 803C0028 003B5DA8  38 60 00 09 */	li r3, 9
/* 803C002C 003B5DAC  48 00 00 3C */	b lbl_803C0068
lbl_803C0030:
/* 803C0030 003B5DB0  7F 63 DB 78 */	mr r3, r27
/* 803C0034 003B5DB4  7F A4 EB 78 */	mr r4, r29
/* 803C0038 003B5DB8  38 A1 00 08 */	addi r5, r1, 8
/* 803C003C 003B5DBC  4B FE FE A1 */	bl VFiPFCACHE_ReadFATPage
/* 803C0040 003B5DC0  2C 03 00 00 */	cmpwi r3, 0
/* 803C0044 003B5DC4  41 82 00 08 */	beq lbl_803C004C
/* 803C0048 003B5DC8  48 00 00 20 */	b lbl_803C0068
lbl_803C004C:
/* 803C004C 003B5DCC  80 81 00 08 */	lwz r4, 8(r1)
/* 803C0050 003B5DD0  7F 83 E3 78 */	mr r3, r28
/* 803C0054 003B5DD4  7F E5 FB 78 */	mr r5, r31
/* 803C0058 003B5DD8  80 04 00 08 */	lwz r0, 8(r4)
/* 803C005C 003B5DDC  7C 80 F2 14 */	add r4, r0, r30
/* 803C0060 003B5DE0  4B FE 95 E5 */	bl VFipf_memcpy
/* 803C0064 003B5DE4  38 60 00 00 */	li r3, 0
lbl_803C0068:
/* 803C0068 003B5DE8  39 61 00 30 */	addi r11, r1, 0x30
/* 803C006C 003B5DEC  48 03 13 01 */	bl _restgpr_27
/* 803C0070 003B5DF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C0074 003B5DF4  7C 08 03 A6 */	mtlr r0
/* 803C0078 003B5DF8  38 21 00 30 */	addi r1, r1, 0x30
/* 803C007C 003B5DFC  4E 80 00 20 */	blr 

.global VFiPFSEC_ReadData
VFiPFSEC_ReadData:
/* 803C0080 003B5E00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C0084 003B5E04  7C 08 02 A6 */	mflr r0
/* 803C0088 003B5E08  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C008C 003B5E0C  39 61 00 30 */	addi r11, r1, 0x30
/* 803C0090 003B5E10  48 03 12 89 */	bl _savegpr_25
/* 803C0094 003B5E14  38 00 00 00 */	li r0, 0
/* 803C0098 003B5E18  2C 03 00 00 */	cmpwi r3, 0
/* 803C009C 003B5E1C  90 08 00 00 */	stw r0, 0(r8)
/* 803C00A0 003B5E20  7C 7A 1B 78 */	mr r26, r3
/* 803C00A4 003B5E24  7C 9B 23 78 */	mr r27, r4
/* 803C00A8 003B5E28  7C BC 2B 78 */	mr r28, r5
/* 803C00AC 003B5E2C  7C D9 33 78 */	mr r25, r6
/* 803C00B0 003B5E30  7C FF 3B 78 */	mr r31, r7
/* 803C00B4 003B5E34  7D 1D 43 78 */	mr r29, r8
/* 803C00B8 003B5E38  7D 3E 4B 78 */	mr r30, r9
/* 803C00BC 003B5E3C  40 82 00 0C */	bne lbl_803C00C8
/* 803C00C0 003B5E40  38 60 00 0A */	li r3, 0xa
/* 803C00C4 003B5E44  48 00 02 84 */	b lbl_803C0348
lbl_803C00C8:
/* 803C00C8 003B5E48  2C 04 00 00 */	cmpwi r4, 0
/* 803C00CC 003B5E4C  40 82 00 0C */	bne lbl_803C00D8
/* 803C00D0 003B5E50  38 60 00 0A */	li r3, 0xa
/* 803C00D4 003B5E54  48 00 02 74 */	b lbl_803C0348
lbl_803C00D8:
/* 803C00D8 003B5E58  A0 03 18 78 */	lhz r0, 0x1878(r3)
/* 803C00DC 003B5E5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C00E0 003B5E60  41 82 00 10 */	beq lbl_803C00F0
/* 803C00E4 003B5E64  4B FE A4 05 */	bl VFiPFDRV_IsInserted
/* 803C00E8 003B5E68  2C 03 00 00 */	cmpwi r3, 0
/* 803C00EC 003B5E6C  40 82 00 0C */	bne lbl_803C00F8
lbl_803C00F0:
/* 803C00F0 003B5E70  38 60 00 09 */	li r3, 9
/* 803C00F4 003B5E74  48 00 02 54 */	b lbl_803C0348
lbl_803C00F8:
/* 803C00F8 003B5E78  2C 99 00 00 */	cmpwi cr1, r25, 0
/* 803C00FC 003B5E7C  40 86 00 10 */	bne cr1, lbl_803C010C
/* 803C0100 003B5E80  A0 7A 00 00 */	lhz r3, 0(r26)
/* 803C0104 003B5E84  7C 1F 18 40 */	cmplw r31, r3
/* 803C0108 003B5E88  40 80 00 44 */	bge lbl_803C014C
lbl_803C010C:
/* 803C010C 003B5E8C  7F 43 D3 78 */	mr r3, r26
/* 803C0110 003B5E90  7F 84 E3 78 */	mr r4, r28
/* 803C0114 003B5E94  7F C6 F3 78 */	mr r6, r30
/* 803C0118 003B5E98  38 A1 00 0C */	addi r5, r1, 0xc
/* 803C011C 003B5E9C  4B FE FE 01 */	bl VFiPFCACHE_ReadDataPage
/* 803C0120 003B5EA0  2C 03 00 00 */	cmpwi r3, 0
/* 803C0124 003B5EA4  41 82 00 08 */	beq lbl_803C012C
/* 803C0128 003B5EA8  48 00 02 20 */	b lbl_803C0348
lbl_803C012C:
/* 803C012C 003B5EAC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C0130 003B5EB0  7F 63 DB 78 */	mr r3, r27
/* 803C0134 003B5EB4  7F E5 FB 78 */	mr r5, r31
/* 803C0138 003B5EB8  80 04 00 08 */	lwz r0, 8(r4)
/* 803C013C 003B5EBC  7C 80 CA 14 */	add r4, r0, r25
/* 803C0140 003B5EC0  4B FE 95 05 */	bl VFipf_memcpy
/* 803C0144 003B5EC4  93 FD 00 00 */	stw r31, 0(r29)
/* 803C0148 003B5EC8  48 00 01 FC */	b lbl_803C0344
lbl_803C014C:
/* 803C014C 003B5ECC  40 86 00 6C */	bne cr1, lbl_803C01B8
/* 803C0150 003B5ED0  38 03 FF FF */	addi r0, r3, -1
/* 803C0154 003B5ED4  7F E0 00 39 */	and. r0, r31, r0
/* 803C0158 003B5ED8  40 82 00 60 */	bne lbl_803C01B8
/* 803C015C 003B5EDC  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0160 003B5EE0  7F 43 D3 78 */	mr r3, r26
/* 803C0164 003B5EE4  7F 64 DB 78 */	mr r4, r27
/* 803C0168 003B5EE8  7F 85 E3 78 */	mr r5, r28
/* 803C016C 003B5EEC  7F E6 04 30 */	srw r6, r31, r0
/* 803C0170 003B5EF0  38 E1 00 08 */	addi r7, r1, 8
/* 803C0174 003B5EF4  4B FE FE 39 */	bl VFiPFCACHE_ReadDataNumSector
/* 803C0178 003B5EF8  2C 03 00 00 */	cmpwi r3, 0
/* 803C017C 003B5EFC  41 82 00 08 */	beq lbl_803C0184
/* 803C0180 003B5F00  48 00 01 C8 */	b lbl_803C0348
lbl_803C0184:
/* 803C0184 003B5F04  80 61 00 08 */	lwz r3, 8(r1)
/* 803C0188 003B5F08  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C018C 003B5F0C  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C0190 003B5F10  7C 60 00 30 */	slw r0, r3, r0
/* 803C0194 003B5F14  7C 04 02 14 */	add r0, r4, r0
/* 803C0198 003B5F18  90 1D 00 00 */	stw r0, 0(r29)
/* 803C019C 003B5F1C  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C01A0 003B5F20  80 61 00 08 */	lwz r3, 8(r1)
/* 803C01A4 003B5F24  7F E0 04 30 */	srw r0, r31, r0
/* 803C01A8 003B5F28  7C 03 00 40 */	cmplw r3, r0
/* 803C01AC 003B5F2C  41 82 01 98 */	beq lbl_803C0344
/* 803C01B0 003B5F30  38 60 00 11 */	li r3, 0x11
/* 803C01B4 003B5F34  48 00 01 94 */	b lbl_803C0348
lbl_803C01B8:
/* 803C01B8 003B5F38  2C 19 00 00 */	cmpwi r25, 0
/* 803C01BC 003B5F3C  40 82 01 80 */	bne lbl_803C033C
/* 803C01C0 003B5F40  7F 43 D3 78 */	mr r3, r26
/* 803C01C4 003B5F44  7F 84 E3 78 */	mr r4, r28
/* 803C01C8 003B5F48  4B FE FF 6D */	bl VFiPFCACHE_SearchDataCache
/* 803C01CC 003B5F4C  2C 03 00 00 */	cmpwi r3, 0
/* 803C01D0 003B5F50  90 61 00 0C */	stw r3, 0xc(r1)
/* 803C01D4 003B5F54  41 82 00 80 */	beq lbl_803C0254
/* 803C01D8 003B5F58  80 83 00 18 */	lwz r4, 0x18(r3)
/* 803C01DC 003B5F5C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803C01E0 003B5F60  88 BA 00 20 */	lbz r5, 0x20(r26)
/* 803C01E4 003B5F64  7C 04 02 14 */	add r0, r4, r0
/* 803C01E8 003B5F68  7F 3C 00 50 */	subf r25, r28, r0
/* 803C01EC 003B5F6C  7F E0 2C 30 */	srw r0, r31, r5
/* 803C01F0 003B5F70  7C 19 00 40 */	cmplw r25, r0
/* 803C01F4 003B5F74  41 81 00 3C */	bgt lbl_803C0230
/* 803C01F8 003B5F78  80 83 00 08 */	lwz r4, 8(r3)
/* 803C01FC 003B5F7C  7F 63 DB 78 */	mr r3, r27
/* 803C0200 003B5F80  7F 25 28 30 */	slw r5, r25, r5
/* 803C0204 003B5F84  4B FE 94 41 */	bl VFipf_memcpy
/* 803C0208 003B5F88  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C020C 003B5F8C  7F 9C CA 14 */	add r28, r28, r25
/* 803C0210 003B5F90  80 7D 00 00 */	lwz r3, 0(r29)
/* 803C0214 003B5F94  7F 20 00 30 */	slw r0, r25, r0
/* 803C0218 003B5F98  7C 03 02 14 */	add r0, r3, r0
/* 803C021C 003B5F9C  90 1D 00 00 */	stw r0, 0(r29)
/* 803C0220 003B5FA0  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0224 003B5FA4  7F 20 00 30 */	slw r0, r25, r0
/* 803C0228 003B5FA8  7F E0 F8 50 */	subf r31, r0, r31
/* 803C022C 003B5FAC  48 00 00 28 */	b lbl_803C0254
lbl_803C0230:
/* 803C0230 003B5FB0  40 81 00 24 */	ble lbl_803C0254
/* 803C0234 003B5FB4  80 83 00 08 */	lwz r4, 8(r3)
/* 803C0238 003B5FB8  7F 63 DB 78 */	mr r3, r27
/* 803C023C 003B5FBC  7F E5 FB 78 */	mr r5, r31
/* 803C0240 003B5FC0  4B FE 94 05 */	bl VFipf_memcpy
/* 803C0244 003B5FC4  80 1D 00 00 */	lwz r0, 0(r29)
/* 803C0248 003B5FC8  7C 00 FA 14 */	add r0, r0, r31
/* 803C024C 003B5FCC  3B E0 00 00 */	li r31, 0
/* 803C0250 003B5FD0  90 1D 00 00 */	stw r0, 0(r29)
lbl_803C0254:
/* 803C0254 003B5FD4  2C 1F 00 00 */	cmpwi r31, 0
/* 803C0258 003B5FD8  41 82 00 EC */	beq lbl_803C0344
/* 803C025C 003B5FDC  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0260 003B5FE0  80 7A 16 04 */	lwz r3, 0x1604(r26)
/* 803C0264 003B5FE4  7F FF 04 30 */	srw r31, r31, r0
/* 803C0268 003B5FE8  7C 9C FA 14 */	add r4, r28, r31
/* 803C026C 003B5FEC  7C 04 1B 96 */	divwu r0, r4, r3
/* 803C0270 003B5FF0  7C 00 19 D6 */	mullw r0, r0, r3
/* 803C0274 003B5FF4  7C 60 20 50 */	subf r3, r0, r4
/* 803C0278 003B5FF8  7C 1F 18 40 */	cmplw r31, r3
/* 803C027C 003B5FFC  40 81 00 64 */	ble lbl_803C02E0
/* 803C0280 003B6000  80 1D 00 00 */	lwz r0, 0(r29)
/* 803C0284 003B6004  7F 23 F8 50 */	subf r25, r3, r31
/* 803C0288 003B6008  7F 43 D3 78 */	mr r3, r26
/* 803C028C 003B600C  7F 85 E3 78 */	mr r5, r28
/* 803C0290 003B6010  7F 26 CB 78 */	mr r6, r25
/* 803C0294 003B6014  7C 9B 02 14 */	add r4, r27, r0
/* 803C0298 003B6018  38 E1 00 08 */	addi r7, r1, 8
/* 803C029C 003B601C  4B FE FD 11 */	bl VFiPFCACHE_ReadDataNumSector
/* 803C02A0 003B6020  2C 03 00 00 */	cmpwi r3, 0
/* 803C02A4 003B6024  41 82 00 08 */	beq lbl_803C02AC
/* 803C02A8 003B6028  48 00 00 A0 */	b lbl_803C0348
lbl_803C02AC:
/* 803C02AC 003B602C  80 61 00 08 */	lwz r3, 8(r1)
/* 803C02B0 003B6030  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C02B4 003B6034  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C02B8 003B6038  7C 60 00 30 */	slw r0, r3, r0
/* 803C02BC 003B603C  7C 04 02 14 */	add r0, r4, r0
/* 803C02C0 003B6040  90 1D 00 00 */	stw r0, 0(r29)
/* 803C02C4 003B6044  80 01 00 08 */	lwz r0, 8(r1)
/* 803C02C8 003B6048  7C 00 C8 40 */	cmplw r0, r25
/* 803C02CC 003B604C  41 82 00 0C */	beq lbl_803C02D8
/* 803C02D0 003B6050  38 60 00 11 */	li r3, 0x11
/* 803C02D4 003B6054  48 00 00 74 */	b lbl_803C0348
lbl_803C02D8:
/* 803C02D8 003B6058  7F 9C CA 14 */	add r28, r28, r25
/* 803C02DC 003B605C  7F F9 F8 50 */	subf r31, r25, r31
lbl_803C02E0:
/* 803C02E0 003B6060  2C 1F 00 00 */	cmpwi r31, 0
/* 803C02E4 003B6064  41 82 00 60 */	beq lbl_803C0344
/* 803C02E8 003B6068  7F 43 D3 78 */	mr r3, r26
/* 803C02EC 003B606C  7F 84 E3 78 */	mr r4, r28
/* 803C02F0 003B6070  7F C6 F3 78 */	mr r6, r30
/* 803C02F4 003B6074  38 A1 00 0C */	addi r5, r1, 0xc
/* 803C02F8 003B6078  4B FE FC 25 */	bl VFiPFCACHE_ReadDataPage
/* 803C02FC 003B607C  2C 03 00 00 */	cmpwi r3, 0
/* 803C0300 003B6080  41 82 00 08 */	beq lbl_803C0308
/* 803C0304 003B6084  48 00 00 44 */	b lbl_803C0348
lbl_803C0308:
/* 803C0308 003B6088  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803C030C 003B608C  80 BD 00 00 */	lwz r5, 0(r29)
/* 803C0310 003B6090  80 83 00 08 */	lwz r4, 8(r3)
/* 803C0314 003B6094  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0318 003B6098  7C 7B 2A 14 */	add r3, r27, r5
/* 803C031C 003B609C  7F E5 00 30 */	slw r5, r31, r0
/* 803C0320 003B60A0  4B FE 93 25 */	bl VFipf_memcpy
/* 803C0324 003B60A4  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0328 003B60A8  80 7D 00 00 */	lwz r3, 0(r29)
/* 803C032C 003B60AC  7F E0 00 30 */	slw r0, r31, r0
/* 803C0330 003B60B0  7C 03 02 14 */	add r0, r3, r0
/* 803C0334 003B60B4  90 1D 00 00 */	stw r0, 0(r29)
/* 803C0338 003B60B8  48 00 00 0C */	b lbl_803C0344
lbl_803C033C:
/* 803C033C 003B60BC  38 60 00 0A */	li r3, 0xa
/* 803C0340 003B60C0  48 00 00 08 */	b lbl_803C0348
lbl_803C0344:
/* 803C0344 003B60C4  38 60 00 00 */	li r3, 0
lbl_803C0348:
/* 803C0348 003B60C8  39 61 00 30 */	addi r11, r1, 0x30
/* 803C034C 003B60CC  48 03 10 19 */	bl _restgpr_25
/* 803C0350 003B60D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C0354 003B60D4  7C 08 03 A6 */	mtlr r0
/* 803C0358 003B60D8  38 21 00 30 */	addi r1, r1, 0x30
/* 803C035C 003B60DC  4E 80 00 20 */	blr 

.global VFiPFSEC_WriteFAT
VFiPFSEC_WriteFAT:
/* 803C0360 003B60E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C0364 003B60E4  7C 08 02 A6 */	mflr r0
/* 803C0368 003B60E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C036C 003B60EC  39 61 00 30 */	addi r11, r1, 0x30
/* 803C0370 003B60F0  48 03 0F B1 */	bl _savegpr_27
/* 803C0374 003B60F4  2C 03 00 00 */	cmpwi r3, 0
/* 803C0378 003B60F8  7C 7B 1B 78 */	mr r27, r3
/* 803C037C 003B60FC  7C 9C 23 78 */	mr r28, r4
/* 803C0380 003B6100  7C BD 2B 78 */	mr r29, r5
/* 803C0384 003B6104  7C DE 33 78 */	mr r30, r6
/* 803C0388 003B6108  7C FF 3B 78 */	mr r31, r7
/* 803C038C 003B610C  40 82 00 0C */	bne lbl_803C0398
/* 803C0390 003B6110  38 60 00 0A */	li r3, 0xa
/* 803C0394 003B6114  48 00 00 94 */	b lbl_803C0428
lbl_803C0398:
/* 803C0398 003B6118  2C 04 00 00 */	cmpwi r4, 0
/* 803C039C 003B611C  40 82 00 0C */	bne lbl_803C03A8
/* 803C03A0 003B6120  38 60 00 0A */	li r3, 0xa
/* 803C03A4 003B6124  48 00 00 84 */	b lbl_803C0428
lbl_803C03A8:
/* 803C03A8 003B6128  A0 03 18 78 */	lhz r0, 0x1878(r3)
/* 803C03AC 003B612C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C03B0 003B6130  41 82 00 20 */	beq lbl_803C03D0
/* 803C03B4 003B6134  4B FE A1 35 */	bl VFiPFDRV_IsInserted
/* 803C03B8 003B6138  2C 03 00 00 */	cmpwi r3, 0
/* 803C03BC 003B613C  41 82 00 14 */	beq lbl_803C03D0
/* 803C03C0 003B6140  7F 63 DB 78 */	mr r3, r27
/* 803C03C4 003B6144  4B FE A1 7D */	bl VFiPFDRV_IsWProtected
/* 803C03C8 003B6148  2C 03 00 00 */	cmpwi r3, 0
/* 803C03CC 003B614C  41 82 00 0C */	beq lbl_803C03D8
lbl_803C03D0:
/* 803C03D0 003B6150  38 60 00 09 */	li r3, 9
/* 803C03D4 003B6154  48 00 00 54 */	b lbl_803C0428
lbl_803C03D8:
/* 803C03D8 003B6158  7F 63 DB 78 */	mr r3, r27
/* 803C03DC 003B615C  7F A4 EB 78 */	mr r4, r29
/* 803C03E0 003B6160  38 A1 00 08 */	addi r5, r1, 8
/* 803C03E4 003B6164  4B FE FA F9 */	bl VFiPFCACHE_ReadFATPage
/* 803C03E8 003B6168  2C 03 00 00 */	cmpwi r3, 0
/* 803C03EC 003B616C  41 82 00 08 */	beq lbl_803C03F4
/* 803C03F0 003B6170  48 00 00 38 */	b lbl_803C0428
lbl_803C03F4:
/* 803C03F4 003B6174  80 61 00 08 */	lwz r3, 8(r1)
/* 803C03F8 003B6178  7F 84 E3 78 */	mr r4, r28
/* 803C03FC 003B617C  7F E5 FB 78 */	mr r5, r31
/* 803C0400 003B6180  80 03 00 08 */	lwz r0, 8(r3)
/* 803C0404 003B6184  7C 60 F2 14 */	add r3, r0, r30
/* 803C0408 003B6188  4B FE 92 3D */	bl VFipf_memcpy
/* 803C040C 003B618C  80 81 00 08 */	lwz r4, 8(r1)
/* 803C0410 003B6190  7F 63 DB 78 */	mr r3, r27
/* 803C0414 003B6194  4B FE FB F9 */	bl VFiPFCACHE_WriteFATPage
/* 803C0418 003B6198  7C 03 00 D0 */	neg r0, r3
/* 803C041C 003B619C  7C 00 1B 78 */	or r0, r0, r3
/* 803C0420 003B61A0  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 803C0424 003B61A4  7C 63 00 38 */	and r3, r3, r0
lbl_803C0428:
/* 803C0428 003B61A8  39 61 00 30 */	addi r11, r1, 0x30
/* 803C042C 003B61AC  48 03 0F 41 */	bl _restgpr_27
/* 803C0430 003B61B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C0434 003B61B4  7C 08 03 A6 */	mtlr r0
/* 803C0438 003B61B8  38 21 00 30 */	addi r1, r1, 0x30
/* 803C043C 003B61BC  4E 80 00 20 */	blr 

.global VFiPFSEC_WriteData
VFiPFSEC_WriteData:
/* 803C0440 003B61C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C0444 003B61C4  7C 08 02 A6 */	mflr r0
/* 803C0448 003B61C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C044C 003B61CC  39 61 00 30 */	addi r11, r1, 0x30
/* 803C0450 003B61D0  48 03 0E C9 */	bl _savegpr_25
/* 803C0454 003B61D4  38 00 00 00 */	li r0, 0
/* 803C0458 003B61D8  2C 03 00 00 */	cmpwi r3, 0
/* 803C045C 003B61DC  90 08 00 00 */	stw r0, 0(r8)
/* 803C0460 003B61E0  7C 7A 1B 78 */	mr r26, r3
/* 803C0464 003B61E4  7C 9B 23 78 */	mr r27, r4
/* 803C0468 003B61E8  7C BC 2B 78 */	mr r28, r5
/* 803C046C 003B61EC  7C D9 33 78 */	mr r25, r6
/* 803C0470 003B61F0  7C FF 3B 78 */	mr r31, r7
/* 803C0474 003B61F4  7D 1D 43 78 */	mr r29, r8
/* 803C0478 003B61F8  7D 3E 4B 78 */	mr r30, r9
/* 803C047C 003B61FC  40 82 00 0C */	bne lbl_803C0488
/* 803C0480 003B6200  38 60 00 0A */	li r3, 0xa
/* 803C0484 003B6204  48 00 02 1C */	b lbl_803C06A0
lbl_803C0488:
/* 803C0488 003B6208  2C 04 00 00 */	cmpwi r4, 0
/* 803C048C 003B620C  40 82 00 0C */	bne lbl_803C0498
/* 803C0490 003B6210  38 60 00 0A */	li r3, 0xa
/* 803C0494 003B6214  48 00 02 0C */	b lbl_803C06A0
lbl_803C0498:
/* 803C0498 003B6218  A0 03 18 78 */	lhz r0, 0x1878(r3)
/* 803C049C 003B621C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C04A0 003B6220  41 82 00 20 */	beq lbl_803C04C0
/* 803C04A4 003B6224  4B FE A0 45 */	bl VFiPFDRV_IsInserted
/* 803C04A8 003B6228  2C 03 00 00 */	cmpwi r3, 0
/* 803C04AC 003B622C  41 82 00 14 */	beq lbl_803C04C0
/* 803C04B0 003B6230  7F 43 D3 78 */	mr r3, r26
/* 803C04B4 003B6234  4B FE A0 8D */	bl VFiPFDRV_IsWProtected
/* 803C04B8 003B6238  2C 03 00 00 */	cmpwi r3, 0
/* 803C04BC 003B623C  41 82 00 0C */	beq lbl_803C04C8
lbl_803C04C0:
/* 803C04C0 003B6240  38 60 00 09 */	li r3, 9
/* 803C04C4 003B6244  48 00 01 DC */	b lbl_803C06A0
lbl_803C04C8:
/* 803C04C8 003B6248  2C 99 00 00 */	cmpwi cr1, r25, 0
/* 803C04CC 003B624C  40 86 00 10 */	bne cr1, lbl_803C04DC
/* 803C04D0 003B6250  A0 7A 00 00 */	lhz r3, 0(r26)
/* 803C04D4 003B6254  7C 1F 18 40 */	cmplw r31, r3
/* 803C04D8 003B6258  40 80 00 60 */	bge lbl_803C0538
lbl_803C04DC:
/* 803C04DC 003B625C  7F 43 D3 78 */	mr r3, r26
/* 803C04E0 003B6260  7F 84 E3 78 */	mr r4, r28
/* 803C04E4 003B6264  7F C6 F3 78 */	mr r6, r30
/* 803C04E8 003B6268  38 A1 00 0C */	addi r5, r1, 0xc
/* 803C04EC 003B626C  4B FE FA 79 */	bl VFiPFCACHE_ReadDataPageAndFlushIfNeeded
/* 803C04F0 003B6270  2C 03 00 00 */	cmpwi r3, 0
/* 803C04F4 003B6274  41 82 00 08 */	beq lbl_803C04FC
/* 803C04F8 003B6278  48 00 01 A8 */	b lbl_803C06A0
lbl_803C04FC:
/* 803C04FC 003B627C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803C0500 003B6280  7F 64 DB 78 */	mr r4, r27
/* 803C0504 003B6284  7F E5 FB 78 */	mr r5, r31
/* 803C0508 003B6288  80 03 00 08 */	lwz r0, 8(r3)
/* 803C050C 003B628C  7C 60 CA 14 */	add r3, r0, r25
/* 803C0510 003B6290  4B FE 91 35 */	bl VFipf_memcpy
/* 803C0514 003B6294  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C0518 003B6298  7F 43 D3 78 */	mr r3, r26
/* 803C051C 003B629C  7F C5 F3 78 */	mr r5, r30
/* 803C0520 003B62A0  4B FE FB 29 */	bl VFiPFCACHE_WriteDataPage
/* 803C0524 003B62A4  2C 03 00 00 */	cmpwi r3, 0
/* 803C0528 003B62A8  41 82 00 08 */	beq lbl_803C0530
/* 803C052C 003B62AC  48 00 01 74 */	b lbl_803C06A0
lbl_803C0530:
/* 803C0530 003B62B0  93 FD 00 00 */	stw r31, 0(r29)
/* 803C0534 003B62B4  48 00 01 68 */	b lbl_803C069C
lbl_803C0538:
/* 803C0538 003B62B8  40 86 00 64 */	bne cr1, lbl_803C059C
/* 803C053C 003B62BC  38 03 FF FF */	addi r0, r3, -1
/* 803C0540 003B62C0  7F E0 00 39 */	and. r0, r31, r0
/* 803C0544 003B62C4  40 82 00 58 */	bne lbl_803C059C
/* 803C0548 003B62C8  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C054C 003B62CC  7F 43 D3 78 */	mr r3, r26
/* 803C0550 003B62D0  7F 64 DB 78 */	mr r4, r27
/* 803C0554 003B62D4  7F 85 E3 78 */	mr r5, r28
/* 803C0558 003B62D8  7F E6 04 30 */	srw r6, r31, r0
/* 803C055C 003B62DC  38 E1 00 08 */	addi r7, r1, 8
/* 803C0560 003B62E0  4B FE FB 75 */	bl VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded
/* 803C0564 003B62E4  2C 03 00 00 */	cmpwi r3, 0
/* 803C0568 003B62E8  41 82 00 08 */	beq lbl_803C0570
/* 803C056C 003B62EC  48 00 01 34 */	b lbl_803C06A0
lbl_803C0570:
/* 803C0570 003B62F0  80 61 00 08 */	lwz r3, 8(r1)
/* 803C0574 003B62F4  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0578 003B62F8  7C 60 00 30 */	slw r0, r3, r0
/* 803C057C 003B62FC  90 1D 00 00 */	stw r0, 0(r29)
/* 803C0580 003B6300  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0584 003B6304  80 61 00 08 */	lwz r3, 8(r1)
/* 803C0588 003B6308  7F E0 04 30 */	srw r0, r31, r0
/* 803C058C 003B630C  7C 03 00 40 */	cmplw r3, r0
/* 803C0590 003B6310  41 82 01 0C */	beq lbl_803C069C
/* 803C0594 003B6314  38 60 00 11 */	li r3, 0x11
/* 803C0598 003B6318  48 00 01 08 */	b lbl_803C06A0
lbl_803C059C:
/* 803C059C 003B631C  2C 19 00 00 */	cmpwi r25, 0
/* 803C05A0 003B6320  40 82 00 F4 */	bne lbl_803C0694
/* 803C05A4 003B6324  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C05A8 003B6328  80 7A 16 04 */	lwz r3, 0x1604(r26)
/* 803C05AC 003B632C  7F FF 04 30 */	srw r31, r31, r0
/* 803C05B0 003B6330  7C 9C FA 14 */	add r4, r28, r31
/* 803C05B4 003B6334  7C 04 1B 96 */	divwu r0, r4, r3
/* 803C05B8 003B6338  7C 00 19 D6 */	mullw r0, r0, r3
/* 803C05BC 003B633C  7C 00 20 50 */	subf r0, r0, r4
/* 803C05C0 003B6340  7C 1F 00 40 */	cmplw r31, r0
/* 803C05C4 003B6344  40 81 00 58 */	ble lbl_803C061C
/* 803C05C8 003B6348  7F 20 F8 50 */	subf r25, r0, r31
/* 803C05CC 003B634C  7F 43 D3 78 */	mr r3, r26
/* 803C05D0 003B6350  7F 64 DB 78 */	mr r4, r27
/* 803C05D4 003B6354  7F 85 E3 78 */	mr r5, r28
/* 803C05D8 003B6358  7F 26 CB 78 */	mr r6, r25
/* 803C05DC 003B635C  38 E1 00 08 */	addi r7, r1, 8
/* 803C05E0 003B6360  4B FE FA F5 */	bl VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded
/* 803C05E4 003B6364  2C 03 00 00 */	cmpwi r3, 0
/* 803C05E8 003B6368  41 82 00 08 */	beq lbl_803C05F0
/* 803C05EC 003B636C  48 00 00 B4 */	b lbl_803C06A0
lbl_803C05F0:
/* 803C05F0 003B6370  80 61 00 08 */	lwz r3, 8(r1)
/* 803C05F4 003B6374  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C05F8 003B6378  7C 60 00 30 */	slw r0, r3, r0
/* 803C05FC 003B637C  90 1D 00 00 */	stw r0, 0(r29)
/* 803C0600 003B6380  80 01 00 08 */	lwz r0, 8(r1)
/* 803C0604 003B6384  7C 00 C8 40 */	cmplw r0, r25
/* 803C0608 003B6388  41 82 00 0C */	beq lbl_803C0614
/* 803C060C 003B638C  38 60 00 11 */	li r3, 0x11
/* 803C0610 003B6390  48 00 00 90 */	b lbl_803C06A0
lbl_803C0614:
/* 803C0614 003B6394  7F 9C CA 14 */	add r28, r28, r25
/* 803C0618 003B6398  7F F9 F8 50 */	subf r31, r25, r31
lbl_803C061C:
/* 803C061C 003B639C  2C 1F 00 00 */	cmpwi r31, 0
/* 803C0620 003B63A0  41 82 00 7C */	beq lbl_803C069C
/* 803C0624 003B63A4  7F 43 D3 78 */	mr r3, r26
/* 803C0628 003B63A8  7F 84 E3 78 */	mr r4, r28
/* 803C062C 003B63AC  7F C6 F3 78 */	mr r6, r30
/* 803C0630 003B63B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 803C0634 003B63B4  4B FE F9 31 */	bl VFiPFCACHE_ReadDataPageAndFlushIfNeeded
/* 803C0638 003B63B8  2C 03 00 00 */	cmpwi r3, 0
/* 803C063C 003B63BC  41 82 00 08 */	beq lbl_803C0644
/* 803C0640 003B63C0  48 00 00 60 */	b lbl_803C06A0
lbl_803C0644:
/* 803C0644 003B63C4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803C0648 003B63C8  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C064C 003B63CC  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0650 003B63D0  80 63 00 08 */	lwz r3, 8(r3)
/* 803C0654 003B63D4  7C 9B 22 14 */	add r4, r27, r4
/* 803C0658 003B63D8  7F E5 00 30 */	slw r5, r31, r0
/* 803C065C 003B63DC  4B FE 8F E9 */	bl VFipf_memcpy
/* 803C0660 003B63E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C0664 003B63E4  7F 43 D3 78 */	mr r3, r26
/* 803C0668 003B63E8  7F C5 F3 78 */	mr r5, r30
/* 803C066C 003B63EC  4B FE F9 DD */	bl VFiPFCACHE_WriteDataPage
/* 803C0670 003B63F0  2C 03 00 00 */	cmpwi r3, 0
/* 803C0674 003B63F4  41 82 00 08 */	beq lbl_803C067C
/* 803C0678 003B63F8  48 00 00 28 */	b lbl_803C06A0
lbl_803C067C:
/* 803C067C 003B63FC  88 1A 00 20 */	lbz r0, 0x20(r26)
/* 803C0680 003B6400  80 7D 00 00 */	lwz r3, 0(r29)
/* 803C0684 003B6404  7F E0 00 30 */	slw r0, r31, r0
/* 803C0688 003B6408  7C 03 02 14 */	add r0, r3, r0
/* 803C068C 003B640C  90 1D 00 00 */	stw r0, 0(r29)
/* 803C0690 003B6410  48 00 00 0C */	b lbl_803C069C
lbl_803C0694:
/* 803C0694 003B6414  38 60 00 0A */	li r3, 0xa
/* 803C0698 003B6418  48 00 00 08 */	b lbl_803C06A0
lbl_803C069C:
/* 803C069C 003B641C  38 60 00 00 */	li r3, 0
lbl_803C06A0:
/* 803C06A0 003B6420  39 61 00 30 */	addi r11, r1, 0x30
/* 803C06A4 003B6424  48 03 0C C1 */	bl _restgpr_25
/* 803C06A8 003B6428  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C06AC 003B642C  7C 08 03 A6 */	mtlr r0
/* 803C06B0 003B6430  38 21 00 30 */	addi r1, r1, 0x30
/* 803C06B4 003B6434  4E 80 00 20 */	blr 


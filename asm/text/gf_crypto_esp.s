.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfCryptoESP$7__ct
gfCryptoESP$7__ct:
/* 8003CFD0 00032D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003CFD4 00032D54  7C 08 02 A6 */	mflr r0
/* 8003CFD8 00032D58  3C 80 80 42 */	lis r4, lbl_804208B0@ha
/* 8003CFDC 00032D5C  38 A0 00 0C */	li r5, 0xc
/* 8003CFE0 00032D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003CFE4 00032D64  38 84 08 B0 */	addi r4, r4, lbl_804208B0@l
/* 8003CFE8 00032D68  38 C0 10 00 */	li r6, 0x1000
/* 8003CFEC 00032D6C  38 E0 00 3A */	li r7, 0x3a
/* 8003CFF0 00032D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003CFF4 00032D74  7C 7F 1B 78 */	mr r31, r3
/* 8003CFF8 00032D78  90 83 00 00 */	stw r4, 0(r3)
/* 8003CFFC 00032D7C  7F E4 FB 78 */	mr r4, r31
/* 8003D000 00032D80  4B FF 26 29 */	bl gfThread$7createThread
/* 8003D004 00032D84  3C A0 80 42 */	lis r5, lbl_80423928@ha
/* 8003D008 00032D88  3C 80 80 42 */	lis r4, lbl_80423918@ha
/* 8003D00C 00032D8C  38 A5 39 28 */	addi r5, r5, lbl_80423928@l
/* 8003D010 00032D90  38 7F 03 40 */	addi r3, r31, 0x340
/* 8003D014 00032D94  90 BF 00 00 */	stw r5, 0(r31)
/* 8003D018 00032D98  38 84 39 18 */	addi r4, r4, lbl_80423918@l
/* 8003D01C 00032D9C  38 A0 00 10 */	li r5, 0x10
/* 8003D020 00032DA0  4B FC 73 19 */	bl func_80004338
/* 8003D024 00032DA4  38 00 00 00 */	li r0, 0
/* 8003D028 00032DA8  7F E3 FB 78 */	mr r3, r31
/* 8003D02C 00032DAC  98 1F 03 60 */	stb r0, 0x360(r31)
/* 8003D030 00032DB0  90 1F 03 64 */	stw r0, 0x364(r31)
/* 8003D034 00032DB4  90 1F 03 68 */	stw r0, 0x368(r31)
/* 8003D038 00032DB8  98 1F 03 70 */	stb r0, 0x370(r31)
/* 8003D03C 00032DBC  90 1F 03 5C */	stw r0, 0x35c(r31)
/* 8003D040 00032DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003D044 00032DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D048 00032DC8  7C 08 03 A6 */	mtlr r0
/* 8003D04C 00032DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D050 00032DD0  4E 80 00 20 */	blr 

.global gfCryptoESP$7__dt
gfCryptoESP$7__dt:
/* 8003D054 00032DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D058 00032DD8  7C 08 02 A6 */	mflr r0
/* 8003D05C 00032DDC  2C 03 00 00 */	cmpwi r3, 0
/* 8003D060 00032DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D064 00032DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003D068 00032DE8  7C 9F 23 78 */	mr r31, r4
/* 8003D06C 00032DEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8003D070 00032DF0  7C 7E 1B 78 */	mr r30, r3
/* 8003D074 00032DF4  41 82 00 64 */	beq lbl_8003D0D8
/* 8003D078 00032DF8  88 03 03 60 */	lbz r0, 0x360(r3)
/* 8003D07C 00032DFC  3C 80 80 42 */	lis r4, lbl_80423928@ha
/* 8003D080 00032E00  38 84 39 28 */	addi r4, r4, lbl_80423928@l
/* 8003D084 00032E04  2C 00 00 00 */	cmpwi r0, 0
/* 8003D088 00032E08  90 83 00 00 */	stw r4, 0(r3)
/* 8003D08C 00032E0C  40 82 00 0C */	bne lbl_8003D098
/* 8003D090 00032E10  38 63 00 08 */	addi r3, r3, 8
/* 8003D094 00032E14  48 1A 42 D1 */	bl OSResumeThread
lbl_8003D098:
/* 8003D098 00032E18  88 1E 03 70 */	lbz r0, 0x370(r30)
/* 8003D09C 00032E1C  2C 00 00 00 */	cmpwi r0, 0
/* 8003D0A0 00032E20  41 82 00 1C */	beq lbl_8003D0BC
/* 8003D0A4 00032E24  80 7E 03 68 */	lwz r3, 0x368(r30)
/* 8003D0A8 00032E28  2C 03 00 00 */	cmpwi r3, 0
/* 8003D0AC 00032E2C  41 82 00 10 */	beq lbl_8003D0BC
/* 8003D0B0 00032E30  4B FE 79 9D */	bl gfHeapManager$7free
/* 8003D0B4 00032E34  38 00 00 00 */	li r0, 0
/* 8003D0B8 00032E38  90 1E 03 68 */	stw r0, 0x368(r30)
lbl_8003D0BC:
/* 8003D0BC 00032E3C  7F C3 F3 78 */	mr r3, r30
/* 8003D0C0 00032E40  38 80 00 00 */	li r4, 0
/* 8003D0C4 00032E44  4B FF 24 F5 */	bl gfThread$7__dt
/* 8003D0C8 00032E48  2C 1F 00 00 */	cmpwi r31, 0
/* 8003D0CC 00032E4C  40 81 00 0C */	ble lbl_8003D0D8
/* 8003D0D0 00032E50  7F C3 F3 78 */	mr r3, r30
/* 8003D0D4 00032E54  4B FC F7 F5 */	bl __dl__FPv
lbl_8003D0D8:
/* 8003D0D8 00032E58  7F C3 F3 78 */	mr r3, r30
/* 8003D0DC 00032E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003D0E0 00032E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003D0E4 00032E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D0E8 00032E68  7C 08 03 A6 */	mtlr r0
/* 8003D0EC 00032E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D0F0 00032E70  4E 80 00 20 */	blr 

.global gfCryptoESP$7encrypt
gfCryptoESP$7encrypt:
/* 8003D0F4 00032E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D0F8 00032E78  7C 08 02 A6 */	mflr r0
/* 8003D0FC 00032E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D100 00032E80  88 03 03 60 */	lbz r0, 0x360(r3)
/* 8003D104 00032E84  2C 00 00 00 */	cmpwi r0, 0
/* 8003D108 00032E88  41 82 00 0C */	beq lbl_8003D114
/* 8003D10C 00032E8C  38 60 00 00 */	li r3, 0
/* 8003D110 00032E90  48 00 00 34 */	b lbl_8003D144
lbl_8003D114:
/* 8003D114 00032E94  2C 04 00 00 */	cmpwi r4, 0
/* 8003D118 00032E98  40 82 00 0C */	bne lbl_8003D124
/* 8003D11C 00032E9C  38 60 00 00 */	li r3, 0
/* 8003D120 00032EA0  48 00 00 24 */	b lbl_8003D144
lbl_8003D124:
/* 8003D124 00032EA4  38 00 00 01 */	li r0, 1
/* 8003D128 00032EA8  90 83 03 50 */	stw r4, 0x350(r3)
/* 8003D12C 00032EAC  90 A3 03 54 */	stw r5, 0x354(r3)
/* 8003D130 00032EB0  90 C3 03 58 */	stw r6, 0x358(r3)
/* 8003D134 00032EB4  90 03 03 5C */	stw r0, 0x35c(r3)
/* 8003D138 00032EB8  38 63 00 08 */	addi r3, r3, 8
/* 8003D13C 00032EBC  48 1A 42 29 */	bl OSResumeThread
/* 8003D140 00032EC0  38 60 00 01 */	li r3, 1
lbl_8003D144:
/* 8003D144 00032EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D148 00032EC8  7C 08 03 A6 */	mtlr r0
/* 8003D14C 00032ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D150 00032ED0  4E 80 00 20 */	blr 

.global gfCryptoESP$7decrypt
gfCryptoESP$7decrypt:
/* 8003D154 00032ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D158 00032ED8  7C 08 02 A6 */	mflr r0
/* 8003D15C 00032EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D160 00032EE0  88 03 03 60 */	lbz r0, 0x360(r3)
/* 8003D164 00032EE4  2C 00 00 00 */	cmpwi r0, 0
/* 8003D168 00032EE8  41 82 00 0C */	beq lbl_8003D174
/* 8003D16C 00032EEC  38 60 00 00 */	li r3, 0
/* 8003D170 00032EF0  48 00 00 4C */	b lbl_8003D1BC
lbl_8003D174:
/* 8003D174 00032EF4  2C 04 00 00 */	cmpwi r4, 0
/* 8003D178 00032EF8  40 82 00 0C */	bne lbl_8003D184
/* 8003D17C 00032EFC  38 60 00 00 */	li r3, 0
/* 8003D180 00032F00  48 00 00 3C */	b lbl_8003D1BC
lbl_8003D184:
/* 8003D184 00032F04  28 05 00 10 */	cmplwi r5, 0x10
/* 8003D188 00032F08  41 80 00 0C */	blt lbl_8003D194
/* 8003D18C 00032F0C  54 A0 07 3F */	clrlwi. r0, r5, 0x1c
/* 8003D190 00032F10  41 82 00 0C */	beq lbl_8003D19C
lbl_8003D194:
/* 8003D194 00032F14  38 60 00 00 */	li r3, 0
/* 8003D198 00032F18  48 00 00 24 */	b lbl_8003D1BC
lbl_8003D19C:
/* 8003D19C 00032F1C  38 00 00 02 */	li r0, 2
/* 8003D1A0 00032F20  90 83 03 50 */	stw r4, 0x350(r3)
/* 8003D1A4 00032F24  90 A3 03 54 */	stw r5, 0x354(r3)
/* 8003D1A8 00032F28  90 C3 03 58 */	stw r6, 0x358(r3)
/* 8003D1AC 00032F2C  90 03 03 5C */	stw r0, 0x35c(r3)
/* 8003D1B0 00032F30  38 63 00 08 */	addi r3, r3, 8
/* 8003D1B4 00032F34  48 1A 41 B1 */	bl OSResumeThread
/* 8003D1B8 00032F38  38 60 00 01 */	li r3, 1
lbl_8003D1BC:
/* 8003D1BC 00032F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D1C0 00032F40  7C 08 03 A6 */	mtlr r0
/* 8003D1C4 00032F44  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D1C8 00032F48  4E 80 00 20 */	blr 

.global gfCryptoESP$7run
gfCryptoESP$7run:
/* 8003D1CC 00032F4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003D1D0 00032F50  7C 08 02 A6 */	mflr r0
/* 8003D1D4 00032F54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003D1D8 00032F58  39 61 00 30 */	addi r11, r1, 0x30
/* 8003D1DC 00032F5C  48 3B 41 3D */	bl _savegpr_25
/* 8003D1E0 00032F60  80 A3 03 5C */	lwz r5, 0x35c(r3)
/* 8003D1E4 00032F64  7C 7E 1B 78 */	mr r30, r3
/* 8003D1E8 00032F68  2C 05 00 00 */	cmpwi r5, 0
/* 8003D1EC 00032F6C  41 82 02 00 */	beq lbl_8003D3EC
/* 8003D1F0 00032F70  80 83 03 54 */	lwz r4, 0x354(r3)
/* 8003D1F4 00032F74  38 00 FF FF */	li r0, -1
/* 8003D1F8 00032F78  2C 05 00 01 */	cmpwi r5, 1
/* 8003D1FC 00032F7C  90 03 03 64 */	stw r0, 0x364(r3)
/* 8003D200 00032F80  90 83 03 6C */	stw r4, 0x36c(r3)
/* 8003D204 00032F84  40 82 00 18 */	bne lbl_8003D21C
/* 8003D208 00032F88  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 8003D20C 00032F8C  41 82 00 10 */	beq lbl_8003D21C
/* 8003D210 00032F90  20 00 00 10 */	subfic r0, r0, 0x10
/* 8003D214 00032F94  7C 04 02 14 */	add r0, r4, r0
/* 8003D218 00032F98  90 03 03 6C */	stw r0, 0x36c(r3)
lbl_8003D21C:
/* 8003D21C 00032F9C  80 63 03 58 */	lwz r3, 0x358(r3)
/* 8003D220 00032FA0  38 80 40 00 */	li r4, 0x4000
/* 8003D224 00032FA4  38 A0 00 40 */	li r5, 0x40
/* 8003D228 00032FA8  4B FE 77 D9 */	bl gfHeapManager$7alloc_379
/* 8003D22C 00032FAC  7C 7F 1B 78 */	mr r31, r3
/* 8003D230 00032FB0  80 7E 03 58 */	lwz r3, 0x358(r30)
/* 8003D234 00032FB4  80 9E 03 6C */	lwz r4, 0x36c(r30)
/* 8003D238 00032FB8  38 A0 00 40 */	li r5, 0x40
/* 8003D23C 00032FBC  4B FE 77 C5 */	bl gfHeapManager$7alloc_379
/* 8003D240 00032FC0  2C 1F 00 00 */	cmpwi r31, 0
/* 8003D244 00032FC4  90 7E 03 68 */	stw r3, 0x368(r30)
/* 8003D248 00032FC8  41 82 01 60 */	beq lbl_8003D3A8
/* 8003D24C 00032FCC  2C 03 00 00 */	cmpwi r3, 0
/* 8003D250 00032FD0  41 82 01 58 */	beq lbl_8003D3A8
/* 8003D254 00032FD4  80 0D BC 90 */	lwz r0, lbl_805A00B0-_SDA_BASE_(r13)
/* 8003D258 00032FD8  2C 00 00 00 */	cmpwi r0, 0
/* 8003D25C 00032FDC  40 82 00 24 */	bne lbl_8003D280
/* 8003D260 00032FE0  38 60 00 18 */	li r3, 0x18
/* 8003D264 00032FE4  38 80 00 02 */	li r4, 2
/* 8003D268 00032FE8  4B FC F6 51 */	bl srHeapType$7__nw
/* 8003D26C 00032FEC  2C 03 00 00 */	cmpwi r3, 0
/* 8003D270 00032FF0  7C 7D 1B 78 */	mr r29, r3
/* 8003D274 00032FF4  41 82 00 08 */	beq lbl_8003D27C
/* 8003D278 00032FF8  48 1A 19 05 */	bl OSInitMutex
lbl_8003D27C:
/* 8003D27C 00032FFC  93 AD BC 90 */	stw r29, lbl_805A00B0-_SDA_BASE_(r13)
lbl_8003D280:
/* 8003D280 00033000  80 6D BC 90 */	lwz r3, lbl_805A00B0-_SDA_BASE_(r13)
/* 8003D284 00033004  48 1A 19 31 */	bl OSLockMutex
/* 8003D288 00033008  48 1D 3D F9 */	bl ESP_InitLib
/* 8003D28C 0003300C  2C 03 00 00 */	cmpwi r3, 0
/* 8003D290 00033010  40 82 01 0C */	bne lbl_8003D39C
/* 8003D294 00033014  80 7E 03 6C */	lwz r3, 0x36c(r30)
/* 8003D298 00033018  3B 80 00 00 */	li r28, 0
/* 8003D29C 0003301C  54 60 04 BF */	clrlwi. r0, r3, 0x12
/* 8003D2A0 00033020  54 7B 93 BE */	srwi r27, r3, 0xe
/* 8003D2A4 00033024  41 82 00 08 */	beq lbl_8003D2AC
/* 8003D2A8 00033028  3B 7B 00 01 */	addi r27, r27, 1
lbl_8003D2AC:
/* 8003D2AC 0003302C  3B 40 00 00 */	li r26, 0
/* 8003D2B0 00033030  3B A0 00 00 */	li r29, 0
/* 8003D2B4 00033034  48 00 00 CC */	b lbl_8003D380
lbl_8003D2B8:
/* 8003D2B8 00033038  38 1A 00 01 */	addi r0, r26, 1
/* 8003D2BC 0003303C  80 9E 03 6C */	lwz r4, 0x36c(r30)
/* 8003D2C0 00033040  54 00 70 22 */	slwi r0, r0, 0xe
/* 8003D2C4 00033044  3B 20 40 00 */	li r25, 0x4000
/* 8003D2C8 00033048  7C 00 20 40 */	cmplw r0, r4
/* 8003D2CC 0003304C  40 81 00 34 */	ble lbl_8003D300
/* 8003D2D0 00033050  7F 3D 20 50 */	subf r25, r29, r4
/* 8003D2D4 00033054  7F E3 FB 78 */	mr r3, r31
/* 8003D2D8 00033058  38 80 00 00 */	li r4, 0
/* 8003D2DC 0003305C  38 A0 40 00 */	li r5, 0x4000
/* 8003D2E0 00033060  4B FC 71 5D */	bl func_8000443C
/* 8003D2E4 00033064  80 9E 03 50 */	lwz r4, 0x350(r30)
/* 8003D2E8 00033068  7F E3 FB 78 */	mr r3, r31
/* 8003D2EC 0003306C  80 1E 03 54 */	lwz r0, 0x354(r30)
/* 8003D2F0 00033070  7C 84 EA 14 */	add r4, r4, r29
/* 8003D2F4 00033074  7C BD 00 50 */	subf r5, r29, r0
/* 8003D2F8 00033078  4B FC 70 41 */	bl func_80004338
/* 8003D2FC 0003307C  48 00 00 18 */	b lbl_8003D314
lbl_8003D300:
/* 8003D300 00033080  80 1E 03 50 */	lwz r0, 0x350(r30)
/* 8003D304 00033084  7F E3 FB 78 */	mr r3, r31
/* 8003D308 00033088  38 A0 40 00 */	li r5, 0x4000
/* 8003D30C 0003308C  7C 80 EA 14 */	add r4, r0, r29
/* 8003D310 00033090  4B FC 70 29 */	bl func_80004338
lbl_8003D314:
/* 8003D314 00033094  80 1E 03 5C */	lwz r0, 0x35c(r30)
/* 8003D318 00033098  2C 00 00 01 */	cmpwi r0, 1
/* 8003D31C 0003309C  40 82 00 30 */	bne lbl_8003D34C
/* 8003D320 000330A0  80 1E 03 68 */	lwz r0, 0x368(r30)
/* 8003D324 000330A4  7F E5 FB 78 */	mr r5, r31
/* 8003D328 000330A8  7F 26 CB 78 */	mr r6, r25
/* 8003D32C 000330AC  38 9E 03 40 */	addi r4, r30, 0x340
/* 8003D330 000330B0  7C E0 EA 14 */	add r7, r0, r29
/* 8003D334 000330B4  38 60 00 06 */	li r3, 6
/* 8003D338 000330B8  48 1D 45 55 */	bl ESP_Encrypt
/* 8003D33C 000330BC  2C 03 00 00 */	cmpwi r3, 0
/* 8003D340 000330C0  41 82 00 38 */	beq lbl_8003D378
/* 8003D344 000330C4  3B 80 00 01 */	li r28, 1
/* 8003D348 000330C8  48 00 00 40 */	b lbl_8003D388
lbl_8003D34C:
/* 8003D34C 000330CC  80 1E 03 68 */	lwz r0, 0x368(r30)
/* 8003D350 000330D0  7F E5 FB 78 */	mr r5, r31
/* 8003D354 000330D4  7F 26 CB 78 */	mr r6, r25
/* 8003D358 000330D8  38 9E 03 40 */	addi r4, r30, 0x340
/* 8003D35C 000330DC  7C E0 EA 14 */	add r7, r0, r29
/* 8003D360 000330E0  38 60 00 06 */	li r3, 6
/* 8003D364 000330E4  48 1D 45 C1 */	bl ESP_Decrypt
/* 8003D368 000330E8  2C 03 00 00 */	cmpwi r3, 0
/* 8003D36C 000330EC  41 82 00 0C */	beq lbl_8003D378
/* 8003D370 000330F0  3B 80 00 01 */	li r28, 1
/* 8003D374 000330F4  48 00 00 14 */	b lbl_8003D388
lbl_8003D378:
/* 8003D378 000330F8  3B BD 40 00 */	addi r29, r29, 0x4000
/* 8003D37C 000330FC  3B 5A 00 01 */	addi r26, r26, 1
lbl_8003D380:
/* 8003D380 00033100  7C 1A D8 40 */	cmplw r26, r27
/* 8003D384 00033104  41 80 FF 34 */	blt lbl_8003D2B8
lbl_8003D388:
/* 8003D388 00033108  2C 1C 00 00 */	cmpwi r28, 0
/* 8003D38C 0003310C  40 82 00 0C */	bne lbl_8003D398
/* 8003D390 00033110  38 00 00 00 */	li r0, 0
/* 8003D394 00033114  90 1E 03 64 */	stw r0, 0x364(r30)
lbl_8003D398:
/* 8003D398 00033118  48 1D 3D 3D */	bl ESP_CloseLib
lbl_8003D39C:
/* 8003D39C 0003311C  80 6D BC 90 */	lwz r3, lbl_805A00B0-_SDA_BASE_(r13)
/* 8003D3A0 00033120  48 1A 18 F1 */	bl OSUnlockMutex
/* 8003D3A4 00033124  48 00 00 0C */	b lbl_8003D3B0
lbl_8003D3A8:
/* 8003D3A8 00033128  38 00 FF FE */	li r0, -2
/* 8003D3AC 0003312C  90 1E 03 64 */	stw r0, 0x364(r30)
lbl_8003D3B0:
/* 8003D3B0 00033130  80 1E 03 64 */	lwz r0, 0x364(r30)
/* 8003D3B4 00033134  2C 00 00 00 */	cmpwi r0, 0
/* 8003D3B8 00033138  41 82 00 1C */	beq lbl_8003D3D4
/* 8003D3BC 0003313C  80 7E 03 68 */	lwz r3, 0x368(r30)
/* 8003D3C0 00033140  2C 03 00 00 */	cmpwi r3, 0
/* 8003D3C4 00033144  41 82 00 10 */	beq lbl_8003D3D4
/* 8003D3C8 00033148  4B FE 76 85 */	bl gfHeapManager$7free
/* 8003D3CC 0003314C  38 00 00 00 */	li r0, 0
/* 8003D3D0 00033150  90 1E 03 68 */	stw r0, 0x368(r30)
lbl_8003D3D4:
/* 8003D3D4 00033154  2C 1F 00 00 */	cmpwi r31, 0
/* 8003D3D8 00033158  41 82 00 0C */	beq lbl_8003D3E4
/* 8003D3DC 0003315C  7F E3 FB 78 */	mr r3, r31
/* 8003D3E0 00033160  4B FE 76 6D */	bl gfHeapManager$7free
lbl_8003D3E4:
/* 8003D3E4 00033164  38 00 00 01 */	li r0, 1
/* 8003D3E8 00033168  98 1E 03 60 */	stb r0, 0x360(r30)
lbl_8003D3EC:
/* 8003D3EC 0003316C  39 61 00 30 */	addi r11, r1, 0x30
/* 8003D3F0 00033170  48 3B 3F 75 */	bl _restgpr_25
/* 8003D3F4 00033174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003D3F8 00033178  7C 08 03 A6 */	mtlr r0
/* 8003D3FC 0003317C  38 21 00 30 */	addi r1, r1, 0x30
/* 8003D400 00033180  4E 80 00 20 */	blr 

.global $2unnamed$2gf_vc_launch_cpp$2$7VC_setup
$2unnamed$2gf_vc_launch_cpp$2$7VC_setup:
/* 8003D404 00033184  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8003D408 00033188  7C 08 02 A6 */	mflr r0
/* 8003D40C 0003318C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8003D410 00033190  39 61 00 70 */	addi r11, r1, 0x70
/* 8003D414 00033194  48 3B 3F 0D */	bl _savegpr_27
/* 8003D418 00033198  7C 9C 23 78 */	mr r28, r4
/* 8003D41C 0003319C  7C BF 2B 78 */	mr r31, r5
/* 8003D420 000331A0  7C 7B 1B 78 */	mr r27, r3
/* 8003D424 000331A4  7C DD 33 78 */	mr r29, r6
/* 8003D428 000331A8  7C FE 3B 78 */	mr r30, r7
/* 8003D42C 000331AC  38 80 00 00 */	li r4, 0
/* 8003D430 000331B0  38 A0 00 4C */	li r5, 0x4c
/* 8003D434 000331B4  4B FC 70 09 */	bl func_8000443C
/* 8003D438 000331B8  9B 9B 00 00 */	stb r28, 0(r27)
/* 8003D43C 000331BC  38 7B 00 01 */	addi r3, r27, 1
/* 8003D440 000331C0  38 A0 00 04 */	li r5, 4
/* 8003D444 000331C4  80 8D 83 50 */	lwz r4, lbl_8059C770-_SDA_BASE_(r13)
/* 8003D448 000331C8  4B FC 6E F1 */	bl func_80004338
/* 8003D44C 000331CC  7C 1E 00 D0 */	neg r0, r30
/* 8003D450 000331D0  9B FB 00 06 */	stb r31, 6(r27)
/* 8003D454 000331D4  7C 00 F3 78 */	or r0, r0, r30
/* 8003D458 000331D8  7F 7F DB 78 */	mr r31, r27
/* 8003D45C 000331DC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8003D460 000331E0  93 BB 00 08 */	stw r29, 8(r27)
/* 8003D464 000331E4  38 03 00 01 */	addi r0, r3, 1
/* 8003D468 000331E8  3B C0 00 00 */	li r30, 0
/* 8003D46C 000331EC  98 1B 00 05 */	stb r0, 5(r27)
lbl_8003D470:
/* 8003D470 000331F0  7F C3 F3 78 */	mr r3, r30
/* 8003D474 000331F4  38 81 00 08 */	addi r4, r1, 8
/* 8003D478 000331F8  48 1D CB AD */	bl WPADProbe
/* 8003D47C 000331FC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8003D480 00033200  3B DE 00 01 */	addi r30, r30, 1
/* 8003D484 00033204  2C 1E 00 04 */	cmpwi r30, 4
/* 8003D488 00033208  80 01 00 08 */	lwz r0, 8(r1)
/* 8003D48C 0003320C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8003D490 00033210  3B FF 00 08 */	addi r31, r31, 8
/* 8003D494 00033214  41 80 FF DC */	blt lbl_8003D470
/* 8003D498 00033218  3B C0 00 00 */	li r30, 0
/* 8003D49C 0003321C  3B E0 00 00 */	li r31, 0
lbl_8003D4A0:
/* 8003D4A0 00033220  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 8003D4A4 00033224  7F C4 F3 78 */	mr r4, r30
/* 8003D4A8 00033228  38 A1 00 10 */	addi r5, r1, 0x10
/* 8003D4AC 0003322C  4B FE D9 9D */	bl gfPadSystem$7getSysPadStatus
/* 8003D4B0 00033230  88 01 00 48 */	lbz r0, 0x48(r1)
/* 8003D4B4 00033234  3B DE 00 01 */	addi r30, r30, 1
/* 8003D4B8 00033238  2C 1E 00 04 */	cmpwi r30, 4
/* 8003D4BC 0003323C  7C 00 07 74 */	extsb r0, r0
/* 8003D4C0 00033240  90 1B 00 2C */	stw r0, 0x2c(r27)
/* 8003D4C4 00033244  93 FB 00 30 */	stw r31, 0x30(r27)
/* 8003D4C8 00033248  3B 7B 00 08 */	addi r27, r27, 8
/* 8003D4CC 0003324C  41 80 FF D4 */	blt lbl_8003D4A0
/* 8003D4D0 00033250  39 61 00 70 */	addi r11, r1, 0x70
/* 8003D4D4 00033254  48 3B 3E 99 */	bl _restgpr_27
/* 8003D4D8 00033258  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8003D4DC 0003325C  7C 08 03 A6 */	mtlr r0
/* 8003D4E0 00033260  38 21 00 70 */	addi r1, r1, 0x70
/* 8003D4E4 00033264  4E 80 00 20 */	blr 


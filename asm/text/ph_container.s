.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global phContainer$7__ct
phContainer$7__ct:
/* 800800D8 00075E58  38 80 00 00 */	li r4, 0
/* 800800DC 00075E5C  3C 00 80 00 */	lis r0, 0x8000
/* 800800E0 00075E60  90 83 00 08 */	stw r4, 8(r3)
/* 800800E4 00075E64  90 83 00 0C */	stw r4, 0xc(r3)
/* 800800E8 00075E68  90 03 00 10 */	stw r0, 0x10(r3)
/* 800800EC 00075E6C  90 83 00 14 */	stw r4, 0x14(r3)
/* 800800F0 00075E70  90 83 00 18 */	stw r4, 0x18(r3)
/* 800800F4 00075E74  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800800F8 00075E78  90 83 00 20 */	stw r4, 0x20(r3)
/* 800800FC 00075E7C  90 83 00 24 */	stw r4, 0x24(r3)
/* 80080100 00075E80  90 03 00 28 */	stw r0, 0x28(r3)
/* 80080104 00075E84  90 83 00 30 */	stw r4, 0x30(r3)
/* 80080108 00075E88  90 83 00 34 */	stw r4, 0x34(r3)
/* 8008010C 00075E8C  90 83 00 38 */	stw r4, 0x38(r3)
/* 80080110 00075E90  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80080114 00075E94  4E 80 00 20 */	blr 

.global phContainer$7applyData
phContainer$7applyData:
/* 80080118 00075E98  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8008011C 00075E9C  7C 08 02 A6 */	mflr r0
/* 80080120 00075EA0  90 01 02 54 */	stw r0, 0x254(r1)
/* 80080124 00075EA4  39 61 02 50 */	addi r11, r1, 0x250
/* 80080128 00075EA8  48 37 11 F1 */	bl _savegpr_25
/* 8008012C 00075EAC  7C 7A 1B 78 */	mr r26, r3
/* 80080130 00075EB0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80080134 00075EB4  7C 9B 23 78 */	mr r27, r4
/* 80080138 00075EB8  38 80 00 6C */	li r4, 0x6c
/* 8008013C 00075EBC  81 83 00 00 */	lwz r12, 0(r3)
/* 80080140 00075EC0  38 A0 00 06 */	li r5, 6
/* 80080144 00075EC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80080148 00075EC8  7D 89 03 A6 */	mtctr r12
/* 8008014C 00075ECC  4E 80 04 21 */	bctrl 
/* 80080150 00075ED0  38 00 00 6C */	li r0, 0x6c
/* 80080154 00075ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80080158 00075ED8  B0 03 00 04 */	sth r0, 4(r3)
/* 8008015C 00075EDC  7C 79 1B 78 */	mr r25, r3
/* 80080160 00075EE0  41 82 00 0C */	beq lbl_8008016C
/* 80080164 00075EE4  48 2A F8 21 */	bl hkBinaryPackfileReader$7__ct
/* 80080168 00075EE8  7C 79 1B 78 */	mr r25, r3
lbl_8008016C:
/* 8008016C 00075EEC  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80080170 00075EF0  38 80 00 14 */	li r4, 0x14
/* 80080174 00075EF4  38 A0 00 18 */	li r5, 0x18
/* 80080178 00075EF8  81 83 00 00 */	lwz r12, 0(r3)
/* 8008017C 00075EFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80080180 00075F00  7D 89 03 A6 */	mtctr r12
/* 80080184 00075F04  4E 80 04 21 */	bctrl 
/* 80080188 00075F08  38 00 00 14 */	li r0, 0x14
/* 8008018C 00075F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80080190 00075F10  B0 03 00 04 */	sth r0, 4(r3)
/* 80080194 00075F14  7C 7E 1B 78 */	mr r30, r3
/* 80080198 00075F18  41 82 00 28 */	beq lbl_800801C0
/* 8008019C 00075F1C  38 00 00 01 */	li r0, 1
/* 800801A0 00075F20  3C 80 80 45 */	lis r4, lbl_80454858@ha
/* 800801A4 00075F24  B0 03 00 06 */	sth r0, 6(r3)
/* 800801A8 00075F28  38 84 48 58 */	addi r4, r4, lbl_80454858@l
/* 800801AC 00075F2C  38 00 00 00 */	li r0, 0
/* 800801B0 00075F30  90 83 00 00 */	stw r4, 0(r3)
/* 800801B4 00075F34  90 03 00 0C */	stw r0, 0xc(r3)
/* 800801B8 00075F38  90 03 00 10 */	stw r0, 0x10(r3)
/* 800801BC 00075F3C  93 63 00 08 */	stw r27, 8(r3)
lbl_800801C0:
/* 800801C0 00075F40  7F C4 F3 78 */	mr r4, r30
/* 800801C4 00075F44  38 61 00 18 */	addi r3, r1, 0x18
/* 800801C8 00075F48  48 20 05 89 */	bl hkIstream$7__ct
/* 800801CC 00075F4C  81 99 00 00 */	lwz r12, 0(r25)
/* 800801D0 00075F50  7F 23 CB 78 */	mr r3, r25
/* 800801D4 00075F54  80 81 00 20 */	lwz r4, 0x20(r1)
/* 800801D8 00075F58  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800801DC 00075F5C  7D 89 03 A6 */	mtctr r12
/* 800801E0 00075F60  4E 80 04 21 */	bctrl 
/* 800801E4 00075F64  80 8D CB 20 */	lwz r4, lbl_805A0F40-_SDA_BASE_(r13)
/* 800801E8 00075F68  7F 23 CB 78 */	mr r3, r25
/* 800801EC 00075F6C  48 2B 4B 39 */	bl hkVersionUtil$7updateToCurrentVersion
/* 800801F0 00075F70  2C 03 00 00 */	cmpwi r3, 0
/* 800801F4 00075F74  41 82 00 68 */	beq lbl_8008025C
/* 800801F8 00075F78  38 00 00 01 */	li r0, 1
/* 800801FC 00075F7C  38 61 00 0C */	addi r3, r1, 0xc
/* 80080200 00075F80  98 01 00 08 */	stb r0, 8(r1)
/* 80080204 00075F84  38 81 00 28 */	addi r4, r1, 0x28
/* 80080208 00075F88  38 C1 00 08 */	addi r6, r1, 8
/* 8008020C 00075F8C  38 A0 02 00 */	li r5, 0x200
/* 80080210 00075F90  48 20 06 B1 */	bl hkOstream$7__ct
/* 80080214 00075F94  3C 80 80 45 */	lis r4, lbl_80454820@ha
/* 80080218 00075F98  38 61 00 0C */	addi r3, r1, 0xc
/* 8008021C 00075F9C  38 84 48 20 */	addi r4, r4, lbl_80454820@l
/* 80080220 00075FA0  48 20 08 55 */	bl hkOstream$7__ls_9228
/* 80080224 00075FA4  80 6D CA 90 */	lwz r3, lbl_805A0EB0-_SDA_BASE_(r13)
/* 80080228 00075FA8  3C E0 80 45 */	lis r7, lbl_80454844@ha
/* 8008022C 00075FAC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80080230 00075FB0  38 80 00 01 */	li r4, 1
/* 80080234 00075FB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80080238 00075FB8  38 E7 48 44 */	addi r7, r7, lbl_80454844@l
/* 8008023C 00075FBC  38 A0 00 00 */	li r5, 0
/* 80080240 00075FC0  39 00 00 2F */	li r8, 0x2f
/* 80080244 00075FC4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80080248 00075FC8  7D 89 03 A6 */	mtctr r12
/* 8008024C 00075FCC  4E 80 04 21 */	bctrl 
/* 80080250 00075FD0  38 61 00 0C */	addi r3, r1, 0xc
/* 80080254 00075FD4  38 80 FF FF */	li r4, -1
/* 80080258 00075FD8  48 20 07 15 */	bl hkOstream$7__dt
lbl_8008025C:
/* 8008025C 00075FDC  81 99 00 00 */	lwz r12, 0(r25)
/* 80080260 00075FE0  7F 23 CB 78 */	mr r3, r25
/* 80080264 00075FE4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80080268 00075FE8  7D 89 03 A6 */	mtctr r12
/* 8008026C 00075FEC  4E 80 04 21 */	bctrl 
/* 80080270 00075FF0  90 7A 00 04 */	stw r3, 4(r26)
/* 80080274 00075FF4  A0 03 00 04 */	lhz r0, 4(r3)
/* 80080278 00075FF8  2C 00 00 00 */	cmpwi r0, 0
/* 8008027C 00075FFC  41 82 00 10 */	beq lbl_8008028C
/* 80080280 00076000  A8 83 00 06 */	lha r4, 6(r3)
/* 80080284 00076004  38 04 00 01 */	addi r0, r4, 1
/* 80080288 00076008  B0 03 00 06 */	sth r0, 6(r3)
lbl_8008028C:
/* 8008028C 0007600C  3C 60 80 53 */	lis r3, lbl_805336E4@ha
/* 80080290 00076010  38 63 36 E4 */	addi r3, r3, lbl_805336E4@l
/* 80080294 00076014  48 1F C5 A9 */	bl hkClass$7getName
/* 80080298 00076018  81 99 00 00 */	lwz r12, 0(r25)
/* 8008029C 0007601C  7C 64 1B 78 */	mr r4, r3
/* 800802A0 00076020  7F 23 CB 78 */	mr r3, r25
/* 800802A4 00076024  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800802A8 00076028  7D 89 03 A6 */	mtctr r12
/* 800802AC 0007602C  4E 80 04 21 */	bctrl 
/* 800802B0 00076030  3C 80 80 53 */	lis r4, lbl_80533310@ha
/* 800802B4 00076034  7C 7C 1B 78 */	mr r28, r3
/* 800802B8 00076038  38 64 33 10 */	addi r3, r4, lbl_80533310@l
/* 800802BC 0007603C  48 1F C5 81 */	bl hkClass$7getName
/* 800802C0 00076040  7C 64 1B 78 */	mr r4, r3
/* 800802C4 00076044  7F 83 E3 78 */	mr r3, r28
/* 800802C8 00076048  38 A0 00 00 */	li r5, 0
/* 800802CC 0007604C  48 2B 32 D9 */	bl hkRootLevelContainer$7findObjectByType
/* 800802D0 00076050  2C 19 00 00 */	cmpwi r25, 0
/* 800802D4 00076054  90 7A 00 00 */	stw r3, 0(r26)
/* 800802D8 00076058  41 82 00 1C */	beq lbl_800802F4
/* 800802DC 0007605C  81 99 00 00 */	lwz r12, 0(r25)
/* 800802E0 00076060  7F 23 CB 78 */	mr r3, r25
/* 800802E4 00076064  38 80 00 01 */	li r4, 1
/* 800802E8 00076068  81 8C 00 08 */	lwz r12, 8(r12)
/* 800802EC 0007606C  7D 89 03 A6 */	mtctr r12
/* 800802F0 00076070  4E 80 04 21 */	bctrl 
lbl_800802F4:
/* 800802F4 00076074  83 3A 00 00 */	lwz r25, 0(r26)
/* 800802F8 00076078  2C 19 00 00 */	cmpwi r25, 0
/* 800802FC 0007607C  41 82 04 10 */	beq lbl_8008070C
/* 80080300 00076080  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 80080304 00076084  80 19 00 10 */	lwz r0, 0x10(r25)
/* 80080308 00076088  54 64 00 BE */	clrlwi r4, r3, 2
/* 8008030C 0007608C  7C 04 00 00 */	cmpw r4, r0
/* 80080310 00076090  40 80 00 50 */	bge lbl_80080360
/* 80080314 00076094  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 80080318 00076098  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8008031C 0007609C  40 82 00 18 */	bne lbl_80080334
/* 80080320 000760A0  54 85 10 3A */	slwi r5, r4, 2
/* 80080324 000760A4  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80080328 000760A8  80 9A 00 08 */	lwz r4, 8(r26)
/* 8008032C 000760AC  38 C0 00 15 */	li r6, 0x15
/* 80080330 000760B0  48 1F E7 8D */	bl hkThreadMemory$7deallocateChunk
lbl_80080334:
/* 80080334 000760B4  80 19 00 10 */	lwz r0, 0x10(r25)
/* 80080338 000760B8  38 A0 00 15 */	li r5, 0x15
/* 8008033C 000760BC  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80080340 000760C0  54 04 10 3A */	slwi r4, r0, 2
/* 80080344 000760C4  48 1F E6 DD */	bl hkThreadMemory$7allocateChunk
/* 80080348 000760C8  90 7A 00 08 */	stw r3, 8(r26)
/* 8008034C 000760CC  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 80080350 000760D0  80 79 00 10 */	lwz r3, 0x10(r25)
/* 80080354 000760D4  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 80080358 000760D8  7C 60 03 78 */	or r0, r3, r0
/* 8008035C 000760DC  90 1A 00 10 */	stw r0, 0x10(r26)
lbl_80080360:
/* 80080360 000760E0  80 99 00 10 */	lwz r4, 0x10(r25)
/* 80080364 000760E4  38 A0 00 00 */	li r5, 0
/* 80080368 000760E8  80 FA 00 08 */	lwz r7, 8(r26)
/* 8008036C 000760EC  90 9A 00 0C */	stw r4, 0xc(r26)
/* 80080370 000760F0  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 80080374 000760F4  80 D9 00 0C */	lwz r6, 0xc(r25)
/* 80080378 000760F8  40 85 00 D0 */	ble cr1, lbl_80080448
/* 8008037C 000760FC  2C 04 00 08 */	cmpwi r4, 8
/* 80080380 00076100  39 04 FF F8 */	addi r8, r4, -8
/* 80080384 00076104  40 81 00 94 */	ble lbl_80080418
/* 80080388 00076108  39 20 00 00 */	li r9, 0
/* 8008038C 0007610C  41 84 00 18 */	blt cr1, lbl_800803A4
/* 80080390 00076110  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 80080394 00076114  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 80080398 00076118  7C 04 00 00 */	cmpw r4, r0
/* 8008039C 0007611C  41 81 00 08 */	bgt lbl_800803A4
/* 800803A0 00076120  39 20 00 01 */	li r9, 1
lbl_800803A4:
/* 800803A4 00076124  2C 09 00 00 */	cmpwi r9, 0
/* 800803A8 00076128  41 82 00 70 */	beq lbl_80080418
/* 800803AC 0007612C  38 08 00 07 */	addi r0, r8, 7
/* 800803B0 00076130  7C C3 33 78 */	mr r3, r6
/* 800803B4 00076134  54 00 E8 FE */	srwi r0, r0, 3
/* 800803B8 00076138  7C E9 3B 78 */	mr r9, r7
/* 800803BC 0007613C  7C 09 03 A6 */	mtctr r0
/* 800803C0 00076140  2C 08 00 00 */	cmpwi r8, 0
/* 800803C4 00076144  40 81 00 54 */	ble lbl_80080418
lbl_800803C8:
/* 800803C8 00076148  80 03 00 00 */	lwz r0, 0(r3)
/* 800803CC 0007614C  38 A5 00 08 */	addi r5, r5, 8
/* 800803D0 00076150  90 09 00 00 */	stw r0, 0(r9)
/* 800803D4 00076154  80 03 00 04 */	lwz r0, 4(r3)
/* 800803D8 00076158  90 09 00 04 */	stw r0, 4(r9)
/* 800803DC 0007615C  80 03 00 08 */	lwz r0, 8(r3)
/* 800803E0 00076160  90 09 00 08 */	stw r0, 8(r9)
/* 800803E4 00076164  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800803E8 00076168  90 09 00 0C */	stw r0, 0xc(r9)
/* 800803EC 0007616C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800803F0 00076170  90 09 00 10 */	stw r0, 0x10(r9)
/* 800803F4 00076174  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800803F8 00076178  90 09 00 14 */	stw r0, 0x14(r9)
/* 800803FC 0007617C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80080400 00076180  90 09 00 18 */	stw r0, 0x18(r9)
/* 80080404 00076184  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80080408 00076188  38 63 00 20 */	addi r3, r3, 0x20
/* 8008040C 0007618C  90 09 00 1C */	stw r0, 0x1c(r9)
/* 80080410 00076190  39 29 00 20 */	addi r9, r9, 0x20
/* 80080414 00076194  42 00 FF B4 */	bdnz lbl_800803C8
lbl_80080418:
/* 80080418 00076198  54 A8 10 3A */	slwi r8, r5, 2
/* 8008041C 0007619C  7C 05 20 50 */	subf r0, r5, r4
/* 80080420 000761A0  7C 66 42 14 */	add r3, r6, r8
/* 80080424 000761A4  7C C7 42 14 */	add r6, r7, r8
/* 80080428 000761A8  7C 09 03 A6 */	mtctr r0
/* 8008042C 000761AC  7C 05 20 00 */	cmpw r5, r4
/* 80080430 000761B0  40 80 00 18 */	bge lbl_80080448
lbl_80080434:
/* 80080434 000761B4  80 03 00 00 */	lwz r0, 0(r3)
/* 80080438 000761B8  38 63 00 04 */	addi r3, r3, 4
/* 8008043C 000761BC  90 06 00 00 */	stw r0, 0(r6)
/* 80080440 000761C0  38 C6 00 04 */	addi r6, r6, 4
/* 80080444 000761C4  42 00 FF F0 */	bdnz lbl_80080434
lbl_80080448:
/* 80080448 000761C8  3B 60 00 00 */	li r27, 0
/* 8008044C 000761CC  3B A0 00 00 */	li r29, 0
/* 80080450 000761D0  3F E0 80 00 */	lis r31, 0x8000
/* 80080454 000761D4  48 00 02 AC */	b lbl_80080700
lbl_80080458:
/* 80080458 000761D8  80 7A 00 08 */	lwz r3, 8(r26)
/* 8008045C 000761DC  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 80080460 000761E0  7F 23 E8 2E */	lwzx r25, r3, r29
/* 80080464 000761E4  54 04 00 BE */	clrlwi r4, r0, 2
/* 80080468 000761E8  80 19 00 0C */	lwz r0, 0xc(r25)
/* 8008046C 000761EC  7C 04 00 00 */	cmpw r4, r0
/* 80080470 000761F0  40 80 00 50 */	bge lbl_800804C0
/* 80080474 000761F4  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 80080478 000761F8  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8008047C 000761FC  40 82 00 18 */	bne lbl_80080494
/* 80080480 00076200  54 85 10 3A */	slwi r5, r4, 2
/* 80080484 00076204  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80080488 00076208  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 8008048C 0007620C  38 C0 00 15 */	li r6, 0x15
/* 80080490 00076210  48 1F E6 2D */	bl hkThreadMemory$7deallocateChunk
lbl_80080494:
/* 80080494 00076214  80 19 00 0C */	lwz r0, 0xc(r25)
/* 80080498 00076218  38 A0 00 15 */	li r5, 0x15
/* 8008049C 0007621C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 800804A0 00076220  54 04 10 3A */	slwi r4, r0, 2
/* 800804A4 00076224  48 1F E5 7D */	bl hkThreadMemory$7allocateChunk
/* 800804A8 00076228  90 7A 00 14 */	stw r3, 0x14(r26)
/* 800804AC 0007622C  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 800804B0 00076230  80 79 00 0C */	lwz r3, 0xc(r25)
/* 800804B4 00076234  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 800804B8 00076238  7C 60 03 78 */	or r0, r3, r0
/* 800804BC 0007623C  90 1A 00 1C */	stw r0, 0x1c(r26)
lbl_800804C0:
/* 800804C0 00076240  80 79 00 0C */	lwz r3, 0xc(r25)
/* 800804C4 00076244  38 80 00 00 */	li r4, 0
/* 800804C8 00076248  80 DA 00 14 */	lwz r6, 0x14(r26)
/* 800804CC 0007624C  90 7A 00 18 */	stw r3, 0x18(r26)
/* 800804D0 00076250  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 800804D4 00076254  80 B9 00 08 */	lwz r5, 8(r25)
/* 800804D8 00076258  40 85 00 D0 */	ble cr1, lbl_800805A8
/* 800804DC 0007625C  2C 03 00 08 */	cmpwi r3, 8
/* 800804E0 00076260  38 E3 FF F8 */	addi r7, r3, -8
/* 800804E4 00076264  40 81 00 90 */	ble lbl_80080574
/* 800804E8 00076268  39 00 00 00 */	li r8, 0
/* 800804EC 0007626C  41 84 00 14 */	blt cr1, lbl_80080500
/* 800804F0 00076270  38 1F FF FE */	addi r0, r31, -2
/* 800804F4 00076274  7C 03 00 00 */	cmpw r3, r0
/* 800804F8 00076278  41 81 00 08 */	bgt lbl_80080500
/* 800804FC 0007627C  39 00 00 01 */	li r8, 1
lbl_80080500:
/* 80080500 00076280  2C 08 00 00 */	cmpwi r8, 0
/* 80080504 00076284  41 82 00 70 */	beq lbl_80080574
/* 80080508 00076288  38 07 00 07 */	addi r0, r7, 7
/* 8008050C 0007628C  7C A8 2B 78 */	mr r8, r5
/* 80080510 00076290  54 00 E8 FE */	srwi r0, r0, 3
/* 80080514 00076294  7C C9 33 78 */	mr r9, r6
/* 80080518 00076298  7C 09 03 A6 */	mtctr r0
/* 8008051C 0007629C  2C 07 00 00 */	cmpwi r7, 0
/* 80080520 000762A0  40 81 00 54 */	ble lbl_80080574
lbl_80080524:
/* 80080524 000762A4  80 08 00 00 */	lwz r0, 0(r8)
/* 80080528 000762A8  38 84 00 08 */	addi r4, r4, 8
/* 8008052C 000762AC  90 09 00 00 */	stw r0, 0(r9)
/* 80080530 000762B0  80 08 00 04 */	lwz r0, 4(r8)
/* 80080534 000762B4  90 09 00 04 */	stw r0, 4(r9)
/* 80080538 000762B8  80 08 00 08 */	lwz r0, 8(r8)
/* 8008053C 000762BC  90 09 00 08 */	stw r0, 8(r9)
/* 80080540 000762C0  80 08 00 0C */	lwz r0, 0xc(r8)
/* 80080544 000762C4  90 09 00 0C */	stw r0, 0xc(r9)
/* 80080548 000762C8  80 08 00 10 */	lwz r0, 0x10(r8)
/* 8008054C 000762CC  90 09 00 10 */	stw r0, 0x10(r9)
/* 80080550 000762D0  80 08 00 14 */	lwz r0, 0x14(r8)
/* 80080554 000762D4  90 09 00 14 */	stw r0, 0x14(r9)
/* 80080558 000762D8  80 08 00 18 */	lwz r0, 0x18(r8)
/* 8008055C 000762DC  90 09 00 18 */	stw r0, 0x18(r9)
/* 80080560 000762E0  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 80080564 000762E4  39 08 00 20 */	addi r8, r8, 0x20
/* 80080568 000762E8  90 09 00 1C */	stw r0, 0x1c(r9)
/* 8008056C 000762EC  39 29 00 20 */	addi r9, r9, 0x20
/* 80080570 000762F0  42 00 FF B4 */	bdnz lbl_80080524
lbl_80080574:
/* 80080574 000762F4  54 87 10 3A */	slwi r7, r4, 2
/* 80080578 000762F8  7C 04 18 50 */	subf r0, r4, r3
/* 8008057C 000762FC  7C A5 3A 14 */	add r5, r5, r7
/* 80080580 00076300  7C C6 3A 14 */	add r6, r6, r7
/* 80080584 00076304  7C 09 03 A6 */	mtctr r0
/* 80080588 00076308  7C 04 18 00 */	cmpw r4, r3
/* 8008058C 0007630C  40 80 00 1C */	bge lbl_800805A8
lbl_80080590:
/* 80080590 00076310  80 05 00 00 */	lwz r0, 0(r5)
/* 80080594 00076314  38 A5 00 04 */	addi r5, r5, 4
/* 80080598 00076318  38 84 00 01 */	addi r4, r4, 1
/* 8008059C 0007631C  90 06 00 00 */	stw r0, 0(r6)
/* 800805A0 00076320  38 C6 00 04 */	addi r6, r6, 4
/* 800805A4 00076324  42 00 FF EC */	bdnz lbl_80080590
lbl_800805A8:
/* 800805A8 00076328  80 7A 00 08 */	lwz r3, 8(r26)
/* 800805AC 0007632C  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 800805B0 00076330  7F 23 E8 2E */	lwzx r25, r3, r29
/* 800805B4 00076334  54 04 00 BE */	clrlwi r4, r0, 2
/* 800805B8 00076338  80 19 00 18 */	lwz r0, 0x18(r25)
/* 800805BC 0007633C  7C 04 00 00 */	cmpw r4, r0
/* 800805C0 00076340  40 80 00 50 */	bge lbl_80080610
/* 800805C4 00076344  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 800805C8 00076348  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800805CC 0007634C  40 82 00 18 */	bne lbl_800805E4
/* 800805D0 00076350  54 85 10 3A */	slwi r5, r4, 2
/* 800805D4 00076354  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 800805D8 00076358  80 9A 00 20 */	lwz r4, 0x20(r26)
/* 800805DC 0007635C  38 C0 00 15 */	li r6, 0x15
/* 800805E0 00076360  48 1F E4 DD */	bl hkThreadMemory$7deallocateChunk
lbl_800805E4:
/* 800805E4 00076364  80 19 00 18 */	lwz r0, 0x18(r25)
/* 800805E8 00076368  38 A0 00 15 */	li r5, 0x15
/* 800805EC 0007636C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 800805F0 00076370  54 04 10 3A */	slwi r4, r0, 2
/* 800805F4 00076374  48 1F E4 2D */	bl hkThreadMemory$7allocateChunk
/* 800805F8 00076378  90 7A 00 20 */	stw r3, 0x20(r26)
/* 800805FC 0007637C  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 80080600 00076380  80 79 00 18 */	lwz r3, 0x18(r25)
/* 80080604 00076384  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 80080608 00076388  7C 60 03 78 */	or r0, r3, r0
/* 8008060C 0007638C  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_80080610:
/* 80080610 00076390  80 79 00 18 */	lwz r3, 0x18(r25)
/* 80080614 00076394  38 80 00 00 */	li r4, 0
/* 80080618 00076398  80 DA 00 20 */	lwz r6, 0x20(r26)
/* 8008061C 0007639C  90 7A 00 24 */	stw r3, 0x24(r26)
/* 80080620 000763A0  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 80080624 000763A4  80 B9 00 14 */	lwz r5, 0x14(r25)
/* 80080628 000763A8  40 85 00 D0 */	ble cr1, lbl_800806F8
/* 8008062C 000763AC  2C 03 00 08 */	cmpwi r3, 8
/* 80080630 000763B0  38 E3 FF F8 */	addi r7, r3, -8
/* 80080634 000763B4  40 81 00 90 */	ble lbl_800806C4
/* 80080638 000763B8  39 00 00 00 */	li r8, 0
/* 8008063C 000763BC  41 84 00 14 */	blt cr1, lbl_80080650
/* 80080640 000763C0  38 1F FF FE */	addi r0, r31, -2
/* 80080644 000763C4  7C 03 00 00 */	cmpw r3, r0
/* 80080648 000763C8  41 81 00 08 */	bgt lbl_80080650
/* 8008064C 000763CC  39 00 00 01 */	li r8, 1
lbl_80080650:
/* 80080650 000763D0  2C 08 00 00 */	cmpwi r8, 0
/* 80080654 000763D4  41 82 00 70 */	beq lbl_800806C4
/* 80080658 000763D8  38 07 00 07 */	addi r0, r7, 7
/* 8008065C 000763DC  7C A8 2B 78 */	mr r8, r5
/* 80080660 000763E0  54 00 E8 FE */	srwi r0, r0, 3
/* 80080664 000763E4  7C C9 33 78 */	mr r9, r6
/* 80080668 000763E8  7C 09 03 A6 */	mtctr r0
/* 8008066C 000763EC  2C 07 00 00 */	cmpwi r7, 0
/* 80080670 000763F0  40 81 00 54 */	ble lbl_800806C4
lbl_80080674:
/* 80080674 000763F4  80 08 00 00 */	lwz r0, 0(r8)
/* 80080678 000763F8  38 84 00 08 */	addi r4, r4, 8
/* 8008067C 000763FC  90 09 00 00 */	stw r0, 0(r9)
/* 80080680 00076400  80 08 00 04 */	lwz r0, 4(r8)
/* 80080684 00076404  90 09 00 04 */	stw r0, 4(r9)
/* 80080688 00076408  80 08 00 08 */	lwz r0, 8(r8)
/* 8008068C 0007640C  90 09 00 08 */	stw r0, 8(r9)
/* 80080690 00076410  80 08 00 0C */	lwz r0, 0xc(r8)
/* 80080694 00076414  90 09 00 0C */	stw r0, 0xc(r9)
/* 80080698 00076418  80 08 00 10 */	lwz r0, 0x10(r8)
/* 8008069C 0007641C  90 09 00 10 */	stw r0, 0x10(r9)
/* 800806A0 00076420  80 08 00 14 */	lwz r0, 0x14(r8)
/* 800806A4 00076424  90 09 00 14 */	stw r0, 0x14(r9)
/* 800806A8 00076428  80 08 00 18 */	lwz r0, 0x18(r8)
/* 800806AC 0007642C  90 09 00 18 */	stw r0, 0x18(r9)
/* 800806B0 00076430  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 800806B4 00076434  39 08 00 20 */	addi r8, r8, 0x20
/* 800806B8 00076438  90 09 00 1C */	stw r0, 0x1c(r9)
/* 800806BC 0007643C  39 29 00 20 */	addi r9, r9, 0x20
/* 800806C0 00076440  42 00 FF B4 */	bdnz lbl_80080674
lbl_800806C4:
/* 800806C4 00076444  54 87 10 3A */	slwi r7, r4, 2
/* 800806C8 00076448  7C 04 18 50 */	subf r0, r4, r3
/* 800806CC 0007644C  7C A5 3A 14 */	add r5, r5, r7
/* 800806D0 00076450  7C C6 3A 14 */	add r6, r6, r7
/* 800806D4 00076454  7C 09 03 A6 */	mtctr r0
/* 800806D8 00076458  7C 04 18 00 */	cmpw r4, r3
/* 800806DC 0007645C  40 80 00 1C */	bge lbl_800806F8
lbl_800806E0:
/* 800806E0 00076460  80 05 00 00 */	lwz r0, 0(r5)
/* 800806E4 00076464  38 A5 00 04 */	addi r5, r5, 4
/* 800806E8 00076468  38 84 00 01 */	addi r4, r4, 1
/* 800806EC 0007646C  90 06 00 00 */	stw r0, 0(r6)
/* 800806F0 00076470  38 C6 00 04 */	addi r6, r6, 4
/* 800806F4 00076474  42 00 FF EC */	bdnz lbl_800806E0
lbl_800806F8:
/* 800806F8 00076478  3B BD 00 04 */	addi r29, r29, 4
/* 800806FC 0007647C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80080700:
/* 80080700 00076480  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 80080704 00076484  7C 1B 00 00 */	cmpw r27, r0
/* 80080708 00076488  41 80 FD 50 */	blt lbl_80080458
lbl_8008070C:
/* 8008070C 0007648C  3C 60 80 53 */	lis r3, lbl_80533418@ha
/* 80080710 00076490  38 63 34 18 */	addi r3, r3, lbl_80533418@l
/* 80080714 00076494  48 1F C1 29 */	bl hkClass$7getName
/* 80080718 00076498  7C 64 1B 78 */	mr r4, r3
/* 8008071C 0007649C  7F 83 E3 78 */	mr r3, r28
/* 80080720 000764A0  38 A0 00 00 */	li r5, 0
/* 80080724 000764A4  48 2B 2E 81 */	bl hkRootLevelContainer$7findObjectByType
/* 80080728 000764A8  2C 03 00 00 */	cmpwi r3, 0
/* 8008072C 000764AC  90 7A 00 2C */	stw r3, 0x2c(r26)
/* 80080730 000764B0  41 82 00 10 */	beq lbl_80080740
/* 80080734 000764B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80080738 000764B8  80 03 00 00 */	lwz r0, 0(r3)
/* 8008073C 000764BC  90 1A 00 30 */	stw r0, 0x30(r26)
lbl_80080740:
/* 80080740 000764C0  3F 60 80 53 */	lis r27, lbl_80533440@ha
/* 80080744 000764C4  38 7B 34 40 */	addi r3, r27, lbl_80533440@l
/* 80080748 000764C8  48 1F C0 F5 */	bl hkClass$7getName
/* 8008074C 000764CC  7C 64 1B 78 */	mr r4, r3
/* 80080750 000764D0  7F 83 E3 78 */	mr r3, r28
/* 80080754 000764D4  38 A0 00 00 */	li r5, 0
/* 80080758 000764D8  48 2B 2E 4D */	bl hkRootLevelContainer$7findObjectByType
/* 8008075C 000764DC  2C 03 00 00 */	cmpwi r3, 0
/* 80080760 000764E0  7C 79 1B 78 */	mr r25, r3
/* 80080764 000764E4  41 82 00 24 */	beq lbl_80080788
/* 80080768 000764E8  90 7A 00 34 */	stw r3, 0x34(r26)
/* 8008076C 000764EC  38 7B 34 40 */	addi r3, r27, 0x3440
/* 80080770 000764F0  48 1F C0 CD */	bl hkClass$7getName
/* 80080774 000764F4  7C 64 1B 78 */	mr r4, r3
/* 80080778 000764F8  7F 83 E3 78 */	mr r3, r28
/* 8008077C 000764FC  7F 25 CB 78 */	mr r5, r25
/* 80080780 00076500  48 2B 2E 25 */	bl hkRootLevelContainer$7findObjectByType
/* 80080784 00076504  90 7A 00 38 */	stw r3, 0x38(r26)
lbl_80080788:
/* 80080788 00076508  3C 60 80 53 */	lis r3, lbl_80533578@ha
/* 8008078C 0007650C  38 63 35 78 */	addi r3, r3, lbl_80533578@l
/* 80080790 00076510  48 1F C0 AD */	bl hkClass$7getName
/* 80080794 00076514  7C 64 1B 78 */	mr r4, r3
/* 80080798 00076518  7F 83 E3 78 */	mr r3, r28
/* 8008079C 0007651C  38 A0 00 00 */	li r5, 0
/* 800807A0 00076520  48 2B 2E 05 */	bl hkRootLevelContainer$7findObjectByType
/* 800807A4 00076524  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 800807A8 00076528  A0 1E 00 04 */	lhz r0, 4(r30)
/* 800807AC 0007652C  2C 00 00 00 */	cmpwi r0, 0
/* 800807B0 00076530  41 82 00 38 */	beq lbl_800807E8
/* 800807B4 00076534  A8 7E 00 06 */	lha r3, 6(r30)
/* 800807B8 00076538  38 63 FF FF */	addi r3, r3, -1
/* 800807BC 0007653C  7C 60 07 35 */	extsh. r0, r3
/* 800807C0 00076540  B0 7E 00 06 */	sth r3, 6(r30)
/* 800807C4 00076544  40 82 00 24 */	bne lbl_800807E8
/* 800807C8 00076548  2C 1E 00 00 */	cmpwi r30, 0
/* 800807CC 0007654C  41 82 00 1C */	beq lbl_800807E8
/* 800807D0 00076550  81 9E 00 00 */	lwz r12, 0(r30)
/* 800807D4 00076554  7F C3 F3 78 */	mr r3, r30
/* 800807D8 00076558  38 80 00 01 */	li r4, 1
/* 800807DC 0007655C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800807E0 00076560  7D 89 03 A6 */	mtctr r12
/* 800807E4 00076564  4E 80 04 21 */	bctrl 
lbl_800807E8:
/* 800807E8 00076568  38 61 00 18 */	addi r3, r1, 0x18
/* 800807EC 0007656C  38 80 FF FF */	li r4, -1
/* 800807F0 00076570  48 1F FF 95 */	bl hkIstream$7__dt
/* 800807F4 00076574  39 61 02 50 */	addi r11, r1, 0x250
/* 800807F8 00076578  48 37 0B 6D */	bl _restgpr_25
/* 800807FC 0007657C  80 01 02 54 */	lwz r0, 0x254(r1)
/* 80080800 00076580  7C 08 03 A6 */	mtlr r0
/* 80080804 00076584  38 21 02 50 */	addi r1, r1, 0x250
/* 80080808 00076588  4E 80 00 20 */	blr 

.global hkReferencedObject$7__dt
hkReferencedObject$7__dt:
/* 8008080C 0007658C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80080810 00076590  7C 08 02 A6 */	mflr r0
/* 80080814 00076594  2C 03 00 00 */	cmpwi r3, 0
/* 80080818 00076598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008081C 0007659C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80080820 000765A0  7C 7F 1B 78 */	mr r31, r3
/* 80080824 000765A4  41 82 00 2C */	beq lbl_80080850
/* 80080828 000765A8  2C 04 00 00 */	cmpwi r4, 0
/* 8008082C 000765AC  40 81 00 24 */	ble lbl_80080850
/* 80080830 000765B0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80080834 000765B4  7F E4 FB 78 */	mr r4, r31
/* 80080838 000765B8  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8008083C 000765BC  38 C0 00 13 */	li r6, 0x13
/* 80080840 000765C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80080844 000765C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80080848 000765C8  7D 89 03 A6 */	mtctr r12
/* 8008084C 000765CC  4E 80 04 21 */	bctrl 
lbl_80080850:
/* 80080850 000765D0  7F E3 FB 78 */	mr r3, r31
/* 80080854 000765D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80080858 000765D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008085C 000765DC  7C 08 03 A6 */	mtlr r0
/* 80080860 000765E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80080864 000765E4  4E 80 00 20 */	blr 

.global phContainer$7__dt
phContainer$7__dt:
/* 80080868 000765E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008086C 000765EC  7C 08 02 A6 */	mflr r0
/* 80080870 000765F0  2C 03 00 00 */	cmpwi r3, 0
/* 80080874 000765F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80080878 000765F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008087C 000765FC  7C 9F 23 78 */	mr r31, r4
/* 80080880 00076600  93 C1 00 08 */	stw r30, 8(r1)
/* 80080884 00076604  7C 7E 1B 78 */	mr r30, r3
/* 80080888 00076608  41 82 00 98 */	beq lbl_80080920
/* 8008088C 0007660C  34 03 00 20 */	addic. r0, r3, 0x20
/* 80080890 00076610  41 82 00 28 */	beq lbl_800808B8
/* 80080894 00076614  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80080898 00076618  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8008089C 0007661C  40 82 00 1C */	bne lbl_800808B8
/* 800808A0 00076620  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 800808A4 00076624  38 C0 00 15 */	li r6, 0x15
/* 800808A8 00076628  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 800808AC 0007662C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 800808B0 00076630  54 05 10 3A */	slwi r5, r0, 2
/* 800808B4 00076634  48 1F E2 09 */	bl hkThreadMemory$7deallocateChunk
lbl_800808B8:
/* 800808B8 00076638  34 1E 00 14 */	addic. r0, r30, 0x14
/* 800808BC 0007663C  41 82 00 28 */	beq lbl_800808E4
/* 800808C0 00076640  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800808C4 00076644  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800808C8 00076648  40 82 00 1C */	bne lbl_800808E4
/* 800808CC 0007664C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800808D0 00076650  38 C0 00 15 */	li r6, 0x15
/* 800808D4 00076654  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 800808D8 00076658  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 800808DC 0007665C  54 05 10 3A */	slwi r5, r0, 2
/* 800808E0 00076660  48 1F E1 DD */	bl hkThreadMemory$7deallocateChunk
lbl_800808E4:
/* 800808E4 00076664  34 1E 00 08 */	addic. r0, r30, 8
/* 800808E8 00076668  41 82 00 28 */	beq lbl_80080910
/* 800808EC 0007666C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800808F0 00076670  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800808F4 00076674  40 82 00 1C */	bne lbl_80080910
/* 800808F8 00076678  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800808FC 0007667C  38 C0 00 15 */	li r6, 0x15
/* 80080900 00076680  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80080904 00076684  80 9E 00 08 */	lwz r4, 8(r30)
/* 80080908 00076688  54 05 10 3A */	slwi r5, r0, 2
/* 8008090C 0007668C  48 1F E1 B1 */	bl hkThreadMemory$7deallocateChunk
lbl_80080910:
/* 80080910 00076690  2C 1F 00 00 */	cmpwi r31, 0
/* 80080914 00076694  40 81 00 0C */	ble lbl_80080920
/* 80080918 00076698  7F C3 F3 78 */	mr r3, r30
/* 8008091C 0007669C  4B F8 BF AD */	bl __dl
lbl_80080920:
/* 80080920 000766A0  7F C3 F3 78 */	mr r3, r30
/* 80080924 000766A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80080928 000766A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8008092C 000766AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80080930 000766B0  7C 08 03 A6 */	mtlr r0
/* 80080934 000766B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80080938 000766B8  4E 80 00 20 */	blr 

.global phContainer$7relAll
phContainer$7relAll:
/* 8008093C 000766BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80080940 000766C0  7C 08 02 A6 */	mflr r0
/* 80080944 000766C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80080948 000766C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008094C 000766CC  7C 7F 1B 78 */	mr r31, r3
/* 80080950 000766D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80080954 000766D4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80080958 000766D8  40 82 00 1C */	bne lbl_80080974
/* 8008095C 000766DC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80080960 000766E0  38 C0 00 15 */	li r6, 0x15
/* 80080964 000766E4  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80080968 000766E8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8008096C 000766EC  54 05 10 3A */	slwi r5, r0, 2
/* 80080970 000766F0  48 1F E1 4D */	bl hkThreadMemory$7deallocateChunk
lbl_80080974:
/* 80080974 000766F4  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80080978 000766F8  38 80 00 00 */	li r4, 0
/* 8008097C 000766FC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80080980 00076700  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80080984 00076704  90 9F 00 08 */	stw r4, 8(r31)
/* 80080988 00076708  54 63 00 42 */	rlwinm r3, r3, 0, 1, 1
/* 8008098C 0007670C  64 60 80 00 */	oris r0, r3, 0x8000
/* 80080990 00076710  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80080994 00076714  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80080998 00076718  40 82 00 1C */	bne lbl_800809B4
/* 8008099C 0007671C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 800809A0 00076720  38 C0 00 15 */	li r6, 0x15
/* 800809A4 00076724  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 800809A8 00076728  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 800809AC 0007672C  54 05 10 3A */	slwi r5, r0, 2
/* 800809B0 00076730  48 1F E1 0D */	bl hkThreadMemory$7deallocateChunk
lbl_800809B4:
/* 800809B4 00076734  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 800809B8 00076738  38 80 00 00 */	li r4, 0
/* 800809BC 0007673C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800809C0 00076740  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800809C4 00076744  90 9F 00 14 */	stw r4, 0x14(r31)
/* 800809C8 00076748  54 63 00 42 */	rlwinm r3, r3, 0, 1, 1
/* 800809CC 0007674C  64 60 80 00 */	oris r0, r3, 0x8000
/* 800809D0 00076750  90 9F 00 18 */	stw r4, 0x18(r31)
/* 800809D4 00076754  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800809D8 00076758  40 82 00 1C */	bne lbl_800809F4
/* 800809DC 0007675C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 800809E0 00076760  38 C0 00 15 */	li r6, 0x15
/* 800809E4 00076764  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 800809E8 00076768  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 800809EC 0007676C  54 05 10 3A */	slwi r5, r0, 2
/* 800809F0 00076770  48 1F E0 CD */	bl hkThreadMemory$7deallocateChunk
lbl_800809F4:
/* 800809F4 00076774  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 800809F8 00076778  38 80 00 00 */	li r4, 0
/* 800809FC 0007677C  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80080A00 00076780  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 80080A04 00076784  80 7F 00 04 */	lwz r3, 4(r31)
/* 80080A08 00076788  64 00 80 00 */	oris r0, r0, 0x8000
/* 80080A0C 0007678C  90 9F 00 24 */	stw r4, 0x24(r31)
/* 80080A10 00076790  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80080A14 00076794  A0 03 00 04 */	lhz r0, 4(r3)
/* 80080A18 00076798  2C 00 00 00 */	cmpwi r0, 0
/* 80080A1C 0007679C  41 82 00 34 */	beq lbl_80080A50
/* 80080A20 000767A0  A8 83 00 06 */	lha r4, 6(r3)
/* 80080A24 000767A4  38 84 FF FF */	addi r4, r4, -1
/* 80080A28 000767A8  7C 80 07 35 */	extsh. r0, r4
/* 80080A2C 000767AC  B0 83 00 06 */	sth r4, 6(r3)
/* 80080A30 000767B0  40 82 00 20 */	bne lbl_80080A50
/* 80080A34 000767B4  2C 03 00 00 */	cmpwi r3, 0
/* 80080A38 000767B8  41 82 00 18 */	beq lbl_80080A50
/* 80080A3C 000767BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80080A40 000767C0  38 80 00 01 */	li r4, 1
/* 80080A44 000767C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80080A48 000767C8  7D 89 03 A6 */	mtctr r12
/* 80080A4C 000767CC  4E 80 04 21 */	bctrl 
lbl_80080A50:
/* 80080A50 000767D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80080A54 000767D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80080A58 000767D8  7C 08 03 A6 */	mtlr r0
/* 80080A5C 000767DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80080A60 000767E0  4E 80 00 20 */	blr 

.global hkReferencedObject$7calcStatistics
hkReferencedObject$7calcStatistics:
/* 80080A64 000767E4  4E 80 00 20 */	blr 

.global phStreamReader$7isOk
phStreamReader$7isOk:
/* 80080A68 000767E8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80080A6C 000767EC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80080A70 000767F0  68 00 00 01 */	xori r0, r0, 1
/* 80080A74 000767F4  54 03 C0 0E */	slwi r3, r0, 0x18
/* 80080A78 000767F8  4E 80 00 20 */	blr 

.global phStreamReader$7read
phStreamReader$7read:
/* 80080A7C 000767FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80080A80 00076800  7C 08 02 A6 */	mflr r0
/* 80080A84 00076804  2C 05 00 00 */	cmpwi r5, 0
/* 80080A88 00076808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80080A8C 0007680C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80080A90 00076810  7C BF 2B 78 */	mr r31, r5
/* 80080A94 00076814  93 C1 00 08 */	stw r30, 8(r1)
/* 80080A98 00076818  7C 7E 1B 78 */	mr r30, r3
/* 80080A9C 0007681C  40 81 00 2C */	ble lbl_80080AC8
/* 80080AA0 00076820  80 DE 00 08 */	lwz r6, 8(r30)
/* 80080AA4 00076824  7C 83 23 78 */	mr r3, r4
/* 80080AA8 00076828  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80080AAC 0007682C  7C 86 02 14 */	add r4, r6, r0
/* 80080AB0 00076830  48 20 11 0D */	bl hkString$7memCpy
/* 80080AB4 00076834  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80080AB8 00076838  7F E3 FB 78 */	mr r3, r31
/* 80080ABC 0007683C  7C 00 FA 14 */	add r0, r0, r31
/* 80080AC0 00076840  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80080AC4 00076844  48 00 00 08 */	b lbl_80080ACC
lbl_80080AC8:
/* 80080AC8 00076848  38 60 00 00 */	li r3, 0
lbl_80080ACC:
/* 80080ACC 0007684C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80080AD0 00076850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80080AD4 00076854  83 C1 00 08 */	lwz r30, 8(r1)
/* 80080AD8 00076858  7C 08 03 A6 */	mtlr r0
/* 80080ADC 0007685C  38 21 00 10 */	addi r1, r1, 0x10
/* 80080AE0 00076860  4E 80 00 20 */	blr 

.global phStreamReader$7__dt
phStreamReader$7__dt:
/* 80080AE4 00076864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80080AE8 00076868  7C 08 02 A6 */	mflr r0
/* 80080AEC 0007686C  2C 03 00 00 */	cmpwi r3, 0
/* 80080AF0 00076870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80080AF4 00076874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80080AF8 00076878  7C 7F 1B 78 */	mr r31, r3
/* 80080AFC 0007687C  41 82 00 2C */	beq lbl_80080B28
/* 80080B00 00076880  2C 04 00 00 */	cmpwi r4, 0
/* 80080B04 00076884  40 81 00 24 */	ble lbl_80080B28
/* 80080B08 00076888  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80080B0C 0007688C  7F E4 FB 78 */	mr r4, r31
/* 80080B10 00076890  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80080B14 00076894  38 C0 00 18 */	li r6, 0x18
/* 80080B18 00076898  81 83 00 00 */	lwz r12, 0(r3)
/* 80080B1C 0007689C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80080B20 000768A0  7D 89 03 A6 */	mtctr r12
/* 80080B24 000768A4  4E 80 04 21 */	bctrl 
lbl_80080B28:
/* 80080B28 000768A8  7F E3 FB 78 */	mr r3, r31
/* 80080B2C 000768AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80080B30 000768B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80080B34 000768B4  7C 08 03 A6 */	mtlr r0
/* 80080B38 000768B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80080B3C 000768BC  4E 80 00 20 */	blr 


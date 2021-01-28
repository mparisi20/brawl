.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nteSO$7__ct
nteSO$7__ct:
/* 80150CE4 00146A64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80150CE8 00146A68  7C 08 02 A6 */	mflr r0
/* 80150CEC 00146A6C  3C 80 80 42 */	lis r4, lbl_804208D4@ha
/* 80150CF0 00146A70  38 A0 00 1F */	li r5, 0x1f
/* 80150CF4 00146A74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80150CF8 00146A78  38 84 08 D4 */	addi r4, r4, lbl_804208D4@l
/* 80150CFC 00146A7C  3C 80 80 42 */	lis r4, lbl_804208B0@ha
/* 80150D00 00146A80  38 C0 10 00 */	li r6, 0x1000
/* 80150D04 00146A84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80150D08 00146A88  38 84 08 B0 */	addi r4, r4, lbl_804208B0@l
/* 80150D0C 00146A8C  7C 7F 1B 78 */	mr r31, r3
/* 80150D10 00146A90  38 E0 00 3A */	li r7, 0x3a
/* 80150D14 00146A94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80150D18 00146A98  7F FE FB 78 */	mr r30, r31
/* 80150D1C 00146A9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80150D20 00146AA0  90 83 00 00 */	stw r4, 0(r3)
/* 80150D24 00146AA4  7F E4 FB 78 */	mr r4, r31
/* 80150D28 00146AA8  4B ED E9 01 */	bl gfThread$7createThread
/* 80150D2C 00146AAC  3C 60 80 46 */	lis r3, lbl_804610F8@ha
/* 80150D30 00146AB0  38 A0 00 00 */	li r5, 0
/* 80150D34 00146AB4  38 63 10 F8 */	addi r3, r3, lbl_804610F8@l
/* 80150D38 00146AB8  38 80 00 01 */	li r4, 1
/* 80150D3C 00146ABC  90 7F 00 00 */	stw r3, 0(r31)
/* 80150D40 00146AC0  7F FD FB 78 */	mr r29, r31
/* 80150D44 00146AC4  7F E3 FB 78 */	mr r3, r31
/* 80150D48 00146AC8  90 BF 03 48 */	stw r5, 0x348(r31)
/* 80150D4C 00146ACC  98 9F 03 44 */	stb r4, 0x344(r31)
/* 80150D50 00146AD0  90 BF 03 40 */	stw r5, 0x340(r31)
/* 80150D54 00146AD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80150D58 00146AD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80150D5C 00146ADC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80150D60 00146AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80150D64 00146AE4  7C 08 03 A6 */	mtlr r0
/* 80150D68 00146AE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80150D6C 00146AEC  4E 80 00 20 */	blr 

.global nteSO$7__dt
nteSO$7__dt:
/* 80150D70 00146AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80150D74 00146AF4  7C 08 02 A6 */	mflr r0
/* 80150D78 00146AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80150D7C 00146AFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80150D80 00146B00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80150D84 00146B04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80150D88 00146B08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80150D8C 00146B0C  B0 81 00 08 */	sth r4, 8(r1)
/* 80150D90 00146B10  41 82 00 A0 */	beq lbl_80150E30
/* 80150D94 00146B14  3C 60 80 46 */	lis r3, lbl_804610F8@ha
/* 80150D98 00146B18  38 00 00 00 */	li r0, 0
/* 80150D9C 00146B1C  38 63 10 F8 */	addi r3, r3, lbl_804610F8@l
/* 80150DA0 00146B20  90 7F 00 00 */	stw r3, 0(r31)
/* 80150DA4 00146B24  98 1F 03 44 */	stb r0, 0x344(r31)
/* 80150DA8 00146B28  48 00 00 48 */	b lbl_80150DF0
lbl_80150DAC:
/* 80150DAC 00146B2C  38 7F 00 08 */	addi r3, r31, 8
/* 80150DB0 00146B30  48 09 05 B5 */	bl OSResumeThread
/* 80150DB4 00146B34  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 80150DB8 00146B38  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 80150DBC 00146B3C  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 80150DC0 00146B40  7C 7E 1B 78 */	mr r30, r3
/* 80150DC4 00146B44  38 A5 4D D3 */	addi r5, r5, 0x10624DD3@l
/* 80150DC8 00146B48  38 80 00 0A */	li r4, 0xa
/* 80150DCC 00146B4C  54 00 F0 BE */	srwi r0, r0, 2
/* 80150DD0 00146B50  38 60 00 00 */	li r3, 0
/* 80150DD4 00146B54  7C A5 00 16 */	mulhwu r5, r5, r0
/* 80150DD8 00146B58  7C 63 21 D6 */	mullw r3, r3, r4
/* 80150DDC 00146B5C  54 A5 D1 BE */	srwi r5, r5, 6
/* 80150DE0 00146B60  7C 05 20 16 */	mulhwu r0, r5, r4
/* 80150DE4 00146B64  1C 85 00 0A */	mulli r4, r5, 0xa
/* 80150DE8 00146B68  7C 60 1A 14 */	add r3, r0, r3
/* 80150DEC 00146B6C  48 09 0C 95 */	bl OSSleepTicks
lbl_80150DF0:
/* 80150DF0 00146B70  38 7F 00 08 */	addi r3, r31, 8
/* 80150DF4 00146B74  48 08 F9 41 */	bl OSIsThreadTerminated
/* 80150DF8 00146B78  38 00 00 01 */	li r0, 1
/* 80150DFC 00146B7C  7C 00 18 50 */	subf r0, r0, r3
/* 80150E00 00146B80  7C 00 00 34 */	cntlzw r0, r0
/* 80150E04 00146B84  54 1D D9 7F */	rlwinm. r29, r0, 0x1b, 5, 0x1f
/* 80150E08 00146B88  41 82 FF A4 */	beq lbl_80150DAC
/* 80150E0C 00146B8C  38 80 00 00 */	li r4, 0
/* 80150E10 00146B90  7F E3 FB 78 */	mr r3, r31
/* 80150E14 00146B94  7C 84 07 34 */	extsh r4, r4
/* 80150E18 00146B98  4B ED E7 A1 */	bl gfThread$7__dt
/* 80150E1C 00146B9C  A8 01 00 08 */	lha r0, 8(r1)
/* 80150E20 00146BA0  2C 00 00 00 */	cmpwi r0, 0
/* 80150E24 00146BA4  40 81 00 0C */	ble lbl_80150E30
/* 80150E28 00146BA8  7F E3 FB 78 */	mr r3, r31
/* 80150E2C 00146BAC  4B EB BA 9D */	bl __dl__FPv
lbl_80150E30:
/* 80150E30 00146BB0  7F E3 FB 78 */	mr r3, r31
/* 80150E34 00146BB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80150E38 00146BB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80150E3C 00146BBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80150E40 00146BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80150E44 00146BC4  7C 08 03 A6 */	mtlr r0
/* 80150E48 00146BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80150E4C 00146BCC  4E 80 00 20 */	blr 

.global nteSO$7run
nteSO$7run:
/* 80150E50 00146BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80150E54 00146BD4  7C 08 02 A6 */	mflr r0
/* 80150E58 00146BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80150E5C 00146BDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80150E60 00146BE0  48 2A 04 C1 */	bl _savegpr_27
/* 80150E64 00146BE4  7C 3F 0B 78 */	mr r31, r1
/* 80150E68 00146BE8  7C 7E 1B 78 */	mr r30, r3
/* 80150E6C 00146BEC  48 00 00 FC */	b lbl_80150F68
lbl_80150E70:
/* 80150E70 00146BF0  80 1E 03 40 */	lwz r0, 0x340(r30)
/* 80150E74 00146BF4  2C 00 00 01 */	cmpwi r0, 1
/* 80150E78 00146BF8  40 82 00 90 */	bne lbl_80150F08
/* 80150E7C 00146BFC  38 7F 00 08 */	addi r3, r31, 8
/* 80150E80 00146C00  38 80 00 00 */	li r4, 0
/* 80150E84 00146C04  38 A0 00 08 */	li r5, 8
/* 80150E88 00146C08  4B EB 35 B5 */	bl func_8000443C
/* 80150E8C 00146C0C  3C 60 80 15 */	lis r3, nteSO$7SOAlloc@ha
/* 80150E90 00146C10  3C 80 80 15 */	lis r4, nteSO$7SOFree@ha
/* 80150E94 00146C14  38 63 10 98 */	addi r3, r3, nteSO$7SOAlloc@l
/* 80150E98 00146C18  38 84 10 C4 */	addi r4, r4, nteSO$7SOFree@l
/* 80150E9C 00146C1C  90 7F 00 08 */	stw r3, 8(r31)
/* 80150EA0 00146C20  38 7F 00 08 */	addi r3, r31, 8
/* 80150EA4 00146C24  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80150EA8 00146C28  48 25 4F 99 */	bl SOInit
/* 80150EAC 00146C2C  7C 7D 1B 78 */	mr r29, r3
/* 80150EB0 00146C30  2C 1D FF F9 */	cmpwi r29, -7
/* 80150EB4 00146C34  40 82 00 08 */	bne lbl_80150EBC
/* 80150EB8 00146C38  3B A0 00 00 */	li r29, 0
lbl_80150EBC:
/* 80150EBC 00146C3C  2C 1D 00 00 */	cmpwi r29, 0
/* 80150EC0 00146C40  40 82 00 1C */	bne lbl_80150EDC
/* 80150EC4 00146C44  80 7E 03 4C */	lwz r3, 0x34c(r30)
/* 80150EC8 00146C48  48 25 52 3D */	bl SOStartupEx
/* 80150ECC 00146C4C  7C 7D 1B 78 */	mr r29, r3
/* 80150ED0 00146C50  2C 1D FF F9 */	cmpwi r29, -7
/* 80150ED4 00146C54  40 82 00 08 */	bne lbl_80150EDC
/* 80150ED8 00146C58  3B A0 00 00 */	li r29, 0
lbl_80150EDC:
/* 80150EDC 00146C5C  80 1E 03 48 */	lwz r0, 0x348(r30)
/* 80150EE0 00146C60  2C 00 00 00 */	cmpwi r0, 0
/* 80150EE4 00146C64  41 82 00 70 */	beq lbl_80150F54
/* 80150EE8 00146C68  80 7E 03 48 */	lwz r3, 0x348(r30)
/* 80150EEC 00146C6C  7F A5 EB 78 */	mr r5, r29
/* 80150EF0 00146C70  38 80 00 00 */	li r4, 0
/* 80150EF4 00146C74  81 83 00 00 */	lwz r12, 0(r3)
/* 80150EF8 00146C78  81 8C 00 08 */	lwz r12, 8(r12)
/* 80150EFC 00146C7C  7D 89 03 A6 */	mtctr r12
/* 80150F00 00146C80  4E 80 04 21 */	bctrl 
/* 80150F04 00146C84  48 00 00 50 */	b lbl_80150F54
lbl_80150F08:
/* 80150F08 00146C88  80 1E 03 40 */	lwz r0, 0x340(r30)
/* 80150F0C 00146C8C  2C 00 00 02 */	cmpwi r0, 2
/* 80150F10 00146C90  40 82 00 44 */	bne lbl_80150F54
/* 80150F14 00146C94  48 25 56 19 */	bl SOCleanup
/* 80150F18 00146C98  48 25 50 F1 */	bl SOFinish
/* 80150F1C 00146C9C  7C 7C 1B 78 */	mr r28, r3
/* 80150F20 00146CA0  2C 1C FF F9 */	cmpwi r28, -7
/* 80150F24 00146CA4  40 82 00 08 */	bne lbl_80150F2C
/* 80150F28 00146CA8  3B 80 00 00 */	li r28, 0
lbl_80150F2C:
/* 80150F2C 00146CAC  80 1E 03 48 */	lwz r0, 0x348(r30)
/* 80150F30 00146CB0  2C 00 00 00 */	cmpwi r0, 0
/* 80150F34 00146CB4  41 82 00 20 */	beq lbl_80150F54
/* 80150F38 00146CB8  80 7E 03 48 */	lwz r3, 0x348(r30)
/* 80150F3C 00146CBC  7F 85 E3 78 */	mr r5, r28
/* 80150F40 00146CC0  38 80 00 01 */	li r4, 1
/* 80150F44 00146CC4  81 83 00 00 */	lwz r12, 0(r3)
/* 80150F48 00146CC8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80150F4C 00146CCC  7D 89 03 A6 */	mtctr r12
/* 80150F50 00146CD0  4E 80 04 21 */	bctrl 
lbl_80150F54:
/* 80150F54 00146CD4  38 00 00 00 */	li r0, 0
/* 80150F58 00146CD8  38 7E 00 08 */	addi r3, r30, 8
/* 80150F5C 00146CDC  90 1E 03 40 */	stw r0, 0x340(r30)
/* 80150F60 00146CE0  48 09 06 9D */	bl OSSuspendThread
/* 80150F64 00146CE4  7C 7B 1B 78 */	mr r27, r3
lbl_80150F68:
/* 80150F68 00146CE8  88 1E 03 44 */	lbz r0, 0x344(r30)
/* 80150F6C 00146CEC  2C 00 00 00 */	cmpwi r0, 0
/* 80150F70 00146CF0  40 82 FF 00 */	bne lbl_80150E70
/* 80150F74 00146CF4  7F EA FB 78 */	mr r10, r31
/* 80150F78 00146CF8  39 6A 00 30 */	addi r11, r10, 0x30
/* 80150F7C 00146CFC  48 2A 03 F1 */	bl _restgpr_27
/* 80150F80 00146D00  81 41 00 00 */	lwz r10, 0(r1)
/* 80150F84 00146D04  80 0A 00 04 */	lwz r0, 4(r10)
/* 80150F88 00146D08  7D 41 53 78 */	mr r1, r10
/* 80150F8C 00146D0C  7C 08 03 A6 */	mtlr r0
/* 80150F90 00146D10  4E 80 00 20 */	blr 

.global nteSO$7startup
nteSO$7startup:
/* 80150F94 00146D14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80150F98 00146D18  7C 08 02 A6 */	mflr r0
/* 80150F9C 00146D1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80150FA0 00146D20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80150FA4 00146D24  7C 7F 1B 78 */	mr r31, r3
/* 80150FA8 00146D28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80150FAC 00146D2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80150FB0 00146D30  7C 9D 23 78 */	mr r29, r4
/* 80150FB4 00146D34  80 03 03 40 */	lwz r0, 0x340(r3)
/* 80150FB8 00146D38  90 A1 00 08 */	stw r5, 8(r1)
/* 80150FBC 00146D3C  2C 00 00 00 */	cmpwi r0, 0
/* 80150FC0 00146D40  41 82 00 0C */	beq lbl_80150FCC
/* 80150FC4 00146D44  38 60 00 00 */	li r3, 0
/* 80150FC8 00146D48  48 00 00 38 */	b lbl_80151000
lbl_80150FCC:
/* 80150FCC 00146D4C  2C 1D 00 00 */	cmpwi r29, 0
/* 80150FD0 00146D50  40 82 00 0C */	bne lbl_80150FDC
/* 80150FD4 00146D54  38 60 00 00 */	li r3, 0
/* 80150FD8 00146D58  48 00 00 28 */	b lbl_80151000
lbl_80150FDC:
/* 80150FDC 00146D5C  80 81 00 08 */	lwz r4, 8(r1)
/* 80150FE0 00146D60  38 00 00 01 */	li r0, 1
/* 80150FE4 00146D64  38 7F 00 08 */	addi r3, r31, 8
/* 80150FE8 00146D68  90 9F 03 4C */	stw r4, 0x34c(r31)
/* 80150FEC 00146D6C  90 1F 03 40 */	stw r0, 0x340(r31)
/* 80150FF0 00146D70  93 BF 03 48 */	stw r29, 0x348(r31)
/* 80150FF4 00146D74  48 09 03 71 */	bl OSResumeThread
/* 80150FF8 00146D78  7C 7E 1B 78 */	mr r30, r3
/* 80150FFC 00146D7C  38 60 00 01 */	li r3, 1
lbl_80151000:
/* 80151000 00146D80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80151004 00146D84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80151008 00146D88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015100C 00146D8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80151010 00146D90  7C 08 03 A6 */	mtlr r0
/* 80151014 00146D94  38 21 00 20 */	addi r1, r1, 0x20
/* 80151018 00146D98  4E 80 00 20 */	blr 

.global nteSO$7finish
nteSO$7finish:
/* 8015101C 00146D9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80151020 00146DA0  7C 08 02 A6 */	mflr r0
/* 80151024 00146DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80151028 00146DA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015102C 00146DAC  7C 7F 1B 78 */	mr r31, r3
/* 80151030 00146DB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80151034 00146DB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80151038 00146DB8  7C 9D 23 78 */	mr r29, r4
/* 8015103C 00146DBC  80 03 03 40 */	lwz r0, 0x340(r3)
/* 80151040 00146DC0  2C 00 00 00 */	cmpwi r0, 0
/* 80151044 00146DC4  41 82 00 0C */	beq lbl_80151050
/* 80151048 00146DC8  38 60 00 00 */	li r3, 0
/* 8015104C 00146DCC  48 00 00 30 */	b lbl_8015107C
lbl_80151050:
/* 80151050 00146DD0  2C 1D 00 00 */	cmpwi r29, 0
/* 80151054 00146DD4  40 82 00 0C */	bne lbl_80151060
/* 80151058 00146DD8  38 60 00 00 */	li r3, 0
/* 8015105C 00146DDC  48 00 00 20 */	b lbl_8015107C
lbl_80151060:
/* 80151060 00146DE0  38 00 00 02 */	li r0, 2
/* 80151064 00146DE4  38 7F 00 08 */	addi r3, r31, 8
/* 80151068 00146DE8  90 1F 03 40 */	stw r0, 0x340(r31)
/* 8015106C 00146DEC  93 BF 03 48 */	stw r29, 0x348(r31)
/* 80151070 00146DF0  48 09 02 F5 */	bl OSResumeThread
/* 80151074 00146DF4  7C 7E 1B 78 */	mr r30, r3
/* 80151078 00146DF8  38 60 00 01 */	li r3, 1
lbl_8015107C:
/* 8015107C 00146DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80151080 00146E00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80151084 00146E04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80151088 00146E08  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8015108C 00146E0C  7C 08 03 A6 */	mtlr r0
/* 80151090 00146E10  38 21 00 20 */	addi r1, r1, 0x20
/* 80151094 00146E14  4E 80 00 20 */	blr 

.global nteSO$7SOAlloc
nteSO$7SOAlloc:
/* 80151098 00146E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015109C 00146E1C  7C 08 02 A6 */	mflr r0
/* 801510A0 00146E20  38 60 00 00 */	li r3, 0
/* 801510A4 00146E24  38 A0 00 20 */	li r5, 0x20
/* 801510A8 00146E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801510AC 00146E2C  90 81 00 08 */	stw r4, 8(r1)
/* 801510B0 00146E30  4B FF FA F9 */	bl nteDWC$7AllocEx
/* 801510B4 00146E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801510B8 00146E38  7C 08 03 A6 */	mtlr r0
/* 801510BC 00146E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 801510C0 00146E40  4E 80 00 20 */	blr 

.global nteSO$7SOFree
nteSO$7SOFree:
/* 801510C4 00146E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801510C8 00146E48  7C 08 02 A6 */	mflr r0
/* 801510CC 00146E4C  38 60 00 00 */	li r3, 0
/* 801510D0 00146E50  38 A0 00 00 */	li r5, 0
/* 801510D4 00146E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 801510D8 00146E58  90 81 00 08 */	stw r4, 8(r1)
/* 801510DC 00146E5C  4B FF FB 45 */	bl nteDWC$7FreeEx
/* 801510E0 00146E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801510E4 00146E64  7C 08 03 A6 */	mtlr r0
/* 801510E8 00146E68  38 21 00 10 */	addi r1, r1, 0x10
/* 801510EC 00146E6C  4E 80 00 20 */	blr 

.global nteSO$7showError
nteSO$7showError:
/* 801510F0 00146E70  4E 80 00 20 */	blr 


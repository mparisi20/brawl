.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfStgedit$7__ct
IfStgedit$7__ct:
/* 8010EFD4 00104D54  3C 80 80 46 */	lis r4, lbl_8045D824@ha
/* 8010EFD8 00104D58  38 00 00 00 */	li r0, 0
/* 8010EFDC 00104D5C  38 84 D8 24 */	addi r4, r4, lbl_8045D824@l
/* 8010EFE0 00104D60  90 03 00 00 */	stw r0, 0(r3)
/* 8010EFE4 00104D64  90 83 00 10 */	stw r4, 0x10(r3)
/* 8010EFE8 00104D68  90 03 00 04 */	stw r0, 4(r3)
/* 8010EFEC 00104D6C  98 03 00 08 */	stb r0, 8(r3)
/* 8010EFF0 00104D70  90 03 00 0C */	stw r0, 0xc(r3)
/* 8010EFF4 00104D74  4E 80 00 20 */	blr 

.global IfStgedit$7__dt
IfStgedit$7__dt:
/* 8010EFF8 00104D78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010EFFC 00104D7C  7C 08 02 A6 */	mflr r0
/* 8010F000 00104D80  2C 03 00 00 */	cmpwi r3, 0
/* 8010F004 00104D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010F008 00104D88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010F00C 00104D8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010F010 00104D90  7C 9E 23 78 */	mr r30, r4
/* 8010F014 00104D94  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010F018 00104D98  7C 7D 1B 78 */	mr r29, r3
/* 8010F01C 00104D9C  41 82 00 4C */	beq lbl_8010F068
/* 8010F020 00104DA0  3C 80 80 46 */	lis r4, lbl_8045D824@ha
/* 8010F024 00104DA4  3B E0 00 00 */	li r31, 0
/* 8010F028 00104DA8  38 84 D8 24 */	addi r4, r4, lbl_8045D824@l
/* 8010F02C 00104DAC  90 83 00 10 */	stw r4, 0x10(r3)
/* 8010F030 00104DB0  80 63 00 04 */	lwz r3, 4(r3)
/* 8010F034 00104DB4  2C 03 00 00 */	cmpwi r3, 0
/* 8010F038 00104DB8  41 82 00 20 */	beq lbl_8010F058
/* 8010F03C 00104DBC  41 82 00 18 */	beq lbl_8010F054
/* 8010F040 00104DC0  81 83 00 5C */	lwz r12, 0x5c(r3)
/* 8010F044 00104DC4  38 80 00 01 */	li r4, 1
/* 8010F048 00104DC8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8010F04C 00104DCC  7D 89 03 A6 */	mtctr r12
/* 8010F050 00104DD0  4E 80 04 21 */	bctrl 
lbl_8010F054:
/* 8010F054 00104DD4  93 FD 00 04 */	stw r31, 4(r29)
lbl_8010F058:
/* 8010F058 00104DD8  2C 1E 00 00 */	cmpwi r30, 0
/* 8010F05C 00104DDC  40 81 00 0C */	ble lbl_8010F068
/* 8010F060 00104DE0  7F A3 EB 78 */	mr r3, r29
/* 8010F064 00104DE4  4B EF D8 65 */	bl __dl__FPv
lbl_8010F068:
/* 8010F068 00104DE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010F06C 00104DEC  7F A3 EB 78 */	mr r3, r29
/* 8010F070 00104DF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010F074 00104DF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010F078 00104DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010F07C 00104DFC  7C 08 03 A6 */	mtlr r0
/* 8010F080 00104E00  38 21 00 20 */	addi r1, r1, 0x20
/* 8010F084 00104E04  4E 80 00 20 */	blr 

.global IfStgedit$7createModel
IfStgedit$7createModel:
/* 8010F088 00104E08  7C 86 23 78 */	mr r6, r4
/* 8010F08C 00104E0C  38 82 95 A8 */	addi r4, r2, lbl_805A28C8-_SDA2_BASE_
/* 8010F090 00104E10  38 A0 00 01 */	li r5, 1
/* 8010F094 00104E14  38 E0 00 00 */	li r7, 0
/* 8010F098 00104E18  48 00 00 04 */	b IfStgedit$7createObjResFile

.global IfStgedit$7createObjResFile
IfStgedit$7createObjResFile:
/* 8010F09C 00104E1C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8010F0A0 00104E20  7C 08 02 A6 */	mflr r0
/* 8010F0A4 00104E24  90 01 00 74 */	stw r0, 0x74(r1)
/* 8010F0A8 00104E28  39 61 00 70 */	addi r11, r1, 0x70
/* 8010F0AC 00104E2C  48 2E 22 65 */	bl _savegpr_23
/* 8010F0B0 00104E30  7C 77 1B 78 */	mr r23, r3
/* 8010F0B4 00104E34  7C 9C 23 78 */	mr r28, r4
/* 8010F0B8 00104E38  7C B8 2B 78 */	mr r24, r5
/* 8010F0BC 00104E3C  7C D9 33 78 */	mr r25, r6
/* 8010F0C0 00104E40  7C FA 3B 78 */	mr r26, r7
/* 8010F0C4 00104E44  3B C0 00 00 */	li r30, 0
/* 8010F0C8 00104E48  48 00 00 A8 */	b lbl_8010F170
lbl_8010F0CC:
/* 8010F0CC 00104E4C  88 7C 00 05 */	lbz r3, 5(r28)
/* 8010F0D0 00104E50  3B E0 00 01 */	li r31, 1
/* 8010F0D4 00104E54  88 1C 00 04 */	lbz r0, 4(r28)
/* 8010F0D8 00104E58  7C 00 18 40 */	cmplw r0, r3
/* 8010F0DC 00104E5C  40 80 00 08 */	bge lbl_8010F0E4
/* 8010F0E0 00104E60  7F E0 18 50 */	subf r31, r0, r3
lbl_8010F0E4:
/* 8010F0E4 00104E64  3B A0 00 00 */	li r29, 0
/* 8010F0E8 00104E68  48 00 00 78 */	b lbl_8010F160
lbl_8010F0EC:
/* 8010F0EC 00104E6C  88 BC 00 06 */	lbz r5, 6(r28)
/* 8010F0F0 00104E70  7C 1D D2 14 */	add r0, r29, r26
/* 8010F0F4 00104E74  80 9C 00 00 */	lwz r4, 0(r28)
/* 8010F0F8 00104E78  7F 23 CB 78 */	mr r3, r25
/* 8010F0FC 00104E7C  7C A5 02 14 */	add r5, r5, r0
/* 8010F100 00104E80  38 C0 00 00 */	li r6, 0
/* 8010F104 00104E84  38 E0 00 28 */	li r7, 0x28
/* 8010F108 00104E88  4B FA 32 8D */	bl MuObject$7create
/* 8010F10C 00104E8C  88 1C 00 04 */	lbz r0, 4(r28)
/* 8010F110 00104E90  7C 7B 1B 78 */	mr r27, r3
/* 8010F114 00104E94  80 9C 00 00 */	lwz r4, 0(r28)
/* 8010F118 00104E98  7C 00 EA 14 */	add r0, r0, r29
/* 8010F11C 00104E9C  54 00 10 3A */	slwi r0, r0, 2
/* 8010F120 00104EA0  7C B7 02 14 */	add r5, r23, r0
/* 8010F124 00104EA4  90 65 00 04 */	stw r3, 4(r5)
/* 8010F128 00104EA8  38 61 00 08 */	addi r3, r1, 8
/* 8010F12C 00104EAC  48 2E B1 55 */	bl strcpy
/* 8010F130 00104EB0  38 61 00 08 */	addi r3, r1, 8
/* 8010F134 00104EB4  38 8D A2 70 */	addi r4, r13, lbl_8059E690-_SDA_BASE_
/* 8010F138 00104EB8  48 2E B2 4D */	bl strcat
/* 8010F13C 00104EBC  7F 63 DB 78 */	mr r3, r27
/* 8010F140 00104EC0  38 81 00 08 */	addi r4, r1, 8
/* 8010F144 00104EC4  4B FA 62 09 */	bl MuObject$7changeAnimN
/* 8010F148 00104EC8  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8010F14C 00104ECC  2C 03 00 00 */	cmpwi r3, 0
/* 8010F150 00104ED0  41 82 00 0C */	beq lbl_8010F15C
/* 8010F154 00104ED4  C0 22 95 B0 */	lfs f1, lbl_805A28D0-_SDA2_BASE_(r2)
/* 8010F158 00104ED8  4B F1 94 F9 */	bl gfModelAnimation$7setUpdateRate
lbl_8010F15C:
/* 8010F15C 00104EDC  3B BD 00 01 */	addi r29, r29, 1
lbl_8010F160:
/* 8010F160 00104EE0  7C 1D F8 00 */	cmpw r29, r31
/* 8010F164 00104EE4  41 80 FF 88 */	blt lbl_8010F0EC
/* 8010F168 00104EE8  3B DE 00 01 */	addi r30, r30, 1
/* 8010F16C 00104EEC  3B 9C 00 08 */	addi r28, r28, 8
lbl_8010F170:
/* 8010F170 00104EF0  7C 1E C0 00 */	cmpw r30, r24
/* 8010F174 00104EF4  41 80 FF 58 */	blt lbl_8010F0CC
/* 8010F178 00104EF8  39 61 00 70 */	addi r11, r1, 0x70
/* 8010F17C 00104EFC  48 2E 21 E1 */	bl _restgpr_23
/* 8010F180 00104F00  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8010F184 00104F04  7C 08 03 A6 */	mtlr r0
/* 8010F188 00104F08  38 21 00 70 */	addi r1, r1, 0x70
/* 8010F18C 00104F0C  4E 80 00 20 */	blr 

.global IfStgedit$7startMelee
IfStgedit$7startMelee:
/* 8010F190 00104F10  90 83 00 00 */	stw r4, 0(r3)
/* 8010F194 00104F14  4E 80 00 20 */	blr 

.global IfStgedit$7main
IfStgedit$7main:
/* 8010F198 00104F18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8010F19C 00104F1C  7C 08 02 A6 */	mflr r0
/* 8010F1A0 00104F20  90 01 00 64 */	stw r0, 0x64(r1)
/* 8010F1A4 00104F24  38 A1 00 08 */	addi r5, r1, 8
/* 8010F1A8 00104F28  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8010F1AC 00104F2C  7C 7F 1B 78 */	mr r31, r3
/* 8010F1B0 00104F30  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 8010F1B4 00104F34  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8010F1B8 00104F38  4B F1 BC 91 */	bl gfPadSystem$7getSysPadStatus
/* 8010F1BC 00104F3C  88 01 00 40 */	lbz r0, 0x40(r1)
/* 8010F1C0 00104F40  7C 00 07 75 */	extsb. r0, r0
/* 8010F1C4 00104F44  40 82 00 30 */	bne lbl_8010F1F4
/* 8010F1C8 00104F48  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8010F1CC 00104F4C  38 62 95 C0 */	addi r3, r2, lbl_805A28E0-_SDA2_BASE_
/* 8010F1D0 00104F50  3C 00 43 30 */	lis r0, 0x4330
/* 8010F1D4 00104F54  C8 22 95 B8 */	lfd f1, lbl_805A28D8-_SDA2_BASE_(r2)
/* 8010F1D8 00104F58  7C 83 20 AE */	lbzx r4, r3, r4
/* 8010F1DC 00104F5C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8010F1E0 00104F60  80 7F 00 04 */	lwz r3, 4(r31)
/* 8010F1E4 00104F64  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8010F1E8 00104F68  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8010F1EC 00104F6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8010F1F0 00104F70  4B FA 86 5D */	bl MuObject$7setFrameVisible
lbl_8010F1F4:
/* 8010F1F4 00104F74  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8010F1F8 00104F78  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8010F1FC 00104F7C  7C 08 03 A6 */	mtlr r0
/* 8010F200 00104F80  38 21 00 60 */	addi r1, r1, 0x60
/* 8010F204 00104F84  4E 80 00 20 */	blr 

.global IfStgedit$7setVisible
IfStgedit$7setVisible:
/* 8010F208 00104F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010F20C 00104F8C  7C 08 02 A6 */	mflr r0
/* 8010F210 00104F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F214 00104F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010F218 00104F98  7C 9F 23 78 */	mr r31, r4
/* 8010F21C 00104F9C  93 C1 00 08 */	stw r30, 8(r1)
/* 8010F220 00104FA0  7C 7E 1B 78 */	mr r30, r3
/* 8010F224 00104FA4  98 83 00 08 */	stb r4, 8(r3)
/* 8010F228 00104FA8  80 63 00 00 */	lwz r3, 0(r3)
/* 8010F22C 00104FAC  80 9E 00 04 */	lwz r4, 4(r30)
/* 8010F230 00104FB0  81 83 00 00 */	lwz r12, 0(r3)
/* 8010F234 00104FB4  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8010F238 00104FB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8010F23C 00104FBC  7D 89 03 A6 */	mtctr r12
/* 8010F240 00104FC0  4E 80 04 21 */	bctrl 
/* 8010F244 00104FC4  2C 1F 00 00 */	cmpwi r31, 0
/* 8010F248 00104FC8  41 82 00 24 */	beq lbl_8010F26C
/* 8010F24C 00104FCC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8010F250 00104FD0  80 BE 00 04 */	lwz r5, 4(r30)
/* 8010F254 00104FD4  81 83 00 00 */	lwz r12, 0(r3)
/* 8010F258 00104FD8  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 8010F25C 00104FDC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8010F260 00104FE0  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8010F264 00104FE4  7D 89 03 A6 */	mtctr r12
/* 8010F268 00104FE8  4E 80 04 21 */	bctrl 
lbl_8010F26C:
/* 8010F26C 00104FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010F270 00104FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010F274 00104FF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010F278 00104FF8  7C 08 03 A6 */	mtlr r0
/* 8010F27C 00104FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8010F280 00105000  4E 80 00 20 */	blr 

.global IfStgedit$7setHelpControllerNo
IfStgedit$7setHelpControllerNo:
/* 8010F284 00105004  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8010F288 00105008  7C 08 02 A6 */	mflr r0
/* 8010F28C 0010500C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8010F290 00105010  38 A1 00 08 */	addi r5, r1, 8
/* 8010F294 00105014  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8010F298 00105018  7C 7F 1B 78 */	mr r31, r3
/* 8010F29C 0010501C  90 83 00 0C */	stw r4, 0xc(r3)
/* 8010F2A0 00105020  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 8010F2A4 00105024  4B F1 BB A5 */	bl gfPadSystem$7getSysPadStatus
/* 8010F2A8 00105028  88 01 00 40 */	lbz r0, 0x40(r1)
/* 8010F2AC 0010502C  7C 00 07 75 */	extsb. r0, r0
/* 8010F2B0 00105030  40 82 00 30 */	bne lbl_8010F2E0
/* 8010F2B4 00105034  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8010F2B8 00105038  38 62 95 C0 */	addi r3, r2, lbl_805A28E0-_SDA2_BASE_
/* 8010F2BC 0010503C  3C 00 43 30 */	lis r0, 0x4330
/* 8010F2C0 00105040  C8 22 95 B8 */	lfd f1, lbl_805A28D8-_SDA2_BASE_(r2)
/* 8010F2C4 00105044  7C 83 20 AE */	lbzx r4, r3, r4
/* 8010F2C8 00105048  90 01 00 48 */	stw r0, 0x48(r1)
/* 8010F2CC 0010504C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8010F2D0 00105050  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8010F2D4 00105054  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8010F2D8 00105058  EC 20 08 28 */	fsubs f1, f0, f1
/* 8010F2DC 0010505C  4B FA 85 71 */	bl MuObject$7setFrameVisible
lbl_8010F2E0:
/* 8010F2E0 00105060  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8010F2E4 00105064  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8010F2E8 00105068  7C 08 03 A6 */	mtlr r0
/* 8010F2EC 0010506C  38 21 00 60 */	addi r1, r1, 0x60
/* 8010F2F0 00105070  4E 80 00 20 */	blr 

.global IfStgedit$7setVisibleZoomHelp
IfStgedit$7setVisibleZoomHelp:
/* 8010F2F4 00105074  2C 04 00 00 */	cmpwi r4, 0
/* 8010F2F8 00105078  41 82 00 0C */	beq lbl_8010F304
/* 8010F2FC 0010507C  C0 22 95 B0 */	lfs f1, lbl_805A28D0-_SDA2_BASE_(r2)
/* 8010F300 00105080  48 00 00 08 */	b lbl_8010F308
lbl_8010F304:
/* 8010F304 00105084  C0 22 95 C4 */	lfs f1, lbl_805A28E4-_SDA2_BASE_(r2)
lbl_8010F308:
/* 8010F308 00105088  80 63 00 04 */	lwz r3, 4(r3)
/* 8010F30C 0010508C  4B FA 84 8C */	b MuObject$7setFrameNode
/* 8010F310 00105090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010F314 00105094  7C 08 02 A6 */	mflr r0
/* 8010F318 00105098  38 60 00 1C */	li r3, 0x1c
/* 8010F31C 0010509C  38 80 00 28 */	li r4, 0x28
/* 8010F320 001050A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F324 001050A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010F328 001050A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8010F32C 001050AC  4B EF D5 8D */	bl __nw__10srHeapTypeFUlUl
/* 8010F330 001050B0  2C 03 00 00 */	cmpwi r3, 0
/* 8010F334 001050B4  7C 7E 1B 78 */	mr r30, r3
/* 8010F338 001050B8  41 82 00 4C */	beq lbl_8010F384
/* 8010F33C 001050BC  88 03 00 00 */	lbz r0, 0(r3)
/* 8010F340 001050C0  3C 80 80 10 */	lis r4, lbl_800FC3D8@ha
/* 8010F344 001050C4  3C A0 80 10 */	lis r5, lbl_800FC3E4@ha
/* 8010F348 001050C8  3B E0 00 00 */	li r31, 0
/* 8010F34C 001050CC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8010F350 001050D0  38 84 C3 D8 */	addi r4, r4, lbl_800FC3D8@l
/* 8010F354 001050D4  98 03 00 00 */	stb r0, 0(r3)
/* 8010F358 001050D8  38 A5 C3 E4 */	addi r5, r5, lbl_800FC3E4@l
/* 8010F35C 001050DC  38 C0 00 04 */	li r6, 4
/* 8010F360 001050E0  38 E0 00 02 */	li r7, 2
/* 8010F364 001050E4  93 E3 00 08 */	stw r31, 8(r3)
/* 8010F368 001050E8  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8010F36C 001050EC  93 E3 00 10 */	stw r31, 0x10(r3)
/* 8010F370 001050F0  38 63 00 14 */	addi r3, r3, 0x14
/* 8010F374 001050F4  48 2E 18 69 */	bl __construct_array
/* 8010F378 001050F8  93 FE 00 08 */	stw r31, 8(r30)
/* 8010F37C 001050FC  93 FE 00 0C */	stw r31, 0xc(r30)
/* 8010F380 00105100  93 CD BF 30 */	stw r30, lbl_805A0350-_SDA_BASE_(r13)
lbl_8010F384:
/* 8010F384 00105104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010F388 00105108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010F38C 0010510C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010F390 00105110  7C 08 03 A6 */	mtlr r0
/* 8010F394 00105114  38 21 00 10 */	addi r1, r1, 0x10
/* 8010F398 00105118  4E 80 00 20 */	blr 
/* 8010F39C 0010511C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010F3A0 00105120  7C 08 02 A6 */	mflr r0
/* 8010F3A4 00105124  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010F3A8 00105128  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010F3AC 0010512C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010F3B0 00105130  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010F3B4 00105134  83 AD BF 30 */	lwz r29, lbl_805A0350-_SDA_BASE_(r13)
/* 8010F3B8 00105138  2C 1D 00 00 */	cmpwi r29, 0
/* 8010F3BC 0010513C  41 82 00 CC */	beq lbl_8010F488
/* 8010F3C0 00105140  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8010F3C4 00105144  2C 03 00 00 */	cmpwi r3, 0
/* 8010F3C8 00105148  41 82 00 24 */	beq lbl_8010F3EC
/* 8010F3CC 0010514C  41 82 00 18 */	beq lbl_8010F3E4
/* 8010F3D0 00105150  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8010F3D4 00105154  38 80 00 01 */	li r4, 1
/* 8010F3D8 00105158  81 8C 00 08 */	lwz r12, 8(r12)
/* 8010F3DC 0010515C  7D 89 03 A6 */	mtctr r12
/* 8010F3E0 00105160  4E 80 04 21 */	bctrl 
lbl_8010F3E4:
/* 8010F3E4 00105164  38 00 00 00 */	li r0, 0
/* 8010F3E8 00105168  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_8010F3EC:
/* 8010F3EC 0010516C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8010F3F0 00105170  2C 03 00 00 */	cmpwi r3, 0
/* 8010F3F4 00105174  41 82 00 10 */	beq lbl_8010F404
/* 8010F3F8 00105178  48 08 E4 E1 */	bl nw4r3g3d6G3dObjFv$7Destroy
/* 8010F3FC 0010517C  38 00 00 00 */	li r0, 0
/* 8010F400 00105180  90 1D 00 04 */	stw r0, 4(r29)
lbl_8010F404:
/* 8010F404 00105184  80 6D BB 60 */	lwz r3, lbl_8059FF80-_SDA_BASE_(r13)
/* 8010F408 00105188  4B EF E3 B1 */	bl gfSceneRoot$7removeInfoCamResAnm
/* 8010F40C 0010518C  80 7D 00 08 */	lwz r3, 8(r29)
/* 8010F410 00105190  2C 03 00 00 */	cmpwi r3, 0
/* 8010F414 00105194  41 82 00 10 */	beq lbl_8010F424
/* 8010F418 00105198  4B F1 56 35 */	bl free__13gfHeapManagerFPv
/* 8010F41C 0010519C  38 00 00 00 */	li r0, 0
/* 8010F420 001051A0  90 1D 00 08 */	stw r0, 8(r29)
lbl_8010F424:
/* 8010F424 001051A4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8010F428 001051A8  2C 03 00 00 */	cmpwi r3, 0
/* 8010F42C 001051AC  41 82 00 10 */	beq lbl_8010F43C
/* 8010F430 001051B0  4B F1 56 1D */	bl free__13gfHeapManagerFPv
/* 8010F434 001051B4  38 00 00 00 */	li r0, 0
/* 8010F438 001051B8  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_8010F43C:
/* 8010F43C 001051BC  3B DD 00 14 */	addi r30, r29, 0x14
/* 8010F440 001051C0  3B E0 00 00 */	li r31, 0
lbl_8010F444:
/* 8010F444 001051C4  7F C3 F3 78 */	mr r3, r30
/* 8010F448 001051C8  4B F1 29 9D */	bl gfFileIOHandle$7cancelRequest
/* 8010F44C 001051CC  3B FF 00 01 */	addi r31, r31, 1
/* 8010F450 001051D0  3B DE 00 04 */	addi r30, r30, 4
/* 8010F454 001051D4  2C 1F 00 02 */	cmpwi r31, 2
/* 8010F458 001051D8  41 80 FF EC */	blt lbl_8010F444
/* 8010F45C 001051DC  88 1D 00 00 */	lbz r0, 0(r29)
/* 8010F460 001051E0  3C 80 80 10 */	lis r4, lbl_800FC3E4@ha
/* 8010F464 001051E4  38 7D 00 14 */	addi r3, r29, 0x14
/* 8010F468 001051E8  38 A0 00 04 */	li r5, 4
/* 8010F46C 001051EC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8010F470 001051F0  38 84 C3 E4 */	addi r4, r4, lbl_800FC3E4@l
/* 8010F474 001051F4  98 1D 00 00 */	stb r0, 0(r29)
/* 8010F478 001051F8  38 C0 00 02 */	li r6, 2
/* 8010F47C 001051FC  48 2E 18 59 */	bl __destroy_arr
/* 8010F480 00105200  7F A3 EB 78 */	mr r3, r29
/* 8010F484 00105204  4B EF D4 45 */	bl __dl__FPv
lbl_8010F488:
/* 8010F488 00105208  38 00 00 00 */	li r0, 0
/* 8010F48C 0010520C  90 0D BF 30 */	stw r0, lbl_805A0350-_SDA_BASE_(r13)
/* 8010F490 00105210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010F494 00105214  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010F498 00105218  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010F49C 0010521C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010F4A0 00105220  7C 08 03 A6 */	mtlr r0
/* 8010F4A4 00105224  38 21 00 20 */	addi r1, r1, 0x20
/* 8010F4A8 00105228  4E 80 00 20 */	blr 
/* 8010F4AC 0010522C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010F4B0 00105230  7C 08 02 A6 */	mflr r0
/* 8010F4B4 00105234  2C 04 00 00 */	cmpwi r4, 0
/* 8010F4B8 00105238  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010F4BC 0010523C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010F4C0 00105240  3F E0 80 46 */	lis r31, lbl_8045D840@ha
/* 8010F4C4 00105244  3B FF D8 40 */	addi r31, r31, lbl_8045D840@l
/* 8010F4C8 00105248  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010F4CC 0010524C  7C 9E 23 78 */	mr r30, r4
/* 8010F4D0 00105250  38 9F 00 00 */	addi r4, r31, 0
/* 8010F4D4 00105254  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010F4D8 00105258  7C 7D 1B 78 */	mr r29, r3
/* 8010F4DC 0010525C  41 82 00 1C */	beq lbl_8010F4F8
/* 8010F4E0 00105260  38 A0 00 09 */	li r5, 9
/* 8010F4E4 00105264  38 C0 00 00 */	li r6, 0
/* 8010F4E8 00105268  38 E0 00 00 */	li r7, 0
/* 8010F4EC 0010526C  38 63 00 14 */	addi r3, r3, 0x14
/* 8010F4F0 00105270  4B F1 1F A9 */	bl gfFileIOHandle$7readRequest
/* 8010F4F4 00105274  48 00 00 14 */	b lbl_8010F508
lbl_8010F4F8:
/* 8010F4F8 00105278  38 A0 00 09 */	li r5, 9
/* 8010F4FC 0010527C  38 C0 00 00 */	li r6, 0
/* 8010F500 00105280  38 63 00 14 */	addi r3, r3, 0x14
/* 8010F504 00105284  4B F1 24 DD */	bl gfFileIOHandle$7read
lbl_8010F508:
/* 8010F508 00105288  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 8010F50C 0010528C  4B F3 F0 C1 */	bl GameGlobal$7getGlobalRecordMenuDatap
/* 8010F510 00105290  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8010F514 00105294  38 9F 00 40 */	addi r4, r31, 0x40
/* 8010F518 00105298  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8010F51C 0010529C  41 82 00 08 */	beq lbl_8010F524
/* 8010F520 001052A0  38 9F 00 1C */	addi r4, r31, 0x1c
lbl_8010F524:
/* 8010F524 001052A4  2C 1E 00 00 */	cmpwi r30, 0
/* 8010F528 001052A8  41 82 00 1C */	beq lbl_8010F544
/* 8010F52C 001052AC  38 7D 00 18 */	addi r3, r29, 0x18
/* 8010F530 001052B0  38 A0 00 09 */	li r5, 9
/* 8010F534 001052B4  38 C0 00 00 */	li r6, 0
/* 8010F538 001052B8  38 E0 00 00 */	li r7, 0
/* 8010F53C 001052BC  4B F1 1F 5D */	bl gfFileIOHandle$7readRequest
/* 8010F540 001052C0  48 00 00 14 */	b lbl_8010F554
lbl_8010F544:
/* 8010F544 001052C4  38 7D 00 18 */	addi r3, r29, 0x18
/* 8010F548 001052C8  38 A0 00 09 */	li r5, 9
/* 8010F54C 001052CC  38 C0 00 00 */	li r6, 0
/* 8010F550 001052D0  4B F1 24 91 */	bl gfFileIOHandle$7read
lbl_8010F554:
/* 8010F554 001052D4  2C 1E 00 00 */	cmpwi r30, 0
/* 8010F558 001052D8  40 82 00 B0 */	bne lbl_8010F608
/* 8010F55C 001052DC  38 00 00 00 */	li r0, 0
/* 8010F560 001052E0  38 7D 00 14 */	addi r3, r29, 0x14
/* 8010F564 001052E4  90 01 00 08 */	stw r0, 8(r1)
/* 8010F568 001052E8  4B F1 2A 01 */	bl gfFileIOHandle$7getReturnStatus
/* 8010F56C 001052EC  2C 03 00 15 */	cmpwi r3, 0x15
/* 8010F570 001052F0  40 82 00 0C */	bne lbl_8010F57C
/* 8010F574 001052F4  3B E0 00 00 */	li r31, 0
/* 8010F578 001052F8  48 00 00 18 */	b lbl_8010F590
lbl_8010F57C:
/* 8010F57C 001052FC  38 7D 00 14 */	addi r3, r29, 0x14
/* 8010F580 00105300  4B F1 2A 15 */	bl gfFileIOHandle$7getBuffer
/* 8010F584 00105304  7C 7F 1B 78 */	mr r31, r3
/* 8010F588 00105308  38 7D 00 14 */	addi r3, r29, 0x14
/* 8010F58C 0010530C  4B F1 2A 21 */	bl gfFileIOHandle$7release
lbl_8010F590:
/* 8010F590 00105310  2C 1F 00 00 */	cmpwi r31, 0
/* 8010F594 00105314  41 82 00 10 */	beq lbl_8010F5A4
/* 8010F598 00105318  93 E1 00 08 */	stw r31, 8(r1)
/* 8010F59C 0010531C  38 61 00 08 */	addi r3, r1, 8
/* 8010F5A0 00105320  48 07 F4 69 */	bl nw4r3g3d7ResFileFv$7Init
lbl_8010F5A4:
/* 8010F5A4 00105324  80 81 00 08 */	lwz r4, 8(r1)
/* 8010F5A8 00105328  38 00 00 00 */	li r0, 0
/* 8010F5AC 0010532C  38 7D 00 18 */	addi r3, r29, 0x18
/* 8010F5B0 00105330  90 9D 00 08 */	stw r4, 8(r29)
/* 8010F5B4 00105334  90 01 00 0C */	stw r0, 0xc(r1)
/* 8010F5B8 00105338  4B F1 29 B1 */	bl gfFileIOHandle$7getReturnStatus
/* 8010F5BC 0010533C  2C 03 00 15 */	cmpwi r3, 0x15
/* 8010F5C0 00105340  40 82 00 0C */	bne lbl_8010F5CC
/* 8010F5C4 00105344  3B E0 00 00 */	li r31, 0
/* 8010F5C8 00105348  48 00 00 18 */	b lbl_8010F5E0
lbl_8010F5CC:
/* 8010F5CC 0010534C  38 7D 00 18 */	addi r3, r29, 0x18
/* 8010F5D0 00105350  4B F1 29 C5 */	bl gfFileIOHandle$7getBuffer
/* 8010F5D4 00105354  7C 7F 1B 78 */	mr r31, r3
/* 8010F5D8 00105358  38 7D 00 18 */	addi r3, r29, 0x18
/* 8010F5DC 0010535C  4B F1 29 D1 */	bl gfFileIOHandle$7release
lbl_8010F5E0:
/* 8010F5E0 00105360  2C 1F 00 00 */	cmpwi r31, 0
/* 8010F5E4 00105364  41 82 00 10 */	beq lbl_8010F5F4
/* 8010F5E8 00105368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010F5EC 0010536C  38 61 00 0C */	addi r3, r1, 0xc
/* 8010F5F0 00105370  48 07 F4 19 */	bl nw4r3g3d7ResFileFv$7Init
lbl_8010F5F4:
/* 8010F5F4 00105374  88 1D 00 00 */	lbz r0, 0(r29)
/* 8010F5F8 00105378  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8010F5FC 0010537C  60 00 00 80 */	ori r0, r0, 0x80
/* 8010F600 00105380  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8010F604 00105384  98 1D 00 00 */	stb r0, 0(r29)
lbl_8010F608:
/* 8010F608 00105388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010F60C 0010538C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010F610 00105390  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010F614 00105394  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010F618 00105398  7C 08 03 A6 */	mtlr r0
/* 8010F61C 0010539C  38 21 00 20 */	addi r1, r1, 0x20
/* 8010F620 001053A0  4E 80 00 20 */	blr 


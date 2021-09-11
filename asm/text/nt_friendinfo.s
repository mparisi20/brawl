.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ntFriendInfoSave$7__ct
ntFriendInfoSave$7__ct:
/* 8014C180 00141F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C184 00141F04  7C 08 02 A6 */	mflr r0
/* 8014C188 00141F08  3C 80 80 46 */	lis r4, lbl_80460D50@ha
/* 8014C18C 00141F0C  38 A0 00 00 */	li r5, 0
/* 8014C190 00141F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C194 00141F14  38 84 0D 50 */	addi r4, r4, lbl_80460D50@l
/* 8014C198 00141F18  38 C0 00 0E */	li r6, 0xe
/* 8014C19C 00141F1C  38 E0 00 06 */	li r7, 6
/* 8014C1A0 00141F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C1A4 00141F24  7C 7F 1B 78 */	mr r31, r3
/* 8014C1A8 00141F28  39 00 00 01 */	li r8, 1
/* 8014C1AC 00141F2C  4B EE 17 0D */	bl gfTask$7__ct
/* 8014C1B0 00141F30  88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 8014C1B4 00141F34  38 80 00 00 */	li r4, 0
/* 8014C1B8 00141F38  3C 60 80 46 */	lis r3, lbl_80460D64@ha
/* 8014C1BC 00141F3C  90 9F 00 40 */	stw r4, 0x40(r31)
/* 8014C1C0 00141F40  38 63 0D 64 */	addi r3, r3, lbl_80460D64@l
/* 8014C1C4 00141F44  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8014C1C8 00141F48  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8014C1CC 00141F4C  7F E3 FB 78 */	mr r3, r31
/* 8014C1D0 00141F50  98 9F 00 44 */	stb r4, 0x44(r31)
/* 8014C1D4 00141F54  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 8014C1D8 00141F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C1DC 00141F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C1E0 00141F60  7C 08 03 A6 */	mtlr r0
/* 8014C1E4 00141F64  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C1E8 00141F68  4E 80 00 20 */	blr 

.global ntFriendInfoSave$7__dt
ntFriendInfoSave$7__dt:
/* 8014C1EC 00141F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C1F0 00141F70  7C 08 02 A6 */	mflr r0
/* 8014C1F4 00141F74  2C 03 00 00 */	cmpwi r3, 0
/* 8014C1F8 00141F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C1FC 00141F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C200 00141F80  7C 9F 23 78 */	mr r31, r4
/* 8014C204 00141F84  93 C1 00 08 */	stw r30, 8(r1)
/* 8014C208 00141F88  7C 7E 1B 78 */	mr r30, r3
/* 8014C20C 00141F8C  41 82 00 44 */	beq lbl_8014C250
/* 8014C210 00141F90  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8014C214 00141F94  3C 80 80 46 */	lis r4, lbl_80460D64@ha
/* 8014C218 00141F98  38 84 0D 64 */	addi r4, r4, lbl_80460D64@l
/* 8014C21C 00141F9C  2C 00 00 00 */	cmpwi r0, 0
/* 8014C220 00141FA0  90 83 00 3C */	stw r4, 0x3c(r3)
/* 8014C224 00141FA4  41 82 00 10 */	beq lbl_8014C234
/* 8014C228 00141FA8  4B EE 45 8D */	bl gfSysRecorder2$7dropInstance
/* 8014C22C 00141FAC  38 00 00 00 */	li r0, 0
/* 8014C230 00141FB0  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_8014C234:
/* 8014C234 00141FB4  7F C3 F3 78 */	mr r3, r30
/* 8014C238 00141FB8  38 80 00 00 */	li r4, 0
/* 8014C23C 00141FBC  4B EE 17 E1 */	bl gfTask$7__dt
/* 8014C240 00141FC0  2C 1F 00 00 */	cmpwi r31, 0
/* 8014C244 00141FC4  40 81 00 0C */	ble lbl_8014C250
/* 8014C248 00141FC8  7F C3 F3 78 */	mr r3, r30
/* 8014C24C 00141FCC  4B EC 06 7D */	bl __dl__FPv
lbl_8014C250:
/* 8014C250 00141FD0  7F C3 F3 78 */	mr r3, r30
/* 8014C254 00141FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C258 00141FD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014C25C 00141FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C260 00141FE0  7C 08 03 A6 */	mtlr r0
/* 8014C264 00141FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C268 00141FE8  4E 80 00 20 */	blr 

.global ntFriendInfoSave$7startSave
ntFriendInfoSave$7startSave:
/* 8014C26C 00141FEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C270 00141FF0  7C 08 02 A6 */	mflr r0
/* 8014C274 00141FF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C278 00141FF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014C27C 00141FFC  7C 9F 23 78 */	mr r31, r4
/* 8014C280 00142000  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014C284 00142004  7C 7E 1B 78 */	mr r30, r3
/* 8014C288 00142008  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014C28C 0014200C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8014C290 00142010  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8014C294 00142014  2C 00 00 00 */	cmpwi r0, 0
/* 8014C298 00142018  41 82 00 0C */	beq lbl_8014C2A4
/* 8014C29C 0014201C  38 60 00 00 */	li r3, 0
/* 8014C2A0 00142020  48 00 02 F0 */	b lbl_8014C590
lbl_8014C2A4:
/* 8014C2A4 00142024  80 8D C0 28 */	lwz r4, lbl_805A0448-_SDA_BASE_(r13)
/* 8014C2A8 00142028  38 04 00 01 */	addi r0, r4, 1
/* 8014C2AC 0014202C  90 0D C0 28 */	stw r0, lbl_805A0448-_SDA_BASE_(r13)
/* 8014C2B0 00142030  98 A3 00 44 */	stb r5, 0x44(r3)
/* 8014C2B4 00142034  38 60 00 02 */	li r3, 2
/* 8014C2B8 00142038  4B EE 42 F9 */	bl gfSysRecorder2$7isEnable
/* 8014C2BC 0014203C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C2C0 00142040  40 82 00 0C */	bne lbl_8014C2CC
/* 8014C2C4 00142044  38 00 00 00 */	li r0, 0
/* 8014C2C8 00142048  48 00 00 F0 */	b lbl_8014C3B8
lbl_8014C2CC:
/* 8014C2CC 0014204C  80 0D C0 2C */	lwz r0, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C2D0 00142050  2C 00 00 00 */	cmpwi r0, 0
/* 8014C2D4 00142054  40 82 00 0C */	bne lbl_8014C2E0
/* 8014C2D8 00142058  38 00 00 00 */	li r0, 0
/* 8014C2DC 0014205C  48 00 00 DC */	b lbl_8014C3B8
lbl_8014C2E0:
/* 8014C2E0 00142060  4B FF 0D 99 */	bl NtBase$7isMatchStatusOnline
/* 8014C2E4 00142064  2C 03 00 00 */	cmpwi r3, 0
/* 8014C2E8 00142068  40 82 00 0C */	bne lbl_8014C2F4
/* 8014C2EC 0014206C  38 00 00 00 */	li r0, 0
/* 8014C2F0 00142070  48 00 00 C8 */	b lbl_8014C3B8
lbl_8014C2F4:
/* 8014C2F4 00142074  80 0D C0 2C */	lwz r0, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C2F8 00142078  2C 00 00 00 */	cmpwi r0, 0
/* 8014C2FC 0014207C  40 82 00 64 */	bne lbl_8014C360
/* 8014C300 00142080  38 60 00 0C */	li r3, 0xc
/* 8014C304 00142084  38 80 00 2D */	li r4, 0x2d
/* 8014C308 00142088  4B EC 05 B1 */	bl __nw__10srHeapTypeFUlUl
/* 8014C30C 0014208C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C310 00142090  7C 7D 1B 78 */	mr r29, r3
/* 8014C314 00142094  41 82 00 48 */	beq lbl_8014C35C
/* 8014C318 00142098  38 00 28 04 */	li r0, 0x2804
/* 8014C31C 0014209C  38 A0 00 04 */	li r5, 4
/* 8014C320 001420A0  90 03 00 04 */	stw r0, 4(r3)
/* 8014C324 001420A4  20 05 00 20 */	subfic r0, r5, 0x20
/* 8014C328 001420A8  80 83 00 04 */	lwz r4, 4(r3)
/* 8014C32C 001420AC  7C 04 02 14 */	add r0, r4, r0
/* 8014C330 001420B0  90 03 00 04 */	stw r0, 4(r3)
/* 8014C334 001420B4  38 60 00 2D */	li r3, 0x2d
/* 8014C338 001420B8  80 9D 00 04 */	lwz r4, 4(r29)
/* 8014C33C 001420BC  4B ED 86 A9 */	bl alloc__13gfHeapManagerFUlUl
/* 8014C340 001420C0  90 7D 00 00 */	stw r3, 0(r29)
/* 8014C344 001420C4  38 80 00 00 */	li r4, 0
/* 8014C348 001420C8  80 BD 00 04 */	lwz r5, 4(r29)
/* 8014C34C 001420CC  4B EB 80 F1 */	bl memset
/* 8014C350 001420D0  38 00 00 00 */	li r0, 0
/* 8014C354 001420D4  98 1D 00 08 */	stb r0, 8(r29)
/* 8014C358 001420D8  98 1D 00 09 */	stb r0, 9(r29)
lbl_8014C35C:
/* 8014C35C 001420DC  93 AD C0 2C */	stw r29, lbl_805A044C-_SDA_BASE_(r13)
lbl_8014C360:
/* 8014C360 001420E0  83 8D C0 2C */	lwz r28, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C364 001420E4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C368 001420E8  2C 03 00 00 */	cmpwi r3, 0
/* 8014C36C 001420EC  40 82 00 0C */	bne lbl_8014C378
/* 8014C370 001420F0  3B A0 00 00 */	li r29, 0
/* 8014C374 001420F4  48 00 00 38 */	b lbl_8014C3AC
lbl_8014C378:
/* 8014C378 001420F8  8B BC 00 08 */	lbz r29, 8(r28)
/* 8014C37C 001420FC  2C 1D 00 00 */	cmpwi r29, 0
/* 8014C380 00142100  40 82 00 2C */	bne lbl_8014C3AC
/* 8014C384 00142104  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C388 00142108  48 20 4F 7D */	bl DWC_CheckUserData
/* 8014C38C 0014210C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C390 00142110  41 82 00 1C */	beq lbl_8014C3AC
/* 8014C394 00142114  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C398 00142118  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C39C 0014211C  48 20 52 75 */	bl DWC_CheckDirtyFlag
/* 8014C3A0 00142120  2C 03 00 00 */	cmpwi r3, 0
/* 8014C3A4 00142124  41 82 00 08 */	beq lbl_8014C3AC
/* 8014C3A8 00142128  3B A0 00 01 */	li r29, 1
lbl_8014C3AC:
/* 8014C3AC 0014212C  7C 1D 00 D0 */	neg r0, r29
/* 8014C3B0 00142130  7C 00 EB 78 */	or r0, r0, r29
/* 8014C3B4 00142134  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_8014C3B8:
/* 8014C3B8 00142138  2C 00 00 00 */	cmpwi r0, 0
/* 8014C3BC 0014213C  41 82 01 98 */	beq lbl_8014C554
/* 8014C3C0 00142140  7F E3 FB 78 */	mr r3, r31
/* 8014C3C4 00142144  4B EE 41 85 */	bl gfSysRecorder2$7createInstance
/* 8014C3C8 00142148  2C 03 00 00 */	cmpwi r3, 0
/* 8014C3CC 0014214C  90 7E 00 40 */	stw r3, 0x40(r30)
/* 8014C3D0 00142150  41 82 01 84 */	beq lbl_8014C554
/* 8014C3D4 00142154  38 80 00 02 */	li r4, 2
/* 8014C3D8 00142158  4B EE 4A 15 */	bl gfSysRecorder2$7getBuffer
/* 8014C3DC 0014215C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C3E0 00142160  7C 7F 1B 78 */	mr r31, r3
/* 8014C3E4 00142164  41 82 01 70 */	beq lbl_8014C554
/* 8014C3E8 00142168  34 01 00 08 */	addic. r0, r1, 8
/* 8014C3EC 0014216C  38 00 00 00 */	li r0, 0
/* 8014C3F0 00142170  90 01 00 08 */	stw r0, 8(r1)
/* 8014C3F4 00142174  40 82 00 0C */	bne lbl_8014C400
/* 8014C3F8 00142178  38 A0 00 00 */	li r5, 0
/* 8014C3FC 0014217C  48 00 01 28 */	b lbl_8014C524
lbl_8014C400:
/* 8014C400 00142180  80 0D C0 2C */	lwz r0, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C404 00142184  2C 00 00 00 */	cmpwi r0, 0
/* 8014C408 00142188  40 82 00 64 */	bne lbl_8014C46C
/* 8014C40C 0014218C  38 60 00 0C */	li r3, 0xc
/* 8014C410 00142190  38 80 00 2D */	li r4, 0x2d
/* 8014C414 00142194  4B EC 04 A5 */	bl __nw__10srHeapTypeFUlUl
/* 8014C418 00142198  2C 03 00 00 */	cmpwi r3, 0
/* 8014C41C 0014219C  7C 7D 1B 78 */	mr r29, r3
/* 8014C420 001421A0  41 82 00 48 */	beq lbl_8014C468
/* 8014C424 001421A4  38 00 28 04 */	li r0, 0x2804
/* 8014C428 001421A8  38 A0 00 04 */	li r5, 4
/* 8014C42C 001421AC  90 03 00 04 */	stw r0, 4(r3)
/* 8014C430 001421B0  20 05 00 20 */	subfic r0, r5, 0x20
/* 8014C434 001421B4  80 83 00 04 */	lwz r4, 4(r3)
/* 8014C438 001421B8  7C 04 02 14 */	add r0, r4, r0
/* 8014C43C 001421BC  90 03 00 04 */	stw r0, 4(r3)
/* 8014C440 001421C0  38 60 00 2D */	li r3, 0x2d
/* 8014C444 001421C4  80 9D 00 04 */	lwz r4, 4(r29)
/* 8014C448 001421C8  4B ED 85 9D */	bl alloc__13gfHeapManagerFUlUl
/* 8014C44C 001421CC  90 7D 00 00 */	stw r3, 0(r29)
/* 8014C450 001421D0  38 80 00 00 */	li r4, 0
/* 8014C454 001421D4  80 BD 00 04 */	lwz r5, 4(r29)
/* 8014C458 001421D8  4B EB 7F E5 */	bl memset
/* 8014C45C 001421DC  38 00 00 00 */	li r0, 0
/* 8014C460 001421E0  98 1D 00 08 */	stb r0, 8(r29)
/* 8014C464 001421E4  98 1D 00 09 */	stb r0, 9(r29)
lbl_8014C468:
/* 8014C468 001421E8  93 AD C0 2C */	stw r29, lbl_805A044C-_SDA_BASE_(r13)
lbl_8014C46C:
/* 8014C46C 001421EC  83 8D C0 2C */	lwz r28, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C470 001421F0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C474 001421F4  2C 03 00 00 */	cmpwi r3, 0
/* 8014C478 001421F8  40 82 00 0C */	bne lbl_8014C484
/* 8014C47C 001421FC  3B A0 00 00 */	li r29, 0
/* 8014C480 00142200  48 00 00 38 */	b lbl_8014C4B8
lbl_8014C484:
/* 8014C484 00142204  8B BC 00 08 */	lbz r29, 8(r28)
/* 8014C488 00142208  2C 1D 00 00 */	cmpwi r29, 0
/* 8014C48C 0014220C  40 82 00 2C */	bne lbl_8014C4B8
/* 8014C490 00142210  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C494 00142214  48 20 4E 71 */	bl DWC_CheckUserData
/* 8014C498 00142218  2C 03 00 00 */	cmpwi r3, 0
/* 8014C49C 0014221C  41 82 00 1C */	beq lbl_8014C4B8
/* 8014C4A0 00142220  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C4A4 00142224  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C4A8 00142228  48 20 51 69 */	bl DWC_CheckDirtyFlag
/* 8014C4AC 0014222C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C4B0 00142230  41 82 00 08 */	beq lbl_8014C4B8
/* 8014C4B4 00142234  3B A0 00 01 */	li r29, 1
lbl_8014C4B8:
/* 8014C4B8 00142238  2C 1D 00 00 */	cmpwi r29, 0
/* 8014C4BC 0014223C  40 82 00 0C */	bne lbl_8014C4C8
/* 8014C4C0 00142240  38 A0 00 00 */	li r5, 0
/* 8014C4C4 00142244  48 00 00 60 */	b lbl_8014C524
lbl_8014C4C8:
/* 8014C4C8 00142248  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C4CC 0014224C  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C4D0 00142250  48 20 51 4D */	bl DWC_ClearDirtyFlag
/* 8014C4D4 00142254  3B A0 00 00 */	li r29, 0
/* 8014C4D8 00142258  38 00 28 04 */	li r0, 0x2804
/* 8014C4DC 0014225C  9B BC 00 08 */	stb r29, 8(r28)
/* 8014C4E0 00142260  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C4E4 00142264  B0 03 00 00 */	sth r0, 0(r3)
/* 8014C4E8 00142268  4B EC 03 F9 */	bl srSystemGetRevisionNumber__Fv
/* 8014C4EC 0014226C  80 BC 00 00 */	lwz r5, 0(r28)
/* 8014C4F0 00142270  38 80 28 04 */	li r4, 0x2804
/* 8014C4F4 00142274  B0 65 00 04 */	sth r3, 4(r5)
/* 8014C4F8 00142278  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C4FC 0014227C  9B A3 00 06 */	stb r29, 6(r3)
/* 8014C500 00142280  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C504 00142284  B3 A3 00 02 */	sth r29, 2(r3)
/* 8014C508 00142288  80 7C 00 00 */	lwz r3, 0(r28)
/* 8014C50C 0014228C  48 24 28 45 */	bl NETCalcCRC16
/* 8014C510 00142290  80 9C 00 00 */	lwz r4, 0(r28)
/* 8014C514 00142294  38 A0 00 01 */	li r5, 1
/* 8014C518 00142298  B0 64 00 02 */	sth r3, 2(r4)
/* 8014C51C 0014229C  80 1C 00 00 */	lwz r0, 0(r28)
/* 8014C520 001422A0  90 01 00 08 */	stw r0, 8(r1)
lbl_8014C524:
/* 8014C524 001422A4  2C 05 00 00 */	cmpwi r5, 0
/* 8014C528 001422A8  41 82 00 2C */	beq lbl_8014C554
/* 8014C52C 001422AC  80 81 00 08 */	lwz r4, 8(r1)
/* 8014C530 001422B0  7F E3 FB 78 */	mr r3, r31
/* 8014C534 001422B4  38 A0 28 04 */	li r5, 0x2804
/* 8014C538 001422B8  4B EB 7E 01 */	bl func_80004338
/* 8014C53C 001422BC  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8014C540 001422C0  4B EE 4A 19 */	bl gfSysRecorder2$7saveWifi
/* 8014C544 001422C4  2C 03 00 00 */	cmpwi r3, 0
/* 8014C548 001422C8  41 82 00 0C */	beq lbl_8014C554
/* 8014C54C 001422CC  38 60 00 01 */	li r3, 1
/* 8014C550 001422D0  48 00 00 40 */	b lbl_8014C590
lbl_8014C554:
/* 8014C554 001422D4  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8014C558 001422D8  2C 00 00 00 */	cmpwi r0, 0
/* 8014C55C 001422DC  41 82 00 10 */	beq lbl_8014C56C
/* 8014C560 001422E0  4B EE 42 55 */	bl gfSysRecorder2$7dropInstance
/* 8014C564 001422E4  38 00 00 00 */	li r0, 0
/* 8014C568 001422E8  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_8014C56C:
/* 8014C56C 001422EC  88 1E 00 44 */	lbz r0, 0x44(r30)
/* 8014C570 001422F0  2C 00 00 00 */	cmpwi r0, 0
/* 8014C574 001422F4  41 82 00 0C */	beq lbl_8014C580
/* 8014C578 001422F8  7F C3 F3 78 */	mr r3, r30
/* 8014C57C 001422FC  4B EE 19 B9 */	bl gfTask$7exit
lbl_8014C580:
/* 8014C580 00142300  80 8D C0 28 */	lwz r4, lbl_805A0448-_SDA_BASE_(r13)
/* 8014C584 00142304  38 60 00 00 */	li r3, 0
/* 8014C588 00142308  38 04 FF FF */	addi r0, r4, -1
/* 8014C58C 0014230C  90 0D C0 28 */	stw r0, lbl_805A0448-_SDA_BASE_(r13)
lbl_8014C590:
/* 8014C590 00142310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C594 00142314  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014C598 00142318  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014C59C 0014231C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014C5A0 00142320  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8014C5A4 00142324  7C 08 03 A6 */	mtlr r0
/* 8014C5A8 00142328  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C5AC 0014232C  4E 80 00 20 */	blr 

.global ntFriendInfoSave$7processDefault
ntFriendInfoSave$7processDefault:
/* 8014C5B0 00142330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C5B4 00142334  7C 08 02 A6 */	mflr r0
/* 8014C5B8 00142338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C5BC 0014233C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C5C0 00142340  7C 7F 1B 78 */	mr r31, r3
/* 8014C5C4 00142344  80 83 00 40 */	lwz r4, 0x40(r3)
/* 8014C5C8 00142348  2C 04 00 00 */	cmpwi r4, 0
/* 8014C5CC 0014234C  41 82 00 3C */	beq lbl_8014C608
/* 8014C5D0 00142350  80 04 00 F0 */	lwz r0, 0xf0(r4)
/* 8014C5D4 00142354  2C 00 00 00 */	cmpwi r0, 0
/* 8014C5D8 00142358  40 82 00 30 */	bne lbl_8014C608
/* 8014C5DC 0014235C  4B EE 41 D9 */	bl gfSysRecorder2$7dropInstance
/* 8014C5E0 00142360  88 1F 00 44 */	lbz r0, 0x44(r31)
/* 8014C5E4 00142364  38 60 00 00 */	li r3, 0
/* 8014C5E8 00142368  90 7F 00 40 */	stw r3, 0x40(r31)
/* 8014C5EC 0014236C  2C 00 00 00 */	cmpwi r0, 0
/* 8014C5F0 00142370  41 82 00 0C */	beq lbl_8014C5FC
/* 8014C5F4 00142374  7F E3 FB 78 */	mr r3, r31
/* 8014C5F8 00142378  4B EE 19 3D */	bl gfTask$7exit
lbl_8014C5FC:
/* 8014C5FC 0014237C  80 6D C0 28 */	lwz r3, lbl_805A0448-_SDA_BASE_(r13)
/* 8014C600 00142380  38 03 FF FF */	addi r0, r3, -1
/* 8014C604 00142384  90 0D C0 28 */	stw r0, lbl_805A0448-_SDA_BASE_(r13)
lbl_8014C608:
/* 8014C608 00142388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C60C 0014238C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C610 00142390  7C 08 03 A6 */	mtlr r0
/* 8014C614 00142394  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C618 00142398  4E 80 00 20 */	blr 

.global ntFriendInfoSave$7isSaveWifi
ntFriendInfoSave$7isSaveWifi:
/* 8014C61C 0014239C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C620 001423A0  7C 08 02 A6 */	mflr r0
/* 8014C624 001423A4  38 60 00 02 */	li r3, 2
/* 8014C628 001423A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C62C 001423AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C630 001423B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8014C634 001423B4  4B EE 3F 7D */	bl gfSysRecorder2$7isEnable
/* 8014C638 001423B8  2C 03 00 00 */	cmpwi r3, 0
/* 8014C63C 001423BC  40 82 00 0C */	bne lbl_8014C648
/* 8014C640 001423C0  38 60 00 00 */	li r3, 0
/* 8014C644 001423C4  48 00 00 F8 */	b lbl_8014C73C
lbl_8014C648:
/* 8014C648 001423C8  80 0D C0 2C */	lwz r0, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C64C 001423CC  2C 00 00 00 */	cmpwi r0, 0
/* 8014C650 001423D0  40 82 00 0C */	bne lbl_8014C65C
/* 8014C654 001423D4  38 60 00 00 */	li r3, 0
/* 8014C658 001423D8  48 00 00 E4 */	b lbl_8014C73C
lbl_8014C65C:
/* 8014C65C 001423DC  4B FF 0A 1D */	bl NtBase$7isMatchStatusOnline
/* 8014C660 001423E0  2C 03 00 00 */	cmpwi r3, 0
/* 8014C664 001423E4  40 82 00 0C */	bne lbl_8014C670
/* 8014C668 001423E8  38 60 00 00 */	li r3, 0
/* 8014C66C 001423EC  48 00 00 D0 */	b lbl_8014C73C
lbl_8014C670:
/* 8014C670 001423F0  80 0D C0 2C */	lwz r0, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C674 001423F4  2C 00 00 00 */	cmpwi r0, 0
/* 8014C678 001423F8  40 82 00 64 */	bne lbl_8014C6DC
/* 8014C67C 001423FC  38 60 00 0C */	li r3, 0xc
/* 8014C680 00142400  38 80 00 2D */	li r4, 0x2d
/* 8014C684 00142404  4B EC 02 35 */	bl __nw__10srHeapTypeFUlUl
/* 8014C688 00142408  2C 03 00 00 */	cmpwi r3, 0
/* 8014C68C 0014240C  7C 7F 1B 78 */	mr r31, r3
/* 8014C690 00142410  41 82 00 48 */	beq lbl_8014C6D8
/* 8014C694 00142414  38 00 28 04 */	li r0, 0x2804
/* 8014C698 00142418  38 A0 00 04 */	li r5, 4
/* 8014C69C 0014241C  90 03 00 04 */	stw r0, 4(r3)
/* 8014C6A0 00142420  20 05 00 20 */	subfic r0, r5, 0x20
/* 8014C6A4 00142424  80 83 00 04 */	lwz r4, 4(r3)
/* 8014C6A8 00142428  7C 04 02 14 */	add r0, r4, r0
/* 8014C6AC 0014242C  90 03 00 04 */	stw r0, 4(r3)
/* 8014C6B0 00142430  38 60 00 2D */	li r3, 0x2d
/* 8014C6B4 00142434  80 9F 00 04 */	lwz r4, 4(r31)
/* 8014C6B8 00142438  4B ED 83 2D */	bl alloc__13gfHeapManagerFUlUl
/* 8014C6BC 0014243C  90 7F 00 00 */	stw r3, 0(r31)
/* 8014C6C0 00142440  38 80 00 00 */	li r4, 0
/* 8014C6C4 00142444  80 BF 00 04 */	lwz r5, 4(r31)
/* 8014C6C8 00142448  4B EB 7D 75 */	bl memset
/* 8014C6CC 0014244C  38 00 00 00 */	li r0, 0
/* 8014C6D0 00142450  98 1F 00 08 */	stb r0, 8(r31)
/* 8014C6D4 00142454  98 1F 00 09 */	stb r0, 9(r31)
lbl_8014C6D8:
/* 8014C6D8 00142458  93 ED C0 2C */	stw r31, lbl_805A044C-_SDA_BASE_(r13)
lbl_8014C6DC:
/* 8014C6DC 0014245C  83 CD C0 2C */	lwz r30, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C6E0 00142460  80 7E 00 00 */	lwz r3, 0(r30)
/* 8014C6E4 00142464  2C 03 00 00 */	cmpwi r3, 0
/* 8014C6E8 00142468  40 82 00 0C */	bne lbl_8014C6F4
/* 8014C6EC 0014246C  3B E0 00 00 */	li r31, 0
/* 8014C6F0 00142470  48 00 00 38 */	b lbl_8014C728
lbl_8014C6F4:
/* 8014C6F4 00142474  8B FE 00 08 */	lbz r31, 8(r30)
/* 8014C6F8 00142478  2C 1F 00 00 */	cmpwi r31, 0
/* 8014C6FC 0014247C  40 82 00 2C */	bne lbl_8014C728
/* 8014C700 00142480  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C704 00142484  48 20 4C 01 */	bl DWC_CheckUserData
/* 8014C708 00142488  2C 03 00 00 */	cmpwi r3, 0
/* 8014C70C 0014248C  41 82 00 1C */	beq lbl_8014C728
/* 8014C710 00142490  80 7E 00 00 */	lwz r3, 0(r30)
/* 8014C714 00142494  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C718 00142498  48 20 4E F9 */	bl DWC_CheckDirtyFlag
/* 8014C71C 0014249C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C720 001424A0  41 82 00 08 */	beq lbl_8014C728
/* 8014C724 001424A4  3B E0 00 01 */	li r31, 1
lbl_8014C728:
/* 8014C728 001424A8  2C 1F 00 00 */	cmpwi r31, 0
/* 8014C72C 001424AC  40 82 00 0C */	bne lbl_8014C738
/* 8014C730 001424B0  38 60 00 00 */	li r3, 0
/* 8014C734 001424B4  48 00 00 08 */	b lbl_8014C73C
lbl_8014C738:
/* 8014C738 001424B8  38 60 00 01 */	li r3, 1
lbl_8014C73C:
/* 8014C73C 001424BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C740 001424C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C744 001424C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014C748 001424C8  7C 08 03 A6 */	mtlr r0
/* 8014C74C 001424CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C750 001424D0  4E 80 00 20 */	blr 

.global ntFriendInfoSave$7getSaveWifiSize
ntFriendInfoSave$7getSaveWifiSize:
/* 8014C754 001424D4  38 60 28 04 */	li r3, 0x2804
/* 8014C758 001424D8  4E 80 00 20 */	blr 

.global ntFriendInfoSave$7getSaveWifi
ntFriendInfoSave$7getSaveWifi:
/* 8014C75C 001424DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C760 001424E0  7C 08 02 A6 */	mflr r0
/* 8014C764 001424E4  2C 03 00 00 */	cmpwi r3, 0
/* 8014C768 001424E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C76C 001424EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014C770 001424F0  7C 7F 1B 78 */	mr r31, r3
/* 8014C774 001424F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014C778 001424F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014C77C 001424FC  40 82 00 0C */	bne lbl_8014C788
/* 8014C780 00142500  38 60 00 00 */	li r3, 0
/* 8014C784 00142504  48 00 01 2C */	b lbl_8014C8B0
lbl_8014C788:
/* 8014C788 00142508  80 0D C0 2C */	lwz r0, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C78C 0014250C  2C 00 00 00 */	cmpwi r0, 0
/* 8014C790 00142510  40 82 00 64 */	bne lbl_8014C7F4
/* 8014C794 00142514  38 60 00 0C */	li r3, 0xc
/* 8014C798 00142518  38 80 00 2D */	li r4, 0x2d
/* 8014C79C 0014251C  4B EC 01 1D */	bl __nw__10srHeapTypeFUlUl
/* 8014C7A0 00142520  2C 03 00 00 */	cmpwi r3, 0
/* 8014C7A4 00142524  7C 7E 1B 78 */	mr r30, r3
/* 8014C7A8 00142528  41 82 00 48 */	beq lbl_8014C7F0
/* 8014C7AC 0014252C  38 00 28 04 */	li r0, 0x2804
/* 8014C7B0 00142530  38 A0 00 04 */	li r5, 4
/* 8014C7B4 00142534  90 03 00 04 */	stw r0, 4(r3)
/* 8014C7B8 00142538  20 05 00 20 */	subfic r0, r5, 0x20
/* 8014C7BC 0014253C  80 83 00 04 */	lwz r4, 4(r3)
/* 8014C7C0 00142540  7C 04 02 14 */	add r0, r4, r0
/* 8014C7C4 00142544  90 03 00 04 */	stw r0, 4(r3)
/* 8014C7C8 00142548  38 60 00 2D */	li r3, 0x2d
/* 8014C7CC 0014254C  80 9E 00 04 */	lwz r4, 4(r30)
/* 8014C7D0 00142550  4B ED 82 15 */	bl alloc__13gfHeapManagerFUlUl
/* 8014C7D4 00142554  90 7E 00 00 */	stw r3, 0(r30)
/* 8014C7D8 00142558  38 80 00 00 */	li r4, 0
/* 8014C7DC 0014255C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8014C7E0 00142560  4B EB 7C 5D */	bl memset
/* 8014C7E4 00142564  38 00 00 00 */	li r0, 0
/* 8014C7E8 00142568  98 1E 00 08 */	stb r0, 8(r30)
/* 8014C7EC 0014256C  98 1E 00 09 */	stb r0, 9(r30)
lbl_8014C7F0:
/* 8014C7F0 00142570  93 CD C0 2C */	stw r30, lbl_805A044C-_SDA_BASE_(r13)
lbl_8014C7F4:
/* 8014C7F4 00142574  83 AD C0 2C */	lwz r29, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C7F8 00142578  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014C7FC 0014257C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C800 00142580  40 82 00 0C */	bne lbl_8014C80C
/* 8014C804 00142584  3B C0 00 00 */	li r30, 0
/* 8014C808 00142588  48 00 00 38 */	b lbl_8014C840
lbl_8014C80C:
/* 8014C80C 0014258C  8B DD 00 08 */	lbz r30, 8(r29)
/* 8014C810 00142590  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C814 00142594  40 82 00 2C */	bne lbl_8014C840
/* 8014C818 00142598  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C81C 0014259C  48 20 4A E9 */	bl DWC_CheckUserData
/* 8014C820 001425A0  2C 03 00 00 */	cmpwi r3, 0
/* 8014C824 001425A4  41 82 00 1C */	beq lbl_8014C840
/* 8014C828 001425A8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014C82C 001425AC  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C830 001425B0  48 20 4D E1 */	bl DWC_CheckDirtyFlag
/* 8014C834 001425B4  2C 03 00 00 */	cmpwi r3, 0
/* 8014C838 001425B8  41 82 00 08 */	beq lbl_8014C840
/* 8014C83C 001425BC  3B C0 00 01 */	li r30, 1
lbl_8014C840:
/* 8014C840 001425C0  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C844 001425C4  40 82 00 0C */	bne lbl_8014C850
/* 8014C848 001425C8  38 A0 00 00 */	li r5, 0
/* 8014C84C 001425CC  48 00 00 60 */	b lbl_8014C8AC
lbl_8014C850:
/* 8014C850 001425D0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014C854 001425D4  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C858 001425D8  48 20 4D C5 */	bl DWC_ClearDirtyFlag
/* 8014C85C 001425DC  3B C0 00 00 */	li r30, 0
/* 8014C860 001425E0  38 00 28 04 */	li r0, 0x2804
/* 8014C864 001425E4  9B DD 00 08 */	stb r30, 8(r29)
/* 8014C868 001425E8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014C86C 001425EC  B0 03 00 00 */	sth r0, 0(r3)
/* 8014C870 001425F0  4B EC 00 71 */	bl srSystemGetRevisionNumber__Fv
/* 8014C874 001425F4  80 BD 00 00 */	lwz r5, 0(r29)
/* 8014C878 001425F8  38 80 28 04 */	li r4, 0x2804
/* 8014C87C 001425FC  B0 65 00 04 */	sth r3, 4(r5)
/* 8014C880 00142600  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014C884 00142604  9B C3 00 06 */	stb r30, 6(r3)
/* 8014C888 00142608  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014C88C 0014260C  B3 C3 00 02 */	sth r30, 2(r3)
/* 8014C890 00142610  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014C894 00142614  48 24 24 BD */	bl NETCalcCRC16
/* 8014C898 00142618  80 9D 00 00 */	lwz r4, 0(r29)
/* 8014C89C 0014261C  38 A0 00 01 */	li r5, 1
/* 8014C8A0 00142620  B0 64 00 02 */	sth r3, 2(r4)
/* 8014C8A4 00142624  80 1D 00 00 */	lwz r0, 0(r29)
/* 8014C8A8 00142628  90 1F 00 00 */	stw r0, 0(r31)
lbl_8014C8AC:
/* 8014C8AC 0014262C  7C A3 2B 78 */	mr r3, r5
lbl_8014C8B0:
/* 8014C8B0 00142630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C8B4 00142634  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014C8B8 00142638  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014C8BC 0014263C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014C8C0 00142640  7C 08 03 A6 */	mtlr r0
/* 8014C8C4 00142644  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C8C8 00142648  4E 80 00 20 */	blr 

.global ntFriendInfo$7getInstance
ntFriendInfo$7getInstance:
/* 8014C8CC 0014264C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C8D0 00142650  7C 08 02 A6 */	mflr r0
/* 8014C8D4 00142654  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C8D8 00142658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C8DC 0014265C  80 0D C0 2C */	lwz r0, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C8E0 00142660  2C 00 00 00 */	cmpwi r0, 0
/* 8014C8E4 00142664  40 82 00 64 */	bne lbl_8014C948
/* 8014C8E8 00142668  38 60 00 0C */	li r3, 0xc
/* 8014C8EC 0014266C  38 80 00 2D */	li r4, 0x2d
/* 8014C8F0 00142670  4B EB FF C9 */	bl __nw__10srHeapTypeFUlUl
/* 8014C8F4 00142674  2C 03 00 00 */	cmpwi r3, 0
/* 8014C8F8 00142678  7C 7F 1B 78 */	mr r31, r3
/* 8014C8FC 0014267C  41 82 00 48 */	beq lbl_8014C944
/* 8014C900 00142680  38 00 28 04 */	li r0, 0x2804
/* 8014C904 00142684  38 A0 00 04 */	li r5, 4
/* 8014C908 00142688  90 03 00 04 */	stw r0, 4(r3)
/* 8014C90C 0014268C  20 05 00 20 */	subfic r0, r5, 0x20
/* 8014C910 00142690  80 83 00 04 */	lwz r4, 4(r3)
/* 8014C914 00142694  7C 04 02 14 */	add r0, r4, r0
/* 8014C918 00142698  90 03 00 04 */	stw r0, 4(r3)
/* 8014C91C 0014269C  38 60 00 2D */	li r3, 0x2d
/* 8014C920 001426A0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8014C924 001426A4  4B ED 80 C1 */	bl alloc__13gfHeapManagerFUlUl
/* 8014C928 001426A8  90 7F 00 00 */	stw r3, 0(r31)
/* 8014C92C 001426AC  38 80 00 00 */	li r4, 0
/* 8014C930 001426B0  80 BF 00 04 */	lwz r5, 4(r31)
/* 8014C934 001426B4  4B EB 7B 09 */	bl memset
/* 8014C938 001426B8  38 00 00 00 */	li r0, 0
/* 8014C93C 001426BC  98 1F 00 08 */	stb r0, 8(r31)
/* 8014C940 001426C0  98 1F 00 09 */	stb r0, 9(r31)
lbl_8014C944:
/* 8014C944 001426C4  93 ED C0 2C */	stw r31, lbl_805A044C-_SDA_BASE_(r13)
lbl_8014C948:
/* 8014C948 001426C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C94C 001426CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C950 001426D0  80 6D C0 2C */	lwz r3, lbl_805A044C-_SDA_BASE_(r13)
/* 8014C954 001426D4  7C 08 03 A6 */	mtlr r0
/* 8014C958 001426D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C95C 001426DC  4E 80 00 20 */	blr 

.global ntFriendInfo$7dropInstance
ntFriendInfo$7dropInstance:
/* 8014C960 001426E0  4E 80 00 20 */	blr 

.global ntFriendInfo$7lock
ntFriendInfo$7lock:
/* 8014C964 001426E4  3C 60 80 4A */	lis r3, lbl_8049ECA0@ha
/* 8014C968 001426E8  38 63 EC A0 */	addi r3, r3, lbl_8049ECA0@l
/* 8014C96C 001426EC  48 09 22 48 */	b OSLockMutex

.global ntFriendInfo$7unlock
ntFriendInfo$7unlock:
/* 8014C970 001426F0  3C 60 80 4A */	lis r3, lbl_8049ECA0@ha
/* 8014C974 001426F4  38 63 EC A0 */	addi r3, r3, lbl_8049ECA0@l
/* 8014C978 001426F8  48 09 23 18 */	b OSUnlockMutex

.global ntFriendInfo$7getSaveData
ntFriendInfo$7getSaveData:
/* 8014C97C 001426FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C980 00142700  7C 08 02 A6 */	mflr r0
/* 8014C984 00142704  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C988 00142708  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C98C 0014270C  48 2A 49 95 */	bl _savegpr_27
/* 8014C990 00142710  80 C3 00 00 */	lwz r6, 0(r3)
/* 8014C994 00142714  7C 7B 1B 78 */	mr r27, r3
/* 8014C998 00142718  7C 9C 23 78 */	mr r28, r4
/* 8014C99C 0014271C  7C BD 2B 78 */	mr r29, r5
/* 8014C9A0 00142720  2C 06 00 00 */	cmpwi r6, 0
/* 8014C9A4 00142724  40 82 00 0C */	bne lbl_8014C9B0
/* 8014C9A8 00142728  3B C0 00 00 */	li r30, 0
/* 8014C9AC 0014272C  48 00 00 38 */	b lbl_8014C9E4
lbl_8014C9B0:
/* 8014C9B0 00142730  8B C3 00 08 */	lbz r30, 8(r3)
/* 8014C9B4 00142734  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C9B8 00142738  40 82 00 2C */	bne lbl_8014C9E4
/* 8014C9BC 0014273C  38 66 00 10 */	addi r3, r6, 0x10
/* 8014C9C0 00142740  48 20 49 45 */	bl DWC_CheckUserData
/* 8014C9C4 00142744  2C 03 00 00 */	cmpwi r3, 0
/* 8014C9C8 00142748  41 82 00 1C */	beq lbl_8014C9E4
/* 8014C9CC 0014274C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8014C9D0 00142750  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C9D4 00142754  48 20 4C 3D */	bl DWC_CheckDirtyFlag
/* 8014C9D8 00142758  2C 03 00 00 */	cmpwi r3, 0
/* 8014C9DC 0014275C  41 82 00 08 */	beq lbl_8014C9E4
/* 8014C9E0 00142760  3B C0 00 01 */	li r30, 1
lbl_8014C9E4:
/* 8014C9E4 00142764  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C9E8 00142768  40 82 00 0C */	bne lbl_8014C9F4
/* 8014C9EC 0014276C  38 60 00 00 */	li r3, 0
/* 8014C9F0 00142770  48 00 00 64 */	b lbl_8014CA54
lbl_8014C9F4:
/* 8014C9F4 00142774  80 7B 00 00 */	lwz r3, 0(r27)
/* 8014C9F8 00142778  38 63 00 10 */	addi r3, r3, 0x10
/* 8014C9FC 0014277C  48 20 4C 21 */	bl DWC_ClearDirtyFlag
/* 8014CA00 00142780  3B C0 00 00 */	li r30, 0
/* 8014CA04 00142784  80 7B 00 00 */	lwz r3, 0(r27)
/* 8014CA08 00142788  9B DB 00 08 */	stb r30, 8(r27)
/* 8014CA0C 0014278C  3B E0 28 04 */	li r31, 0x2804
/* 8014CA10 00142790  B3 E3 00 00 */	sth r31, 0(r3)
/* 8014CA14 00142794  4B EB FE CD */	bl srSystemGetRevisionNumber__Fv
/* 8014CA18 00142798  80 BB 00 00 */	lwz r5, 0(r27)
/* 8014CA1C 0014279C  38 80 28 04 */	li r4, 0x2804
/* 8014CA20 001427A0  B0 65 00 04 */	sth r3, 4(r5)
/* 8014CA24 001427A4  80 7B 00 00 */	lwz r3, 0(r27)
/* 8014CA28 001427A8  9B C3 00 06 */	stb r30, 6(r3)
/* 8014CA2C 001427AC  80 7B 00 00 */	lwz r3, 0(r27)
/* 8014CA30 001427B0  B3 C3 00 02 */	sth r30, 2(r3)
/* 8014CA34 001427B4  80 7B 00 00 */	lwz r3, 0(r27)
/* 8014CA38 001427B8  48 24 23 19 */	bl NETCalcCRC16
/* 8014CA3C 001427BC  80 9B 00 00 */	lwz r4, 0(r27)
/* 8014CA40 001427C0  B0 64 00 02 */	sth r3, 2(r4)
/* 8014CA44 001427C4  38 60 00 01 */	li r3, 1
/* 8014CA48 001427C8  80 1B 00 00 */	lwz r0, 0(r27)
/* 8014CA4C 001427CC  90 1C 00 00 */	stw r0, 0(r28)
/* 8014CA50 001427D0  93 FD 00 00 */	stw r31, 0(r29)
lbl_8014CA54:
/* 8014CA54 001427D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8014CA58 001427D8  48 2A 49 15 */	bl _restgpr_27
/* 8014CA5C 001427DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014CA60 001427E0  7C 08 03 A6 */	mtlr r0
/* 8014CA64 001427E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8014CA68 001427E8  4E 80 00 20 */	blr 

.global ntFriendInfo$7setSaveData
ntFriendInfo$7setSaveData:
/* 8014CA6C 001427EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014CA70 001427F0  7C 08 02 A6 */	mflr r0
/* 8014CA74 001427F4  28 05 28 04 */	cmplwi r5, 0x2804
/* 8014CA78 001427F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014CA7C 001427FC  38 00 00 01 */	li r0, 1
/* 8014CA80 00142800  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014CA84 00142804  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014CA88 00142808  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014CA8C 0014280C  7C 7D 1B 78 */	mr r29, r3
/* 8014CA90 00142810  98 03 00 08 */	stb r0, 8(r3)
/* 8014CA94 00142814  41 80 00 48 */	blt lbl_8014CADC
/* 8014CA98 00142818  80 63 00 00 */	lwz r3, 0(r3)
/* 8014CA9C 0014281C  38 A0 28 04 */	li r5, 0x2804
/* 8014CAA0 00142820  4B EB 78 99 */	bl func_80004338
/* 8014CAA4 00142824  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014CAA8 00142828  A0 03 00 00 */	lhz r0, 0(r3)
/* 8014CAAC 0014282C  28 00 28 04 */	cmplwi r0, 0x2804
/* 8014CAB0 00142830  40 82 00 2C */	bne lbl_8014CADC
/* 8014CAB4 00142834  A3 C3 00 02 */	lhz r30, 2(r3)
/* 8014CAB8 00142838  3B E0 00 00 */	li r31, 0
/* 8014CABC 0014283C  38 80 28 04 */	li r4, 0x2804
/* 8014CAC0 00142840  B3 E3 00 02 */	sth r31, 2(r3)
/* 8014CAC4 00142844  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014CAC8 00142848  48 24 22 89 */	bl NETCalcCRC16
/* 8014CACC 0014284C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8014CAD0 00142850  7C 1E 00 40 */	cmplw r30, r0
/* 8014CAD4 00142854  40 82 00 08 */	bne lbl_8014CADC
/* 8014CAD8 00142858  9B FD 00 08 */	stb r31, 8(r29)
lbl_8014CADC:
/* 8014CADC 0014285C  88 1D 00 08 */	lbz r0, 8(r29)
/* 8014CAE0 00142860  2C 00 00 00 */	cmpwi r0, 0
/* 8014CAE4 00142864  41 82 00 14 */	beq lbl_8014CAF8
/* 8014CAE8 00142868  80 7D 00 00 */	lwz r3, 0(r29)
/* 8014CAEC 0014286C  38 80 00 00 */	li r4, 0
/* 8014CAF0 00142870  38 A0 28 04 */	li r5, 0x2804
/* 8014CAF4 00142874  4B EB 79 49 */	bl memset
lbl_8014CAF8:
/* 8014CAF8 00142878  38 00 00 01 */	li r0, 1
/* 8014CAFC 0014287C  98 1D 00 09 */	stb r0, 9(r29)
/* 8014CB00 00142880  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014CB04 00142884  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014CB08 00142888  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014CB0C 0014288C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014CB10 00142890  7C 08 03 A6 */	mtlr r0
/* 8014CB14 00142894  38 21 00 20 */	addi r1, r1, 0x20
/* 8014CB18 00142898  4E 80 00 20 */	blr 

.global ntFriendInfo$7setDirtyFlag
ntFriendInfo$7setDirtyFlag:
/* 8014CB1C 0014289C  98 83 00 08 */	stb r4, 8(r3)
/* 8014CB20 001428A0  4E 80 00 20 */	blr 

.global ntFriendInfo$7getFriendInfo
ntFriendInfo$7getFriendInfo:
/* 8014CB24 001428A4  88 03 00 09 */	lbz r0, 9(r3)
/* 8014CB28 001428A8  2C 00 00 00 */	cmpwi r0, 0
/* 8014CB2C 001428AC  40 82 00 0C */	bne lbl_8014CB38
/* 8014CB30 001428B0  38 60 00 00 */	li r3, 0
/* 8014CB34 001428B4  4E 80 00 20 */	blr 
lbl_8014CB38:
/* 8014CB38 001428B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8014CB3C 001428BC  4E 80 00 20 */	blr 

.global ntFriendInfo$7getUserData
ntFriendInfo$7getUserData:
/* 8014CB40 001428C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8014CB44 001428C4  38 63 00 10 */	addi r3, r3, 0x10
/* 8014CB48 001428C8  4E 80 00 20 */	blr 

.global ntFriendInfo$7isValid
ntFriendInfo$7isValid:
/* 8014CB4C 001428CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CB50 001428D0  7C 08 02 A6 */	mflr r0
/* 8014CB54 001428D4  7C 83 23 78 */	mr r3, r4
/* 8014CB58 001428D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CB5C 001428DC  48 20 47 A9 */	bl DWC_CheckUserData
/* 8014CB60 001428E0  38 03 FF FF */	addi r0, r3, -1
/* 8014CB64 001428E4  7C 00 00 34 */	cntlzw r0, r0
/* 8014CB68 001428E8  54 03 D9 7E */	srwi r3, r0, 5
/* 8014CB6C 001428EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CB70 001428F0  7C 08 03 A6 */	mtlr r0
/* 8014CB74 001428F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CB78 001428F8  4E 80 00 20 */	blr 

.global ntFriendInfo$7remakeUserData
ntFriendInfo$7remakeUserData:
/* 8014CB7C 001428FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CB80 00142900  7C 08 02 A6 */	mflr r0
/* 8014CB84 00142904  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CB88 00142908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014CB8C 0014290C  3F E0 80 4A */	lis r31, lbl_8049ECA0@ha
/* 8014CB90 00142910  93 C1 00 08 */	stw r30, 8(r1)
/* 8014CB94 00142914  7C 7E 1B 78 */	mr r30, r3
/* 8014CB98 00142918  38 7F EC A0 */	addi r3, r31, lbl_8049ECA0@l
/* 8014CB9C 0014291C  48 09 20 19 */	bl OSLockMutex
/* 8014CBA0 00142920  38 7F EC A0 */	addi r3, r31, -4960
/* 8014CBA4 00142924  48 09 20 11 */	bl OSLockMutex
/* 8014CBA8 00142928  80 7E 00 00 */	lwz r3, 0(r30)
/* 8014CBAC 0014292C  38 80 00 00 */	li r4, 0
/* 8014CBB0 00142930  38 A0 28 04 */	li r5, 0x2804
/* 8014CBB4 00142934  4B EB 78 89 */	bl memset
/* 8014CBB8 00142938  38 00 00 01 */	li r0, 1
/* 8014CBBC 0014293C  38 7F EC A0 */	addi r3, r31, -4960
/* 8014CBC0 00142940  98 1E 00 08 */	stb r0, 8(r30)
/* 8014CBC4 00142944  48 09 20 CD */	bl OSUnlockMutex
/* 8014CBC8 00142948  80 7E 00 00 */	lwz r3, 0(r30)
/* 8014CBCC 0014294C  38 63 00 10 */	addi r3, r3, 0x10
/* 8014CBD0 00142950  48 20 46 FD */	bl DWC_CreateUserData
/* 8014CBD4 00142954  38 7F EC A0 */	addi r3, r31, -4960
/* 8014CBD8 00142958  48 09 20 B9 */	bl OSUnlockMutex
/* 8014CBDC 0014295C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014CBE0 00142960  38 60 00 01 */	li r3, 1
/* 8014CBE4 00142964  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014CBE8 00142968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CBEC 0014296C  7C 08 03 A6 */	mtlr r0
/* 8014CBF0 00142970  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CBF4 00142974  4E 80 00 20 */	blr 

.global __sinit_$3nt_friendinfo_cpp
__sinit_$3nt_friendinfo_cpp:
/* 8014CBF8 00142978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CBFC 0014297C  7C 08 02 A6 */	mflr r0
/* 8014CC00 00142980  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CC04 00142984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014CC08 00142988  3F E0 80 4A */	lis r31, lbl_8049ECA0@ha
/* 8014CC0C 0014298C  38 7F EC A0 */	addi r3, r31, lbl_8049ECA0@l
/* 8014CC10 00142990  48 09 1F 6D */	bl OSInitMutex
/* 8014CC14 00142994  3C 80 80 02 */	lis r4, gfMutex$7__dt@ha
/* 8014CC18 00142998  3C A0 80 4A */	lis r5, lbl_8049EC90@ha
/* 8014CC1C 0014299C  38 7F EC A0 */	addi r3, r31, -4960
/* 8014CC20 001429A0  38 84 0A F8 */	addi r4, r4, gfMutex$7__dt@l
/* 8014CC24 001429A4  38 A5 EC 90 */	addi r5, r5, lbl_8049EC90@l
/* 8014CC28 001429A8  48 2A 3A FD */	bl __register_global_object_tmp
/* 8014CC2C 001429AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CC30 001429B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014CC34 001429B4  7C 08 03 A6 */	mtlr r0
/* 8014CC38 001429B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CC3C 001429BC  4E 80 00 20 */	blr 


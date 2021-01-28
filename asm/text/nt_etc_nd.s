.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nteND$7__ct
nteND$7__ct:
/* 801510F4 00146E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801510F8 00146E78  7C 08 02 A6 */	mflr r0
/* 801510FC 00146E7C  3C A0 80 42 */	lis r5, lbl_804208B0@ha
/* 80151100 00146E80  38 C0 10 00 */	li r6, 0x1000
/* 80151104 00146E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80151108 00146E88  38 A5 08 B0 */	addi r5, r5, lbl_804208B0@l
/* 8015110C 00146E8C  38 E0 00 3A */	li r7, 0x3a
/* 80151110 00146E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80151114 00146E94  7C 9F 23 78 */	mr r31, r4
/* 80151118 00146E98  93 C1 00 08 */	stw r30, 8(r1)
/* 8015111C 00146E9C  7C 7E 1B 78 */	mr r30, r3
/* 80151120 00146EA0  7F C4 F3 78 */	mr r4, r30
/* 80151124 00146EA4  90 A3 00 00 */	stw r5, 0(r3)
/* 80151128 00146EA8  38 A0 00 1F */	li r5, 0x1f
/* 8015112C 00146EAC  4B ED E4 FD */	bl gfThread$7createThread
/* 80151130 00146EB0  3C 60 80 46 */	lis r3, lbl_80461368@ha
/* 80151134 00146EB4  38 80 00 00 */	li r4, 0
/* 80151138 00146EB8  38 63 13 68 */	addi r3, r3, lbl_80461368@l
/* 8015113C 00146EBC  38 00 00 01 */	li r0, 1
/* 80151140 00146EC0  90 7E 00 00 */	stw r3, 0(r30)
/* 80151144 00146EC4  7F C3 F3 78 */	mr r3, r30
/* 80151148 00146EC8  90 9E 03 40 */	stw r4, 0x340(r30)
/* 8015114C 00146ECC  90 9E 03 44 */	stw r4, 0x344(r30)
/* 80151150 00146ED0  90 9E 03 48 */	stw r4, 0x348(r30)
/* 80151154 00146ED4  98 9E 03 4C */	stb r4, 0x34c(r30)
/* 80151158 00146ED8  98 9E 03 4D */	stb r4, 0x34d(r30)
/* 8015115C 00146EDC  98 1E 03 4E */	stb r0, 0x34e(r30)
/* 80151160 00146EE0  90 9E 03 50 */	stw r4, 0x350(r30)
/* 80151164 00146EE4  9B FE 03 58 */	stb r31, 0x358(r30)
/* 80151168 00146EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015116C 00146EEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80151170 00146EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80151174 00146EF4  7C 08 03 A6 */	mtlr r0
/* 80151178 00146EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015117C 00146EFC  4E 80 00 20 */	blr 

.global nteND$7__dt
nteND$7__dt:
/* 80151180 00146F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80151184 00146F04  7C 08 02 A6 */	mflr r0
/* 80151188 00146F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015118C 00146F0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80151190 00146F10  48 2A 01 8D */	bl _savegpr_26
/* 80151194 00146F14  2C 03 00 00 */	cmpwi r3, 0
/* 80151198 00146F18  7C 7A 1B 78 */	mr r26, r3
/* 8015119C 00146F1C  7C 9B 23 78 */	mr r27, r4
/* 801511A0 00146F20  41 82 00 9C */	beq lbl_8015123C
/* 801511A4 00146F24  38 00 00 00 */	li r0, 0
/* 801511A8 00146F28  3B C0 00 0F */	li r30, 0xf
/* 801511AC 00146F2C  7F E0 F1 D6 */	mullw r31, r0, r30
/* 801511B0 00146F30  3C A0 80 46 */	lis r5, lbl_80461368@ha
/* 801511B4 00146F34  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 801511B8 00146F38  98 03 03 4E */	stb r0, 0x34e(r3)
/* 801511BC 00146F3C  38 A5 13 68 */	addi r5, r5, lbl_80461368@l
/* 801511C0 00146F40  90 A3 00 00 */	stw r5, 0(r3)
/* 801511C4 00146F44  3B 84 4D D3 */	addi r28, r4, 0x10624DD3@l
/* 801511C8 00146F48  3F A0 80 00 */	lis r29, 0x8000
/* 801511CC 00146F4C  48 00 00 2C */	b lbl_801511F8
lbl_801511D0:
/* 801511D0 00146F50  38 7A 00 08 */	addi r3, r26, 8
/* 801511D4 00146F54  48 09 01 91 */	bl OSResumeThread
/* 801511D8 00146F58  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 801511DC 00146F5C  54 00 F0 BE */	srwi r0, r0, 2
/* 801511E0 00146F60  7C 1C 00 16 */	mulhwu r0, r28, r0
/* 801511E4 00146F64  54 03 D1 BE */	srwi r3, r0, 6
/* 801511E8 00146F68  7C 03 F0 16 */	mulhwu r0, r3, r30
/* 801511EC 00146F6C  1C 83 00 0F */	mulli r4, r3, 0xf
/* 801511F0 00146F70  7C 60 FA 14 */	add r3, r0, r31
/* 801511F4 00146F74  48 09 08 8D */	bl OSSleepTicks
lbl_801511F8:
/* 801511F8 00146F78  38 7A 00 08 */	addi r3, r26, 8
/* 801511FC 00146F7C  48 08 F5 39 */	bl OSIsThreadTerminated
/* 80151200 00146F80  38 03 FF FF */	addi r0, r3, -1
/* 80151204 00146F84  7C 00 00 34 */	cntlzw r0, r0
/* 80151208 00146F88  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8015120C 00146F8C  41 82 FF C4 */	beq lbl_801511D0
/* 80151210 00146F90  3C 60 80 46 */	lis r3, lbl_80461108@ha
/* 80151214 00146F94  38 63 11 08 */	addi r3, r3, lbl_80461108@l
/* 80151218 00146F98  4C C6 31 82 */	crclr 6
/* 8015121C 00146F9C  4B F7 62 D1 */	bl netReport
/* 80151220 00146FA0  7F 43 D3 78 */	mr r3, r26
/* 80151224 00146FA4  38 80 00 00 */	li r4, 0
/* 80151228 00146FA8  4B ED E3 91 */	bl gfThread$7__dt
/* 8015122C 00146FAC  2C 1B 00 00 */	cmpwi r27, 0
/* 80151230 00146FB0  40 81 00 0C */	ble lbl_8015123C
/* 80151234 00146FB4  7F 43 D3 78 */	mr r3, r26
/* 80151238 00146FB8  4B EB B6 91 */	bl __dl__FPv
lbl_8015123C:
/* 8015123C 00146FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80151240 00146FC0  7F 43 D3 78 */	mr r3, r26
/* 80151244 00146FC4  48 2A 01 25 */	bl _restgpr_26
/* 80151248 00146FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015124C 00146FCC  7C 08 03 A6 */	mtlr r0
/* 80151250 00146FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80151254 00146FD4  4E 80 00 20 */	blr 

.global nteND$7run
nteND$7run:
/* 80151258 00146FD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015125C 00146FDC  7C 08 02 A6 */	mflr r0
/* 80151260 00146FE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80151264 00146FE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80151268 00146FE8  48 2A 00 A9 */	bl _savegpr_23
/* 8015126C 00146FEC  3F A0 80 46 */	lis r29, lbl_80461108@ha
/* 80151270 00146FF0  7C 77 1B 78 */	mr r23, r3
/* 80151274 00146FF4  3B BD 11 08 */	addi r29, r29, lbl_80461108@l
/* 80151278 00146FF8  3B E0 00 00 */	li r31, 0
/* 8015127C 00146FFC  3B C0 00 01 */	li r30, 1
/* 80151280 00147000  48 00 03 04 */	b lbl_80151584
lbl_80151284:
/* 80151284 00147004  80 17 03 40 */	lwz r0, 0x340(r23)
/* 80151288 00147008  3B 60 00 00 */	li r27, 0
/* 8015128C 0014700C  3B 40 00 00 */	li r26, 0
/* 80151290 00147010  3B 20 00 00 */	li r25, 0
/* 80151294 00147014  2C 00 00 02 */	cmpwi r0, 2
/* 80151298 00147018  3B 00 00 00 */	li r24, 0
/* 8015129C 0014701C  41 82 00 6C */	beq lbl_80151308
/* 801512A0 00147020  40 80 00 10 */	bge lbl_801512B0
/* 801512A4 00147024  2C 00 00 01 */	cmpwi r0, 1
/* 801512A8 00147028  40 80 00 14 */	bge lbl_801512BC
/* 801512AC 0014702C  48 00 02 64 */	b lbl_80151510
lbl_801512B0:
/* 801512B0 00147030  2C 00 00 04 */	cmpwi r0, 4
/* 801512B4 00147034  40 80 02 5C */	bge lbl_80151510
/* 801512B8 00147038  48 00 00 7C */	b lbl_80151334
lbl_801512BC:
/* 801512BC 0014703C  7E E3 BB 78 */	mr r3, r23
/* 801512C0 00147040  3B 00 00 01 */	li r24, 1
/* 801512C4 00147044  48 00 06 41 */	bl nteND$7_processAsync
/* 801512C8 00147048  2C 03 00 00 */	cmpwi r3, 0
/* 801512CC 0014704C  41 82 00 0C */	beq lbl_801512D8
/* 801512D0 00147050  9B D7 03 4D */	stb r30, 0x34d(r23)
/* 801512D4 00147054  48 00 02 3C */	b lbl_80151510
lbl_801512D8:
/* 801512D8 00147058  7E E3 BB 78 */	mr r3, r23
/* 801512DC 0014705C  48 00 07 31 */	bl nteND$7_errorMonitor
/* 801512E0 00147060  48 20 4C CD */	bl DWC_NdCleanupAsync
/* 801512E4 00147064  2C 03 00 00 */	cmpwi r3, 0
/* 801512E8 00147068  41 82 00 10 */	beq lbl_801512F8
/* 801512EC 0014706C  7E E3 BB 78 */	mr r3, r23
/* 801512F0 00147070  48 00 06 15 */	bl nteND$7_processAsync
/* 801512F4 00147074  48 00 00 0C */	b lbl_80151300
lbl_801512F8:
/* 801512F8 00147078  7E E3 BB 78 */	mr r3, r23
/* 801512FC 0014707C  48 00 07 11 */	bl nteND$7_errorMonitor
lbl_80151300:
/* 80151300 00147080  3B 60 FF FF */	li r27, -1
/* 80151304 00147084  48 00 02 0C */	b lbl_80151510
lbl_80151308:
/* 80151308 00147088  7E E3 BB 78 */	mr r3, r23
/* 8015130C 0014708C  3B 00 00 02 */	li r24, 2
/* 80151310 00147090  48 00 05 F5 */	bl nteND$7_processAsync
/* 80151314 00147094  2C 03 00 00 */	cmpwi r3, 0
/* 80151318 00147098  41 82 00 0C */	beq lbl_80151324
/* 8015131C 0014709C  9B F7 03 4D */	stb r31, 0x34d(r23)
/* 80151320 001470A0  48 00 01 F0 */	b lbl_80151510
lbl_80151324:
/* 80151324 001470A4  7E E3 BB 78 */	mr r3, r23
/* 80151328 001470A8  48 00 06 E5 */	bl nteND$7_errorMonitor
/* 8015132C 001470AC  3B 60 FF FF */	li r27, -1
/* 80151330 001470B0  48 00 01 E0 */	b lbl_80151510
lbl_80151334:
/* 80151334 001470B4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 80151338 001470B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8015133C 001470BC  3B 00 00 03 */	li r24, 3
/* 80151340 001470C0  48 20 4D C9 */	bl DWC_NdGetFileListNumAsync
/* 80151344 001470C4  2C 03 00 00 */	cmpwi r3, 0
/* 80151348 001470C8  40 82 00 20 */	bne lbl_80151368
/* 8015134C 001470CC  38 7D 00 14 */	addi r3, r29, 0x14
/* 80151350 001470D0  4C C6 31 82 */	crclr 6
/* 80151354 001470D4  4B F7 61 99 */	bl netReport
/* 80151358 001470D8  7E E3 BB 78 */	mr r3, r23
/* 8015135C 001470DC  48 00 06 B1 */	bl nteND$7_errorMonitor
/* 80151360 001470E0  3B 60 FF FF */	li r27, -1
/* 80151364 001470E4  48 00 01 AC */	b lbl_80151510
lbl_80151368:
/* 80151368 001470E8  7E E3 BB 78 */	mr r3, r23
/* 8015136C 001470EC  48 00 05 99 */	bl nteND$7_processAsync
/* 80151370 001470F0  2C 03 00 00 */	cmpwi r3, 0
/* 80151374 001470F4  40 82 00 20 */	bne lbl_80151394
/* 80151378 001470F8  38 7D 00 5C */	addi r3, r29, 0x5c
/* 8015137C 001470FC  4C C6 31 82 */	crclr 6
/* 80151380 00147100  4B F7 61 6D */	bl netReport
/* 80151384 00147104  7E E3 BB 78 */	mr r3, r23
/* 80151388 00147108  48 00 06 85 */	bl nteND$7_errorMonitor
/* 8015138C 0014710C  3B 60 FF FF */	li r27, -1
/* 80151390 00147110  48 00 01 80 */	b lbl_80151510
lbl_80151394:
/* 80151394 00147114  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80151398 00147118  2C 00 00 00 */	cmpwi r0, 0
/* 8015139C 0014711C  40 82 00 18 */	bne lbl_801513B4
/* 801513A0 00147120  38 7D 00 9C */	addi r3, r29, 0x9c
/* 801513A4 00147124  4C C6 31 82 */	crclr 6
/* 801513A8 00147128  4B F7 61 45 */	bl netReport
/* 801513AC 0014712C  3B 60 00 47 */	li r27, 0x47
/* 801513B0 00147130  48 00 01 60 */	b lbl_80151510
lbl_801513B4:
/* 801513B4 00147134  38 60 00 06 */	li r3, 6
/* 801513B8 00147138  38 80 0D C0 */	li r4, 0xdc0
/* 801513BC 0014713C  38 A0 00 20 */	li r5, 0x20
/* 801513C0 00147140  4B ED 36 41 */	bl gfHeapManager$7alloc_379
/* 801513C4 00147144  2C 03 00 00 */	cmpwi r3, 0
/* 801513C8 00147148  7C 79 1B 78 */	mr r25, r3
/* 801513CC 0014714C  40 82 00 18 */	bne lbl_801513E4
/* 801513D0 00147150  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 801513D4 00147154  4C C6 31 82 */	crclr 6
/* 801513D8 00147158  4B F7 61 15 */	bl netReport
/* 801513DC 0014715C  3B 60 FF FF */	li r27, -1
/* 801513E0 00147160  48 00 01 30 */	b lbl_80151510
lbl_801513E4:
/* 801513E4 00147164  38 80 00 00 */	li r4, 0
/* 801513E8 00147168  38 A0 00 14 */	li r5, 0x14
/* 801513EC 0014716C  48 20 4D D9 */	bl DWC_NdGetFileListAsync
/* 801513F0 00147170  2C 03 00 00 */	cmpwi r3, 0
/* 801513F4 00147174  40 82 00 20 */	bne lbl_80151414
/* 801513F8 00147178  38 7D 00 F0 */	addi r3, r29, 0xf0
/* 801513FC 0014717C  4C C6 31 82 */	crclr 6
/* 80151400 00147180  4B F7 60 ED */	bl netReport
/* 80151404 00147184  7E E3 BB 78 */	mr r3, r23
/* 80151408 00147188  48 00 06 05 */	bl nteND$7_errorMonitor
/* 8015140C 0014718C  3B 60 FF FF */	li r27, -1
/* 80151410 00147190  48 00 01 00 */	b lbl_80151510
lbl_80151414:
/* 80151414 00147194  7E E3 BB 78 */	mr r3, r23
/* 80151418 00147198  48 00 04 ED */	bl nteND$7_processAsync
/* 8015141C 0014719C  2C 03 00 00 */	cmpwi r3, 0
/* 80151420 001471A0  40 82 00 20 */	bne lbl_80151440
/* 80151424 001471A4  38 7D 01 34 */	addi r3, r29, 0x134
/* 80151428 001471A8  4C C6 31 82 */	crclr 6
/* 8015142C 001471AC  4B F7 60 C1 */	bl netReport
/* 80151430 001471B0  7E E3 BB 78 */	mr r3, r23
/* 80151434 001471B4  48 00 05 D9 */	bl nteND$7_errorMonitor
/* 80151438 001471B8  3B 60 FF FF */	li r27, -1
/* 8015143C 001471BC  48 00 00 D4 */	b lbl_80151510
lbl_80151440:
/* 80151440 001471C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80151444 001471C4  7F 24 CB 78 */	mr r4, r25
/* 80151448 001471C8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8015144C 001471CC  38 E1 00 08 */	addi r7, r1, 8
/* 80151450 001471D0  93 E1 00 08 */	stw r31, 8(r1)
/* 80151454 001471D4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80151458 001471D8  80 77 03 50 */	lwz r3, 0x350(r23)
/* 8015145C 001471DC  81 83 00 00 */	lwz r12, 0(r3)
/* 80151460 001471E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80151464 001471E4  7D 89 03 A6 */	mtctr r12
/* 80151468 001471E8  4E 80 04 21 */	bctrl 
/* 8015146C 001471EC  2C 03 00 00 */	cmpwi r3, 0
/* 80151470 001471F0  41 80 00 10 */	blt lbl_80151480
/* 80151474 001471F4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80151478 001471F8  7C 03 00 00 */	cmpw r3, r0
/* 8015147C 001471FC  41 80 00 18 */	blt lbl_80151494
lbl_80151480:
/* 80151480 00147200  38 7D 01 74 */	addi r3, r29, 0x174
/* 80151484 00147204  4C C6 31 82 */	crclr 6
/* 80151488 00147208  4B F7 60 65 */	bl netReport
/* 8015148C 0014720C  3B 60 02 CA */	li r27, 0x2ca
/* 80151490 00147210  48 00 00 80 */	b lbl_80151510
lbl_80151494:
/* 80151494 00147214  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80151498 00147218  2C 04 00 00 */	cmpwi r4, 0
/* 8015149C 0014721C  41 82 00 1C */	beq lbl_801514B8
/* 801514A0 00147220  1C 03 00 B0 */	mulli r0, r3, 0xb0
/* 801514A4 00147224  80 A1 00 08 */	lwz r5, 8(r1)
/* 801514A8 00147228  7F 99 02 14 */	add r28, r25, r0
/* 801514AC 0014722C  80 1C 00 AC */	lwz r0, 0xac(r28)
/* 801514B0 00147230  7C 00 28 40 */	cmplw r0, r5
/* 801514B4 00147234  40 81 00 18 */	ble lbl_801514CC
lbl_801514B8:
/* 801514B8 00147238  38 7D 01 A0 */	addi r3, r29, 0x1a0
/* 801514BC 0014723C  4C C6 31 82 */	crclr 6
/* 801514C0 00147240  4B F7 60 2D */	bl netReport
/* 801514C4 00147244  3B 60 13 6B */	li r27, 0x136b
/* 801514C8 00147248  48 00 00 48 */	b lbl_80151510
lbl_801514CC:
/* 801514CC 0014724C  7F 83 E3 78 */	mr r3, r28
/* 801514D0 00147250  48 20 4D E1 */	bl DWC_NdGetFileAsync
/* 801514D4 00147254  2C 03 00 00 */	cmpwi r3, 0
/* 801514D8 00147258  40 82 00 14 */	bne lbl_801514EC
/* 801514DC 0014725C  7E E3 BB 78 */	mr r3, r23
/* 801514E0 00147260  48 00 05 2D */	bl nteND$7_errorMonitor
/* 801514E4 00147264  3B 60 FF FF */	li r27, -1
/* 801514E8 00147268  48 00 00 28 */	b lbl_80151510
lbl_801514EC:
/* 801514EC 0014726C  7E E3 BB 78 */	mr r3, r23
/* 801514F0 00147270  48 00 04 15 */	bl nteND$7_processAsync
/* 801514F4 00147274  2C 03 00 00 */	cmpwi r3, 0
/* 801514F8 00147278  40 82 00 14 */	bne lbl_8015150C
/* 801514FC 0014727C  7E E3 BB 78 */	mr r3, r23
/* 80151500 00147280  48 00 05 0D */	bl nteND$7_errorMonitor
/* 80151504 00147284  3B 60 FF FF */	li r27, -1
/* 80151508 00147288  48 00 00 08 */	b lbl_80151510
lbl_8015150C:
/* 8015150C 0014728C  83 5C 00 AC */	lwz r26, 0xac(r28)
lbl_80151510:
/* 80151510 00147290  2C 19 00 00 */	cmpwi r25, 0
/* 80151514 00147294  93 F7 03 40 */	stw r31, 0x340(r23)
/* 80151518 00147298  41 82 00 0C */	beq lbl_80151524
/* 8015151C 0014729C  7F 23 CB 78 */	mr r3, r25
/* 80151520 001472A0  4B ED 35 2D */	bl gfHeapManager$7free
lbl_80151524:
/* 80151524 001472A4  2C 18 00 00 */	cmpwi r24, 0
/* 80151528 001472A8  41 82 00 30 */	beq lbl_80151558
/* 8015152C 001472AC  80 77 03 50 */	lwz r3, 0x350(r23)
/* 80151530 001472B0  2C 03 00 00 */	cmpwi r3, 0
/* 80151534 001472B4  41 82 00 24 */	beq lbl_80151558
/* 80151538 001472B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8015153C 001472BC  7F 04 C3 78 */	mr r4, r24
/* 80151540 001472C0  7F 65 DB 78 */	mr r5, r27
/* 80151544 001472C4  7F 46 D3 78 */	mr r6, r26
/* 80151548 001472C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8015154C 001472CC  7D 89 03 A6 */	mtctr r12
/* 80151550 001472D0  4E 80 04 21 */	bctrl 
/* 80151554 001472D4  93 F7 03 50 */	stw r31, 0x350(r23)
lbl_80151558:
/* 80151558 001472D8  88 17 03 4E */	lbz r0, 0x34e(r23)
/* 8015155C 001472DC  2C 00 00 00 */	cmpwi r0, 0
/* 80151560 001472E0  41 82 00 30 */	beq lbl_80151590
/* 80151564 001472E4  38 7D 01 C0 */	addi r3, r29, 0x1c0
/* 80151568 001472E8  4C C6 31 82 */	crclr 6
/* 8015156C 001472EC  4B F7 5F 81 */	bl netReport
/* 80151570 001472F0  38 77 00 08 */	addi r3, r23, 8
/* 80151574 001472F4  48 09 00 89 */	bl OSSuspendThread
/* 80151578 001472F8  38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 8015157C 001472FC  4C C6 31 82 */	crclr 6
/* 80151580 00147300  4B F7 5F 6D */	bl netReport
lbl_80151584:
/* 80151584 00147304  88 17 03 4E */	lbz r0, 0x34e(r23)
/* 80151588 00147308  2C 00 00 00 */	cmpwi r0, 0
/* 8015158C 0014730C  40 82 FC F8 */	bne lbl_80151284
lbl_80151590:
/* 80151590 00147310  38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 80151594 00147314  4C C6 31 82 */	crclr 6
/* 80151598 00147318  4B F7 5F 55 */	bl netReport
/* 8015159C 0014731C  39 61 00 40 */	addi r11, r1, 0x40
/* 801515A0 00147320  48 29 FD BD */	bl _restgpr_23
/* 801515A4 00147324  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801515A8 00147328  7C 08 03 A6 */	mtlr r0
/* 801515AC 0014732C  38 21 00 40 */	addi r1, r1, 0x40
/* 801515B0 00147330  4E 80 00 20 */	blr 

.global nteND$7startupND
nteND$7startupND:
/* 801515B4 00147334  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801515B8 00147338  7C 08 02 A6 */	mflr r0
/* 801515BC 0014733C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801515C0 00147340  39 61 00 30 */	addi r11, r1, 0x30
/* 801515C4 00147344  48 29 FD 4D */	bl _savegpr_23
/* 801515C8 00147348  88 03 03 4D */	lbz r0, 0x34d(r3)
/* 801515CC 0014734C  7C 7C 1B 78 */	mr r28, r3
/* 801515D0 00147350  7C 9D 23 78 */	mr r29, r4
/* 801515D4 00147354  7C BE 2B 78 */	mr r30, r5
/* 801515D8 00147358  2C 00 00 00 */	cmpwi r0, 0
/* 801515DC 0014735C  7C DF 33 78 */	mr r31, r6
/* 801515E0 00147360  41 82 00 0C */	beq lbl_801515EC
/* 801515E4 00147364  38 60 00 01 */	li r3, 1
/* 801515E8 00147368  48 00 00 D4 */	b lbl_801516BC
lbl_801515EC:
/* 801515EC 0014736C  2C 04 00 00 */	cmpwi r4, 0
/* 801515F0 00147370  40 82 00 0C */	bne lbl_801515FC
/* 801515F4 00147374  38 60 00 00 */	li r3, 0
/* 801515F8 00147378  48 00 00 C4 */	b lbl_801516BC
lbl_801515FC:
/* 801515FC 0014737C  88 03 03 4E */	lbz r0, 0x34e(r3)
/* 80151600 00147380  2C 00 00 00 */	cmpwi r0, 0
/* 80151604 00147384  40 82 00 0C */	bne lbl_80151610
/* 80151608 00147388  38 60 00 00 */	li r3, 0
/* 8015160C 0014738C  48 00 00 B0 */	b lbl_801516BC
lbl_80151610:
/* 80151610 00147390  38 00 00 00 */	li r0, 0
/* 80151614 00147394  3B 40 00 0F */	li r26, 0xf
/* 80151618 00147398  7F 60 D1 D6 */	mullw r27, r0, r26
/* 8015161C 0014739C  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 80151620 001473A0  3F 20 80 00 */	lis r25, 0x8000
/* 80151624 001473A4  3B 03 4D D3 */	addi r24, r3, 0x10624DD3@l
/* 80151628 001473A8  48 00 00 24 */	b lbl_8015164C
lbl_8015162C:
/* 8015162C 001473AC  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 80151630 001473B0  54 00 F0 BE */	srwi r0, r0, 2
/* 80151634 001473B4  7C 18 00 16 */	mulhwu r0, r24, r0
/* 80151638 001473B8  54 03 D1 BE */	srwi r3, r0, 6
/* 8015163C 001473BC  7C 03 D0 16 */	mulhwu r0, r3, r26
/* 80151640 001473C0  1C 83 00 0F */	mulli r4, r3, 0xf
/* 80151644 001473C4  7C 60 DA 14 */	add r3, r0, r27
/* 80151648 001473C8  48 09 04 39 */	bl OSSleepTicks
lbl_8015164C:
/* 8015164C 001473CC  80 1C 03 40 */	lwz r0, 0x340(r28)
/* 80151650 001473D0  3A E0 00 00 */	li r23, 0
/* 80151654 001473D4  2C 00 00 00 */	cmpwi r0, 0
/* 80151658 001473D8  40 82 00 20 */	bne lbl_80151678
/* 8015165C 001473DC  38 7C 00 08 */	addi r3, r28, 8
/* 80151660 001473E0  48 08 F0 C1 */	bl OSIsThreadSuspended
/* 80151664 001473E4  38 03 FF FF */	addi r0, r3, -1
/* 80151668 001473E8  7C 00 00 34 */	cntlzw r0, r0
/* 8015166C 001473EC  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80151670 001473F0  41 82 00 08 */	beq lbl_80151678
/* 80151674 001473F4  3A E0 00 01 */	li r23, 1
lbl_80151678:
/* 80151678 001473F8  2C 17 00 00 */	cmpwi r23, 0
/* 8015167C 001473FC  41 82 FF B0 */	beq lbl_8015162C
/* 80151680 00147400  7F C3 F3 78 */	mr r3, r30
/* 80151684 00147404  7F E4 FB 78 */	mr r4, r31
/* 80151688 00147408  48 20 46 85 */	bl DWC_NdInitAsync
/* 8015168C 0014740C  2C 03 00 00 */	cmpwi r3, 0
/* 80151690 00147410  40 82 00 14 */	bne lbl_801516A4
/* 80151694 00147414  7F 83 E3 78 */	mr r3, r28
/* 80151698 00147418  48 00 03 75 */	bl nteND$7_errorMonitor
/* 8015169C 0014741C  38 60 00 00 */	li r3, 0
/* 801516A0 00147420  48 00 00 1C */	b lbl_801516BC
lbl_801516A4:
/* 801516A4 00147424  38 00 00 01 */	li r0, 1
/* 801516A8 00147428  93 BC 03 50 */	stw r29, 0x350(r28)
/* 801516AC 0014742C  38 7C 00 08 */	addi r3, r28, 8
/* 801516B0 00147430  90 1C 03 40 */	stw r0, 0x340(r28)
/* 801516B4 00147434  48 08 FC B1 */	bl OSResumeThread
/* 801516B8 00147438  38 60 00 01 */	li r3, 1
lbl_801516BC:
/* 801516BC 0014743C  39 61 00 30 */	addi r11, r1, 0x30
/* 801516C0 00147440  48 29 FC 9D */	bl _restgpr_23
/* 801516C4 00147444  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801516C8 00147448  7C 08 03 A6 */	mtlr r0
/* 801516CC 0014744C  38 21 00 30 */	addi r1, r1, 0x30
/* 801516D0 00147450  4E 80 00 20 */	blr 

.global nteND$7finishND
nteND$7finishND:
/* 801516D4 00147454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801516D8 00147458  7C 08 02 A6 */	mflr r0
/* 801516DC 0014745C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801516E0 00147460  39 61 00 30 */	addi r11, r1, 0x30
/* 801516E4 00147464  48 29 FC 35 */	bl _savegpr_25
/* 801516E8 00147468  2C 04 00 00 */	cmpwi r4, 0
/* 801516EC 0014746C  7C 7E 1B 78 */	mr r30, r3
/* 801516F0 00147470  7C 9F 23 78 */	mr r31, r4
/* 801516F4 00147474  40 82 00 0C */	bne lbl_80151700
/* 801516F8 00147478  38 60 00 00 */	li r3, 0
/* 801516FC 0014747C  48 00 00 BC */	b lbl_801517B8
lbl_80151700:
/* 80151700 00147480  88 03 03 4E */	lbz r0, 0x34e(r3)
/* 80151704 00147484  2C 00 00 00 */	cmpwi r0, 0
/* 80151708 00147488  40 82 00 0C */	bne lbl_80151714
/* 8015170C 0014748C  38 60 00 00 */	li r3, 0
/* 80151710 00147490  48 00 00 A8 */	b lbl_801517B8
lbl_80151714:
/* 80151714 00147494  38 00 00 00 */	li r0, 0
/* 80151718 00147498  3B 80 00 0F */	li r28, 0xf
/* 8015171C 0014749C  7F A0 E1 D6 */	mullw r29, r0, r28
/* 80151720 001474A0  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 80151724 001474A4  3F 60 80 00 */	lis r27, 0x8000
/* 80151728 001474A8  3B 43 4D D3 */	addi r26, r3, 0x10624DD3@l
/* 8015172C 001474AC  48 00 00 24 */	b lbl_80151750
lbl_80151730:
/* 80151730 001474B0  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 80151734 001474B4  54 00 F0 BE */	srwi r0, r0, 2
/* 80151738 001474B8  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 8015173C 001474BC  54 03 D1 BE */	srwi r3, r0, 6
/* 80151740 001474C0  7C 03 E0 16 */	mulhwu r0, r3, r28
/* 80151744 001474C4  1C 83 00 0F */	mulli r4, r3, 0xf
/* 80151748 001474C8  7C 60 EA 14 */	add r3, r0, r29
/* 8015174C 001474CC  48 09 03 35 */	bl OSSleepTicks
lbl_80151750:
/* 80151750 001474D0  80 1E 03 40 */	lwz r0, 0x340(r30)
/* 80151754 001474D4  3B 20 00 00 */	li r25, 0
/* 80151758 001474D8  2C 00 00 00 */	cmpwi r0, 0
/* 8015175C 001474DC  40 82 00 20 */	bne lbl_8015177C
/* 80151760 001474E0  38 7E 00 08 */	addi r3, r30, 8
/* 80151764 001474E4  48 08 EF BD */	bl OSIsThreadSuspended
/* 80151768 001474E8  38 03 FF FF */	addi r0, r3, -1
/* 8015176C 001474EC  7C 00 00 34 */	cntlzw r0, r0
/* 80151770 001474F0  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80151774 001474F4  41 82 00 08 */	beq lbl_8015177C
/* 80151778 001474F8  3B 20 00 01 */	li r25, 1
lbl_8015177C:
/* 8015177C 001474FC  2C 19 00 00 */	cmpwi r25, 0
/* 80151780 00147500  41 82 FF B0 */	beq lbl_80151730
/* 80151784 00147504  48 20 48 29 */	bl DWC_NdCleanupAsync
/* 80151788 00147508  2C 03 00 00 */	cmpwi r3, 0
/* 8015178C 0014750C  40 82 00 14 */	bne lbl_801517A0
/* 80151790 00147510  7F C3 F3 78 */	mr r3, r30
/* 80151794 00147514  48 00 02 79 */	bl nteND$7_errorMonitor
/* 80151798 00147518  38 60 00 00 */	li r3, 0
/* 8015179C 0014751C  48 00 00 1C */	b lbl_801517B8
lbl_801517A0:
/* 801517A0 00147520  38 00 00 02 */	li r0, 2
/* 801517A4 00147524  93 FE 03 50 */	stw r31, 0x350(r30)
/* 801517A8 00147528  38 7E 00 08 */	addi r3, r30, 8
/* 801517AC 0014752C  90 1E 03 40 */	stw r0, 0x340(r30)
/* 801517B0 00147530  48 08 FB B5 */	bl OSResumeThread
/* 801517B4 00147534  38 60 00 01 */	li r3, 1
lbl_801517B8:
/* 801517B8 00147538  39 61 00 30 */	addi r11, r1, 0x30
/* 801517BC 0014753C  48 29 FB A9 */	bl _restgpr_25
/* 801517C0 00147540  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801517C4 00147544  7C 08 03 A6 */	mtlr r0
/* 801517C8 00147548  38 21 00 30 */	addi r1, r1, 0x30
/* 801517CC 0014754C  4E 80 00 20 */	blr 

.global nteND$7download
nteND$7download:
/* 801517D0 00147550  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801517D4 00147554  7C 08 02 A6 */	mflr r0
/* 801517D8 00147558  90 01 00 34 */	stw r0, 0x34(r1)
/* 801517DC 0014755C  39 61 00 30 */	addi r11, r1, 0x30
/* 801517E0 00147560  48 29 FB 2D */	bl _savegpr_22
/* 801517E4 00147564  2C 04 00 00 */	cmpwi r4, 0
/* 801517E8 00147568  7C 7B 1B 78 */	mr r27, r3
/* 801517EC 0014756C  7C 9C 23 78 */	mr r28, r4
/* 801517F0 00147570  7C BD 2B 78 */	mr r29, r5
/* 801517F4 00147574  7C DE 33 78 */	mr r30, r6
/* 801517F8 00147578  7C FF 3B 78 */	mr r31, r7
/* 801517FC 0014757C  40 82 00 0C */	bne lbl_80151808
/* 80151800 00147580  38 60 00 00 */	li r3, 0
/* 80151804 00147584  48 00 00 E8 */	b lbl_801518EC
lbl_80151808:
/* 80151808 00147588  88 03 03 4E */	lbz r0, 0x34e(r3)
/* 8015180C 0014758C  2C 00 00 00 */	cmpwi r0, 0
/* 80151810 00147590  40 82 00 0C */	bne lbl_8015181C
/* 80151814 00147594  38 60 00 00 */	li r3, 0
/* 80151818 00147598  48 00 00 D4 */	b lbl_801518EC
lbl_8015181C:
/* 8015181C 0014759C  38 00 00 00 */	li r0, 0
/* 80151820 001475A0  3B 20 00 0F */	li r25, 0xf
/* 80151824 001475A4  7F 40 C9 D6 */	mullw r26, r0, r25
/* 80151828 001475A8  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 8015182C 001475AC  3F 00 80 00 */	lis r24, 0x8000
/* 80151830 001475B0  3A E3 4D D3 */	addi r23, r3, 0x10624DD3@l
/* 80151834 001475B4  48 00 00 24 */	b lbl_80151858
lbl_80151838:
/* 80151838 001475B8  80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 8015183C 001475BC  54 00 F0 BE */	srwi r0, r0, 2
/* 80151840 001475C0  7C 17 00 16 */	mulhwu r0, r23, r0
/* 80151844 001475C4  54 03 D1 BE */	srwi r3, r0, 6
/* 80151848 001475C8  7C 03 C8 16 */	mulhwu r0, r3, r25
/* 8015184C 001475CC  1C 83 00 0F */	mulli r4, r3, 0xf
/* 80151850 001475D0  7C 60 D2 14 */	add r3, r0, r26
/* 80151854 001475D4  48 09 02 2D */	bl OSSleepTicks
lbl_80151858:
/* 80151858 001475D8  80 1B 03 40 */	lwz r0, 0x340(r27)
/* 8015185C 001475DC  3A C0 00 00 */	li r22, 0
/* 80151860 001475E0  2C 00 00 00 */	cmpwi r0, 0
/* 80151864 001475E4  40 82 00 20 */	bne lbl_80151884
/* 80151868 001475E8  38 7B 00 08 */	addi r3, r27, 8
/* 8015186C 001475EC  48 08 EE B5 */	bl OSIsThreadSuspended
/* 80151870 001475F0  38 03 FF FF */	addi r0, r3, -1
/* 80151874 001475F4  7C 00 00 34 */	cntlzw r0, r0
/* 80151878 001475F8  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8015187C 001475FC  41 82 00 08 */	beq lbl_80151884
/* 80151880 00147600  3A C0 00 01 */	li r22, 1
lbl_80151884:
/* 80151884 00147604  2C 16 00 00 */	cmpwi r22, 0
/* 80151888 00147608  41 82 FF B0 */	beq lbl_80151838
/* 8015188C 0014760C  7F A3 EB 78 */	mr r3, r29
/* 80151890 00147610  7F C4 F3 78 */	mr r4, r30
/* 80151894 00147614  7F E5 FB 78 */	mr r5, r31
/* 80151898 00147618  48 20 48 0D */	bl DWC_NdSetAttr
/* 8015189C 0014761C  2C 03 00 00 */	cmpwi r3, 0
/* 801518A0 00147620  40 82 00 24 */	bne lbl_801518C4
/* 801518A4 00147624  3C 60 80 46 */	lis r3, lbl_80461304@ha
/* 801518A8 00147628  38 63 13 04 */	addi r3, r3, lbl_80461304@l
/* 801518AC 0014762C  4C C6 31 82 */	crclr 6
/* 801518B0 00147630  4B F7 5C 3D */	bl netReport
/* 801518B4 00147634  7F 63 DB 78 */	mr r3, r27
/* 801518B8 00147638  48 00 01 55 */	bl nteND$7_errorMonitor
/* 801518BC 0014763C  38 60 00 00 */	li r3, 0
/* 801518C0 00147640  48 00 00 2C */	b lbl_801518EC
lbl_801518C4:
/* 801518C4 00147644  38 80 00 00 */	li r4, 0
/* 801518C8 00147648  38 00 00 03 */	li r0, 3
/* 801518CC 0014764C  98 9B 03 4C */	stb r4, 0x34c(r27)
/* 801518D0 00147650  38 7B 00 08 */	addi r3, r27, 8
/* 801518D4 00147654  93 9B 03 50 */	stw r28, 0x350(r27)
/* 801518D8 00147658  90 1B 03 40 */	stw r0, 0x340(r27)
/* 801518DC 0014765C  90 9B 03 44 */	stw r4, 0x344(r27)
/* 801518E0 00147660  90 9B 03 48 */	stw r4, 0x348(r27)
/* 801518E4 00147664  48 08 FA 81 */	bl OSResumeThread
/* 801518E8 00147668  38 60 00 01 */	li r3, 1
lbl_801518EC:
/* 801518EC 0014766C  39 61 00 30 */	addi r11, r1, 0x30
/* 801518F0 00147670  48 29 FA 69 */	bl _restgpr_22
/* 801518F4 00147674  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801518F8 00147678  7C 08 03 A6 */	mtlr r0
/* 801518FC 0014767C  38 21 00 30 */	addi r1, r1, 0x30
/* 80151900 00147680  4E 80 00 20 */	blr 

.global nteND$7_processAsync
nteND$7_processAsync:
/* 80151904 00147684  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80151908 00147688  7C 08 02 A6 */	mflr r0
/* 8015190C 0014768C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80151910 00147690  39 61 00 30 */	addi r11, r1, 0x30
/* 80151914 00147694  48 29 FA 0D */	bl _savegpr_27
/* 80151918 00147698  38 00 00 00 */	li r0, 0
/* 8015191C 0014769C  3B C0 00 0F */	li r30, 0xf
/* 80151920 001476A0  7F E0 F1 D6 */	mullw r31, r0, r30
/* 80151924 001476A4  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 80151928 001476A8  7C 7B 1B 78 */	mr r27, r3
/* 8015192C 001476AC  3B 84 4D D3 */	addi r28, r4, 0x10624DD3@l
/* 80151930 001476B0  3F A0 80 00 */	lis r29, 0x8000
lbl_80151934:
/* 80151934 001476B4  48 20 45 C9 */	bl func_80355EFC
/* 80151938 001476B8  2C 03 00 02 */	cmpwi r3, 2
/* 8015193C 001476BC  41 82 00 38 */	beq lbl_80151974
/* 80151940 001476C0  40 80 00 14 */	bge lbl_80151954
/* 80151944 001476C4  2C 03 00 00 */	cmpwi r3, 0
/* 80151948 001476C8  41 82 00 1C */	beq lbl_80151964
/* 8015194C 001476CC  40 80 00 20 */	bge lbl_8015196C
/* 80151950 001476D0  48 00 00 74 */	b lbl_801519C4
lbl_80151954:
/* 80151954 001476D4  2C 03 00 04 */	cmpwi r3, 4
/* 80151958 001476D8  41 82 00 0C */	beq lbl_80151964
/* 8015195C 001476DC  40 80 00 68 */	bge lbl_801519C4
/* 80151960 001476E0  48 00 00 0C */	b lbl_8015196C
lbl_80151964:
/* 80151964 001476E4  38 60 00 00 */	li r3, 0
/* 80151968 001476E8  48 00 00 8C */	b lbl_801519F4
lbl_8015196C:
/* 8015196C 001476EC  38 60 00 01 */	li r3, 1
/* 80151970 001476F0  48 00 00 84 */	b lbl_801519F4
lbl_80151974:
/* 80151974 001476F4  80 1B 03 40 */	lwz r0, 0x340(r27)
/* 80151978 001476F8  2C 00 00 03 */	cmpwi r0, 3
/* 8015197C 001476FC  40 82 00 48 */	bne lbl_801519C4
/* 80151980 00147700  88 1B 03 4C */	lbz r0, 0x34c(r27)
/* 80151984 00147704  2C 00 00 00 */	cmpwi r0, 0
/* 80151988 00147708  41 82 00 18 */	beq lbl_801519A0
/* 8015198C 0014770C  48 20 4A 01 */	bl DWC_NdCancelAsync
/* 80151990 00147710  2C 03 00 00 */	cmpwi r3, 0
/* 80151994 00147714  40 82 00 30 */	bne lbl_801519C4
/* 80151998 00147718  38 60 00 00 */	li r3, 0
/* 8015199C 0014771C  48 00 00 58 */	b lbl_801519F4
lbl_801519A0:
/* 801519A0 00147720  38 61 00 0C */	addi r3, r1, 0xc
/* 801519A4 00147724  38 81 00 08 */	addi r4, r1, 8
/* 801519A8 00147728  48 20 4A 7D */	bl DWC_NdGetProgress
/* 801519AC 0014772C  2C 03 00 00 */	cmpwi r3, 0
/* 801519B0 00147730  41 82 00 14 */	beq lbl_801519C4
/* 801519B4 00147734  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801519B8 00147738  90 1B 03 44 */	stw r0, 0x344(r27)
/* 801519BC 0014773C  80 01 00 08 */	lwz r0, 8(r1)
/* 801519C0 00147740  90 1B 03 48 */	stw r0, 0x348(r27)
lbl_801519C4:
/* 801519C4 00147744  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 801519C8 00147748  54 00 F0 BE */	srwi r0, r0, 2
/* 801519CC 0014774C  7C 1C 00 16 */	mulhwu r0, r28, r0
/* 801519D0 00147750  54 03 D1 BE */	srwi r3, r0, 6
/* 801519D4 00147754  7C 03 F0 16 */	mulhwu r0, r3, r30
/* 801519D8 00147758  1C 83 00 0F */	mulli r4, r3, 0xf
/* 801519DC 0014775C  7C 60 FA 14 */	add r3, r0, r31
/* 801519E0 00147760  48 09 00 A1 */	bl OSSleepTicks
/* 801519E4 00147764  88 1B 03 4E */	lbz r0, 0x34e(r27)
/* 801519E8 00147768  2C 00 00 00 */	cmpwi r0, 0
/* 801519EC 0014776C  40 82 FF 48 */	bne lbl_80151934
/* 801519F0 00147770  38 60 00 00 */	li r3, 0
lbl_801519F4:
/* 801519F4 00147774  39 61 00 30 */	addi r11, r1, 0x30
/* 801519F8 00147778  48 29 F9 75 */	bl _restgpr_27
/* 801519FC 0014777C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80151A00 00147780  7C 08 03 A6 */	mtlr r0
/* 80151A04 00147784  38 21 00 30 */	addi r1, r1, 0x30
/* 80151A08 00147788  4E 80 00 20 */	blr 

.global nteND$7_errorMonitor
nteND$7_errorMonitor:
/* 80151A0C 0014778C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80151A10 00147790  7C 08 02 A6 */	mflr r0
/* 80151A14 00147794  38 A0 00 00 */	li r5, 0
/* 80151A18 00147798  90 01 00 24 */	stw r0, 0x24(r1)
/* 80151A1C 0014779C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80151A20 001477A0  7C 7F 1B 78 */	mr r31, r3
/* 80151A24 001477A4  88 03 03 58 */	lbz r0, 0x358(r3)
/* 80151A28 001477A8  2C 00 00 00 */	cmpwi r0, 0
/* 80151A2C 001477AC  41 82 00 50 */	beq lbl_80151A7C
/* 80151A30 001477B0  80 AD BF D0 */	lwz r5, lbl_805A03F0-_SDA_BASE_(r13)
/* 80151A34 001477B4  88 0D BF D8 */	lbz r0, lbl_805A03F8-_SDA_BASE_(r13)
/* 80151A38 001477B8  80 8D BF D4 */	lwz r4, lbl_805A03F4-_SDA_BASE_(r13)
/* 80151A3C 001477BC  7C A5 00 D0 */	neg r5, r5
/* 80151A40 001477C0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80151A44 001477C4  2C 00 00 00 */	cmpwi r0, 0
/* 80151A48 001477C8  80 AD BF CC */	lwz r5, lbl_805A03EC-_SDA_BASE_(r13)
/* 80151A4C 001477CC  90 81 00 08 */	stw r4, 8(r1)
/* 80151A50 001477D0  41 82 00 2C */	beq lbl_80151A7C
/* 80151A54 001477D4  38 00 00 00 */	li r0, 0
/* 80151A58 001477D8  3C 80 80 46 */	lis r4, lbl_8046134C@ha
/* 80151A5C 001477DC  98 0D BF D8 */	stb r0, lbl_805A03F8-_SDA_BASE_(r13)
/* 80151A60 001477E0  90 03 03 44 */	stw r0, 0x344(r3)
/* 80151A64 001477E4  90 03 03 48 */	stw r0, 0x348(r3)
/* 80151A68 001477E8  38 64 13 4C */	addi r3, r4, lbl_8046134C@l
/* 80151A6C 001477EC  4C C6 31 82 */	crclr 6
/* 80151A70 001477F0  4B F7 5A 7D */	bl netReport
/* 80151A74 001477F4  38 60 00 01 */	li r3, 1
/* 80151A78 001477F8  48 00 00 AC */	b lbl_80151B24
lbl_80151A7C:
/* 80151A7C 001477FC  2C 05 00 00 */	cmpwi r5, 0
/* 80151A80 00147800  40 82 00 14 */	bne lbl_80151A94
/* 80151A84 00147804  38 61 00 0C */	addi r3, r1, 0xc
/* 80151A88 00147808  38 81 00 08 */	addi r4, r1, 8
/* 80151A8C 0014780C  48 1E 36 D9 */	bl DWC_GetLastErrorEx
/* 80151A90 00147810  7C 65 1B 78 */	mr r5, r3
lbl_80151A94:
/* 80151A94 00147814  2C 05 00 00 */	cmpwi r5, 0
/* 80151A98 00147818  40 82 00 0C */	bne lbl_80151AA4
/* 80151A9C 0014781C  38 60 00 01 */	li r3, 1
/* 80151AA0 00147820  48 00 00 84 */	b lbl_80151B24
lbl_80151AA4:
/* 80151AA4 00147824  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80151AA8 00147828  2C 03 86 C0 */	cmpwi r3, -31040
/* 80151AAC 0014782C  40 82 00 2C */	bne lbl_80151AD8
/* 80151AB0 00147830  38 00 00 00 */	li r0, 0
/* 80151AB4 00147834  3C 60 80 46 */	lis r3, lbl_8046134C@ha
/* 80151AB8 00147838  90 1F 03 44 */	stw r0, 0x344(r31)
/* 80151ABC 0014783C  38 63 13 4C */	addi r3, r3, lbl_8046134C@l
/* 80151AC0 00147840  90 1F 03 48 */	stw r0, 0x348(r31)
/* 80151AC4 00147844  4C C6 31 82 */	crclr 6
/* 80151AC8 00147848  4B F7 5A 25 */	bl netReport
/* 80151ACC 0014784C  48 1E 37 51 */	bl DWC_ClearError
/* 80151AD0 00147850  38 60 00 01 */	li r3, 1
/* 80151AD4 00147854  48 00 00 50 */	b lbl_80151B24
lbl_80151AD8:
/* 80151AD8 00147858  80 1F 03 54 */	lwz r0, 0x354(r31)
/* 80151ADC 0014785C  2C 00 00 00 */	cmpwi r0, 0
/* 80151AE0 00147860  41 82 00 30 */	beq lbl_80151B10
/* 80151AE4 00147864  2C 03 00 00 */	cmpwi r3, 0
/* 80151AE8 00147868  40 80 00 0C */	bge lbl_80151AF4
/* 80151AEC 0014786C  7C 03 00 D0 */	neg r0, r3
/* 80151AF0 00147870  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80151AF4:
/* 80151AF4 00147874  80 7F 03 54 */	lwz r3, 0x354(r31)
/* 80151AF8 00147878  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80151AFC 0014787C  81 83 00 00 */	lwz r12, 0(r3)
/* 80151B00 00147880  80 A1 00 08 */	lwz r5, 8(r1)
/* 80151B04 00147884  81 8C 00 08 */	lwz r12, 8(r12)
/* 80151B08 00147888  7D 89 03 A6 */	mtctr r12
/* 80151B0C 0014788C  4E 80 04 21 */	bctrl 
lbl_80151B10:
/* 80151B10 00147890  88 1F 03 58 */	lbz r0, 0x358(r31)
/* 80151B14 00147894  2C 00 00 00 */	cmpwi r0, 0
/* 80151B18 00147898  40 82 00 08 */	bne lbl_80151B20
/* 80151B1C 0014789C  48 1E 37 01 */	bl DWC_ClearError
lbl_80151B20:
/* 80151B20 001478A0  38 60 00 00 */	li r3, 0
lbl_80151B24:
/* 80151B24 001478A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80151B28 001478A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80151B2C 001478AC  7C 08 03 A6 */	mtlr r0
/* 80151B30 001478B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80151B34 001478B4  4E 80 00 20 */	blr 


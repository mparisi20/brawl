.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d12AnmObjTexSrtCFUl$7TestExistence
nw4r3g3d12AnmObjTexSrtCFUl$7TestExistence:
/* 80199334 0018F0B4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80199338 0018F0B8  54 80 08 3C */	slwi r0, r4, 1
/* 8019933C 0018F0BC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80199340 0018F0C0  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 80199344 0018F0C4  7C 00 00 34 */	cntlzw r0, r0
/* 80199348 0018F0C8  54 03 D9 7E */	srwi r3, r0, 5
/* 8019934C 0018F0CC  4E 80 00 20 */	blr 

.global nw4r3g3d12AnmObjTexSrtFv$7Release
nw4r3g3d12AnmObjTexSrtFv$7Release:
/* 80199350 0018F0D0  3C 80 00 01 */	lis r4, 0x00008000@ha
/* 80199354 0018F0D4  38 E0 00 00 */	li r7, 0
/* 80199358 0018F0D8  38 A4 80 00 */	addi r5, r4, 0x00008000@l
/* 8019935C 0018F0DC  38 C0 00 00 */	li r6, 0
/* 80199360 0018F0E0  48 00 00 14 */	b lbl_80199374
lbl_80199364:
/* 80199364 0018F0E4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80199368 0018F0E8  38 E7 00 01 */	addi r7, r7, 1
/* 8019936C 0018F0EC  7C A4 33 2E */	sthx r5, r4, r6
/* 80199370 0018F0F0  38 C6 00 02 */	addi r6, r6, 2
lbl_80199374:
/* 80199374 0018F0F4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80199378 0018F0F8  7C 07 00 00 */	cmpw r7, r0
/* 8019937C 0018F0FC  41 80 FF E8 */	blt lbl_80199364
/* 80199380 0018F100  38 80 00 04 */	li r4, 4
/* 80199384 0018F104  38 A0 00 00 */	li r5, 0
/* 80199388 0018F108  48 00 46 D4 */	b nw4r3g3d6AnmObjFQ44nw4r3g3d6AnmObj$7SetAnmFlag

.global nw4r3g3d12AnmObjTexSrtFiPQ34nw4r3g$7Attach
nw4r3g3d12AnmObjTexSrtFiPQ34nw4r3g$7Attach:
/* 8019938C 0018F10C  38 60 00 00 */	li r3, 0
/* 80199390 0018F110  4E 80 00 20 */	blr 

.global nw4r3g3d12AnmObjTexSrtFi$7Detach
nw4r3g3d12AnmObjTexSrtFi$7Detach:
/* 80199394 0018F114  38 60 00 00 */	li r3, 0
/* 80199398 0018F118  4E 80 00 20 */	blr 

.global nw4r3g3d12AnmObjTexSrtFv$7DetachAll
nw4r3g3d12AnmObjTexSrtFv$7DetachAll:
/* 8019939C 0018F11C  4E 80 00 20 */	blr 

.global nw4r3g3d12AnmObjTexSrtFv$7__dt
nw4r3g3d12AnmObjTexSrtFv$7__dt:
/* 801993A0 0018F120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801993A4 0018F124  7C 08 02 A6 */	mflr r0
/* 801993A8 0018F128  2C 03 00 00 */	cmpwi r3, 0
/* 801993AC 0018F12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801993B0 0018F130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801993B4 0018F134  7C 7F 1B 78 */	mr r31, r3
/* 801993B8 0018F138  41 82 00 10 */	beq lbl_801993C8
/* 801993BC 0018F13C  41 82 00 0C */	beq lbl_801993C8
/* 801993C0 0018F140  38 80 00 00 */	li r4, 0
/* 801993C4 0018F144  48 00 44 C9 */	bl nw4r3g3d6G3dObjFv$7__dt
lbl_801993C8:
/* 801993C8 0018F148  7F E3 FB 78 */	mr r3, r31
/* 801993CC 0018F14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801993D0 0018F150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801993D4 0018F154  7C 08 03 A6 */	mtlr r0
/* 801993D8 0018F158  38 21 00 10 */	addi r1, r1, 0x10
/* 801993DC 0018F15C  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFP12MEMAl$7Construct
nw4r3g3d15AnmObjTexSrtResFP12MEMAl$7Construct:
/* 801993E0 0018F160  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801993E4 0018F164  7C 08 02 A6 */	mflr r0
/* 801993E8 0018F168  90 01 00 44 */	stw r0, 0x44(r1)
/* 801993EC 0018F16C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801993F0 0018F170  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801993F4 0018F174  39 61 00 30 */	addi r11, r1, 0x30
/* 801993F8 0018F178  48 25 7F 21 */	bl _savegpr_25
/* 801993FC 0018F17C  81 05 00 00 */	lwz r8, 0(r5)
/* 80199400 0018F180  7C 7D 1B 78 */	mr r29, r3
/* 80199404 0018F184  7C 99 23 78 */	mr r25, r4
/* 80199408 0018F188  7C BE 2B 78 */	mr r30, r5
/* 8019940C 0018F18C  2C 08 00 00 */	cmpwi r8, 0
/* 80199410 0018F190  7C FB 3B 78 */	mr r27, r7
/* 80199414 0018F194  41 82 00 10 */	beq lbl_80199424
/* 80199418 0018F198  80 06 00 00 */	lwz r0, 0(r6)
/* 8019941C 0018F19C  2C 00 00 00 */	cmpwi r0, 0
/* 80199420 0018F1A0  40 82 00 0C */	bne lbl_8019942C
lbl_80199424:
/* 80199424 0018F1A4  38 60 00 00 */	li r3, 0
/* 80199428 0018F1A8  48 00 01 88 */	b lbl_801995B0
lbl_8019942C:
/* 8019942C 0018F1AC  A3 E8 00 1E */	lhz r31, 0x1e(r8)
/* 80199430 0018F1B0  7C C3 33 78 */	mr r3, r6
/* 80199434 0018F1B4  4B FF 5F 61 */	bl nw4r3g3d6ResMdlCFv$7GetResMatNumEntries
/* 80199438 0018F1B8  7C 1B 00 D0 */	neg r0, r27
/* 8019943C 0018F1BC  7C 7C 1B 78 */	mr r28, r3
/* 80199440 0018F1C0  7C 04 DB 78 */	or r4, r0, r27
/* 80199444 0018F1C4  2C 19 00 00 */	cmpwi r25, 0
/* 80199448 0018F1C8  7C 84 FE 70 */	srawi r4, r4, 0x1f
/* 8019944C 0018F1CC  54 60 08 3C */	slwi r0, r3, 1
/* 80199450 0018F1D0  7F E3 20 38 */	and r3, r31, r4
/* 80199454 0018F1D4  1F 43 00 E8 */	mulli r26, r3, 0xe8
/* 80199458 0018F1D8  7C 7A 02 14 */	add r3, r26, r0
/* 8019945C 0018F1DC  38 83 00 34 */	addi r4, r3, 0x34
/* 80199460 0018F1E0  41 82 00 08 */	beq lbl_80199468
/* 80199464 0018F1E4  90 99 00 00 */	stw r4, 0(r25)
lbl_80199468:
/* 80199468 0018F1E8  2C 1D 00 00 */	cmpwi r29, 0
/* 8019946C 0018F1EC  40 82 00 0C */	bne lbl_80199478
/* 80199470 0018F1F0  38 60 00 00 */	li r3, 0
/* 80199474 0018F1F4  48 00 01 3C */	b lbl_801995B0
lbl_80199478:
/* 80199478 0018F1F8  7F A3 EB 78 */	mr r3, r29
/* 8019947C 0018F1FC  48 06 B9 E1 */	bl MEMAllocFromAllocator
/* 80199480 0018F200  2C 03 00 00 */	cmpwi r3, 0
/* 80199484 0018F204  7C 7F 1B 78 */	mr r31, r3
/* 80199488 0018F208  40 82 00 0C */	bne lbl_80199494
/* 8019948C 0018F20C  38 60 00 00 */	li r3, 0
/* 80199490 0018F210  48 00 01 20 */	b lbl_801995B0
lbl_80199494:
/* 80199494 0018F214  2C 1B 00 00 */	cmpwi r27, 0
/* 80199498 0018F218  41 82 00 0C */	beq lbl_801994A4
/* 8019949C 0018F21C  3B 63 00 34 */	addi r27, r3, 0x34
/* 801994A0 0018F220  48 00 00 08 */	b lbl_801994A8
lbl_801994A4:
/* 801994A4 0018F224  3B 60 00 00 */	li r27, 0
lbl_801994A8:
/* 801994A8 0018F228  2C 03 00 00 */	cmpwi r3, 0
/* 801994AC 0018F22C  7C 83 D2 14 */	add r4, r3, r26
/* 801994B0 0018F230  38 A4 00 34 */	addi r5, r4, 0x34
/* 801994B4 0018F234  41 82 00 F8 */	beq lbl_801995AC
/* 801994B8 0018F238  38 00 00 00 */	li r0, 0
/* 801994BC 0018F23C  3C 80 80 46 */	lis r4, lbl_80465E70@ha
/* 801994C0 0018F240  90 03 00 04 */	stw r0, 4(r3)
/* 801994C4 0018F244  38 84 5E 70 */	addi r4, r4, lbl_80465E70@l
/* 801994C8 0018F248  83 DE 00 00 */	lwz r30, 0(r30)
/* 801994CC 0018F24C  93 A3 00 08 */	stw r29, 8(r3)
/* 801994D0 0018F250  90 03 00 0C */	stw r0, 0xc(r3)
/* 801994D4 0018F254  90 83 00 00 */	stw r4, 0(r3)
/* 801994D8 0018F258  93 83 00 10 */	stw r28, 0x10(r3)
/* 801994DC 0018F25C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 801994E0 0018F260  7F E3 FB 78 */	mr r3, r31
/* 801994E4 0018F264  81 9F 00 00 */	lwz r12, 0(r31)
/* 801994E8 0018F268  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801994EC 0018F26C  7D 89 03 A6 */	mtctr r12
/* 801994F0 0018F270  4E 80 04 21 */	bctrl 
/* 801994F4 0018F274  A0 9E 00 1C */	lhz r4, 0x1c(r30)
/* 801994F8 0018F278  3C 00 43 30 */	lis r0, 0x4330
/* 801994FC 0018F27C  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 80199500 0018F280  3C 60 80 46 */	lis r3, lbl_80465E28@ha
/* 80199504 0018F284  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80199508 0018F288  C0 22 9F 68 */	lfs f1, lbl_805A3288-_SDA2_BASE_(r2)
/* 8019950C 0018F28C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80199510 0018F290  54 A5 10 3A */	slwi r5, r5, 2
/* 80199514 0018F294  C0 02 9F 6C */	lfs f0, lbl_805A328C-_SDA2_BASE_(r2)
/* 80199518 0018F298  38 8D 82 28 */	addi r4, r13, lbl_8059C648-_SDA_BASE_
/* 8019951C 0018F29C  90 01 00 08 */	stw r0, 8(r1)
/* 80199520 0018F2A0  38 63 5E 28 */	addi r3, r3, lbl_80465E28@l
/* 80199524 0018F2A4  C8 62 9F 70 */	lfd f3, lbl_805A3290-_SDA2_BASE_(r2)
/* 80199528 0018F2A8  2C 1B 00 00 */	cmpwi r27, 0
/* 8019952C 0018F2AC  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80199530 0018F2B0  C8 41 00 08 */	lfd f2, 8(r1)
/* 80199534 0018F2B4  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80199538 0018F2B8  EC 02 18 28 */	fsubs f0, f2, f3
/* 8019953C 0018F2BC  7C 04 28 2E */	lwzx r0, r4, r5
/* 80199540 0018F2C0  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80199544 0018F2C4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80199548 0018F2C8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8019954C 0018F2CC  90 7F 00 00 */	stw r3, 0(r31)
/* 80199550 0018F2D0  93 DF 00 2C */	stw r30, 0x2c(r31)
/* 80199554 0018F2D4  93 7F 00 30 */	stw r27, 0x30(r31)
/* 80199558 0018F2D8  41 82 00 54 */	beq lbl_801995AC
/* 8019955C 0018F2DC  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80199560 0018F2E0  3B 80 00 00 */	li r28, 0
/* 80199564 0018F2E4  3B 60 00 00 */	li r27, 0
/* 80199568 0018F2E8  48 00 00 38 */	b lbl_801995A0
lbl_8019956C:
/* 8019956C 0018F2EC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80199570 0018F2F0  7C 63 DA 2E */	lhzx r3, r3, r27
/* 80199574 0018F2F4  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 80199578 0018F2F8  40 82 00 20 */	bne lbl_80199598
/* 8019957C 0018F2FC  54 65 04 BE */	clrlwi r5, r3, 0x12
/* 80199580 0018F300  FC 20 F8 90 */	fmr f1, f31
/* 80199584 0018F304  1C 05 00 E8 */	mulli r0, r5, 0xe8
/* 80199588 0018F308  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8019958C 0018F30C  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80199590 0018F310  7C 84 02 14 */	add r4, r4, r0
/* 80199594 0018F314  4B FF A4 E1 */	bl nw4r3g3d12ResAnmTexSrtCFPQ34nw4r3g$7GetAnmResult
lbl_80199598:
/* 80199598 0018F318  3B 7B 00 02 */	addi r27, r27, 2
/* 8019959C 0018F31C  3B 9C 00 01 */	addi r28, r28, 1
lbl_801995A0:
/* 801995A0 0018F320  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 801995A4 0018F324  7C 1C 00 40 */	cmplw r28, r0
/* 801995A8 0018F328  41 80 FF C4 */	blt lbl_8019956C
lbl_801995AC:
/* 801995AC 0018F32C  7F E3 FB 78 */	mr r3, r31
lbl_801995B0:
/* 801995B0 0018F330  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801995B4 0018F334  39 61 00 30 */	addi r11, r1, 0x30
/* 801995B8 0018F338  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801995BC 0018F33C  48 25 7D A9 */	bl _restgpr_25
/* 801995C0 0018F340  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801995C4 0018F344  7C 08 03 A6 */	mtlr r0
/* 801995C8 0018F348  38 21 00 40 */	addi r1, r1, 0x40
/* 801995CC 0018F34C  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFf$7SetFrame
nw4r3g3d15AnmObjTexSrtResFf$7SetFrame:
/* 801995D0 0018F350  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801995D4 0018F354  7C 08 02 A6 */	mflr r0
/* 801995D8 0018F358  90 01 00 34 */	stw r0, 0x34(r1)
/* 801995DC 0018F35C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801995E0 0018F360  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801995E4 0018F364  FC 60 08 90 */	fmr f3, f1
/* 801995E8 0018F368  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801995EC 0018F36C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801995F0 0018F370  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801995F4 0018F374  7C 7D 1B 78 */	mr r29, r3
/* 801995F8 0018F378  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801995FC 0018F37C  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80199600 0018F380  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 80199604 0018F384  7D 89 03 A6 */	mtctr r12
/* 80199608 0018F388  4E 80 04 21 */	bctrl 
/* 8019960C 0018F38C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80199610 0018F390  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 80199614 0018F394  2C 00 00 00 */	cmpwi r0, 0
/* 80199618 0018F398  41 82 00 54 */	beq lbl_8019966C
/* 8019961C 0018F39C  FF E0 08 18 */	frsp f31, f1
/* 80199620 0018F3A0  3B E0 00 00 */	li r31, 0
/* 80199624 0018F3A4  3B C0 00 00 */	li r30, 0
/* 80199628 0018F3A8  48 00 00 38 */	b lbl_80199660
lbl_8019962C:
/* 8019962C 0018F3AC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80199630 0018F3B0  7C 63 F2 2E */	lhzx r3, r3, r30
/* 80199634 0018F3B4  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 80199638 0018F3B8  40 82 00 20 */	bne lbl_80199658
/* 8019963C 0018F3BC  54 65 04 BE */	clrlwi r5, r3, 0x12
/* 80199640 0018F3C0  FC 20 F8 90 */	fmr f1, f31
/* 80199644 0018F3C4  1C 05 00 E8 */	mulli r0, r5, 0xe8
/* 80199648 0018F3C8  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 8019964C 0018F3CC  38 7D 00 2C */	addi r3, r29, 0x2c
/* 80199650 0018F3D0  7C 84 02 14 */	add r4, r4, r0
/* 80199654 0018F3D4  4B FF A4 21 */	bl nw4r3g3d12ResAnmTexSrtCFPQ34nw4r3g$7GetAnmResult
lbl_80199658:
/* 80199658 0018F3D8  3B DE 00 02 */	addi r30, r30, 2
/* 8019965C 0018F3DC  3B FF 00 01 */	addi r31, r31, 1
lbl_80199660:
/* 80199660 0018F3E0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80199664 0018F3E4  7C 1F 00 40 */	cmplw r31, r0
/* 80199668 0018F3E8  41 80 FF C4 */	blt lbl_8019962C
lbl_8019966C:
/* 8019966C 0018F3EC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80199670 0018F3F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80199674 0018F3F4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80199678 0018F3F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8019967C 0018F3FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80199680 0018F400  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80199684 0018F404  7C 08 03 A6 */	mtlr r0
/* 80199688 0018F408  38 21 00 30 */	addi r1, r1, 0x30
/* 8019968C 0018F40C  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResCFv$7GetFrame
nw4r3g3d15AnmObjTexSrtResCFv$7GetFrame:
/* 80199690 0018F410  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80199694 0018F414  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFf$7SetUpdateRate
nw4r3g3d15AnmObjTexSrtResFf$7SetUpdateRate:
/* 80199698 0018F418  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8019969C 0018F41C  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResCFv$7GetUpdateRate
nw4r3g3d15AnmObjTexSrtResCFv$7GetUpdateRate:
/* 801996A0 0018F420  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 801996A4 0018F424  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFv$7UpdateFrame
nw4r3g3d15AnmObjTexSrtResFv$7UpdateFrame:
/* 801996A8 0018F428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801996AC 0018F42C  7C 08 02 A6 */	mflr r0
/* 801996B0 0018F430  90 01 00 34 */	stw r0, 0x34(r1)
/* 801996B4 0018F434  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801996B8 0018F438  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801996BC 0018F43C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801996C0 0018F440  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801996C4 0018F444  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801996C8 0018F448  7C 7D 1B 78 */	mr r29, r3
/* 801996CC 0018F44C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 801996D0 0018F450  C0 2D A4 C0 */	lfs f1, lbl_8059E8E0-_SDA_BASE_(r13)
/* 801996D4 0018F454  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 801996D8 0018F458  EC 62 00 72 */	fmuls f3, f2, f1
/* 801996DC 0018F45C  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801996E0 0018F460  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 801996E4 0018F464  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 801996E8 0018F468  EC 60 18 2A */	fadds f3, f0, f3
/* 801996EC 0018F46C  7D 89 03 A6 */	mtctr r12
/* 801996F0 0018F470  4E 80 04 21 */	bctrl 
/* 801996F4 0018F474  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 801996F8 0018F478  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 801996FC 0018F47C  2C 00 00 00 */	cmpwi r0, 0
/* 80199700 0018F480  41 82 00 54 */	beq lbl_80199754
/* 80199704 0018F484  FF E0 08 18 */	frsp f31, f1
/* 80199708 0018F488  3B E0 00 00 */	li r31, 0
/* 8019970C 0018F48C  3B C0 00 00 */	li r30, 0
/* 80199710 0018F490  48 00 00 38 */	b lbl_80199748
lbl_80199714:
/* 80199714 0018F494  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80199718 0018F498  7C 63 F2 2E */	lhzx r3, r3, r30
/* 8019971C 0018F49C  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 80199720 0018F4A0  40 82 00 20 */	bne lbl_80199740
/* 80199724 0018F4A4  54 65 04 BE */	clrlwi r5, r3, 0x12
/* 80199728 0018F4A8  FC 20 F8 90 */	fmr f1, f31
/* 8019972C 0018F4AC  1C 05 00 E8 */	mulli r0, r5, 0xe8
/* 80199730 0018F4B0  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 80199734 0018F4B4  38 7D 00 2C */	addi r3, r29, 0x2c
/* 80199738 0018F4B8  7C 84 02 14 */	add r4, r4, r0
/* 8019973C 0018F4BC  4B FF A3 39 */	bl nw4r3g3d12ResAnmTexSrtCFPQ34nw4r3g$7GetAnmResult
lbl_80199740:
/* 80199740 0018F4C0  3B DE 00 02 */	addi r30, r30, 2
/* 80199744 0018F4C4  3B FF 00 01 */	addi r31, r31, 1
lbl_80199748:
/* 80199748 0018F4C8  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8019974C 0018F4CC  7C 1F 00 40 */	cmplw r31, r0
/* 80199750 0018F4D0  41 80 FF C4 */	blt lbl_80199714
lbl_80199754:
/* 80199754 0018F4D4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80199758 0018F4D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019975C 0018F4DC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80199760 0018F4E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80199764 0018F4E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80199768 0018F4E8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8019976C 0018F4EC  7C 08 03 A6 */	mtlr r0
/* 80199770 0018F4F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80199774 0018F4F4  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFQ34nw4r3$7Bind
nw4r3g3d15AnmObjTexSrtResFQ34nw4r3$7Bind:
/* 80199778 0018F4F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019977C 0018F4FC  7C 08 02 A6 */	mflr r0
/* 80199780 0018F500  90 01 00 34 */	stw r0, 0x34(r1)
/* 80199784 0018F504  39 61 00 30 */	addi r11, r1, 0x30
/* 80199788 0018F508  48 25 7B 99 */	bl _savegpr_27
/* 8019978C 0018F50C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80199790 0018F510  7C 7B 1B 78 */	mr r27, r3
/* 80199794 0018F514  7C 9C 23 78 */	mr r28, r4
/* 80199798 0018F518  3B C0 00 00 */	li r30, 0
/* 8019979C 0018F51C  A3 E5 00 1E */	lhz r31, 0x1e(r5)
/* 801997A0 0018F520  3B A0 00 00 */	li r29, 0
/* 801997A4 0018F524  2C 1F 00 00 */	cmpwi r31, 0
/* 801997A8 0018F528  40 81 00 9C */	ble lbl_80199844
/* 801997AC 0018F52C  48 00 00 8C */	b lbl_80199838
lbl_801997B0:
/* 801997B0 0018F530  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 801997B4 0018F534  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801997B8 0018F538  2C 00 00 00 */	cmpwi r0, 0
/* 801997BC 0018F53C  41 82 00 0C */	beq lbl_801997C8
/* 801997C0 0018F540  7C 03 02 14 */	add r0, r3, r0
/* 801997C4 0018F544  48 00 00 08 */	b lbl_801997CC
lbl_801997C8:
/* 801997C8 0018F548  38 00 00 00 */	li r0, 0
lbl_801997CC:
/* 801997CC 0018F54C  2C 00 00 00 */	cmpwi r0, 0
/* 801997D0 0018F550  41 82 00 28 */	beq lbl_801997F8
/* 801997D4 0018F554  57 A3 23 36 */	rlwinm r3, r29, 4, 0xc, 0x1b
/* 801997D8 0018F558  7C 60 1A 14 */	add r3, r0, r3
/* 801997DC 0018F55C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801997E0 0018F560  2C 03 00 00 */	cmpwi r3, 0
/* 801997E4 0018F564  41 82 00 0C */	beq lbl_801997F0
/* 801997E8 0018F568  7C A0 1A 14 */	add r5, r0, r3
/* 801997EC 0018F56C  48 00 00 10 */	b lbl_801997FC
lbl_801997F0:
/* 801997F0 0018F570  38 A0 00 00 */	li r5, 0
/* 801997F4 0018F574  48 00 00 08 */	b lbl_801997FC
lbl_801997F8:
/* 801997F8 0018F578  38 A0 00 00 */	li r5, 0
lbl_801997FC:
/* 801997FC 0018F57C  80 05 00 00 */	lwz r0, 0(r5)
/* 80199800 0018F580  7F 83 E3 78 */	mr r3, r28
/* 80199804 0018F584  38 81 00 08 */	addi r4, r1, 8
/* 80199808 0018F588  7C A0 2A 14 */	add r5, r0, r5
/* 8019980C 0018F58C  38 05 FF FC */	addi r0, r5, -4
/* 80199810 0018F590  90 01 00 08 */	stw r0, 8(r1)
/* 80199814 0018F594  4B FF 5A 89 */	bl nw4r3g3d6ResMdlCFQ34nw4r3g3d7ResNa$7GetResMat
/* 80199818 0018F598  2C 03 00 00 */	cmpwi r3, 0
/* 8019981C 0018F59C  41 82 00 18 */	beq lbl_80199834
/* 80199820 0018F5A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80199824 0018F5A4  3B C0 00 01 */	li r30, 1
/* 80199828 0018F5A8  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8019982C 0018F5AC  54 00 08 3C */	slwi r0, r0, 1
/* 80199830 0018F5B0  7F A3 03 2E */	sthx r29, r3, r0
lbl_80199834:
/* 80199834 0018F5B4  3B BD 00 01 */	addi r29, r29, 1
lbl_80199838:
/* 80199838 0018F5B8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8019983C 0018F5BC  7C 00 F8 00 */	cmpw r0, r31
/* 80199840 0018F5C0  41 80 FF 70 */	blt lbl_801997B0
lbl_80199844:
/* 80199844 0018F5C4  7F 63 DB 78 */	mr r3, r27
/* 80199848 0018F5C8  38 80 00 04 */	li r4, 4
/* 8019984C 0018F5CC  38 A0 00 01 */	li r5, 1
/* 80199850 0018F5D0  48 00 42 0D */	bl nw4r3g3d6AnmObjFQ44nw4r3g3d6AnmObj$7SetAnmFlag
/* 80199854 0018F5D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80199858 0018F5D8  7F C3 F3 78 */	mr r3, r30
/* 8019985C 0018F5DC  48 25 7B 11 */	bl _restgpr_27
/* 80199860 0018F5E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80199864 0018F5E4  7C 08 03 A6 */	mtlr r0
/* 80199868 0018F5E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8019986C 0018F5EC  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFPQ34nw4r$7GetResult
nw4r3g3d15AnmObjTexSrtResFPQ34nw4r$7GetResult:
/* 80199870 0018F5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80199874 0018F5F4  7C 08 02 A6 */	mflr r0
/* 80199878 0018F5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019987C 0018F5FC  54 A0 08 3C */	slwi r0, r5, 1
/* 80199880 0018F600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80199884 0018F604  7C 9F 23 78 */	mr r31, r4
/* 80199888 0018F608  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8019988C 0018F60C  7C A6 02 2E */	lhzx r5, r6, r0
/* 80199890 0018F610  54 A0 04 23 */	rlwinm. r0, r5, 0, 0x10, 0x11
/* 80199894 0018F614  41 82 00 14 */	beq lbl_801998A8
/* 80199898 0018F618  38 00 00 00 */	li r0, 0
/* 8019989C 0018F61C  7F E3 FB 78 */	mr r3, r31
/* 801998A0 0018F620  90 04 00 00 */	stw r0, 0(r4)
/* 801998A4 0018F624  48 00 00 2C */	b lbl_801998D0
lbl_801998A8:
/* 801998A8 0018F628  80 C3 00 30 */	lwz r6, 0x30(r3)
/* 801998AC 0018F62C  2C 06 00 00 */	cmpwi r6, 0
/* 801998B0 0018F630  41 82 00 10 */	beq lbl_801998C0
/* 801998B4 0018F634  1C 05 00 E8 */	mulli r0, r5, 0xe8
/* 801998B8 0018F638  7C 66 02 14 */	add r3, r6, r0
/* 801998BC 0018F63C  48 00 00 14 */	b lbl_801998D0
lbl_801998C0:
/* 801998C0 0018F640  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 801998C4 0018F644  38 63 00 2C */	addi r3, r3, 0x2c
/* 801998C8 0018F648  4B FF A1 AD */	bl nw4r3g3d12ResAnmTexSrtCFPQ34nw4r3g$7GetAnmResult
/* 801998CC 0018F64C  7F E3 FB 78 */	mr r3, r31
lbl_801998D0:
/* 801998D0 0018F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801998D4 0018F654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801998D8 0018F658  7C 08 03 A6 */	mtlr r0
/* 801998DC 0018F65C  38 21 00 10 */	addi r1, r1, 0x10
/* 801998E0 0018F660  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFUlUlPv$7G3dProc
nw4r3g3d15AnmObjTexSrtResFUlUlPv$7G3dProc:
/* 801998E4 0018F664  3C A0 00 01 */	lis r5, 0x00010002@ha
/* 801998E8 0018F668  38 05 00 02 */	addi r0, r5, 0x00010002@l
/* 801998EC 0018F66C  7C 04 00 00 */	cmpw r4, r0
/* 801998F0 0018F670  41 82 00 40 */	beq lbl_80199930
/* 801998F4 0018F674  40 80 00 10 */	bge lbl_80199904
/* 801998F8 0018F678  2C 04 00 08 */	cmpwi r4, 8
/* 801998FC 0018F67C  41 82 00 18 */	beq lbl_80199914
/* 80199900 0018F680  4E 80 00 20 */	blr 
lbl_80199904:
/* 80199904 0018F684  38 05 00 04 */	addi r0, r5, 4
/* 80199908 0018F688  7C 04 00 00 */	cmpw r4, r0
/* 8019990C 0018F68C  4C 80 00 20 */	bgelr 
/* 80199910 0018F690  48 00 00 14 */	b lbl_80199924
lbl_80199914:
/* 80199914 0018F694  81 83 00 00 */	lwz r12, 0(r3)
/* 80199918 0018F698  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8019991C 0018F69C  7D 89 03 A6 */	mtctr r12
/* 80199920 0018F6A0  4E 80 04 20 */	bctr 
lbl_80199924:
/* 80199924 0018F6A4  38 00 00 00 */	li r0, 0
/* 80199928 0018F6A8  90 03 00 04 */	stw r0, 4(r3)
/* 8019992C 0018F6AC  4E 80 00 20 */	blr 
lbl_80199930:
/* 80199930 0018F6B0  90 C3 00 04 */	stw r6, 4(r3)
/* 80199934 0018F6B4  4E 80 00 20 */	blr 

.global nw4r3g3dFQ34nw4r3g3d9Res$7ApplyTexSrtAnmResult
nw4r3g3dFQ34nw4r3g3d9Res$7ApplyTexSrtAnmResult:
/* 80199938 0018F6B8  80 A3 00 00 */	lwz r5, 0(r3)
/* 8019993C 0018F6BC  7C 86 23 78 */	mr r6, r4
/* 80199940 0018F6C0  81 24 00 00 */	lwz r9, 0(r4)
/* 80199944 0018F6C4  39 40 00 0F */	li r10, 0xf
/* 80199948 0018F6C8  81 05 00 00 */	lwz r8, 0(r5)
/* 8019994C 0018F6CC  7C A7 2B 78 */	mr r7, r5
/* 80199950 0018F6D0  48 00 00 70 */	b lbl_801999C0
lbl_80199954:
/* 80199954 0018F6D4  55 00 07 FF */	clrlwi. r0, r8, 0x1f
/* 80199958 0018F6D8  41 82 00 54 */	beq lbl_801999AC
/* 8019995C 0018F6DC  55 20 07 FF */	clrlwi. r0, r9, 0x1f
/* 80199960 0018F6E0  41 82 00 4C */	beq lbl_801999AC
/* 80199964 0018F6E4  80 64 00 08 */	lwz r3, 8(r4)
/* 80199968 0018F6E8  80 04 00 00 */	lwz r0, 0(r4)
/* 8019996C 0018F6EC  90 65 00 04 */	stw r3, 4(r5)
/* 80199970 0018F6F0  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80199974 0018F6F4  7C 00 50 38 */	and r0, r0, r10
/* 80199978 0018F6F8  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 8019997C 0018F6FC  D0 07 00 08 */	stfs f0, 8(r7)
/* 80199980 0018F700  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 80199984 0018F704  D0 27 00 0C */	stfs f1, 0xc(r7)
/* 80199988 0018F708  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 8019998C 0018F70C  D0 07 00 10 */	stfs f0, 0x10(r7)
/* 80199990 0018F710  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 80199994 0018F714  D0 27 00 14 */	stfs f1, 0x14(r7)
/* 80199998 0018F718  D0 07 00 18 */	stfs f0, 0x18(r7)
/* 8019999C 0018F71C  80 65 00 00 */	lwz r3, 0(r5)
/* 801999A0 0018F720  7C 63 50 78 */	andc r3, r3, r10
/* 801999A4 0018F724  7C 60 03 78 */	or r0, r3, r0
/* 801999A8 0018F728  90 05 00 00 */	stw r0, 0(r5)
lbl_801999AC:
/* 801999AC 0018F72C  55 08 E1 3E */	srwi r8, r8, 4
/* 801999B0 0018F730  55 29 E1 3E */	srwi r9, r9, 4
/* 801999B4 0018F734  55 4A 20 36 */	slwi r10, r10, 4
/* 801999B8 0018F738  38 C6 00 14 */	addi r6, r6, 0x14
/* 801999BC 0018F73C  38 E7 00 14 */	addi r7, r7, 0x14
lbl_801999C0:
/* 801999C0 0018F740  2C 08 00 00 */	cmpwi r8, 0
/* 801999C4 0018F744  4D 82 00 20 */	beqlr 
/* 801999C8 0018F748  2C 09 00 00 */	cmpwi r9, 0
/* 801999CC 0018F74C  40 82 FF 88 */	bne lbl_80199954
/* 801999D0 0018F750  4E 80 00 20 */	blr 

.global nw4r3g3dFQ34nw4r3g3d9Res$7ApplyTexSrtAnmResult_5408
nw4r3g3dFQ34nw4r3g3d9Res$7ApplyTexSrtAnmResult_5408:
/* 801999D4 0018F754  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801999D8 0018F758  7C 08 02 A6 */	mflr r0
/* 801999DC 0018F75C  90 01 00 74 */	stw r0, 0x74(r1)
/* 801999E0 0018F760  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801999E4 0018F764  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801999E8 0018F768  39 61 00 60 */	addi r11, r1, 0x60
/* 801999EC 0018F76C  48 25 79 35 */	bl _savegpr_27
/* 801999F0 0018F770  80 03 00 00 */	lwz r0, 0(r3)
/* 801999F4 0018F774  7C BC 2B 78 */	mr r28, r5
/* 801999F8 0018F778  7C 9B 23 78 */	mr r27, r4
/* 801999FC 0018F77C  38 61 00 0C */	addi r3, r1, 0xc
/* 80199A00 0018F780  90 01 00 0C */	stw r0, 0xc(r1)
/* 80199A04 0018F784  7F 84 E3 78 */	mr r4, r28
/* 80199A08 0018F788  4B FF FF 31 */	bl nw4r3g3dFQ34nw4r3g3d9Res$7ApplyTexSrtAnmResult
/* 80199A0C 0018F78C  83 DC 00 04 */	lwz r30, 4(r28)
/* 80199A10 0018F790  3B FC 00 AC */	addi r31, r28, 0xac
/* 80199A14 0018F794  C3 E2 9F 78 */	lfs f31, lbl_805A3298-_SDA2_BASE_(r2)
/* 80199A18 0018F798  3B A0 00 08 */	li r29, 8
/* 80199A1C 0018F79C  48 00 01 40 */	b lbl_80199B5C
lbl_80199A20:
/* 80199A20 0018F7A0  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 80199A24 0018F7A4  41 82 01 2C */	beq lbl_80199B50
/* 80199A28 0018F7A8  7F E5 FB 78 */	mr r5, r31
/* 80199A2C 0018F7AC  38 61 00 10 */	addi r3, r1, 0x10
/* 80199A30 0018F7B0  57 C6 07 3E */	clrlwi r6, r30, 0x1c
/* 80199A34 0018F7B4  38 80 00 01 */	li r4, 1
/* 80199A38 0018F7B8  38 E0 00 00 */	li r7, 0
/* 80199A3C 0018F7BC  48 00 B2 CD */	bl nw4r3g3dFPQ34nw4r4math5M$7CalcTexMtx
/* 80199A40 0018F7C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80199A44 0018F7C4  FC 20 02 10 */	fabs f1, f0
/* 80199A48 0018F7C8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80199A4C 0018F7CC  40 80 00 08 */	bge lbl_80199A54
/* 80199A50 0018F7D0  48 00 00 08 */	b lbl_80199A58
lbl_80199A54:
/* 80199A54 0018F7D4  FC 20 F8 90 */	fmr f1, f31
lbl_80199A58:
/* 80199A58 0018F7D8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80199A5C 0018F7DC  FC 40 02 10 */	fabs f2, f0
/* 80199A60 0018F7E0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80199A64 0018F7E4  40 80 00 08 */	bge lbl_80199A6C
/* 80199A68 0018F7E8  48 00 00 08 */	b lbl_80199A70
lbl_80199A6C:
/* 80199A6C 0018F7EC  FC 40 08 90 */	fmr f2, f1
lbl_80199A70:
/* 80199A70 0018F7F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80199A74 0018F7F4  FC 20 02 10 */	fabs f1, f0
/* 80199A78 0018F7F8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80199A7C 0018F7FC  40 80 00 08 */	bge lbl_80199A84
/* 80199A80 0018F800  48 00 00 08 */	b lbl_80199A88
lbl_80199A84:
/* 80199A84 0018F804  FC 20 10 90 */	fmr f1, f2
lbl_80199A88:
/* 80199A88 0018F808  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80199A8C 0018F80C  FC 40 02 10 */	fabs f2, f0
/* 80199A90 0018F810  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80199A94 0018F814  40 80 00 08 */	bge lbl_80199A9C
/* 80199A98 0018F818  48 00 00 08 */	b lbl_80199AA0
lbl_80199A9C:
/* 80199A9C 0018F81C  FC 40 08 90 */	fmr f2, f1
lbl_80199AA0:
/* 80199AA0 0018F820  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80199AA4 0018F824  FC 20 02 10 */	fabs f1, f0
/* 80199AA8 0018F828  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80199AAC 0018F82C  40 80 00 08 */	bge lbl_80199AB4
/* 80199AB0 0018F830  48 00 00 08 */	b lbl_80199AB8
lbl_80199AB4:
/* 80199AB4 0018F834  FC 20 10 90 */	fmr f1, f2
lbl_80199AB8:
/* 80199AB8 0018F838  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80199ABC 0018F83C  FC 00 02 10 */	fabs f0, f0
/* 80199AC0 0018F840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80199AC4 0018F844  40 80 00 08 */	bge lbl_80199ACC
/* 80199AC8 0018F848  48 00 00 08 */	b lbl_80199AD0
lbl_80199ACC:
/* 80199ACC 0018F84C  FC 00 08 90 */	fmr f0, f1
lbl_80199AD0:
/* 80199AD0 0018F850  D0 01 00 08 */	stfs f0, 8(r1)
/* 80199AD4 0018F854  C8 22 9F 80 */	lfd f1, lbl_805A32A0-_SDA2_BASE_(r2)
/* 80199AD8 0018F858  80 01 00 08 */	lwz r0, 8(r1)
/* 80199ADC 0018F85C  54 03 4E 3E */	rlwinm r3, r0, 9, 0x18, 0x1f
/* 80199AE0 0018F860  38 03 FF 82 */	addi r0, r3, -126
/* 80199AE4 0018F864  7C 1C 07 74 */	extsb r28, r0
/* 80199AE8 0018F868  7C 7C 00 D0 */	neg r3, r28
/* 80199AEC 0018F86C  48 26 6C 8D */	bl ldexp
/* 80199AF0 0018F870  FC C0 08 18 */	frsp f6, f1
/* 80199AF4 0018F874  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80199AF8 0018F878  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80199AFC 0018F87C  7F 63 DB 78 */	mr r3, r27
/* 80199B00 0018F880  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80199B04 0018F884  7F 86 E3 78 */	mr r6, r28
/* 80199B08 0018F888  EC A1 01 B2 */	fmuls f5, f1, f6
/* 80199B0C 0018F88C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80199B10 0018F890  EC 80 01 B2 */	fmuls f4, f0, f6
/* 80199B14 0018F894  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80199B18 0018F898  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80199B1C 0018F89C  EC 63 01 B2 */	fmuls f3, f3, f6
/* 80199B20 0018F8A0  EC 42 01 B2 */	fmuls f2, f2, f6
/* 80199B24 0018F8A4  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80199B28 0018F8A8  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80199B2C 0018F8AC  38 9D FF F9 */	addi r4, r29, -7
/* 80199B30 0018F8B0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80199B34 0018F8B4  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80199B38 0018F8B8  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80199B3C 0018F8BC  38 A1 00 10 */	addi r5, r1, 0x10
/* 80199B40 0018F8C0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80199B44 0018F8C4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80199B48 0018F8C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80199B4C 0018F8CC  4B FF 7D E5 */	bl nw4r3g3d20ResMatIndMtxAndScaleF14_$7GXSetIndTexMtx
lbl_80199B50:
/* 80199B50 0018F8D0  57 DE E1 3E */	srwi r30, r30, 4
/* 80199B54 0018F8D4  3B FF 00 14 */	addi r31, r31, 0x14
/* 80199B58 0018F8D8  3B BD 00 01 */	addi r29, r29, 1
lbl_80199B5C:
/* 80199B5C 0018F8DC  2C 1E 00 00 */	cmpwi r30, 0
/* 80199B60 0018F8E0  40 82 FE C0 */	bne lbl_80199A20
/* 80199B64 0018F8E4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80199B68 0018F8E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80199B6C 0018F8EC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80199B70 0018F8F0  48 25 77 FD */	bl _restgpr_27
/* 80199B74 0018F8F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80199B78 0018F8F8  7C 08 03 A6 */	mtlr r0
/* 80199B7C 0018F8FC  38 21 00 70 */	addi r1, r1, 0x70
/* 80199B80 0018F900  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResCFQ44nw4r$7IsDerivedFrom
nw4r3g3d15AnmObjTexSrtResCFQ44nw4r$7IsDerivedFrom:
/* 80199B84 0018F904  3C 60 80 41 */	lis r3, lbl_8040A9B8@ha
/* 80199B88 0018F908  80 04 00 00 */	lwz r0, 0(r4)
/* 80199B8C 0018F90C  38 63 A9 B8 */	addi r3, r3, lbl_8040A9B8@l
/* 80199B90 0018F910  7C 00 18 40 */	cmplw r0, r3
/* 80199B94 0018F914  40 82 00 0C */	bne lbl_80199BA0
/* 80199B98 0018F918  38 60 00 01 */	li r3, 1
/* 80199B9C 0018F91C  4E 80 00 20 */	blr 
lbl_80199BA0:
/* 80199BA0 0018F920  3C 60 80 41 */	lis r3, lbl_8040A9A0@ha
/* 80199BA4 0018F924  80 04 00 00 */	lwz r0, 0(r4)
/* 80199BA8 0018F928  38 63 A9 A0 */	addi r3, r3, lbl_8040A9A0@l
/* 80199BAC 0018F92C  7C 00 18 40 */	cmplw r0, r3
/* 80199BB0 0018F930  40 82 00 0C */	bne lbl_80199BBC
/* 80199BB4 0018F934  38 60 00 01 */	li r3, 1
/* 80199BB8 0018F938  4E 80 00 20 */	blr 
lbl_80199BBC:
/* 80199BBC 0018F93C  3C 60 80 41 */	lis r3, lbl_8040AA78@ha
/* 80199BC0 0018F940  38 63 AA 78 */	addi r3, r3, lbl_8040AA78@l
/* 80199BC4 0018F944  7C 00 18 40 */	cmplw r0, r3
/* 80199BC8 0018F948  40 82 00 0C */	bne lbl_80199BD4
/* 80199BCC 0018F94C  38 60 00 01 */	li r3, 1
/* 80199BD0 0018F950  4E 80 00 20 */	blr 
lbl_80199BD4:
/* 80199BD4 0018F954  3C 60 80 41 */	lis r3, lbl_8040AA68@ha
/* 80199BD8 0018F958  38 63 AA 68 */	addi r3, r3, lbl_8040AA68@l
/* 80199BDC 0018F95C  7C 00 18 50 */	subf r0, r0, r3
/* 80199BE0 0018F960  7C 00 00 34 */	cntlzw r0, r0
/* 80199BE4 0018F964  54 03 D9 7E */	srwi r3, r0, 5
/* 80199BE8 0018F968  4E 80 00 20 */	blr 

.global nw4r3g3d12AnmObjTexSrtCFQ44nw4r3g3$7IsDerivedFrom
nw4r3g3d12AnmObjTexSrtCFQ44nw4r3g3$7IsDerivedFrom:
/* 80199BEC 0018F96C  3C 60 80 41 */	lis r3, lbl_8040A9A0@ha
/* 80199BF0 0018F970  80 04 00 00 */	lwz r0, 0(r4)
/* 80199BF4 0018F974  38 63 A9 A0 */	addi r3, r3, lbl_8040A9A0@l
/* 80199BF8 0018F978  7C 00 18 40 */	cmplw r0, r3
/* 80199BFC 0018F97C  40 82 00 0C */	bne lbl_80199C08
/* 80199C00 0018F980  38 60 00 01 */	li r3, 1
/* 80199C04 0018F984  4E 80 00 20 */	blr 
lbl_80199C08:
/* 80199C08 0018F988  3C 60 80 41 */	lis r3, lbl_8040AA78@ha
/* 80199C0C 0018F98C  80 04 00 00 */	lwz r0, 0(r4)
/* 80199C10 0018F990  38 63 AA 78 */	addi r3, r3, lbl_8040AA78@l
/* 80199C14 0018F994  7C 00 18 40 */	cmplw r0, r3
/* 80199C18 0018F998  40 82 00 0C */	bne lbl_80199C24
/* 80199C1C 0018F99C  38 60 00 01 */	li r3, 1
/* 80199C20 0018F9A0  4E 80 00 20 */	blr 
lbl_80199C24:
/* 80199C24 0018F9A4  3C 60 80 41 */	lis r3, lbl_8040AA68@ha
/* 80199C28 0018F9A8  38 63 AA 68 */	addi r3, r3, lbl_8040AA68@l
/* 80199C2C 0018F9AC  7C 00 18 50 */	subf r0, r0, r3
/* 80199C30 0018F9B0  7C 00 00 34 */	cntlzw r0, r0
/* 80199C34 0018F9B4  54 03 D9 7E */	srwi r3, r0, 5
/* 80199C38 0018F9B8  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResCFv$7GetTypeName
nw4r3g3d15AnmObjTexSrtResCFv$7GetTypeName:
/* 80199C3C 0018F9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80199C40 0018F9C0  7C 08 02 A6 */	mflr r0
/* 80199C44 0018F9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80199C48 0018F9C8  81 83 00 00 */	lwz r12, 0(r3)
/* 80199C4C 0018F9CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80199C50 0018F9D0  7D 89 03 A6 */	mtctr r12
/* 80199C54 0018F9D4  4E 80 04 21 */	bctrl 
/* 80199C58 0018F9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80199C5C 0018F9DC  38 63 00 04 */	addi r3, r3, 4
/* 80199C60 0018F9E0  7C 08 03 A6 */	mtlr r0
/* 80199C64 0018F9E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80199C68 0018F9E8  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResCFv$7GetTypeObj
nw4r3g3d15AnmObjTexSrtResCFv$7GetTypeObj:
/* 80199C6C 0018F9EC  3C 60 80 41 */	lis r3, lbl_8040A9B8@ha
/* 80199C70 0018F9F0  38 63 A9 B8 */	addi r3, r3, lbl_8040A9B8@l
/* 80199C74 0018F9F4  4E 80 00 20 */	blr 

.global nw4r3g3d15AnmObjTexSrtResFv$7__dt
nw4r3g3d15AnmObjTexSrtResFv$7__dt:
/* 80199C78 0018F9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80199C7C 0018F9FC  7C 08 02 A6 */	mflr r0
/* 80199C80 0018FA00  2C 03 00 00 */	cmpwi r3, 0
/* 80199C84 0018FA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80199C88 0018FA08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80199C8C 0018FA0C  7C 7F 1B 78 */	mr r31, r3
/* 80199C90 0018FA10  41 82 00 14 */	beq lbl_80199CA4
/* 80199C94 0018FA14  41 82 00 10 */	beq lbl_80199CA4
/* 80199C98 0018FA18  41 82 00 0C */	beq lbl_80199CA4
/* 80199C9C 0018FA1C  38 80 00 00 */	li r4, 0
/* 80199CA0 0018FA20  48 00 3B ED */	bl nw4r3g3d6G3dObjFv$7__dt
lbl_80199CA4:
/* 80199CA4 0018FA24  7F E3 FB 78 */	mr r3, r31
/* 80199CA8 0018FA28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80199CAC 0018FA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80199CB0 0018FA30  7C 08 03 A6 */	mtlr r0
/* 80199CB4 0018FA34  38 21 00 10 */	addi r1, r1, 0x10
/* 80199CB8 0018FA38  4E 80 00 20 */	blr 

.global nw4r3g3d12AnmObjTexSrtCFv$7GetTypeName
nw4r3g3d12AnmObjTexSrtCFv$7GetTypeName:
/* 80199CBC 0018FA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80199CC0 0018FA40  7C 08 02 A6 */	mflr r0
/* 80199CC4 0018FA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80199CC8 0018FA48  81 83 00 00 */	lwz r12, 0(r3)
/* 80199CCC 0018FA4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80199CD0 0018FA50  7D 89 03 A6 */	mtctr r12
/* 80199CD4 0018FA54  4E 80 04 21 */	bctrl 
/* 80199CD8 0018FA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80199CDC 0018FA5C  38 63 00 04 */	addi r3, r3, 4
/* 80199CE0 0018FA60  7C 08 03 A6 */	mtlr r0
/* 80199CE4 0018FA64  38 21 00 10 */	addi r1, r1, 0x10
/* 80199CE8 0018FA68  4E 80 00 20 */	blr 

.global nw4r3g3d12AnmObjTexSrtCFv$7GetTypeObj
nw4r3g3d12AnmObjTexSrtCFv$7GetTypeObj:
/* 80199CEC 0018FA6C  3C 60 80 41 */	lis r3, lbl_8040A9A0@ha
/* 80199CF0 0018FA70  38 63 A9 A0 */	addi r3, r3, lbl_8040A9A0@l
/* 80199CF4 0018FA74  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfMinigameHomerun$7initStepVersusResultAnim
IfMinigameHomerun$7initStepVersusResultAnim:
/* 800FF3C0 000F5140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FF3C4 000F5144  7C 08 02 A6 */	mflr r0
/* 800FF3C8 000F5148  38 80 00 00 */	li r4, 0
/* 800FF3CC 000F514C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FF3D0 000F5150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FF3D4 000F5154  7C 7F 1B 78 */	mr r31, r3
/* 800FF3D8 000F5158  C0 23 01 18 */	lfs f1, 0x118(r3)
/* 800FF3DC 000F515C  4B FF F8 F9 */	bl IfMinigameHomerun$7setDistanceWnd
/* 800FF3E0 000F5160  80 7F 00 04 */	lwz r3, 4(r31)
/* 800FF3E4 000F5164  38 80 00 01 */	li r4, 1
/* 800FF3E8 000F5168  38 A0 00 01 */	li r5, 1
/* 800FF3EC 000F516C  38 C0 00 01 */	li r6, 1
/* 800FF3F0 000F5170  38 E0 00 00 */	li r7, 0
/* 800FF3F4 000F5174  4B FB 64 61 */	bl MuObject$7setActionNo
/* 800FF3F8 000F5178  80 7F 00 00 */	lwz r3, 0(r31)
/* 800FF3FC 000F517C  80 9F 00 F0 */	lwz r4, 0xf0(r31)
/* 800FF400 000F5180  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF404 000F5184  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800FF408 000F5188  7D 89 03 A6 */	mtctr r12
/* 800FF40C 000F518C  4E 80 04 21 */	bctrl 
/* 800FF410 000F5190  80 7F 00 00 */	lwz r3, 0(r31)
/* 800FF414 000F5194  80 BF 00 F0 */	lwz r5, 0xf0(r31)
/* 800FF418 000F5198  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF41C 000F519C  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 800FF420 000F51A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800FF424 000F51A4  7D 89 03 A6 */	mtctr r12
/* 800FF428 000F51A8  4E 80 04 21 */	bctrl 
/* 800FF42C 000F51AC  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 800FF430 000F51B0  7F E3 FB 78 */	mr r3, r31
/* 800FF434 000F51B4  38 80 00 01 */	li r4, 1
/* 800FF438 000F51B8  4B FF F8 9D */	bl IfMinigameHomerun$7setDistanceWnd
/* 800FF43C 000F51BC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 800FF440 000F51C0  38 80 00 02 */	li r4, 2
/* 800FF444 000F51C4  38 A0 00 01 */	li r5, 1
/* 800FF448 000F51C8  38 C0 00 01 */	li r6, 1
/* 800FF44C 000F51CC  38 E0 00 00 */	li r7, 0
/* 800FF450 000F51D0  4B FB 64 05 */	bl MuObject$7setActionNo
/* 800FF454 000F51D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 800FF458 000F51D8  80 9F 00 F4 */	lwz r4, 0xf4(r31)
/* 800FF45C 000F51DC  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF460 000F51E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800FF464 000F51E4  7D 89 03 A6 */	mtctr r12
/* 800FF468 000F51E8  4E 80 04 21 */	bctrl 
/* 800FF46C 000F51EC  80 7F 00 00 */	lwz r3, 0(r31)
/* 800FF470 000F51F0  80 BF 00 F4 */	lwz r5, 0xf4(r31)
/* 800FF474 000F51F4  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF478 000F51F8  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 800FF47C 000F51FC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800FF480 000F5200  7D 89 03 A6 */	mtctr r12
/* 800FF484 000F5204  4E 80 04 21 */	bctrl 
/* 800FF488 000F5208  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 800FF48C 000F520C  7F E3 FB 78 */	mr r3, r31
/* 800FF490 000F5210  38 80 00 02 */	li r4, 2
/* 800FF494 000F5214  4B FF F8 41 */	bl IfMinigameHomerun$7setDistanceWnd
/* 800FF498 000F5218  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800FF49C 000F521C  38 80 00 03 */	li r4, 3
/* 800FF4A0 000F5220  38 A0 00 01 */	li r5, 1
/* 800FF4A4 000F5224  38 C0 00 01 */	li r6, 1
/* 800FF4A8 000F5228  38 E0 00 00 */	li r7, 0
/* 800FF4AC 000F522C  4B FB 63 A9 */	bl MuObject$7setActionNo
/* 800FF4B0 000F5230  80 7F 00 00 */	lwz r3, 0(r31)
/* 800FF4B4 000F5234  80 9F 00 F8 */	lwz r4, 0xf8(r31)
/* 800FF4B8 000F5238  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF4BC 000F523C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800FF4C0 000F5240  7D 89 03 A6 */	mtctr r12
/* 800FF4C4 000F5244  4E 80 04 21 */	bctrl 
/* 800FF4C8 000F5248  80 7F 00 00 */	lwz r3, 0(r31)
/* 800FF4CC 000F524C  80 BF 00 F8 */	lwz r5, 0xf8(r31)
/* 800FF4D0 000F5250  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF4D4 000F5254  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 800FF4D8 000F5258  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800FF4DC 000F525C  7D 89 03 A6 */	mtctr r12
/* 800FF4E0 000F5260  4E 80 04 21 */	bctrl 
/* 800FF4E4 000F5264  80 7F 00 00 */	lwz r3, 0(r31)
/* 800FF4E8 000F5268  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 800FF4EC 000F526C  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF4F0 000F5270  80 84 00 10 */	lwz r4, 0x10(r4)
/* 800FF4F4 000F5274  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800FF4F8 000F5278  7D 89 03 A6 */	mtctr r12
/* 800FF4FC 000F527C  4E 80 04 21 */	bctrl 
/* 800FF500 000F5280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FF504 000F5284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FF508 000F5288  7C 08 03 A6 */	mtlr r0
/* 800FF50C 000F528C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FF510 000F5290  4E 80 00 20 */	blr 

.global IfMinigameHomerun$7mainStepVersusResultAnim
IfMinigameHomerun$7mainStepVersusResultAnim:
/* 800FF514 000F5294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FF518 000F5298  7C 08 02 A6 */	mflr r0
/* 800FF51C 000F529C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FF520 000F52A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FF524 000F52A4  7C 7F 1B 78 */	mr r31, r3
/* 800FF528 000F52A8  80 63 00 04 */	lwz r3, 4(r3)
/* 800FF52C 000F52AC  4B FB 6C 95 */	bl MuObject$7isNodeAnimFinished
/* 800FF530 000F52B0  2C 03 00 00 */	cmpwi r3, 0
/* 800FF534 000F52B4  41 82 00 0C */	beq lbl_800FF540
/* 800FF538 000F52B8  38 60 00 03 */	li r3, 3
/* 800FF53C 000F52BC  48 00 00 08 */	b lbl_800FF544
lbl_800FF540:
/* 800FF540 000F52C0  80 7F 01 10 */	lwz r3, 0x110(r31)
lbl_800FF544:
/* 800FF544 000F52C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FF548 000F52C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FF54C 000F52CC  7C 08 03 A6 */	mtlr r0
/* 800FF550 000F52D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800FF554 000F52D4  4E 80 00 20 */	blr 

.global $2unnamed$2if_minigame_coin_shooter_cpp$224IfCoinShooterLabelSimpleFP18IfCoinShooterLabelQ218IfCoinS$7$7$7$7__ct
$2unnamed$2if_minigame_coin_shooter_cpp$224IfCoinShooterLabelSimpleFP18IfCoinShooterLabelQ218IfCoinS$7$7$7$7__ct:
/* 800FF558 000F52D8  94 21 F9 70 */	stwu r1, -0x690(r1)
/* 800FF55C 000F52DC  7C 08 02 A6 */	mflr r0
/* 800FF560 000F52E0  90 01 06 94 */	stw r0, 0x694(r1)
/* 800FF564 000F52E4  39 61 06 90 */	addi r11, r1, 0x690
/* 800FF568 000F52E8  48 2F 1D B9 */	bl _savegpr_27
/* 800FF56C 000F52EC  3B 80 00 00 */	li r28, 0
/* 800FF570 000F52F0  7C 7D 1B 78 */	mr r29, r3
/* 800FF574 000F52F4  93 83 00 08 */	stw r28, 8(r3)
/* 800FF578 000F52F8  3F E0 80 4A */	lis r31, lbl_8049E560@ha
/* 800FF57C 000F52FC  7C 9B 23 78 */	mr r27, r4
/* 800FF580 000F5300  7C BE 2B 78 */	mr r30, r5
/* 800FF584 000F5304  93 83 00 00 */	stw r28, 0(r3)
/* 800FF588 000F5308  7F A4 EB 78 */	mr r4, r29
/* 800FF58C 000F530C  93 83 00 04 */	stw r28, 4(r3)
/* 800FF590 000F5310  38 7F E5 60 */	addi r3, r31, lbl_8049E560@l
/* 800FF594 000F5314  4B F4 53 65 */	bl utList$7addTail
/* 800FF598 000F5318  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 800FF59C 000F531C  3C 80 80 46 */	lis r4, lbl_8045CC40@ha
/* 800FF5A0 000F5320  38 FF E5 60 */	addi r7, r31, -6816
/* 800FF5A4 000F5324  3C 60 80 46 */	lis r3, lbl_8045C8C4@ha
/* 800FF5A8 000F5328  54 00 01 3E */	clrlwi r0, r0, 4
/* 800FF5AC 000F532C  38 84 CC 40 */	addi r4, r4, lbl_8045CC40@l
/* 800FF5B0 000F5330  90 1D 00 10 */	stw r0, 0x10(r29)
/* 800FF5B4 000F5334  57 C0 10 3A */	slwi r0, r30, 2
/* 800FF5B8 000F5338  38 63 C8 C4 */	addi r3, r3, lbl_8045C8C4@l
/* 800FF5BC 000F533C  38 C0 00 00 */	li r6, 0
/* 800FF5C0 000F5340  88 BD 00 10 */	lbz r5, 0x10(r29)
/* 800FF5C4 000F5344  90 FD 00 08 */	stw r7, 8(r29)
/* 800FF5C8 000F5348  38 E0 00 2A */	li r7, 0x2a
/* 800FF5CC 000F534C  54 A5 07 76 */	rlwinm r5, r5, 0, 0x1d, 0x1b
/* 800FF5D0 000F5350  60 A5 00 04 */	ori r5, r5, 4
/* 800FF5D4 000F5354  93 7D 00 0C */	stw r27, 0xc(r29)
/* 800FF5D8 000F5358  98 BD 00 10 */	stb r5, 0x10(r29)
/* 800FF5DC 000F535C  90 9D 00 14 */	stw r4, 0x14(r29)
/* 800FF5E0 000F5360  93 9D 00 18 */	stw r28, 0x18(r29)
/* 800FF5E4 000F5364  93 DD 00 1C */	stw r30, 0x1c(r29)
/* 800FF5E8 000F5368  83 8D BE F0 */	lwz r28, lbl_805A0310-_SDA_BASE_(r13)
/* 800FF5EC 000F536C  7C 83 00 2E */	lwzx r4, r3, r0
/* 800FF5F0 000F5370  80 BC 01 BC */	lwz r5, 0x1bc(r28)
/* 800FF5F4 000F5374  38 7C 01 C8 */	addi r3, r28, 0x1c8
/* 800FF5F8 000F5378  4B FB 2D 9D */	bl MuObject$7create
/* 800FF5FC 000F537C  2C 03 00 00 */	cmpwi r3, 0
/* 800FF600 000F5380  7C 7F 1B 78 */	mr r31, r3
/* 800FF604 000F5384  41 82 00 20 */	beq lbl_800FF624
/* 800FF608 000F5388  80 7C 02 7C */	lwz r3, 0x27c(r28)
/* 800FF60C 000F538C  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 800FF610 000F5390  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF614 000F5394  80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 800FF618 000F5398  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800FF61C 000F539C  7D 89 03 A6 */	mtctr r12
/* 800FF620 000F53A0  4E 80 04 21 */	bctrl 
lbl_800FF624:
/* 800FF624 000F53A4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 800FF628 000F53A8  7C 03 F8 40 */	cmplw r3, r31
/* 800FF62C 000F53AC  41 82 00 24 */	beq lbl_800FF650
/* 800FF630 000F53B0  2C 03 00 00 */	cmpwi r3, 0
/* 800FF634 000F53B4  41 82 00 18 */	beq lbl_800FF64C
/* 800FF638 000F53B8  81 83 00 5C */	lwz r12, 0x5c(r3)
/* 800FF63C 000F53BC  38 80 00 01 */	li r4, 1
/* 800FF640 000F53C0  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FF644 000F53C4  7D 89 03 A6 */	mtctr r12
/* 800FF648 000F53C8  4E 80 04 21 */	bctrl 
lbl_800FF64C:
/* 800FF64C 000F53CC  93 FD 00 18 */	stw r31, 0x18(r29)
lbl_800FF650:
/* 800FF650 000F53D0  2C 1E 00 04 */	cmpwi r30, 4
/* 800FF654 000F53D4  40 80 00 18 */	bge lbl_800FF66C
/* 800FF658 000F53D8  2C 1E 00 02 */	cmpwi r30, 2
/* 800FF65C 000F53DC  40 80 04 2C */	bge lbl_800FFA88
/* 800FF660 000F53E0  2C 1E 00 00 */	cmpwi r30, 0
/* 800FF664 000F53E4  40 80 00 14 */	bge lbl_800FF678
/* 800FF668 000F53E8  48 00 05 F8 */	b lbl_800FFC60
lbl_800FF66C:
/* 800FF66C 000F53EC  2C 1E 00 06 */	cmpwi r30, 6
/* 800FF670 000F53F0  41 82 04 0C */	beq lbl_800FFA7C
/* 800FF674 000F53F4  48 00 05 EC */	b lbl_800FFC60
lbl_800FF678:
/* 800FF678 000F53F8  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 800FF67C 000F53FC  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FF680 000F5400  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800FF684 000F5404  2C 00 00 00 */	cmpwi r0, 0
/* 800FF688 000F5408  41 82 00 0C */	beq lbl_800FF694
/* 800FF68C 000F540C  7C 83 02 14 */	add r4, r3, r0
/* 800FF690 000F5410  48 00 00 08 */	b lbl_800FF698
lbl_800FF694:
/* 800FF694 000F5414  38 80 00 00 */	li r4, 0
lbl_800FF698:
/* 800FF698 000F5418  38 00 00 00 */	li r0, 0
/* 800FF69C 000F541C  38 61 06 24 */	addi r3, r1, 0x624
/* 800FF6A0 000F5420  98 01 06 24 */	stb r0, 0x624(r1)
/* 800FF6A4 000F5424  48 2F AC E1 */	bl strcat
/* 800FF6A8 000F5428  38 00 00 08 */	li r0, 8
/* 800FF6AC 000F542C  38 A1 05 DC */	addi r5, r1, 0x5dc
/* 800FF6B0 000F5430  38 81 06 20 */	addi r4, r1, 0x620
/* 800FF6B4 000F5434  7C 09 03 A6 */	mtctr r0
lbl_800FF6B8:
/* 800FF6B8 000F5438  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF6BC 000F543C  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF6C0 000F5440  90 65 00 04 */	stw r3, 4(r5)
/* 800FF6C4 000F5444  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF6C8 000F5448  42 00 FF F0 */	bdnz lbl_800FF6B8
/* 800FF6CC 000F544C  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF6D0 000F5450  38 61 05 E0 */	addi r3, r1, 0x5e0
/* 800FF6D4 000F5454  38 8D A0 64 */	addi r4, r13, lbl_8059E484-_SDA_BASE_
/* 800FF6D8 000F5458  98 05 00 04 */	stb r0, 4(r5)
/* 800FF6DC 000F545C  48 2F AC A9 */	bl strcat
/* 800FF6E0 000F5460  38 00 00 08 */	li r0, 8
/* 800FF6E4 000F5464  38 A1 05 98 */	addi r5, r1, 0x598
/* 800FF6E8 000F5468  38 81 05 DC */	addi r4, r1, 0x5dc
/* 800FF6EC 000F546C  7C 09 03 A6 */	mtctr r0
lbl_800FF6F0:
/* 800FF6F0 000F5470  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF6F4 000F5474  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF6F8 000F5478  90 65 00 04 */	stw r3, 4(r5)
/* 800FF6FC 000F547C  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF700 000F5480  42 00 FF F0 */	bdnz lbl_800FF6F0
/* 800FF704 000F5484  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF708 000F5488  38 61 05 9C */	addi r3, r1, 0x59c
/* 800FF70C 000F548C  98 05 00 04 */	stb r0, 4(r5)
/* 800FF710 000F5490  48 2F 0F 31 */	bl strlen
/* 800FF714 000F5494  38 01 05 9C */	addi r0, r1, 0x59c
/* 800FF718 000F5498  38 8D A0 60 */	addi r4, r13, lbl_8059E480-_SDA_BASE_
/* 800FF71C 000F549C  7C 60 1A 14 */	add r3, r0, r3
/* 800FF720 000F54A0  38 A0 00 00 */	li r5, 0
/* 800FF724 000F54A4  4C C6 31 82 */	crclr 6
/* 800FF728 000F54A8  48 2F 92 D5 */	bl sprintf
/* 800FF72C 000F54AC  38 00 00 08 */	li r0, 8
/* 800FF730 000F54B0  38 A1 05 54 */	addi r5, r1, 0x554
/* 800FF734 000F54B4  38 81 05 98 */	addi r4, r1, 0x598
/* 800FF738 000F54B8  7C 09 03 A6 */	mtctr r0
lbl_800FF73C:
/* 800FF73C 000F54BC  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF740 000F54C0  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF744 000F54C4  90 65 00 04 */	stw r3, 4(r5)
/* 800FF748 000F54C8  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF74C 000F54CC  42 00 FF F0 */	bdnz lbl_800FF73C
/* 800FF750 000F54D0  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF754 000F54D4  7F E3 FB 78 */	mr r3, r31
/* 800FF758 000F54D8  38 81 05 58 */	addi r4, r1, 0x558
/* 800FF75C 000F54DC  98 05 00 04 */	stb r0, 4(r5)
/* 800FF760 000F54E0  4B FB 4F 91 */	bl MuObject$7changeNodeAnimNIf
/* 800FF764 000F54E4  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 800FF768 000F54E8  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FF76C 000F54EC  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800FF770 000F54F0  2C 00 00 00 */	cmpwi r0, 0
/* 800FF774 000F54F4  41 82 00 0C */	beq lbl_800FF780
/* 800FF778 000F54F8  7C 83 02 14 */	add r4, r3, r0
/* 800FF77C 000F54FC  48 00 00 08 */	b lbl_800FF784
lbl_800FF780:
/* 800FF780 000F5500  38 80 00 00 */	li r4, 0
lbl_800FF784:
/* 800FF784 000F5504  38 00 00 00 */	li r0, 0
/* 800FF788 000F5508  38 61 05 14 */	addi r3, r1, 0x514
/* 800FF78C 000F550C  98 01 05 14 */	stb r0, 0x514(r1)
/* 800FF790 000F5510  48 2F AB F5 */	bl strcat
/* 800FF794 000F5514  38 00 00 08 */	li r0, 8
/* 800FF798 000F5518  38 A1 04 CC */	addi r5, r1, 0x4cc
/* 800FF79C 000F551C  38 81 05 10 */	addi r4, r1, 0x510
/* 800FF7A0 000F5520  7C 09 03 A6 */	mtctr r0
lbl_800FF7A4:
/* 800FF7A4 000F5524  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF7A8 000F5528  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF7AC 000F552C  90 65 00 04 */	stw r3, 4(r5)
/* 800FF7B0 000F5530  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF7B4 000F5534  42 00 FF F0 */	bdnz lbl_800FF7A4
/* 800FF7B8 000F5538  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF7BC 000F553C  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 800FF7C0 000F5540  38 8D A0 64 */	addi r4, r13, lbl_8059E484-_SDA_BASE_
/* 800FF7C4 000F5544  98 05 00 04 */	stb r0, 4(r5)
/* 800FF7C8 000F5548  48 2F AB BD */	bl strcat
/* 800FF7CC 000F554C  38 00 00 08 */	li r0, 8
/* 800FF7D0 000F5550  38 A1 04 88 */	addi r5, r1, 0x488
/* 800FF7D4 000F5554  38 81 04 CC */	addi r4, r1, 0x4cc
/* 800FF7D8 000F5558  7C 09 03 A6 */	mtctr r0
lbl_800FF7DC:
/* 800FF7DC 000F555C  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF7E0 000F5560  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF7E4 000F5564  90 65 00 04 */	stw r3, 4(r5)
/* 800FF7E8 000F5568  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF7EC 000F556C  42 00 FF F0 */	bdnz lbl_800FF7DC
/* 800FF7F0 000F5570  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF7F4 000F5574  38 61 04 8C */	addi r3, r1, 0x48c
/* 800FF7F8 000F5578  98 05 00 04 */	stb r0, 4(r5)
/* 800FF7FC 000F557C  48 2F 0E 45 */	bl strlen
/* 800FF800 000F5580  38 01 04 8C */	addi r0, r1, 0x48c
/* 800FF804 000F5584  38 8D A0 60 */	addi r4, r13, lbl_8059E480-_SDA_BASE_
/* 800FF808 000F5588  7C 60 1A 14 */	add r3, r0, r3
/* 800FF80C 000F558C  38 A0 00 00 */	li r5, 0
/* 800FF810 000F5590  4C C6 31 82 */	crclr 6
/* 800FF814 000F5594  48 2F 91 E9 */	bl sprintf
/* 800FF818 000F5598  38 00 00 08 */	li r0, 8
/* 800FF81C 000F559C  38 A1 04 44 */	addi r5, r1, 0x444
/* 800FF820 000F55A0  38 81 04 88 */	addi r4, r1, 0x488
/* 800FF824 000F55A4  7C 09 03 A6 */	mtctr r0
lbl_800FF828:
/* 800FF828 000F55A8  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF82C 000F55AC  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF830 000F55B0  90 65 00 04 */	stw r3, 4(r5)
/* 800FF834 000F55B4  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF838 000F55B8  42 00 FF F0 */	bdnz lbl_800FF828
/* 800FF83C 000F55BC  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF840 000F55C0  7F E3 FB 78 */	mr r3, r31
/* 800FF844 000F55C4  38 81 04 48 */	addi r4, r1, 0x448
/* 800FF848 000F55C8  98 05 00 04 */	stb r0, 4(r5)
/* 800FF84C 000F55CC  4B FB 59 A9 */	bl MuObject$7changeClrAnimNIf
/* 800FF850 000F55D0  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 800FF854 000F55D4  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FF858 000F55D8  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800FF85C 000F55DC  2C 00 00 00 */	cmpwi r0, 0
/* 800FF860 000F55E0  41 82 00 0C */	beq lbl_800FF86C
/* 800FF864 000F55E4  7C 83 02 14 */	add r4, r3, r0
/* 800FF868 000F55E8  48 00 00 08 */	b lbl_800FF870
lbl_800FF86C:
/* 800FF86C 000F55EC  38 80 00 00 */	li r4, 0
lbl_800FF870:
/* 800FF870 000F55F0  38 00 00 00 */	li r0, 0
/* 800FF874 000F55F4  38 61 04 04 */	addi r3, r1, 0x404
/* 800FF878 000F55F8  98 01 04 04 */	stb r0, 0x404(r1)
/* 800FF87C 000F55FC  48 2F AB 09 */	bl strcat
/* 800FF880 000F5600  38 00 00 08 */	li r0, 8
/* 800FF884 000F5604  38 A1 03 BC */	addi r5, r1, 0x3bc
/* 800FF888 000F5608  38 81 04 00 */	addi r4, r1, 0x400
/* 800FF88C 000F560C  7C 09 03 A6 */	mtctr r0
lbl_800FF890:
/* 800FF890 000F5610  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF894 000F5614  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF898 000F5618  90 65 00 04 */	stw r3, 4(r5)
/* 800FF89C 000F561C  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF8A0 000F5620  42 00 FF F0 */	bdnz lbl_800FF890
/* 800FF8A4 000F5624  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF8A8 000F5628  38 61 03 C0 */	addi r3, r1, 0x3c0
/* 800FF8AC 000F562C  38 8D A0 64 */	addi r4, r13, lbl_8059E484-_SDA_BASE_
/* 800FF8B0 000F5630  98 05 00 04 */	stb r0, 4(r5)
/* 800FF8B4 000F5634  48 2F AA D1 */	bl strcat
/* 800FF8B8 000F5638  38 00 00 08 */	li r0, 8
/* 800FF8BC 000F563C  38 A1 03 78 */	addi r5, r1, 0x378
/* 800FF8C0 000F5640  38 81 03 BC */	addi r4, r1, 0x3bc
/* 800FF8C4 000F5644  7C 09 03 A6 */	mtctr r0
lbl_800FF8C8:
/* 800FF8C8 000F5648  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF8CC 000F564C  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF8D0 000F5650  90 65 00 04 */	stw r3, 4(r5)
/* 800FF8D4 000F5654  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF8D8 000F5658  42 00 FF F0 */	bdnz lbl_800FF8C8
/* 800FF8DC 000F565C  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF8E0 000F5660  38 61 03 7C */	addi r3, r1, 0x37c
/* 800FF8E4 000F5664  98 05 00 04 */	stb r0, 4(r5)
/* 800FF8E8 000F5668  48 2F 0D 59 */	bl strlen
/* 800FF8EC 000F566C  38 01 03 7C */	addi r0, r1, 0x37c
/* 800FF8F0 000F5670  38 8D A0 60 */	addi r4, r13, lbl_8059E480-_SDA_BASE_
/* 800FF8F4 000F5674  7C 60 1A 14 */	add r3, r0, r3
/* 800FF8F8 000F5678  38 A0 00 00 */	li r5, 0
/* 800FF8FC 000F567C  4C C6 31 82 */	crclr 6
/* 800FF900 000F5680  48 2F 90 FD */	bl sprintf
/* 800FF904 000F5684  38 00 00 08 */	li r0, 8
/* 800FF908 000F5688  38 A1 03 34 */	addi r5, r1, 0x334
/* 800FF90C 000F568C  38 81 03 78 */	addi r4, r1, 0x378
/* 800FF910 000F5690  7C 09 03 A6 */	mtctr r0
lbl_800FF914:
/* 800FF914 000F5694  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF918 000F5698  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF91C 000F569C  90 65 00 04 */	stw r3, 4(r5)
/* 800FF920 000F56A0  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF924 000F56A4  42 00 FF F0 */	bdnz lbl_800FF914
/* 800FF928 000F56A8  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF92C 000F56AC  7F E3 FB 78 */	mr r3, r31
/* 800FF930 000F56B0  38 81 03 38 */	addi r4, r1, 0x338
/* 800FF934 000F56B4  98 05 00 04 */	stb r0, 4(r5)
/* 800FF938 000F56B8  4B FB 56 61 */	bl MuObject$7changeTexSrtAnimNIf
/* 800FF93C 000F56BC  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 800FF940 000F56C0  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FF944 000F56C4  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800FF948 000F56C8  2C 00 00 00 */	cmpwi r0, 0
/* 800FF94C 000F56CC  41 82 00 0C */	beq lbl_800FF958
/* 800FF950 000F56D0  7C 83 02 14 */	add r4, r3, r0
/* 800FF954 000F56D4  48 00 00 08 */	b lbl_800FF95C
lbl_800FF958:
/* 800FF958 000F56D8  38 80 00 00 */	li r4, 0
lbl_800FF95C:
/* 800FF95C 000F56DC  38 00 00 00 */	li r0, 0
/* 800FF960 000F56E0  38 61 02 F4 */	addi r3, r1, 0x2f4
/* 800FF964 000F56E4  98 01 02 F4 */	stb r0, 0x2f4(r1)
/* 800FF968 000F56E8  48 2F AA 1D */	bl strcat
/* 800FF96C 000F56EC  38 00 00 08 */	li r0, 8
/* 800FF970 000F56F0  38 A1 02 AC */	addi r5, r1, 0x2ac
/* 800FF974 000F56F4  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 800FF978 000F56F8  7C 09 03 A6 */	mtctr r0
lbl_800FF97C:
/* 800FF97C 000F56FC  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF980 000F5700  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF984 000F5704  90 65 00 04 */	stw r3, 4(r5)
/* 800FF988 000F5708  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF98C 000F570C  42 00 FF F0 */	bdnz lbl_800FF97C
/* 800FF990 000F5710  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF994 000F5714  38 61 02 B0 */	addi r3, r1, 0x2b0
/* 800FF998 000F5718  38 8D A0 64 */	addi r4, r13, lbl_8059E484-_SDA_BASE_
/* 800FF99C 000F571C  98 05 00 04 */	stb r0, 4(r5)
/* 800FF9A0 000F5720  48 2F A9 E5 */	bl strcat
/* 800FF9A4 000F5724  38 00 00 08 */	li r0, 8
/* 800FF9A8 000F5728  38 A1 02 68 */	addi r5, r1, 0x268
/* 800FF9AC 000F572C  38 81 02 AC */	addi r4, r1, 0x2ac
/* 800FF9B0 000F5730  7C 09 03 A6 */	mtctr r0
lbl_800FF9B4:
/* 800FF9B4 000F5734  80 64 00 04 */	lwz r3, 4(r4)
/* 800FF9B8 000F5738  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FF9BC 000F573C  90 65 00 04 */	stw r3, 4(r5)
/* 800FF9C0 000F5740  94 05 00 08 */	stwu r0, 8(r5)
/* 800FF9C4 000F5744  42 00 FF F0 */	bdnz lbl_800FF9B4
/* 800FF9C8 000F5748  88 04 00 04 */	lbz r0, 4(r4)
/* 800FF9CC 000F574C  38 61 02 6C */	addi r3, r1, 0x26c
/* 800FF9D0 000F5750  98 05 00 04 */	stb r0, 4(r5)
/* 800FF9D4 000F5754  48 2F 0C 6D */	bl strlen
/* 800FF9D8 000F5758  38 01 02 6C */	addi r0, r1, 0x26c
/* 800FF9DC 000F575C  38 8D A0 60 */	addi r4, r13, lbl_8059E480-_SDA_BASE_
/* 800FF9E0 000F5760  7C 60 1A 14 */	add r3, r0, r3
/* 800FF9E4 000F5764  38 A0 00 00 */	li r5, 0
/* 800FF9E8 000F5768  4C C6 31 82 */	crclr 6
/* 800FF9EC 000F576C  48 2F 90 11 */	bl sprintf
/* 800FF9F0 000F5770  38 00 00 08 */	li r0, 8
/* 800FF9F4 000F5774  38 A1 02 24 */	addi r5, r1, 0x224
/* 800FF9F8 000F5778  38 81 02 68 */	addi r4, r1, 0x268
/* 800FF9FC 000F577C  7C 09 03 A6 */	mtctr r0
lbl_800FFA00:
/* 800FFA00 000F5780  80 64 00 04 */	lwz r3, 4(r4)
/* 800FFA04 000F5784  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FFA08 000F5788  90 65 00 04 */	stw r3, 4(r5)
/* 800FFA0C 000F578C  94 05 00 08 */	stwu r0, 8(r5)
/* 800FFA10 000F5790  42 00 FF F0 */	bdnz lbl_800FFA00
/* 800FFA14 000F5794  88 04 00 04 */	lbz r0, 4(r4)
/* 800FFA18 000F5798  7F E3 FB 78 */	mr r3, r31
/* 800FFA1C 000F579C  38 81 02 28 */	addi r4, r1, 0x228
/* 800FFA20 000F57A0  98 05 00 04 */	stb r0, 4(r5)
/* 800FFA24 000F57A4  4B FB 4F 65 */	bl MuObject$7changeVisAnimNIf
/* 800FFA28 000F57A8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 800FFA2C 000F57AC  C0 22 94 50 */	lfs f1, lbl_805A2770-_SDA2_BASE_(r2)
/* 800FFA30 000F57B0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800FFA34 000F57B4  80 63 00 08 */	lwz r3, 8(r3)
/* 800FFA38 000F57B8  81 83 00 00 */	lwz r12, 0(r3)
/* 800FFA3C 000F57BC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800FFA40 000F57C0  7D 89 03 A6 */	mtctr r12
/* 800FFA44 000F57C4  4E 80 04 21 */	bctrl 
/* 800FFA48 000F57C8  7C 7E 00 D0 */	neg r3, r30
/* 800FFA4C 000F57CC  3C 00 43 30 */	lis r0, 0x4330
/* 800FFA50 000F57D0  7C 63 F3 78 */	or r3, r3, r30
/* 800FFA54 000F57D4  90 01 06 68 */	stw r0, 0x668(r1)
/* 800FFA58 000F57D8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 800FFA5C 000F57DC  C8 22 94 58 */	lfd f1, lbl_805A2778-_SDA2_BASE_(r2)
/* 800FFA60 000F57E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800FFA64 000F57E4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 800FFA68 000F57E8  90 01 06 6C */	stw r0, 0x66c(r1)
/* 800FFA6C 000F57EC  C8 01 06 68 */	lfd f0, 0x668(r1)
/* 800FFA70 000F57F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 800FFA74 000F57F4  4B FB 7D D9 */	bl MuObject$7setFrameVisible
/* 800FFA78 000F57F8  48 00 01 E8 */	b lbl_800FFC60
lbl_800FFA7C:
/* 800FFA7C 000F57FC  80 6D BE F0 */	lwz r3, lbl_805A0310-_SDA_BASE_(r13)
/* 800FFA80 000F5800  38 00 00 01 */	li r0, 1
/* 800FFA84 000F5804  98 03 01 C4 */	stb r0, 0x1c4(r3)
lbl_800FFA88:
/* 800FFA88 000F5808  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 800FFA8C 000F580C  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FFA90 000F5810  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800FFA94 000F5814  2C 00 00 00 */	cmpwi r0, 0
/* 800FFA98 000F5818  41 82 00 0C */	beq lbl_800FFAA4
/* 800FFA9C 000F581C  7C 83 02 14 */	add r4, r3, r0
/* 800FFAA0 000F5820  48 00 00 08 */	b lbl_800FFAA8
lbl_800FFAA4:
/* 800FFAA4 000F5824  38 80 00 00 */	li r4, 0
lbl_800FFAA8:
/* 800FFAA8 000F5828  38 00 00 00 */	li r0, 0
/* 800FFAAC 000F582C  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 800FFAB0 000F5830  98 01 01 E4 */	stb r0, 0x1e4(r1)
/* 800FFAB4 000F5834  48 2F A8 D1 */	bl strcat
/* 800FFAB8 000F5838  38 00 00 08 */	li r0, 8
/* 800FFABC 000F583C  38 A1 01 9C */	addi r5, r1, 0x19c
/* 800FFAC0 000F5840  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 800FFAC4 000F5844  7C 09 03 A6 */	mtctr r0
lbl_800FFAC8:
/* 800FFAC8 000F5848  80 64 00 04 */	lwz r3, 4(r4)
/* 800FFACC 000F584C  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FFAD0 000F5850  90 65 00 04 */	stw r3, 4(r5)
/* 800FFAD4 000F5854  94 05 00 08 */	stwu r0, 8(r5)
/* 800FFAD8 000F5858  42 00 FF F0 */	bdnz lbl_800FFAC8
/* 800FFADC 000F585C  88 04 00 04 */	lbz r0, 4(r4)
/* 800FFAE0 000F5860  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 800FFAE4 000F5864  38 8D A0 64 */	addi r4, r13, lbl_8059E484-_SDA_BASE_
/* 800FFAE8 000F5868  98 05 00 04 */	stb r0, 4(r5)
/* 800FFAEC 000F586C  48 2F A8 99 */	bl strcat
/* 800FFAF0 000F5870  38 00 00 08 */	li r0, 8
/* 800FFAF4 000F5874  38 A1 01 58 */	addi r5, r1, 0x158
/* 800FFAF8 000F5878  38 81 01 9C */	addi r4, r1, 0x19c
/* 800FFAFC 000F587C  7C 09 03 A6 */	mtctr r0
lbl_800FFB00:
/* 800FFB00 000F5880  80 64 00 04 */	lwz r3, 4(r4)
/* 800FFB04 000F5884  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FFB08 000F5888  90 65 00 04 */	stw r3, 4(r5)
/* 800FFB0C 000F588C  94 05 00 08 */	stwu r0, 8(r5)
/* 800FFB10 000F5890  42 00 FF F0 */	bdnz lbl_800FFB00
/* 800FFB14 000F5894  88 04 00 04 */	lbz r0, 4(r4)
/* 800FFB18 000F5898  38 61 01 5C */	addi r3, r1, 0x15c
/* 800FFB1C 000F589C  98 05 00 04 */	stb r0, 4(r5)
/* 800FFB20 000F58A0  48 2F 0B 21 */	bl strlen
/* 800FFB24 000F58A4  38 01 01 5C */	addi r0, r1, 0x15c
/* 800FFB28 000F58A8  38 8D A0 60 */	addi r4, r13, lbl_8059E480-_SDA_BASE_
/* 800FFB2C 000F58AC  7C 60 1A 14 */	add r3, r0, r3
/* 800FFB30 000F58B0  38 A0 00 00 */	li r5, 0
/* 800FFB34 000F58B4  4C C6 31 82 */	crclr 6
/* 800FFB38 000F58B8  48 2F 8E C5 */	bl sprintf
/* 800FFB3C 000F58BC  38 00 00 08 */	li r0, 8
/* 800FFB40 000F58C0  38 A1 01 14 */	addi r5, r1, 0x114
/* 800FFB44 000F58C4  38 81 01 58 */	addi r4, r1, 0x158
/* 800FFB48 000F58C8  7C 09 03 A6 */	mtctr r0
lbl_800FFB4C:
/* 800FFB4C 000F58CC  80 64 00 04 */	lwz r3, 4(r4)
/* 800FFB50 000F58D0  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FFB54 000F58D4  90 65 00 04 */	stw r3, 4(r5)
/* 800FFB58 000F58D8  94 05 00 08 */	stwu r0, 8(r5)
/* 800FFB5C 000F58DC  42 00 FF F0 */	bdnz lbl_800FFB4C
/* 800FFB60 000F58E0  88 04 00 04 */	lbz r0, 4(r4)
/* 800FFB64 000F58E4  7F E3 FB 78 */	mr r3, r31
/* 800FFB68 000F58E8  38 81 01 18 */	addi r4, r1, 0x118
/* 800FFB6C 000F58EC  98 05 00 04 */	stb r0, 4(r5)
/* 800FFB70 000F58F0  4B FB 4B 81 */	bl MuObject$7changeNodeAnimNIf
/* 800FFB74 000F58F4  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 800FFB78 000F58F8  80 7F 00 08 */	lwz r3, 8(r31)
/* 800FFB7C 000F58FC  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800FFB80 000F5900  2C 00 00 00 */	cmpwi r0, 0
/* 800FFB84 000F5904  41 82 00 0C */	beq lbl_800FFB90
/* 800FFB88 000F5908  7C 83 02 14 */	add r4, r3, r0
/* 800FFB8C 000F590C  48 00 00 08 */	b lbl_800FFB94
lbl_800FFB90:
/* 800FFB90 000F5910  38 80 00 00 */	li r4, 0
lbl_800FFB94:
/* 800FFB94 000F5914  38 00 00 00 */	li r0, 0
/* 800FFB98 000F5918  38 61 00 D4 */	addi r3, r1, 0xd4
/* 800FFB9C 000F591C  98 01 00 D4 */	stb r0, 0xd4(r1)
/* 800FFBA0 000F5920  48 2F A7 E5 */	bl strcat
/* 800FFBA4 000F5924  38 00 00 08 */	li r0, 8
/* 800FFBA8 000F5928  38 A1 00 8C */	addi r5, r1, 0x8c
/* 800FFBAC 000F592C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 800FFBB0 000F5930  7C 09 03 A6 */	mtctr r0
lbl_800FFBB4:
/* 800FFBB4 000F5934  80 64 00 04 */	lwz r3, 4(r4)
/* 800FFBB8 000F5938  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FFBBC 000F593C  90 65 00 04 */	stw r3, 4(r5)
/* 800FFBC0 000F5940  94 05 00 08 */	stwu r0, 8(r5)
/* 800FFBC4 000F5944  42 00 FF F0 */	bdnz lbl_800FFBB4
/* 800FFBC8 000F5948  88 04 00 04 */	lbz r0, 4(r4)
/* 800FFBCC 000F594C  38 61 00 90 */	addi r3, r1, 0x90
/* 800FFBD0 000F5950  38 8D A0 64 */	addi r4, r13, lbl_8059E484-_SDA_BASE_
/* 800FFBD4 000F5954  98 05 00 04 */	stb r0, 4(r5)
/* 800FFBD8 000F5958  48 2F A7 AD */	bl strcat
/* 800FFBDC 000F595C  38 00 00 08 */	li r0, 8
/* 800FFBE0 000F5960  38 A1 00 48 */	addi r5, r1, 0x48
/* 800FFBE4 000F5964  38 81 00 8C */	addi r4, r1, 0x8c
/* 800FFBE8 000F5968  7C 09 03 A6 */	mtctr r0
lbl_800FFBEC:
/* 800FFBEC 000F596C  80 64 00 04 */	lwz r3, 4(r4)
/* 800FFBF0 000F5970  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FFBF4 000F5974  90 65 00 04 */	stw r3, 4(r5)
/* 800FFBF8 000F5978  94 05 00 08 */	stwu r0, 8(r5)
/* 800FFBFC 000F597C  42 00 FF F0 */	bdnz lbl_800FFBEC
/* 800FFC00 000F5980  88 04 00 04 */	lbz r0, 4(r4)
/* 800FFC04 000F5984  38 61 00 4C */	addi r3, r1, 0x4c
/* 800FFC08 000F5988  98 05 00 04 */	stb r0, 4(r5)
/* 800FFC0C 000F598C  48 2F 0A 35 */	bl strlen
/* 800FFC10 000F5990  38 01 00 4C */	addi r0, r1, 0x4c
/* 800FFC14 000F5994  38 8D A0 60 */	addi r4, r13, lbl_8059E480-_SDA_BASE_
/* 800FFC18 000F5998  7C 60 1A 14 */	add r3, r0, r3
/* 800FFC1C 000F599C  38 A0 00 00 */	li r5, 0
/* 800FFC20 000F59A0  4C C6 31 82 */	crclr 6
/* 800FFC24 000F59A4  48 2F 8D D9 */	bl sprintf
/* 800FFC28 000F59A8  38 00 00 08 */	li r0, 8
/* 800FFC2C 000F59AC  38 A1 00 04 */	addi r5, r1, 4
/* 800FFC30 000F59B0  38 81 00 48 */	addi r4, r1, 0x48
/* 800FFC34 000F59B4  7C 09 03 A6 */	mtctr r0
lbl_800FFC38:
/* 800FFC38 000F59B8  80 64 00 04 */	lwz r3, 4(r4)
/* 800FFC3C 000F59BC  84 04 00 08 */	lwzu r0, 8(r4)
/* 800FFC40 000F59C0  90 65 00 04 */	stw r3, 4(r5)
/* 800FFC44 000F59C4  94 05 00 08 */	stwu r0, 8(r5)
/* 800FFC48 000F59C8  42 00 FF F0 */	bdnz lbl_800FFC38
/* 800FFC4C 000F59CC  88 04 00 04 */	lbz r0, 4(r4)
/* 800FFC50 000F59D0  7F E3 FB 78 */	mr r3, r31
/* 800FFC54 000F59D4  38 81 00 08 */	addi r4, r1, 8
/* 800FFC58 000F59D8  98 05 00 04 */	stb r0, 4(r5)
/* 800FFC5C 000F59DC  4B FB 55 99 */	bl MuObject$7changeClrAnimNIf
lbl_800FFC60:
/* 800FFC60 000F59E0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 800FFC64 000F59E4  4B FB 6A 3D */	bl MuObject$7isNodeAnimLoop
/* 800FFC68 000F59E8  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 800FFC6C 000F59EC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 800FFC70 000F59F0  39 61 06 90 */	addi r11, r1, 0x690
/* 800FFC74 000F59F4  7F A3 EB 78 */	mr r3, r29
/* 800FFC78 000F59F8  98 1D 00 10 */	stb r0, 0x10(r29)
/* 800FFC7C 000F59FC  48 2F 16 F1 */	bl _restgpr_27
/* 800FFC80 000F5A00  80 01 06 94 */	lwz r0, 0x694(r1)
/* 800FFC84 000F5A04  7C 08 03 A6 */	mtlr r0
/* 800FFC88 000F5A08  38 21 06 90 */	addi r1, r1, 0x690
/* 800FFC8C 000F5A0C  4E 80 00 20 */	blr 


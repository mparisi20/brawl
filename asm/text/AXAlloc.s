.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __AXGetStackHead
__AXGetStackHead:
/* 801FF1FC 001F4F7C  3C 80 80 4E */	lis r4, lbl_804E4850@ha
/* 801FF200 001F4F80  54 60 10 3A */	slwi r0, r3, 2
/* 801FF204 001F4F84  38 84 48 50 */	addi r4, r4, lbl_804E4850@l
/* 801FF208 001F4F88  7C 64 00 2E */	lwzx r3, r4, r0
/* 801FF20C 001F4F8C  4E 80 00 20 */	blr 

.global __AXServiceCallbackStack
__AXServiceCallbackStack:
/* 801FF210 001F4F90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FF214 001F4F94  7C 08 02 A6 */	mflr r0
/* 801FF218 001F4F98  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FF21C 001F4F9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FF220 001F4FA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801FF224 001F4FA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801FF228 001F4FA8  83 AD C6 08 */	lwz r29, lbl_805A0A28-_SDA_BASE_(r13)
/* 801FF22C 001F4FAC  2C 1D 00 00 */	cmpwi r29, 0
/* 801FF230 001F4FB0  41 82 00 0C */	beq lbl_801FF23C
/* 801FF234 001F4FB4  80 1D 00 08 */	lwz r0, 8(r29)
/* 801FF238 001F4FB8  90 0D C6 08 */	stw r0, lbl_805A0A28-_SDA_BASE_(r13)
lbl_801FF23C:
/* 801FF23C 001F4FBC  3F C0 80 4E */	lis r30, 0x804e
/* 801FF240 001F4FC0  3B E0 00 00 */	li r31, 0
/* 801FF244 001F4FC4  48 00 00 54 */	b lbl_801FF298
lbl_801FF248:
/* 801FF248 001F4FC8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 801FF24C 001F4FCC  2C 00 00 00 */	cmpwi r0, 0
/* 801FF250 001F4FD0  41 82 00 34 */	beq lbl_801FF284
/* 801FF254 001F4FD4  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 801FF258 001F4FD8  2C 0C 00 00 */	cmpwi r12, 0
/* 801FF25C 001F4FDC  41 82 00 10 */	beq lbl_801FF26C
/* 801FF260 001F4FE0  7F A3 EB 78 */	mr r3, r29
/* 801FF264 001F4FE4  7D 89 03 A6 */	mtctr r12
/* 801FF268 001F4FE8  4E 80 04 21 */	bctrl 
lbl_801FF26C:
/* 801FF26C 001F4FEC  7F A3 EB 78 */	mr r3, r29
/* 801FF270 001F4FF0  48 00 01 D9 */	bl __AXRemoveFromStack
/* 801FF274 001F4FF4  80 1E 48 50 */	lwz r0, 0x4850(r30)
/* 801FF278 001F4FF8  90 1D 00 00 */	stw r0, 0(r29)
/* 801FF27C 001F4FFC  93 BE 48 50 */	stw r29, 0x4850(r30)
/* 801FF280 001F5000  93 FD 00 0C */	stw r31, 0xc(r29)
lbl_801FF284:
/* 801FF284 001F5004  83 AD C6 08 */	lwz r29, lbl_805A0A28-_SDA_BASE_(r13)
/* 801FF288 001F5008  2C 1D 00 00 */	cmpwi r29, 0
/* 801FF28C 001F500C  41 82 00 0C */	beq lbl_801FF298
/* 801FF290 001F5010  80 1D 00 08 */	lwz r0, 8(r29)
/* 801FF294 001F5014  90 0D C6 08 */	stw r0, lbl_805A0A28-_SDA_BASE_(r13)
lbl_801FF298:
/* 801FF298 001F5018  2C 1D 00 00 */	cmpwi r29, 0
/* 801FF29C 001F501C  40 82 FF AC */	bne lbl_801FF248
/* 801FF2A0 001F5020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FF2A4 001F5024  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FF2A8 001F5028  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801FF2AC 001F502C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801FF2B0 001F5030  7C 08 03 A6 */	mtlr r0
/* 801FF2B4 001F5034  38 21 00 20 */	addi r1, r1, 0x20
/* 801FF2B8 001F5038  4E 80 00 20 */	blr 

.global __AXAllocInit
__AXAllocInit:
/* 801FF2BC 001F503C  38 60 00 00 */	li r3, 0
/* 801FF2C0 001F5040  3C 80 80 4E */	lis r4, lbl_804E48D0@ha
/* 801FF2C4 001F5044  3C A0 80 4E */	lis r5, lbl_804E4850@ha
/* 801FF2C8 001F5048  38 00 00 02 */	li r0, 2
/* 801FF2CC 001F504C  90 6D C6 08 */	stw r3, lbl_805A0A28-_SDA_BASE_(r13)
/* 801FF2D0 001F5050  38 84 48 D0 */	addi r4, r4, lbl_804E48D0@l
/* 801FF2D4 001F5054  38 A5 48 50 */	addi r5, r5, lbl_804E4850@l
/* 801FF2D8 001F5058  7C 09 03 A6 */	mtctr r0
lbl_801FF2DC:
/* 801FF2DC 001F505C  90 64 00 00 */	stw r3, 0(r4)
/* 801FF2E0 001F5060  90 65 00 00 */	stw r3, 0(r5)
/* 801FF2E4 001F5064  90 64 00 04 */	stw r3, 4(r4)
/* 801FF2E8 001F5068  90 65 00 04 */	stw r3, 4(r5)
/* 801FF2EC 001F506C  90 64 00 08 */	stw r3, 8(r4)
/* 801FF2F0 001F5070  90 65 00 08 */	stw r3, 8(r5)
/* 801FF2F4 001F5074  90 64 00 0C */	stw r3, 0xc(r4)
/* 801FF2F8 001F5078  90 65 00 0C */	stw r3, 0xc(r5)
/* 801FF2FC 001F507C  90 64 00 10 */	stw r3, 0x10(r4)
/* 801FF300 001F5080  90 65 00 10 */	stw r3, 0x10(r5)
/* 801FF304 001F5084  90 64 00 14 */	stw r3, 0x14(r4)
/* 801FF308 001F5088  90 65 00 14 */	stw r3, 0x14(r5)
/* 801FF30C 001F508C  90 64 00 18 */	stw r3, 0x18(r4)
/* 801FF310 001F5090  90 65 00 18 */	stw r3, 0x18(r5)
/* 801FF314 001F5094  90 64 00 1C */	stw r3, 0x1c(r4)
/* 801FF318 001F5098  90 65 00 1C */	stw r3, 0x1c(r5)
/* 801FF31C 001F509C  90 64 00 20 */	stw r3, 0x20(r4)
/* 801FF320 001F50A0  90 65 00 20 */	stw r3, 0x20(r5)
/* 801FF324 001F50A4  90 64 00 24 */	stw r3, 0x24(r4)
/* 801FF328 001F50A8  90 65 00 24 */	stw r3, 0x24(r5)
/* 801FF32C 001F50AC  90 64 00 28 */	stw r3, 0x28(r4)
/* 801FF330 001F50B0  90 65 00 28 */	stw r3, 0x28(r5)
/* 801FF334 001F50B4  90 64 00 2C */	stw r3, 0x2c(r4)
/* 801FF338 001F50B8  90 65 00 2C */	stw r3, 0x2c(r5)
/* 801FF33C 001F50BC  90 64 00 30 */	stw r3, 0x30(r4)
/* 801FF340 001F50C0  90 65 00 30 */	stw r3, 0x30(r5)
/* 801FF344 001F50C4  90 64 00 34 */	stw r3, 0x34(r4)
/* 801FF348 001F50C8  90 65 00 34 */	stw r3, 0x34(r5)
/* 801FF34C 001F50CC  90 64 00 38 */	stw r3, 0x38(r4)
/* 801FF350 001F50D0  90 65 00 38 */	stw r3, 0x38(r5)
/* 801FF354 001F50D4  90 64 00 3C */	stw r3, 0x3c(r4)
/* 801FF358 001F50D8  38 84 00 40 */	addi r4, r4, 0x40
/* 801FF35C 001F50DC  90 65 00 3C */	stw r3, 0x3c(r5)
/* 801FF360 001F50E0  38 A5 00 40 */	addi r5, r5, 0x40
/* 801FF364 001F50E4  42 00 FF 78 */	bdnz lbl_801FF2DC
/* 801FF368 001F50E8  4E 80 00 20 */	blr 

.global __AXAllocQuit
__AXAllocQuit:
/* 801FF36C 001F50EC  38 60 00 00 */	li r3, 0
/* 801FF370 001F50F0  3C 80 80 4E */	lis r4, lbl_804E48D0@ha
/* 801FF374 001F50F4  3C A0 80 4E */	lis r5, lbl_804E4850@ha
/* 801FF378 001F50F8  38 00 00 02 */	li r0, 2
/* 801FF37C 001F50FC  90 6D C6 08 */	stw r3, lbl_805A0A28-_SDA_BASE_(r13)
/* 801FF380 001F5100  38 84 48 D0 */	addi r4, r4, lbl_804E48D0@l
/* 801FF384 001F5104  38 A5 48 50 */	addi r5, r5, lbl_804E4850@l
/* 801FF388 001F5108  7C 09 03 A6 */	mtctr r0
lbl_801FF38C:
/* 801FF38C 001F510C  90 64 00 00 */	stw r3, 0(r4)
/* 801FF390 001F5110  90 65 00 00 */	stw r3, 0(r5)
/* 801FF394 001F5114  90 64 00 04 */	stw r3, 4(r4)
/* 801FF398 001F5118  90 65 00 04 */	stw r3, 4(r5)
/* 801FF39C 001F511C  90 64 00 08 */	stw r3, 8(r4)
/* 801FF3A0 001F5120  90 65 00 08 */	stw r3, 8(r5)
/* 801FF3A4 001F5124  90 64 00 0C */	stw r3, 0xc(r4)
/* 801FF3A8 001F5128  90 65 00 0C */	stw r3, 0xc(r5)
/* 801FF3AC 001F512C  90 64 00 10 */	stw r3, 0x10(r4)
/* 801FF3B0 001F5130  90 65 00 10 */	stw r3, 0x10(r5)
/* 801FF3B4 001F5134  90 64 00 14 */	stw r3, 0x14(r4)
/* 801FF3B8 001F5138  90 65 00 14 */	stw r3, 0x14(r5)
/* 801FF3BC 001F513C  90 64 00 18 */	stw r3, 0x18(r4)
/* 801FF3C0 001F5140  90 65 00 18 */	stw r3, 0x18(r5)
/* 801FF3C4 001F5144  90 64 00 1C */	stw r3, 0x1c(r4)
/* 801FF3C8 001F5148  90 65 00 1C */	stw r3, 0x1c(r5)
/* 801FF3CC 001F514C  90 64 00 20 */	stw r3, 0x20(r4)
/* 801FF3D0 001F5150  90 65 00 20 */	stw r3, 0x20(r5)
/* 801FF3D4 001F5154  90 64 00 24 */	stw r3, 0x24(r4)
/* 801FF3D8 001F5158  90 65 00 24 */	stw r3, 0x24(r5)
/* 801FF3DC 001F515C  90 64 00 28 */	stw r3, 0x28(r4)
/* 801FF3E0 001F5160  90 65 00 28 */	stw r3, 0x28(r5)
/* 801FF3E4 001F5164  90 64 00 2C */	stw r3, 0x2c(r4)
/* 801FF3E8 001F5168  90 65 00 2C */	stw r3, 0x2c(r5)
/* 801FF3EC 001F516C  90 64 00 30 */	stw r3, 0x30(r4)
/* 801FF3F0 001F5170  90 65 00 30 */	stw r3, 0x30(r5)
/* 801FF3F4 001F5174  90 64 00 34 */	stw r3, 0x34(r4)
/* 801FF3F8 001F5178  90 65 00 34 */	stw r3, 0x34(r5)
/* 801FF3FC 001F517C  90 64 00 38 */	stw r3, 0x38(r4)
/* 801FF400 001F5180  90 65 00 38 */	stw r3, 0x38(r5)
/* 801FF404 001F5184  90 64 00 3C */	stw r3, 0x3c(r4)
/* 801FF408 001F5188  38 84 00 40 */	addi r4, r4, 0x40
/* 801FF40C 001F518C  90 65 00 3C */	stw r3, 0x3c(r5)
/* 801FF410 001F5190  38 A5 00 40 */	addi r5, r5, 0x40
/* 801FF414 001F5194  42 00 FF 78 */	bdnz lbl_801FF38C
/* 801FF418 001F5198  4E 80 00 20 */	blr 

.global __AXPushFreeStack
__AXPushFreeStack:
/* 801FF41C 001F519C  3C A0 80 4E */	lis r5, lbl_804E4850@ha
/* 801FF420 001F51A0  38 00 00 00 */	li r0, 0
/* 801FF424 001F51A4  80 85 48 50 */	lwz r4, lbl_804E4850@l(r5)
/* 801FF428 001F51A8  90 83 00 00 */	stw r4, 0(r3)
/* 801FF42C 001F51AC  90 65 48 50 */	stw r3, 0x4850(r5)
/* 801FF430 001F51B0  90 03 00 0C */	stw r0, 0xc(r3)
/* 801FF434 001F51B4  4E 80 00 20 */	blr 

.global __AXPushCallbackStack
__AXPushCallbackStack:
/* 801FF438 001F51B8  80 0D C6 08 */	lwz r0, lbl_805A0A28-_SDA_BASE_(r13)
/* 801FF43C 001F51BC  90 03 00 08 */	stw r0, 8(r3)
/* 801FF440 001F51C0  90 6D C6 08 */	stw r3, lbl_805A0A28-_SDA_BASE_(r13)
/* 801FF444 001F51C4  4E 80 00 20 */	blr 

.global __AXRemoveFromStack
__AXRemoveFromStack:
/* 801FF448 001F51C8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801FF44C 001F51CC  3C A0 80 4E */	lis r5, lbl_804E4850@ha
/* 801FF450 001F51D0  3C 80 80 4E */	lis r4, lbl_804E48D0@ha
/* 801FF454 001F51D4  54 06 10 3A */	slwi r6, r0, 2
/* 801FF458 001F51D8  38 A5 48 50 */	addi r5, r5, lbl_804E4850@l
/* 801FF45C 001F51DC  38 84 48 D0 */	addi r4, r4, lbl_804E48D0@l
/* 801FF460 001F51E0  7C 05 30 2E */	lwzx r0, r5, r6
/* 801FF464 001F51E4  7C E4 30 2E */	lwzx r7, r4, r6
/* 801FF468 001F51E8  7C 00 38 40 */	cmplw r0, r7
/* 801FF46C 001F51EC  40 82 00 14 */	bne lbl_801FF480
/* 801FF470 001F51F0  38 00 00 00 */	li r0, 0
/* 801FF474 001F51F4  7C 04 31 2E */	stwx r0, r4, r6
/* 801FF478 001F51F8  7C 05 31 2E */	stwx r0, r5, r6
/* 801FF47C 001F51FC  4E 80 00 20 */	blr 
lbl_801FF480:
/* 801FF480 001F5200  7C 03 00 40 */	cmplw r3, r0
/* 801FF484 001F5204  40 82 00 18 */	bne lbl_801FF49C
/* 801FF488 001F5208  80 63 00 00 */	lwz r3, 0(r3)
/* 801FF48C 001F520C  38 00 00 00 */	li r0, 0
/* 801FF490 001F5210  7C 65 31 2E */	stwx r3, r5, r6
/* 801FF494 001F5214  90 03 00 04 */	stw r0, 4(r3)
/* 801FF498 001F5218  4E 80 00 20 */	blr 
lbl_801FF49C:
/* 801FF49C 001F521C  7C 03 38 40 */	cmplw r3, r7
/* 801FF4A0 001F5220  40 82 00 18 */	bne lbl_801FF4B8
/* 801FF4A4 001F5224  80 63 00 04 */	lwz r3, 4(r3)
/* 801FF4A8 001F5228  38 00 00 00 */	li r0, 0
/* 801FF4AC 001F522C  7C 64 31 2E */	stwx r3, r4, r6
/* 801FF4B0 001F5230  90 03 00 00 */	stw r0, 0(r3)
/* 801FF4B4 001F5234  4E 80 00 20 */	blr 
lbl_801FF4B8:
/* 801FF4B8 001F5238  80 83 00 04 */	lwz r4, 4(r3)
/* 801FF4BC 001F523C  80 63 00 00 */	lwz r3, 0(r3)
/* 801FF4C0 001F5240  90 64 00 00 */	stw r3, 0(r4)
/* 801FF4C4 001F5244  90 83 00 04 */	stw r4, 4(r3)
/* 801FF4C8 001F5248  4E 80 00 20 */	blr 

.global AXFreeVoice
AXFreeVoice:
/* 801FF4CC 001F524C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FF4D0 001F5250  7C 08 02 A6 */	mflr r0
/* 801FF4D4 001F5254  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FF4D8 001F5258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FF4DC 001F525C  93 C1 00 08 */	stw r30, 8(r1)
/* 801FF4E0 001F5260  7C 7E 1B 78 */	mr r30, r3
/* 801FF4E4 001F5264  4B FD DA 2D */	bl OSDisableInterrupts
/* 801FF4E8 001F5268  7C 7F 1B 78 */	mr r31, r3
/* 801FF4EC 001F526C  7F C3 F3 78 */	mr r3, r30
/* 801FF4F0 001F5270  4B FF FF 59 */	bl __AXRemoveFromStack
/* 801FF4F4 001F5274  A0 1E 00 38 */	lhz r0, 0x38(r30)
/* 801FF4F8 001F5278  28 00 00 01 */	cmplwi r0, 1
/* 801FF4FC 001F527C  40 82 00 0C */	bne lbl_801FF508
/* 801FF500 001F5280  38 00 00 01 */	li r0, 1
/* 801FF504 001F5284  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_801FF508:
/* 801FF508 001F5288  7F C3 F3 78 */	mr r3, r30
/* 801FF50C 001F528C  48 00 29 ED */	bl __AXSetPBDefault
/* 801FF510 001F5290  3C A0 80 4E */	lis r5, lbl_804E4850@ha
/* 801FF514 001F5294  38 00 00 00 */	li r0, 0
/* 801FF518 001F5298  80 85 48 50 */	lwz r4, lbl_804E4850@l(r5)
/* 801FF51C 001F529C  7F E3 FB 78 */	mr r3, r31
/* 801FF520 001F52A0  90 9E 00 00 */	stw r4, 0(r30)
/* 801FF524 001F52A4  93 C5 48 50 */	stw r30, 0x4850(r5)
/* 801FF528 001F52A8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801FF52C 001F52AC  4B FD DA 0D */	bl OSRestoreInterrupts
/* 801FF530 001F52B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FF534 001F52B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FF538 001F52B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FF53C 001F52BC  7C 08 03 A6 */	mtlr r0
/* 801FF540 001F52C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FF544 001F52C4  4E 80 00 20 */	blr 

.global AXAcquireVoice
AXAcquireVoice:
/* 801FF548 001F52C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FF54C 001F52CC  7C 08 02 A6 */	mflr r0
/* 801FF550 001F52D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FF554 001F52D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801FF558 001F52D8  48 1F 1D C9 */	bl _savegpr_27
/* 801FF55C 001F52DC  7C 7B 1B 78 */	mr r27, r3
/* 801FF560 001F52E0  7C 9C 23 78 */	mr r28, r4
/* 801FF564 001F52E4  7C BD 2B 78 */	mr r29, r5
/* 801FF568 001F52E8  4B FD D9 A9 */	bl OSDisableInterrupts
/* 801FF56C 001F52EC  3C 80 80 4E */	lis r4, lbl_804E4850@ha
/* 801FF570 001F52F0  7C 7F 1B 78 */	mr r31, r3
/* 801FF574 001F52F4  83 C4 48 50 */	lwz r30, lbl_804E4850@l(r4)
/* 801FF578 001F52F8  2C 1E 00 00 */	cmpwi r30, 0
/* 801FF57C 001F52FC  41 82 00 0C */	beq lbl_801FF588
/* 801FF580 001F5300  80 1E 00 00 */	lwz r0, 0(r30)
/* 801FF584 001F5304  90 04 48 50 */	stw r0, 0x4850(r4)
lbl_801FF588:
/* 801FF588 001F5308  2C 1E 00 00 */	cmpwi r30, 0
/* 801FF58C 001F530C  40 82 00 B8 */	bne lbl_801FF644
/* 801FF590 001F5310  3C 60 80 4E */	lis r3, lbl_804E4850@ha
/* 801FF594 001F5314  3C 80 80 4E */	lis r4, lbl_804E48D0@ha
/* 801FF598 001F5318  38 63 48 50 */	addi r3, r3, lbl_804E4850@l
/* 801FF59C 001F531C  38 1B FF FF */	addi r0, r27, -1
/* 801FF5A0 001F5320  38 84 48 D0 */	addi r4, r4, lbl_804E48D0@l
/* 801FF5A4 001F5324  38 A3 00 04 */	addi r5, r3, 4
/* 801FF5A8 001F5328  38 60 00 00 */	li r3, 0
/* 801FF5AC 001F532C  38 C4 00 04 */	addi r6, r4, 4
/* 801FF5B0 001F5330  7C 09 03 A6 */	mtctr r0
/* 801FF5B4 001F5334  28 1B 00 01 */	cmplwi r27, 1
/* 801FF5B8 001F5338  40 81 00 8C */	ble lbl_801FF644
lbl_801FF5BC:
/* 801FF5BC 001F533C  80 05 00 00 */	lwz r0, 0(r5)
/* 801FF5C0 001F5340  3B C0 00 00 */	li r30, 0
/* 801FF5C4 001F5344  2C 00 00 00 */	cmpwi r0, 0
/* 801FF5C8 001F5348  41 82 00 38 */	beq lbl_801FF600
/* 801FF5CC 001F534C  80 E6 00 00 */	lwz r7, 0(r6)
/* 801FF5D0 001F5350  7C 00 38 40 */	cmplw r0, r7
/* 801FF5D4 001F5354  40 82 00 14 */	bne lbl_801FF5E8
/* 801FF5D8 001F5358  90 66 00 00 */	stw r3, 0(r6)
/* 801FF5DC 001F535C  7C 1E 03 78 */	mr r30, r0
/* 801FF5E0 001F5360  90 65 00 00 */	stw r3, 0(r5)
/* 801FF5E4 001F5364  48 00 00 1C */	b lbl_801FF600
lbl_801FF5E8:
/* 801FF5E8 001F5368  2C 07 00 00 */	cmpwi r7, 0
/* 801FF5EC 001F536C  41 82 00 14 */	beq lbl_801FF600
/* 801FF5F0 001F5370  80 87 00 04 */	lwz r4, 4(r7)
/* 801FF5F4 001F5374  7C FE 3B 78 */	mr r30, r7
/* 801FF5F8 001F5378  90 86 00 00 */	stw r4, 0(r6)
/* 801FF5FC 001F537C  90 64 00 00 */	stw r3, 0(r4)
lbl_801FF600:
/* 801FF600 001F5380  2C 1E 00 00 */	cmpwi r30, 0
/* 801FF604 001F5384  41 82 00 34 */	beq lbl_801FF638
/* 801FF608 001F5388  A0 1E 00 38 */	lhz r0, 0x38(r30)
/* 801FF60C 001F538C  28 00 00 01 */	cmplwi r0, 1
/* 801FF610 001F5390  40 82 00 0C */	bne lbl_801FF61C
/* 801FF614 001F5394  38 00 00 01 */	li r0, 1
/* 801FF618 001F5398  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_801FF61C:
/* 801FF61C 001F539C  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 801FF620 001F53A0  2C 0C 00 00 */	cmpwi r12, 0
/* 801FF624 001F53A4  41 82 00 20 */	beq lbl_801FF644
/* 801FF628 001F53A8  7F C3 F3 78 */	mr r3, r30
/* 801FF62C 001F53AC  7D 89 03 A6 */	mtctr r12
/* 801FF630 001F53B0  4E 80 04 21 */	bctrl 
/* 801FF634 001F53B4  48 00 00 10 */	b lbl_801FF644
lbl_801FF638:
/* 801FF638 001F53B8  38 A5 00 04 */	addi r5, r5, 4
/* 801FF63C 001F53BC  38 C6 00 04 */	addi r6, r6, 4
/* 801FF640 001F53C0  42 00 FF 7C */	bdnz lbl_801FF5BC
lbl_801FF644:
/* 801FF644 001F53C4  2C 1E 00 00 */	cmpwi r30, 0
/* 801FF648 001F53C8  41 82 00 5C */	beq lbl_801FF6A4
/* 801FF64C 001F53CC  3C 80 80 4E */	lis r4, lbl_804E4850@ha
/* 801FF650 001F53D0  57 65 10 3A */	slwi r5, r27, 2
/* 801FF654 001F53D4  38 84 48 50 */	addi r4, r4, lbl_804E4850@l
/* 801FF658 001F53D8  38 00 00 00 */	li r0, 0
/* 801FF65C 001F53DC  7C 64 28 2E */	lwzx r3, r4, r5
/* 801FF660 001F53E0  90 7E 00 00 */	stw r3, 0(r30)
/* 801FF664 001F53E4  2C 03 00 00 */	cmpwi r3, 0
/* 801FF668 001F53E8  90 1E 00 04 */	stw r0, 4(r30)
/* 801FF66C 001F53EC  41 82 00 14 */	beq lbl_801FF680
/* 801FF670 001F53F0  7C 64 28 2E */	lwzx r3, r4, r5
/* 801FF674 001F53F4  93 C3 00 04 */	stw r30, 4(r3)
/* 801FF678 001F53F8  7F C4 29 2E */	stwx r30, r4, r5
/* 801FF67C 001F53FC  48 00 00 14 */	b lbl_801FF690
lbl_801FF680:
/* 801FF680 001F5400  3C 60 80 4E */	lis r3, lbl_804E48D0@ha
/* 801FF684 001F5404  7F C4 29 2E */	stwx r30, r4, r5
/* 801FF688 001F5408  38 63 48 D0 */	addi r3, r3, lbl_804E48D0@l
/* 801FF68C 001F540C  7F C3 29 2E */	stwx r30, r3, r5
lbl_801FF690:
/* 801FF690 001F5410  93 7E 00 0C */	stw r27, 0xc(r30)
/* 801FF694 001F5414  7F C3 F3 78 */	mr r3, r30
/* 801FF698 001F5418  93 9E 00 10 */	stw r28, 0x10(r30)
/* 801FF69C 001F541C  93 BE 00 14 */	stw r29, 0x14(r30)
/* 801FF6A0 001F5420  48 00 28 59 */	bl __AXSetPBDefault
lbl_801FF6A4:
/* 801FF6A4 001F5424  7F E3 FB 78 */	mr r3, r31
/* 801FF6A8 001F5428  4B FD D8 91 */	bl OSRestoreInterrupts
/* 801FF6AC 001F542C  39 61 00 20 */	addi r11, r1, 0x20
/* 801FF6B0 001F5430  7F C3 F3 78 */	mr r3, r30
/* 801FF6B4 001F5434  48 1F 1C B9 */	bl _restgpr_27
/* 801FF6B8 001F5438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FF6BC 001F543C  7C 08 03 A6 */	mtlr r0
/* 801FF6C0 001F5440  38 21 00 20 */	addi r1, r1, 0x20
/* 801FF6C4 001F5444  4E 80 00 20 */	blr 

.global AXSetVoicePriority
AXSetVoicePriority:
/* 801FF6C8 001F5448  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FF6CC 001F544C  7C 08 02 A6 */	mflr r0
/* 801FF6D0 001F5450  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FF6D4 001F5454  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FF6D8 001F5458  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801FF6DC 001F545C  7C 9E 23 78 */	mr r30, r4
/* 801FF6E0 001F5460  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801FF6E4 001F5464  7C 7D 1B 78 */	mr r29, r3
/* 801FF6E8 001F5468  4B FD D8 29 */	bl OSDisableInterrupts
/* 801FF6EC 001F546C  7C 7F 1B 78 */	mr r31, r3
/* 801FF6F0 001F5470  7F A3 EB 78 */	mr r3, r29
/* 801FF6F4 001F5474  4B FF FD 55 */	bl __AXRemoveFromStack
/* 801FF6F8 001F5478  3C 80 80 4E */	lis r4, lbl_804E4850@ha
/* 801FF6FC 001F547C  57 C5 10 3A */	slwi r5, r30, 2
/* 801FF700 001F5480  38 84 48 50 */	addi r4, r4, lbl_804E4850@l
/* 801FF704 001F5484  38 00 00 00 */	li r0, 0
/* 801FF708 001F5488  7C 64 28 2E */	lwzx r3, r4, r5
/* 801FF70C 001F548C  2C 03 00 00 */	cmpwi r3, 0
/* 801FF710 001F5490  90 7D 00 00 */	stw r3, 0(r29)
/* 801FF714 001F5494  90 1D 00 04 */	stw r0, 4(r29)
/* 801FF718 001F5498  41 82 00 14 */	beq lbl_801FF72C
/* 801FF71C 001F549C  7C 64 28 2E */	lwzx r3, r4, r5
/* 801FF720 001F54A0  93 A3 00 04 */	stw r29, 4(r3)
/* 801FF724 001F54A4  7F A4 29 2E */	stwx r29, r4, r5
/* 801FF728 001F54A8  48 00 00 14 */	b lbl_801FF73C
lbl_801FF72C:
/* 801FF72C 001F54AC  3C 60 80 4E */	lis r3, lbl_804E48D0@ha
/* 801FF730 001F54B0  7F A4 29 2E */	stwx r29, r4, r5
/* 801FF734 001F54B4  38 63 48 D0 */	addi r3, r3, lbl_804E48D0@l
/* 801FF738 001F54B8  7F A3 29 2E */	stwx r29, r3, r5
lbl_801FF73C:
/* 801FF73C 001F54BC  93 DD 00 0C */	stw r30, 0xc(r29)
/* 801FF740 001F54C0  7F E3 FB 78 */	mr r3, r31
/* 801FF744 001F54C4  4B FD D7 F5 */	bl OSRestoreInterrupts
/* 801FF748 001F54C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FF74C 001F54CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FF750 001F54D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801FF754 001F54D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801FF758 001F54D8  7C 08 03 A6 */	mtlr r0
/* 801FF75C 001F54DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801FF760 001F54E0  4E 80 00 20 */	blr 

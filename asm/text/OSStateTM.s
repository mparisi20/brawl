.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global OSSetResetCallback
OSSetResetCallback:
/* 801E2448 001D81C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E244C 001D81CC  7C 08 02 A6 */	mflr r0
/* 801E2450 001D81D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E2454 001D81D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E2458 001D81D8  7C 7F 1B 78 */	mr r31, r3
/* 801E245C 001D81DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E2460 001D81E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E2464 001D81E4  4B FF AA AD */	bl OSDisableInterrupts
/* 801E2468 001D81E8  80 0D C2 F8 */	lwz r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E246C 001D81EC  7C 7E 1B 78 */	mr r30, r3
/* 801E2470 001D81F0  83 AD C3 04 */	lwz r29, lbl_805A0724-_SDA_BASE_(r13)
/* 801E2474 001D81F4  2C 00 00 00 */	cmpwi r0, 0
/* 801E2478 001D81F8  93 ED C3 04 */	stw r31, lbl_805A0724-_SDA_BASE_(r13)
/* 801E247C 001D81FC  40 82 00 60 */	bne lbl_801E24DC
/* 801E2480 001D8200  4B FF AA 91 */	bl OSDisableInterrupts
/* 801E2484 001D8204  7C 7F 1B 78 */	mr r31, r3
/* 801E2488 001D8208  3C A0 80 4E */	lis r5, lbl_804DDF60@ha
/* 801E248C 001D820C  3C E0 80 4E */	lis r7, lbl_804DDF80@ha
/* 801E2490 001D8210  3D 20 80 1E */	lis r9, __OSStateEventHandler@ha
/* 801E2494 001D8214  80 6D C2 F4 */	lwz r3, lbl_805A0714-_SDA_BASE_(r13)
/* 801E2498 001D8218  38 A5 DF 60 */	addi r5, r5, lbl_804DDF60@l
/* 801E249C 001D821C  38 E7 DF 80 */	addi r7, r7, lbl_804DDF80@l
/* 801E24A0 001D8220  39 29 29 88 */	addi r9, r9, __OSStateEventHandler@l
/* 801E24A4 001D8224  38 80 10 00 */	li r4, 0x1000
/* 801E24A8 001D8228  38 C0 00 20 */	li r6, 0x20
/* 801E24AC 001D822C  39 00 00 20 */	li r8, 0x20
/* 801E24B0 001D8230  39 40 00 00 */	li r10, 0
/* 801E24B4 001D8234  48 03 07 55 */	bl IOS_IoctlAsync
/* 801E24B8 001D8238  2C 03 00 00 */	cmpwi r3, 0
/* 801E24BC 001D823C  40 82 00 10 */	bne lbl_801E24CC
/* 801E24C0 001D8240  38 00 00 01 */	li r0, 1
/* 801E24C4 001D8244  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E24C8 001D8248  48 00 00 0C */	b lbl_801E24D4
lbl_801E24CC:
/* 801E24CC 001D824C  38 00 00 00 */	li r0, 0
/* 801E24D0 001D8250  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
lbl_801E24D4:
/* 801E24D4 001D8254  7F E3 FB 78 */	mr r3, r31
/* 801E24D8 001D8258  4B FF AA 61 */	bl OSRestoreInterrupts
lbl_801E24DC:
/* 801E24DC 001D825C  7F C3 F3 78 */	mr r3, r30
/* 801E24E0 001D8260  4B FF AA 59 */	bl OSRestoreInterrupts
/* 801E24E4 001D8264  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E24E8 001D8268  7F A3 EB 78 */	mr r3, r29
/* 801E24EC 001D826C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E24F0 001D8270  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E24F4 001D8274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E24F8 001D8278  7C 08 03 A6 */	mtlr r0
/* 801E24FC 001D827C  38 21 00 20 */	addi r1, r1, 0x20
/* 801E2500 001D8280  4E 80 00 20 */	blr 

.global OSSetPowerCallback
OSSetPowerCallback:
/* 801E2504 001D8284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E2508 001D8288  7C 08 02 A6 */	mflr r0
/* 801E250C 001D828C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E2510 001D8290  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E2514 001D8294  7C 7F 1B 78 */	mr r31, r3
/* 801E2518 001D8298  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E251C 001D829C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E2520 001D82A0  4B FF A9 F1 */	bl OSDisableInterrupts
/* 801E2524 001D82A4  80 0D C2 F8 */	lwz r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E2528 001D82A8  7C 7E 1B 78 */	mr r30, r3
/* 801E252C 001D82AC  83 AD C3 00 */	lwz r29, lbl_805A0720-_SDA_BASE_(r13)
/* 801E2530 001D82B0  2C 00 00 00 */	cmpwi r0, 0
/* 801E2534 001D82B4  93 ED C3 00 */	stw r31, lbl_805A0720-_SDA_BASE_(r13)
/* 801E2538 001D82B8  40 82 00 60 */	bne lbl_801E2598
/* 801E253C 001D82BC  4B FF A9 D5 */	bl OSDisableInterrupts
/* 801E2540 001D82C0  7C 7F 1B 78 */	mr r31, r3
/* 801E2544 001D82C4  3C A0 80 4E */	lis r5, lbl_804DDF60@ha
/* 801E2548 001D82C8  3C E0 80 4E */	lis r7, lbl_804DDF80@ha
/* 801E254C 001D82CC  3D 20 80 1E */	lis r9, __OSStateEventHandler@ha
/* 801E2550 001D82D0  80 6D C2 F4 */	lwz r3, lbl_805A0714-_SDA_BASE_(r13)
/* 801E2554 001D82D4  38 A5 DF 60 */	addi r5, r5, lbl_804DDF60@l
/* 801E2558 001D82D8  38 E7 DF 80 */	addi r7, r7, lbl_804DDF80@l
/* 801E255C 001D82DC  39 29 29 88 */	addi r9, r9, __OSStateEventHandler@l
/* 801E2560 001D82E0  38 80 10 00 */	li r4, 0x1000
/* 801E2564 001D82E4  38 C0 00 20 */	li r6, 0x20
/* 801E2568 001D82E8  39 00 00 20 */	li r8, 0x20
/* 801E256C 001D82EC  39 40 00 00 */	li r10, 0
/* 801E2570 001D82F0  48 03 06 99 */	bl IOS_IoctlAsync
/* 801E2574 001D82F4  2C 03 00 00 */	cmpwi r3, 0
/* 801E2578 001D82F8  40 82 00 10 */	bne lbl_801E2588
/* 801E257C 001D82FC  38 00 00 01 */	li r0, 1
/* 801E2580 001D8300  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E2584 001D8304  48 00 00 0C */	b lbl_801E2590
lbl_801E2588:
/* 801E2588 001D8308  38 00 00 00 */	li r0, 0
/* 801E258C 001D830C  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
lbl_801E2590:
/* 801E2590 001D8310  7F E3 FB 78 */	mr r3, r31
/* 801E2594 001D8314  4B FF A9 A5 */	bl OSRestoreInterrupts
lbl_801E2598:
/* 801E2598 001D8318  7F C3 F3 78 */	mr r3, r30
/* 801E259C 001D831C  4B FF A9 9D */	bl OSRestoreInterrupts
/* 801E25A0 001D8320  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E25A4 001D8324  7F A3 EB 78 */	mr r3, r29
/* 801E25A8 001D8328  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E25AC 001D832C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E25B0 001D8330  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E25B4 001D8334  7C 08 03 A6 */	mtlr r0
/* 801E25B8 001D8338  38 21 00 20 */	addi r1, r1, 0x20
/* 801E25BC 001D833C  4E 80 00 20 */	blr 

.global __OSInitSTM
__OSInitSTM:
/* 801E25C0 001D8340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E25C4 001D8344  7C 08 02 A6 */	mflr r0
/* 801E25C8 001D8348  3C 80 80 1E */	lis r4, __OSDefaultPowerCallback@ha
/* 801E25CC 001D834C  3C 60 80 1E */	lis r3, __OSDefaultResetCallback@ha
/* 801E25D0 001D8350  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E25D4 001D8354  38 84 29 84 */	addi r4, r4, __OSDefaultPowerCallback@l
/* 801E25D8 001D8358  38 63 29 80 */	addi r3, r3, __OSDefaultResetCallback@l
/* 801E25DC 001D835C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E25E0 001D8360  3B E0 00 00 */	li r31, 0
/* 801E25E4 001D8364  93 C1 00 08 */	stw r30, 8(r1)
/* 801E25E8 001D8368  80 0D C2 EC */	lwz r0, lbl_805A070C-_SDA_BASE_(r13)
/* 801E25EC 001D836C  90 8D C3 00 */	stw r4, lbl_805A0720-_SDA_BASE_(r13)
/* 801E25F0 001D8370  2C 00 00 00 */	cmpwi r0, 0
/* 801E25F4 001D8374  90 6D C3 04 */	stw r3, lbl_805A0724-_SDA_BASE_(r13)
/* 801E25F8 001D8378  93 ED C2 E8 */	stw r31, lbl_805A0708-_SDA_BASE_(r13)
/* 801E25FC 001D837C  41 82 00 0C */	beq lbl_801E2608
/* 801E2600 001D8380  38 60 00 01 */	li r3, 1
/* 801E2604 001D8384  48 00 00 BC */	b lbl_801E26C0
lbl_801E2608:
/* 801E2608 001D8388  3C 60 80 47 */	lis r3, lbl_80474B08@ha
/* 801E260C 001D838C  93 ED C2 FC */	stw r31, lbl_805A071C-_SDA_BASE_(r13)
/* 801E2610 001D8390  38 80 00 00 */	li r4, 0
/* 801E2614 001D8394  38 63 4B 08 */	addi r3, r3, lbl_80474B08@l
/* 801E2618 001D8398  48 02 FD 91 */	bl IOS_Open
/* 801E261C 001D839C  2C 03 00 00 */	cmpwi r3, 0
/* 801E2620 001D83A0  90 6D C2 F0 */	stw r3, lbl_805A0710-_SDA_BASE_(r13)
/* 801E2624 001D83A4  40 80 00 10 */	bge lbl_801E2634
/* 801E2628 001D83A8  93 ED C2 EC */	stw r31, lbl_805A070C-_SDA_BASE_(r13)
/* 801E262C 001D83AC  38 60 00 00 */	li r3, 0
/* 801E2630 001D83B0  48 00 00 90 */	b lbl_801E26C0
lbl_801E2634:
/* 801E2634 001D83B4  3C 60 80 47 */	lis r3, lbl_80474B1C@ha
/* 801E2638 001D83B8  38 80 00 00 */	li r4, 0
/* 801E263C 001D83BC  38 63 4B 1C */	addi r3, r3, lbl_80474B1C@l
/* 801E2640 001D83C0  48 02 FD 69 */	bl IOS_Open
/* 801E2644 001D83C4  2C 03 00 00 */	cmpwi r3, 0
/* 801E2648 001D83C8  90 6D C2 F4 */	stw r3, lbl_805A0714-_SDA_BASE_(r13)
/* 801E264C 001D83CC  40 80 00 10 */	bge lbl_801E265C
/* 801E2650 001D83D0  93 ED C2 EC */	stw r31, lbl_805A070C-_SDA_BASE_(r13)
/* 801E2654 001D83D4  38 60 00 00 */	li r3, 0
/* 801E2658 001D83D8  48 00 00 68 */	b lbl_801E26C0
lbl_801E265C:
/* 801E265C 001D83DC  4B FF A8 B5 */	bl OSDisableInterrupts
/* 801E2660 001D83E0  7C 7E 1B 78 */	mr r30, r3
/* 801E2664 001D83E4  3C A0 80 4E */	lis r5, lbl_804DDF60@ha
/* 801E2668 001D83E8  3C E0 80 4E */	lis r7, lbl_804DDF80@ha
/* 801E266C 001D83EC  3D 20 80 1E */	lis r9, __OSStateEventHandler@ha
/* 801E2670 001D83F0  80 6D C2 F4 */	lwz r3, lbl_805A0714-_SDA_BASE_(r13)
/* 801E2674 001D83F4  38 A5 DF 60 */	addi r5, r5, lbl_804DDF60@l
/* 801E2678 001D83F8  38 E7 DF 80 */	addi r7, r7, lbl_804DDF80@l
/* 801E267C 001D83FC  39 29 29 88 */	addi r9, r9, __OSStateEventHandler@l
/* 801E2680 001D8400  38 80 10 00 */	li r4, 0x1000
/* 801E2684 001D8404  38 C0 00 20 */	li r6, 0x20
/* 801E2688 001D8408  39 00 00 20 */	li r8, 0x20
/* 801E268C 001D840C  39 40 00 00 */	li r10, 0
/* 801E2690 001D8410  48 03 05 79 */	bl IOS_IoctlAsync
/* 801E2694 001D8414  2C 03 00 00 */	cmpwi r3, 0
/* 801E2698 001D8418  40 82 00 10 */	bne lbl_801E26A8
/* 801E269C 001D841C  38 00 00 01 */	li r0, 1
/* 801E26A0 001D8420  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E26A4 001D8424  48 00 00 08 */	b lbl_801E26AC
lbl_801E26A8:
/* 801E26A8 001D8428  93 ED C2 F8 */	stw r31, lbl_805A0718-_SDA_BASE_(r13)
lbl_801E26AC:
/* 801E26AC 001D842C  7F C3 F3 78 */	mr r3, r30
/* 801E26B0 001D8430  4B FF A8 89 */	bl OSRestoreInterrupts
/* 801E26B4 001D8434  38 00 00 01 */	li r0, 1
/* 801E26B8 001D8438  38 60 00 01 */	li r3, 1
/* 801E26BC 001D843C  90 0D C2 EC */	stw r0, lbl_805A070C-_SDA_BASE_(r13)
lbl_801E26C0:
/* 801E26C0 001D8440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E26C4 001D8444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E26C8 001D8448  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E26CC 001D844C  7C 08 03 A6 */	mtlr r0
/* 801E26D0 001D8450  38 21 00 10 */	addi r1, r1, 0x10
/* 801E26D4 001D8454  4E 80 00 20 */	blr 

.global __OSShutdownToSBY
__OSShutdownToSBY:
/* 801E26D8 001D8458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E26DC 001D845C  7C 08 02 A6 */	mflr r0
/* 801E26E0 001D8460  3C 60 CC 00 */	lis r3, 0xCC002002@ha
/* 801E26E4 001D8464  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E26E8 001D8468  38 00 00 00 */	li r0, 0
/* 801E26EC 001D846C  B0 03 20 02 */	sth r0, 0xCC002002@l(r3)
/* 801E26F0 001D8470  80 0D C2 EC */	lwz r0, lbl_805A070C-_SDA_BASE_(r13)
/* 801E26F4 001D8474  2C 00 00 00 */	cmpwi r0, 0
/* 801E26F8 001D8478  40 82 00 20 */	bne lbl_801E2718
/* 801E26FC 001D847C  3C 60 80 47 */	lis r3, lbl_80474B30@ha
/* 801E2700 001D8480  3C A0 80 47 */	lis r5, lbl_80474B3C@ha
/* 801E2704 001D8484  38 63 4B 30 */	addi r3, r3, lbl_80474B30@l
/* 801E2708 001D8488  38 80 01 19 */	li r4, 0x119
/* 801E270C 001D848C  38 A5 4B 3C */	addi r5, r5, lbl_80474B3C@l
/* 801E2710 001D8490  4C C6 31 82 */	crclr 6
/* 801E2714 001D8494  4B FF 5F 7D */	bl OSPanic
lbl_801E2718:
/* 801E2718 001D8498  3C 80 80 4E */	lis r4, lbl_804DDFA0@ha
/* 801E271C 001D849C  38 00 00 00 */	li r0, 0
/* 801E2720 001D84A0  3C E0 80 4E */	lis r7, lbl_804DDFC0@ha
/* 801E2724 001D84A4  90 04 DF A0 */	stw r0, lbl_804DDFA0@l(r4)
/* 801E2728 001D84A8  38 A4 DF A0 */	addi r5, r4, -8288
/* 801E272C 001D84AC  80 6D C2 F0 */	lwz r3, lbl_805A0710-_SDA_BASE_(r13)
/* 801E2730 001D84B0  38 E7 DF C0 */	addi r7, r7, lbl_804DDFC0@l
/* 801E2734 001D84B4  38 80 20 03 */	li r4, 0x2003
/* 801E2738 001D84B8  38 C0 00 20 */	li r6, 0x20
/* 801E273C 001D84BC  39 00 00 20 */	li r8, 0x20
/* 801E2740 001D84C0  48 03 06 01 */	bl IOS_Ioctl
/* 801E2744 001D84C4  4B FF A7 CD */	bl OSDisableInterrupts
/* 801E2748 001D84C8  4B FF 50 B9 */	bl ICFlashInvalidate
lbl_801E274C:
/* 801E274C 001D84CC  48 00 00 00 */	b lbl_801E274C

.global __OSHotReset
__OSHotReset:
/* 801E2750 001D84D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E2754 001D84D4  7C 08 02 A6 */	mflr r0
/* 801E2758 001D84D8  3C 60 CC 00 */	lis r3, 0xCC002002@ha
/* 801E275C 001D84DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2760 001D84E0  38 00 00 00 */	li r0, 0
/* 801E2764 001D84E4  B0 03 20 02 */	sth r0, 0xCC002002@l(r3)
/* 801E2768 001D84E8  80 0D C2 EC */	lwz r0, lbl_805A070C-_SDA_BASE_(r13)
/* 801E276C 001D84EC  2C 00 00 00 */	cmpwi r0, 0
/* 801E2770 001D84F0  40 82 00 20 */	bne lbl_801E2790
/* 801E2774 001D84F4  3C 60 80 47 */	lis r3, lbl_80474B30@ha
/* 801E2778 001D84F8  3C A0 80 47 */	lis r5, lbl_80474B74@ha
/* 801E277C 001D84FC  38 63 4B 30 */	addi r3, r3, lbl_80474B30@l
/* 801E2780 001D8500  38 80 01 59 */	li r4, 0x159
/* 801E2784 001D8504  38 A5 4B 74 */	addi r5, r5, lbl_80474B74@l
/* 801E2788 001D8508  4C C6 31 82 */	crclr 6
/* 801E278C 001D850C  4B FF 5F 05 */	bl OSPanic
lbl_801E2790:
/* 801E2790 001D8510  3C A0 80 4E */	lis r5, lbl_804DDFA0@ha
/* 801E2794 001D8514  3C E0 80 4E */	lis r7, lbl_804DDFC0@ha
/* 801E2798 001D8518  80 6D C2 F0 */	lwz r3, lbl_805A0710-_SDA_BASE_(r13)
/* 801E279C 001D851C  38 A5 DF A0 */	addi r5, r5, lbl_804DDFA0@l
/* 801E27A0 001D8520  38 E7 DF C0 */	addi r7, r7, lbl_804DDFC0@l
/* 801E27A4 001D8524  38 80 20 01 */	li r4, 0x2001
/* 801E27A8 001D8528  38 C0 00 20 */	li r6, 0x20
/* 801E27AC 001D852C  39 00 00 20 */	li r8, 0x20
/* 801E27B0 001D8530  48 03 05 91 */	bl IOS_Ioctl
/* 801E27B4 001D8534  4B FF A7 5D */	bl OSDisableInterrupts
/* 801E27B8 001D8538  4B FF 50 49 */	bl ICFlashInvalidate
lbl_801E27BC:
/* 801E27BC 001D853C  48 00 00 00 */	b lbl_801E27BC

.global __OSSetVIForceDimming
__OSSetVIForceDimming:
/* 801E27C0 001D8540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E27C4 001D8544  7C 08 02 A6 */	mflr r0
/* 801E27C8 001D8548  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E27CC 001D854C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E27D0 001D8550  7C BF 2B 78 */	mr r31, r5
/* 801E27D4 001D8554  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E27D8 001D8558  7C 9E 23 78 */	mr r30, r4
/* 801E27DC 001D855C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E27E0 001D8560  7C 7D 1B 78 */	mr r29, r3
/* 801E27E4 001D8564  80 0D C2 EC */	lwz r0, lbl_805A070C-_SDA_BASE_(r13)
/* 801E27E8 001D8568  2C 00 00 00 */	cmpwi r0, 0
/* 801E27EC 001D856C  40 82 00 0C */	bne lbl_801E27F8
/* 801E27F0 001D8570  38 60 FF F6 */	li r3, -10
/* 801E27F4 001D8574  48 00 00 A8 */	b lbl_801E289C
lbl_801E27F8:
/* 801E27F8 001D8578  4B FF A7 19 */	bl OSDisableInterrupts
/* 801E27FC 001D857C  80 0D C2 FC */	lwz r0, lbl_805A071C-_SDA_BASE_(r13)
/* 801E2800 001D8580  2C 00 00 00 */	cmpwi r0, 0
/* 801E2804 001D8584  41 82 00 10 */	beq lbl_801E2814
/* 801E2808 001D8588  4B FF A7 31 */	bl OSRestoreInterrupts
/* 801E280C 001D858C  38 60 00 00 */	li r3, 0
/* 801E2810 001D8590  48 00 00 8C */	b lbl_801E289C
lbl_801E2814:
/* 801E2814 001D8594  38 00 00 01 */	li r0, 1
/* 801E2818 001D8598  90 0D C2 FC */	stw r0, lbl_805A071C-_SDA_BASE_(r13)
/* 801E281C 001D859C  4B FF A7 1D */	bl OSRestoreInterrupts
/* 801E2820 001D85A0  57 A0 38 30 */	slwi r0, r29, 7
/* 801E2824 001D85A4  3C 60 80 4E */	lis r3, lbl_804DDFE0@ha
/* 801E2828 001D85A8  7C 04 FB 78 */	or r4, r0, r31
/* 801E282C 001D85AC  3C E0 80 4E */	lis r7, lbl_804DE000@ha
/* 801E2830 001D85B0  57 C0 18 38 */	slwi r0, r30, 3
/* 801E2834 001D85B4  38 A3 DF E0 */	addi r5, r3, lbl_804DDFE0@l
/* 801E2838 001D85B8  39 80 00 00 */	li r12, 0
/* 801E283C 001D85BC  39 60 FF FF */	li r11, -1
/* 801E2840 001D85C0  7C 84 03 78 */	or r4, r4, r0
/* 801E2844 001D85C4  3C 00 FF FF */	lis r0, 0xffff
/* 801E2848 001D85C8  90 83 DF E0 */	stw r4, -0x2020(r3)
/* 801E284C 001D85CC  3D 20 80 1E */	lis r9, __OSVIDimReplyHandler@ha
/* 801E2850 001D85D0  80 6D C2 F0 */	lwz r3, lbl_805A0710-_SDA_BASE_(r13)
/* 801E2854 001D85D4  38 E7 E0 00 */	addi r7, r7, lbl_804DE000@l
/* 801E2858 001D85D8  91 85 00 04 */	stw r12, 4(r5)
/* 801E285C 001D85DC  39 29 29 70 */	addi r9, r9, __OSVIDimReplyHandler@l
/* 801E2860 001D85E0  38 80 50 01 */	li r4, 0x5001
/* 801E2864 001D85E4  38 C0 00 20 */	li r6, 0x20
/* 801E2868 001D85E8  91 85 00 08 */	stw r12, 8(r5)
/* 801E286C 001D85EC  39 00 00 20 */	li r8, 0x20
/* 801E2870 001D85F0  39 40 00 00 */	li r10, 0
/* 801E2874 001D85F4  91 85 00 0C */	stw r12, 0xc(r5)
/* 801E2878 001D85F8  91 85 00 10 */	stw r12, 0x10(r5)
/* 801E287C 001D85FC  91 65 00 14 */	stw r11, 0x14(r5)
/* 801E2880 001D8600  90 05 00 18 */	stw r0, 0x18(r5)
/* 801E2884 001D8604  91 85 00 1C */	stw r12, 0x1c(r5)
/* 801E2888 001D8608  48 03 03 81 */	bl IOS_IoctlAsync
/* 801E288C 001D860C  2C 03 00 00 */	cmpwi r3, 0
/* 801E2890 001D8610  41 82 00 08 */	beq lbl_801E2898
/* 801E2894 001D8614  48 00 00 08 */	b lbl_801E289C
lbl_801E2898:
/* 801E2898 001D8618  38 60 00 01 */	li r3, 1
lbl_801E289C:
/* 801E289C 001D861C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E28A0 001D8620  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E28A4 001D8624  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E28A8 001D8628  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E28AC 001D862C  7C 08 03 A6 */	mtlr r0
/* 801E28B0 001D8630  38 21 00 20 */	addi r1, r1, 0x20
/* 801E28B4 001D8634  4E 80 00 20 */	blr 

.global __OSSetIdleLEDMode
__OSSetIdleLEDMode:
/* 801E28B8 001D8638  80 0D C2 EC */	lwz r0, lbl_805A070C-_SDA_BASE_(r13)
/* 801E28BC 001D863C  2C 00 00 00 */	cmpwi r0, 0
/* 801E28C0 001D8640  40 82 00 0C */	bne lbl_801E28CC
/* 801E28C4 001D8644  38 60 FF FA */	li r3, -6
/* 801E28C8 001D8648  4E 80 00 20 */	blr 
lbl_801E28CC:
/* 801E28CC 001D864C  3C 80 80 4E */	lis r4, lbl_804DDFA0@ha
/* 801E28D0 001D8650  3C E0 80 4E */	lis r7, lbl_804DDFC0@ha
/* 801E28D4 001D8654  90 64 DF A0 */	stw r3, lbl_804DDFA0@l(r4)
/* 801E28D8 001D8658  38 A4 DF A0 */	addi r5, r4, -8288
/* 801E28DC 001D865C  80 6D C2 F0 */	lwz r3, lbl_805A0710-_SDA_BASE_(r13)
/* 801E28E0 001D8660  38 E7 DF C0 */	addi r7, r7, lbl_804DDFC0@l
/* 801E28E4 001D8664  38 80 60 02 */	li r4, 0x6002
/* 801E28E8 001D8668  38 C0 00 20 */	li r6, 0x20
/* 801E28EC 001D866C  39 00 00 20 */	li r8, 0x20
/* 801E28F0 001D8670  48 03 04 50 */	b IOS_Ioctl
/* 801E28F4 001D8674  4E 80 00 20 */	blr 

.global __OSUnRegisterStateEvent
__OSUnRegisterStateEvent:
/* 801E28F8 001D8678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E28FC 001D867C  7C 08 02 A6 */	mflr r0
/* 801E2900 001D8680  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2904 001D8684  80 0D C2 F8 */	lwz r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E2908 001D8688  2C 00 00 00 */	cmpwi r0, 0
/* 801E290C 001D868C  40 82 00 0C */	bne lbl_801E2918
/* 801E2910 001D8690  38 60 00 00 */	li r3, 0
/* 801E2914 001D8694  48 00 00 4C */	b lbl_801E2960
lbl_801E2918:
/* 801E2918 001D8698  80 0D C2 EC */	lwz r0, lbl_805A070C-_SDA_BASE_(r13)
/* 801E291C 001D869C  2C 00 00 00 */	cmpwi r0, 0
/* 801E2920 001D86A0  40 82 00 0C */	bne lbl_801E292C
/* 801E2924 001D86A4  38 60 FF FA */	li r3, -6
/* 801E2928 001D86A8  48 00 00 38 */	b lbl_801E2960
lbl_801E292C:
/* 801E292C 001D86AC  3C A0 80 4E */	lis r5, lbl_804DDFA0@ha
/* 801E2930 001D86B0  3C E0 80 4E */	lis r7, lbl_804DDFC0@ha
/* 801E2934 001D86B4  80 6D C2 F0 */	lwz r3, lbl_805A0710-_SDA_BASE_(r13)
/* 801E2938 001D86B8  38 A5 DF A0 */	addi r5, r5, lbl_804DDFA0@l
/* 801E293C 001D86BC  38 E7 DF C0 */	addi r7, r7, lbl_804DDFC0@l
/* 801E2940 001D86C0  38 80 30 02 */	li r4, 0x3002
/* 801E2944 001D86C4  38 C0 00 20 */	li r6, 0x20
/* 801E2948 001D86C8  39 00 00 20 */	li r8, 0x20
/* 801E294C 001D86CC  48 03 03 F5 */	bl IOS_Ioctl
/* 801E2950 001D86D0  2C 03 00 00 */	cmpwi r3, 0
/* 801E2954 001D86D4  40 82 00 0C */	bne lbl_801E2960
/* 801E2958 001D86D8  38 00 00 00 */	li r0, 0
/* 801E295C 001D86DC  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
lbl_801E2960:
/* 801E2960 001D86E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2964 001D86E4  7C 08 03 A6 */	mtlr r0
/* 801E2968 001D86E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801E296C 001D86EC  4E 80 00 20 */	blr 

.global __OSVIDimReplyHandler
__OSVIDimReplyHandler:
/* 801E2970 001D86F0  38 00 00 00 */	li r0, 0
/* 801E2974 001D86F4  38 60 00 00 */	li r3, 0
/* 801E2978 001D86F8  90 0D C2 FC */	stw r0, lbl_805A071C-_SDA_BASE_(r13)
/* 801E297C 001D86FC  4E 80 00 20 */	blr 

.global __OSDefaultResetCallback
__OSDefaultResetCallback:
/* 801E2980 001D8700  4E 80 00 20 */	blr 

.global __OSDefaultPowerCallback
__OSDefaultPowerCallback:
/* 801E2984 001D8704  4E 80 00 20 */	blr 

.global __OSStateEventHandler
__OSStateEventHandler:
/* 801E2988 001D8708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E298C 001D870C  7C 08 02 A6 */	mflr r0
/* 801E2990 001D8710  2C 03 00 00 */	cmpwi r3, 0
/* 801E2994 001D8714  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2998 001D8718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E299C 001D871C  41 82 00 20 */	beq lbl_801E29BC
/* 801E29A0 001D8720  3C 60 80 47 */	lis r3, lbl_80474B30@ha
/* 801E29A4 001D8724  3C A0 80 47 */	lis r5, lbl_80474BAC@ha
/* 801E29A8 001D8728  38 63 4B 30 */	addi r3, r3, lbl_80474B30@l
/* 801E29AC 001D872C  38 80 02 F1 */	li r4, 0x2f1
/* 801E29B0 001D8730  38 A5 4B AC */	addi r5, r5, lbl_80474BAC@l
/* 801E29B4 001D8734  4C C6 31 82 */	crclr 6
/* 801E29B8 001D8738  4B FF 5C D9 */	bl OSPanic
lbl_801E29BC:
/* 801E29BC 001D873C  3C 60 80 4E */	lis r3, lbl_804DDF80@ha
/* 801E29C0 001D8740  38 00 00 00 */	li r0, 0
/* 801E29C4 001D8744  80 63 DF 80 */	lwz r3, lbl_804DDF80@l(r3)
/* 801E29C8 001D8748  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E29CC 001D874C  3C 03 FF FE */	addis r0, r3, 0xfffe
/* 801E29D0 001D8750  28 00 00 00 */	cmplwi r0, 0
/* 801E29D4 001D8754  40 82 00 B8 */	bne lbl_801E2A8C
/* 801E29D8 001D8758  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 801E29DC 001D875C  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 801E29E0 001D8760  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 801E29E4 001D8764  40 82 00 0C */	bne lbl_801E29F0
/* 801E29E8 001D8768  38 00 00 01 */	li r0, 1
/* 801E29EC 001D876C  48 00 00 08 */	b lbl_801E29F4
lbl_801E29F0:
/* 801E29F0 001D8770  38 00 00 00 */	li r0, 0
lbl_801E29F4:
/* 801E29F4 001D8774  2C 00 00 00 */	cmpwi r0, 0
/* 801E29F8 001D8778  41 82 00 38 */	beq lbl_801E2A30
/* 801E29FC 001D877C  4B FF A5 15 */	bl OSDisableInterrupts
/* 801E2A00 001D8780  3C 80 80 1E */	lis r4, __OSDefaultResetCallback@ha
/* 801E2A04 001D8784  81 8D C3 04 */	lwz r12, lbl_805A0724-_SDA_BASE_(r13)
/* 801E2A08 001D8788  38 84 29 80 */	addi r4, r4, __OSDefaultResetCallback@l
/* 801E2A0C 001D878C  38 00 00 01 */	li r0, 1
/* 801E2A10 001D8790  7C 7F 1B 78 */	mr r31, r3
/* 801E2A14 001D8794  90 0D C2 E8 */	stw r0, lbl_805A0708-_SDA_BASE_(r13)
/* 801E2A18 001D8798  90 8D C3 04 */	stw r4, lbl_805A0724-_SDA_BASE_(r13)
/* 801E2A1C 001D879C  7D 89 03 A6 */	mtctr r12
/* 801E2A20 001D87A0  4E 80 04 21 */	bctrl 
/* 801E2A24 001D87A4  7F E3 FB 78 */	mr r3, r31
/* 801E2A28 001D87A8  4B FF A5 11 */	bl OSRestoreInterrupts
/* 801E2A2C 001D87AC  48 00 76 39 */	bl VIResetDimmingCount
lbl_801E2A30:
/* 801E2A30 001D87B0  4B FF A4 E1 */	bl OSDisableInterrupts
/* 801E2A34 001D87B4  7C 7F 1B 78 */	mr r31, r3
/* 801E2A38 001D87B8  3C A0 80 4E */	lis r5, lbl_804DDF60@ha
/* 801E2A3C 001D87BC  3C E0 80 4E */	lis r7, lbl_804DDF80@ha
/* 801E2A40 001D87C0  3D 20 80 1E */	lis r9, __OSStateEventHandler@ha
/* 801E2A44 001D87C4  80 6D C2 F4 */	lwz r3, lbl_805A0714-_SDA_BASE_(r13)
/* 801E2A48 001D87C8  38 A5 DF 60 */	addi r5, r5, lbl_804DDF60@l
/* 801E2A4C 001D87CC  38 E7 DF 80 */	addi r7, r7, lbl_804DDF80@l
/* 801E2A50 001D87D0  39 29 29 88 */	addi r9, r9, __OSStateEventHandler@l
/* 801E2A54 001D87D4  38 80 10 00 */	li r4, 0x1000
/* 801E2A58 001D87D8  38 C0 00 20 */	li r6, 0x20
/* 801E2A5C 001D87DC  39 00 00 20 */	li r8, 0x20
/* 801E2A60 001D87E0  39 40 00 00 */	li r10, 0
/* 801E2A64 001D87E4  48 03 01 A5 */	bl IOS_IoctlAsync
/* 801E2A68 001D87E8  2C 03 00 00 */	cmpwi r3, 0
/* 801E2A6C 001D87EC  40 82 00 10 */	bne lbl_801E2A7C
/* 801E2A70 001D87F0  38 00 00 01 */	li r0, 1
/* 801E2A74 001D87F4  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
/* 801E2A78 001D87F8  48 00 00 0C */	b lbl_801E2A84
lbl_801E2A7C:
/* 801E2A7C 001D87FC  38 00 00 00 */	li r0, 0
/* 801E2A80 001D8800  90 0D C2 F8 */	stw r0, lbl_805A0718-_SDA_BASE_(r13)
lbl_801E2A84:
/* 801E2A84 001D8804  7F E3 FB 78 */	mr r3, r31
/* 801E2A88 001D8808  4B FF A4 B1 */	bl OSRestoreInterrupts
lbl_801E2A8C:
/* 801E2A8C 001D880C  3C 60 80 4E */	lis r3, lbl_804DDF80@ha
/* 801E2A90 001D8810  80 03 DF 80 */	lwz r0, lbl_804DDF80@l(r3)
/* 801E2A94 001D8814  28 00 08 00 */	cmplwi r0, 0x800
/* 801E2A98 001D8818  40 82 00 2C */	bne lbl_801E2AC4
/* 801E2A9C 001D881C  4B FF A4 75 */	bl OSDisableInterrupts
/* 801E2AA0 001D8820  3C 80 80 1E */	lis r4, __OSDefaultPowerCallback@ha
/* 801E2AA4 001D8824  81 8D C3 00 */	lwz r12, lbl_805A0720-_SDA_BASE_(r13)
/* 801E2AA8 001D8828  38 84 29 84 */	addi r4, r4, __OSDefaultPowerCallback@l
/* 801E2AAC 001D882C  7C 7F 1B 78 */	mr r31, r3
/* 801E2AB0 001D8830  90 8D C3 00 */	stw r4, lbl_805A0720-_SDA_BASE_(r13)
/* 801E2AB4 001D8834  7D 89 03 A6 */	mtctr r12
/* 801E2AB8 001D8838  4E 80 04 21 */	bctrl 
/* 801E2ABC 001D883C  7F E3 FB 78 */	mr r3, r31
/* 801E2AC0 001D8840  4B FF A4 79 */	bl OSRestoreInterrupts
lbl_801E2AC4:
/* 801E2AC4 001D8844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E2AC8 001D8848  38 60 00 00 */	li r3, 0
/* 801E2ACC 001D884C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2AD0 001D8850  7C 08 03 A6 */	mtlr r0
/* 801E2AD4 001D8854  38 21 00 10 */	addi r1, r1, 0x10
/* 801E2AD8 001D8858  4E 80 00 20 */	blr 

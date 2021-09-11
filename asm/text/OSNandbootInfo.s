.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __OSCreateNandbootInfo
__OSCreateNandbootInfo:
/* 801E3494 001D9214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E3498 001D9218  7C 08 02 A6 */	mflr r0
/* 801E349C 001D921C  3C 60 80 47 */	lis r3, lbl_80474DA8@ha
/* 801E34A0 001D9220  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E34A4 001D9224  38 81 00 08 */	addi r4, r1, 8
/* 801E34A8 001D9228  38 63 4D A8 */	addi r3, r3, lbl_80474DA8@l
/* 801E34AC 001D922C  48 02 81 59 */	bl NANDPrivateGetStatus
/* 801E34B0 001D9230  2C 03 00 00 */	cmpwi r3, 0
/* 801E34B4 001D9234  40 82 00 18 */	bne lbl_801E34CC
/* 801E34B8 001D9238  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801E34BC 001D923C  28 00 00 3F */	cmplwi r0, 0x3f
/* 801E34C0 001D9240  40 82 00 0C */	bne lbl_801E34CC
/* 801E34C4 001D9244  38 60 00 01 */	li r3, 1
/* 801E34C8 001D9248  48 00 00 6C */	b lbl_801E3534
lbl_801E34CC:
/* 801E34CC 001D924C  2C 03 00 00 */	cmpwi r3, 0
/* 801E34D0 001D9250  40 82 00 2C */	bne lbl_801E34FC
/* 801E34D4 001D9254  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801E34D8 001D9258  28 00 00 3F */	cmplwi r0, 0x3f
/* 801E34DC 001D925C  41 82 00 20 */	beq lbl_801E34FC
/* 801E34E0 001D9260  3C 60 80 47 */	lis r3, lbl_80474DA8@ha
/* 801E34E4 001D9264  38 63 4D A8 */	addi r3, r3, lbl_80474DA8@l
/* 801E34E8 001D9268  48 02 74 39 */	bl NANDPrivateDelete
/* 801E34EC 001D926C  2C 03 00 00 */	cmpwi r3, 0
/* 801E34F0 001D9270  41 82 00 1C */	beq lbl_801E350C
/* 801E34F4 001D9274  38 60 00 00 */	li r3, 0
/* 801E34F8 001D9278  48 00 00 3C */	b lbl_801E3534
lbl_801E34FC:
/* 801E34FC 001D927C  2C 03 FF F4 */	cmpwi r3, -12
/* 801E3500 001D9280  41 82 00 0C */	beq lbl_801E350C
/* 801E3504 001D9284  38 60 00 00 */	li r3, 0
/* 801E3508 001D9288  48 00 00 2C */	b lbl_801E3534
lbl_801E350C:
/* 801E350C 001D928C  3C 60 80 47 */	lis r3, lbl_80474DA8@ha
/* 801E3510 001D9290  38 80 00 3F */	li r4, 0x3f
/* 801E3514 001D9294  38 63 4D A8 */	addi r3, r3, lbl_80474DA8@l
/* 801E3518 001D9298  38 A0 00 00 */	li r5, 0
/* 801E351C 001D929C  48 02 72 69 */	bl NANDPrivateCreate
/* 801E3520 001D92A0  2C 03 00 00 */	cmpwi r3, 0
/* 801E3524 001D92A4  41 82 00 0C */	beq lbl_801E3530
/* 801E3528 001D92A8  38 60 00 00 */	li r3, 0
/* 801E352C 001D92AC  48 00 00 08 */	b lbl_801E3534
lbl_801E3530:
/* 801E3530 001D92B0  38 60 00 01 */	li r3, 1
lbl_801E3534:
/* 801E3534 001D92B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3538 001D92B8  7C 08 03 A6 */	mtlr r0
/* 801E353C 001D92BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3540 001D92C0  4E 80 00 20 */	blr 

.global __OSWriteNandbootInfo
__OSWriteNandbootInfo:
/* 801E3544 001D92C4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801E3548 001D92C8  7C 08 02 A6 */	mflr r0
/* 801E354C 001D92CC  39 03 00 04 */	addi r8, r3, 4
/* 801E3550 001D92D0  38 E0 00 00 */	li r7, 0
/* 801E3554 001D92D4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801E3558 001D92D8  38 00 00 40 */	li r0, 0x40
/* 801E355C 001D92DC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801E3560 001D92E0  7C 7F 1B 78 */	mr r31, r3
/* 801E3564 001D92E4  7C 09 03 A6 */	mtctr r0
lbl_801E3568:
/* 801E3568 001D92E8  80 88 00 00 */	lwz r4, 0(r8)
/* 801E356C 001D92EC  80 08 00 04 */	lwz r0, 4(r8)
/* 801E3570 001D92F0  7C E7 22 14 */	add r7, r7, r4
/* 801E3574 001D92F4  80 88 00 08 */	lwz r4, 8(r8)
/* 801E3578 001D92F8  7C E7 02 14 */	add r7, r7, r0
/* 801E357C 001D92FC  80 08 00 0C */	lwz r0, 0xc(r8)
/* 801E3580 001D9300  7C E7 22 14 */	add r7, r7, r4
/* 801E3584 001D9304  80 88 00 10 */	lwz r4, 0x10(r8)
/* 801E3588 001D9308  7C E7 02 14 */	add r7, r7, r0
/* 801E358C 001D930C  80 08 00 14 */	lwz r0, 0x14(r8)
/* 801E3590 001D9310  7C E7 22 14 */	add r7, r7, r4
/* 801E3594 001D9314  80 88 00 18 */	lwz r4, 0x18(r8)
/* 801E3598 001D9318  7C E7 02 14 */	add r7, r7, r0
/* 801E359C 001D931C  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 801E35A0 001D9320  7C E7 22 14 */	add r7, r7, r4
/* 801E35A4 001D9324  80 88 00 20 */	lwz r4, 0x20(r8)
/* 801E35A8 001D9328  7C E7 02 14 */	add r7, r7, r0
/* 801E35AC 001D932C  80 08 00 24 */	lwz r0, 0x24(r8)
/* 801E35B0 001D9330  7C E7 22 14 */	add r7, r7, r4
/* 801E35B4 001D9334  80 88 00 28 */	lwz r4, 0x28(r8)
/* 801E35B8 001D9338  7C E7 02 14 */	add r7, r7, r0
/* 801E35BC 001D933C  80 08 00 2C */	lwz r0, 0x2c(r8)
/* 801E35C0 001D9340  7C E7 22 14 */	add r7, r7, r4
/* 801E35C4 001D9344  80 88 00 30 */	lwz r4, 0x30(r8)
/* 801E35C8 001D9348  7C E7 02 14 */	add r7, r7, r0
/* 801E35CC 001D934C  80 08 00 34 */	lwz r0, 0x34(r8)
/* 801E35D0 001D9350  7C E7 22 14 */	add r7, r7, r4
/* 801E35D4 001D9354  80 88 00 38 */	lwz r4, 0x38(r8)
/* 801E35D8 001D9358  7C E7 02 14 */	add r7, r7, r0
/* 801E35DC 001D935C  80 08 00 3C */	lwz r0, 0x3c(r8)
/* 801E35E0 001D9360  7C E7 22 14 */	add r7, r7, r4
/* 801E35E4 001D9364  39 08 00 40 */	addi r8, r8, 0x40
/* 801E35E8 001D9368  7C E7 02 14 */	add r7, r7, r0
/* 801E35EC 001D936C  42 00 FF 7C */	bdnz lbl_801E3568
/* 801E35F0 001D9370  80 08 00 00 */	lwz r0, 0(r8)
/* 801E35F4 001D9374  3C C0 80 47 */	lis r6, lbl_80474DA8@ha
/* 801E35F8 001D9378  80 A8 00 04 */	lwz r5, 4(r8)
/* 801E35FC 001D937C  38 81 00 08 */	addi r4, r1, 8
/* 801E3600 001D9380  7C E7 02 14 */	add r7, r7, r0
/* 801E3604 001D9384  80 08 00 08 */	lwz r0, 8(r8)
/* 801E3608 001D9388  7C E7 2A 14 */	add r7, r7, r5
/* 801E360C 001D938C  80 A8 00 0C */	lwz r5, 0xc(r8)
/* 801E3610 001D9390  7C E7 02 14 */	add r7, r7, r0
/* 801E3614 001D9394  80 08 00 10 */	lwz r0, 0x10(r8)
/* 801E3618 001D9398  7C E7 2A 14 */	add r7, r7, r5
/* 801E361C 001D939C  80 A8 00 14 */	lwz r5, 0x14(r8)
/* 801E3620 001D93A0  7C E7 02 14 */	add r7, r7, r0
/* 801E3624 001D93A4  80 08 00 18 */	lwz r0, 0x18(r8)
/* 801E3628 001D93A8  7C E7 2A 14 */	add r7, r7, r5
/* 801E362C 001D93AC  38 A0 00 02 */	li r5, 2
/* 801E3630 001D93B0  7C E7 02 14 */	add r7, r7, r0
/* 801E3634 001D93B4  90 E3 00 00 */	stw r7, 0(r3)
/* 801E3638 001D93B8  38 66 4D A8 */	addi r3, r6, lbl_80474DA8@l
/* 801E363C 001D93BC  48 02 84 0D */	bl NANDPrivateOpen
/* 801E3640 001D93C0  2C 03 00 00 */	cmpwi r3, 0
/* 801E3644 001D93C4  40 82 00 40 */	bne lbl_801E3684
/* 801E3648 001D93C8  7F E4 FB 78 */	mr r4, r31
/* 801E364C 001D93CC  38 61 00 08 */	addi r3, r1, 8
/* 801E3650 001D93D0  38 A0 10 20 */	li r5, 0x1020
/* 801E3654 001D93D4  48 02 75 05 */	bl NANDWrite
/* 801E3658 001D93D8  28 03 10 20 */	cmplwi r3, 0x1020
/* 801E365C 001D93DC  41 82 00 14 */	beq lbl_801E3670
/* 801E3660 001D93E0  38 61 00 08 */	addi r3, r1, 8
/* 801E3664 001D93E4  48 02 85 D9 */	bl NANDClose
/* 801E3668 001D93E8  38 60 00 00 */	li r3, 0
/* 801E366C 001D93EC  48 00 00 1C */	b lbl_801E3688
lbl_801E3670:
/* 801E3670 001D93F0  38 61 00 08 */	addi r3, r1, 8
/* 801E3674 001D93F4  48 02 85 C9 */	bl NANDClose
/* 801E3678 001D93F8  7C 60 00 34 */	cntlzw r0, r3
/* 801E367C 001D93FC  54 03 D9 7E */	srwi r3, r0, 5
/* 801E3680 001D9400  48 00 00 08 */	b lbl_801E3688
lbl_801E3684:
/* 801E3684 001D9404  38 60 00 00 */	li r3, 0
lbl_801E3688:
/* 801E3688 001D9408  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801E368C 001D940C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801E3690 001D9410  7C 08 03 A6 */	mtlr r0
/* 801E3694 001D9414  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801E3698 001D9418  4E 80 00 20 */	blr 

.global __OSGetNandbootInfoHeader
__OSGetNandbootInfoHeader:
/* 801E369C 001D941C  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 801E36A0 001D9420  7C 2C 0B 78 */	mr r12, r1
/* 801E36A4 001D9424  21 6B FE 00 */	subfic r11, r11, -512
/* 801E36A8 001D9428  7C 21 59 6E */	stwux r1, r1, r11
/* 801E36AC 001D942C  7C 08 02 A6 */	mflr r0
/* 801E36B0 001D9430  38 80 00 00 */	li r4, 0
/* 801E36B4 001D9434  38 A0 00 20 */	li r5, 0x20
/* 801E36B8 001D9438  90 0C 00 04 */	stw r0, 4(r12)
/* 801E36BC 001D943C  93 EC FF FC */	stw r31, -4(r12)
/* 801E36C0 001D9440  93 CC FF F8 */	stw r30, -8(r12)
/* 801E36C4 001D9444  93 AC FF F4 */	stw r29, -0xc(r12)
/* 801E36C8 001D9448  93 8C FF F0 */	stw r28, -0x10(r12)
/* 801E36CC 001D944C  7C 7C 1B 78 */	mr r28, r3
/* 801E36D0 001D9450  4B E2 0D 6D */	bl memset
/* 801E36D4 001D9454  3C 60 80 47 */	lis r3, lbl_80474DA8@ha
/* 801E36D8 001D9458  38 81 01 40 */	addi r4, r1, 0x140
/* 801E36DC 001D945C  38 63 4D A8 */	addi r3, r3, lbl_80474DA8@l
/* 801E36E0 001D9460  38 A0 00 01 */	li r5, 1
/* 801E36E4 001D9464  48 02 83 65 */	bl NANDPrivateOpen
/* 801E36E8 001D9468  2C 03 00 00 */	cmpwi r3, 0
/* 801E36EC 001D946C  41 82 00 0C */	beq lbl_801E36F8
/* 801E36F0 001D9470  38 60 00 00 */	li r3, 0
/* 801E36F4 001D9474  48 00 01 2C */	b lbl_801E3820
lbl_801E36F8:
/* 801E36F8 001D9478  38 61 01 40 */	addi r3, r1, 0x140
/* 801E36FC 001D947C  38 81 00 20 */	addi r4, r1, 0x20
/* 801E3700 001D9480  38 A0 00 20 */	li r5, 0x20
/* 801E3704 001D9484  48 02 73 75 */	bl NANDRead
/* 801E3708 001D9488  28 03 00 20 */	cmplwi r3, 0x20
/* 801E370C 001D948C  41 82 00 14 */	beq lbl_801E3720
/* 801E3710 001D9490  38 61 01 40 */	addi r3, r1, 0x140
/* 801E3714 001D9494  48 02 85 29 */	bl NANDClose
/* 801E3718 001D9498  38 60 00 00 */	li r3, 0
/* 801E371C 001D949C  48 00 01 04 */	b lbl_801E3820
lbl_801E3720:
/* 801E3720 001D94A0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801E3724 001D94A4  3B C0 00 00 */	li r30, 0
/* 801E3728 001D94A8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801E372C 001D94AC  3B E0 00 08 */	li r31, 8
/* 801E3730 001D94B0  7F BD 02 14 */	add r29, r29, r0
/* 801E3734 001D94B4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801E3738 001D94B8  7F BD 02 14 */	add r29, r29, r0
/* 801E373C 001D94BC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801E3740 001D94C0  7F BD 02 14 */	add r29, r29, r0
/* 801E3744 001D94C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E3748 001D94C8  7F BD 02 14 */	add r29, r29, r0
/* 801E374C 001D94CC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801E3750 001D94D0  7F BD 02 14 */	add r29, r29, r0
/* 801E3754 001D94D4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801E3758 001D94D8  7F BD 02 14 */	add r29, r29, r0
lbl_801E375C:
/* 801E375C 001D94DC  38 61 01 40 */	addi r3, r1, 0x140
/* 801E3760 001D94E0  38 81 00 40 */	addi r4, r1, 0x40
/* 801E3764 001D94E4  38 A0 01 00 */	li r5, 0x100
/* 801E3768 001D94E8  48 02 73 11 */	bl NANDRead
/* 801E376C 001D94EC  2C 03 01 00 */	cmpwi r3, 0x100
/* 801E3770 001D94F0  41 82 00 14 */	beq lbl_801E3784
/* 801E3774 001D94F4  38 61 01 40 */	addi r3, r1, 0x140
/* 801E3778 001D94F8  48 02 84 C5 */	bl NANDClose
/* 801E377C 001D94FC  38 60 00 00 */	li r3, 0
/* 801E3780 001D9500  48 00 00 A0 */	b lbl_801E3820
lbl_801E3784:
/* 801E3784 001D9504  38 61 00 40 */	addi r3, r1, 0x40
/* 801E3788 001D9508  7F E9 03 A6 */	mtctr r31
lbl_801E378C:
/* 801E378C 001D950C  80 03 00 00 */	lwz r0, 0(r3)
/* 801E3790 001D9510  7F BD 02 14 */	add r29, r29, r0
/* 801E3794 001D9514  80 03 00 04 */	lwz r0, 4(r3)
/* 801E3798 001D9518  7F BD 02 14 */	add r29, r29, r0
/* 801E379C 001D951C  80 03 00 08 */	lwz r0, 8(r3)
/* 801E37A0 001D9520  7F BD 02 14 */	add r29, r29, r0
/* 801E37A4 001D9524  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801E37A8 001D9528  7F BD 02 14 */	add r29, r29, r0
/* 801E37AC 001D952C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801E37B0 001D9530  7F BD 02 14 */	add r29, r29, r0
/* 801E37B4 001D9534  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801E37B8 001D9538  7F BD 02 14 */	add r29, r29, r0
/* 801E37BC 001D953C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801E37C0 001D9540  7F BD 02 14 */	add r29, r29, r0
/* 801E37C4 001D9544  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801E37C8 001D9548  38 63 00 20 */	addi r3, r3, 0x20
/* 801E37CC 001D954C  7F BD 02 14 */	add r29, r29, r0
/* 801E37D0 001D9550  42 00 FF BC */	bdnz lbl_801E378C
/* 801E37D4 001D9554  3B DE 00 01 */	addi r30, r30, 1
/* 801E37D8 001D9558  28 1E 00 10 */	cmplwi r30, 0x10
/* 801E37DC 001D955C  41 80 FF 80 */	blt lbl_801E375C
/* 801E37E0 001D9560  38 61 01 40 */	addi r3, r1, 0x140
/* 801E37E4 001D9564  48 02 84 59 */	bl NANDClose
/* 801E37E8 001D9568  2C 03 00 00 */	cmpwi r3, 0
/* 801E37EC 001D956C  41 82 00 0C */	beq lbl_801E37F8
/* 801E37F0 001D9570  38 60 00 00 */	li r3, 0
/* 801E37F4 001D9574  48 00 00 2C */	b lbl_801E3820
lbl_801E37F8:
/* 801E37F8 001D9578  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801E37FC 001D957C  7C 00 E8 40 */	cmplw r0, r29
/* 801E3800 001D9580  40 82 00 1C */	bne lbl_801E381C
/* 801E3804 001D9584  7F 83 E3 78 */	mr r3, r28
/* 801E3808 001D9588  38 81 00 20 */	addi r4, r1, 0x20
/* 801E380C 001D958C  38 A0 00 20 */	li r5, 0x20
/* 801E3810 001D9590  4B E2 0B 29 */	bl func_80004338
/* 801E3814 001D9594  38 60 00 01 */	li r3, 1
/* 801E3818 001D9598  48 00 00 08 */	b lbl_801E3820
lbl_801E381C:
/* 801E381C 001D959C  38 60 00 00 */	li r3, 0
lbl_801E3820:
/* 801E3820 001D95A0  81 41 00 00 */	lwz r10, 0(r1)
/* 801E3824 001D95A4  80 0A 00 04 */	lwz r0, 4(r10)
/* 801E3828 001D95A8  83 EA FF FC */	lwz r31, -4(r10)
/* 801E382C 001D95AC  83 CA FF F8 */	lwz r30, -8(r10)
/* 801E3830 001D95B0  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 801E3834 001D95B4  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 801E3838 001D95B8  7C 08 03 A6 */	mtlr r0
/* 801E383C 001D95BC  7D 41 53 78 */	mr r1, r10
/* 801E3840 001D95C0  4E 80 00 20 */	blr 

.global OSGetLastTitleId
OSGetLastTitleId:
/* 801E3844 001D95C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E3848 001D95C8  7C 08 02 A6 */	mflr r0
/* 801E384C 001D95CC  3C 60 80 00 */	lis r3, 0x80003186@ha
/* 801E3850 001D95D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E3854 001D95D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801E3858 001D95D8  3B E0 00 00 */	li r31, 0
/* 801E385C 001D95DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801E3860 001D95E0  3B C0 00 00 */	li r30, 0
/* 801E3864 001D95E4  88 03 31 86 */	lbz r0, 0x80003186@l(r3)
/* 801E3868 001D95E8  2C 00 00 00 */	cmpwi r0, 0
/* 801E386C 001D95EC  41 82 00 1C */	beq lbl_801E3888
/* 801E3870 001D95F0  38 61 00 08 */	addi r3, r1, 8
/* 801E3874 001D95F4  4B FF FE 29 */	bl __OSGetNandbootInfoHeader
/* 801E3878 001D95F8  2C 03 00 00 */	cmpwi r3, 0
/* 801E387C 001D95FC  41 82 00 0C */	beq lbl_801E3888
/* 801E3880 001D9600  83 E1 00 20 */	lwz r31, 0x20(r1)
/* 801E3884 001D9604  83 C1 00 24 */	lwz r30, 0x24(r1)
lbl_801E3888:
/* 801E3888 001D9608  7F E3 FB 78 */	mr r3, r31
/* 801E388C 001D960C  7F C4 F3 78 */	mr r4, r30
/* 801E3890 001D9610  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801E3894 001D9614  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801E3898 001D9618  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E389C 001D961C  7C 08 03 A6 */	mtlr r0
/* 801E38A0 001D9620  38 21 00 30 */	addi r1, r1, 0x30
/* 801E38A4 001D9624  4E 80 00 20 */	blr 


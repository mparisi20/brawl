.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global muClearGetDataManager$7__dt
muClearGetDataManager$7__dt:
/* 800BA484 000B0204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BA488 000B0208  7C 08 02 A6 */	mflr r0
/* 800BA48C 000B020C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA490 000B0210  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BA494 000B0214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BA498 000B0218  7C 7F 1B 78 */	mr r31, r3
/* 800BA49C 000B021C  41 82 00 C8 */	beq lbl_800BA564
/* 800BA4A0 000B0220  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 800BA4A4 000B0224  38 00 00 08 */	li r0, 8
/* 800BA4A8 000B0228  7F E6 FB 78 */	mr r6, r31
/* 800BA4AC 000B022C  38 A0 00 00 */	li r5, 0
/* 800BA4B0 000B0230  80 63 00 24 */	lwz r3, 0x24(r3)
/* 800BA4B4 000B0234  38 63 15 28 */	addi r3, r3, 0x1528
/* 800BA4B8 000B0238  7C 09 03 A6 */	mtctr r0
lbl_800BA4BC:
/* 800BA4BC 000B023C  80 06 00 08 */	lwz r0, 8(r6)
/* 800BA4C0 000B0240  7C E3 2A 14 */	add r7, r3, r5
/* 800BA4C4 000B0244  7C 03 29 AE */	stbx r0, r3, r5
/* 800BA4C8 000B0248  38 A5 00 08 */	addi r5, r5, 8
/* 800BA4CC 000B024C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 800BA4D0 000B0250  98 07 00 01 */	stb r0, 1(r7)
/* 800BA4D4 000B0254  80 06 00 10 */	lwz r0, 0x10(r6)
/* 800BA4D8 000B0258  98 07 00 02 */	stb r0, 2(r7)
/* 800BA4DC 000B025C  80 06 00 14 */	lwz r0, 0x14(r6)
/* 800BA4E0 000B0260  98 07 00 03 */	stb r0, 3(r7)
/* 800BA4E4 000B0264  80 06 00 18 */	lwz r0, 0x18(r6)
/* 800BA4E8 000B0268  98 07 00 04 */	stb r0, 4(r7)
/* 800BA4EC 000B026C  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 800BA4F0 000B0270  98 07 00 05 */	stb r0, 5(r7)
/* 800BA4F4 000B0274  80 06 00 20 */	lwz r0, 0x20(r6)
/* 800BA4F8 000B0278  98 07 00 06 */	stb r0, 6(r7)
/* 800BA4FC 000B027C  80 06 00 24 */	lwz r0, 0x24(r6)
/* 800BA500 000B0280  98 07 00 07 */	stb r0, 7(r7)
/* 800BA504 000B0284  7C E3 2A 14 */	add r7, r3, r5
/* 800BA508 000B0288  80 06 00 28 */	lwz r0, 0x28(r6)
/* 800BA50C 000B028C  7C 03 29 AE */	stbx r0, r3, r5
/* 800BA510 000B0290  38 A5 00 08 */	addi r5, r5, 8
/* 800BA514 000B0294  80 06 00 2C */	lwz r0, 0x2c(r6)
/* 800BA518 000B0298  98 07 00 01 */	stb r0, 1(r7)
/* 800BA51C 000B029C  80 06 00 30 */	lwz r0, 0x30(r6)
/* 800BA520 000B02A0  98 07 00 02 */	stb r0, 2(r7)
/* 800BA524 000B02A4  80 06 00 34 */	lwz r0, 0x34(r6)
/* 800BA528 000B02A8  98 07 00 03 */	stb r0, 3(r7)
/* 800BA52C 000B02AC  80 06 00 38 */	lwz r0, 0x38(r6)
/* 800BA530 000B02B0  98 07 00 04 */	stb r0, 4(r7)
/* 800BA534 000B02B4  80 06 00 3C */	lwz r0, 0x3c(r6)
/* 800BA538 000B02B8  98 07 00 05 */	stb r0, 5(r7)
/* 800BA53C 000B02BC  80 06 00 40 */	lwz r0, 0x40(r6)
/* 800BA540 000B02C0  98 07 00 06 */	stb r0, 6(r7)
/* 800BA544 000B02C4  80 06 00 44 */	lwz r0, 0x44(r6)
/* 800BA548 000B02C8  38 C6 00 40 */	addi r6, r6, 0x40
/* 800BA54C 000B02CC  98 07 00 07 */	stb r0, 7(r7)
/* 800BA550 000B02D0  42 00 FF 6C */	bdnz lbl_800BA4BC
/* 800BA554 000B02D4  2C 04 00 00 */	cmpwi r4, 0
/* 800BA558 000B02D8  40 81 00 0C */	ble lbl_800BA564
/* 800BA55C 000B02DC  7F E3 FB 78 */	mr r3, r31
/* 800BA560 000B02E0  4B F5 23 69 */	bl __dl
lbl_800BA564:
/* 800BA564 000B02E4  7F E3 FB 78 */	mr r3, r31
/* 800BA568 000B02E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BA56C 000B02EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BA570 000B02F0  7C 08 03 A6 */	mtlr r0
/* 800BA574 000B02F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BA578 000B02F8  4E 80 00 20 */	blr 

.global muClearGetDataManager$7setData
muClearGetDataManager$7setData:
/* 800BA57C 000B02FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800BA580 000B0300  7C 08 02 A6 */	mflr r0
/* 800BA584 000B0304  90 01 00 54 */	stw r0, 0x54(r1)
/* 800BA588 000B0308  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800BA58C 000B030C  7C 7F 1B 78 */	mr r31, r3
/* 800BA590 000B0310  38 61 00 08 */	addi r3, r1, 8
/* 800BA594 000B0314  4B F8 98 89 */	bl utRelocate$7__ct
/* 800BA598 000B0318  3C 80 80 45 */	lis r4, lbl_80456688@ha
/* 800BA59C 000B031C  38 61 00 08 */	addi r3, r1, 8
/* 800BA5A0 000B0320  38 84 66 88 */	addi r4, r4, lbl_80456688@l
/* 800BA5A4 000B0324  4B F8 9A 09 */	bl utRelocate$7getPublicAddress
/* 800BA5A8 000B0328  38 00 00 00 */	li r0, 0
/* 800BA5AC 000B032C  90 7F 00 00 */	stw r3, 0(r31)
/* 800BA5B0 000B0330  90 1F 00 04 */	stw r0, 4(r31)
/* 800BA5B4 000B0334  48 00 00 10 */	b lbl_800BA5C4
lbl_800BA5B8:
/* 800BA5B8 000B0338  80 7F 00 04 */	lwz r3, 4(r31)
/* 800BA5BC 000B033C  38 03 00 01 */	addi r0, r3, 1
/* 800BA5C0 000B0340  90 1F 00 04 */	stw r0, 4(r31)
lbl_800BA5C4:
/* 800BA5C4 000B0344  80 9F 00 04 */	lwz r4, 4(r31)
/* 800BA5C8 000B0348  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BA5CC 000B034C  1C 04 00 28 */	mulli r0, r4, 0x28
/* 800BA5D0 000B0350  7C 03 00 2E */	lwzx r0, r3, r0
/* 800BA5D4 000B0354  2C 00 00 00 */	cmpwi r0, 0
/* 800BA5D8 000B0358  40 80 FF E0 */	bge lbl_800BA5B8
/* 800BA5DC 000B035C  28 04 00 80 */	cmplwi r4, 0x80
/* 800BA5E0 000B0360  40 81 00 0C */	ble lbl_800BA5EC
/* 800BA5E4 000B0364  38 00 00 80 */	li r0, 0x80
/* 800BA5E8 000B0368  90 1F 00 04 */	stw r0, 4(r31)
lbl_800BA5EC:
/* 800BA5EC 000B036C  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 800BA5F0 000B0370  38 00 00 08 */	li r0, 8
/* 800BA5F4 000B0374  38 A0 00 00 */	li r5, 0
/* 800BA5F8 000B0378  80 63 00 24 */	lwz r3, 0x24(r3)
/* 800BA5FC 000B037C  38 83 15 28 */	addi r4, r3, 0x1528
/* 800BA600 000B0380  7C 09 03 A6 */	mtctr r0
lbl_800BA604:
/* 800BA604 000B0384  7C 04 28 AE */	lbzx r0, r4, r5
/* 800BA608 000B0388  7C 64 2A 14 */	add r3, r4, r5
/* 800BA60C 000B038C  38 A5 00 08 */	addi r5, r5, 8
/* 800BA610 000B0390  90 1F 00 08 */	stw r0, 8(r31)
/* 800BA614 000B0394  88 03 00 01 */	lbz r0, 1(r3)
/* 800BA618 000B0398  90 1F 00 0C */	stw r0, 0xc(r31)
/* 800BA61C 000B039C  88 03 00 02 */	lbz r0, 2(r3)
/* 800BA620 000B03A0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800BA624 000B03A4  88 03 00 03 */	lbz r0, 3(r3)
/* 800BA628 000B03A8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 800BA62C 000B03AC  88 03 00 04 */	lbz r0, 4(r3)
/* 800BA630 000B03B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 800BA634 000B03B4  88 03 00 05 */	lbz r0, 5(r3)
/* 800BA638 000B03B8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800BA63C 000B03BC  88 03 00 06 */	lbz r0, 6(r3)
/* 800BA640 000B03C0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800BA644 000B03C4  88 03 00 07 */	lbz r0, 7(r3)
/* 800BA648 000B03C8  7C 64 2A 14 */	add r3, r4, r5
/* 800BA64C 000B03CC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800BA650 000B03D0  7C 04 28 AE */	lbzx r0, r4, r5
/* 800BA654 000B03D4  38 A5 00 08 */	addi r5, r5, 8
/* 800BA658 000B03D8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 800BA65C 000B03DC  88 03 00 01 */	lbz r0, 1(r3)
/* 800BA660 000B03E0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 800BA664 000B03E4  88 03 00 02 */	lbz r0, 2(r3)
/* 800BA668 000B03E8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 800BA66C 000B03EC  88 03 00 03 */	lbz r0, 3(r3)
/* 800BA670 000B03F0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 800BA674 000B03F4  88 03 00 04 */	lbz r0, 4(r3)
/* 800BA678 000B03F8  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800BA67C 000B03FC  88 03 00 05 */	lbz r0, 5(r3)
/* 800BA680 000B0400  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 800BA684 000B0404  88 03 00 06 */	lbz r0, 6(r3)
/* 800BA688 000B0408  90 1F 00 40 */	stw r0, 0x40(r31)
/* 800BA68C 000B040C  88 03 00 07 */	lbz r0, 7(r3)
/* 800BA690 000B0410  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800BA694 000B0414  3B FF 00 40 */	addi r31, r31, 0x40
/* 800BA698 000B0418  42 00 FF 6C */	bdnz lbl_800BA604
/* 800BA69C 000B041C  38 61 00 08 */	addi r3, r1, 8
/* 800BA6A0 000B0420  38 80 FF FF */	li r4, -1
/* 800BA6A4 000B0424  4B F8 98 C9 */	bl utRelocate$7__dt
/* 800BA6A8 000B0428  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800BA6AC 000B042C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800BA6B0 000B0430  7C 08 03 A6 */	mtlr r0
/* 800BA6B4 000B0434  38 21 00 50 */	addi r1, r1, 0x50
/* 800BA6B8 000B0438  4E 80 00 20 */	blr 

.global muClearGetDataManager$7setOpenState
muClearGetDataManager$7setOpenState:
/* 800BA6BC 000B043C  54 86 10 3A */	slwi r6, r4, 2
/* 800BA6C0 000B0440  28 04 00 04 */	cmplwi r4, 4
/* 800BA6C4 000B0444  7C A3 32 14 */	add r5, r3, r6
/* 800BA6C8 000B0448  38 00 00 02 */	li r0, 2
/* 800BA6CC 000B044C  90 05 00 08 */	stw r0, 8(r5)
/* 800BA6D0 000B0450  41 80 00 18 */	blt lbl_800BA6E8
/* 800BA6D4 000B0454  80 05 FF F8 */	lwz r0, -8(r5)
/* 800BA6D8 000B0458  2C 00 00 00 */	cmpwi r0, 0
/* 800BA6DC 000B045C  40 82 00 0C */	bne lbl_800BA6E8
/* 800BA6E0 000B0460  38 00 00 01 */	li r0, 1
/* 800BA6E4 000B0464  90 05 FF F8 */	stw r0, -8(r5)
lbl_800BA6E8:
/* 800BA6E8 000B0468  38 04 00 04 */	addi r0, r4, 4
/* 800BA6EC 000B046C  28 00 00 80 */	cmplwi r0, 0x80
/* 800BA6F0 000B0470  40 80 00 1C */	bge lbl_800BA70C
/* 800BA6F4 000B0474  7C 83 32 14 */	add r4, r3, r6
/* 800BA6F8 000B0478  80 04 00 18 */	lwz r0, 0x18(r4)
/* 800BA6FC 000B047C  2C 00 00 00 */	cmpwi r0, 0
/* 800BA700 000B0480  40 82 00 0C */	bne lbl_800BA70C
/* 800BA704 000B0484  38 00 00 01 */	li r0, 1
/* 800BA708 000B0488  90 04 00 18 */	stw r0, 0x18(r4)
lbl_800BA70C:
/* 800BA70C 000B048C  80 8D BC C0 */	lwz r4, lbl_805A00E0-_SDA_BASE_(r13)
/* 800BA710 000B0490  38 00 00 08 */	li r0, 8
/* 800BA714 000B0494  38 A0 00 00 */	li r5, 0
/* 800BA718 000B0498  80 84 00 24 */	lwz r4, 0x24(r4)
/* 800BA71C 000B049C  38 84 15 28 */	addi r4, r4, 0x1528
/* 800BA720 000B04A0  7C 09 03 A6 */	mtctr r0
lbl_800BA724:
/* 800BA724 000B04A4  80 03 00 08 */	lwz r0, 8(r3)
/* 800BA728 000B04A8  7C C4 2A 14 */	add r6, r4, r5
/* 800BA72C 000B04AC  7C 04 29 AE */	stbx r0, r4, r5
/* 800BA730 000B04B0  38 A5 00 08 */	addi r5, r5, 8
/* 800BA734 000B04B4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800BA738 000B04B8  98 06 00 01 */	stb r0, 1(r6)
/* 800BA73C 000B04BC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800BA740 000B04C0  98 06 00 02 */	stb r0, 2(r6)
/* 800BA744 000B04C4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800BA748 000B04C8  98 06 00 03 */	stb r0, 3(r6)
/* 800BA74C 000B04CC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800BA750 000B04D0  98 06 00 04 */	stb r0, 4(r6)
/* 800BA754 000B04D4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800BA758 000B04D8  98 06 00 05 */	stb r0, 5(r6)
/* 800BA75C 000B04DC  80 03 00 20 */	lwz r0, 0x20(r3)
/* 800BA760 000B04E0  98 06 00 06 */	stb r0, 6(r6)
/* 800BA764 000B04E4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800BA768 000B04E8  98 06 00 07 */	stb r0, 7(r6)
/* 800BA76C 000B04EC  7C C4 2A 14 */	add r6, r4, r5
/* 800BA770 000B04F0  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800BA774 000B04F4  7C 04 29 AE */	stbx r0, r4, r5
/* 800BA778 000B04F8  38 A5 00 08 */	addi r5, r5, 8
/* 800BA77C 000B04FC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800BA780 000B0500  98 06 00 01 */	stb r0, 1(r6)
/* 800BA784 000B0504  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800BA788 000B0508  98 06 00 02 */	stb r0, 2(r6)
/* 800BA78C 000B050C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800BA790 000B0510  98 06 00 03 */	stb r0, 3(r6)
/* 800BA794 000B0514  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800BA798 000B0518  98 06 00 04 */	stb r0, 4(r6)
/* 800BA79C 000B051C  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800BA7A0 000B0520  98 06 00 05 */	stb r0, 5(r6)
/* 800BA7A4 000B0524  80 03 00 40 */	lwz r0, 0x40(r3)
/* 800BA7A8 000B0528  98 06 00 06 */	stb r0, 6(r6)
/* 800BA7AC 000B052C  80 03 00 44 */	lwz r0, 0x44(r3)
/* 800BA7B0 000B0530  38 63 00 40 */	addi r3, r3, 0x40
/* 800BA7B4 000B0534  98 06 00 07 */	stb r0, 7(r6)
/* 800BA7B8 000B0538  42 00 FF 6C */	bdnz lbl_800BA724
/* 800BA7BC 000B053C  4E 80 00 20 */	blr 


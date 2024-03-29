.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NCDGetCurrentIfConfig
NCDGetCurrentIfConfig:
/* 8038E3F0 00384170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038E3F4 00384174  7C 08 02 A6 */	mflr r0
/* 8038E3F8 00384178  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038E3FC 0038417C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038E400 00384180  3B E0 00 00 */	li r31, 0
/* 8038E404 00384184  7C 03 F8 40 */	cmplw r3, r31
/* 8038E408 00384188  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038E40C 0038418C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038E410 00384190  7C 7D 1B 78 */	mr r29, r3
/* 8038E414 00384194  40 82 00 0C */	bne lbl_8038E420
/* 8038E418 00384198  38 60 FF FD */	li r3, -3
/* 8038E41C 0038419C  48 00 00 B0 */	b lbl_8038E4CC
lbl_8038E420:
/* 8038E420 003841A0  48 00 07 5D */	bl LockRight
/* 8038E424 003841A4  3C 60 80 49 */	lis r3, lbl_80491298@ha
/* 8038E428 003841A8  38 80 00 00 */	li r4, 0
/* 8038E42C 003841AC  38 63 12 98 */	addi r3, r3, lbl_80491298@l
/* 8038E430 003841B0  38 A0 00 03 */	li r5, 3
/* 8038E434 003841B4  48 00 05 B5 */	bl ExecConfigCommand
/* 8038E438 003841B8  2C 03 00 00 */	cmpwi r3, 0
/* 8038E43C 003841BC  7C 7F 1B 78 */	mr r31, r3
/* 8038E440 003841C0  40 82 00 7C */	bne lbl_8038E4BC
/* 8038E444 003841C4  3C 60 80 53 */	lis r3, lbl_805365A0@ha
/* 8038E448 003841C8  83 CD CD 1C */	lwz r30, lbl_805A113C-_SDA_BASE_(r13)
/* 8038E44C 003841CC  38 63 65 A0 */	addi r3, r3, lbl_805365A0@l
/* 8038E450 003841D0  80 03 00 04 */	lwz r0, 4(r3)
/* 8038E454 003841D4  2C 00 00 00 */	cmpwi r0, 0
/* 8038E458 003841D8  41 80 00 0C */	blt lbl_8038E464
/* 8038E45C 003841DC  2C 00 00 03 */	cmpwi r0, 3
/* 8038E460 003841E0  41 80 00 0C */	blt lbl_8038E46C
lbl_8038E464:
/* 8038E464 003841E4  3B E0 FF F9 */	li r31, -7
/* 8038E468 003841E8  48 00 00 54 */	b lbl_8038E4BC
lbl_8038E46C:
/* 8038E46C 003841EC  1C 00 09 1C */	mulli r0, r0, 0x91c
/* 8038E470 003841F0  7C 9E 02 14 */	add r4, r30, r0
/* 8038E474 003841F4  88 04 00 08 */	lbz r0, 8(r4)
/* 8038E478 003841F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8038E47C 003841FC  41 82 00 20 */	beq lbl_8038E49C
/* 8038E480 00384200  38 00 00 02 */	li r0, 2
/* 8038E484 00384204  38 7D 00 02 */	addi r3, r29, 2
/* 8038E488 00384208  98 1D 00 00 */	stb r0, 0(r29)
/* 8038E48C 0038420C  38 84 07 C8 */	addi r4, r4, 0x7c8
/* 8038E490 00384210  38 A0 00 04 */	li r5, 4
/* 8038E494 00384214  4B C7 5E A5 */	bl memcpy
/* 8038E498 00384218  48 00 00 1C */	b lbl_8038E4B4
lbl_8038E49C:
/* 8038E49C 0038421C  38 00 00 01 */	li r0, 1
/* 8038E4A0 00384220  38 7D 00 02 */	addi r3, r29, 2
/* 8038E4A4 00384224  98 1D 00 00 */	stb r0, 0(r29)
/* 8038E4A8 00384228  38 84 07 C8 */	addi r4, r4, 0x7c8
/* 8038E4AC 0038422C  38 A0 01 5C */	li r5, 0x15c
/* 8038E4B0 00384230  4B C7 5E 89 */	bl memcpy
lbl_8038E4B4:
/* 8038E4B4 00384234  88 1E 00 06 */	lbz r0, 6(r30)
/* 8038E4B8 00384238  98 1D 00 01 */	stb r0, 1(r29)
lbl_8038E4BC:
/* 8038E4BC 0038423C  3C 60 80 53 */	lis r3, lbl_80536580@ha
/* 8038E4C0 00384240  38 63 65 80 */	addi r3, r3, lbl_80536580@l
/* 8038E4C4 00384244  4B E5 07 CD */	bl OSUnlockMutex
/* 8038E4C8 00384248  7F E3 FB 78 */	mr r3, r31
lbl_8038E4CC:
/* 8038E4CC 0038424C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038E4D0 00384250  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038E4D4 00384254  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038E4D8 00384258  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038E4DC 0038425C  7C 08 03 A6 */	mtlr r0
/* 8038E4E0 00384260  38 21 00 20 */	addi r1, r1, 0x20
/* 8038E4E4 00384264  4E 80 00 20 */	blr 

.global NCDGetCurrentIpConfig
NCDGetCurrentIpConfig:
/* 8038E4E8 00384268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038E4EC 0038426C  7C 08 02 A6 */	mflr r0
/* 8038E4F0 00384270  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038E4F4 00384274  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038E4F8 00384278  7C 7F 1B 78 */	mr r31, r3
/* 8038E4FC 0038427C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038E500 00384280  3B C0 00 00 */	li r30, 0
/* 8038E504 00384284  7C 03 F0 40 */	cmplw r3, r30
/* 8038E508 00384288  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038E50C 0038428C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8038E510 00384290  40 82 00 0C */	bne lbl_8038E51C
/* 8038E514 00384294  38 60 FF FD */	li r3, -3
/* 8038E518 00384298  48 00 01 08 */	b lbl_8038E620
lbl_8038E51C:
/* 8038E51C 0038429C  48 00 06 61 */	bl LockRight
/* 8038E520 003842A0  3C 60 80 49 */	lis r3, lbl_804912B0@ha
/* 8038E524 003842A4  38 80 00 00 */	li r4, 0
/* 8038E528 003842A8  38 63 12 B0 */	addi r3, r3, lbl_804912B0@l
/* 8038E52C 003842AC  38 A0 00 03 */	li r5, 3
/* 8038E530 003842B0  48 00 04 B9 */	bl ExecConfigCommand
/* 8038E534 003842B4  2C 03 00 00 */	cmpwi r3, 0
/* 8038E538 003842B8  7C 7E 1B 78 */	mr r30, r3
/* 8038E53C 003842BC  40 82 00 D4 */	bne lbl_8038E610
/* 8038E540 003842C0  3C 60 80 53 */	lis r3, lbl_805365A0@ha
/* 8038E544 003842C4  83 AD CD 1C */	lwz r29, lbl_805A113C-_SDA_BASE_(r13)
/* 8038E548 003842C8  38 63 65 A0 */	addi r3, r3, lbl_805365A0@l
/* 8038E54C 003842CC  83 83 00 04 */	lwz r28, 4(r3)
/* 8038E550 003842D0  2C 1C 00 00 */	cmpwi r28, 0
/* 8038E554 003842D4  41 80 00 0C */	blt lbl_8038E560
/* 8038E558 003842D8  2C 1C 00 03 */	cmpwi r28, 3
/* 8038E55C 003842DC  41 80 00 0C */	blt lbl_8038E568
lbl_8038E560:
/* 8038E560 003842E0  3B C0 FF F9 */	li r30, -7
/* 8038E564 003842E4  48 00 00 AC */	b lbl_8038E610
lbl_8038E568:
/* 8038E568 003842E8  1C 1C 09 1C */	mulli r0, r28, 0x91c
/* 8038E56C 003842EC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8038E570 003842F0  38 A0 00 0C */	li r5, 0xc
/* 8038E574 003842F4  7C 9D 02 14 */	add r4, r29, r0
/* 8038E578 003842F8  38 84 00 20 */	addi r4, r4, 0x20
/* 8038E57C 003842FC  4B C7 5D BD */	bl memcpy
/* 8038E580 00384300  1C 1C 09 1C */	mulli r0, r28, 0x91c
/* 8038E584 00384304  7C 9D 02 14 */	add r4, r29, r0
/* 8038E588 00384308  88 04 00 08 */	lbz r0, 8(r4)
/* 8038E58C 0038430C  54 00 07 7D */	rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 8038E590 00384310  41 82 00 20 */	beq lbl_8038E5B0
/* 8038E594 00384314  38 00 00 01 */	li r0, 1
/* 8038E598 00384318  38 7F 00 08 */	addi r3, r31, 8
/* 8038E59C 0038431C  90 1F 00 00 */	stw r0, 0(r31)
/* 8038E5A0 00384320  38 84 00 0C */	addi r4, r4, 0xc
/* 8038E5A4 00384324  38 A0 00 14 */	li r5, 0x14
/* 8038E5A8 00384328  4B C7 5D 91 */	bl memcpy
/* 8038E5AC 0038432C  48 00 00 1C */	b lbl_8038E5C8
lbl_8038E5B0:
/* 8038E5B0 00384330  38 00 00 00 */	li r0, 0
/* 8038E5B4 00384334  38 7F 00 08 */	addi r3, r31, 8
/* 8038E5B8 00384338  90 1F 00 00 */	stw r0, 0(r31)
/* 8038E5BC 0038433C  38 84 00 0C */	addi r4, r4, 0xc
/* 8038E5C0 00384340  38 A0 00 14 */	li r5, 0x14
/* 8038E5C4 00384344  4B C7 5D 75 */	bl memcpy
lbl_8038E5C8:
/* 8038E5C8 00384348  1C 1C 09 1C */	mulli r0, r28, 0x91c
/* 8038E5CC 0038434C  7C 9D 02 14 */	add r4, r29, r0
/* 8038E5D0 00384350  88 04 00 08 */	lbz r0, 8(r4)
/* 8038E5D4 00384354  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8038E5D8 00384358  41 82 00 20 */	beq lbl_8038E5F8
/* 8038E5DC 0038435C  38 00 00 01 */	li r0, 1
/* 8038E5E0 00384360  38 7F 00 28 */	addi r3, r31, 0x28
/* 8038E5E4 00384364  90 1F 00 04 */	stw r0, 4(r31)
/* 8038E5E8 00384368  38 84 00 2C */	addi r4, r4, 0x2c
/* 8038E5EC 0038436C  38 A0 07 9C */	li r5, 0x79c
/* 8038E5F0 00384370  4B C7 5D 49 */	bl memcpy
/* 8038E5F4 00384374  48 00 00 1C */	b lbl_8038E610
lbl_8038E5F8:
/* 8038E5F8 00384378  38 00 00 00 */	li r0, 0
/* 8038E5FC 0038437C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8038E600 00384380  90 1F 00 04 */	stw r0, 4(r31)
/* 8038E604 00384384  38 80 00 00 */	li r4, 0
/* 8038E608 00384388  38 A0 07 9C */	li r5, 0x79c
/* 8038E60C 0038438C  4B C7 5E 31 */	bl memset
lbl_8038E610:
/* 8038E610 00384390  3C 60 80 53 */	lis r3, lbl_80536580@ha
/* 8038E614 00384394  38 63 65 80 */	addi r3, r3, lbl_80536580@l
/* 8038E618 00384398  4B E5 06 79 */	bl OSUnlockMutex
/* 8038E61C 0038439C  7F C3 F3 78 */	mr r3, r30
lbl_8038E620:
/* 8038E620 003843A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038E624 003843A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038E628 003843A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038E62C 003843AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038E630 003843B0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8038E634 003843B4  7C 08 03 A6 */	mtlr r0
/* 8038E638 003843B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8038E63C 003843BC  4E 80 00 20 */	blr 

.global NCDGetLinkStatus
NCDGetLinkStatus:
/* 8038E640 003843C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038E644 003843C4  7C 08 02 A6 */	mflr r0
/* 8038E648 003843C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038E64C 003843CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038E650 003843D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038E654 003843D4  3F C0 80 53 */	lis r30, lbl_80536580@ha
/* 8038E658 003843D8  3B DE 65 80 */	addi r30, r30, lbl_80536580@l
/* 8038E65C 003843DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038E660 003843E0  93 81 00 10 */	stw r28, 0x10(r1)
/* 8038E664 003843E4  4B E5 20 B1 */	bl OSGetCurrentThread
/* 8038E668 003843E8  2C 03 00 00 */	cmpwi r3, 0
/* 8038E66C 003843EC  40 82 00 0C */	bne lbl_8038E678
/* 8038E670 003843F0  38 60 FF FB */	li r3, -5
/* 8038E674 003843F4  48 00 00 B0 */	b lbl_8038E724
lbl_8038E678:
/* 8038E678 003843F8  48 00 05 05 */	bl LockRight
/* 8038E67C 003843FC  3C 60 80 49 */	lis r3, lbl_804912C8@ha
/* 8038E680 00384400  38 80 00 00 */	li r4, 0
/* 8038E684 00384404  38 63 12 C8 */	addi r3, r3, lbl_804912C8@l
/* 8038E688 00384408  4B E8 3D 21 */	bl IOS_Open
/* 8038E68C 0038440C  2C 03 00 00 */	cmpwi r3, 0
/* 8038E690 00384410  7C 7C 1B 78 */	mr r28, r3
/* 8038E694 00384414  40 80 00 1C */	bge lbl_8038E6B0
/* 8038E698 00384418  2C 03 FF FA */	cmpwi r3, -6
/* 8038E69C 0038441C  40 82 00 0C */	bne lbl_8038E6A8
/* 8038E6A0 00384420  3B A0 FF F8 */	li r29, -8
/* 8038E6A4 00384424  48 00 00 74 */	b lbl_8038E718
lbl_8038E6A8:
/* 8038E6A8 00384428  3B A0 FF FE */	li r29, -2
/* 8038E6AC 0038442C  48 00 00 6C */	b lbl_8038E718
lbl_8038E6B0:
/* 8038E6B0 00384430  3B FE 00 20 */	addi r31, r30, 0x20
/* 8038E6B4 00384434  38 FE 00 40 */	addi r7, r30, 0x40
/* 8038E6B8 00384438  38 00 00 20 */	li r0, 0x20
/* 8038E6BC 0038443C  93 FE 00 40 */	stw r31, 0x40(r30)
/* 8038E6C0 00384440  38 80 00 07 */	li r4, 7
/* 8038E6C4 00384444  38 A0 00 00 */	li r5, 0
/* 8038E6C8 00384448  90 07 00 04 */	stw r0, 4(r7)
/* 8038E6CC 0038444C  38 C0 00 01 */	li r6, 1
/* 8038E6D0 00384450  4B E8 49 C1 */	bl IOS_Ioctlv
/* 8038E6D4 00384454  2C 03 00 00 */	cmpwi r3, 0
/* 8038E6D8 00384458  40 80 00 0C */	bge lbl_8038E6E4
/* 8038E6DC 0038445C  3B A0 FF FE */	li r29, -2
/* 8038E6E0 00384460  48 00 00 24 */	b lbl_8038E704
lbl_8038E6E4:
/* 8038E6E4 00384464  83 BE 00 20 */	lwz r29, 0x20(r30)
/* 8038E6E8 00384468  2C 1D 00 00 */	cmpwi r29, 0
/* 8038E6EC 0038446C  40 82 00 18 */	bne lbl_8038E704
/* 8038E6F0 00384470  83 BF 00 04 */	lwz r29, 4(r31)
/* 8038E6F4 00384474  2C 1D 00 00 */	cmpwi r29, 0
/* 8038E6F8 00384478  41 80 00 08 */	blt lbl_8038E700
/* 8038E6FC 0038447C  48 00 00 08 */	b lbl_8038E704
lbl_8038E700:
/* 8038E700 00384480  3B A0 FF FF */	li r29, -1
lbl_8038E704:
/* 8038E704 00384484  7F 83 E3 78 */	mr r3, r28
/* 8038E708 00384488  4B E8 3E 81 */	bl IOS_Close
/* 8038E70C 0038448C  2C 03 00 00 */	cmpwi r3, 0
/* 8038E710 00384490  40 80 00 08 */	bge lbl_8038E718
/* 8038E714 00384494  3B A0 FF FF */	li r29, -1
lbl_8038E718:
/* 8038E718 00384498  38 7E 00 00 */	addi r3, r30, 0
/* 8038E71C 0038449C  4B E5 05 75 */	bl OSUnlockMutex
/* 8038E720 003844A0  7F A3 EB 78 */	mr r3, r29
lbl_8038E724:
/* 8038E724 003844A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038E728 003844A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038E72C 003844AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038E730 003844B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038E734 003844B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8038E738 003844B8  7C 08 03 A6 */	mtlr r0
/* 8038E73C 003844BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8038E740 003844C0  4E 80 00 20 */	blr 

.global NCDiGetWirelessMacAddress
NCDiGetWirelessMacAddress:
/* 8038E744 003844C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038E748 003844C8  7C 08 02 A6 */	mflr r0
/* 8038E74C 003844CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038E750 003844D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038E754 003844D4  3F E0 80 53 */	lis r31, lbl_80536580@ha
/* 8038E758 003844D8  3B FF 65 80 */	addi r31, r31, lbl_80536580@l
/* 8038E75C 003844DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038E760 003844E0  3B C0 00 00 */	li r30, 0
/* 8038E764 003844E4  7C 03 F0 40 */	cmplw r3, r30
/* 8038E768 003844E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038E76C 003844EC  93 81 00 10 */	stw r28, 0x10(r1)
/* 8038E770 003844F0  7C 7C 1B 78 */	mr r28, r3
/* 8038E774 003844F4  40 82 00 0C */	bne lbl_8038E780
/* 8038E778 003844F8  38 60 FF FD */	li r3, -3
/* 8038E77C 003844FC  48 00 00 D0 */	b lbl_8038E84C
lbl_8038E780:
/* 8038E780 00384500  4B E5 1F 95 */	bl OSGetCurrentThread
/* 8038E784 00384504  2C 03 00 00 */	cmpwi r3, 0
/* 8038E788 00384508  40 82 00 0C */	bne lbl_8038E794
/* 8038E78C 0038450C  38 60 FF FB */	li r3, -5
/* 8038E790 00384510  48 00 00 BC */	b lbl_8038E84C
lbl_8038E794:
/* 8038E794 00384514  48 00 03 E9 */	bl LockRight
/* 8038E798 00384518  3C 60 80 49 */	lis r3, lbl_804912C8@ha
/* 8038E79C 0038451C  38 80 00 00 */	li r4, 0
/* 8038E7A0 00384520  38 63 12 C8 */	addi r3, r3, lbl_804912C8@l
/* 8038E7A4 00384524  4B E8 3C 05 */	bl IOS_Open
/* 8038E7A8 00384528  2C 03 00 00 */	cmpwi r3, 0
/* 8038E7AC 0038452C  7C 7D 1B 78 */	mr r29, r3
/* 8038E7B0 00384530  40 80 00 1C */	bge lbl_8038E7CC
/* 8038E7B4 00384534  2C 03 FF FA */	cmpwi r3, -6
/* 8038E7B8 00384538  40 82 00 0C */	bne lbl_8038E7C4
/* 8038E7BC 0038453C  3B C0 FF F8 */	li r30, -8
/* 8038E7C0 00384540  48 00 00 80 */	b lbl_8038E840
lbl_8038E7C4:
/* 8038E7C4 00384544  3B C0 FF FE */	li r30, -2
/* 8038E7C8 00384548  48 00 00 78 */	b lbl_8038E840
lbl_8038E7CC:
/* 8038E7CC 0038454C  81 0D CD 1C */	lwz r8, lbl_805A113C-_SDA_BASE_(r13)
/* 8038E7D0 00384550  38 FF 00 40 */	addi r7, r31, 0x40
/* 8038E7D4 00384554  38 9F 00 20 */	addi r4, r31, 0x20
/* 8038E7D8 00384558  38 A0 00 20 */	li r5, 0x20
/* 8038E7DC 0038455C  38 00 00 06 */	li r0, 6
/* 8038E7E0 00384560  90 9F 00 40 */	stw r4, 0x40(r31)
/* 8038E7E4 00384564  38 80 00 08 */	li r4, 8
/* 8038E7E8 00384568  38 C0 00 02 */	li r6, 2
/* 8038E7EC 0038456C  90 A7 00 04 */	stw r5, 4(r7)
/* 8038E7F0 00384570  38 A0 00 00 */	li r5, 0
/* 8038E7F4 00384574  91 07 00 08 */	stw r8, 8(r7)
/* 8038E7F8 00384578  90 07 00 0C */	stw r0, 0xc(r7)
/* 8038E7FC 0038457C  4B E8 48 95 */	bl IOS_Ioctlv
/* 8038E800 00384580  2C 03 00 00 */	cmpwi r3, 0
/* 8038E804 00384584  40 80 00 0C */	bge lbl_8038E810
/* 8038E808 00384588  3B C0 FF FE */	li r30, -2
/* 8038E80C 0038458C  48 00 00 20 */	b lbl_8038E82C
lbl_8038E810:
/* 8038E810 00384590  83 DF 00 20 */	lwz r30, 0x20(r31)
/* 8038E814 00384594  2C 1E 00 00 */	cmpwi r30, 0
/* 8038E818 00384598  40 82 00 14 */	bne lbl_8038E82C
/* 8038E81C 0038459C  80 8D CD 1C */	lwz r4, lbl_805A113C-_SDA_BASE_(r13)
/* 8038E820 003845A0  7F 83 E3 78 */	mr r3, r28
/* 8038E824 003845A4  38 A0 00 06 */	li r5, 6
/* 8038E828 003845A8  4B C7 5B 11 */	bl memcpy
lbl_8038E82C:
/* 8038E82C 003845AC  7F A3 EB 78 */	mr r3, r29
/* 8038E830 003845B0  4B E8 3D 59 */	bl IOS_Close
/* 8038E834 003845B4  2C 03 00 00 */	cmpwi r3, 0
/* 8038E838 003845B8  40 80 00 08 */	bge lbl_8038E840
/* 8038E83C 003845BC  3B C0 FF FF */	li r30, -1
lbl_8038E840:
/* 8038E840 003845C0  38 7F 00 00 */	addi r3, r31, 0
/* 8038E844 003845C4  4B E5 04 4D */	bl OSUnlockMutex
/* 8038E848 003845C8  7F C3 F3 78 */	mr r3, r30
lbl_8038E84C:
/* 8038E84C 003845CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038E850 003845D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038E854 003845D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038E858 003845D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038E85C 003845DC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8038E860 003845E0  7C 08 03 A6 */	mtlr r0
/* 8038E864 003845E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038E868 003845E8  4E 80 00 20 */	blr 

.global NCDiGetEnabledConfigList
NCDiGetEnabledConfigList:
/* 8038E86C 003845EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038E870 003845F0  7C 08 02 A6 */	mflr r0
/* 8038E874 003845F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038E878 003845F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8038E87C 003845FC  48 06 2A 9D */	bl _savegpr_25
/* 8038E880 00384600  7C 7D 1B 78 */	mr r29, r3
/* 8038E884 00384604  7C 9E 23 78 */	mr r30, r4
/* 8038E888 00384608  7C BF 2B 78 */	mr r31, r5
/* 8038E88C 0038460C  3B 60 00 00 */	li r27, 0
/* 8038E890 00384610  3B 40 00 00 */	li r26, 0
/* 8038E894 00384614  3B 20 00 00 */	li r25, 0
/* 8038E898 00384618  48 00 02 E5 */	bl LockRight
/* 8038E89C 0038461C  3C 60 80 49 */	lis r3, lbl_804912DC@ha
/* 8038E8A0 00384620  38 80 00 00 */	li r4, 0
/* 8038E8A4 00384624  38 63 12 DC */	addi r3, r3, lbl_804912DC@l
/* 8038E8A8 00384628  38 A0 00 03 */	li r5, 3
/* 8038E8AC 0038462C  48 00 01 3D */	bl ExecConfigCommand
/* 8038E8B0 00384630  2C 03 00 00 */	cmpwi r3, 0
/* 8038E8B4 00384634  7C 7C 1B 78 */	mr r28, r3
/* 8038E8B8 00384638  40 82 00 E4 */	bne lbl_8038E99C
/* 8038E8BC 0038463C  80 8D CD 1C */	lwz r4, lbl_805A113C-_SDA_BASE_(r13)
/* 8038E8C0 00384640  38 C0 00 00 */	li r6, 0
/* 8038E8C4 00384644  38 60 00 01 */	li r3, 1
/* 8038E8C8 00384648  88 A4 00 08 */	lbz r5, 8(r4)
/* 8038E8CC 0038464C  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 8038E8D0 00384650  41 82 00 34 */	beq lbl_8038E904
/* 8038E8D4 00384654  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8038E8D8 00384658  41 82 00 0C */	beq lbl_8038E8E4
/* 8038E8DC 0038465C  7C 7B 30 30 */	slw r27, r3, r6
/* 8038E8E0 00384660  48 00 00 24 */	b lbl_8038E904
lbl_8038E8E4:
/* 8038E8E4 00384664  88 04 07 CA */	lbz r0, 0x7ca(r4)
/* 8038E8E8 00384668  28 00 00 01 */	cmplwi r0, 1
/* 8038E8EC 0038466C  41 82 00 08 */	beq lbl_8038E8F4
/* 8038E8F0 00384670  7C 7A 30 30 */	slw r26, r3, r6
lbl_8038E8F4:
/* 8038E8F4 00384674  88 04 07 CA */	lbz r0, 0x7ca(r4)
/* 8038E8F8 00384678  28 00 00 01 */	cmplwi r0, 1
/* 8038E8FC 0038467C  40 82 00 08 */	bne lbl_8038E904
/* 8038E900 00384680  7C 79 30 30 */	slw r25, r3, r6
lbl_8038E904:
/* 8038E904 00384684  88 A4 09 24 */	lbz r5, 0x924(r4)
/* 8038E908 00384688  38 C0 00 01 */	li r6, 1
/* 8038E90C 0038468C  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 8038E910 00384690  41 82 00 40 */	beq lbl_8038E950
/* 8038E914 00384694  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8038E918 00384698  41 82 00 10 */	beq lbl_8038E928
/* 8038E91C 0038469C  7C 60 30 30 */	slw r0, r3, r6
/* 8038E920 003846A0  7F 7B 03 78 */	or r27, r27, r0
/* 8038E924 003846A4  48 00 00 2C */	b lbl_8038E950
lbl_8038E928:
/* 8038E928 003846A8  88 04 10 E6 */	lbz r0, 0x10e6(r4)
/* 8038E92C 003846AC  28 00 00 01 */	cmplwi r0, 1
/* 8038E930 003846B0  41 82 00 0C */	beq lbl_8038E93C
/* 8038E934 003846B4  7C 60 30 30 */	slw r0, r3, r6
/* 8038E938 003846B8  7F 5A 03 78 */	or r26, r26, r0
lbl_8038E93C:
/* 8038E93C 003846BC  88 04 10 E6 */	lbz r0, 0x10e6(r4)
/* 8038E940 003846C0  28 00 00 01 */	cmplwi r0, 1
/* 8038E944 003846C4  40 82 00 0C */	bne lbl_8038E950
/* 8038E948 003846C8  7C 60 30 30 */	slw r0, r3, r6
/* 8038E94C 003846CC  7F 39 03 78 */	or r25, r25, r0
lbl_8038E950:
/* 8038E950 003846D0  88 A4 12 40 */	lbz r5, 0x1240(r4)
/* 8038E954 003846D4  38 C0 00 02 */	li r6, 2
/* 8038E958 003846D8  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 8038E95C 003846DC  41 82 00 40 */	beq lbl_8038E99C
/* 8038E960 003846E0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8038E964 003846E4  41 82 00 10 */	beq lbl_8038E974
/* 8038E968 003846E8  7C 60 30 30 */	slw r0, r3, r6
/* 8038E96C 003846EC  7F 7B 03 78 */	or r27, r27, r0
/* 8038E970 003846F0  48 00 00 2C */	b lbl_8038E99C
lbl_8038E974:
/* 8038E974 003846F4  88 04 1A 02 */	lbz r0, 0x1a02(r4)
/* 8038E978 003846F8  28 00 00 01 */	cmplwi r0, 1
/* 8038E97C 003846FC  41 82 00 0C */	beq lbl_8038E988
/* 8038E980 00384700  7C 60 30 30 */	slw r0, r3, r6
/* 8038E984 00384704  7F 5A 03 78 */	or r26, r26, r0
lbl_8038E988:
/* 8038E988 00384708  88 04 1A 02 */	lbz r0, 0x1a02(r4)
/* 8038E98C 0038470C  28 00 00 01 */	cmplwi r0, 1
/* 8038E990 00384710  40 82 00 0C */	bne lbl_8038E99C
/* 8038E994 00384714  7C 60 30 30 */	slw r0, r3, r6
/* 8038E998 00384718  7F 39 03 78 */	or r25, r25, r0
lbl_8038E99C:
/* 8038E99C 0038471C  3C 60 80 53 */	lis r3, lbl_80536580@ha
/* 8038E9A0 00384720  38 63 65 80 */	addi r3, r3, lbl_80536580@l
/* 8038E9A4 00384724  4B E5 02 ED */	bl OSUnlockMutex
/* 8038E9A8 00384728  2C 1D 00 00 */	cmpwi r29, 0
/* 8038E9AC 0038472C  41 82 00 08 */	beq lbl_8038E9B4
/* 8038E9B0 00384730  93 7D 00 00 */	stw r27, 0(r29)
lbl_8038E9B4:
/* 8038E9B4 00384734  2C 1E 00 00 */	cmpwi r30, 0
/* 8038E9B8 00384738  41 82 00 08 */	beq lbl_8038E9C0
/* 8038E9BC 0038473C  93 5E 00 00 */	stw r26, 0(r30)
lbl_8038E9C0:
/* 8038E9C0 00384740  2C 1F 00 00 */	cmpwi r31, 0
/* 8038E9C4 00384744  41 82 00 08 */	beq lbl_8038E9CC
/* 8038E9C8 00384748  93 3F 00 00 */	stw r25, 0(r31)
lbl_8038E9CC:
/* 8038E9CC 0038474C  39 61 00 30 */	addi r11, r1, 0x30
/* 8038E9D0 00384750  7F 83 E3 78 */	mr r3, r28
/* 8038E9D4 00384754  48 06 29 91 */	bl _restgpr_25
/* 8038E9D8 00384758  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038E9DC 0038475C  7C 08 03 A6 */	mtlr r0
/* 8038E9E0 00384760  38 21 00 30 */	addi r1, r1, 0x30
/* 8038E9E4 00384764  4E 80 00 20 */	blr 

.global ExecConfigCommand
ExecConfigCommand:
/* 8038E9E8 00384768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038E9EC 0038476C  7C 08 02 A6 */	mflr r0
/* 8038E9F0 00384770  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038E9F4 00384774  39 61 00 20 */	addi r11, r1, 0x20
/* 8038E9F8 00384778  48 06 29 29 */	bl _savegpr_27
/* 8038E9FC 0038477C  3F E0 80 53 */	lis r31, lbl_80536580@ha
/* 8038EA00 00384780  7C 9B 23 78 */	mr r27, r4
/* 8038EA04 00384784  7C BC 2B 78 */	mr r28, r5
/* 8038EA08 00384788  3B C0 00 00 */	li r30, 0
/* 8038EA0C 0038478C  3B FF 65 80 */	addi r31, r31, lbl_80536580@l
/* 8038EA10 00384790  4B E5 1D 05 */	bl OSGetCurrentThread
/* 8038EA14 00384794  2C 03 00 00 */	cmpwi r3, 0
/* 8038EA18 00384798  40 82 00 0C */	bne lbl_8038EA24
/* 8038EA1C 0038479C  38 60 FF FB */	li r3, -5
/* 8038EA20 003847A0  48 00 01 44 */	b lbl_8038EB64
lbl_8038EA24:
/* 8038EA24 003847A4  48 00 01 59 */	bl LockRight
/* 8038EA28 003847A8  3C 60 80 49 */	lis r3, lbl_804912C8@ha
/* 8038EA2C 003847AC  38 80 00 00 */	li r4, 0
/* 8038EA30 003847B0  38 63 12 C8 */	addi r3, r3, lbl_804912C8@l
/* 8038EA34 003847B4  4B E8 39 75 */	bl IOS_Open
/* 8038EA38 003847B8  2C 03 00 00 */	cmpwi r3, 0
/* 8038EA3C 003847BC  7C 7D 1B 78 */	mr r29, r3
/* 8038EA40 003847C0  40 80 00 1C */	bge lbl_8038EA5C
/* 8038EA44 003847C4  2C 03 FF FA */	cmpwi r3, -6
/* 8038EA48 003847C8  40 82 00 0C */	bne lbl_8038EA54
/* 8038EA4C 003847CC  3B C0 FF F8 */	li r30, -8
/* 8038EA50 003847D0  48 00 01 08 */	b lbl_8038EB58
lbl_8038EA54:
/* 8038EA54 003847D4  3B C0 FF FE */	li r30, -2
/* 8038EA58 003847D8  48 00 01 00 */	b lbl_8038EB58
lbl_8038EA5C:
/* 8038EA5C 003847DC  80 CD CD 1C */	lwz r6, lbl_805A113C-_SDA_BASE_(r13)
/* 8038EA60 003847E0  2C 1C 00 05 */	cmpwi r28, 5
/* 8038EA64 003847E4  38 9F 00 40 */	addi r4, r31, 0x40
/* 8038EA68 003847E8  38 7F 00 20 */	addi r3, r31, 0x20
/* 8038EA6C 003847EC  38 A0 1B 5C */	li r5, 0x1b5c
/* 8038EA70 003847F0  38 00 00 20 */	li r0, 0x20
/* 8038EA74 003847F4  90 DF 00 40 */	stw r6, 0x40(r31)
/* 8038EA78 003847F8  90 A4 00 04 */	stw r5, 4(r4)
/* 8038EA7C 003847FC  90 64 00 08 */	stw r3, 8(r4)
/* 8038EA80 00384800  90 04 00 0C */	stw r0, 0xc(r4)
/* 8038EA84 00384804  41 82 00 24 */	beq lbl_8038EAA8
/* 8038EA88 00384808  40 80 00 14 */	bge lbl_8038EA9C
/* 8038EA8C 0038480C  2C 1C 00 03 */	cmpwi r28, 3
/* 8038EA90 00384810  41 82 00 18 */	beq lbl_8038EAA8
/* 8038EA94 00384814  40 80 00 68 */	bge lbl_8038EAFC
/* 8038EA98 00384818  48 00 00 AC */	b lbl_8038EB44
lbl_8038EA9C:
/* 8038EA9C 0038481C  2C 1C 00 07 */	cmpwi r28, 7
/* 8038EAA0 00384820  40 80 00 A4 */	bge lbl_8038EB44
/* 8038EAA4 00384824  48 00 00 58 */	b lbl_8038EAFC
lbl_8038EAA8:
/* 8038EAA8 00384828  7F A3 EB 78 */	mr r3, r29
/* 8038EAAC 0038482C  7F 84 E3 78 */	mr r4, r28
/* 8038EAB0 00384830  38 FF 00 40 */	addi r7, r31, 0x40
/* 8038EAB4 00384834  38 A0 00 00 */	li r5, 0
/* 8038EAB8 00384838  38 C0 00 02 */	li r6, 2
/* 8038EABC 0038483C  4B E8 45 D5 */	bl IOS_Ioctlv
/* 8038EAC0 00384840  2C 03 00 00 */	cmpwi r3, 0
/* 8038EAC4 00384844  40 80 00 0C */	bge lbl_8038EAD0
/* 8038EAC8 00384848  3B C0 FF FE */	li r30, -2
/* 8038EACC 0038484C  48 00 00 78 */	b lbl_8038EB44
lbl_8038EAD0:
/* 8038EAD0 00384850  83 DF 00 20 */	lwz r30, 0x20(r31)
/* 8038EAD4 00384854  2C 1E 00 00 */	cmpwi r30, 0
/* 8038EAD8 00384858  40 82 00 6C */	bne lbl_8038EB44
/* 8038EADC 0038485C  38 00 00 00 */	li r0, 0
/* 8038EAE0 00384860  7C 1B 00 40 */	cmplw r27, r0
/* 8038EAE4 00384864  41 82 00 60 */	beq lbl_8038EB44
/* 8038EAE8 00384868  80 8D CD 1C */	lwz r4, lbl_805A113C-_SDA_BASE_(r13)
/* 8038EAEC 0038486C  7F 63 DB 78 */	mr r3, r27
/* 8038EAF0 00384870  38 A0 1B 5C */	li r5, 0x1b5c
/* 8038EAF4 00384874  4B C7 58 45 */	bl memcpy
/* 8038EAF8 00384878  48 00 00 4C */	b lbl_8038EB44
lbl_8038EAFC:
/* 8038EAFC 0038487C  38 00 00 00 */	li r0, 0
/* 8038EB00 00384880  7C 1B 00 40 */	cmplw r27, r0
/* 8038EB04 00384884  41 82 00 14 */	beq lbl_8038EB18
/* 8038EB08 00384888  80 6D CD 1C */	lwz r3, lbl_805A113C-_SDA_BASE_(r13)
/* 8038EB0C 0038488C  7F 64 DB 78 */	mr r4, r27
/* 8038EB10 00384890  38 A0 1B 5C */	li r5, 0x1b5c
/* 8038EB14 00384894  4B C7 58 25 */	bl memcpy
lbl_8038EB18:
/* 8038EB18 00384898  7F A3 EB 78 */	mr r3, r29
/* 8038EB1C 0038489C  7F 84 E3 78 */	mr r4, r28
/* 8038EB20 003848A0  38 FF 00 40 */	addi r7, r31, 0x40
/* 8038EB24 003848A4  38 A0 00 01 */	li r5, 1
/* 8038EB28 003848A8  38 C0 00 01 */	li r6, 1
/* 8038EB2C 003848AC  4B E8 45 65 */	bl IOS_Ioctlv
/* 8038EB30 003848B0  2C 03 00 00 */	cmpwi r3, 0
/* 8038EB34 003848B4  40 80 00 0C */	bge lbl_8038EB40
/* 8038EB38 003848B8  3B C0 FF FE */	li r30, -2
/* 8038EB3C 003848BC  48 00 00 08 */	b lbl_8038EB44
lbl_8038EB40:
/* 8038EB40 003848C0  83 DF 00 20 */	lwz r30, 0x20(r31)
lbl_8038EB44:
/* 8038EB44 003848C4  7F A3 EB 78 */	mr r3, r29
/* 8038EB48 003848C8  4B E8 3A 41 */	bl IOS_Close
/* 8038EB4C 003848CC  2C 03 00 00 */	cmpwi r3, 0
/* 8038EB50 003848D0  40 80 00 08 */	bge lbl_8038EB58
/* 8038EB54 003848D4  3B C0 FF FF */	li r30, -1
lbl_8038EB58:
/* 8038EB58 003848D8  38 7F 00 00 */	addi r3, r31, 0
/* 8038EB5C 003848DC  4B E5 01 35 */	bl OSUnlockMutex
/* 8038EB60 003848E0  7F C3 F3 78 */	mr r3, r30
lbl_8038EB64:
/* 8038EB64 003848E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8038EB68 003848E8  48 06 28 05 */	bl _restgpr_27
/* 8038EB6C 003848EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038EB70 003848F0  7C 08 03 A6 */	mtlr r0
/* 8038EB74 003848F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038EB78 003848F8  4E 80 00 20 */	blr 

.global LockRight
LockRight:
/* 8038EB7C 003848FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038EB80 00384900  7C 08 02 A6 */	mflr r0
/* 8038EB84 00384904  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038EB88 00384908  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038EB8C 0038490C  3F E0 80 53 */	lis r31, lbl_80536580@ha
/* 8038EB90 00384910  3B FF 65 80 */	addi r31, r31, lbl_80536580@l
/* 8038EB94 00384914  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038EB98 00384918  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038EB9C 0038491C  4B E4 E3 75 */	bl OSDisableInterrupts
/* 8038EBA0 00384920  80 0D CD 18 */	lwz r0, lbl_805A1138-_SDA_BASE_(r13)
/* 8038EBA4 00384924  7C 7E 1B 78 */	mr r30, r3
/* 8038EBA8 00384928  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8038EBAC 0038492C  40 82 00 94 */	bne lbl_8038EC40
/* 8038EBB0 00384930  80 6D B8 08 */	lwz r3, lbl_8059FC28-_SDA_BASE_(r13)
/* 8038EBB4 00384934  4B E4 79 D9 */	bl OSRegisterVersion
/* 8038EBB8 00384938  38 7F 00 00 */	addi r3, r31, 0
/* 8038EBBC 0038493C  4B E4 FF C1 */	bl OSInitMutex
/* 8038EBC0 00384940  4B E8 2F 29 */	bl IPCGetBufferLo
/* 8038EBC4 00384944  38 03 00 1F */	addi r0, r3, 0x1f
/* 8038EBC8 00384948  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 8038EBCC 0038494C  4B E8 2F 15 */	bl IPCGetBufferHi
/* 8038EBD0 00384950  7C 1D 18 50 */	subf r0, r29, r3
/* 8038EBD4 00384954  28 00 1B 60 */	cmplwi r0, 0x1b60
/* 8038EBD8 00384958  40 80 00 20 */	bge lbl_8038EBF8
/* 8038EBDC 0038495C  3C 60 80 49 */	lis r3, lbl_804912F8@ha
/* 8038EBE0 00384960  3C A0 80 49 */	lis r5, lbl_80491304@ha
/* 8038EBE4 00384964  38 63 12 F8 */	addi r3, r3, lbl_804912F8@l
/* 8038EBE8 00384968  38 80 05 B1 */	li r4, 0x5b1
/* 8038EBEC 0038496C  38 A5 13 04 */	addi r5, r5, lbl_80491304@l
/* 8038EBF0 00384970  4C C6 31 82 */	crclr 6
/* 8038EBF4 00384974  4B E4 9A 9D */	bl OSPanic
lbl_8038EBF8:
/* 8038EBF8 00384978  38 7D 1B 60 */	addi r3, r29, 0x1b60
/* 8038EBFC 0038497C  4B E8 2E F5 */	bl IPCSetBufferLo
/* 8038EC00 00384980  93 AD CD 1C */	stw r29, lbl_805A113C-_SDA_BASE_(r13)
/* 8038EC04 00384984  7F A3 EB 78 */	mr r3, r29
/* 8038EC08 00384988  38 80 00 00 */	li r4, 0
/* 8038EC0C 0038498C  38 A0 1B 60 */	li r5, 0x1b60
/* 8038EC10 00384990  4B C7 58 2D */	bl memset
/* 8038EC14 00384994  38 7F 00 20 */	addi r3, r31, 0x20
/* 8038EC18 00384998  38 80 00 00 */	li r4, 0
/* 8038EC1C 0038499C  38 A0 00 20 */	li r5, 0x20
/* 8038EC20 003849A0  4B C7 58 1D */	bl memset
/* 8038EC24 003849A4  38 7F 00 40 */	addi r3, r31, 0x40
/* 8038EC28 003849A8  38 80 00 00 */	li r4, 0
/* 8038EC2C 003849AC  38 A0 00 20 */	li r5, 0x20
/* 8038EC30 003849B0  4B C7 58 0D */	bl memset
/* 8038EC34 003849B4  80 0D CD 18 */	lwz r0, lbl_805A1138-_SDA_BASE_(r13)
/* 8038EC38 003849B8  60 00 00 01 */	ori r0, r0, 1
/* 8038EC3C 003849BC  90 0D CD 18 */	stw r0, lbl_805A1138-_SDA_BASE_(r13)
lbl_8038EC40:
/* 8038EC40 003849C0  7F C3 F3 78 */	mr r3, r30
/* 8038EC44 003849C4  4B E4 E2 F5 */	bl OSRestoreInterrupts
/* 8038EC48 003849C8  38 7F 00 00 */	addi r3, r31, 0
/* 8038EC4C 003849CC  4B E4 FF 69 */	bl OSLockMutex
/* 8038EC50 003849D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038EC54 003849D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038EC58 003849D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038EC5C 003849DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038EC60 003849E0  7C 08 03 A6 */	mtlr r0
/* 8038EC64 003849E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038EC68 003849E8  4E 80 00 20 */	blr 


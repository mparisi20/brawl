.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfErrorCheck$7init
gfErrorCheck$7init:
/* 8001B574 000112F4  3C 60 80 49 */	lis r3, lbl_804948F4@ha
/* 8001B578 000112F8  38 63 48 F4 */	addi r3, r3, lbl_804948F4@l
/* 8001B57C 000112FC  48 00 02 1C */	b gfFileIO$7setFatalErrorCallback

.global gfErrorCheck$7check
gfErrorCheck$7check:
/* 8001B580 00011300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B584 00011304  7C 08 02 A6 */	mflr r0
/* 8001B588 00011308  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B58C 0001130C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B590 00011310  93 C1 00 08 */	stw r30, 8(r1)
/* 8001B594 00011314  48 1D F7 05 */	bl DVDGetDriveStatus
/* 8001B598 00011318  2C 03 FF FF */	cmpwi r3, -1
/* 8001B59C 0001131C  3B C0 00 00 */	li r30, 0
/* 8001B5A0 00011320  40 82 00 10 */	bne lbl_8001B5B0
/* 8001B5A4 00011324  3B C0 00 01 */	li r30, 1
/* 8001B5A8 00011328  3B E0 00 04 */	li r31, 4
/* 8001B5AC 0001132C  48 00 00 68 */	b lbl_8001B614
lbl_8001B5B0:
/* 8001B5B0 00011330  2C 03 00 04 */	cmpwi r3, 4
/* 8001B5B4 00011334  40 82 00 10 */	bne lbl_8001B5C4
/* 8001B5B8 00011338  3B C0 00 01 */	li r30, 1
/* 8001B5BC 0001133C  3B E0 00 01 */	li r31, 1
/* 8001B5C0 00011340  48 00 00 54 */	b lbl_8001B614
lbl_8001B5C4:
/* 8001B5C4 00011344  2C 03 00 0B */	cmpwi r3, 0xb
/* 8001B5C8 00011348  40 82 00 10 */	bne lbl_8001B5D8
/* 8001B5CC 0001134C  3B C0 00 01 */	li r30, 1
/* 8001B5D0 00011350  3B E0 00 03 */	li r31, 3
/* 8001B5D4 00011354  48 00 00 40 */	b lbl_8001B614
lbl_8001B5D8:
/* 8001B5D8 00011358  2C 03 00 06 */	cmpwi r3, 6
/* 8001B5DC 0001135C  40 82 00 10 */	bne lbl_8001B5EC
/* 8001B5E0 00011360  3B C0 00 01 */	li r30, 1
/* 8001B5E4 00011364  3B E0 00 02 */	li r31, 2
/* 8001B5E8 00011368  48 00 00 2C */	b lbl_8001B614
lbl_8001B5EC:
/* 8001B5EC 0001136C  48 1D FD 3D */	bl DVDGetCurrentDiskID
/* 8001B5F0 00011370  7C 7F 1B 78 */	mr r31, r3
/* 8001B5F4 00011374  48 00 01 99 */	bl gfFileIO$7getDVDDiskId
/* 8001B5F8 00011378  7C 64 1B 78 */	mr r4, r3
/* 8001B5FC 0001137C  7F E3 FB 78 */	mr r3, r31
/* 8001B600 00011380  48 1E 0C 29 */	bl DVDCompareDiskID
/* 8001B604 00011384  2C 03 00 01 */	cmpwi r3, 1
/* 8001B608 00011388  41 82 00 0C */	beq lbl_8001B614
/* 8001B60C 0001138C  3B C0 00 01 */	li r30, 1
/* 8001B610 00011390  3B E0 00 02 */	li r31, 2
lbl_8001B614:
/* 8001B614 00011394  2C 1E 00 00 */	cmpwi r30, 0
/* 8001B618 00011398  41 82 00 18 */	beq lbl_8001B630
/* 8001B61C 0001139C  4B FF F8 ED */	bl gfErrorManager$7getInstance
/* 8001B620 000113A0  7F E4 FB 78 */	mr r4, r31
/* 8001B624 000113A4  38 A0 00 00 */	li r5, 0
/* 8001B628 000113A8  4B FF FD 49 */	bl gfErrorManager$7notifyError
/* 8001B62C 000113AC  48 00 00 10 */	b lbl_8001B63C
lbl_8001B630:
/* 8001B630 000113B0  4B FF F8 D9 */	bl gfErrorManager$7getInstance
/* 8001B634 000113B4  38 80 00 00 */	li r4, 0
/* 8001B638 000113B8  4B FF FE 75 */	bl gfErrorManager$7notifyErrorRecovery
lbl_8001B63C:
/* 8001B63C 000113BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B640 000113C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B644 000113C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001B648 000113C8  7C 08 03 A6 */	mtlr r0
/* 8001B64C 000113CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B650 000113D0  4E 80 00 20 */	blr 

.global gfCallBack$7__dt
gfCallBack$7__dt:
/* 8001B654 000113D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B658 000113D8  7C 08 02 A6 */	mflr r0
/* 8001B65C 000113DC  2C 03 00 00 */	cmpwi r3, 0
/* 8001B660 000113E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B664 000113E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B668 000113E8  7C 7F 1B 78 */	mr r31, r3
/* 8001B66C 000113EC  41 82 00 10 */	beq lbl_8001B67C
/* 8001B670 000113F0  2C 04 00 00 */	cmpwi r4, 0
/* 8001B674 000113F4  40 81 00 08 */	ble lbl_8001B67C
/* 8001B678 000113F8  4B FF 12 51 */	bl __dl__FPv
lbl_8001B67C:
/* 8001B67C 000113FC  7F E3 FB 78 */	mr r3, r31
/* 8001B680 00011400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B684 00011404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B688 00011408  7C 08 03 A6 */	mtlr r0
/* 8001B68C 0001140C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B690 00011410  4E 80 00 20 */	blr 

.global __sinit_$3gf_error_check_cpp
__sinit_$3gf_error_check_cpp:
/* 8001B694 00011414  3C 80 80 42 */	lis r4, lbl_80420BA0@ha
/* 8001B698 00011418  3C E0 80 49 */	lis r7, lbl_804948F4@ha
/* 8001B69C 0001141C  38 67 48 F4 */	addi r3, r7, lbl_804948F4@l
/* 8001B6A0 00011420  3C C0 80 42 */	lis r6, lbl_80420BC0@ha
/* 8001B6A4 00011424  38 84 0B A0 */	addi r4, r4, lbl_80420BA0@l
/* 8001B6A8 00011428  38 00 00 00 */	li r0, 0
/* 8001B6AC 0001142C  90 83 00 04 */	stw r4, 4(r3)
/* 8001B6B0 00011430  38 C6 0B C0 */	addi r6, r6, lbl_80420BC0@l
/* 8001B6B4 00011434  3C 80 80 02 */	lis r4, gfErrorCheckCallback$7__dt@ha
/* 8001B6B8 00011438  3C A0 80 49 */	lis r5, lbl_804948E8@ha
/* 8001B6BC 0001143C  90 07 48 F4 */	stw r0, 0x48f4(r7)
/* 8001B6C0 00011440  38 84 B6 D0 */	addi r4, r4, gfErrorCheckCallback$7__dt@l
/* 8001B6C4 00011444  38 A5 48 E8 */	addi r5, r5, lbl_804948E8@l
/* 8001B6C8 00011448  90 C3 00 04 */	stw r6, 4(r3)
/* 8001B6CC 0001144C  48 3D 50 58 */	b __register_global_object_tmp

.global gfErrorCheckCallback$7__dt
gfErrorCheckCallback$7__dt:
/* 8001B6D0 00011450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B6D4 00011454  7C 08 02 A6 */	mflr r0
/* 8001B6D8 00011458  2C 03 00 00 */	cmpwi r3, 0
/* 8001B6DC 0001145C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B6E0 00011460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B6E4 00011464  7C 7F 1B 78 */	mr r31, r3
/* 8001B6E8 00011468  41 82 00 10 */	beq lbl_8001B6F8
/* 8001B6EC 0001146C  2C 04 00 00 */	cmpwi r4, 0
/* 8001B6F0 00011470  40 81 00 08 */	ble lbl_8001B6F8
/* 8001B6F4 00011474  4B FF 11 D5 */	bl __dl__FPv
lbl_8001B6F8:
/* 8001B6F8 00011478  7F E3 FB 78 */	mr r3, r31
/* 8001B6FC 0001147C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B700 00011480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B704 00011484  7C 08 03 A6 */	mtlr r0
/* 8001B708 00011488  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B70C 0001148C  4E 80 00 20 */	blr 

.global gfErrorCheckCallback$7userProc
gfErrorCheckCallback$7userProc:
/* 8001B710 00011490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B714 00011494  7C 08 02 A6 */	mflr r0
/* 8001B718 00011498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B71C 0001149C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B720 000114A0  3B E0 00 04 */	li r31, 4
/* 8001B724 000114A4  A0 03 00 08 */	lhz r0, 8(r3)
/* 8001B728 000114A8  2C 00 FF F7 */	cmpwi r0, -9
/* 8001B72C 000114AC  41 82 00 28 */	beq lbl_8001B754
/* 8001B730 000114B0  40 80 00 10 */	bge lbl_8001B740
/* 8001B734 000114B4  2C 00 FF F5 */	cmpwi r0, -11
/* 8001B738 000114B8  41 82 00 24 */	beq lbl_8001B75C
/* 8001B73C 000114BC  48 00 00 24 */	b lbl_8001B760
lbl_8001B740:
/* 8001B740 000114C0  2C 00 FF FC */	cmpwi r0, -4
/* 8001B744 000114C4  41 82 00 08 */	beq lbl_8001B74C
/* 8001B748 000114C8  48 00 00 18 */	b lbl_8001B760
lbl_8001B74C:
/* 8001B74C 000114CC  3B E0 00 05 */	li r31, 5
/* 8001B750 000114D0  48 00 00 10 */	b lbl_8001B760
lbl_8001B754:
/* 8001B754 000114D4  3B E0 00 06 */	li r31, 6
/* 8001B758 000114D8  48 00 00 08 */	b lbl_8001B760
lbl_8001B75C:
/* 8001B75C 000114DC  3B E0 00 07 */	li r31, 7
lbl_8001B760:
/* 8001B760 000114E0  4B FF F7 A9 */	bl gfErrorManager$7getInstance
/* 8001B764 000114E4  7F E4 FB 78 */	mr r4, r31
/* 8001B768 000114E8  38 A0 00 00 */	li r5, 0
/* 8001B76C 000114EC  4B FF FC 05 */	bl gfErrorManager$7notifyError
/* 8001B770 000114F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B774 000114F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B778 000114F8  7C 08 03 A6 */	mtlr r0
/* 8001B77C 000114FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B780 00011500  4E 80 00 20 */	blr 

.global func_8001B784
func_8001B784:
/* 8001B784 00011504  90 6D 81 10 */	stw r3, lbl_8059C530-_SDA_BASE_(r13)
/* 8001B788 00011508  4E 80 00 20 */	blr 


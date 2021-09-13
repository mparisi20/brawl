.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ghiResizeBuffer
ghiResizeBuffer:
/* 8037B37C 003710FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B380 00371100  7C 08 02 A6 */	mflr r0
/* 8037B384 00371104  2C 03 00 00 */	cmpwi r3, 0
/* 8037B388 00371108  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B38C 0037110C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B390 00371110  93 C1 00 08 */	stw r30, 8(r1)
/* 8037B394 00371114  7C 7E 1B 78 */	mr r30, r3
/* 8037B398 00371118  40 82 00 0C */	bne lbl_8037B3A4
/* 8037B39C 0037111C  38 60 00 00 */	li r3, 0
/* 8037B3A0 00371120  48 00 00 44 */	b lbl_8037B3E4
lbl_8037B3A4:
/* 8037B3A4 00371124  2C 04 00 00 */	cmpwi r4, 0
/* 8037B3A8 00371128  41 81 00 0C */	bgt lbl_8037B3B4
/* 8037B3AC 0037112C  38 60 00 00 */	li r3, 0
/* 8037B3B0 00371130  48 00 00 34 */	b lbl_8037B3E4
lbl_8037B3B4:
/* 8037B3B4 00371134  80 03 00 08 */	lwz r0, 8(r3)
/* 8037B3B8 00371138  80 63 00 04 */	lwz r3, 4(r3)
/* 8037B3BC 0037113C  7F E0 22 14 */	add r31, r0, r4
/* 8037B3C0 00371140  7F E4 FB 78 */	mr r4, r31
/* 8037B3C4 00371144  4B FE 2C 35 */	bl gsirealloc
/* 8037B3C8 00371148  2C 03 00 00 */	cmpwi r3, 0
/* 8037B3CC 0037114C  40 82 00 0C */	bne lbl_8037B3D8
/* 8037B3D0 00371150  38 60 00 00 */	li r3, 0
/* 8037B3D4 00371154  48 00 00 10 */	b lbl_8037B3E4
lbl_8037B3D8:
/* 8037B3D8 00371158  90 7E 00 04 */	stw r3, 4(r30)
/* 8037B3DC 0037115C  38 60 00 01 */	li r3, 1
/* 8037B3E0 00371160  93 FE 00 08 */	stw r31, 8(r30)
lbl_8037B3E4:
/* 8037B3E4 00371164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B3E8 00371168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B3EC 0037116C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037B3F0 00371170  7C 08 03 A6 */	mtlr r0
/* 8037B3F4 00371174  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B3F8 00371178  4E 80 00 20 */	blr 

.global ghiInitBuffer
ghiInitBuffer:
/* 8037B3FC 0037117C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B400 00371180  7C 08 02 A6 */	mflr r0
/* 8037B404 00371184  2C 03 00 00 */	cmpwi r3, 0
/* 8037B408 00371188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B40C 0037118C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B410 00371190  7C BF 2B 78 */	mr r31, r5
/* 8037B414 00371194  93 C1 00 08 */	stw r30, 8(r1)
/* 8037B418 00371198  7C 9E 23 78 */	mr r30, r4
/* 8037B41C 0037119C  40 82 00 0C */	bne lbl_8037B428
/* 8037B420 003711A0  38 60 00 00 */	li r3, 0
/* 8037B424 003711A4  48 00 00 BC */	b lbl_8037B4E0
lbl_8037B428:
/* 8037B428 003711A8  2F 04 00 00 */	cmpwi cr6, r4, 0
/* 8037B42C 003711AC  40 9A 00 0C */	bne cr6, lbl_8037B438
/* 8037B430 003711B0  38 60 00 00 */	li r3, 0
/* 8037B434 003711B4  48 00 00 AC */	b lbl_8037B4E0
lbl_8037B438:
/* 8037B438 003711B8  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 8037B43C 003711BC  41 85 00 0C */	bgt cr1, lbl_8037B448
/* 8037B440 003711C0  38 60 00 00 */	li r3, 0
/* 8037B444 003711C4  48 00 00 9C */	b lbl_8037B4E0
lbl_8037B448:
/* 8037B448 003711C8  2C 06 00 00 */	cmpwi r6, 0
/* 8037B44C 003711CC  41 81 00 0C */	bgt lbl_8037B458
/* 8037B450 003711D0  38 60 00 00 */	li r3, 0
/* 8037B454 003711D4  48 00 00 8C */	b lbl_8037B4E0
lbl_8037B458:
/* 8037B458 003711D8  38 00 00 00 */	li r0, 0
/* 8037B45C 003711DC  90 64 00 00 */	stw r3, 0(r4)
/* 8037B460 003711E0  90 04 00 04 */	stw r0, 4(r4)
/* 8037B464 003711E4  90 04 00 08 */	stw r0, 8(r4)
/* 8037B468 003711E8  90 04 00 0C */	stw r0, 0xc(r4)
/* 8037B46C 003711EC  90 04 00 10 */	stw r0, 0x10(r4)
/* 8037B470 003711F0  90 C4 00 14 */	stw r6, 0x14(r4)
/* 8037B474 003711F4  90 04 00 18 */	stw r0, 0x18(r4)
/* 8037B478 003711F8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8037B47C 003711FC  90 04 00 20 */	stw r0, 0x20(r4)
/* 8037B480 00371200  40 9A 00 0C */	bne cr6, lbl_8037B48C
/* 8037B484 00371204  38 00 00 00 */	li r0, 0
/* 8037B488 00371208  48 00 00 38 */	b lbl_8037B4C0
lbl_8037B48C:
/* 8037B48C 0037120C  41 85 00 0C */	bgt cr1, lbl_8037B498
/* 8037B490 00371210  38 00 00 00 */	li r0, 0
/* 8037B494 00371214  48 00 00 2C */	b lbl_8037B4C0
lbl_8037B498:
/* 8037B498 00371218  7F E4 FB 78 */	mr r4, r31
/* 8037B49C 0037121C  38 60 00 00 */	li r3, 0
/* 8037B4A0 00371220  4B FE 2B 59 */	bl gsirealloc
/* 8037B4A4 00371224  2C 03 00 00 */	cmpwi r3, 0
/* 8037B4A8 00371228  40 82 00 0C */	bne lbl_8037B4B4
/* 8037B4AC 0037122C  38 00 00 00 */	li r0, 0
/* 8037B4B0 00371230  48 00 00 10 */	b lbl_8037B4C0
lbl_8037B4B4:
/* 8037B4B4 00371234  90 7E 00 04 */	stw r3, 4(r30)
/* 8037B4B8 00371238  38 00 00 01 */	li r0, 1
/* 8037B4BC 0037123C  93 FE 00 08 */	stw r31, 8(r30)
lbl_8037B4C0:
/* 8037B4C0 00371240  2C 00 00 00 */	cmpwi r0, 0
/* 8037B4C4 00371244  40 82 00 0C */	bne lbl_8037B4D0
/* 8037B4C8 00371248  38 60 00 00 */	li r3, 0
/* 8037B4CC 0037124C  48 00 00 14 */	b lbl_8037B4E0
lbl_8037B4D0:
/* 8037B4D0 00371250  80 9E 00 04 */	lwz r4, 4(r30)
/* 8037B4D4 00371254  38 00 00 00 */	li r0, 0
/* 8037B4D8 00371258  38 60 00 01 */	li r3, 1
/* 8037B4DC 0037125C  98 04 00 00 */	stb r0, 0(r4)
lbl_8037B4E0:
/* 8037B4E0 00371260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B4E4 00371264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B4E8 00371268  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037B4EC 0037126C  7C 08 03 A6 */	mtlr r0
/* 8037B4F0 00371270  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B4F4 00371274  4E 80 00 20 */	blr 

.global ghiInitFixedBuffer
ghiInitFixedBuffer:
/* 8037B4F8 00371278  2C 03 00 00 */	cmpwi r3, 0
/* 8037B4FC 0037127C  40 82 00 0C */	bne lbl_8037B508
/* 8037B500 00371280  38 60 00 00 */	li r3, 0
/* 8037B504 00371284  4E 80 00 20 */	blr 
lbl_8037B508:
/* 8037B508 00371288  2C 04 00 00 */	cmpwi r4, 0
/* 8037B50C 0037128C  40 82 00 0C */	bne lbl_8037B518
/* 8037B510 00371290  38 60 00 00 */	li r3, 0
/* 8037B514 00371294  4E 80 00 20 */	blr 
lbl_8037B518:
/* 8037B518 00371298  2C 05 00 00 */	cmpwi r5, 0
/* 8037B51C 0037129C  40 82 00 0C */	bne lbl_8037B528
/* 8037B520 003712A0  38 60 00 00 */	li r3, 0
/* 8037B524 003712A4  4E 80 00 20 */	blr 
lbl_8037B528:
/* 8037B528 003712A8  2C 06 00 00 */	cmpwi r6, 0
/* 8037B52C 003712AC  41 81 00 0C */	bgt lbl_8037B538
/* 8037B530 003712B0  38 60 00 00 */	li r3, 0
/* 8037B534 003712B4  4E 80 00 20 */	blr 
lbl_8037B538:
/* 8037B538 003712B8  38 E0 00 00 */	li r7, 0
/* 8037B53C 003712BC  38 00 00 01 */	li r0, 1
/* 8037B540 003712C0  90 64 00 00 */	stw r3, 0(r4)
/* 8037B544 003712C4  38 60 00 01 */	li r3, 1
/* 8037B548 003712C8  90 A4 00 04 */	stw r5, 4(r4)
/* 8037B54C 003712CC  90 C4 00 08 */	stw r6, 8(r4)
/* 8037B550 003712D0  90 E4 00 0C */	stw r7, 0xc(r4)
/* 8037B554 003712D4  90 E4 00 10 */	stw r7, 0x10(r4)
/* 8037B558 003712D8  90 E4 00 14 */	stw r7, 0x14(r4)
/* 8037B55C 003712DC  90 04 00 18 */	stw r0, 0x18(r4)
/* 8037B560 003712E0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8037B564 003712E4  90 E4 00 20 */	stw r7, 0x20(r4)
/* 8037B568 003712E8  98 E5 00 00 */	stb r7, 0(r5)
/* 8037B56C 003712EC  4E 80 00 20 */	blr 

.global ghiInitReadOnlyBuffer
ghiInitReadOnlyBuffer:
/* 8037B570 003712F0  2C 03 00 00 */	cmpwi r3, 0
/* 8037B574 003712F4  40 82 00 0C */	bne lbl_8037B580
/* 8037B578 003712F8  38 60 00 00 */	li r3, 0
/* 8037B57C 003712FC  4E 80 00 20 */	blr 
lbl_8037B580:
/* 8037B580 00371300  2C 04 00 00 */	cmpwi r4, 0
/* 8037B584 00371304  40 82 00 0C */	bne lbl_8037B590
/* 8037B588 00371308  38 60 00 00 */	li r3, 0
/* 8037B58C 0037130C  4E 80 00 20 */	blr 
lbl_8037B590:
/* 8037B590 00371310  2C 05 00 00 */	cmpwi r5, 0
/* 8037B594 00371314  40 82 00 0C */	bne lbl_8037B5A0
/* 8037B598 00371318  38 60 00 00 */	li r3, 0
/* 8037B59C 0037131C  4E 80 00 20 */	blr 
lbl_8037B5A0:
/* 8037B5A0 00371320  2C 06 00 00 */	cmpwi r6, 0
/* 8037B5A4 00371324  41 81 00 0C */	bgt lbl_8037B5B0
/* 8037B5A8 00371328  38 60 00 00 */	li r3, 0
/* 8037B5AC 0037132C  4E 80 00 20 */	blr 
lbl_8037B5B0:
/* 8037B5B0 00371330  38 00 00 01 */	li r0, 1
/* 8037B5B4 00371334  38 E0 00 00 */	li r7, 0
/* 8037B5B8 00371338  90 64 00 00 */	stw r3, 0(r4)
/* 8037B5BC 0037133C  38 60 00 01 */	li r3, 1
/* 8037B5C0 00371340  90 A4 00 04 */	stw r5, 4(r4)
/* 8037B5C4 00371344  90 C4 00 08 */	stw r6, 8(r4)
/* 8037B5C8 00371348  90 E4 00 10 */	stw r7, 0x10(r4)
/* 8037B5CC 0037134C  90 E4 00 14 */	stw r7, 0x14(r4)
/* 8037B5D0 00371350  90 04 00 18 */	stw r0, 0x18(r4)
/* 8037B5D4 00371354  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8037B5D8 00371358  90 04 00 20 */	stw r0, 0x20(r4)
/* 8037B5DC 0037135C  90 C4 00 0C */	stw r6, 0xc(r4)
/* 8037B5E0 00371360  4E 80 00 20 */	blr 

.global ghiFreeBuffer
ghiFreeBuffer:
/* 8037B5E4 00371364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B5E8 00371368  7C 08 02 A6 */	mflr r0
/* 8037B5EC 0037136C  2C 03 00 00 */	cmpwi r3, 0
/* 8037B5F0 00371370  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B5F4 00371374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B5F8 00371378  7C 7F 1B 78 */	mr r31, r3
/* 8037B5FC 0037137C  41 82 00 34 */	beq lbl_8037B630
/* 8037B600 00371380  80 83 00 04 */	lwz r4, 4(r3)
/* 8037B604 00371384  2C 04 00 00 */	cmpwi r4, 0
/* 8037B608 00371388  41 82 00 28 */	beq lbl_8037B630
/* 8037B60C 0037138C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8037B610 00371390  2C 00 00 00 */	cmpwi r0, 0
/* 8037B614 00371394  40 82 00 0C */	bne lbl_8037B620
/* 8037B618 00371398  7C 83 23 78 */	mr r3, r4
/* 8037B61C 0037139C  4B FE 29 F1 */	bl gsifree
lbl_8037B620:
/* 8037B620 003713A0  7F E3 FB 78 */	mr r3, r31
/* 8037B624 003713A4  38 80 00 00 */	li r4, 0
/* 8037B628 003713A8  38 A0 00 24 */	li r5, 0x24
/* 8037B62C 003713AC  4B C8 8E 11 */	bl func_8000443C
lbl_8037B630:
/* 8037B630 003713B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B634 003713B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B638 003713B8  7C 08 03 A6 */	mtlr r0
/* 8037B63C 003713BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B640 003713C0  4E 80 00 20 */	blr 

.global ghiAppendDataToBuffer
ghiAppendDataToBuffer:
/* 8037B644 003713C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037B648 003713C8  7C 08 02 A6 */	mflr r0
/* 8037B64C 003713CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037B650 003713D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B654 003713D4  48 07 5C CD */	bl _savegpr_27
/* 8037B658 003713D8  2C 03 00 00 */	cmpwi r3, 0
/* 8037B65C 003713DC  7C 7F 1B 78 */	mr r31, r3
/* 8037B660 003713E0  7C 9B 23 78 */	mr r27, r4
/* 8037B664 003713E4  7C BC 2B 78 */	mr r28, r5
/* 8037B668 003713E8  40 82 00 0C */	bne lbl_8037B674
/* 8037B66C 003713EC  38 60 00 00 */	li r3, 0
/* 8037B670 003713F0  48 00 01 2C */	b lbl_8037B79C
lbl_8037B674:
/* 8037B674 003713F4  2C 04 00 00 */	cmpwi r4, 0
/* 8037B678 003713F8  40 82 00 0C */	bne lbl_8037B684
/* 8037B67C 003713FC  38 60 00 00 */	li r3, 0
/* 8037B680 00371400  48 00 01 1C */	b lbl_8037B79C
lbl_8037B684:
/* 8037B684 00371404  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 8037B688 00371408  40 84 00 0C */	bge cr1, lbl_8037B694
/* 8037B68C 0037140C  38 60 00 00 */	li r3, 0
/* 8037B690 00371410  48 00 01 0C */	b lbl_8037B79C
lbl_8037B694:
/* 8037B694 00371414  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8037B698 00371418  2C 00 00 00 */	cmpwi r0, 0
/* 8037B69C 0037141C  41 82 00 0C */	beq lbl_8037B6A8
/* 8037B6A0 00371420  38 60 00 00 */	li r3, 0
/* 8037B6A4 00371424  48 00 00 F8 */	b lbl_8037B79C
lbl_8037B6A8:
/* 8037B6A8 00371428  40 86 00 10 */	bne cr1, lbl_8037B6B8
/* 8037B6AC 0037142C  7F 63 DB 78 */	mr r3, r27
/* 8037B6B0 00371430  48 07 4F 91 */	bl strlen
/* 8037B6B4 00371434  7C 7C 1B 78 */	mr r28, r3
lbl_8037B6B8:
/* 8037B6B8 00371438  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8037B6BC 0037143C  7F A0 E2 14 */	add r29, r0, r28
/* 8037B6C0 00371440  48 00 00 A4 */	b lbl_8037B764
lbl_8037B6C4:
/* 8037B6C4 00371444  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8037B6C8 00371448  2C 00 00 00 */	cmpwi r0, 0
/* 8037B6CC 0037144C  41 82 00 24 */	beq lbl_8037B6F0
/* 8037B6D0 00371450  80 9F 00 00 */	lwz r4, 0(r31)
/* 8037B6D4 00371454  38 A0 00 01 */	li r5, 1
/* 8037B6D8 00371458  38 00 00 02 */	li r0, 2
/* 8037B6DC 0037145C  38 60 00 00 */	li r3, 0
/* 8037B6E0 00371460  90 A4 01 20 */	stw r5, 0x120(r4)
/* 8037B6E4 00371464  80 9F 00 00 */	lwz r4, 0(r31)
/* 8037B6E8 00371468  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8037B6EC 0037146C  48 00 00 B0 */	b lbl_8037B79C
lbl_8037B6F0:
/* 8037B6F0 00371470  2C 1F 00 00 */	cmpwi r31, 0
/* 8037B6F4 00371474  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8037B6F8 00371478  40 82 00 0C */	bne lbl_8037B704
/* 8037B6FC 0037147C  38 00 00 00 */	li r0, 0
/* 8037B700 00371480  48 00 00 40 */	b lbl_8037B740
lbl_8037B704:
/* 8037B704 00371484  2C 00 00 00 */	cmpwi r0, 0
/* 8037B708 00371488  41 81 00 0C */	bgt lbl_8037B714
/* 8037B70C 0037148C  38 00 00 00 */	li r0, 0
/* 8037B710 00371490  48 00 00 30 */	b lbl_8037B740
lbl_8037B714:
/* 8037B714 00371494  7F C3 02 14 */	add r30, r3, r0
/* 8037B718 00371498  80 7F 00 04 */	lwz r3, 4(r31)
/* 8037B71C 0037149C  7F C4 F3 78 */	mr r4, r30
/* 8037B720 003714A0  4B FE 28 D9 */	bl gsirealloc
/* 8037B724 003714A4  2C 03 00 00 */	cmpwi r3, 0
/* 8037B728 003714A8  40 82 00 0C */	bne lbl_8037B734
/* 8037B72C 003714AC  38 00 00 00 */	li r0, 0
/* 8037B730 003714B0  48 00 00 10 */	b lbl_8037B740
lbl_8037B734:
/* 8037B734 003714B4  90 7F 00 04 */	stw r3, 4(r31)
/* 8037B738 003714B8  38 00 00 01 */	li r0, 1
/* 8037B73C 003714BC  93 DF 00 08 */	stw r30, 8(r31)
lbl_8037B740:
/* 8037B740 003714C0  2C 00 00 00 */	cmpwi r0, 0
/* 8037B744 003714C4  40 82 00 20 */	bne lbl_8037B764
/* 8037B748 003714C8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8037B74C 003714CC  38 00 00 01 */	li r0, 1
/* 8037B750 003714D0  38 60 00 00 */	li r3, 0
/* 8037B754 003714D4  90 04 01 20 */	stw r0, 0x120(r4)
/* 8037B758 003714D8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8037B75C 003714DC  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8037B760 003714E0  48 00 00 3C */	b lbl_8037B79C
lbl_8037B764:
/* 8037B764 003714E4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8037B768 003714E8  7C 1D 18 00 */	cmpw r29, r3
/* 8037B76C 003714EC  40 80 FF 58 */	bge lbl_8037B6C4
/* 8037B770 003714F0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8037B774 003714F4  7F 64 DB 78 */	mr r4, r27
/* 8037B778 003714F8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8037B77C 003714FC  7F 85 E3 78 */	mr r5, r28
/* 8037B780 00371500  7C 63 02 14 */	add r3, r3, r0
/* 8037B784 00371504  4B C8 8B B5 */	bl memcpy
/* 8037B788 00371508  93 BF 00 0C */	stw r29, 0xc(r31)
/* 8037B78C 0037150C  38 00 00 00 */	li r0, 0
/* 8037B790 00371510  80 9F 00 04 */	lwz r4, 4(r31)
/* 8037B794 00371514  38 60 00 01 */	li r3, 1
/* 8037B798 00371518  7C 04 E9 AE */	stbx r0, r4, r29
lbl_8037B79C:
/* 8037B79C 0037151C  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B7A0 00371520  48 07 5B CD */	bl _restgpr_27
/* 8037B7A4 00371524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037B7A8 00371528  7C 08 03 A6 */	mtlr r0
/* 8037B7AC 0037152C  38 21 00 20 */	addi r1, r1, 0x20
/* 8037B7B0 00371530  4E 80 00 20 */	blr 

.global ghiEncryptDataToBuffer
ghiEncryptDataToBuffer:
/* 8037B7B4 00371534  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037B7B8 00371538  7C 08 02 A6 */	mflr r0
/* 8037B7BC 0037153C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037B7C0 00371540  39 61 00 30 */	addi r11, r1, 0x30
/* 8037B7C4 00371544  48 07 5B 5D */	bl _savegpr_27
/* 8037B7C8 00371548  38 00 00 00 */	li r0, 0
/* 8037B7CC 0037154C  2C 03 00 00 */	cmpwi r3, 0
/* 8037B7D0 00371550  90 01 00 08 */	stw r0, 8(r1)
/* 8037B7D4 00371554  7C 7C 1B 78 */	mr r28, r3
/* 8037B7D8 00371558  7C 9D 23 78 */	mr r29, r4
/* 8037B7DC 0037155C  7C BE 2B 78 */	mr r30, r5
/* 8037B7E0 00371560  3B E0 00 00 */	li r31, 0
/* 8037B7E4 00371564  40 82 00 0C */	bne lbl_8037B7F0
/* 8037B7E8 00371568  38 60 00 00 */	li r3, 0
/* 8037B7EC 0037156C  48 00 01 88 */	b lbl_8037B974
lbl_8037B7F0:
/* 8037B7F0 00371570  2C 04 00 00 */	cmpwi r4, 0
/* 8037B7F4 00371574  40 82 00 0C */	bne lbl_8037B800
/* 8037B7F8 00371578  38 60 00 00 */	li r3, 0
/* 8037B7FC 0037157C  48 00 01 78 */	b lbl_8037B974
lbl_8037B800:
/* 8037B800 00371580  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 8037B804 00371584  40 84 00 0C */	bge cr1, lbl_8037B810
/* 8037B808 00371588  38 60 00 00 */	li r3, 0
/* 8037B80C 0037158C  48 00 01 68 */	b lbl_8037B974
lbl_8037B810:
/* 8037B810 00371590  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8037B814 00371594  2C 00 00 00 */	cmpwi r0, 0
/* 8037B818 00371598  41 82 00 0C */	beq lbl_8037B824
/* 8037B81C 0037159C  38 60 00 00 */	li r3, 0
/* 8037B820 003715A0  48 00 01 54 */	b lbl_8037B974
lbl_8037B824:
/* 8037B824 003715A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8037B828 003715A8  80 03 01 94 */	lwz r0, 0x194(r3)
/* 8037B82C 003715AC  2C 00 00 00 */	cmpwi r0, 0
/* 8037B830 003715B0  41 82 00 10 */	beq lbl_8037B840
/* 8037B834 003715B4  80 03 01 9C */	lwz r0, 0x19c(r3)
/* 8037B838 003715B8  2C 00 00 00 */	cmpwi r0, 0
/* 8037B83C 003715BC  40 82 00 18 */	bne lbl_8037B854
lbl_8037B840:
/* 8037B840 003715C0  7F 83 E3 78 */	mr r3, r28
/* 8037B844 003715C4  7F A4 EB 78 */	mr r4, r29
/* 8037B848 003715C8  7F C5 F3 78 */	mr r5, r30
/* 8037B84C 003715CC  4B FF FD F9 */	bl ghiAppendDataToBuffer
/* 8037B850 003715D0  48 00 01 24 */	b lbl_8037B974
lbl_8037B854:
/* 8037B854 003715D4  40 86 00 10 */	bne cr1, lbl_8037B864
/* 8037B858 003715D8  7F A3 EB 78 */	mr r3, r29
/* 8037B85C 003715DC  48 07 4D E5 */	bl strlen
/* 8037B860 003715E0  7C 7E 1B 78 */	mr r30, r3
lbl_8037B864:
/* 8037B864 003715E4  2C 1E 00 00 */	cmpwi r30, 0
/* 8037B868 003715E8  40 82 00 0C */	bne lbl_8037B874
/* 8037B86C 003715EC  38 60 00 01 */	li r3, 1
/* 8037B870 003715F0  48 00 01 04 */	b lbl_8037B974
lbl_8037B874:
/* 8037B874 003715F4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8037B878 003715F8  80 1C 00 08 */	lwz r0, 8(r28)
/* 8037B87C 003715FC  7C 03 00 50 */	subf r0, r3, r0
/* 8037B880 00371600  90 01 00 08 */	stw r0, 8(r1)
lbl_8037B884:
/* 8037B884 00371604  2C 1E 3F 01 */	cmpwi r30, 0x3f01
/* 8037B888 00371608  3B 60 3F 01 */	li r27, 0x3f01
/* 8037B88C 0037160C  40 80 00 08 */	bge lbl_8037B894
/* 8037B890 00371610  7F DB F3 78 */	mr r27, r30
lbl_8037B894:
/* 8037B894 00371614  80 7C 00 00 */	lwz r3, 0(r28)
/* 8037B898 00371618  7F C6 F3 78 */	mr r6, r30
/* 8037B89C 0037161C  80 FC 00 04 */	lwz r7, 4(r28)
/* 8037B8A0 00371620  7C BD FA 14 */	add r5, r29, r31
/* 8037B8A4 00371624  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8037B8A8 00371628  38 83 01 90 */	addi r4, r3, 0x190
/* 8037B8AC 0037162C  81 83 01 A8 */	lwz r12, 0x1a8(r3)
/* 8037B8B0 00371630  39 01 00 08 */	addi r8, r1, 8
/* 8037B8B4 00371634  7C E7 02 14 */	add r7, r7, r0
/* 8037B8B8 00371638  7D 89 03 A6 */	mtctr r12
/* 8037B8BC 0037163C  4E 80 04 21 */	bctrl 
/* 8037B8C0 00371640  2C 03 00 02 */	cmpwi r3, 2
/* 8037B8C4 00371644  40 82 00 7C */	bne lbl_8037B940
/* 8037B8C8 00371648  2C 1C 00 00 */	cmpwi r28, 0
/* 8037B8CC 0037164C  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8037B8D0 00371650  40 82 00 0C */	bne lbl_8037B8DC
/* 8037B8D4 00371654  38 00 00 00 */	li r0, 0
/* 8037B8D8 00371658  48 00 00 44 */	b lbl_8037B91C
lbl_8037B8DC:
/* 8037B8DC 0037165C  2C 04 00 00 */	cmpwi r4, 0
/* 8037B8E0 00371660  41 81 00 0C */	bgt lbl_8037B8EC
/* 8037B8E4 00371664  38 00 00 00 */	li r0, 0
/* 8037B8E8 00371668  48 00 00 34 */	b lbl_8037B91C
lbl_8037B8EC:
/* 8037B8EC 0037166C  80 1C 00 08 */	lwz r0, 8(r28)
/* 8037B8F0 00371670  80 7C 00 04 */	lwz r3, 4(r28)
/* 8037B8F4 00371674  7F 60 22 14 */	add r27, r0, r4
/* 8037B8F8 00371678  7F 64 DB 78 */	mr r4, r27
/* 8037B8FC 0037167C  4B FE 26 FD */	bl gsirealloc
/* 8037B900 00371680  2C 03 00 00 */	cmpwi r3, 0
/* 8037B904 00371684  40 82 00 0C */	bne lbl_8037B910
/* 8037B908 00371688  38 00 00 00 */	li r0, 0
/* 8037B90C 0037168C  48 00 00 10 */	b lbl_8037B91C
lbl_8037B910:
/* 8037B910 00371690  90 7C 00 04 */	stw r3, 4(r28)
/* 8037B914 00371694  38 00 00 01 */	li r0, 1
/* 8037B918 00371698  93 7C 00 08 */	stw r27, 8(r28)
lbl_8037B91C:
/* 8037B91C 0037169C  2C 00 00 00 */	cmpwi r0, 0
/* 8037B920 003716A0  40 82 00 0C */	bne lbl_8037B92C
/* 8037B924 003716A4  38 60 00 00 */	li r3, 0
/* 8037B928 003716A8  48 00 00 4C */	b lbl_8037B974
lbl_8037B92C:
/* 8037B92C 003716AC  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8037B930 003716B0  80 1C 00 08 */	lwz r0, 8(r28)
/* 8037B934 003716B4  7C 03 00 50 */	subf r0, r3, r0
/* 8037B938 003716B8  90 01 00 08 */	stw r0, 8(r1)
/* 8037B93C 003716BC  48 00 00 2C */	b lbl_8037B968
lbl_8037B940:
/* 8037B940 003716C0  2C 03 00 01 */	cmpwi r3, 1
/* 8037B944 003716C4  40 82 00 1C */	bne lbl_8037B960
/* 8037B948 003716C8  80 61 00 08 */	lwz r3, 8(r1)
/* 8037B94C 003716CC  7F FF DA 14 */	add r31, r31, r27
/* 8037B950 003716D0  80 1C 00 08 */	lwz r0, 8(r28)
/* 8037B954 003716D4  7C 03 00 50 */	subf r0, r3, r0
/* 8037B958 003716D8  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8037B95C 003716DC  48 00 00 0C */	b lbl_8037B968
lbl_8037B960:
/* 8037B960 003716E0  38 60 00 00 */	li r3, 0
/* 8037B964 003716E4  48 00 00 10 */	b lbl_8037B974
lbl_8037B968:
/* 8037B968 003716E8  7C 1F F0 00 */	cmpw r31, r30
/* 8037B96C 003716EC  41 80 FF 18 */	blt lbl_8037B884
/* 8037B970 003716F0  38 60 00 01 */	li r3, 1
lbl_8037B974:
/* 8037B974 003716F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8037B978 003716F8  48 07 59 F5 */	bl _restgpr_27
/* 8037B97C 003716FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037B980 00371700  7C 08 03 A6 */	mtlr r0
/* 8037B984 00371704  38 21 00 30 */	addi r1, r1, 0x30
/* 8037B988 00371708  4E 80 00 20 */	blr 

.global ghiAppendHeaderToBuffer
ghiAppendHeaderToBuffer:
/* 8037B98C 0037170C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B990 00371710  7C 08 02 A6 */	mflr r0
/* 8037B994 00371714  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B998 00371718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B99C 0037171C  7C BF 2B 78 */	mr r31, r5
/* 8037B9A0 00371720  38 A0 00 00 */	li r5, 0
/* 8037B9A4 00371724  93 C1 00 08 */	stw r30, 8(r1)
/* 8037B9A8 00371728  7C 7E 1B 78 */	mr r30, r3
/* 8037B9AC 0037172C  4B FF FC 99 */	bl ghiAppendDataToBuffer
/* 8037B9B0 00371730  2C 03 00 00 */	cmpwi r3, 0
/* 8037B9B4 00371734  40 82 00 0C */	bne lbl_8037B9C0
/* 8037B9B8 00371738  38 60 00 00 */	li r3, 0
/* 8037B9BC 0037173C  48 00 00 60 */	b lbl_8037BA1C
lbl_8037B9C0:
/* 8037B9C0 00371740  7F C3 F3 78 */	mr r3, r30
/* 8037B9C4 00371744  38 8D B6 20 */	addi r4, r13, lbl_8059FA40-_SDA_BASE_
/* 8037B9C8 00371748  38 A0 00 02 */	li r5, 2
/* 8037B9CC 0037174C  4B FF FC 79 */	bl ghiAppendDataToBuffer
/* 8037B9D0 00371750  2C 03 00 00 */	cmpwi r3, 0
/* 8037B9D4 00371754  40 82 00 0C */	bne lbl_8037B9E0
/* 8037B9D8 00371758  38 60 00 00 */	li r3, 0
/* 8037B9DC 0037175C  48 00 00 40 */	b lbl_8037BA1C
lbl_8037B9E0:
/* 8037B9E0 00371760  7F C3 F3 78 */	mr r3, r30
/* 8037B9E4 00371764  7F E4 FB 78 */	mr r4, r31
/* 8037B9E8 00371768  38 A0 00 00 */	li r5, 0
/* 8037B9EC 0037176C  4B FF FC 59 */	bl ghiAppendDataToBuffer
/* 8037B9F0 00371770  2C 03 00 00 */	cmpwi r3, 0
/* 8037B9F4 00371774  40 82 00 0C */	bne lbl_8037BA00
/* 8037B9F8 00371778  38 60 00 00 */	li r3, 0
/* 8037B9FC 0037177C  48 00 00 20 */	b lbl_8037BA1C
lbl_8037BA00:
/* 8037BA00 00371780  7F C3 F3 78 */	mr r3, r30
/* 8037BA04 00371784  38 8D B6 24 */	addi r4, r13, lbl_8059FA44-_SDA_BASE_
/* 8037BA08 00371788  38 A0 00 02 */	li r5, 2
/* 8037BA0C 0037178C  4B FF FC 39 */	bl ghiAppendDataToBuffer
/* 8037BA10 00371790  7C 03 00 D0 */	neg r0, r3
/* 8037BA14 00371794  7C 00 1B 78 */	or r0, r0, r3
/* 8037BA18 00371798  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8037BA1C:
/* 8037BA1C 0037179C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BA20 003717A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037BA24 003717A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037BA28 003717A8  7C 08 03 A6 */	mtlr r0
/* 8037BA2C 003717AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BA30 003717B0  4E 80 00 20 */	blr 

.global ghiAppendCharToBuffer
ghiAppendCharToBuffer:
/* 8037BA34 003717B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BA38 003717B8  7C 08 02 A6 */	mflr r0
/* 8037BA3C 003717BC  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 8037BA40 003717C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BA44 003717C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BA48 003717C8  7C 7F 1B 78 */	mr r31, r3
/* 8037BA4C 003717CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037BA50 003717D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037BA54 003717D4  7C 9D 23 78 */	mr r29, r4
/* 8037BA58 003717D8  40 86 00 0C */	bne cr1, lbl_8037BA64
/* 8037BA5C 003717DC  38 60 00 00 */	li r3, 0
/* 8037BA60 003717E0  48 00 00 F0 */	b lbl_8037BB50
lbl_8037BA64:
/* 8037BA64 003717E4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8037BA68 003717E8  2C 00 00 00 */	cmpwi r0, 0
/* 8037BA6C 003717EC  41 82 00 0C */	beq lbl_8037BA78
/* 8037BA70 003717F0  38 60 00 00 */	li r3, 0
/* 8037BA74 003717F4  48 00 00 DC */	b lbl_8037BB50
lbl_8037BA78:
/* 8037BA78 003717F8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8037BA7C 003717FC  80 A3 00 08 */	lwz r5, 8(r3)
/* 8037BA80 00371800  38 04 00 01 */	addi r0, r4, 1
/* 8037BA84 00371804  7C 00 28 00 */	cmpw r0, r5
/* 8037BA88 00371808  41 80 00 A0 */	blt lbl_8037BB28
/* 8037BA8C 0037180C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8037BA90 00371810  2C 00 00 00 */	cmpwi r0, 0
/* 8037BA94 00371814  41 82 00 24 */	beq lbl_8037BAB8
/* 8037BA98 00371818  80 83 00 00 */	lwz r4, 0(r3)
/* 8037BA9C 0037181C  38 A0 00 01 */	li r5, 1
/* 8037BAA0 00371820  38 00 00 02 */	li r0, 2
/* 8037BAA4 00371824  90 A4 01 20 */	stw r5, 0x120(r4)
/* 8037BAA8 00371828  80 83 00 00 */	lwz r4, 0(r3)
/* 8037BAAC 0037182C  38 60 00 00 */	li r3, 0
/* 8037BAB0 00371830  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8037BAB4 00371834  48 00 00 9C */	b lbl_8037BB50
lbl_8037BAB8:
/* 8037BAB8 00371838  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8037BABC 0037183C  40 86 00 0C */	bne cr1, lbl_8037BAC8
/* 8037BAC0 00371840  38 00 00 00 */	li r0, 0
/* 8037BAC4 00371844  48 00 00 40 */	b lbl_8037BB04
lbl_8037BAC8:
/* 8037BAC8 00371848  2C 00 00 00 */	cmpwi r0, 0
/* 8037BACC 0037184C  41 81 00 0C */	bgt lbl_8037BAD8
/* 8037BAD0 00371850  38 00 00 00 */	li r0, 0
/* 8037BAD4 00371854  48 00 00 30 */	b lbl_8037BB04
lbl_8037BAD8:
/* 8037BAD8 00371858  7F C5 02 14 */	add r30, r5, r0
/* 8037BADC 0037185C  80 63 00 04 */	lwz r3, 4(r3)
/* 8037BAE0 00371860  7F C4 F3 78 */	mr r4, r30
/* 8037BAE4 00371864  4B FE 25 15 */	bl gsirealloc
/* 8037BAE8 00371868  2C 03 00 00 */	cmpwi r3, 0
/* 8037BAEC 0037186C  40 82 00 0C */	bne lbl_8037BAF8
/* 8037BAF0 00371870  38 00 00 00 */	li r0, 0
/* 8037BAF4 00371874  48 00 00 10 */	b lbl_8037BB04
lbl_8037BAF8:
/* 8037BAF8 00371878  90 7F 00 04 */	stw r3, 4(r31)
/* 8037BAFC 0037187C  38 00 00 01 */	li r0, 1
/* 8037BB00 00371880  93 DF 00 08 */	stw r30, 8(r31)
lbl_8037BB04:
/* 8037BB04 00371884  2C 00 00 00 */	cmpwi r0, 0
/* 8037BB08 00371888  40 82 00 20 */	bne lbl_8037BB28
/* 8037BB0C 0037188C  80 9F 00 00 */	lwz r4, 0(r31)
/* 8037BB10 00371890  38 00 00 01 */	li r0, 1
/* 8037BB14 00371894  38 60 00 00 */	li r3, 0
/* 8037BB18 00371898  90 04 01 20 */	stw r0, 0x120(r4)
/* 8037BB1C 0037189C  80 9F 00 00 */	lwz r4, 0(r31)
/* 8037BB20 003718A0  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8037BB24 003718A4  48 00 00 2C */	b lbl_8037BB50
lbl_8037BB28:
/* 8037BB28 003718A8  80 BF 00 04 */	lwz r5, 4(r31)
/* 8037BB2C 003718AC  38 00 00 00 */	li r0, 0
/* 8037BB30 003718B0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8037BB34 003718B4  38 60 00 01 */	li r3, 1
/* 8037BB38 003718B8  7F A5 21 AE */	stbx r29, r5, r4
/* 8037BB3C 003718BC  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8037BB40 003718C0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8037BB44 003718C4  38 A5 00 01 */	addi r5, r5, 1
/* 8037BB48 003718C8  90 BF 00 0C */	stw r5, 0xc(r31)
/* 8037BB4C 003718CC  7C 04 29 AE */	stbx r0, r4, r5
lbl_8037BB50:
/* 8037BB50 003718D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BB54 003718D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BB58 003718D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037BB5C 003718DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037BB60 003718E0  7C 08 03 A6 */	mtlr r0
/* 8037BB64 003718E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BB68 003718E8  4E 80 00 20 */	blr 

.global ghiAppendIntToBuffer
ghiAppendIntToBuffer:
/* 8037BB6C 003718EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BB70 003718F0  7C 08 02 A6 */	mflr r0
/* 8037BB74 003718F4  7C 85 23 78 */	mr r5, r4
/* 8037BB78 003718F8  38 8D B6 28 */	addi r4, r13, lbl_8059FA48-_SDA_BASE_
/* 8037BB7C 003718FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BB80 00371900  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BB84 00371904  7C 7F 1B 78 */	mr r31, r3
/* 8037BB88 00371908  38 61 00 08 */	addi r3, r1, 8
/* 8037BB8C 0037190C  4C C6 31 82 */	crclr 6
/* 8037BB90 00371910  48 07 CE 6D */	bl sprintf
/* 8037BB94 00371914  7F E3 FB 78 */	mr r3, r31
/* 8037BB98 00371918  38 81 00 08 */	addi r4, r1, 8
/* 8037BB9C 0037191C  38 A0 00 00 */	li r5, 0
/* 8037BBA0 00371920  4B FF FA A5 */	bl ghiAppendDataToBuffer
/* 8037BBA4 00371924  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BBA8 00371928  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BBAC 0037192C  7C 08 03 A6 */	mtlr r0
/* 8037BBB0 00371930  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BBB4 00371934  4E 80 00 20 */	blr 

.global ghiResetBuffer
ghiResetBuffer:
/* 8037BBB8 00371938  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8037BBBC 0037193C  38 80 00 00 */	li r4, 0
/* 8037BBC0 00371940  90 83 00 0C */	stw r4, 0xc(r3)
/* 8037BBC4 00371944  2C 00 00 00 */	cmpwi r0, 0
/* 8037BBC8 00371948  90 83 00 10 */	stw r4, 0x10(r3)
/* 8037BBCC 0037194C  4C 82 00 20 */	bnelr 
/* 8037BBD0 00371950  80 63 00 04 */	lwz r3, 4(r3)
/* 8037BBD4 00371954  98 83 00 00 */	stb r4, 0(r3)
/* 8037BBD8 00371958  4E 80 00 20 */	blr 

.global ghiSendBufferedData
ghiSendBufferedData:
/* 8037BBDC 0037195C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BBE0 00371960  7C 08 02 A6 */	mflr r0
/* 8037BBE4 00371964  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BBE8 00371968  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BBEC 0037196C  7C 7F 1B 78 */	mr r31, r3
lbl_8037BBF0:
/* 8037BBF0 00371970  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8037BBF4 00371974  38 A1 00 0C */	addi r5, r1, 0xc
/* 8037BBF8 00371978  38 C1 00 08 */	addi r6, r1, 8
/* 8037BBFC 0037197C  38 80 00 00 */	li r4, 0
/* 8037BC00 00371980  4B FE 0A 61 */	bl GSISocketSelect
/* 8037BC04 00371984  2C 03 FF FF */	cmpwi r3, -1
/* 8037BC08 00371988  41 82 00 18 */	beq lbl_8037BC20
/* 8037BC0C 0037198C  2C 03 00 01 */	cmpwi r3, 1
/* 8037BC10 00371990  40 82 00 48 */	bne lbl_8037BC58
/* 8037BC14 00371994  80 01 00 08 */	lwz r0, 8(r1)
/* 8037BC18 00371998  2C 00 00 00 */	cmpwi r0, 0
/* 8037BC1C 0037199C  41 82 00 3C */	beq lbl_8037BC58
lbl_8037BC20:
/* 8037BC20 003719A0  38 80 00 01 */	li r4, 1
/* 8037BC24 003719A4  38 00 00 05 */	li r0, 5
/* 8037BC28 003719A8  2C 03 FF FF */	cmpwi r3, -1
/* 8037BC2C 003719AC  90 9F 01 20 */	stw r4, 0x120(r31)
/* 8037BC30 003719B0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8037BC34 003719B4  40 82 00 14 */	bne lbl_8037BC48
/* 8037BC38 003719B8  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8037BC3C 003719BC  4B FE 0A 1D */	bl GOAGetLastError
/* 8037BC40 003719C0  90 7F 00 50 */	stw r3, 0x50(r31)
/* 8037BC44 003719C4  48 00 00 0C */	b lbl_8037BC50
lbl_8037BC48:
/* 8037BC48 003719C8  38 00 00 00 */	li r0, 0
/* 8037BC4C 003719CC  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_8037BC50:
/* 8037BC50 003719D0  38 60 00 00 */	li r3, 0
/* 8037BC54 003719D4  48 00 00 68 */	b lbl_8037BCBC
lbl_8037BC58:
/* 8037BC58 003719D8  2C 03 00 01 */	cmpwi r3, 1
/* 8037BC5C 003719DC  41 80 00 10 */	blt lbl_8037BC6C
/* 8037BC60 003719E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8037BC64 003719E4  2C 00 00 00 */	cmpwi r0, 0
/* 8037BC68 003719E8  40 82 00 0C */	bne lbl_8037BC74
lbl_8037BC6C:
/* 8037BC6C 003719EC  38 60 00 01 */	li r3, 1
/* 8037BC70 003719F0  48 00 00 4C */	b lbl_8037BCBC
lbl_8037BC74:
/* 8037BC74 003719F4  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 8037BC78 003719F8  7F E3 FB 78 */	mr r3, r31
/* 8037BC7C 003719FC  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8037BC80 00371A00  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 8037BC84 00371A04  7C 84 2A 14 */	add r4, r4, r5
/* 8037BC88 00371A08  7C A5 00 50 */	subf r5, r5, r0
/* 8037BC8C 00371A0C  48 00 04 79 */	bl ghiDoSend
/* 8037BC90 00371A10  2C 03 FF FF */	cmpwi r3, -1
/* 8037BC94 00371A14  40 82 00 0C */	bne lbl_8037BCA0
/* 8037BC98 00371A18  38 60 00 00 */	li r3, 0
/* 8037BC9C 00371A1C  48 00 00 20 */	b lbl_8037BCBC
lbl_8037BCA0:
/* 8037BCA0 00371A20  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8037BCA4 00371A24  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 8037BCA8 00371A28  7C 64 1A 14 */	add r3, r4, r3
/* 8037BCAC 00371A2C  7C 03 00 00 */	cmpw r3, r0
/* 8037BCB0 00371A30  90 7F 00 64 */	stw r3, 0x64(r31)
/* 8037BCB4 00371A34  41 80 FF 3C */	blt lbl_8037BBF0
/* 8037BCB8 00371A38  38 60 00 01 */	li r3, 1
lbl_8037BCBC:
/* 8037BCBC 00371A3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BCC0 00371A40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BCC4 00371A44  7C 08 03 A6 */	mtlr r0
/* 8037BCC8 00371A48  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BCCC 00371A4C  4E 80 00 20 */	blr 

.global ghiReadDataFromBufferFixed
ghiReadDataFromBufferFixed:
/* 8037BCD0 00371A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BCD4 00371A54  7C 08 02 A6 */	mflr r0
/* 8037BCD8 00371A58  2C 05 00 00 */	cmpwi r5, 0
/* 8037BCDC 00371A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BCE0 00371A60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037BCE4 00371A64  7C BF 2B 78 */	mr r31, r5
/* 8037BCE8 00371A68  93 C1 00 08 */	stw r30, 8(r1)
/* 8037BCEC 00371A6C  7C 7E 1B 78 */	mr r30, r3
/* 8037BCF0 00371A70  40 82 00 0C */	bne lbl_8037BCFC
/* 8037BCF4 00371A74  38 60 00 01 */	li r3, 1
/* 8037BCF8 00371A78  48 00 00 3C */	b lbl_8037BD34
lbl_8037BCFC:
/* 8037BCFC 00371A7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8037BD00 00371A80  7C 00 28 00 */	cmpw r0, r5
/* 8037BD04 00371A84  40 80 00 0C */	bge lbl_8037BD10
/* 8037BD08 00371A88  38 60 00 00 */	li r3, 0
/* 8037BD0C 00371A8C  48 00 00 28 */	b lbl_8037BD34
lbl_8037BD10:
/* 8037BD10 00371A90  80 DE 00 04 */	lwz r6, 4(r30)
/* 8037BD14 00371A94  7C 83 23 78 */	mr r3, r4
/* 8037BD18 00371A98  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8037BD1C 00371A9C  7C 86 02 14 */	add r4, r6, r0
/* 8037BD20 00371AA0  4B C8 86 19 */	bl memcpy
/* 8037BD24 00371AA4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8037BD28 00371AA8  38 60 00 01 */	li r3, 1
/* 8037BD2C 00371AAC  7C 00 FA 14 */	add r0, r0, r31
/* 8037BD30 00371AB0  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_8037BD34:
/* 8037BD34 00371AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BD38 00371AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037BD3C 00371ABC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037BD40 00371AC0  7C 08 03 A6 */	mtlr r0
/* 8037BD44 00371AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BD48 00371AC8  4E 80 00 20 */	blr 


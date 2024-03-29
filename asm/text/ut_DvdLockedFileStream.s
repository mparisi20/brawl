.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ut19DvdLockedFileStreamFl$7__ct
nw4r2ut19DvdLockedFileStreamFl$7__ct:
/* 8015D36C 001530EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D370 001530F0  7C 08 02 A6 */	mflr r0
/* 8015D374 001530F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D378 001530F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D37C 001530FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8015D380 00153100  7C 7E 1B 78 */	mr r30, r3
/* 8015D384 00153104  4B FF FA 25 */	bl nw4r2ut13DvdFileStreamFl$7__ct
/* 8015D388 00153108  3C 60 80 46 */	lis r3, lbl_80464610@ha
/* 8015D38C 0015310C  38 00 00 00 */	li r0, 0
/* 8015D390 00153110  38 63 46 10 */	addi r3, r3, lbl_80464610@l
/* 8015D394 00153114  98 1E 00 6F */	stb r0, 0x6f(r30)
/* 8015D398 00153118  90 7E 00 00 */	stw r3, 0(r30)
/* 8015D39C 0015311C  48 07 FB 75 */	bl OSDisableInterrupts
/* 8015D3A0 00153120  88 0D C0 80 */	lbz r0, lbl_805A04A0-_SDA_BASE_(r13)
/* 8015D3A4 00153124  7C 7F 1B 78 */	mr r31, r3
/* 8015D3A8 00153128  2C 00 00 00 */	cmpwi r0, 0
/* 8015D3AC 0015312C  40 82 00 20 */	bne lbl_8015D3CC
/* 8015D3B0 00153130  3C 60 80 4A */	lis r3, lbl_8049ED58@ha
/* 8015D3B4 00153134  38 63 ED 58 */	addi r3, r3, lbl_8049ED58@l
/* 8015D3B8 00153138  48 08 17 C5 */	bl OSInitMutex
/* 8015D3BC 0015313C  38 6D C0 78 */	addi r3, r13, lbl_805A0498-_SDA_BASE_
/* 8015D3C0 00153140  48 08 33 45 */	bl OSInitThreadQueue
/* 8015D3C4 00153144  38 00 00 01 */	li r0, 1
/* 8015D3C8 00153148  98 0D C0 80 */	stb r0, lbl_805A04A0-_SDA_BASE_(r13)
lbl_8015D3CC:
/* 8015D3CC 0015314C  7F E3 FB 78 */	mr r3, r31
/* 8015D3D0 00153150  48 07 FB 69 */	bl OSRestoreInterrupts
/* 8015D3D4 00153154  7F C3 F3 78 */	mr r3, r30
/* 8015D3D8 00153158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D3DC 0015315C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015D3E0 00153160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D3E4 00153164  7C 08 03 A6 */	mtlr r0
/* 8015D3E8 00153168  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D3EC 0015316C  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFPC11D$7__ct
nw4r2ut19DvdLockedFileStreamFPC11D$7__ct:
/* 8015D3F0 00153170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D3F4 00153174  7C 08 02 A6 */	mflr r0
/* 8015D3F8 00153178  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D3FC 0015317C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D400 00153180  93 C1 00 08 */	stw r30, 8(r1)
/* 8015D404 00153184  7C 7E 1B 78 */	mr r30, r3
/* 8015D408 00153188  4B FF FA 5D */	bl nw4r2ut13DvdFileStreamFPC11DVDFile$7__ct
/* 8015D40C 0015318C  3C 60 80 46 */	lis r3, lbl_80464610@ha
/* 8015D410 00153190  38 00 00 00 */	li r0, 0
/* 8015D414 00153194  38 63 46 10 */	addi r3, r3, lbl_80464610@l
/* 8015D418 00153198  98 1E 00 6F */	stb r0, 0x6f(r30)
/* 8015D41C 0015319C  90 7E 00 00 */	stw r3, 0(r30)
/* 8015D420 001531A0  48 07 FA F1 */	bl OSDisableInterrupts
/* 8015D424 001531A4  88 0D C0 80 */	lbz r0, lbl_805A04A0-_SDA_BASE_(r13)
/* 8015D428 001531A8  7C 7F 1B 78 */	mr r31, r3
/* 8015D42C 001531AC  2C 00 00 00 */	cmpwi r0, 0
/* 8015D430 001531B0  40 82 00 20 */	bne lbl_8015D450
/* 8015D434 001531B4  3C 60 80 4A */	lis r3, lbl_8049ED58@ha
/* 8015D438 001531B8  38 63 ED 58 */	addi r3, r3, lbl_8049ED58@l
/* 8015D43C 001531BC  48 08 17 41 */	bl OSInitMutex
/* 8015D440 001531C0  38 6D C0 78 */	addi r3, r13, lbl_805A0498-_SDA_BASE_
/* 8015D444 001531C4  48 08 32 C1 */	bl OSInitThreadQueue
/* 8015D448 001531C8  38 00 00 01 */	li r0, 1
/* 8015D44C 001531CC  98 0D C0 80 */	stb r0, lbl_805A04A0-_SDA_BASE_(r13)
lbl_8015D450:
/* 8015D450 001531D0  7F E3 FB 78 */	mr r3, r31
/* 8015D454 001531D4  48 07 FA E5 */	bl OSRestoreInterrupts
/* 8015D458 001531D8  7F C3 F3 78 */	mr r3, r30
/* 8015D45C 001531DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D460 001531E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015D464 001531E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D468 001531E8  7C 08 03 A6 */	mtlr r0
/* 8015D46C 001531EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D470 001531F0  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFv$7__dt
nw4r2ut19DvdLockedFileStreamFv$7__dt:
/* 8015D474 001531F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D478 001531F8  7C 08 02 A6 */	mflr r0
/* 8015D47C 001531FC  2C 03 00 00 */	cmpwi r3, 0
/* 8015D480 00153200  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D484 00153204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D488 00153208  7C 9F 23 78 */	mr r31, r4
/* 8015D48C 0015320C  93 C1 00 08 */	stw r30, 8(r1)
/* 8015D490 00153210  7C 7E 1B 78 */	mr r30, r3
/* 8015D494 00153214  41 82 00 1C */	beq lbl_8015D4B0
/* 8015D498 00153218  38 80 00 00 */	li r4, 0
/* 8015D49C 0015321C  4B FF FA F9 */	bl nw4r2ut13DvdFileStreamFv$7__dt
/* 8015D4A0 00153220  2C 1F 00 00 */	cmpwi r31, 0
/* 8015D4A4 00153224  40 81 00 0C */	ble lbl_8015D4B0
/* 8015D4A8 00153228  7F C3 F3 78 */	mr r3, r30
/* 8015D4AC 0015322C  4B EA F4 1D */	bl __dl__FPv
lbl_8015D4B0:
/* 8015D4B0 00153230  7F C3 F3 78 */	mr r3, r30
/* 8015D4B4 00153234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D4B8 00153238  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015D4BC 0015323C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D4C0 00153240  7C 08 03 A6 */	mtlr r0
/* 8015D4C4 00153244  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D4C8 00153248  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFv$7Close
nw4r2ut19DvdLockedFileStreamFv$7Close:
/* 8015D4CC 0015324C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D4D0 00153250  7C 08 02 A6 */	mflr r0
/* 8015D4D4 00153254  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D4D8 00153258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D4DC 0015325C  7C 7F 1B 78 */	mr r31, r3
/* 8015D4E0 00153260  4B FF FB 2D */	bl nw4r2ut13DvdFileStreamFv$7Close
/* 8015D4E4 00153264  38 00 00 00 */	li r0, 0
/* 8015D4E8 00153268  98 1F 00 6F */	stb r0, 0x6f(r31)
/* 8015D4EC 0015326C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D4F0 00153270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D4F4 00153274  7C 08 03 A6 */	mtlr r0
/* 8015D4F8 00153278  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D4FC 0015327C  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFPvUl$7Read
nw4r2ut19DvdLockedFileStreamFPvUl$7Read:
/* 8015D500 00153280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015D504 00153284  7C 08 02 A6 */	mflr r0
/* 8015D508 00153288  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D50C 0015328C  39 61 00 20 */	addi r11, r1, 0x20
/* 8015D510 00153290  48 29 3E 11 */	bl _savegpr_27
/* 8015D514 00153294  7C 7B 1B 78 */	mr r27, r3
/* 8015D518 00153298  7C 9C 23 78 */	mr r28, r4
/* 8015D51C 0015329C  7C BD 2B 78 */	mr r29, r5
/* 8015D520 001532A0  48 07 F9 F1 */	bl OSDisableInterrupts
/* 8015D524 001532A4  7C 7E 1B 78 */	mr r30, r3
/* 8015D528 001532A8  3F E0 80 4A */	lis r31, 0x804a
/* 8015D52C 001532AC  48 00 00 28 */	b lbl_8015D554
lbl_8015D530:
/* 8015D530 001532B0  38 6D C0 78 */	addi r3, r13, lbl_805A0498-_SDA_BASE_
/* 8015D534 001532B4  48 08 42 5D */	bl OSSleepThread
/* 8015D538 001532B8  88 1B 00 6F */	lbz r0, 0x6f(r27)
/* 8015D53C 001532BC  2C 00 00 00 */	cmpwi r0, 0
/* 8015D540 001532C0  41 82 00 14 */	beq lbl_8015D554
/* 8015D544 001532C4  7F C3 F3 78 */	mr r3, r30
/* 8015D548 001532C8  48 07 F9 F1 */	bl OSRestoreInterrupts
/* 8015D54C 001532CC  38 00 00 00 */	li r0, 0
/* 8015D550 001532D0  48 00 00 20 */	b lbl_8015D570
lbl_8015D554:
/* 8015D554 001532D4  38 7F ED 58 */	addi r3, r31, -4776
/* 8015D558 001532D8  48 08 18 6D */	bl OSTryLockMutex
/* 8015D55C 001532DC  2C 03 00 00 */	cmpwi r3, 0
/* 8015D560 001532E0  41 82 FF D0 */	beq lbl_8015D530
/* 8015D564 001532E4  7F C3 F3 78 */	mr r3, r30
/* 8015D568 001532E8  48 07 F9 D1 */	bl OSRestoreInterrupts
/* 8015D56C 001532EC  38 00 00 01 */	li r0, 1
lbl_8015D570:
/* 8015D570 001532F0  2C 00 00 00 */	cmpwi r0, 0
/* 8015D574 001532F4  40 82 00 0C */	bne lbl_8015D580
/* 8015D578 001532F8  38 60 FF FD */	li r3, -3
/* 8015D57C 001532FC  48 00 00 40 */	b lbl_8015D5BC
lbl_8015D580:
/* 8015D580 00153300  7F 63 DB 78 */	mr r3, r27
/* 8015D584 00153304  7F 84 E3 78 */	mr r4, r28
/* 8015D588 00153308  7F A5 EB 78 */	mr r5, r29
/* 8015D58C 0015330C  4B FF FA D1 */	bl nw4r2ut13DvdFileStreamFPvUl$7Read
/* 8015D590 00153310  7C 7F 1B 78 */	mr r31, r3
/* 8015D594 00153314  48 07 F9 7D */	bl OSDisableInterrupts
/* 8015D598 00153318  3C 80 80 4A */	lis r4, lbl_8049ED58@ha
/* 8015D59C 0015331C  7C 7E 1B 78 */	mr r30, r3
/* 8015D5A0 00153320  38 64 ED 58 */	addi r3, r4, lbl_8049ED58@l
/* 8015D5A4 00153324  48 08 16 ED */	bl OSUnlockMutex
/* 8015D5A8 00153328  38 6D C0 78 */	addi r3, r13, lbl_805A0498-_SDA_BASE_
/* 8015D5AC 0015332C  48 08 42 D1 */	bl OSWakeupThread
/* 8015D5B0 00153330  7F C3 F3 78 */	mr r3, r30
/* 8015D5B4 00153334  48 07 F9 85 */	bl OSRestoreInterrupts
/* 8015D5B8 00153338  7F E3 FB 78 */	mr r3, r31
lbl_8015D5BC:
/* 8015D5BC 0015333C  39 61 00 20 */	addi r11, r1, 0x20
/* 8015D5C0 00153340  48 29 3D AD */	bl _restgpr_27
/* 8015D5C4 00153344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D5C8 00153348  7C 08 03 A6 */	mtlr r0
/* 8015D5CC 0015334C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D5D0 00153350  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFPvUl$7Peek
nw4r2ut19DvdLockedFileStreamFPvUl$7Peek:
/* 8015D5D4 00153354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015D5D8 00153358  7C 08 02 A6 */	mflr r0
/* 8015D5DC 0015335C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D5E0 00153360  39 61 00 20 */	addi r11, r1, 0x20
/* 8015D5E4 00153364  48 29 3D 3D */	bl _savegpr_27
/* 8015D5E8 00153368  7C 7B 1B 78 */	mr r27, r3
/* 8015D5EC 0015336C  7C 9C 23 78 */	mr r28, r4
/* 8015D5F0 00153370  7C BD 2B 78 */	mr r29, r5
/* 8015D5F4 00153374  48 07 F9 1D */	bl OSDisableInterrupts
/* 8015D5F8 00153378  7C 7E 1B 78 */	mr r30, r3
/* 8015D5FC 0015337C  3F E0 80 4A */	lis r31, 0x804a
/* 8015D600 00153380  48 00 00 28 */	b lbl_8015D628
lbl_8015D604:
/* 8015D604 00153384  38 6D C0 78 */	addi r3, r13, lbl_805A0498-_SDA_BASE_
/* 8015D608 00153388  48 08 41 89 */	bl OSSleepThread
/* 8015D60C 0015338C  88 1B 00 6F */	lbz r0, 0x6f(r27)
/* 8015D610 00153390  2C 00 00 00 */	cmpwi r0, 0
/* 8015D614 00153394  41 82 00 14 */	beq lbl_8015D628
/* 8015D618 00153398  7F C3 F3 78 */	mr r3, r30
/* 8015D61C 0015339C  48 07 F9 1D */	bl OSRestoreInterrupts
/* 8015D620 001533A0  38 00 00 00 */	li r0, 0
/* 8015D624 001533A4  48 00 00 20 */	b lbl_8015D644
lbl_8015D628:
/* 8015D628 001533A8  38 7F ED 58 */	addi r3, r31, -4776
/* 8015D62C 001533AC  48 08 17 99 */	bl OSTryLockMutex
/* 8015D630 001533B0  2C 03 00 00 */	cmpwi r3, 0
/* 8015D634 001533B4  41 82 FF D0 */	beq lbl_8015D604
/* 8015D638 001533B8  7F C3 F3 78 */	mr r3, r30
/* 8015D63C 001533BC  48 07 F8 FD */	bl OSRestoreInterrupts
/* 8015D640 001533C0  38 00 00 01 */	li r0, 1
lbl_8015D644:
/* 8015D644 001533C4  2C 00 00 00 */	cmpwi r0, 0
/* 8015D648 001533C8  40 82 00 0C */	bne lbl_8015D654
/* 8015D64C 001533CC  38 60 FF FD */	li r3, -3
/* 8015D650 001533D0  48 00 00 40 */	b lbl_8015D690
lbl_8015D654:
/* 8015D654 001533D4  7F 63 DB 78 */	mr r3, r27
/* 8015D658 001533D8  7F 84 E3 78 */	mr r4, r28
/* 8015D65C 001533DC  7F A5 EB 78 */	mr r5, r29
/* 8015D660 001533E0  4B FF FB 79 */	bl nw4r2ut13DvdFileStreamFPvUl$7Peek
/* 8015D664 001533E4  7C 7F 1B 78 */	mr r31, r3
/* 8015D668 001533E8  48 07 F8 A9 */	bl OSDisableInterrupts
/* 8015D66C 001533EC  3C 80 80 4A */	lis r4, lbl_8049ED58@ha
/* 8015D670 001533F0  7C 7E 1B 78 */	mr r30, r3
/* 8015D674 001533F4  38 64 ED 58 */	addi r3, r4, lbl_8049ED58@l
/* 8015D678 001533F8  48 08 16 19 */	bl OSUnlockMutex
/* 8015D67C 001533FC  38 6D C0 78 */	addi r3, r13, lbl_805A0498-_SDA_BASE_
/* 8015D680 00153400  48 08 41 FD */	bl OSWakeupThread
/* 8015D684 00153404  7F C3 F3 78 */	mr r3, r30
/* 8015D688 00153408  48 07 F8 B1 */	bl OSRestoreInterrupts
/* 8015D68C 0015340C  7F E3 FB 78 */	mr r3, r31
lbl_8015D690:
/* 8015D690 00153410  39 61 00 20 */	addi r11, r1, 0x20
/* 8015D694 00153414  48 29 3C D9 */	bl _restgpr_27
/* 8015D698 00153418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D69C 0015341C  7C 08 03 A6 */	mtlr r0
/* 8015D6A0 00153420  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D6A4 00153424  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFv$7Cancel
nw4r2ut19DvdLockedFileStreamFv$7Cancel:
/* 8015D6A8 00153428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D6AC 0015342C  7C 08 02 A6 */	mflr r0
/* 8015D6B0 00153430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D6B4 00153434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D6B8 00153438  93 C1 00 08 */	stw r30, 8(r1)
/* 8015D6BC 0015343C  7C 7E 1B 78 */	mr r30, r3
/* 8015D6C0 00153440  48 07 F8 51 */	bl OSDisableInterrupts
/* 8015D6C4 00153444  38 00 00 01 */	li r0, 1
/* 8015D6C8 00153448  7C 7F 1B 78 */	mr r31, r3
/* 8015D6CC 0015344C  98 1E 00 6F */	stb r0, 0x6f(r30)
/* 8015D6D0 00153450  38 6D C0 78 */	addi r3, r13, lbl_805A0498-_SDA_BASE_
/* 8015D6D4 00153454  48 08 41 A9 */	bl OSWakeupThread
/* 8015D6D8 00153458  7F E3 FB 78 */	mr r3, r31
/* 8015D6DC 0015345C  48 07 F8 5D */	bl OSRestoreInterrupts
/* 8015D6E0 00153460  7F C3 F3 78 */	mr r3, r30
/* 8015D6E4 00153464  4B FF FB B9 */	bl nw4r2ut13DvdFileStreamFv$7Cancel
/* 8015D6E8 00153468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D6EC 0015346C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D6F0 00153470  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015D6F4 00153474  7C 08 03 A6 */	mtlr r0
/* 8015D6F8 00153478  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D6FC 0015347C  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamCFv$7CanAsync
nw4r2ut19DvdLockedFileStreamCFv$7CanAsync:
/* 8015D700 00153480  38 60 00 00 */	li r3, 0
/* 8015D704 00153484  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFPvUlP$7PeekAsync
nw4r2ut19DvdLockedFileStreamFPvUlP$7PeekAsync:
/* 8015D708 00153488  38 60 00 00 */	li r3, 0
/* 8015D70C 0015348C  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamFPvUlP$7ReadAsync
nw4r2ut19DvdLockedFileStreamFPvUlP$7ReadAsync:
/* 8015D710 00153490  38 60 00 00 */	li r3, 0
/* 8015D714 00153494  4E 80 00 20 */	blr 

.global nw4r2ut19DvdLockedFileStreamCFv$7GetRuntimeTypeInfo
nw4r2ut19DvdLockedFileStreamCFv$7GetRuntimeTypeInfo:
/* 8015D718 00153498  38 6D C0 70 */	addi r3, r13, lbl_805A0490-_SDA_BASE_
/* 8015D71C 0015349C  4E 80 00 20 */	blr 

.global __sinit_$3ut_DvdLockedFileStream_cpp
__sinit_$3ut_DvdLockedFileStream_cpp:
/* 8015D720 001534A0  38 0D C0 68 */	addi r0, r13, lbl_805A0488-_SDA_BASE_
/* 8015D724 001534A4  90 0D C0 70 */	stw r0, lbl_805A0490-_SDA_BASE_(r13)
/* 8015D728 001534A8  4E 80 00 20 */	blr 


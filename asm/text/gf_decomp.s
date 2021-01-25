.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfDecomp$7decomp
gfDecomp$7decomp:
/* 8001A48C 0001020C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001A490 00010210  7C 08 02 A6 */	mflr r0
/* 8001A494 00010214  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001A498 00010218  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001A49C 0001021C  7C BF 2B 78 */	mr r31, r5
/* 8001A4A0 00010220  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001A4A4 00010224  7C 9E 23 78 */	mr r30, r4
/* 8001A4A8 00010228  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001A4AC 0001022C  7C 7D 1B 78 */	mr r29, r3
/* 8001A4B0 00010230  88 03 00 00 */	lbz r0, 0(r3)
/* 8001A4B4 00010234  2C 00 00 00 */	cmpwi r0, 0
/* 8001A4B8 00010238  40 82 00 8C */	bne lbl_8001A544
/* 8001A4BC 0001023C  88 04 00 00 */	lbz r0, 0(r4)
/* 8001A4C0 00010240  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8001A4C4 00010244  90 03 00 04 */	stw r0, 4(r3)
/* 8001A4C8 00010248  7F C3 F3 78 */	mr r3, r30
/* 8001A4CC 0001024C  48 1E BB 0D */	bl CXGetUncompressedSize
/* 8001A4D0 00010250  7C 64 1B 78 */	mr r4, r3
/* 8001A4D4 00010254  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8001A4D8 00010258  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8001A4DC 0001025C  38 A0 00 20 */	li r5, 0x20
/* 8001A4E0 00010260  48 00 B7 79 */	bl gfMemoryPool$7alloc
/* 8001A4E4 00010264  80 1D 00 04 */	lwz r0, 4(r29)
/* 8001A4E8 00010268  90 7D 00 08 */	stw r3, 8(r29)
/* 8001A4EC 0001026C  2C 00 00 20 */	cmpwi r0, 0x20
/* 8001A4F0 00010270  41 82 00 40 */	beq lbl_8001A530
/* 8001A4F4 00010274  40 80 00 10 */	bge lbl_8001A504
/* 8001A4F8 00010278  2C 00 00 10 */	cmpwi r0, 0x10
/* 8001A4FC 0001027C  41 82 00 24 */	beq lbl_8001A520
/* 8001A500 00010280  48 00 00 3C */	b lbl_8001A53C
lbl_8001A504:
/* 8001A504 00010284  2C 00 00 30 */	cmpwi r0, 0x30
/* 8001A508 00010288  41 82 00 08 */	beq lbl_8001A510
/* 8001A50C 0001028C  48 00 00 30 */	b lbl_8001A53C
lbl_8001A510:
/* 8001A510 00010290  7C 64 1B 78 */	mr r4, r3
/* 8001A514 00010294  38 7D 00 14 */	addi r3, r29, 0x14
/* 8001A518 00010298  48 1E B0 19 */	bl CXInitUncompContextRL
/* 8001A51C 0001029C  48 00 00 20 */	b lbl_8001A53C
lbl_8001A520:
/* 8001A520 000102A0  7C 64 1B 78 */	mr r4, r3
/* 8001A524 000102A4  38 7D 00 14 */	addi r3, r29, 0x14
/* 8001A528 000102A8  48 1E B0 2D */	bl CXInitUncompContextLZ
/* 8001A52C 000102AC  48 00 00 10 */	b lbl_8001A53C
lbl_8001A530:
/* 8001A530 000102B0  7C 64 1B 78 */	mr r4, r3
/* 8001A534 000102B4  38 7D 00 14 */	addi r3, r29, 0x14
/* 8001A538 000102B8  48 1E B0 51 */	bl CXInitUncompContextHuffman
lbl_8001A53C:
/* 8001A53C 000102BC  38 00 00 01 */	li r0, 1
/* 8001A540 000102C0  98 1D 00 00 */	stb r0, 0(r29)
lbl_8001A544:
/* 8001A544 000102C4  80 1D 00 04 */	lwz r0, 4(r29)
/* 8001A548 000102C8  2C 00 00 20 */	cmpwi r0, 0x20
/* 8001A54C 000102CC  41 82 00 48 */	beq lbl_8001A594
/* 8001A550 000102D0  40 80 00 10 */	bge lbl_8001A560
/* 8001A554 000102D4  2C 00 00 10 */	cmpwi r0, 0x10
/* 8001A558 000102D8  41 82 00 28 */	beq lbl_8001A580
/* 8001A55C 000102DC  48 00 00 48 */	b lbl_8001A5A4
lbl_8001A560:
/* 8001A560 000102E0  2C 00 00 30 */	cmpwi r0, 0x30
/* 8001A564 000102E4  41 82 00 08 */	beq lbl_8001A56C
/* 8001A568 000102E8  48 00 00 3C */	b lbl_8001A5A4
lbl_8001A56C:
/* 8001A56C 000102EC  7F C4 F3 78 */	mr r4, r30
/* 8001A570 000102F0  7F E5 FB 78 */	mr r5, r31
/* 8001A574 000102F4  38 7D 00 14 */	addi r3, r29, 0x14
/* 8001A578 000102F8  48 1E B0 51 */	bl CXReadUncompRL
/* 8001A57C 000102FC  48 00 00 28 */	b lbl_8001A5A4
lbl_8001A580:
/* 8001A580 00010300  7F C4 F3 78 */	mr r4, r30
/* 8001A584 00010304  7F E5 FB 78 */	mr r5, r31
/* 8001A588 00010308  38 7D 00 14 */	addi r3, r29, 0x14
/* 8001A58C 0001030C  48 1E B2 D5 */	bl CXReadUncompLZ
/* 8001A590 00010310  48 00 00 14 */	b lbl_8001A5A4
lbl_8001A594:
/* 8001A594 00010314  7F C4 F3 78 */	mr r4, r30
/* 8001A598 00010318  7F E5 FB 78 */	mr r5, r31
/* 8001A59C 0001031C  38 7D 00 14 */	addi r3, r29, 0x14
/* 8001A5A0 00010320  48 1E B6 7D */	bl CXReadUncompHuffman
lbl_8001A5A4:
/* 8001A5A4 00010324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001A5A8 00010328  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001A5AC 0001032C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001A5B0 00010330  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001A5B4 00010334  7C 08 03 A6 */	mtlr r0
/* 8001A5B8 00010338  38 21 00 20 */	addi r1, r1, 0x20
/* 8001A5BC 0001033C  4E 80 00 20 */	blr 

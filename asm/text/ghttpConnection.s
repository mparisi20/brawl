.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ghiFindFreeSlot
ghiFindFreeSlot:
/* 8037C2DC 0037205C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037C2E0 00372060  7C 08 02 A6 */	mflr r0
/* 8037C2E4 00372064  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037C2E8 00372068  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C2EC 0037206C  48 07 50 35 */	bl _savegpr_27
/* 8037C2F0 00372070  80 CD CC 54 */	lwz r6, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C2F4 00372074  38 60 00 00 */	li r3, 0
/* 8037C2F8 00372078  80 0D CC 50 */	lwz r0, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C2FC 0037207C  7C C5 33 78 */	mr r5, r6
/* 8037C300 00372080  7C 09 03 A6 */	mtctr r0
/* 8037C304 00372084  2C 00 00 00 */	cmpwi r0, 0
/* 8037C308 00372088  40 81 00 24 */	ble lbl_8037C32C
lbl_8037C30C:
/* 8037C30C 0037208C  80 85 00 00 */	lwz r4, 0(r5)
/* 8037C310 00372090  80 04 00 00 */	lwz r0, 0(r4)
/* 8037C314 00372094  2C 00 00 00 */	cmpwi r0, 0
/* 8037C318 00372098  40 82 00 08 */	bne lbl_8037C320
/* 8037C31C 0037209C  48 00 00 B4 */	b lbl_8037C3D0
lbl_8037C320:
/* 8037C320 003720A0  38 A5 00 04 */	addi r5, r5, 4
/* 8037C324 003720A4  38 63 00 01 */	addi r3, r3, 1
/* 8037C328 003720A8  42 00 FF E4 */	bdnz lbl_8037C30C
lbl_8037C32C:
/* 8037C32C 003720AC  83 AD CC 50 */	lwz r29, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C330 003720B0  7C C3 33 78 */	mr r3, r6
/* 8037C334 003720B4  3B 7D 00 04 */	addi r27, r29, 4
/* 8037C338 003720B8  57 64 10 3A */	slwi r4, r27, 2
/* 8037C33C 003720BC  4B FE 1C BD */	bl gsirealloc
/* 8037C340 003720C0  2C 03 00 00 */	cmpwi r3, 0
/* 8037C344 003720C4  40 82 00 0C */	bne lbl_8037C350
/* 8037C348 003720C8  38 60 FF FF */	li r3, -1
/* 8037C34C 003720CC  48 00 00 84 */	b lbl_8037C3D0
lbl_8037C350:
/* 8037C350 003720D0  90 6D CC 54 */	stw r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C354 003720D4  7F BC EB 78 */	mr r28, r29
/* 8037C358 003720D8  57 BE 10 3A */	slwi r30, r29, 2
/* 8037C35C 003720DC  3B E0 00 00 */	li r31, 0
/* 8037C360 003720E0  48 00 00 60 */	b lbl_8037C3C0
lbl_8037C364:
/* 8037C364 003720E4  38 60 01 B4 */	li r3, 0x1b4
/* 8037C368 003720E8  4B FE 1C 81 */	bl gsimalloc
/* 8037C36C 003720EC  80 8D CC 54 */	lwz r4, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C370 003720F0  7C 64 F1 2E */	stwx r3, r4, r30
/* 8037C374 003720F4  80 6D CC 54 */	lwz r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C378 003720F8  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8037C37C 003720FC  2C 03 00 00 */	cmpwi r3, 0
/* 8037C380 00372100  40 82 00 34 */	bne lbl_8037C3B4
/* 8037C384 00372104  3B 9C FF FF */	addi r28, r28, -1
/* 8037C388 00372108  57 9E 10 3A */	slwi r30, r28, 2
/* 8037C38C 0037210C  48 00 00 18 */	b lbl_8037C3A4
lbl_8037C390:
/* 8037C390 00372110  80 6D CC 54 */	lwz r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C394 00372114  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8037C398 00372118  4B FE 1C 75 */	bl gsifree
/* 8037C39C 0037211C  3B DE FF FC */	addi r30, r30, -4
/* 8037C3A0 00372120  3B 9C FF FF */	addi r28, r28, -1
lbl_8037C3A4:
/* 8037C3A4 00372124  7C 1C E8 00 */	cmpw r28, r29
/* 8037C3A8 00372128  40 80 FF E8 */	bge lbl_8037C390
/* 8037C3AC 0037212C  38 60 FF FF */	li r3, -1
/* 8037C3B0 00372130  48 00 00 20 */	b lbl_8037C3D0
lbl_8037C3B4:
/* 8037C3B4 00372134  93 E3 00 00 */	stw r31, 0(r3)
/* 8037C3B8 00372138  3B DE 00 04 */	addi r30, r30, 4
/* 8037C3BC 0037213C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8037C3C0:
/* 8037C3C0 00372140  7C 1C D8 00 */	cmpw r28, r27
/* 8037C3C4 00372144  41 80 FF A0 */	blt lbl_8037C364
/* 8037C3C8 00372148  93 6D CC 50 */	stw r27, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C3CC 0037214C  7F A3 EB 78 */	mr r3, r29
lbl_8037C3D0:
/* 8037C3D0 00372150  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C3D4 00372154  48 07 4F 99 */	bl _restgpr_27
/* 8037C3D8 00372158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C3DC 0037215C  7C 08 03 A6 */	mtlr r0
/* 8037C3E0 00372160  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C3E4 00372164  4E 80 00 20 */	blr 

.global ghiNewConnection
ghiNewConnection:
/* 8037C3E8 00372168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C3EC 0037216C  7C 08 02 A6 */	mflr r0
/* 8037C3F0 00372170  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C3F4 00372174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C3F8 00372178  93 C1 00 08 */	stw r30, 8(r1)
/* 8037C3FC 0037217C  4B FF FA 79 */	bl ghiLock
/* 8037C400 00372180  4B FF FE DD */	bl ghiFindFreeSlot
/* 8037C404 00372184  2C 03 FF FF */	cmpwi r3, -1
/* 8037C408 00372188  7C 7F 1B 78 */	mr r31, r3
/* 8037C40C 0037218C  40 82 00 10 */	bne lbl_8037C41C
/* 8037C410 00372190  4B FF FA 69 */	bl ghiUnlock
/* 8037C414 00372194  38 60 00 00 */	li r3, 0
/* 8037C418 00372198  48 00 01 7C */	b lbl_8037C594
lbl_8037C41C:
/* 8037C41C 0037219C  80 CD CC 54 */	lwz r6, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C420 003721A0  54 60 10 3A */	slwi r0, r3, 2
/* 8037C424 003721A4  38 80 00 00 */	li r4, 0
/* 8037C428 003721A8  38 A0 01 B4 */	li r5, 0x1b4
/* 8037C42C 003721AC  7F C6 00 2E */	lwzx r30, r6, r0
/* 8037C430 003721B0  7F C3 F3 78 */	mr r3, r30
/* 8037C434 003721B4  4B C8 80 09 */	bl memset
/* 8037C438 003721B8  38 00 00 01 */	li r0, 1
/* 8037C43C 003721BC  39 20 00 00 */	li r9, 0
/* 8037C440 003721C0  90 1E 00 00 */	stw r0, 0(r30)
/* 8037C444 003721C4  39 00 FF FF */	li r8, -1
/* 8037C448 003721C8  38 E0 01 F4 */	li r7, 0x1f4
/* 8037C44C 003721CC  38 00 00 50 */	li r0, 0x50
/* 8037C450 003721D0  93 FE 00 04 */	stw r31, 4(r30)
/* 8037C454 003721D4  7F C3 F3 78 */	mr r3, r30
/* 8037C458 003721D8  38 9E 00 54 */	addi r4, r30, 0x54
/* 8037C45C 003721DC  38 A0 08 00 */	li r5, 0x800
/* 8037C460 003721E0  81 4D CC 48 */	lwz r10, lbl_805A1068-_SDA_BASE_(r13)
/* 8037C464 003721E4  38 C0 10 00 */	li r6, 0x1000
/* 8037C468 003721E8  91 5E 00 08 */	stw r10, 8(r30)
/* 8037C46C 003721EC  39 4A 00 01 */	addi r10, r10, 1
/* 8037C470 003721F0  91 4D CC 48 */	stw r10, lbl_805A1068-_SDA_BASE_(r13)
/* 8037C474 003721F4  91 3E 00 0C */	stw r9, 0xc(r30)
/* 8037C478 003721F8  91 3E 00 10 */	stw r9, 0x10(r30)
/* 8037C47C 003721FC  91 3E 00 14 */	stw r9, 0x14(r30)
/* 8037C480 00372200  91 3E 00 18 */	stw r9, 0x18(r30)
/* 8037C484 00372204  91 3E 00 1C */	stw r9, 0x1c(r30)
/* 8037C488 00372208  B1 3E 00 20 */	sth r9, 0x20(r30)
/* 8037C48C 0037220C  91 3E 00 24 */	stw r9, 0x24(r30)
/* 8037C490 00372210  91 3E 00 2C */	stw r9, 0x2c(r30)
/* 8037C494 00372214  91 3E 00 30 */	stw r9, 0x30(r30)
/* 8037C498 00372218  91 3E 00 34 */	stw r9, 0x34(r30)
/* 8037C49C 0037221C  91 3E 00 38 */	stw r9, 0x38(r30)
/* 8037C4A0 00372220  91 3E 00 3C */	stw r9, 0x3c(r30)
/* 8037C4A4 00372224  91 3E 00 40 */	stw r9, 0x40(r30)
/* 8037C4A8 00372228  91 3E 00 44 */	stw r9, 0x44(r30)
/* 8037C4AC 0037222C  91 3E 00 48 */	stw r9, 0x48(r30)
/* 8037C4B0 00372230  91 1E 00 4C */	stw r8, 0x4c(r30)
/* 8037C4B4 00372234  91 3E 00 50 */	stw r9, 0x50(r30)
/* 8037C4B8 00372238  91 3E 01 08 */	stw r9, 0x108(r30)
/* 8037C4BC 0037223C  91 3E 01 0C */	stw r9, 0x10c(r30)
/* 8037C4C0 00372240  91 3E 01 10 */	stw r9, 0x110(r30)
/* 8037C4C4 00372244  91 3E 01 14 */	stw r9, 0x114(r30)
/* 8037C4C8 00372248  91 3E 01 18 */	stw r9, 0x118(r30)
/* 8037C4CC 0037224C  91 3E 01 1C */	stw r9, 0x11c(r30)
/* 8037C4D0 00372250  91 3E 01 20 */	stw r9, 0x120(r30)
/* 8037C4D4 00372254  91 3E 01 24 */	stw r9, 0x124(r30)
/* 8037C4D8 00372258  91 1E 01 28 */	stw r8, 0x128(r30)
/* 8037C4DC 0037225C  91 3E 01 2C */	stw r9, 0x12c(r30)
/* 8037C4E0 00372260  91 3E 01 30 */	stw r9, 0x130(r30)
/* 8037C4E4 00372264  91 3E 01 34 */	stw r9, 0x134(r30)
/* 8037C4E8 00372268  91 3E 01 50 */	stw r9, 0x150(r30)
/* 8037C4EC 0037226C  91 3E 01 58 */	stw r9, 0x158(r30)
/* 8037C4F0 00372270  91 3E 01 5C */	stw r9, 0x15c(r30)
/* 8037C4F4 00372274  91 3E 01 60 */	stw r9, 0x160(r30)
/* 8037C4F8 00372278  90 FE 01 84 */	stw r7, 0x184(r30)
/* 8037C4FC 0037227C  B0 1E 01 8C */	sth r0, 0x18c(r30)
/* 8037C500 00372280  91 3E 01 88 */	stw r9, 0x188(r30)
/* 8037C504 00372284  91 3E 01 90 */	stw r9, 0x190(r30)
/* 8037C508 00372288  91 3E 01 B0 */	stw r9, 0x1b0(r30)
/* 8037C50C 0037228C  4B FF EE F1 */	bl ghiInitBuffer
/* 8037C510 00372290  2C 03 00 00 */	cmpwi r3, 0
/* 8037C514 00372294  41 82 00 18 */	beq lbl_8037C52C
/* 8037C518 00372298  7F C3 F3 78 */	mr r3, r30
/* 8037C51C 0037229C  38 9E 00 78 */	addi r4, r30, 0x78
/* 8037C520 003722A0  38 A0 08 00 */	li r5, 0x800
/* 8037C524 003722A4  38 C0 04 00 */	li r6, 0x400
/* 8037C528 003722A8  4B FF EE D5 */	bl ghiInitBuffer
lbl_8037C52C:
/* 8037C52C 003722AC  2C 03 00 00 */	cmpwi r3, 0
/* 8037C530 003722B0  41 82 00 18 */	beq lbl_8037C548
/* 8037C534 003722B4  7F C3 F3 78 */	mr r3, r30
/* 8037C538 003722B8  38 9E 00 9C */	addi r4, r30, 0x9c
/* 8037C53C 003722BC  38 A0 08 00 */	li r5, 0x800
/* 8037C540 003722C0  38 C0 08 00 */	li r6, 0x800
/* 8037C544 003722C4  4B FF EE B9 */	bl ghiInitBuffer
lbl_8037C548:
/* 8037C548 003722C8  2C 03 00 00 */	cmpwi r3, 0
/* 8037C54C 003722CC  41 82 00 18 */	beq lbl_8037C564
/* 8037C550 003722D0  7F C3 F3 78 */	mr r3, r30
/* 8037C554 003722D4  38 9E 00 C0 */	addi r4, r30, 0xc0
/* 8037C558 003722D8  38 A0 08 00 */	li r5, 0x800
/* 8037C55C 003722DC  38 C0 04 00 */	li r6, 0x400
/* 8037C560 003722E0  4B FF EE 9D */	bl ghiInitBuffer
lbl_8037C564:
/* 8037C564 003722E4  2C 03 00 00 */	cmpwi r3, 0
/* 8037C568 003722E8  40 82 00 18 */	bne lbl_8037C580
/* 8037C56C 003722EC  7F C3 F3 78 */	mr r3, r30
/* 8037C570 003722F0  48 00 00 3D */	bl ghiFreeConnection
/* 8037C574 003722F4  4B FF F9 05 */	bl ghiUnlock
/* 8037C578 003722F8  38 60 00 00 */	li r3, 0
/* 8037C57C 003722FC  48 00 00 18 */	b lbl_8037C594
lbl_8037C580:
/* 8037C580 00372300  80 6D CC 4C */	lwz r3, lbl_805A106C-_SDA_BASE_(r13)
/* 8037C584 00372304  38 03 00 01 */	addi r0, r3, 1
/* 8037C588 00372308  90 0D CC 4C */	stw r0, lbl_805A106C-_SDA_BASE_(r13)
/* 8037C58C 0037230C  4B FF F8 ED */	bl ghiUnlock
/* 8037C590 00372310  7F C3 F3 78 */	mr r3, r30
lbl_8037C594:
/* 8037C594 00372314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C598 00372318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C59C 0037231C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037C5A0 00372320  7C 08 03 A6 */	mtlr r0
/* 8037C5A4 00372324  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C5A8 00372328  4E 80 00 20 */	blr 

.global ghiFreeConnection
ghiFreeConnection:
/* 8037C5AC 0037232C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C5B0 00372330  7C 08 02 A6 */	mflr r0
/* 8037C5B4 00372334  2C 03 00 00 */	cmpwi r3, 0
/* 8037C5B8 00372338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C5BC 0037233C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C5C0 00372340  7C 7F 1B 78 */	mr r31, r3
/* 8037C5C4 00372344  40 82 00 0C */	bne lbl_8037C5D0
/* 8037C5C8 00372348  38 60 00 00 */	li r3, 0
/* 8037C5CC 0037234C  48 00 01 40 */	b lbl_8037C70C
lbl_8037C5D0:
/* 8037C5D0 00372350  80 03 00 00 */	lwz r0, 0(r3)
/* 8037C5D4 00372354  2C 00 00 00 */	cmpwi r0, 0
/* 8037C5D8 00372358  40 82 00 0C */	bne lbl_8037C5E4
/* 8037C5DC 0037235C  38 60 00 00 */	li r3, 0
/* 8037C5E0 00372360  48 00 01 2C */	b lbl_8037C70C
lbl_8037C5E4:
/* 8037C5E4 00372364  80 63 00 04 */	lwz r3, 4(r3)
/* 8037C5E8 00372368  2C 03 00 00 */	cmpwi r3, 0
/* 8037C5EC 0037236C  40 80 00 0C */	bge lbl_8037C5F8
/* 8037C5F0 00372370  38 60 00 00 */	li r3, 0
/* 8037C5F4 00372374  48 00 01 18 */	b lbl_8037C70C
lbl_8037C5F8:
/* 8037C5F8 00372378  80 0D CC 50 */	lwz r0, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C5FC 0037237C  7C 03 00 00 */	cmpw r3, r0
/* 8037C600 00372380  41 80 00 0C */	blt lbl_8037C60C
/* 8037C604 00372384  38 60 00 00 */	li r3, 0
/* 8037C608 00372388  48 00 01 04 */	b lbl_8037C70C
lbl_8037C60C:
/* 8037C60C 0037238C  4B FF F8 69 */	bl ghiLock
/* 8037C610 00372390  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8037C614 00372394  4B FE 19 F9 */	bl gsifree
/* 8037C618 00372398  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8037C61C 0037239C  4B FE 19 F1 */	bl gsifree
/* 8037C620 003723A0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8037C624 003723A4  4B FE 19 E9 */	bl gsifree
/* 8037C628 003723A8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8037C62C 003723AC  4B FE 19 E1 */	bl gsifree
/* 8037C630 003723B0  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 8037C634 003723B4  4B FE 19 D9 */	bl gsifree
/* 8037C638 003723B8  80 7F 01 88 */	lwz r3, 0x188(r31)
/* 8037C63C 003723BC  4B FE 19 D1 */	bl gsifree
/* 8037C640 003723C0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8037C644 003723C4  2C 03 FF FF */	cmpwi r3, -1
/* 8037C648 003723C8  41 82 00 14 */	beq lbl_8037C65C
/* 8037C64C 003723CC  38 80 00 02 */	li r4, 2
/* 8037C650 003723D0  4B FD FC 89 */	bl shutdown
/* 8037C654 003723D4  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8037C658 003723D8  4B FD FC 4D */	bl closesocket
lbl_8037C65C:
/* 8037C65C 003723DC  38 7F 00 54 */	addi r3, r31, 0x54
/* 8037C660 003723E0  4B FF EF 85 */	bl ghiFreeBuffer
/* 8037C664 003723E4  38 7F 00 78 */	addi r3, r31, 0x78
/* 8037C668 003723E8  4B FF EF 7D */	bl ghiFreeBuffer
/* 8037C66C 003723EC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8037C670 003723F0  4B FF EF 75 */	bl ghiFreeBuffer
/* 8037C674 003723F4  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8037C678 003723F8  4B FF EF 6D */	bl ghiFreeBuffer
/* 8037C67C 003723FC  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8037C680 00372400  4B FF EF 65 */	bl ghiFreeBuffer
/* 8037C684 00372404  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 8037C688 00372408  2C 00 00 00 */	cmpwi r0, 0
/* 8037C68C 0037240C  41 82 00 0C */	beq lbl_8037C698
/* 8037C690 00372410  7F E3 FB 78 */	mr r3, r31
/* 8037C694 00372414  48 00 33 B1 */	bl ghiPostCleanupState
lbl_8037C698:
/* 8037C698 00372418  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 8037C69C 0037241C  2C 03 00 00 */	cmpwi r3, 0
/* 8037C6A0 00372420  41 82 00 20 */	beq lbl_8037C6C0
/* 8037C6A4 00372424  48 00 2B 09 */	bl ghiIsPostAutoFree
/* 8037C6A8 00372428  2C 03 00 00 */	cmpwi r3, 0
/* 8037C6AC 0037242C  41 82 00 14 */	beq lbl_8037C6C0
/* 8037C6B0 00372430  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 8037C6B4 00372434  48 00 2B 01 */	bl ghiFreePost
/* 8037C6B8 00372438  38 00 00 00 */	li r0, 0
/* 8037C6BC 0037243C  90 1F 01 60 */	stw r0, 0x160(r31)
lbl_8037C6C0:
/* 8037C6C0 00372440  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8037C6C4 00372444  2C 00 00 00 */	cmpwi r0, 0
/* 8037C6C8 00372448  41 82 00 28 */	beq lbl_8037C6F0
/* 8037C6CC 0037244C  81 9F 01 A4 */	lwz r12, 0x1a4(r31)
/* 8037C6D0 00372450  2C 0C 00 00 */	cmpwi r12, 0
/* 8037C6D4 00372454  41 82 00 14 */	beq lbl_8037C6E8
/* 8037C6D8 00372458  7F E3 FB 78 */	mr r3, r31
/* 8037C6DC 0037245C  38 9F 01 90 */	addi r4, r31, 0x190
/* 8037C6E0 00372460  7D 89 03 A6 */	mtctr r12
/* 8037C6E4 00372464  4E 80 04 21 */	bctrl 
lbl_8037C6E8:
/* 8037C6E8 00372468  38 00 00 00 */	li r0, 0
/* 8037C6EC 0037246C  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_8037C6F0:
/* 8037C6F0 00372470  38 00 00 00 */	li r0, 0
/* 8037C6F4 00372474  90 1F 00 00 */	stw r0, 0(r31)
/* 8037C6F8 00372478  80 6D CC 4C */	lwz r3, lbl_805A106C-_SDA_BASE_(r13)
/* 8037C6FC 0037247C  38 03 FF FF */	addi r0, r3, -1
/* 8037C700 00372480  90 0D CC 4C */	stw r0, lbl_805A106C-_SDA_BASE_(r13)
/* 8037C704 00372484  4B FF F7 75 */	bl ghiUnlock
/* 8037C708 00372488  38 60 00 01 */	li r3, 1
lbl_8037C70C:
/* 8037C70C 0037248C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C710 00372490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C714 00372494  7C 08 03 A6 */	mtlr r0
/* 8037C718 00372498  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C71C 0037249C  4E 80 00 20 */	blr 

.global ghiRequestToConnection
ghiRequestToConnection:
/* 8037C720 003724A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C724 003724A4  7C 08 02 A6 */	mflr r0
/* 8037C728 003724A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C72C 003724AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C730 003724B0  7C 7F 1B 78 */	mr r31, r3
/* 8037C734 003724B4  4B FF F7 41 */	bl ghiLock
/* 8037C738 003724B8  2C 1F 00 00 */	cmpwi r31, 0
/* 8037C73C 003724BC  41 80 00 10 */	blt lbl_8037C74C
/* 8037C740 003724C0  80 0D CC 50 */	lwz r0, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C744 003724C4  7C 1F 00 00 */	cmpw r31, r0
/* 8037C748 003724C8  41 80 00 10 */	blt lbl_8037C758
lbl_8037C74C:
/* 8037C74C 003724CC  4B FF F7 2D */	bl ghiUnlock
/* 8037C750 003724D0  38 60 00 00 */	li r3, 0
/* 8037C754 003724D4  48 00 00 28 */	b lbl_8037C77C
lbl_8037C758:
/* 8037C758 003724D8  80 6D CC 54 */	lwz r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C75C 003724DC  57 E0 10 3A */	slwi r0, r31, 2
/* 8037C760 003724E0  7F E3 00 2E */	lwzx r31, r3, r0
/* 8037C764 003724E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037C768 003724E8  2C 00 00 00 */	cmpwi r0, 0
/* 8037C76C 003724EC  40 82 00 08 */	bne lbl_8037C774
/* 8037C770 003724F0  3B E0 00 00 */	li r31, 0
lbl_8037C774:
/* 8037C774 003724F4  4B FF F7 05 */	bl ghiUnlock
/* 8037C778 003724F8  7F E3 FB 78 */	mr r3, r31
lbl_8037C77C:
/* 8037C77C 003724FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C780 00372500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C784 00372504  7C 08 03 A6 */	mtlr r0
/* 8037C788 00372508  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C78C 0037250C  4E 80 00 20 */	blr 

.global ghiEnumConnections
ghiEnumConnections:
/* 8037C790 00372510  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037C794 00372514  7C 08 02 A6 */	mflr r0
/* 8037C798 00372518  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037C79C 0037251C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037C7A0 00372520  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037C7A4 00372524  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037C7A8 00372528  7C 7D 1B 78 */	mr r29, r3
/* 8037C7AC 0037252C  80 0D CC 4C */	lwz r0, lbl_805A106C-_SDA_BASE_(r13)
/* 8037C7B0 00372530  2C 00 00 00 */	cmpwi r0, 0
/* 8037C7B4 00372534  40 81 00 4C */	ble lbl_8037C800
/* 8037C7B8 00372538  4B FF F6 BD */	bl ghiLock
/* 8037C7BC 0037253C  3B C0 00 00 */	li r30, 0
/* 8037C7C0 00372540  3B E0 00 00 */	li r31, 0
/* 8037C7C4 00372544  48 00 00 2C */	b lbl_8037C7F0
lbl_8037C7C8:
/* 8037C7C8 00372548  80 6D CC 54 */	lwz r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C7CC 0037254C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8037C7D0 00372550  80 03 00 00 */	lwz r0, 0(r3)
/* 8037C7D4 00372554  2C 00 00 00 */	cmpwi r0, 0
/* 8037C7D8 00372558  41 82 00 10 */	beq lbl_8037C7E8
/* 8037C7DC 0037255C  7F AC EB 78 */	mr r12, r29
/* 8037C7E0 00372560  7D 89 03 A6 */	mtctr r12
/* 8037C7E4 00372564  4E 80 04 21 */	bctrl 
lbl_8037C7E8:
/* 8037C7E8 00372568  3B FF 00 04 */	addi r31, r31, 4
/* 8037C7EC 0037256C  3B DE 00 01 */	addi r30, r30, 1
lbl_8037C7F0:
/* 8037C7F0 00372570  80 0D CC 50 */	lwz r0, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C7F4 00372574  7C 1E 00 00 */	cmpw r30, r0
/* 8037C7F8 00372578  41 80 FF D0 */	blt lbl_8037C7C8
/* 8037C7FC 0037257C  4B FF F6 7D */	bl ghiUnlock
lbl_8037C800:
/* 8037C800 00372580  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C804 00372584  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037C808 00372588  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037C80C 0037258C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037C810 00372590  7C 08 03 A6 */	mtlr r0
/* 8037C814 00372594  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C818 00372598  4E 80 00 20 */	blr 

.global ghiRedirectConnection
ghiRedirectConnection:
/* 8037C81C 0037259C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C820 003725A0  7C 08 02 A6 */	mflr r0
/* 8037C824 003725A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C828 003725A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C82C 003725AC  3B E0 00 00 */	li r31, 0
/* 8037C830 003725B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8037C834 003725B4  7C 7E 1B 78 */	mr r30, r3
/* 8037C838 003725B8  80 03 01 B0 */	lwz r0, 0x1b0(r3)
/* 8037C83C 003725BC  93 E3 00 10 */	stw r31, 0x10(r3)
/* 8037C840 003725C0  2C 00 00 00 */	cmpwi r0, 0
/* 8037C844 003725C4  41 82 00 18 */	beq lbl_8037C85C
/* 8037C848 003725C8  7C 03 03 78 */	mr r3, r0
/* 8037C84C 003725CC  4B FE 0C 4D */	bl gsiCancelResolvingHostname
/* 8037C850 003725D0  80 7E 01 B0 */	lwz r3, 0x1b0(r30)
/* 8037C854 003725D4  4B FE 17 B9 */	bl gsifree
/* 8037C858 003725D8  93 FE 01 B0 */	stw r31, 0x1b0(r30)
lbl_8037C85C:
/* 8037C85C 003725DC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8037C860 003725E0  4B FE 17 AD */	bl gsifree
/* 8037C864 003725E4  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 8037C868 003725E8  3B E0 00 00 */	li r31, 0
/* 8037C86C 003725EC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8037C870 003725F0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8037C874 003725F4  93 FE 01 2C */	stw r31, 0x12c(r30)
/* 8037C878 003725F8  4B FE 17 95 */	bl gsifree
/* 8037C87C 003725FC  93 FE 00 18 */	stw r31, 0x18(r30)
/* 8037C880 00372600  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8037C884 00372604  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 8037C888 00372608  B3 FE 00 20 */	sth r31, 0x20(r30)
/* 8037C88C 0037260C  4B FE 17 81 */	bl gsifree
/* 8037C890 00372610  93 FE 00 24 */	stw r31, 0x24(r30)
/* 8037C894 00372614  38 80 00 02 */	li r4, 2
/* 8037C898 00372618  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 8037C89C 0037261C  4B FD FA 3D */	bl shutdown
/* 8037C8A0 00372620  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 8037C8A4 00372624  4B FD FA 01 */	bl closesocket
/* 8037C8A8 00372628  38 00 FF FF */	li r0, -1
/* 8037C8AC 0037262C  38 7E 00 54 */	addi r3, r30, 0x54
/* 8037C8B0 00372630  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8037C8B4 00372634  4B FF F3 05 */	bl ghiResetBuffer
/* 8037C8B8 00372638  38 7E 00 78 */	addi r3, r30, 0x78
/* 8037C8BC 0037263C  4B FF F2 FD */	bl ghiResetBuffer
/* 8037C8C0 00372640  38 7E 00 9C */	addi r3, r30, 0x9c
/* 8037C8C4 00372644  4B FF F2 F5 */	bl ghiResetBuffer
/* 8037C8C8 00372648  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 8037C8CC 0037264C  4B FF F2 ED */	bl ghiResetBuffer
/* 8037C8D0 00372650  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 8037C8D4 00372654  93 FE 01 0C */	stw r31, 0x10c(r30)
/* 8037C8D8 00372658  2C 00 00 00 */	cmpwi r0, 0
/* 8037C8DC 0037265C  93 FE 01 10 */	stw r31, 0x110(r30)
/* 8037C8E0 00372660  93 FE 01 14 */	stw r31, 0x114(r30)
/* 8037C8E4 00372664  93 FE 01 18 */	stw r31, 0x118(r30)
/* 8037C8E8 00372668  93 FE 01 1C */	stw r31, 0x11c(r30)
/* 8037C8EC 0037266C  93 FE 01 54 */	stw r31, 0x154(r30)
/* 8037C8F0 00372670  41 82 00 4C */	beq lbl_8037C93C
/* 8037C8F4 00372674  81 9E 01 A4 */	lwz r12, 0x1a4(r30)
/* 8037C8F8 00372678  2C 0C 00 00 */	cmpwi r12, 0
/* 8037C8FC 0037267C  41 82 00 14 */	beq lbl_8037C910
/* 8037C900 00372680  7F C3 F3 78 */	mr r3, r30
/* 8037C904 00372684  38 9E 01 90 */	addi r4, r30, 0x190
/* 8037C908 00372688  7D 89 03 A6 */	mtctr r12
/* 8037C90C 0037268C  4E 80 04 21 */	bctrl 
lbl_8037C910:
/* 8037C910 00372690  3B E0 00 00 */	li r31, 0
/* 8037C914 00372694  3C 60 80 49 */	lis r3, lbl_804905E8@ha
/* 8037C918 00372698  93 FE 01 98 */	stw r31, 0x198(r30)
/* 8037C91C 0037269C  38 63 05 E8 */	addi r3, r3, lbl_804905E8@l
/* 8037C920 003726A0  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8037C924 003726A4  38 A0 00 08 */	li r5, 8
/* 8037C928 003726A8  48 07 DB F1 */	bl strncmp
/* 8037C92C 003726AC  2C 03 00 00 */	cmpwi r3, 0
/* 8037C930 003726B0  41 82 00 0C */	beq lbl_8037C93C
/* 8037C934 003726B4  93 FE 01 94 */	stw r31, 0x194(r30)
/* 8037C938 003726B8  93 FE 01 90 */	stw r31, 0x190(r30)
lbl_8037C93C:
/* 8037C93C 003726BC  80 7E 01 30 */	lwz r3, 0x130(r30)
/* 8037C940 003726C0  38 03 00 01 */	addi r0, r3, 1
/* 8037C944 003726C4  90 1E 01 30 */	stw r0, 0x130(r30)
/* 8037C948 003726C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C94C 003726CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037C950 003726D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C954 003726D4  7C 08 03 A6 */	mtlr r0
/* 8037C958 003726D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C95C 003726DC  4E 80 00 20 */	blr 

.global ghiCleanupConnections
ghiCleanupConnections:
/* 8037C960 003726E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C964 003726E4  7C 08 02 A6 */	mflr r0
/* 8037C968 003726E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C96C 003726EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C970 003726F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8037C974 003726F4  80 0D CC 54 */	lwz r0, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C978 003726F8  2C 00 00 00 */	cmpwi r0, 0
/* 8037C97C 003726FC  41 82 00 94 */	beq lbl_8037CA10
/* 8037C980 00372700  80 0D CC 4C */	lwz r0, lbl_805A106C-_SDA_BASE_(r13)
/* 8037C984 00372704  2C 00 00 00 */	cmpwi r0, 0
/* 8037C988 00372708  40 81 00 44 */	ble lbl_8037C9CC
/* 8037C98C 0037270C  4B FF F4 E9 */	bl ghiLock
/* 8037C990 00372710  3B E0 00 00 */	li r31, 0
/* 8037C994 00372714  3B C0 00 00 */	li r30, 0
/* 8037C998 00372718  48 00 00 24 */	b lbl_8037C9BC
lbl_8037C99C:
/* 8037C99C 0037271C  80 6D CC 54 */	lwz r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C9A0 00372720  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8037C9A4 00372724  80 03 00 00 */	lwz r0, 0(r3)
/* 8037C9A8 00372728  2C 00 00 00 */	cmpwi r0, 0
/* 8037C9AC 0037272C  41 82 00 08 */	beq lbl_8037C9B4
/* 8037C9B0 00372730  4B FF FB FD */	bl ghiFreeConnection
lbl_8037C9B4:
/* 8037C9B4 00372734  3B DE 00 04 */	addi r30, r30, 4
/* 8037C9B8 00372738  3B FF 00 01 */	addi r31, r31, 1
lbl_8037C9BC:
/* 8037C9BC 0037273C  80 0D CC 50 */	lwz r0, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C9C0 00372740  7C 1F 00 00 */	cmpw r31, r0
/* 8037C9C4 00372744  41 80 FF D8 */	blt lbl_8037C99C
/* 8037C9C8 00372748  4B FF F4 B1 */	bl ghiUnlock
lbl_8037C9CC:
/* 8037C9CC 0037274C  3B C0 00 00 */	li r30, 0
/* 8037C9D0 00372750  3B E0 00 00 */	li r31, 0
/* 8037C9D4 00372754  48 00 00 18 */	b lbl_8037C9EC
lbl_8037C9D8:
/* 8037C9D8 00372758  80 6D CC 54 */	lwz r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C9DC 0037275C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8037C9E0 00372760  4B FE 16 2D */	bl gsifree
/* 8037C9E4 00372764  3B FF 00 04 */	addi r31, r31, 4
/* 8037C9E8 00372768  3B DE 00 01 */	addi r30, r30, 1
lbl_8037C9EC:
/* 8037C9EC 0037276C  80 0D CC 50 */	lwz r0, lbl_805A1070-_SDA_BASE_(r13)
/* 8037C9F0 00372770  7C 1E 00 00 */	cmpw r30, r0
/* 8037C9F4 00372774  41 80 FF E4 */	blt lbl_8037C9D8
/* 8037C9F8 00372778  80 6D CC 54 */	lwz r3, lbl_805A1074-_SDA_BASE_(r13)
/* 8037C9FC 0037277C  4B FE 16 11 */	bl gsifree
/* 8037CA00 00372780  38 00 00 00 */	li r0, 0
/* 8037CA04 00372784  90 0D CC 54 */	stw r0, lbl_805A1074-_SDA_BASE_(r13)
/* 8037CA08 00372788  90 0D CC 50 */	stw r0, lbl_805A1070-_SDA_BASE_(r13)
/* 8037CA0C 0037278C  90 0D CC 4C */	stw r0, lbl_805A106C-_SDA_BASE_(r13)
lbl_8037CA10:
/* 8037CA10 00372790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CA14 00372794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CA18 00372798  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037CA1C 0037279C  7C 08 03 A6 */	mtlr r0
/* 8037CA20 003727A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CA24 003727A4  4E 80 00 20 */	blr 


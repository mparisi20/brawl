.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ArrayNew
ArrayNew:
/* 8035A460 003501E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035A464 003501E4  7C 08 02 A6 */	mflr r0
/* 8035A468 003501E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035A46C 003501EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035A470 003501F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035A474 003501F4  7C BE 2B 78 */	mr r30, r5
/* 8035A478 003501F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035A47C 003501FC  7C 9D 23 78 */	mr r29, r4
/* 8035A480 00350200  93 81 00 10 */	stw r28, 0x10(r1)
/* 8035A484 00350204  7C 7C 1B 78 */	mr r28, r3
/* 8035A488 00350208  38 60 00 18 */	li r3, 0x18
/* 8035A48C 0035020C  48 00 3B 5D */	bl gsimalloc
/* 8035A490 00350210  2C 1D 00 00 */	cmpwi r29, 0
/* 8035A494 00350214  7C 7F 1B 78 */	mr r31, r3
/* 8035A498 00350218  40 82 00 08 */	bne lbl_8035A4A0
/* 8035A49C 0035021C  3B A0 00 08 */	li r29, 8
lbl_8035A4A0:
/* 8035A4A0 00350220  38 00 00 00 */	li r0, 0
/* 8035A4A4 00350224  2C 1D 00 00 */	cmpwi r29, 0
/* 8035A4A8 00350228  90 03 00 00 */	stw r0, 0(r3)
/* 8035A4AC 0035022C  93 A3 00 04 */	stw r29, 4(r3)
/* 8035A4B0 00350230  93 83 00 08 */	stw r28, 8(r3)
/* 8035A4B4 00350234  93 A3 00 0C */	stw r29, 0xc(r3)
/* 8035A4B8 00350238  93 C3 00 10 */	stw r30, 0x10(r3)
/* 8035A4BC 0035023C  41 82 00 18 */	beq lbl_8035A4D4
/* 8035A4C0 00350240  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A4C4 00350244  7C 7D 01 D6 */	mullw r3, r29, r0
/* 8035A4C8 00350248  48 00 3B 21 */	bl gsimalloc
/* 8035A4CC 0035024C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8035A4D0 00350250  48 00 00 08 */	b lbl_8035A4D8
lbl_8035A4D4:
/* 8035A4D4 00350254  90 03 00 14 */	stw r0, 0x14(r3)
lbl_8035A4D8:
/* 8035A4D8 00350258  7F E3 FB 78 */	mr r3, r31
/* 8035A4DC 0035025C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035A4E0 00350260  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035A4E4 00350264  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035A4E8 00350268  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8035A4EC 0035026C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A4F0 00350270  7C 08 03 A6 */	mtlr r0
/* 8035A4F4 00350274  38 21 00 20 */	addi r1, r1, 0x20
/* 8035A4F8 00350278  4E 80 00 20 */	blr 

.global ArrayFree
ArrayFree:
/* 8035A4FC 0035027C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035A500 00350280  7C 08 02 A6 */	mflr r0
/* 8035A504 00350284  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035A508 00350288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035A50C 0035028C  3B E0 00 00 */	li r31, 0
/* 8035A510 00350290  93 C1 00 08 */	stw r30, 8(r1)
/* 8035A514 00350294  7C 7E 1B 78 */	mr r30, r3
/* 8035A518 00350298  48 00 00 44 */	b lbl_8035A55C
lbl_8035A51C:
/* 8035A51C 0035029C  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8035A520 003502A0  2C 0C 00 00 */	cmpwi r12, 0
/* 8035A524 003502A4  41 82 00 34 */	beq lbl_8035A558
/* 8035A528 003502A8  2C 1F 00 00 */	cmpwi r31, 0
/* 8035A52C 003502AC  41 80 00 0C */	blt lbl_8035A538
/* 8035A530 003502B0  7C 1F 00 00 */	cmpw r31, r0
/* 8035A534 003502B4  41 80 00 0C */	blt lbl_8035A540
lbl_8035A538:
/* 8035A538 003502B8  38 60 00 00 */	li r3, 0
/* 8035A53C 003502BC  48 00 00 14 */	b lbl_8035A550
lbl_8035A540:
/* 8035A540 003502C0  80 1E 00 08 */	lwz r0, 8(r30)
/* 8035A544 003502C4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8035A548 003502C8  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035A54C 003502CC  7C 63 02 14 */	add r3, r3, r0
lbl_8035A550:
/* 8035A550 003502D0  7D 89 03 A6 */	mtctr r12
/* 8035A554 003502D4  4E 80 04 21 */	bctrl 
lbl_8035A558:
/* 8035A558 003502D8  3B FF 00 01 */	addi r31, r31, 1
lbl_8035A55C:
/* 8035A55C 003502DC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8035A560 003502E0  7C 1F 00 00 */	cmpw r31, r0
/* 8035A564 003502E4  41 80 FF B8 */	blt lbl_8035A51C
/* 8035A568 003502E8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8035A56C 003502EC  48 00 3A A1 */	bl gsifree
/* 8035A570 003502F0  7F C3 F3 78 */	mr r3, r30
/* 8035A574 003502F4  48 00 3A 99 */	bl gsifree
/* 8035A578 003502F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035A57C 003502FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035A580 00350300  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035A584 00350304  7C 08 03 A6 */	mtlr r0
/* 8035A588 00350308  38 21 00 10 */	addi r1, r1, 0x10
/* 8035A58C 0035030C  4E 80 00 20 */	blr 

.global ArrayLength
ArrayLength:
/* 8035A590 00350310  80 63 00 00 */	lwz r3, 0(r3)
/* 8035A594 00350314  4E 80 00 20 */	blr 

.global ArrayNth
ArrayNth:
/* 8035A598 00350318  2C 04 00 00 */	cmpwi r4, 0
/* 8035A59C 0035031C  41 80 00 10 */	blt lbl_8035A5AC
/* 8035A5A0 00350320  80 03 00 00 */	lwz r0, 0(r3)
/* 8035A5A4 00350324  7C 04 00 00 */	cmpw r4, r0
/* 8035A5A8 00350328  41 80 00 0C */	blt lbl_8035A5B4
lbl_8035A5AC:
/* 8035A5AC 0035032C  38 60 00 00 */	li r3, 0
/* 8035A5B0 00350330  4E 80 00 20 */	blr 
lbl_8035A5B4:
/* 8035A5B4 00350334  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A5B8 00350338  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035A5BC 0035033C  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035A5C0 00350340  7C 63 02 14 */	add r3, r3, r0
/* 8035A5C4 00350344  4E 80 00 20 */	blr 

.global ArrayAppend
ArrayAppend:
/* 8035A5C8 00350348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035A5CC 0035034C  7C 08 02 A6 */	mflr r0
/* 8035A5D0 00350350  2C 03 00 00 */	cmpwi r3, 0
/* 8035A5D4 00350354  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035A5D8 00350358  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035A5DC 0035035C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035A5E0 00350360  7C 9E 23 78 */	mr r30, r4
/* 8035A5E4 00350364  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035A5E8 00350368  7C 7D 1B 78 */	mr r29, r3
/* 8035A5EC 0035036C  41 82 00 E4 */	beq lbl_8035A6D0
/* 8035A5F0 00350370  83 E3 00 00 */	lwz r31, 0(r3)
/* 8035A5F4 00350374  80 A3 00 04 */	lwz r5, 4(r3)
/* 8035A5F8 00350378  7C 1F 28 00 */	cmpw r31, r5
/* 8035A5FC 0035037C  40 82 00 24 */	bne lbl_8035A620
/* 8035A600 00350380  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8035A604 00350384  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A608 00350388  7C A5 22 14 */	add r5, r5, r4
/* 8035A60C 0035038C  7C 85 01 D6 */	mullw r4, r5, r0
/* 8035A610 00350390  90 A3 00 04 */	stw r5, 4(r3)
/* 8035A614 00350394  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035A618 00350398  48 00 39 E1 */	bl gsirealloc
/* 8035A61C 0035039C  90 7D 00 14 */	stw r3, 0x14(r29)
lbl_8035A620:
/* 8035A620 003503A0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8035A624 003503A4  38 A3 00 01 */	addi r5, r3, 1
/* 8035A628 003503A8  38 C5 FF FF */	addi r6, r5, -1
/* 8035A62C 003503AC  90 BD 00 00 */	stw r5, 0(r29)
/* 8035A630 003503B0  7C 1F 30 00 */	cmpw r31, r6
/* 8035A634 003503B4  40 80 00 64 */	bge lbl_8035A698
/* 8035A638 003503B8  34 9F 00 01 */	addic. r4, r31, 1
/* 8035A63C 003503BC  41 80 00 0C */	blt lbl_8035A648
/* 8035A640 003503C0  7C 04 28 00 */	cmpw r4, r5
/* 8035A644 003503C4  41 80 00 0C */	blt lbl_8035A650
lbl_8035A648:
/* 8035A648 003503C8  38 60 00 00 */	li r3, 0
/* 8035A64C 003503CC  48 00 00 14 */	b lbl_8035A660
lbl_8035A650:
/* 8035A650 003503D0  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A654 003503D4  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035A658 003503D8  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035A65C 003503DC  7C 63 02 14 */	add r3, r3, r0
lbl_8035A660:
/* 8035A660 003503E0  2C 1F 00 00 */	cmpwi r31, 0
/* 8035A664 003503E4  41 80 00 0C */	blt lbl_8035A670
/* 8035A668 003503E8  7C 1F 28 00 */	cmpw r31, r5
/* 8035A66C 003503EC  41 80 00 0C */	blt lbl_8035A678
lbl_8035A670:
/* 8035A670 003503F0  38 80 00 00 */	li r4, 0
/* 8035A674 003503F4  48 00 00 14 */	b lbl_8035A688
lbl_8035A678:
/* 8035A678 003503F8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A67C 003503FC  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8035A680 00350400  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035A684 00350404  7C 84 02 14 */	add r4, r4, r0
lbl_8035A688:
/* 8035A688 00350408  80 BD 00 08 */	lwz r5, 8(r29)
/* 8035A68C 0035040C  7C 1F 30 50 */	subf r0, r31, r6
/* 8035A690 00350410  7C A5 01 D6 */	mullw r5, r5, r0
/* 8035A694 00350414  48 09 B9 99 */	bl memmove
lbl_8035A698:
/* 8035A698 00350418  2C 1F 00 00 */	cmpwi r31, 0
/* 8035A69C 0035041C  41 80 00 10 */	blt lbl_8035A6AC
/* 8035A6A0 00350420  80 1D 00 00 */	lwz r0, 0(r29)
/* 8035A6A4 00350424  7C 1F 00 00 */	cmpw r31, r0
/* 8035A6A8 00350428  41 80 00 0C */	blt lbl_8035A6B4
lbl_8035A6AC:
/* 8035A6AC 0035042C  38 60 00 00 */	li r3, 0
/* 8035A6B0 00350430  48 00 00 14 */	b lbl_8035A6C4
lbl_8035A6B4:
/* 8035A6B4 00350434  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A6B8 00350438  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035A6BC 0035043C  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035A6C0 00350440  7C 63 02 14 */	add r3, r3, r0
lbl_8035A6C4:
/* 8035A6C4 00350444  80 BD 00 08 */	lwz r5, 8(r29)
/* 8035A6C8 00350448  7F C4 F3 78 */	mr r4, r30
/* 8035A6CC 0035044C  4B CA 9C 6D */	bl memcpy
lbl_8035A6D0:
/* 8035A6D0 00350450  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A6D4 00350454  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035A6D8 00350458  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035A6DC 0035045C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035A6E0 00350460  7C 08 03 A6 */	mtlr r0
/* 8035A6E4 00350464  38 21 00 20 */	addi r1, r1, 0x20
/* 8035A6E8 00350468  4E 80 00 20 */	blr 

.global ArrayInsertSorted
ArrayInsertSorted:
/* 8035A6EC 0035046C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035A6F0 00350470  7C 08 02 A6 */	mflr r0
/* 8035A6F4 00350474  90 01 00 34 */	stw r0, 0x34(r1)
/* 8035A6F8 00350478  39 61 00 30 */	addi r11, r1, 0x30
/* 8035A6FC 0035047C  48 09 6C 19 */	bl _savegpr_24
/* 8035A700 00350480  80 C3 00 00 */	lwz r6, 0(r3)
/* 8035A704 00350484  7C 7D 1B 78 */	mr r29, r3
/* 8035A708 00350488  83 83 00 08 */	lwz r28, 8(r3)
/* 8035A70C 0035048C  7C 9E 23 78 */	mr r30, r4
/* 8035A710 00350490  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 8035A714 00350494  7C B8 2B 78 */	mr r24, r5
/* 8035A718 00350498  3B 46 FF FF */	addi r26, r6, -1
/* 8035A71C 0035049C  3B 20 00 00 */	li r25, 0
/* 8035A720 003504A0  48 00 00 3C */	b lbl_8035A75C
lbl_8035A724:
/* 8035A724 003504A4  7C 19 D2 14 */	add r0, r25, r26
/* 8035A728 003504A8  7F 0C C3 78 */	mr r12, r24
/* 8035A72C 003504AC  7C 1B 0E 70 */	srawi r27, r0, 1
/* 8035A730 003504B0  7F C4 F3 78 */	mr r4, r30
/* 8035A734 003504B4  7C 1B E1 D6 */	mullw r0, r27, r28
/* 8035A738 003504B8  7C 7F 02 14 */	add r3, r31, r0
/* 8035A73C 003504BC  7D 89 03 A6 */	mtctr r12
/* 8035A740 003504C0  4E 80 04 21 */	bctrl 
/* 8035A744 003504C4  2C 03 00 00 */	cmpwi r3, 0
/* 8035A748 003504C8  40 80 00 08 */	bge lbl_8035A750
/* 8035A74C 003504CC  3B 3B 00 01 */	addi r25, r27, 1
lbl_8035A750:
/* 8035A750 003504D0  2C 03 00 00 */	cmpwi r3, 0
/* 8035A754 003504D4  41 80 00 08 */	blt lbl_8035A75C
/* 8035A758 003504D8  3B 5B FF FF */	addi r26, r27, -1
lbl_8035A75C:
/* 8035A75C 003504DC  7C 19 D0 00 */	cmpw r25, r26
/* 8035A760 003504E0  40 81 FF C4 */	ble lbl_8035A724
/* 8035A764 003504E4  7C D9 E1 D6 */	mullw r6, r25, r28
/* 8035A768 003504E8  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035A76C 003504EC  80 BD 00 08 */	lwz r5, 8(r29)
/* 8035A770 003504F0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8035A774 003504F4  80 9D 00 04 */	lwz r4, 4(r29)
/* 8035A778 003504F8  7C DF 32 14 */	add r6, r31, r6
/* 8035A77C 003504FC  7C C3 30 50 */	subf r6, r3, r6
/* 8035A780 00350500  7C 00 20 00 */	cmpw r0, r4
/* 8035A784 00350504  7F E6 2B D6 */	divw r31, r6, r5
/* 8035A788 00350508  40 82 00 1C */	bne lbl_8035A7A4
/* 8035A78C 0035050C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8035A790 00350510  7C 04 02 14 */	add r0, r4, r0
/* 8035A794 00350514  7C 80 29 D6 */	mullw r4, r0, r5
/* 8035A798 00350518  90 1D 00 04 */	stw r0, 4(r29)
/* 8035A79C 0035051C  48 00 38 5D */	bl gsirealloc
/* 8035A7A0 00350520  90 7D 00 14 */	stw r3, 0x14(r29)
lbl_8035A7A4:
/* 8035A7A4 00350524  80 7D 00 00 */	lwz r3, 0(r29)
/* 8035A7A8 00350528  38 A3 00 01 */	addi r5, r3, 1
/* 8035A7AC 0035052C  38 C5 FF FF */	addi r6, r5, -1
/* 8035A7B0 00350530  90 BD 00 00 */	stw r5, 0(r29)
/* 8035A7B4 00350534  7C 1F 30 00 */	cmpw r31, r6
/* 8035A7B8 00350538  40 80 00 64 */	bge lbl_8035A81C
/* 8035A7BC 0035053C  34 9F 00 01 */	addic. r4, r31, 1
/* 8035A7C0 00350540  41 80 00 0C */	blt lbl_8035A7CC
/* 8035A7C4 00350544  7C 04 28 00 */	cmpw r4, r5
/* 8035A7C8 00350548  41 80 00 0C */	blt lbl_8035A7D4
lbl_8035A7CC:
/* 8035A7CC 0035054C  38 60 00 00 */	li r3, 0
/* 8035A7D0 00350550  48 00 00 14 */	b lbl_8035A7E4
lbl_8035A7D4:
/* 8035A7D4 00350554  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A7D8 00350558  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035A7DC 0035055C  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035A7E0 00350560  7C 63 02 14 */	add r3, r3, r0
lbl_8035A7E4:
/* 8035A7E4 00350564  2C 1F 00 00 */	cmpwi r31, 0
/* 8035A7E8 00350568  41 80 00 0C */	blt lbl_8035A7F4
/* 8035A7EC 0035056C  7C 1F 28 00 */	cmpw r31, r5
/* 8035A7F0 00350570  41 80 00 0C */	blt lbl_8035A7FC
lbl_8035A7F4:
/* 8035A7F4 00350574  38 80 00 00 */	li r4, 0
/* 8035A7F8 00350578  48 00 00 14 */	b lbl_8035A80C
lbl_8035A7FC:
/* 8035A7FC 0035057C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A800 00350580  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8035A804 00350584  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035A808 00350588  7C 84 02 14 */	add r4, r4, r0
lbl_8035A80C:
/* 8035A80C 0035058C  80 BD 00 08 */	lwz r5, 8(r29)
/* 8035A810 00350590  7C 1F 30 50 */	subf r0, r31, r6
/* 8035A814 00350594  7C A5 01 D6 */	mullw r5, r5, r0
/* 8035A818 00350598  48 09 B8 15 */	bl memmove
lbl_8035A81C:
/* 8035A81C 0035059C  2C 1F 00 00 */	cmpwi r31, 0
/* 8035A820 003505A0  41 80 00 10 */	blt lbl_8035A830
/* 8035A824 003505A4  80 1D 00 00 */	lwz r0, 0(r29)
/* 8035A828 003505A8  7C 1F 00 00 */	cmpw r31, r0
/* 8035A82C 003505AC  41 80 00 0C */	blt lbl_8035A838
lbl_8035A830:
/* 8035A830 003505B0  38 60 00 00 */	li r3, 0
/* 8035A834 003505B4  48 00 00 14 */	b lbl_8035A848
lbl_8035A838:
/* 8035A838 003505B8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A83C 003505BC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035A840 003505C0  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035A844 003505C4  7C 63 02 14 */	add r3, r3, r0
lbl_8035A848:
/* 8035A848 003505C8  80 BD 00 08 */	lwz r5, 8(r29)
/* 8035A84C 003505CC  7F C4 F3 78 */	mr r4, r30
/* 8035A850 003505D0  4B CA 9A E9 */	bl memcpy
/* 8035A854 003505D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8035A858 003505D8  48 09 6B 09 */	bl _restgpr_24
/* 8035A85C 003505DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035A860 003505E0  7C 08 03 A6 */	mtlr r0
/* 8035A864 003505E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8035A868 003505E8  4E 80 00 20 */	blr 

.global ArrayRemoveAt
ArrayRemoveAt:
/* 8035A86C 003505EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035A870 003505F0  7C 08 02 A6 */	mflr r0
/* 8035A874 003505F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035A878 003505F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035A87C 003505FC  7C 7F 1B 78 */	mr r31, r3
/* 8035A880 00350600  80 E3 00 00 */	lwz r7, 0(r3)
/* 8035A884 00350604  39 07 FF FF */	addi r8, r7, -1
/* 8035A888 00350608  7C 04 40 00 */	cmpw r4, r8
/* 8035A88C 0035060C  40 80 00 6C */	bge lbl_8035A8F8
/* 8035A890 00350610  2C 04 00 00 */	cmpwi r4, 0
/* 8035A894 00350614  41 80 00 0C */	blt lbl_8035A8A0
/* 8035A898 00350618  7C 04 38 00 */	cmpw r4, r7
/* 8035A89C 0035061C  41 80 00 0C */	blt lbl_8035A8A8
lbl_8035A8A0:
/* 8035A8A0 00350620  38 C0 00 00 */	li r6, 0
/* 8035A8A4 00350624  48 00 00 14 */	b lbl_8035A8B8
lbl_8035A8A8:
/* 8035A8A8 00350628  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A8AC 0035062C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8035A8B0 00350630  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035A8B4 00350634  7C C5 02 14 */	add r6, r5, r0
lbl_8035A8B8:
/* 8035A8B8 00350638  34 A4 00 01 */	addic. r5, r4, 1
/* 8035A8BC 0035063C  41 80 00 0C */	blt lbl_8035A8C8
/* 8035A8C0 00350640  7C 05 38 00 */	cmpw r5, r7
/* 8035A8C4 00350644  41 80 00 0C */	blt lbl_8035A8D0
lbl_8035A8C8:
/* 8035A8C8 00350648  38 E0 00 00 */	li r7, 0
/* 8035A8CC 0035064C  48 00 00 14 */	b lbl_8035A8E0
lbl_8035A8D0:
/* 8035A8D0 00350650  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A8D4 00350654  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035A8D8 00350658  7C 00 29 D6 */	mullw r0, r0, r5
/* 8035A8DC 0035065C  7C E3 02 14 */	add r7, r3, r0
lbl_8035A8E0:
/* 8035A8E0 00350660  80 BF 00 08 */	lwz r5, 8(r31)
/* 8035A8E4 00350664  7C 04 40 50 */	subf r0, r4, r8
/* 8035A8E8 00350668  7C C3 33 78 */	mr r3, r6
/* 8035A8EC 0035066C  7C E4 3B 78 */	mr r4, r7
/* 8035A8F0 00350670  7C A5 01 D6 */	mullw r5, r5, r0
/* 8035A8F4 00350674  48 09 B7 39 */	bl memmove
lbl_8035A8F8:
/* 8035A8F8 00350678  80 7F 00 00 */	lwz r3, 0(r31)
/* 8035A8FC 0035067C  38 03 FF FF */	addi r0, r3, -1
/* 8035A900 00350680  90 1F 00 00 */	stw r0, 0(r31)
/* 8035A904 00350684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035A908 00350688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035A90C 0035068C  7C 08 03 A6 */	mtlr r0
/* 8035A910 00350690  38 21 00 10 */	addi r1, r1, 0x10
/* 8035A914 00350694  4E 80 00 20 */	blr 

.global ArrayDeleteAt
ArrayDeleteAt:
/* 8035A918 00350698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035A91C 0035069C  7C 08 02 A6 */	mflr r0
/* 8035A920 003506A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035A924 003506A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035A928 003506A8  7C 7F 1B 78 */	mr r31, r3
/* 8035A92C 003506AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8035A930 003506B0  7C 9E 23 78 */	mr r30, r4
/* 8035A934 003506B4  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8035A938 003506B8  2C 0C 00 00 */	cmpwi r12, 0
/* 8035A93C 003506BC  41 82 00 38 */	beq lbl_8035A974
/* 8035A940 003506C0  2C 04 00 00 */	cmpwi r4, 0
/* 8035A944 003506C4  41 80 00 10 */	blt lbl_8035A954
/* 8035A948 003506C8  80 03 00 00 */	lwz r0, 0(r3)
/* 8035A94C 003506CC  7C 04 00 00 */	cmpw r4, r0
/* 8035A950 003506D0  41 80 00 0C */	blt lbl_8035A95C
lbl_8035A954:
/* 8035A954 003506D4  38 60 00 00 */	li r3, 0
/* 8035A958 003506D8  48 00 00 14 */	b lbl_8035A96C
lbl_8035A95C:
/* 8035A95C 003506DC  80 03 00 08 */	lwz r0, 8(r3)
/* 8035A960 003506E0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035A964 003506E4  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035A968 003506E8  7C 63 02 14 */	add r3, r3, r0
lbl_8035A96C:
/* 8035A96C 003506EC  7D 89 03 A6 */	mtctr r12
/* 8035A970 003506F0  4E 80 04 21 */	bctrl 
lbl_8035A974:
/* 8035A974 003506F4  80 9F 00 00 */	lwz r4, 0(r31)
/* 8035A978 003506F8  38 C4 FF FF */	addi r6, r4, -1
/* 8035A97C 003506FC  7C 1E 30 00 */	cmpw r30, r6
/* 8035A980 00350700  40 80 00 64 */	bge lbl_8035A9E4
/* 8035A984 00350704  2C 1E 00 00 */	cmpwi r30, 0
/* 8035A988 00350708  41 80 00 0C */	blt lbl_8035A994
/* 8035A98C 0035070C  7C 1E 20 00 */	cmpw r30, r4
/* 8035A990 00350710  41 80 00 0C */	blt lbl_8035A99C
lbl_8035A994:
/* 8035A994 00350714  38 60 00 00 */	li r3, 0
/* 8035A998 00350718  48 00 00 14 */	b lbl_8035A9AC
lbl_8035A99C:
/* 8035A99C 0035071C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8035A9A0 00350720  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8035A9A4 00350724  7C 00 F1 D6 */	mullw r0, r0, r30
/* 8035A9A8 00350728  7C 63 02 14 */	add r3, r3, r0
lbl_8035A9AC:
/* 8035A9AC 0035072C  34 BE 00 01 */	addic. r5, r30, 1
/* 8035A9B0 00350730  41 80 00 0C */	blt lbl_8035A9BC
/* 8035A9B4 00350734  7C 05 20 00 */	cmpw r5, r4
/* 8035A9B8 00350738  41 80 00 0C */	blt lbl_8035A9C4
lbl_8035A9BC:
/* 8035A9BC 0035073C  38 80 00 00 */	li r4, 0
/* 8035A9C0 00350740  48 00 00 14 */	b lbl_8035A9D4
lbl_8035A9C4:
/* 8035A9C4 00350744  80 1F 00 08 */	lwz r0, 8(r31)
/* 8035A9C8 00350748  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8035A9CC 0035074C  7C 00 29 D6 */	mullw r0, r0, r5
/* 8035A9D0 00350750  7C 84 02 14 */	add r4, r4, r0
lbl_8035A9D4:
/* 8035A9D4 00350754  80 BF 00 08 */	lwz r5, 8(r31)
/* 8035A9D8 00350758  7C 1E 30 50 */	subf r0, r30, r6
/* 8035A9DC 0035075C  7C A5 01 D6 */	mullw r5, r5, r0
/* 8035A9E0 00350760  48 09 B6 4D */	bl memmove
lbl_8035A9E4:
/* 8035A9E4 00350764  80 7F 00 00 */	lwz r3, 0(r31)
/* 8035A9E8 00350768  38 03 FF FF */	addi r0, r3, -1
/* 8035A9EC 0035076C  90 1F 00 00 */	stw r0, 0(r31)
/* 8035A9F0 00350770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035A9F4 00350774  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035A9F8 00350778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035A9FC 0035077C  7C 08 03 A6 */	mtlr r0
/* 8035AA00 00350780  38 21 00 10 */	addi r1, r1, 0x10
/* 8035AA04 00350784  4E 80 00 20 */	blr 

.global ArrayReplaceAt
ArrayReplaceAt:
/* 8035AA08 00350788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035AA0C 0035078C  7C 08 02 A6 */	mflr r0
/* 8035AA10 00350790  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035AA14 00350794  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035AA18 00350798  7C BF 2B 78 */	mr r31, r5
/* 8035AA1C 0035079C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035AA20 003507A0  7C 9E 23 78 */	mr r30, r4
/* 8035AA24 003507A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035AA28 003507A8  7C 7D 1B 78 */	mr r29, r3
/* 8035AA2C 003507AC  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8035AA30 003507B0  2C 0C 00 00 */	cmpwi r12, 0
/* 8035AA34 003507B4  41 82 00 38 */	beq lbl_8035AA6C
/* 8035AA38 003507B8  2C 05 00 00 */	cmpwi r5, 0
/* 8035AA3C 003507BC  41 80 00 10 */	blt lbl_8035AA4C
/* 8035AA40 003507C0  80 03 00 00 */	lwz r0, 0(r3)
/* 8035AA44 003507C4  7C 05 00 00 */	cmpw r5, r0
/* 8035AA48 003507C8  41 80 00 0C */	blt lbl_8035AA54
lbl_8035AA4C:
/* 8035AA4C 003507CC  38 60 00 00 */	li r3, 0
/* 8035AA50 003507D0  48 00 00 14 */	b lbl_8035AA64
lbl_8035AA54:
/* 8035AA54 003507D4  80 03 00 08 */	lwz r0, 8(r3)
/* 8035AA58 003507D8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035AA5C 003507DC  7C 00 29 D6 */	mullw r0, r0, r5
/* 8035AA60 003507E0  7C 63 02 14 */	add r3, r3, r0
lbl_8035AA64:
/* 8035AA64 003507E4  7D 89 03 A6 */	mtctr r12
/* 8035AA68 003507E8  4E 80 04 21 */	bctrl 
lbl_8035AA6C:
/* 8035AA6C 003507EC  2C 1F 00 00 */	cmpwi r31, 0
/* 8035AA70 003507F0  41 80 00 10 */	blt lbl_8035AA80
/* 8035AA74 003507F4  80 1D 00 00 */	lwz r0, 0(r29)
/* 8035AA78 003507F8  7C 1F 00 00 */	cmpw r31, r0
/* 8035AA7C 003507FC  41 80 00 0C */	blt lbl_8035AA88
lbl_8035AA80:
/* 8035AA80 00350800  38 60 00 00 */	li r3, 0
/* 8035AA84 00350804  48 00 00 14 */	b lbl_8035AA98
lbl_8035AA88:
/* 8035AA88 00350808  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035AA8C 0035080C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035AA90 00350810  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035AA94 00350814  7C 63 02 14 */	add r3, r3, r0
lbl_8035AA98:
/* 8035AA98 00350818  80 BD 00 08 */	lwz r5, 8(r29)
/* 8035AA9C 0035081C  7F C4 F3 78 */	mr r4, r30
/* 8035AAA0 00350820  4B CA 98 99 */	bl memcpy
/* 8035AAA4 00350824  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035AAA8 00350828  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035AAAC 0035082C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035AAB0 00350830  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035AAB4 00350834  7C 08 03 A6 */	mtlr r0
/* 8035AAB8 00350838  38 21 00 20 */	addi r1, r1, 0x20
/* 8035AABC 0035083C  4E 80 00 20 */	blr 

.global ArraySort
ArraySort:
/* 8035AAC0 00350840  7C 65 1B 78 */	mr r5, r3
/* 8035AAC4 00350844  7C 86 23 78 */	mr r6, r4
/* 8035AAC8 00350848  80 85 00 00 */	lwz r4, 0(r5)
/* 8035AACC 0035084C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035AAD0 00350850  80 A5 00 08 */	lwz r5, 8(r5)
/* 8035AAD4 00350854  48 09 DF F8 */	b qsort

.global ArraySearch
ArraySearch:
/* 8035AAD8 00350858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035AADC 0035085C  7C 08 02 A6 */	mflr r0
/* 8035AAE0 00350860  90 01 00 34 */	stw r0, 0x34(r1)
/* 8035AAE4 00350864  39 61 00 30 */	addi r11, r1, 0x30
/* 8035AAE8 00350868  48 09 68 29 */	bl _savegpr_23
/* 8035AAEC 0035086C  2C 03 00 00 */	cmpwi r3, 0
/* 8035AAF0 00350870  7C 7C 1B 78 */	mr r28, r3
/* 8035AAF4 00350874  7C 9D 23 78 */	mr r29, r4
/* 8035AAF8 00350878  7C BE 2B 78 */	mr r30, r5
/* 8035AAFC 0035087C  3B E0 00 01 */	li r31, 1
/* 8035AB00 00350880  41 82 00 10 */	beq lbl_8035AB10
/* 8035AB04 00350884  80 A3 00 00 */	lwz r5, 0(r3)
/* 8035AB08 00350888  2C 05 00 00 */	cmpwi r5, 0
/* 8035AB0C 0035088C  40 82 00 0C */	bne lbl_8035AB18
lbl_8035AB10:
/* 8035AB10 00350890  38 60 FF FF */	li r3, -1
/* 8035AB14 00350894  48 00 01 44 */	b lbl_8035AC58
lbl_8035AB18:
/* 8035AB18 00350898  2C 07 00 00 */	cmpwi r7, 0
/* 8035AB1C 0035089C  41 82 00 9C */	beq lbl_8035ABB8
/* 8035AB20 003508A0  2C 06 00 00 */	cmpwi r6, 0
/* 8035AB24 003508A4  41 80 00 0C */	blt lbl_8035AB30
/* 8035AB28 003508A8  7C 06 28 00 */	cmpw r6, r5
/* 8035AB2C 003508AC  41 80 00 0C */	blt lbl_8035AB38
lbl_8035AB30:
/* 8035AB30 003508B0  3B 60 00 00 */	li r27, 0
/* 8035AB34 003508B4  48 00 00 14 */	b lbl_8035AB48
lbl_8035AB38:
/* 8035AB38 003508B8  80 03 00 08 */	lwz r0, 8(r3)
/* 8035AB3C 003508BC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8035AB40 003508C0  7C 00 31 D6 */	mullw r0, r0, r6
/* 8035AB44 003508C4  7F 64 02 14 */	add r27, r4, r0
lbl_8035AB48:
/* 8035AB48 003508C8  7C 86 28 50 */	subf r4, r6, r5
/* 8035AB4C 003508CC  83 43 00 08 */	lwz r26, 8(r3)
/* 8035AB50 003508D0  3B 04 FF FF */	addi r24, r4, -1
/* 8035AB54 003508D4  3A E0 00 00 */	li r23, 0
/* 8035AB58 003508D8  3B E0 00 00 */	li r31, 0
/* 8035AB5C 003508DC  48 00 00 48 */	b lbl_8035ABA4
lbl_8035AB60:
/* 8035AB60 003508E0  7C 17 C2 14 */	add r0, r23, r24
/* 8035AB64 003508E4  7F CC F3 78 */	mr r12, r30
/* 8035AB68 003508E8  7C 19 0E 70 */	srawi r25, r0, 1
/* 8035AB6C 003508EC  7F A4 EB 78 */	mr r4, r29
/* 8035AB70 003508F0  7C 19 D1 D6 */	mullw r0, r25, r26
/* 8035AB74 003508F4  7C 7B 02 14 */	add r3, r27, r0
/* 8035AB78 003508F8  7D 89 03 A6 */	mtctr r12
/* 8035AB7C 003508FC  4E 80 04 21 */	bctrl 
/* 8035AB80 00350900  2C 03 00 00 */	cmpwi r3, 0
/* 8035AB84 00350904  40 82 00 08 */	bne lbl_8035AB8C
/* 8035AB88 00350908  3B E0 00 01 */	li r31, 1
lbl_8035AB8C:
/* 8035AB8C 0035090C  2C 03 00 00 */	cmpwi r3, 0
/* 8035AB90 00350910  40 80 00 08 */	bge lbl_8035AB98
/* 8035AB94 00350914  3A F9 00 01 */	addi r23, r25, 1
lbl_8035AB98:
/* 8035AB98 00350918  2C 03 00 00 */	cmpwi r3, 0
/* 8035AB9C 0035091C  41 80 00 08 */	blt lbl_8035ABA4
/* 8035ABA0 00350920  3B 19 FF FF */	addi r24, r25, -1
lbl_8035ABA4:
/* 8035ABA4 00350924  7C 17 C0 00 */	cmpw r23, r24
/* 8035ABA8 00350928  40 81 FF B8 */	ble lbl_8035AB60
/* 8035ABAC 0035092C  7C 17 D1 D6 */	mullw r0, r23, r26
/* 8035ABB0 00350930  7C 9B 02 14 */	add r4, r27, r0
/* 8035ABB4 00350934  48 00 00 7C */	b lbl_8035AC30
lbl_8035ABB8:
/* 8035ABB8 00350938  2C 06 00 00 */	cmpwi r6, 0
/* 8035ABBC 0035093C  41 80 00 0C */	blt lbl_8035ABC8
/* 8035ABC0 00350940  7C 06 28 00 */	cmpw r6, r5
/* 8035ABC4 00350944  41 80 00 0C */	blt lbl_8035ABD0
lbl_8035ABC8:
/* 8035ABC8 00350948  3A E0 00 00 */	li r23, 0
/* 8035ABCC 0035094C  48 00 00 14 */	b lbl_8035ABE0
lbl_8035ABD0:
/* 8035ABD0 00350950  80 03 00 08 */	lwz r0, 8(r3)
/* 8035ABD4 00350954  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8035ABD8 00350958  7C 00 31 D6 */	mullw r0, r0, r6
/* 8035ABDC 0035095C  7E E4 02 14 */	add r23, r4, r0
lbl_8035ABE0:
/* 8035ABE0 00350960  83 23 00 08 */	lwz r25, 8(r3)
/* 8035ABE4 00350964  7F 06 28 50 */	subf r24, r6, r5
/* 8035ABE8 00350968  3B 40 00 00 */	li r26, 0
/* 8035ABEC 0035096C  3B 60 00 00 */	li r27, 0
/* 8035ABF0 00350970  48 00 00 34 */	b lbl_8035AC24
lbl_8035ABF4:
/* 8035ABF4 00350974  7F CC F3 78 */	mr r12, r30
/* 8035ABF8 00350978  7F A3 EB 78 */	mr r3, r29
/* 8035ABFC 0035097C  7C 97 DA 14 */	add r4, r23, r27
/* 8035AC00 00350980  7D 89 03 A6 */	mtctr r12
/* 8035AC04 00350984  4E 80 04 21 */	bctrl 
/* 8035AC08 00350988  2C 03 00 00 */	cmpwi r3, 0
/* 8035AC0C 0035098C  40 82 00 10 */	bne lbl_8035AC1C
/* 8035AC10 00350990  7C 19 D1 D6 */	mullw r0, r25, r26
/* 8035AC14 00350994  7C 97 02 14 */	add r4, r23, r0
/* 8035AC18 00350998  48 00 00 18 */	b lbl_8035AC30
lbl_8035AC1C:
/* 8035AC1C 0035099C  7F 7B CA 14 */	add r27, r27, r25
/* 8035AC20 003509A0  3B 5A 00 01 */	addi r26, r26, 1
lbl_8035AC24:
/* 8035AC24 003509A4  7C 1A C0 00 */	cmpw r26, r24
/* 8035AC28 003509A8  41 80 FF CC */	blt lbl_8035ABF4
/* 8035AC2C 003509AC  38 80 00 00 */	li r4, 0
lbl_8035AC30:
/* 8035AC30 003509B0  2C 04 00 00 */	cmpwi r4, 0
/* 8035AC34 003509B4  41 82 00 20 */	beq lbl_8035AC54
/* 8035AC38 003509B8  2C 1F 00 00 */	cmpwi r31, 0
/* 8035AC3C 003509BC  41 82 00 18 */	beq lbl_8035AC54
/* 8035AC40 003509C0  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8035AC44 003509C4  80 1C 00 08 */	lwz r0, 8(r28)
/* 8035AC48 003509C8  7C 63 20 50 */	subf r3, r3, r4
/* 8035AC4C 003509CC  7C 63 03 D6 */	divw r3, r3, r0
/* 8035AC50 003509D0  48 00 00 08 */	b lbl_8035AC58
lbl_8035AC54:
/* 8035AC54 003509D4  38 60 FF FF */	li r3, -1
lbl_8035AC58:
/* 8035AC58 003509D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8035AC5C 003509DC  48 09 67 01 */	bl _restgpr_23
/* 8035AC60 003509E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035AC64 003509E4  7C 08 03 A6 */	mtlr r0
/* 8035AC68 003509E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8035AC6C 003509EC  4E 80 00 20 */	blr 

.global ArrayMapBackwards
ArrayMapBackwards:
/* 8035AC70 003509F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035AC74 003509F4  7C 08 02 A6 */	mflr r0
/* 8035AC78 003509F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035AC7C 003509FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035AC80 00350A00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035AC84 00350A04  7C BE 2B 78 */	mr r30, r5
/* 8035AC88 00350A08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035AC8C 00350A0C  7C 9D 23 78 */	mr r29, r4
/* 8035AC90 00350A10  93 81 00 10 */	stw r28, 0x10(r1)
/* 8035AC94 00350A14  7C 7C 1B 78 */	mr r28, r3
/* 8035AC98 00350A18  80 C3 00 00 */	lwz r6, 0(r3)
/* 8035AC9C 00350A1C  3B E6 FF FF */	addi r31, r6, -1
/* 8035ACA0 00350A20  48 00 00 44 */	b lbl_8035ACE4
lbl_8035ACA4:
/* 8035ACA4 00350A24  2C 1F 00 00 */	cmpwi r31, 0
/* 8035ACA8 00350A28  41 80 00 10 */	blt lbl_8035ACB8
/* 8035ACAC 00350A2C  80 1C 00 00 */	lwz r0, 0(r28)
/* 8035ACB0 00350A30  7C 1F 00 00 */	cmpw r31, r0
/* 8035ACB4 00350A34  41 80 00 0C */	blt lbl_8035ACC0
lbl_8035ACB8:
/* 8035ACB8 00350A38  38 60 00 00 */	li r3, 0
/* 8035ACBC 00350A3C  48 00 00 14 */	b lbl_8035ACD0
lbl_8035ACC0:
/* 8035ACC0 00350A40  80 1C 00 08 */	lwz r0, 8(r28)
/* 8035ACC4 00350A44  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8035ACC8 00350A48  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035ACCC 00350A4C  7C 63 02 14 */	add r3, r3, r0
lbl_8035ACD0:
/* 8035ACD0 00350A50  7F AC EB 78 */	mr r12, r29
/* 8035ACD4 00350A54  7F C4 F3 78 */	mr r4, r30
/* 8035ACD8 00350A58  7D 89 03 A6 */	mtctr r12
/* 8035ACDC 00350A5C  4E 80 04 21 */	bctrl 
/* 8035ACE0 00350A60  3B FF FF FF */	addi r31, r31, -1
lbl_8035ACE4:
/* 8035ACE4 00350A64  2C 1F 00 00 */	cmpwi r31, 0
/* 8035ACE8 00350A68  40 80 FF BC */	bge lbl_8035ACA4
/* 8035ACEC 00350A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035ACF0 00350A70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035ACF4 00350A74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035ACF8 00350A78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035ACFC 00350A7C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8035AD00 00350A80  7C 08 03 A6 */	mtlr r0
/* 8035AD04 00350A84  38 21 00 20 */	addi r1, r1, 0x20
/* 8035AD08 00350A88  4E 80 00 20 */	blr 

.global ArrayMapBackwards2
ArrayMapBackwards2:
/* 8035AD0C 00350A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035AD10 00350A90  7C 08 02 A6 */	mflr r0
/* 8035AD14 00350A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035AD18 00350A98  39 61 00 20 */	addi r11, r1, 0x20
/* 8035AD1C 00350A9C  48 09 66 05 */	bl _savegpr_27
/* 8035AD20 00350AA0  80 C3 00 00 */	lwz r6, 0(r3)
/* 8035AD24 00350AA4  7C 7B 1B 78 */	mr r27, r3
/* 8035AD28 00350AA8  7C 9C 23 78 */	mr r28, r4
/* 8035AD2C 00350AAC  7C BD 2B 78 */	mr r29, r5
/* 8035AD30 00350AB0  3B C6 FF FF */	addi r30, r6, -1
/* 8035AD34 00350AB4  48 00 00 58 */	b lbl_8035AD8C
lbl_8035AD38:
/* 8035AD38 00350AB8  2C 1E 00 00 */	cmpwi r30, 0
/* 8035AD3C 00350ABC  41 80 00 10 */	blt lbl_8035AD4C
/* 8035AD40 00350AC0  80 1B 00 00 */	lwz r0, 0(r27)
/* 8035AD44 00350AC4  7C 1E 00 00 */	cmpw r30, r0
/* 8035AD48 00350AC8  41 80 00 0C */	blt lbl_8035AD54
lbl_8035AD4C:
/* 8035AD4C 00350ACC  3B E0 00 00 */	li r31, 0
/* 8035AD50 00350AD0  48 00 00 14 */	b lbl_8035AD64
lbl_8035AD54:
/* 8035AD54 00350AD4  80 1B 00 08 */	lwz r0, 8(r27)
/* 8035AD58 00350AD8  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8035AD5C 00350ADC  7C 00 F1 D6 */	mullw r0, r0, r30
/* 8035AD60 00350AE0  7F E3 02 14 */	add r31, r3, r0
lbl_8035AD64:
/* 8035AD64 00350AE4  7F 8C E3 78 */	mr r12, r28
/* 8035AD68 00350AE8  7F E3 FB 78 */	mr r3, r31
/* 8035AD6C 00350AEC  7F A4 EB 78 */	mr r4, r29
/* 8035AD70 00350AF0  7D 89 03 A6 */	mtctr r12
/* 8035AD74 00350AF4  4E 80 04 21 */	bctrl 
/* 8035AD78 00350AF8  2C 03 00 00 */	cmpwi r3, 0
/* 8035AD7C 00350AFC  40 82 00 0C */	bne lbl_8035AD88
/* 8035AD80 00350B00  7F E3 FB 78 */	mr r3, r31
/* 8035AD84 00350B04  48 00 00 14 */	b lbl_8035AD98
lbl_8035AD88:
/* 8035AD88 00350B08  3B DE FF FF */	addi r30, r30, -1
lbl_8035AD8C:
/* 8035AD8C 00350B0C  2C 1E 00 00 */	cmpwi r30, 0
/* 8035AD90 00350B10  40 80 FF A8 */	bge lbl_8035AD38
/* 8035AD94 00350B14  38 60 00 00 */	li r3, 0
lbl_8035AD98:
/* 8035AD98 00350B18  39 61 00 20 */	addi r11, r1, 0x20
/* 8035AD9C 00350B1C  48 09 65 D1 */	bl _restgpr_27
/* 8035ADA0 00350B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035ADA4 00350B24  7C 08 03 A6 */	mtlr r0
/* 8035ADA8 00350B28  38 21 00 20 */	addi r1, r1, 0x20
/* 8035ADAC 00350B2C  4E 80 00 20 */	blr 

.global ArrayClear
ArrayClear:
/* 8035ADB0 00350B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035ADB4 00350B34  7C 08 02 A6 */	mflr r0
/* 8035ADB8 00350B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035ADBC 00350B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035ADC0 00350B40  93 C1 00 08 */	stw r30, 8(r1)
/* 8035ADC4 00350B44  7C 7E 1B 78 */	mr r30, r3
/* 8035ADC8 00350B48  80 83 00 00 */	lwz r4, 0(r3)
/* 8035ADCC 00350B4C  3B E4 FF FF */	addi r31, r4, -1
/* 8035ADD0 00350B50  48 00 00 C4 */	b lbl_8035AE94
lbl_8035ADD4:
/* 8035ADD4 00350B54  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8035ADD8 00350B58  2C 0C 00 00 */	cmpwi r12, 0
/* 8035ADDC 00350B5C  41 82 00 38 */	beq lbl_8035AE14
/* 8035ADE0 00350B60  2C 1F 00 00 */	cmpwi r31, 0
/* 8035ADE4 00350B64  41 80 00 10 */	blt lbl_8035ADF4
/* 8035ADE8 00350B68  80 1E 00 00 */	lwz r0, 0(r30)
/* 8035ADEC 00350B6C  7C 1F 00 00 */	cmpw r31, r0
/* 8035ADF0 00350B70  41 80 00 0C */	blt lbl_8035ADFC
lbl_8035ADF4:
/* 8035ADF4 00350B74  38 60 00 00 */	li r3, 0
/* 8035ADF8 00350B78  48 00 00 14 */	b lbl_8035AE0C
lbl_8035ADFC:
/* 8035ADFC 00350B7C  80 1E 00 08 */	lwz r0, 8(r30)
/* 8035AE00 00350B80  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8035AE04 00350B84  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035AE08 00350B88  7C 63 02 14 */	add r3, r3, r0
lbl_8035AE0C:
/* 8035AE0C 00350B8C  7D 89 03 A6 */	mtctr r12
/* 8035AE10 00350B90  4E 80 04 21 */	bctrl 
lbl_8035AE14:
/* 8035AE14 00350B94  80 9E 00 00 */	lwz r4, 0(r30)
/* 8035AE18 00350B98  38 C4 FF FF */	addi r6, r4, -1
/* 8035AE1C 00350B9C  7C 1F 30 00 */	cmpw r31, r6
/* 8035AE20 00350BA0  40 80 00 64 */	bge lbl_8035AE84
/* 8035AE24 00350BA4  2C 1F 00 00 */	cmpwi r31, 0
/* 8035AE28 00350BA8  41 80 00 0C */	blt lbl_8035AE34
/* 8035AE2C 00350BAC  7C 1F 20 00 */	cmpw r31, r4
/* 8035AE30 00350BB0  41 80 00 0C */	blt lbl_8035AE3C
lbl_8035AE34:
/* 8035AE34 00350BB4  38 60 00 00 */	li r3, 0
/* 8035AE38 00350BB8  48 00 00 14 */	b lbl_8035AE4C
lbl_8035AE3C:
/* 8035AE3C 00350BBC  80 1E 00 08 */	lwz r0, 8(r30)
/* 8035AE40 00350BC0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8035AE44 00350BC4  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8035AE48 00350BC8  7C 63 02 14 */	add r3, r3, r0
lbl_8035AE4C:
/* 8035AE4C 00350BCC  34 BF 00 01 */	addic. r5, r31, 1
/* 8035AE50 00350BD0  41 80 00 0C */	blt lbl_8035AE5C
/* 8035AE54 00350BD4  7C 05 20 00 */	cmpw r5, r4
/* 8035AE58 00350BD8  41 80 00 0C */	blt lbl_8035AE64
lbl_8035AE5C:
/* 8035AE5C 00350BDC  38 80 00 00 */	li r4, 0
/* 8035AE60 00350BE0  48 00 00 14 */	b lbl_8035AE74
lbl_8035AE64:
/* 8035AE64 00350BE4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8035AE68 00350BE8  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8035AE6C 00350BEC  7C 00 29 D6 */	mullw r0, r0, r5
/* 8035AE70 00350BF0  7C 84 02 14 */	add r4, r4, r0
lbl_8035AE74:
/* 8035AE74 00350BF4  80 BE 00 08 */	lwz r5, 8(r30)
/* 8035AE78 00350BF8  7C 1F 30 50 */	subf r0, r31, r6
/* 8035AE7C 00350BFC  7C A5 01 D6 */	mullw r5, r5, r0
/* 8035AE80 00350C00  48 09 B1 AD */	bl memmove
lbl_8035AE84:
/* 8035AE84 00350C04  80 7E 00 00 */	lwz r3, 0(r30)
/* 8035AE88 00350C08  3B FF FF FF */	addi r31, r31, -1
/* 8035AE8C 00350C0C  38 03 FF FF */	addi r0, r3, -1
/* 8035AE90 00350C10  90 1E 00 00 */	stw r0, 0(r30)
lbl_8035AE94:
/* 8035AE94 00350C14  2C 1F 00 00 */	cmpwi r31, 0
/* 8035AE98 00350C18  40 80 FF 3C */	bge lbl_8035ADD4
/* 8035AE9C 00350C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035AEA0 00350C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035AEA4 00350C24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035AEA8 00350C28  7C 08 03 A6 */	mtlr r0
/* 8035AEAC 00350C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8035AEB0 00350C30  4E 80 00 20 */	blr 


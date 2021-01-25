.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global addHdrList
addHdrList:
/* 8039037C 003860FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80390380 00386100  7C 08 02 A6 */	mflr r0
/* 80390384 00386104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80390388 00386108  39 61 00 20 */	addi r11, r1, 0x20
/* 8039038C 0038610C  48 06 0F 91 */	bl _savegpr_26
/* 80390390 00386110  83 C3 00 00 */	lwz r30, 0(r3)
/* 80390394 00386114  7C 7A 1B 78 */	mr r26, r3
/* 80390398 00386118  7C 9B 23 78 */	mr r27, r4
/* 8039039C 0038611C  7C BC 2B 78 */	mr r28, r5
/* 803903A0 00386120  2C 1E 00 00 */	cmpwi r30, 0
/* 803903A4 00386124  7C DD 33 78 */	mr r29, r6
/* 803903A8 00386128  3B E0 00 00 */	li r31, 0
/* 803903AC 0038612C  41 82 00 54 */	beq lbl_80390400
/* 803903B0 00386130  80 9E 00 08 */	lwz r4, 8(r30)
/* 803903B4 00386134  7F 83 E3 78 */	mr r3, r28
/* 803903B8 00386138  48 00 29 1D */	bl NHTTPi_compareToken
/* 803903BC 0038613C  2C 03 00 00 */	cmpwi r3, 0
/* 803903C0 00386140  41 82 00 3C */	beq lbl_803903FC
/* 803903C4 00386144  83 DE 00 04 */	lwz r30, 4(r30)
/* 803903C8 00386148  48 00 00 24 */	b lbl_803903EC
lbl_803903CC:
/* 803903CC 0038614C  80 9E 00 08 */	lwz r4, 8(r30)
/* 803903D0 00386150  7F 83 E3 78 */	mr r3, r28
/* 803903D4 00386154  48 00 29 01 */	bl NHTTPi_compareToken
/* 803903D8 00386158  2C 03 00 00 */	cmpwi r3, 0
/* 803903DC 0038615C  40 82 00 0C */	bne lbl_803903E8
/* 803903E0 00386160  3B E0 00 01 */	li r31, 1
/* 803903E4 00386164  48 00 00 1C */	b lbl_80390400
lbl_803903E8:
/* 803903E8 00386168  83 DE 00 04 */	lwz r30, 4(r30)
lbl_803903EC:
/* 803903EC 0038616C  80 1A 00 00 */	lwz r0, 0(r26)
/* 803903F0 00386170  7C 1E 00 40 */	cmplw r30, r0
/* 803903F4 00386174  40 82 FF D8 */	bne lbl_803903CC
/* 803903F8 00386178  48 00 00 08 */	b lbl_80390400
lbl_803903FC:
/* 803903FC 0038617C  3B E0 00 01 */	li r31, 1
lbl_80390400:
/* 80390400 00386180  2C 1F 00 00 */	cmpwi r31, 0
/* 80390404 00386184  41 82 00 0C */	beq lbl_80390410
/* 80390408 00386188  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8039040C 0038618C  48 00 00 90 */	b lbl_8039049C
lbl_80390410:
/* 80390410 00386190  38 60 00 18 */	li r3, 0x18
/* 80390414 00386194  38 80 00 04 */	li r4, 4
/* 80390418 00386198  4B FF FC 2D */	bl NHTTPi_alloc
/* 8039041C 0038619C  2C 03 00 00 */	cmpwi r3, 0
/* 80390420 003861A0  40 82 00 28 */	bne lbl_80390448
/* 80390424 003861A4  3C 60 80 49 */	lis r3, lbl_804915B0@ha
/* 80390428 003861A8  38 63 15 B0 */	addi r3, r3, lbl_804915B0@l
/* 8039042C 003861AC  4C C6 31 82 */	crclr 6
/* 80390430 003861B0  48 06 81 ED */	bl printf
/* 80390434 003861B4  7F 63 DB 78 */	mr r3, r27
/* 80390438 003861B8  38 80 00 01 */	li r4, 1
/* 8039043C 003861BC  4B FF FC A9 */	bl NHTTPi_SetError
/* 80390440 003861C0  38 60 00 00 */	li r3, 0
/* 80390444 003861C4  48 00 00 5C */	b lbl_803904A0
lbl_80390448:
/* 80390448 003861C8  93 83 00 08 */	stw r28, 8(r3)
/* 8039044C 003861CC  38 00 00 00 */	li r0, 0
/* 80390450 003861D0  93 A3 00 0C */	stw r29, 0xc(r3)
/* 80390454 003861D4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80390458 003861D8  90 03 00 14 */	stw r0, 0x14(r3)
/* 8039045C 003861DC  80 9A 00 00 */	lwz r4, 0(r26)
/* 80390460 003861E0  2C 04 00 00 */	cmpwi r4, 0
/* 80390464 003861E4  41 82 00 2C */	beq lbl_80390490
/* 80390468 003861E8  80 04 00 00 */	lwz r0, 0(r4)
/* 8039046C 003861EC  90 03 00 00 */	stw r0, 0(r3)
/* 80390470 003861F0  80 1A 00 00 */	lwz r0, 0(r26)
/* 80390474 003861F4  90 03 00 04 */	stw r0, 4(r3)
/* 80390478 003861F8  80 9A 00 00 */	lwz r4, 0(r26)
/* 8039047C 003861FC  80 84 00 00 */	lwz r4, 0(r4)
/* 80390480 00386200  90 64 00 04 */	stw r3, 4(r4)
/* 80390484 00386204  80 9A 00 00 */	lwz r4, 0(r26)
/* 80390488 00386208  90 64 00 00 */	stw r3, 0(r4)
/* 8039048C 0038620C  48 00 00 10 */	b lbl_8039049C
lbl_80390490:
/* 80390490 00386210  90 63 00 04 */	stw r3, 4(r3)
/* 80390494 00386214  90 63 00 00 */	stw r3, 0(r3)
/* 80390498 00386218  90 7A 00 00 */	stw r3, 0(r26)
lbl_8039049C:
/* 8039049C 0038621C  38 60 00 01 */	li r3, 1
lbl_803904A0:
/* 803904A0 00386220  39 61 00 20 */	addi r11, r1, 0x20
/* 803904A4 00386224  48 06 0E C5 */	bl _restgpr_26
/* 803904A8 00386228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803904AC 0038622C  7C 08 03 A6 */	mtlr r0
/* 803904B0 00386230  38 21 00 20 */	addi r1, r1, 0x20
/* 803904B4 00386234  4E 80 00 20 */	blr 

.global NHTTPi_getHdrFromList
NHTTPi_getHdrFromList:
/* 803904B8 00386238  80 A3 00 00 */	lwz r5, 0(r3)
/* 803904BC 0038623C  2C 05 00 00 */	cmpwi r5, 0
/* 803904C0 00386240  41 82 00 38 */	beq lbl_803904F8
/* 803904C4 00386244  80 85 00 00 */	lwz r4, 0(r5)
/* 803904C8 00386248  7C 05 20 40 */	cmplw r5, r4
/* 803904CC 0038624C  41 82 00 24 */	beq lbl_803904F0
/* 803904D0 00386250  80 05 00 04 */	lwz r0, 4(r5)
/* 803904D4 00386254  90 04 00 04 */	stw r0, 4(r4)
/* 803904D8 00386258  80 05 00 00 */	lwz r0, 0(r5)
/* 803904DC 0038625C  80 85 00 04 */	lwz r4, 4(r5)
/* 803904E0 00386260  90 04 00 00 */	stw r0, 0(r4)
/* 803904E4 00386264  80 05 00 04 */	lwz r0, 4(r5)
/* 803904E8 00386268  90 03 00 00 */	stw r0, 0(r3)
/* 803904EC 0038626C  48 00 00 0C */	b lbl_803904F8
lbl_803904F0:
/* 803904F0 00386270  38 00 00 00 */	li r0, 0
/* 803904F4 00386274  90 03 00 00 */	stw r0, 0(r3)
lbl_803904F8:
/* 803904F8 00386278  7C A3 2B 78 */	mr r3, r5
/* 803904FC 0038627C  4E 80 00 20 */	blr 

.global NHTTP_AddHeaderField
NHTTP_AddHeaderField:
/* 80390500 00386280  80 03 00 04 */	lwz r0, 4(r3)
/* 80390504 00386284  2C 00 00 00 */	cmpwi r0, 0
/* 80390508 00386288  41 82 00 0C */	beq lbl_80390514
/* 8039050C 0038628C  38 60 00 00 */	li r3, 0
/* 80390510 00386290  4E 80 00 20 */	blr 
lbl_80390514:
/* 80390514 00386294  38 63 00 30 */	addi r3, r3, 0x30
/* 80390518 00386298  4B FF FE 64 */	b addHdrList
/* 8039051C 0038629C  4E 80 00 20 */	blr 

.global NHTTP_AddPostDataAscii
NHTTP_AddPostDataAscii:
/* 80390520 003862A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80390524 003862A4  7C 08 02 A6 */	mflr r0
/* 80390528 003862A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8039052C 003862AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80390530 003862B0  48 06 0D D9 */	bl _savegpr_21
/* 80390534 003862B4  80 03 00 04 */	lwz r0, 4(r3)
/* 80390538 003862B8  7C 7B 1B 78 */	mr r27, r3
/* 8039053C 003862BC  7C 9C 23 78 */	mr r28, r4
/* 80390540 003862C0  7C BD 2B 78 */	mr r29, r5
/* 80390544 003862C4  2C 00 00 00 */	cmpwi r0, 0
/* 80390548 003862C8  7C D5 33 78 */	mr r21, r6
/* 8039054C 003862CC  3B E0 00 00 */	li r31, 0
/* 80390550 003862D0  3B C0 00 00 */	li r30, 0
/* 80390554 003862D4  41 82 00 0C */	beq lbl_80390560
/* 80390558 003862D8  38 60 00 00 */	li r3, 0
/* 8039055C 003862DC  48 00 01 38 */	b lbl_80390694
lbl_80390560:
/* 80390560 003862E0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80390564 003862E4  2C 00 00 00 */	cmpwi r0, 0
/* 80390568 003862E8  41 82 00 1C */	beq lbl_80390584
/* 8039056C 003862EC  3C 60 80 49 */	lis r3, lbl_804915CC@ha
/* 80390570 003862F0  38 63 15 CC */	addi r3, r3, lbl_804915CC@l
/* 80390574 003862F4  4C C6 31 82 */	crclr 6
/* 80390578 003862F8  48 06 80 A5 */	bl printf
/* 8039057C 003862FC  38 60 00 00 */	li r3, 0
/* 80390580 00386300  48 00 01 14 */	b lbl_80390694
lbl_80390584:
/* 80390584 00386304  2C 06 00 00 */	cmpwi r6, 0
/* 80390588 00386308  41 82 00 10 */	beq lbl_80390598
/* 8039058C 0038630C  7E A3 AB 78 */	mr r3, r21
/* 80390590 00386310  48 00 21 A1 */	bl NHTTPi_strlen
/* 80390594 00386314  7C 7E 1B 78 */	mr r30, r3
lbl_80390598:
/* 80390598 00386318  7E A3 AB 78 */	mr r3, r21
/* 8039059C 0038631C  7F C4 F3 78 */	mr r4, r30
/* 803905A0 00386320  38 BB 00 3A */	addi r5, r27, 0x3a
/* 803905A4 00386324  38 C0 00 12 */	li r6, 0x12
/* 803905A8 00386328  48 00 28 71 */	bl NHTTPi_memfind
/* 803905AC 0038632C  2C 03 00 00 */	cmpwi r3, 0
/* 803905B0 00386330  40 80 00 0C */	bge lbl_803905BC
/* 803905B4 00386334  38 00 00 01 */	li r0, 1
/* 803905B8 00386338  48 00 00 A4 */	b lbl_8039065C
lbl_803905BC:
/* 803905BC 0038633C  3C 60 80 41 */	lis r3, lbl_80416800@ha
/* 803905C0 00386340  3B 00 00 13 */	li r24, 0x13
/* 803905C4 00386344  38 63 68 00 */	addi r3, r3, lbl_80416800@l
/* 803905C8 00386348  3A E3 00 13 */	addi r23, r3, 0x13
lbl_803905CC:
/* 803905CC 0038634C  7E DB C2 14 */	add r22, r27, r24
/* 803905D0 00386350  88 17 00 00 */	lbz r0, 0(r23)
/* 803905D4 00386354  8B 36 00 38 */	lbz r25, 0x38(r22)
/* 803905D8 00386358  7C 1A 07 74 */	extsb r26, r0
lbl_803905DC:
/* 803905DC 0038635C  57 23 06 3E */	clrlwi r3, r25, 0x18
/* 803905E0 00386360  38 63 00 01 */	addi r3, r3, 1
/* 803905E4 00386364  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803905E8 00386368  28 00 00 7B */	cmplwi r0, 0x7b
/* 803905EC 0038636C  40 82 00 0C */	bne lbl_803905F8
/* 803905F0 00386370  38 60 00 30 */	li r3, 0x30
/* 803905F4 00386374  48 00 00 20 */	b lbl_80390614
lbl_803905F8:
/* 803905F8 00386378  28 00 00 5B */	cmplwi r0, 0x5b
/* 803905FC 0038637C  40 82 00 0C */	bne lbl_80390608
/* 80390600 00386380  38 60 00 61 */	li r3, 0x61
/* 80390604 00386384  48 00 00 10 */	b lbl_80390614
lbl_80390608:
/* 80390608 00386388  28 00 00 3A */	cmplwi r0, 0x3a
/* 8039060C 0038638C  40 82 00 08 */	bne lbl_80390614
/* 80390610 00386390  38 60 00 41 */	li r3, 0x41
lbl_80390614:
/* 80390614 00386394  7C 79 07 74 */	extsb r25, r3
/* 80390618 00386398  98 76 00 38 */	stb r3, 0x38(r22)
/* 8039061C 0038639C  7C 19 D0 00 */	cmpw r25, r26
/* 80390620 003863A0  41 82 00 28 */	beq lbl_80390648
/* 80390624 003863A4  7E A3 AB 78 */	mr r3, r21
/* 80390628 003863A8  7F C4 F3 78 */	mr r4, r30
/* 8039062C 003863AC  38 BB 00 3A */	addi r5, r27, 0x3a
/* 80390630 003863B0  38 C0 00 12 */	li r6, 0x12
/* 80390634 003863B4  48 00 27 E5 */	bl NHTTPi_memfind
/* 80390638 003863B8  2C 03 00 00 */	cmpwi r3, 0
/* 8039063C 003863BC  40 80 FF A0 */	bge lbl_803905DC
/* 80390640 003863C0  38 00 00 01 */	li r0, 1
/* 80390644 003863C4  48 00 00 18 */	b lbl_8039065C
lbl_80390648:
/* 80390648 003863C8  3B 18 FF FF */	addi r24, r24, -1
/* 8039064C 003863CC  3A F7 FF FF */	addi r23, r23, -1
/* 80390650 003863D0  2C 18 00 02 */	cmpwi r24, 2
/* 80390654 003863D4  40 80 FF 78 */	bge lbl_803905CC
/* 80390658 003863D8  38 00 00 00 */	li r0, 0
lbl_8039065C:
/* 8039065C 003863DC  2C 00 00 00 */	cmpwi r0, 0
/* 80390660 003863E0  41 82 00 30 */	beq lbl_80390690
/* 80390664 003863E4  7F 84 E3 78 */	mr r4, r28
/* 80390668 003863E8  7F A5 EB 78 */	mr r5, r29
/* 8039066C 003863EC  7E A6 AB 78 */	mr r6, r21
/* 80390670 003863F0  38 7B 00 34 */	addi r3, r27, 0x34
/* 80390674 003863F4  4B FF FD 09 */	bl addHdrList
/* 80390678 003863F8  2C 03 00 00 */	cmpwi r3, 0
/* 8039067C 003863FC  7C 7F 1B 78 */	mr r31, r3
/* 80390680 00386400  41 82 00 10 */	beq lbl_80390690
/* 80390684 00386404  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 80390688 00386408  80 63 00 00 */	lwz r3, 0(r3)
/* 8039068C 0038640C  93 C3 00 10 */	stw r30, 0x10(r3)
lbl_80390690:
/* 80390690 00386410  7F E3 FB 78 */	mr r3, r31
lbl_80390694:
/* 80390694 00386414  39 61 00 40 */	addi r11, r1, 0x40
/* 80390698 00386418  48 06 0C BD */	bl _restgpr_21
/* 8039069C 0038641C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803906A0 00386420  7C 08 03 A6 */	mtlr r0
/* 803906A4 00386424  38 21 00 40 */	addi r1, r1, 0x40
/* 803906A8 00386428  4E 80 00 20 */	blr 


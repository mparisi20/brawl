.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VC_launch
VC_launch:
/* 8003D4E8 00033268  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8003D4EC 0003326C  7C 08 02 A6 */	mflr r0
/* 8003D4F0 00033270  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8003D4F4 00033274  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8003D4F8 00033278  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8003D4FC 0003327C  7C 7E 1B 78 */	mr r30, r3
/* 8003D500 00033280  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8003D504 00033284  7C 9D 23 78 */	mr r29, r4
/* 8003D508 00033288  80 6D BC C0 */	lwz r3, lbl_805A00E0-_SDA_BASE_(r13)
/* 8003D50C 0003328C  48 01 10 C1 */	bl GameGlobal$7getGlobalRecordMenuDatap
/* 8003D510 00033290  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8003D514 00033294  54 1F CF FE */	rlwinm r31, r0, 0x19, 0x1f, 0x1f
/* 8003D518 00033298  48 1D 27 0D */	bl SCGetLanguage
/* 8003D51C 0003329C  7C 1F 00 D0 */	neg r0, r31
/* 8003D520 000332A0  7C 64 1B 78 */	mr r4, r3
/* 8003D524 000332A4  7C 00 FB 78 */	or r0, r0, r31
/* 8003D528 000332A8  7F A6 EB 78 */	mr r6, r29
/* 8003D52C 000332AC  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8003D530 000332B0  38 61 00 58 */	addi r3, r1, 0x58
/* 8003D534 000332B4  54 07 0F FE */	srwi r7, r0, 0x1f
/* 8003D538 000332B8  38 80 00 10 */	li r4, 0x10
/* 8003D53C 000332BC  4B FF FE C9 */	bl $2unnamed$2gf_vc_launch_cpp$2$7VC_setup
/* 8003D540 000332C0  88 81 00 58 */	lbz r4, 0x58(r1)
/* 8003D544 000332C4  38 00 00 0F */	li r0, 0xf
/* 8003D548 000332C8  38 C1 00 09 */	addi r6, r1, 9
/* 8003D54C 000332CC  38 61 00 59 */	addi r3, r1, 0x59
/* 8003D550 000332D0  98 81 00 08 */	stb r4, 8(r1)
/* 8003D554 000332D4  7C 85 07 74 */	extsb r5, r4
/* 8003D558 000332D8  38 E0 00 01 */	li r7, 1
/* 8003D55C 000332DC  7C 09 03 A6 */	mtctr r0
lbl_8003D560:
/* 8003D560 000332E0  88 83 00 00 */	lbz r4, 0(r3)
/* 8003D564 000332E4  38 E7 00 05 */	addi r7, r7, 5
/* 8003D568 000332E8  7C 05 22 14 */	add r0, r5, r4
/* 8003D56C 000332EC  88 83 00 01 */	lbz r4, 1(r3)
/* 8003D570 000332F0  98 06 00 00 */	stb r0, 0(r6)
/* 8003D574 000332F4  7C 05 22 14 */	add r0, r5, r4
/* 8003D578 000332F8  88 83 00 02 */	lbz r4, 2(r3)
/* 8003D57C 000332FC  98 06 00 01 */	stb r0, 1(r6)
/* 8003D580 00033300  7C 05 22 14 */	add r0, r5, r4
/* 8003D584 00033304  88 83 00 03 */	lbz r4, 3(r3)
/* 8003D588 00033308  98 06 00 02 */	stb r0, 2(r6)
/* 8003D58C 0003330C  7C 05 22 14 */	add r0, r5, r4
/* 8003D590 00033310  88 83 00 04 */	lbz r4, 4(r3)
/* 8003D594 00033314  98 06 00 03 */	stb r0, 3(r6)
/* 8003D598 00033318  38 63 00 05 */	addi r3, r3, 5
/* 8003D59C 0003331C  7C 05 22 14 */	add r0, r5, r4
/* 8003D5A0 00033320  98 06 00 04 */	stb r0, 4(r6)
/* 8003D5A4 00033324  38 C6 00 05 */	addi r6, r6, 5
/* 8003D5A8 00033328  42 00 FF B8 */	bdnz lbl_8003D560
/* 8003D5AC 0003332C  88 9E 00 02 */	lbz r4, 2(r30)
/* 8003D5B0 00033330  3C 60 80 42 */	lis r3, lbl_80423958@ha
/* 8003D5B4 00033334  88 1E 00 01 */	lbz r0, 1(r30)
/* 8003D5B8 00033338  3B E1 00 08 */	addi r31, r1, 8
/* 8003D5BC 0003333C  7C 85 07 74 */	extsb r5, r4
/* 8003D5C0 00033340  88 DE 00 03 */	lbz r6, 3(r30)
/* 8003D5C4 00033344  88 9E 00 00 */	lbz r4, 0(r30)
/* 8003D5C8 00033348  7C 00 07 74 */	extsb r0, r0
/* 8003D5CC 0003334C  7C C6 07 74 */	extsb r6, r6
/* 8003D5D0 00033350  54 A5 40 2E */	slwi r5, r5, 8
/* 8003D5D4 00033354  7C C5 2B 78 */	or r5, r6, r5
/* 8003D5D8 00033358  54 84 C0 0E */	slwi r4, r4, 0x18
/* 8003D5DC 0003335C  54 00 80 1E */	slwi r0, r0, 0x10
/* 8003D5E0 00033360  81 0D 83 58 */	lwz r8, lbl_8059C778-_SDA_BASE_(r13)
/* 8003D5E4 00033364  7C 80 03 78 */	or r0, r4, r0
/* 8003D5E8 00033368  38 C0 00 00 */	li r6, 0
/* 8003D5EC 0003336C  7C A4 03 78 */	or r4, r5, r0
/* 8003D5F0 00033370  7C DF 39 AE */	stbx r6, r31, r7
/* 8003D5F4 00033374  80 AD 83 5C */	lwz r5, lbl_8059C77C-_SDA_BASE_(r13)
/* 8003D5F8 00033378  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 8003D5FC 0003337C  7F C7 F3 78 */	mr r7, r30
/* 8003D600 00033380  38 63 39 58 */	addi r3, r3, lbl_80423958@l
/* 8003D604 00033384  7C A6 23 78 */	or r6, r5, r4
/* 8003D608 00033388  7D 05 03 78 */	or r5, r8, r0
/* 8003D60C 0003338C  90 CD 83 5C */	stw r6, lbl_8059C77C-_SDA_BASE_(r13)
/* 8003D610 00033390  90 AD 83 58 */	stw r5, lbl_8059C778-_SDA_BASE_(r13)
/* 8003D614 00033394  4C C6 31 82 */	crclr 6
/* 8003D618 00033398  48 19 AF E9 */	bl OSReport
/* 8003D61C 0003339C  80 6D 83 58 */	lwz r3, lbl_8059C778-_SDA_BASE_(r13)
/* 8003D620 000333A0  7F E6 FB 78 */	mr r6, r31
/* 8003D624 000333A4  80 8D 83 5C */	lwz r4, lbl_8059C77C-_SDA_BASE_(r13)
/* 8003D628 000333A8  38 A0 00 00 */	li r5, 0
/* 8003D62C 000333AC  38 E0 00 00 */	li r7, 0
/* 8003D630 000333B0  4C C6 31 82 */	crclr 6
/* 8003D634 000333B4  48 19 DC 85 */	bl OSLaunchPartitionl
/* 8003D638 000333B8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8003D63C 000333BC  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8003D640 000333C0  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8003D644 000333C4  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8003D648 000333C8  7C 08 03 A6 */	mtlr r0
/* 8003D64C 000333CC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8003D650 000333D0  4E 80 00 20 */	blr 

.global init__11vcBootParamFiPPc
init__11vcBootParamFiPPc:
/* 8003D654 000333D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003D658 000333D8  7C 08 02 A6 */	mflr r0
/* 8003D65C 000333DC  2C 04 00 02 */	cmpwi r4, 2
/* 8003D660 000333E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003D664 000333E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003D668 000333E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003D66C 000333EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003D670 000333F0  7C 7D 1B 78 */	mr r29, r3
/* 8003D674 000333F4  41 82 00 10 */	beq lbl_8003D684
/* 8003D678 000333F8  38 00 00 00 */	li r0, 0
/* 8003D67C 000333FC  90 03 00 00 */	stw r0, 0(r3)
/* 8003D680 00033400  48 00 00 F8 */	b lbl_8003D778
lbl_8003D684:
/* 8003D684 00033404  80 05 00 00 */	lwz r0, 0(r5)
/* 8003D688 00033408  3B C3 00 04 */	addi r30, r3, 4
/* 8003D68C 0003340C  90 03 00 00 */	stw r0, 0(r3)
/* 8003D690 00033410  83 E5 00 04 */	lwz r31, 4(r5)
/* 8003D694 00033414  7F E3 FB 78 */	mr r3, r31
/* 8003D698 00033418  48 3B 2F A9 */	bl strlen
/* 8003D69C 0003341C  28 03 00 4C */	cmplwi r3, 0x4c
/* 8003D6A0 00033420  41 81 00 C0 */	bgt lbl_8003D760
/* 8003D6A4 00033424  88 1F 00 00 */	lbz r0, 0(r31)
/* 8003D6A8 00033428  28 03 00 01 */	cmplwi r3, 1
/* 8003D6AC 0003342C  38 BF 00 01 */	addi r5, r31, 1
/* 8003D6B0 00033430  38 9E 00 01 */	addi r4, r30, 1
/* 8003D6B4 00033434  98 1E 00 00 */	stb r0, 0(r30)
/* 8003D6B8 00033438  7C 06 07 74 */	extsb r6, r0
/* 8003D6BC 0003343C  38 63 FF FF */	addi r3, r3, -1
/* 8003D6C0 00033440  40 81 00 A0 */	ble lbl_8003D760
/* 8003D6C4 00033444  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8003D6C8 00033448  7C 09 03 A6 */	mtctr r0
/* 8003D6CC 0003344C  41 82 00 78 */	beq lbl_8003D744
lbl_8003D6D0:
/* 8003D6D0 00033450  88 05 00 00 */	lbz r0, 0(r5)
/* 8003D6D4 00033454  7C 06 00 50 */	subf r0, r6, r0
/* 8003D6D8 00033458  98 04 00 00 */	stb r0, 0(r4)
/* 8003D6DC 0003345C  88 05 00 01 */	lbz r0, 1(r5)
/* 8003D6E0 00033460  7C 06 00 50 */	subf r0, r6, r0
/* 8003D6E4 00033464  98 04 00 01 */	stb r0, 1(r4)
/* 8003D6E8 00033468  88 05 00 02 */	lbz r0, 2(r5)
/* 8003D6EC 0003346C  7C 06 00 50 */	subf r0, r6, r0
/* 8003D6F0 00033470  98 04 00 02 */	stb r0, 2(r4)
/* 8003D6F4 00033474  88 05 00 03 */	lbz r0, 3(r5)
/* 8003D6F8 00033478  7C 06 00 50 */	subf r0, r6, r0
/* 8003D6FC 0003347C  98 04 00 03 */	stb r0, 3(r4)
/* 8003D700 00033480  88 05 00 04 */	lbz r0, 4(r5)
/* 8003D704 00033484  7C 06 00 50 */	subf r0, r6, r0
/* 8003D708 00033488  98 04 00 04 */	stb r0, 4(r4)
/* 8003D70C 0003348C  88 05 00 05 */	lbz r0, 5(r5)
/* 8003D710 00033490  7C 06 00 50 */	subf r0, r6, r0
/* 8003D714 00033494  98 04 00 05 */	stb r0, 5(r4)
/* 8003D718 00033498  88 05 00 06 */	lbz r0, 6(r5)
/* 8003D71C 0003349C  7C 06 00 50 */	subf r0, r6, r0
/* 8003D720 000334A0  98 04 00 06 */	stb r0, 6(r4)
/* 8003D724 000334A4  88 05 00 07 */	lbz r0, 7(r5)
/* 8003D728 000334A8  38 A5 00 08 */	addi r5, r5, 8
/* 8003D72C 000334AC  7C 06 00 50 */	subf r0, r6, r0
/* 8003D730 000334B0  98 04 00 07 */	stb r0, 7(r4)
/* 8003D734 000334B4  38 84 00 08 */	addi r4, r4, 8
/* 8003D738 000334B8  42 00 FF 98 */	bdnz lbl_8003D6D0
/* 8003D73C 000334BC  70 63 00 07 */	andi. r3, r3, 7
/* 8003D740 000334C0  41 82 00 20 */	beq lbl_8003D760
lbl_8003D744:
/* 8003D744 000334C4  7C 69 03 A6 */	mtctr r3
lbl_8003D748:
/* 8003D748 000334C8  88 05 00 00 */	lbz r0, 0(r5)
/* 8003D74C 000334CC  38 A5 00 01 */	addi r5, r5, 1
/* 8003D750 000334D0  7C 06 00 50 */	subf r0, r6, r0
/* 8003D754 000334D4  98 04 00 00 */	stb r0, 0(r4)
/* 8003D758 000334D8  38 84 00 01 */	addi r4, r4, 1
/* 8003D75C 000334DC  42 00 FF EC */	bdnz lbl_8003D748
lbl_8003D760:
/* 8003D760 000334E0  38 61 00 08 */	addi r3, r1, 8
/* 8003D764 000334E4  38 9D 00 05 */	addi r4, r29, 5
/* 8003D768 000334E8  38 A0 00 04 */	li r5, 4
/* 8003D76C 000334EC  4B FC 6B CD */	bl func_80004338
/* 8003D770 000334F0  38 00 00 00 */	li r0, 0
/* 8003D774 000334F4  98 01 00 0C */	stb r0, 0xc(r1)
lbl_8003D778:
/* 8003D778 000334F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003D77C 000334FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003D780 00033500  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003D784 00033504  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003D788 00033508  7C 08 03 A6 */	mtlr r0
/* 8003D78C 0003350C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003D790 00033510  4E 80 00 20 */	blr 


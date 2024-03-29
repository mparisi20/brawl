.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global lowCallback
lowCallback:
/* 801FC4DC 001F225C  38 00 00 01 */	li r0, 1
/* 801FC4E0 001F2260  90 6D C5 90 */	stw r3, lbl_805A09B0-_SDA_BASE_(r13)
/* 801FC4E4 001F2264  90 0D A6 D0 */	stw r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC4E8 001F2268  4E 80 00 20 */	blr 

.global __DVDCheckDevice
__DVDCheckDevice:
/* 801FC4EC 001F226C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FC4F0 001F2270  7C 08 02 A6 */	mflr r0
/* 801FC4F4 001F2274  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FC4F8 001F2278  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801FC4FC 001F227C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801FC500 001F2280  3F C0 46 0A */	lis r30, 0x460a
/* 801FC504 001F2284  4B FE 1E 71 */	bl OSGetPhysicalMem2Size
/* 801FC508 001F2288  3C 03 F8 00 */	addis r0, r3, 0xf800
/* 801FC50C 001F228C  28 00 00 00 */	cmplwi r0, 0
/* 801FC510 001F2290  40 82 00 0C */	bne lbl_801FC51C
/* 801FC514 001F2294  38 60 00 01 */	li r3, 1
/* 801FC518 001F2298  48 00 02 44 */	b lbl_801FC75C
lbl_801FC51C:
/* 801FC51C 001F229C  38 61 00 18 */	addi r3, r1, 0x18
/* 801FC520 001F22A0  4B FD 8D E1 */	bl __OSGetIOSRev
/* 801FC524 001F22A4  88 01 00 19 */	lbz r0, 0x19(r1)
/* 801FC528 001F22A8  28 00 00 1E */	cmplwi r0, 0x1e
/* 801FC52C 001F22AC  41 80 00 0C */	blt lbl_801FC538
/* 801FC530 001F22B0  28 00 00 FE */	cmplwi r0, 0xfe
/* 801FC534 001F22B4  41 80 00 0C */	blt lbl_801FC540
lbl_801FC538:
/* 801FC538 001F22B8  38 60 00 01 */	li r3, 1
/* 801FC53C 001F22BC  48 00 02 20 */	b lbl_801FC75C
lbl_801FC540:
/* 801FC540 001F22C0  3C 60 80 00 */	lis r3, 0x8000319C@ha
/* 801FC544 001F22C4  88 03 31 9C */	lbz r0, 0x8000319C@l(r3)
/* 801FC548 001F22C8  28 00 00 81 */	cmplwi r0, 0x81
/* 801FC54C 001F22CC  40 82 00 08 */	bne lbl_801FC554
/* 801FC550 001F22D0  3F C0 7E D4 */	lis r30, 0x7ed4
lbl_801FC554:
/* 801FC554 001F22D4  38 00 00 00 */	li r0, 0
/* 801FC558 001F22D8  3C 60 80 4E */	lis r3, lbl_804E4680@ha
/* 801FC55C 001F22DC  3C C0 80 20 */	lis r6, lowCallback@ha
/* 801FC560 001F22E0  90 0D A6 D0 */	stw r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC564 001F22E4  7F C5 F3 78 */	mr r5, r30
/* 801FC568 001F22E8  38 63 46 80 */	addi r3, r3, lbl_804E4680@l
/* 801FC56C 001F22EC  38 C6 C4 DC */	addi r6, r6, lowCallback@l
/* 801FC570 001F22F0  38 80 00 20 */	li r4, 0x20
/* 801FC574 001F22F4  48 00 12 85 */	bl DVDLowUnencryptedRead
lbl_801FC578:
/* 801FC578 001F22F8  80 0D A6 D0 */	lwz r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC57C 001F22FC  2C 00 00 00 */	cmpwi r0, 0
/* 801FC580 001F2300  41 82 FF F8 */	beq lbl_801FC578
/* 801FC584 001F2304  80 0D C5 90 */	lwz r0, lbl_805A09B0-_SDA_BASE_(r13)
/* 801FC588 001F2308  2C 00 00 02 */	cmpwi r0, 2
/* 801FC58C 001F230C  41 82 00 14 */	beq lbl_801FC5A0
/* 801FC590 001F2310  40 80 01 C4 */	bge lbl_801FC754
/* 801FC594 001F2314  2C 00 00 01 */	cmpwi r0, 1
/* 801FC598 001F2318  40 80 01 24 */	bge lbl_801FC6BC
/* 801FC59C 001F231C  48 00 01 B8 */	b lbl_801FC754
lbl_801FC5A0:
/* 801FC5A0 001F2320  38 00 00 00 */	li r0, 0
/* 801FC5A4 001F2324  3C 60 80 20 */	lis r3, lowCallback@ha
/* 801FC5A8 001F2328  90 0D A6 D0 */	stw r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC5AC 001F232C  38 63 C4 DC */	addi r3, r3, lowCallback@l
/* 801FC5B0 001F2330  48 00 16 D9 */	bl DVDLowRequestError
lbl_801FC5B4:
/* 801FC5B4 001F2334  80 0D A6 D0 */	lwz r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC5B8 001F2338  2C 00 00 00 */	cmpwi r0, 0
/* 801FC5BC 001F233C  41 82 FF F8 */	beq lbl_801FC5B4
/* 801FC5C0 001F2340  48 00 24 79 */	bl DVDLowGetImmBufferReg
/* 801FC5C4 001F2344  80 0D C5 90 */	lwz r0, lbl_805A09B0-_SDA_BASE_(r13)
/* 801FC5C8 001F2348  2C 00 00 01 */	cmpwi r0, 1
/* 801FC5CC 001F234C  41 82 00 08 */	beq lbl_801FC5D4
/* 801FC5D0 001F2350  48 00 01 84 */	b lbl_801FC754
lbl_801FC5D4:
/* 801FC5D4 001F2354  48 00 24 65 */	bl DVDLowGetImmBufferReg
/* 801FC5D8 001F2358  54 60 00 0F */	rlwinm. r0, r3, 0, 0, 7
/* 801FC5DC 001F235C  40 82 01 70 */	bne lbl_801FC74C
/* 801FC5E0 001F2360  48 00 24 59 */	bl DVDLowGetImmBufferReg
/* 801FC5E4 001F2364  3C 80 00 05 */	lis r4, 0x00052100@ha
/* 801FC5E8 001F2368  54 63 02 3E */	clrlwi r3, r3, 8
/* 801FC5EC 001F236C  38 04 21 00 */	addi r0, r4, 0x00052100@l
/* 801FC5F0 001F2370  7C 03 00 00 */	cmpw r3, r0
/* 801FC5F4 001F2374  41 82 00 08 */	beq lbl_801FC5FC
/* 801FC5F8 001F2378  48 00 00 C4 */	b lbl_801FC6BC
lbl_801FC5FC:
/* 801FC5FC 001F237C  38 00 00 00 */	li r0, 0
/* 801FC600 001F2380  3C 60 80 4E */	lis r3, lbl_804E4680@ha
/* 801FC604 001F2384  3C C0 80 20 */	lis r6, lowCallback@ha
/* 801FC608 001F2388  90 0D A6 D0 */	stw r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC60C 001F238C  38 63 46 80 */	addi r3, r3, lbl_804E4680@l
/* 801FC610 001F2390  3C 80 00 04 */	lis r4, 4
/* 801FC614 001F2394  38 C6 C4 DC */	addi r6, r6, lowCallback@l
/* 801FC618 001F2398  38 A0 00 00 */	li r5, 0
/* 801FC61C 001F239C  48 00 1A F1 */	bl DVDLowReportKey
lbl_801FC620:
/* 801FC620 001F23A0  80 0D A6 D0 */	lwz r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC624 001F23A4  2C 00 00 00 */	cmpwi r0, 0
/* 801FC628 001F23A8  41 82 FF F8 */	beq lbl_801FC620
/* 801FC62C 001F23AC  80 0D C5 90 */	lwz r0, lbl_805A09B0-_SDA_BASE_(r13)
/* 801FC630 001F23B0  2C 00 00 02 */	cmpwi r0, 2
/* 801FC634 001F23B4  41 82 00 14 */	beq lbl_801FC648
/* 801FC638 001F23B8  40 80 01 1C */	bge lbl_801FC754
/* 801FC63C 001F23BC  2C 00 00 01 */	cmpwi r0, 1
/* 801FC640 001F23C0  40 80 00 7C */	bge lbl_801FC6BC
/* 801FC644 001F23C4  48 00 01 10 */	b lbl_801FC754
lbl_801FC648:
/* 801FC648 001F23C8  38 00 00 00 */	li r0, 0
/* 801FC64C 001F23CC  3C 60 80 20 */	lis r3, lowCallback@ha
/* 801FC650 001F23D0  90 0D A6 D0 */	stw r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC654 001F23D4  38 63 C4 DC */	addi r3, r3, lowCallback@l
/* 801FC658 001F23D8  48 00 16 31 */	bl DVDLowRequestError
lbl_801FC65C:
/* 801FC65C 001F23DC  80 0D A6 D0 */	lwz r0, lbl_8059EAF0-_SDA_BASE_(r13)
/* 801FC660 001F23E0  2C 00 00 00 */	cmpwi r0, 0
/* 801FC664 001F23E4  41 82 FF F8 */	beq lbl_801FC65C
/* 801FC668 001F23E8  48 00 23 D1 */	bl DVDLowGetImmBufferReg
/* 801FC66C 001F23EC  80 0D C5 90 */	lwz r0, lbl_805A09B0-_SDA_BASE_(r13)
/* 801FC670 001F23F0  2C 00 00 01 */	cmpwi r0, 1
/* 801FC674 001F23F4  41 82 00 08 */	beq lbl_801FC67C
/* 801FC678 001F23F8  48 00 00 DC */	b lbl_801FC754
lbl_801FC67C:
/* 801FC67C 001F23FC  48 00 23 BD */	bl DVDLowGetImmBufferReg
/* 801FC680 001F2400  54 60 00 0F */	rlwinm. r0, r3, 0, 0, 7
/* 801FC684 001F2404  40 82 00 C8 */	bne lbl_801FC74C
/* 801FC688 001F2408  48 00 23 B1 */	bl DVDLowGetImmBufferReg
/* 801FC68C 001F240C  3C 80 00 05 */	lis r4, 0x00053100@ha
/* 801FC690 001F2410  54 63 02 3E */	clrlwi r3, r3, 8
/* 801FC694 001F2414  38 04 31 00 */	addi r0, r4, 0x00053100@l
/* 801FC698 001F2418  7C 03 00 00 */	cmpw r3, r0
/* 801FC69C 001F241C  41 82 00 18 */	beq lbl_801FC6B4
/* 801FC6A0 001F2420  40 80 00 1C */	bge lbl_801FC6BC
/* 801FC6A4 001F2424  38 04 20 00 */	addi r0, r4, 0x2000
/* 801FC6A8 001F2428  7C 03 00 00 */	cmpw r3, r0
/* 801FC6AC 001F242C  41 82 00 08 */	beq lbl_801FC6B4
/* 801FC6B0 001F2430  48 00 00 0C */	b lbl_801FC6BC
lbl_801FC6B4:
/* 801FC6B4 001F2434  38 60 00 01 */	li r3, 1
/* 801FC6B8 001F2438  48 00 00 A4 */	b lbl_801FC75C
lbl_801FC6BC:
/* 801FC6BC 001F243C  88 AD A6 D4 */	lbz r5, lbl_8059EAF4-_SDA_BASE_(r13)
/* 801FC6C0 001F2440  3B E0 00 00 */	li r31, 0
/* 801FC6C4 001F2444  88 8D A6 D5 */	lbz r4, lbl_8059EAF5-_SDA_BASE_(r13)
/* 801FC6C8 001F2448  88 6D A6 D6 */	lbz r3, lbl_8059EAF6-_SDA_BASE_(r13)
/* 801FC6CC 001F244C  88 0D A6 D7 */	lbz r0, lbl_8059EAF7-_SDA_BASE_(r13)
/* 801FC6D0 001F2450  98 A1 00 08 */	stb r5, 8(r1)
/* 801FC6D4 001F2454  98 81 00 09 */	stb r4, 9(r1)
/* 801FC6D8 001F2458  98 61 00 0A */	stb r3, 0xa(r1)
/* 801FC6DC 001F245C  98 01 00 0B */	stb r0, 0xb(r1)
/* 801FC6E0 001F2460  48 01 35 45 */	bl SCGetLanguage
/* 801FC6E4 001F2464  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC6E8 001F2468  40 82 00 10 */	bne lbl_801FC6F8
/* 801FC6EC 001F246C  38 60 00 01 */	li r3, 1
/* 801FC6F0 001F2470  4B FD FC 29 */	bl OSSetFontEncode
/* 801FC6F4 001F2474  48 00 00 0C */	b lbl_801FC700
lbl_801FC6F8:
/* 801FC6F8 001F2478  38 60 00 00 */	li r3, 0
/* 801FC6FC 001F247C  4B FD FC 1D */	bl OSSetFontEncode
lbl_801FC700:
/* 801FC700 001F2480  3F C0 80 41 */	lis r30, lbl_8040D440@ha
/* 801FC704 001F2484  3B DE D4 40 */	addi r30, r30, lbl_8040D440@l
/* 801FC708 001F2488  48 01 35 1D */	bl SCGetLanguage
/* 801FC70C 001F248C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801FC710 001F2490  28 00 00 06 */	cmplwi r0, 6
/* 801FC714 001F2494  40 81 00 0C */	ble lbl_801FC720
/* 801FC718 001F2498  80 BE 00 04 */	lwz r5, 4(r30)
/* 801FC71C 001F249C  48 00 00 10 */	b lbl_801FC72C
lbl_801FC720:
/* 801FC720 001F24A0  48 01 35 05 */	bl SCGetLanguage
/* 801FC724 001F24A4  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801FC728 001F24A8  7C BE 00 2E */	lwzx r5, r30, r0
lbl_801FC72C:
/* 801FC72C 001F24AC  80 01 00 08 */	lwz r0, 8(r1)
/* 801FC730 001F24B0  38 81 00 10 */	addi r4, r1, 0x10
/* 801FC734 001F24B4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 801FC738 001F24B8  38 61 00 0C */	addi r3, r1, 0xc
/* 801FC73C 001F24BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FC740 001F24C0  4B FD F0 A9 */	bl OSFatal
/* 801FC744 001F24C4  38 60 00 00 */	li r3, 0
/* 801FC748 001F24C8  48 00 00 14 */	b lbl_801FC75C
lbl_801FC74C:
/* 801FC74C 001F24CC  38 60 00 00 */	li r3, 0
/* 801FC750 001F24D0  48 00 00 0C */	b lbl_801FC75C
lbl_801FC754:
/* 801FC754 001F24D4  4B FF FC 4D */	bl func_801FC3A0
/* 801FC758 001F24D8  38 60 00 00 */	li r3, 0
lbl_801FC75C:
/* 801FC75C 001F24DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FC760 001F24E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801FC764 001F24E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801FC768 001F24E8  7C 08 03 A6 */	mtlr r0
/* 801FC76C 001F24EC  38 21 00 30 */	addi r1, r1, 0x30
/* 801FC770 001F24F0  4E 80 00 20 */	blr 


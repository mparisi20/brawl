.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ut4FontFQ34nw4r2ut12FontEncod$7InitReaderFunc
nw4r2ut4FontFQ34nw4r2ut12FontEncod$7InitReaderFunc:
/* 8015D8DC 0015365C  2C 04 00 02 */	cmpwi r4, 2
/* 8015D8E0 00153660  3C A0 80 46 */	lis r5, lbl_80464678@ha
/* 8015D8E4 00153664  38 A5 46 78 */	addi r5, r5, lbl_80464678@l
/* 8015D8E8 00153668  41 82 00 5C */	beq lbl_8015D944
/* 8015D8EC 0015366C  40 80 00 78 */	bge lbl_8015D964
/* 8015D8F0 00153670  2C 04 00 00 */	cmpwi r4, 0
/* 8015D8F4 00153674  41 82 00 10 */	beq lbl_8015D904
/* 8015D8F8 00153678  40 80 00 2C */	bge lbl_8015D924
/* 8015D8FC 0015367C  48 00 00 68 */	b lbl_8015D964
/* 8015D900 00153680  48 00 00 64 */	b lbl_8015D964
lbl_8015D904:
/* 8015D904 00153684  38 85 00 00 */	addi r4, r5, 0
/* 8015D908 00153688  80 A5 00 00 */	lwz r5, 0(r5)
/* 8015D90C 0015368C  80 04 00 04 */	lwz r0, 4(r4)
/* 8015D910 00153690  90 A3 00 04 */	stw r5, 4(r3)
/* 8015D914 00153694  90 03 00 08 */	stw r0, 8(r3)
/* 8015D918 00153698  80 04 00 08 */	lwz r0, 8(r4)
/* 8015D91C 0015369C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8015D920 001536A0  4E 80 00 20 */	blr 
lbl_8015D924:
/* 8015D924 001536A4  38 85 00 0C */	addi r4, r5, 0xc
/* 8015D928 001536A8  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 8015D92C 001536AC  80 04 00 04 */	lwz r0, 4(r4)
/* 8015D930 001536B0  90 A3 00 04 */	stw r5, 4(r3)
/* 8015D934 001536B4  90 03 00 08 */	stw r0, 8(r3)
/* 8015D938 001536B8  80 04 00 08 */	lwz r0, 8(r4)
/* 8015D93C 001536BC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8015D940 001536C0  4E 80 00 20 */	blr 
lbl_8015D944:
/* 8015D944 001536C4  38 85 00 18 */	addi r4, r5, 0x18
/* 8015D948 001536C8  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 8015D94C 001536CC  80 04 00 04 */	lwz r0, 4(r4)
/* 8015D950 001536D0  90 A3 00 04 */	stw r5, 4(r3)
/* 8015D954 001536D4  90 03 00 08 */	stw r0, 8(r3)
/* 8015D958 001536D8  80 04 00 08 */	lwz r0, 8(r4)
/* 8015D95C 001536DC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8015D960 001536E0  4E 80 00 20 */	blr 
lbl_8015D964:
/* 8015D964 001536E4  38 85 00 24 */	addi r4, r5, 0x24
/* 8015D968 001536E8  80 A5 00 24 */	lwz r5, 0x24(r5)
/* 8015D96C 001536EC  80 04 00 04 */	lwz r0, 4(r4)
/* 8015D970 001536F0  90 A3 00 04 */	stw r5, 4(r3)
/* 8015D974 001536F4  90 03 00 08 */	stw r0, 8(r3)
/* 8015D978 001536F8  80 04 00 08 */	lwz r0, 8(r4)
/* 8015D97C 001536FC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8015D980 00153700  4E 80 00 20 */	blr 

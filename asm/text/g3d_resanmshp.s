.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d9ResAnmShpCFPQ34nw4r3g3d12$7GetAnmResult
nw4r3g3d9ResAnmShpCFPQ34nw4r3g3d12$7GetAnmResult:
/* 80197484 0018D204  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80197488 0018D208  7C 08 02 A6 */	mflr r0
/* 8019748C 0018D20C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80197490 0018D210  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80197494 0018D214  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80197498 0018D218  39 61 00 30 */	addi r11, r1, 0x30
/* 8019749C 0018D21C  48 25 9E 71 */	bl _savegpr_22
/* 801974A0 0018D220  80 63 00 00 */	lwz r3, 0(r3)
/* 801974A4 0018D224  FF E0 08 90 */	fmr f31, f1
/* 801974A8 0018D228  7C 97 23 78 */	mr r23, r4
/* 801974AC 0018D22C  7C D8 33 78 */	mr r24, r6
/* 801974B0 0018D230  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801974B4 0018D234  2C 00 00 00 */	cmpwi r0, 0
/* 801974B8 0018D238  41 82 00 0C */	beq lbl_801974C4
/* 801974BC 0018D23C  7C 03 02 14 */	add r0, r3, r0
/* 801974C0 0018D240  48 00 00 08 */	b lbl_801974C8
lbl_801974C4:
/* 801974C4 0018D244  38 00 00 00 */	li r0, 0
lbl_801974C8:
/* 801974C8 0018D248  2C 00 00 00 */	cmpwi r0, 0
/* 801974CC 0018D24C  41 82 00 2C */	beq lbl_801974F8
/* 801974D0 0018D250  38 65 00 01 */	addi r3, r5, 1
/* 801974D4 0018D254  54 63 20 36 */	slwi r3, r3, 4
/* 801974D8 0018D258  7C 60 1A 14 */	add r3, r0, r3
/* 801974DC 0018D25C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801974E0 0018D260  2C 03 00 00 */	cmpwi r3, 0
/* 801974E4 0018D264  41 82 00 0C */	beq lbl_801974F0
/* 801974E8 0018D268  7F E0 1A 14 */	add r31, r0, r3
/* 801974EC 0018D26C  48 00 00 10 */	b lbl_801974FC
lbl_801974F0:
/* 801974F0 0018D270  3B E0 00 00 */	li r31, 0
/* 801974F4 0018D274  48 00 00 08 */	b lbl_801974FC
lbl_801974F8:
/* 801974F8 0018D278  3B E0 00 00 */	li r31, 0
lbl_801974FC:
/* 801974FC 0018D27C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80197500 0018D280  7F FC FB 78 */	mr r28, r31
/* 80197504 0018D284  83 5F 00 0C */	lwz r26, 0xc(r31)
/* 80197508 0018D288  3B C4 00 18 */	addi r30, r4, 0x18
/* 8019750C 0018D28C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80197510 0018D290  7F A3 FA 14 */	add r29, r3, r31
/* 80197514 0018D294  C0 02 9F 30 */	lfs f0, lbl_805A3250-_SDA2_BASE_(r2)
/* 80197518 0018D298  3B 7F 00 14 */	addi r27, r31, 0x14
/* 8019751C 0018D29C  90 04 00 00 */	stw r0, 0(r4)
/* 80197520 0018D2A0  3B 20 00 00 */	li r25, 0
/* 80197524 0018D2A4  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80197528 0018D2A8  90 04 00 04 */	stw r0, 4(r4)
/* 8019752C 0018D2AC  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80197530 0018D2B0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80197534 0018D2B4  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80197538 0018D2B8  7C A6 00 6E */	lwzux r5, r6, r0
/* 8019753C 0018D2BC  80 66 00 04 */	lwz r3, 4(r6)
/* 80197540 0018D2C0  80 06 00 08 */	lwz r0, 8(r6)
/* 80197544 0018D2C4  90 A4 00 08 */	stw r5, 8(r4)
/* 80197548 0018D2C8  90 64 00 0C */	stw r3, 0xc(r4)
/* 8019754C 0018D2CC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80197550 0018D2D0  48 00 00 70 */	b lbl_801975C0
lbl_80197554:
/* 80197554 0018D2D4  57 40 07 FF */	clrlwi. r0, r26, 0x1f
/* 80197558 0018D2D8  A2 DD 00 00 */	lhz r22, 0(r29)
/* 8019755C 0018D2DC  41 82 00 0C */	beq lbl_80197568
/* 80197560 0018D2E0  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80197564 0018D2E4  48 00 00 14 */	b lbl_80197578
lbl_80197568:
/* 80197568 0018D2E8  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8019756C 0018D2EC  FC 20 F8 90 */	fmr f1, f31
/* 80197570 0018D2F0  7C 7B 02 14 */	add r3, r27, r0
/* 80197574 0018D2F4  4B FF BB 0D */	bl nw4r3g3d6detailFPCQ34nw4r3g3d18Res$7GetResKeyFrameAnmResult
lbl_80197578:
/* 80197578 0018D2F8  1C 16 00 0C */	mulli r0, r22, 0xc
/* 8019757C 0018D2FC  57 5A F8 7E */	srwi r26, r26, 1
/* 80197580 0018D300  3B BD 00 02 */	addi r29, r29, 2
/* 80197584 0018D304  3B 9C 00 04 */	addi r28, r28, 4
/* 80197588 0018D308  7C 98 02 14 */	add r4, r24, r0
/* 8019758C 0018D30C  7C 18 00 2E */	lwzx r0, r24, r0
/* 80197590 0018D310  80 64 00 04 */	lwz r3, 4(r4)
/* 80197594 0018D314  3B 7B 00 04 */	addi r27, r27, 4
/* 80197598 0018D318  90 1E 00 00 */	stw r0, 0(r30)
/* 8019759C 0018D31C  3B 39 00 01 */	addi r25, r25, 1
/* 801975A0 0018D320  80 04 00 08 */	lwz r0, 8(r4)
/* 801975A4 0018D324  90 7E 00 04 */	stw r3, 4(r30)
/* 801975A8 0018D328  90 1E 00 08 */	stw r0, 8(r30)
/* 801975AC 0018D32C  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 801975B0 0018D330  3B DE 00 10 */	addi r30, r30, 0x10
/* 801975B4 0018D334  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 801975B8 0018D338  EC 00 08 28 */	fsubs f0, f0, f1
/* 801975BC 0018D33C  D0 17 00 14 */	stfs f0, 0x14(r23)
lbl_801975C0:
/* 801975C0 0018D340  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 801975C4 0018D344  7C 19 00 00 */	cmpw r25, r0
/* 801975C8 0018D348  41 80 FF 8C */	blt lbl_80197554
/* 801975CC 0018D34C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801975D0 0018D350  39 61 00 30 */	addi r11, r1, 0x30
/* 801975D4 0018D354  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801975D8 0018D358  48 25 9D 81 */	bl _restgpr_22
/* 801975DC 0018D35C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801975E0 0018D360  7C 08 03 A6 */	mtlr r0
/* 801975E4 0018D364  38 21 00 40 */	addi r1, r1, 0x40
/* 801975E8 0018D368  4E 80 00 20 */	blr 


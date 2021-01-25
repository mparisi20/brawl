.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pdm_bpb_CalcBPBFields
pdm_bpb_CalcBPBFields:
/* 803D7330 003CD0B0  38 00 00 00 */	li r0, 0
/* 803D7334 003CD0B4  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803D7338 003CD0B8  98 03 00 20 */	stb r0, 0x20(r3)
/* 803D733C 003CD0BC  48 00 00 10 */	b lbl_803D734C
lbl_803D7340:
/* 803D7340 003CD0C0  88 83 00 20 */	lbz r4, 0x20(r3)
/* 803D7344 003CD0C4  38 04 00 01 */	addi r0, r4, 1
/* 803D7348 003CD0C8  98 03 00 20 */	stb r0, 0x20(r3)
lbl_803D734C:
/* 803D734C 003CD0CC  54 A5 FC 7F */	rlwinm. r5, r5, 0x1f, 0x11, 0x1f
/* 803D7350 003CD0D0  40 82 FF F0 */	bne lbl_803D7340
/* 803D7354 003CD0D4  38 00 00 00 */	li r0, 0
/* 803D7358 003CD0D8  88 A3 00 06 */	lbz r5, 6(r3)
/* 803D735C 003CD0DC  98 03 00 21 */	stb r0, 0x21(r3)
/* 803D7360 003CD0E0  48 00 00 10 */	b lbl_803D7370
lbl_803D7364:
/* 803D7364 003CD0E4  88 83 00 21 */	lbz r4, 0x21(r3)
/* 803D7368 003CD0E8  38 04 00 01 */	addi r0, r4, 1
/* 803D736C 003CD0EC  98 03 00 21 */	stb r0, 0x21(r3)
lbl_803D7370:
/* 803D7370 003CD0F0  54 A5 FC 7F */	rlwinm. r5, r5, 0x1f, 0x11, 0x1f
/* 803D7374 003CD0F4  40 82 FF F0 */	bne lbl_803D7364
/* 803D7378 003CD0F8  A0 03 00 04 */	lhz r0, 4(r3)
/* 803D737C 003CD0FC  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803D7380 003CD100  54 06 28 34 */	slwi r6, r0, 5
/* 803D7384 003CD104  88 83 00 07 */	lbz r4, 7(r3)
/* 803D7388 003CD108  7C C5 32 14 */	add r6, r5, r6
/* 803D738C 003CD10C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803D7390 003CD110  39 06 FF FF */	addi r8, r6, -1
/* 803D7394 003CD114  88 A3 00 20 */	lbz r5, 0x20(r3)
/* 803D7398 003CD118  7C C4 01 D6 */	mullw r6, r4, r0
/* 803D739C 003CD11C  A0 E3 00 02 */	lhz r7, 2(r3)
/* 803D73A0 003CD120  7D 08 2E 30 */	sraw r8, r8, r5
/* 803D73A4 003CD124  80 83 00 08 */	lwz r4, 8(r3)
/* 803D73A8 003CD128  88 03 00 21 */	lbz r0, 0x21(r3)
/* 803D73AC 003CD12C  55 05 04 3E */	clrlwi r5, r8, 0x10
/* 803D73B0 003CD130  7C A5 3A 14 */	add r5, r5, r7
/* 803D73B4 003CD134  B1 03 00 24 */	sth r8, 0x24(r3)
/* 803D73B8 003CD138  7C A6 2A 14 */	add r5, r6, r5
/* 803D73BC 003CD13C  7C 85 20 50 */	subf r4, r5, r4
/* 803D73C0 003CD140  90 A3 00 30 */	stw r5, 0x30(r3)
/* 803D73C4 003CD144  7C 80 04 30 */	srw r0, r4, r0
/* 803D73C8 003CD148  28 00 0F F5 */	cmplwi r0, 0xff5
/* 803D73CC 003CD14C  90 03 00 34 */	stw r0, 0x34(r3)
/* 803D73D0 003CD150  40 80 00 18 */	bge lbl_803D73E8
/* 803D73D4 003CD154  7C 07 32 14 */	add r0, r7, r6
/* 803D73D8 003CD158  38 80 00 00 */	li r4, 0
/* 803D73DC 003CD15C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 803D73E0 003CD160  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803D73E4 003CD164  4E 80 00 20 */	blr 
lbl_803D73E8:
/* 803D73E8 003CD168  28 00 FF F5 */	cmplwi r0, 0xfff5
/* 803D73EC 003CD16C  40 80 00 18 */	bge lbl_803D7404
/* 803D73F0 003CD170  7C 07 32 14 */	add r0, r7, r6
/* 803D73F4 003CD174  38 80 00 01 */	li r4, 1
/* 803D73F8 003CD178  90 83 00 1C */	stw r4, 0x1c(r3)
/* 803D73FC 003CD17C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803D7400 003CD180  4E 80 00 20 */	blr 
lbl_803D7404:
/* 803D7404 003CD184  38 80 00 02 */	li r4, 2
/* 803D7408 003CD188  38 00 00 00 */	li r0, 0
/* 803D740C 003CD18C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 803D7410 003CD190  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803D7414 003CD194  4E 80 00 20 */	blr 

.global pdm_bpb_InitVolumeWithBootSector
pdm_bpb_InitVolumeWithBootSector:
/* 803D7418 003CD198  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D741C 003CD19C  7C 08 02 A6 */	mflr r0
/* 803D7420 003CD1A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7424 003CD1A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7428 003CD1A8  48 01 9E F9 */	bl _savegpr_27
/* 803D742C 003CD1AC  7C 9D 23 78 */	mr r29, r4
/* 803D7430 003CD1B0  7C 7C 1B 78 */	mr r28, r3
/* 803D7434 003CD1B4  7F A3 EB 78 */	mr r3, r29
/* 803D7438 003CD1B8  3B C0 00 00 */	li r30, 0
/* 803D743C 003CD1BC  48 00 0D ED */	bl pdm_part_is_boot_sector
/* 803D7440 003CD1C0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7444 003CD1C4  40 82 00 0C */	bne lbl_803D7450
/* 803D7448 003CD1C8  3B C0 00 03 */	li r30, 3
/* 803D744C 003CD1CC  48 00 02 CC */	b lbl_803D7718
lbl_803D7450:
/* 803D7450 003CD1D0  38 1D 00 0B */	addi r0, r29, 0xb
/* 803D7454 003CD1D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7458 003CD1D8  41 82 00 14 */	beq lbl_803D746C
/* 803D745C 003CD1DC  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 803D7460 003CD1E0  88 7D 00 0B */	lbz r3, 0xb(r29)
/* 803D7464 003CD1E4  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D7468 003CD1E8  48 00 00 10 */	b lbl_803D7478
lbl_803D746C:
/* 803D746C 003CD1EC  A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 803D7470 003CD1F0  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D7474 003CD1F4  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D7478:
/* 803D7478 003CD1F8  38 1D 00 0E */	addi r0, r29, 0xe
/* 803D747C 003CD1FC  B0 7C 00 00 */	sth r3, 0(r28)
/* 803D7480 003CD200  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7484 003CD204  88 1D 00 0D */	lbz r0, 0xd(r29)
/* 803D7488 003CD208  98 1C 00 06 */	stb r0, 6(r28)
/* 803D748C 003CD20C  41 82 00 14 */	beq lbl_803D74A0
/* 803D7490 003CD210  88 1D 00 0F */	lbz r0, 0xf(r29)
/* 803D7494 003CD214  88 7D 00 0E */	lbz r3, 0xe(r29)
/* 803D7498 003CD218  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D749C 003CD21C  48 00 00 10 */	b lbl_803D74AC
lbl_803D74A0:
/* 803D74A0 003CD220  A0 1D 00 0E */	lhz r0, 0xe(r29)
/* 803D74A4 003CD224  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D74A8 003CD228  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D74AC:
/* 803D74AC 003CD22C  38 1D 00 11 */	addi r0, r29, 0x11
/* 803D74B0 003CD230  B0 7C 00 02 */	sth r3, 2(r28)
/* 803D74B4 003CD234  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D74B8 003CD238  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 803D74BC 003CD23C  98 1C 00 07 */	stb r0, 7(r28)
/* 803D74C0 003CD240  41 82 00 14 */	beq lbl_803D74D4
/* 803D74C4 003CD244  88 1D 00 12 */	lbz r0, 0x12(r29)
/* 803D74C8 003CD248  88 7D 00 11 */	lbz r3, 0x11(r29)
/* 803D74CC 003CD24C  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D74D0 003CD250  48 00 00 10 */	b lbl_803D74E0
lbl_803D74D4:
/* 803D74D4 003CD254  A0 1D 00 12 */	lhz r0, 0x12(r29)
/* 803D74D8 003CD258  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D74DC 003CD25C  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D74E0:
/* 803D74E0 003CD260  38 1D 00 13 */	addi r0, r29, 0x13
/* 803D74E4 003CD264  B0 7C 00 04 */	sth r3, 4(r28)
/* 803D74E8 003CD268  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D74EC 003CD26C  88 1D 00 15 */	lbz r0, 0x15(r29)
/* 803D74F0 003CD270  98 1C 00 1A */	stb r0, 0x1a(r28)
/* 803D74F4 003CD274  41 82 00 14 */	beq lbl_803D7508
/* 803D74F8 003CD278  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 803D74FC 003CD27C  88 7D 00 13 */	lbz r3, 0x13(r29)
/* 803D7500 003CD280  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D7504 003CD284  48 00 00 10 */	b lbl_803D7514
lbl_803D7508:
/* 803D7508 003CD288  A0 1D 00 14 */	lhz r0, 0x14(r29)
/* 803D750C 003CD28C  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D7510 003CD290  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D7514:
/* 803D7514 003CD294  54 7F 04 3F */	clrlwi. r31, r3, 0x10
/* 803D7518 003CD298  40 82 00 20 */	bne lbl_803D7538
/* 803D751C 003CD29C  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 803D7520 003CD2A0  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 803D7524 003CD2A4  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 803D7528 003CD2A8  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 803D752C 003CD2AC  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 803D7530 003CD2B0  7C 63 03 78 */	or r3, r3, r0
/* 803D7534 003CD2B4  48 00 00 08 */	b lbl_803D753C
lbl_803D7538:
/* 803D7538 003CD2B8  7F E3 FB 78 */	mr r3, r31
lbl_803D753C:
/* 803D753C 003CD2BC  38 1D 00 16 */	addi r0, r29, 0x16
/* 803D7540 003CD2C0  90 7C 00 08 */	stw r3, 8(r28)
/* 803D7544 003CD2C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7548 003CD2C8  41 82 00 14 */	beq lbl_803D755C
/* 803D754C 003CD2CC  88 1D 00 17 */	lbz r0, 0x17(r29)
/* 803D7550 003CD2D0  88 7D 00 16 */	lbz r3, 0x16(r29)
/* 803D7554 003CD2D4  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D7558 003CD2D8  48 00 00 10 */	b lbl_803D7568
lbl_803D755C:
/* 803D755C 003CD2DC  A0 1D 00 16 */	lhz r0, 0x16(r29)
/* 803D7560 003CD2E0  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D7564 003CD2E4  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D7568:
/* 803D7568 003CD2E8  54 7B 04 3F */	clrlwi. r27, r3, 0x10
/* 803D756C 003CD2EC  40 82 00 20 */	bne lbl_803D758C
/* 803D7570 003CD2F0  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 803D7574 003CD2F4  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 803D7578 003CD2F8  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 803D757C 003CD2FC  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 803D7580 003CD300  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 803D7584 003CD304  7C 60 03 78 */	or r0, r3, r0
/* 803D7588 003CD308  48 00 00 08 */	b lbl_803D7590
lbl_803D758C:
/* 803D758C 003CD30C  7F 60 DB 78 */	mr r0, r27
lbl_803D7590:
/* 803D7590 003CD310  90 1C 00 0C */	stw r0, 0xc(r28)
/* 803D7594 003CD314  7F 83 E3 78 */	mr r3, r28
/* 803D7598 003CD318  4B FF FD 99 */	bl pdm_bpb_CalcBPBFields
/* 803D759C 003CD31C  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 803D75A0 003CD320  2C 00 00 02 */	cmpwi r0, 2
/* 803D75A4 003CD324  41 82 00 24 */	beq lbl_803D75C8
/* 803D75A8 003CD328  40 80 01 2C */	bge lbl_803D76D4
/* 803D75AC 003CD32C  2C 00 00 00 */	cmpwi r0, 0
/* 803D75B0 003CD330  40 80 00 08 */	bge lbl_803D75B8
/* 803D75B4 003CD334  48 00 01 20 */	b lbl_803D76D4
lbl_803D75B8:
/* 803D75B8 003CD338  2C 1B 00 00 */	cmpwi r27, 0
/* 803D75BC 003CD33C  40 82 01 1C */	bne lbl_803D76D8
/* 803D75C0 003CD340  3B C0 00 04 */	li r30, 4
/* 803D75C4 003CD344  48 00 01 14 */	b lbl_803D76D8
lbl_803D75C8:
/* 803D75C8 003CD348  2C 1F 00 00 */	cmpwi r31, 0
/* 803D75CC 003CD34C  40 82 00 0C */	bne lbl_803D75D8
/* 803D75D0 003CD350  2C 1B 00 00 */	cmpwi r27, 0
/* 803D75D4 003CD354  41 82 00 08 */	beq lbl_803D75DC
lbl_803D75D8:
/* 803D75D8 003CD358  3B C0 00 04 */	li r30, 4
lbl_803D75DC:
/* 803D75DC 003CD35C  38 1D 00 2A */	addi r0, r29, 0x2a
/* 803D75E0 003CD360  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D75E4 003CD364  41 82 00 14 */	beq lbl_803D75F8
/* 803D75E8 003CD368  88 1D 00 2B */	lbz r0, 0x2b(r29)
/* 803D75EC 003CD36C  88 7D 00 2A */	lbz r3, 0x2a(r29)
/* 803D75F0 003CD370  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D75F4 003CD374  48 00 00 10 */	b lbl_803D7604
lbl_803D75F8:
/* 803D75F8 003CD378  A0 1D 00 2A */	lhz r0, 0x2a(r29)
/* 803D75FC 003CD37C  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D7600 003CD380  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D7604:
/* 803D7604 003CD384  38 1D 00 28 */	addi r0, r29, 0x28
/* 803D7608 003CD388  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 803D760C 003CD38C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7610 003CD390  41 82 00 14 */	beq lbl_803D7624
/* 803D7614 003CD394  88 1D 00 29 */	lbz r0, 0x29(r29)
/* 803D7618 003CD398  88 7D 00 28 */	lbz r3, 0x28(r29)
/* 803D761C 003CD39C  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D7620 003CD3A0  48 00 00 10 */	b lbl_803D7630
lbl_803D7624:
/* 803D7624 003CD3A4  A0 1D 00 28 */	lhz r0, 0x28(r29)
/* 803D7628 003CD3A8  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D762C 003CD3AC  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D7630:
/* 803D7630 003CD3B0  B0 7C 00 18 */	sth r3, 0x18(r28)
/* 803D7634 003CD3B4  38 1D 00 30 */	addi r0, r29, 0x30
/* 803D7638 003CD3B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D763C 003CD3BC  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 803D7640 003CD3C0  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 803D7644 003CD3C4  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 803D7648 003CD3C8  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 803D764C 003CD3CC  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 803D7650 003CD3D0  7C 60 03 78 */	or r0, r3, r0
/* 803D7654 003CD3D4  90 1C 00 10 */	stw r0, 0x10(r28)
/* 803D7658 003CD3D8  41 82 00 14 */	beq lbl_803D766C
/* 803D765C 003CD3DC  88 1D 00 31 */	lbz r0, 0x31(r29)
/* 803D7660 003CD3E0  88 7D 00 30 */	lbz r3, 0x30(r29)
/* 803D7664 003CD3E4  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 803D7668 003CD3E8  48 00 00 10 */	b lbl_803D7678
lbl_803D766C:
/* 803D766C 003CD3EC  A0 1D 00 30 */	lhz r0, 0x30(r29)
/* 803D7670 003CD3F0  54 03 44 2E */	rlwinm r3, r0, 8, 0x10, 0x17
/* 803D7674 003CD3F4  50 03 C6 3E */	rlwimi r3, r0, 0x18, 0x18, 0x1f
lbl_803D7678:
/* 803D7678 003CD3F8  38 1D 00 32 */	addi r0, r29, 0x32
/* 803D767C 003CD3FC  B0 7C 00 14 */	sth r3, 0x14(r28)
/* 803D7680 003CD400  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7684 003CD404  41 82 00 14 */	beq lbl_803D7698
/* 803D7688 003CD408  88 1D 00 33 */	lbz r0, 0x33(r29)
/* 803D768C 003CD40C  88 BD 00 32 */	lbz r5, 0x32(r29)
/* 803D7690 003CD410  50 05 44 2E */	rlwimi r5, r0, 8, 0x10, 0x17
/* 803D7694 003CD414  48 00 00 10 */	b lbl_803D76A4
lbl_803D7698:
/* 803D7698 003CD418  A0 1D 00 32 */	lhz r0, 0x32(r29)
/* 803D769C 003CD41C  54 05 44 2E */	rlwinm r5, r0, 8, 0x10, 0x17
/* 803D76A0 003CD420  50 05 C6 3E */	rlwimi r5, r0, 0x18, 0x18, 0x1f
lbl_803D76A4:
/* 803D76A4 003CD424  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 803D76A8 003CD428  2C 06 00 00 */	cmpwi r6, 0
/* 803D76AC 003CD42C  88 1C 00 21 */	lbz r0, 0x21(r28)
/* 803D76B0 003CD430  38 63 FF FE */	addi r3, r3, -2
/* 803D76B4 003CD434  80 9C 00 30 */	lwz r4, 0x30(r28)
/* 803D76B8 003CD438  7C 60 00 30 */	slw r0, r3, r0
/* 803D76BC 003CD43C  B0 BC 00 16 */	sth r5, 0x16(r28)
/* 803D76C0 003CD440  7C 04 02 14 */	add r0, r4, r0
/* 803D76C4 003CD444  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 803D76C8 003CD448  41 82 00 10 */	beq lbl_803D76D8
/* 803D76CC 003CD44C  3B C0 00 04 */	li r30, 4
/* 803D76D0 003CD450  48 00 00 08 */	b lbl_803D76D8
lbl_803D76D4:
/* 803D76D4 003CD454  3B C0 00 04 */	li r30, 4
lbl_803D76D8:
/* 803D76D8 003CD458  A0 7C 00 18 */	lhz r3, 0x18(r28)
/* 803D76DC 003CD45C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 803D76E0 003CD460  41 82 00 28 */	beq lbl_803D7708
/* 803D76E4 003CD464  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803D76E8 003CD468  54 63 07 7E */	clrlwi r3, r3, 0x1d
/* 803D76EC 003CD46C  38 A0 00 01 */	li r5, 1
/* 803D76F0 003CD470  A0 9C 00 02 */	lhz r4, 2(r28)
/* 803D76F4 003CD474  7C 03 01 D6 */	mullw r0, r3, r0
/* 803D76F8 003CD478  98 BC 00 22 */	stb r5, 0x22(r28)
/* 803D76FC 003CD47C  7C 04 02 14 */	add r0, r4, r0
/* 803D7700 003CD480  90 1C 00 28 */	stw r0, 0x28(r28)
/* 803D7704 003CD484  48 00 00 14 */	b lbl_803D7718
lbl_803D7708:
/* 803D7708 003CD488  88 7C 00 07 */	lbz r3, 7(r28)
/* 803D770C 003CD48C  A0 1C 00 02 */	lhz r0, 2(r28)
/* 803D7710 003CD490  98 7C 00 22 */	stb r3, 0x22(r28)
/* 803D7714 003CD494  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_803D7718:
/* 803D7718 003CD498  39 61 00 20 */	addi r11, r1, 0x20
/* 803D771C 003CD49C  7F C3 F3 78 */	mr r3, r30
/* 803D7720 003CD4A0  48 01 9C 4D */	bl _restgpr_27
/* 803D7724 003CD4A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7728 003CD4A8  7C 08 03 A6 */	mtlr r0
/* 803D772C 003CD4AC  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7730 003CD4B0  4E 80 00 20 */	blr 

.global pdm_bpb_InitVolumeWithFSINFOSector
pdm_bpb_InitVolumeWithFSINFOSector:
/* 803D7734 003CD4B4  38 00 FF FF */	li r0, -1
/* 803D7738 003CD4B8  90 05 00 00 */	stw r0, 0(r5)
/* 803D773C 003CD4BC  90 06 00 00 */	stw r0, 0(r6)
/* 803D7740 003CD4C0  81 04 00 00 */	lwz r8, 0(r4)
/* 803D7744 003CD4C4  55 07 42 1E */	rlwinm r7, r8, 8, 8, 0xf
/* 803D7748 003CD4C8  55 00 C4 2E */	rlwinm r0, r8, 0x18, 0x10, 0x17
/* 803D774C 003CD4CC  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 803D7750 003CD4D0  51 00 46 3E */	rlwimi r0, r8, 8, 0x18, 0x1f
/* 803D7754 003CD4D4  7C E7 03 78 */	or r7, r7, r0
/* 803D7758 003CD4D8  3C 07 BE 9F */	addis r0, r7, 0xbe9f
/* 803D775C 003CD4DC  28 00 52 52 */	cmplwi r0, 0x5252
/* 803D7760 003CD4E0  40 82 00 B4 */	bne lbl_803D7814
/* 803D7764 003CD4E4  81 04 01 E4 */	lwz r8, 0x1e4(r4)
/* 803D7768 003CD4E8  55 07 42 1E */	rlwinm r7, r8, 8, 8, 0xf
/* 803D776C 003CD4EC  55 00 C4 2E */	rlwinm r0, r8, 0x18, 0x10, 0x17
/* 803D7770 003CD4F0  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 803D7774 003CD4F4  51 00 46 3E */	rlwimi r0, r8, 8, 0x18, 0x1f
/* 803D7778 003CD4F8  7C E7 03 78 */	or r7, r7, r0
/* 803D777C 003CD4FC  3C 07 9E BF */	addis r0, r7, 0x9ebf
/* 803D7780 003CD500  28 00 72 72 */	cmplwi r0, 0x7272
/* 803D7784 003CD504  40 82 00 90 */	bne lbl_803D7814
/* 803D7788 003CD508  81 04 01 FC */	lwz r8, 0x1fc(r4)
/* 803D778C 003CD50C  55 07 42 1E */	rlwinm r7, r8, 8, 8, 0xf
/* 803D7790 003CD510  55 00 C4 2E */	rlwinm r0, r8, 0x18, 0x10, 0x17
/* 803D7794 003CD514  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 803D7798 003CD518  51 00 46 3E */	rlwimi r0, r8, 8, 0x18, 0x1f
/* 803D779C 003CD51C  7C E7 03 78 */	or r7, r7, r0
/* 803D77A0 003CD520  3C 07 55 AB */	addis r0, r7, 0x55ab
/* 803D77A4 003CD524  28 00 00 00 */	cmplwi r0, 0
/* 803D77A8 003CD528  40 82 00 6C */	bne lbl_803D7814
/* 803D77AC 003CD52C  80 04 01 E8 */	lwz r0, 0x1e8(r4)
/* 803D77B0 003CD530  81 24 01 EC */	lwz r9, 0x1ec(r4)
/* 803D77B4 003CD534  54 08 42 1E */	rlwinm r8, r0, 8, 8, 0xf
/* 803D77B8 003CD538  54 07 C4 2E */	rlwinm r7, r0, 0x18, 0x10, 0x17
/* 803D77BC 003CD53C  50 08 C0 0E */	rlwimi r8, r0, 0x18, 0, 7
/* 803D77C0 003CD540  55 24 42 1E */	rlwinm r4, r9, 8, 8, 0xf
/* 803D77C4 003CD544  50 07 46 3E */	rlwimi r7, r0, 8, 0x18, 0x1f
/* 803D77C8 003CD548  55 20 C4 2E */	rlwinm r0, r9, 0x18, 0x10, 0x17
/* 803D77CC 003CD54C  7D 07 3B 78 */	or r7, r8, r7
/* 803D77D0 003CD550  51 24 C0 0E */	rlwimi r4, r9, 0x18, 0, 7
/* 803D77D4 003CD554  51 20 46 3E */	rlwimi r0, r9, 8, 0x18, 0x1f
/* 803D77D8 003CD558  28 07 00 02 */	cmplwi r7, 2
/* 803D77DC 003CD55C  7C 88 03 78 */	or r8, r4, r0
/* 803D77E0 003CD560  41 80 00 18 */	blt lbl_803D77F8
/* 803D77E4 003CD564  80 83 00 34 */	lwz r4, 0x34(r3)
/* 803D77E8 003CD568  38 04 00 02 */	addi r0, r4, 2
/* 803D77EC 003CD56C  7C 07 00 40 */	cmplw r7, r0
/* 803D77F0 003CD570  40 80 00 08 */	bge lbl_803D77F8
/* 803D77F4 003CD574  90 E5 00 00 */	stw r7, 0(r5)
lbl_803D77F8:
/* 803D77F8 003CD578  28 08 00 02 */	cmplwi r8, 2
/* 803D77FC 003CD57C  41 80 00 18 */	blt lbl_803D7814
/* 803D7800 003CD580  80 63 00 34 */	lwz r3, 0x34(r3)
/* 803D7804 003CD584  38 03 00 02 */	addi r0, r3, 2
/* 803D7808 003CD588  7C 08 00 40 */	cmplw r8, r0
/* 803D780C 003CD58C  40 80 00 08 */	bge lbl_803D7814
/* 803D7810 003CD590  91 06 00 00 */	stw r8, 0(r6)
lbl_803D7814:
/* 803D7814 003CD594  38 60 00 00 */	li r3, 0
/* 803D7818 003CD598  4E 80 00 20 */	blr 

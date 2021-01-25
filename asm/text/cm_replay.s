.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global cmReplay$7reset
cmReplay$7reset:
/* 8009E3D0 00094150  C0 42 8A C8 */	lfs f2, lbl_805A1DE8-_SDA2_BASE_(r2)
/* 8009E3D4 00094154  38 00 00 00 */	li r0, 0
/* 8009E3D8 00094158  C0 22 8A CC */	lfs f1, lbl_805A1DEC-_SDA2_BASE_(r2)
/* 8009E3DC 0009415C  C0 02 8A D0 */	lfs f0, lbl_805A1DF0-_SDA2_BASE_(r2)
/* 8009E3E0 00094160  90 03 00 00 */	stw r0, 0(r3)
/* 8009E3E4 00094164  D0 43 00 04 */	stfs f2, 4(r3)
/* 8009E3E8 00094168  D0 23 00 08 */	stfs f1, 8(r3)
/* 8009E3EC 0009416C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8009E3F0 00094170  4E 80 00 20 */	blr 

.global cmReplay$7updatePad
cmReplay$7updatePad:
/* 8009E3F4 00094174  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8009E3F8 00094178  7C 08 02 A6 */	mflr r0
/* 8009E3FC 0009417C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8009E400 00094180  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8009E404 00094184  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8009E408 00094188  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8009E40C 0009418C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8009E410 00094190  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8009E414 00094194  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8009E418 00094198  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8009E41C 0009419C  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 8009E420 000941A0  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8009E424 000941A4  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 8009E428 000941A8  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 8009E42C 000941AC  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 8009E430 000941B0  39 61 00 80 */	addi r11, r1, 0x80
/* 8009E434 000941B4  48 35 2E E5 */	bl _savegpr_25
/* 8009E438 000941B8  7C 7A 1B 78 */	mr r26, r3
/* 8009E43C 000941BC  3B 60 00 00 */	li r27, 0
/* 8009E440 000941C0  3B 80 00 00 */	li r28, 0
/* 8009E444 000941C4  3B A0 00 00 */	li r29, 0
/* 8009E448 000941C8  3B C0 00 00 */	li r30, 0
/* 8009E44C 000941CC  3B E0 00 00 */	li r31, 0
lbl_8009E450:
/* 8009E450 000941D0  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 8009E454 000941D4  7F E4 FB 78 */	mr r4, r31
/* 8009E458 000941D8  38 A1 00 08 */	addi r5, r1, 8
/* 8009E45C 000941DC  4B F8 C9 ED */	bl gfPadSystem$7getSysPadStatus
/* 8009E460 000941E0  88 01 00 40 */	lbz r0, 0x40(r1)
/* 8009E464 000941E4  7C 00 07 75 */	extsb. r0, r0
/* 8009E468 000941E8  40 82 02 B8 */	bne lbl_8009E720
/* 8009E46C 000941EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8009E470 000941F0  2C 00 00 02 */	cmpwi r0, 2
/* 8009E474 000941F4  41 82 00 E4 */	beq lbl_8009E558
/* 8009E478 000941F8  40 80 00 10 */	bge lbl_8009E488
/* 8009E47C 000941FC  2C 00 00 00 */	cmpwi r0, 0
/* 8009E480 00094200  40 80 00 14 */	bge lbl_8009E494
/* 8009E484 00094204  48 00 02 9C */	b lbl_8009E720
lbl_8009E488:
/* 8009E488 00094208  2C 00 00 04 */	cmpwi r0, 4
/* 8009E48C 0009420C  40 80 02 94 */	bge lbl_8009E720
/* 8009E490 00094210  48 00 01 D0 */	b lbl_8009E660
lbl_8009E494:
/* 8009E494 00094214  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8009E498 00094218  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8009E49C 0009421C  41 82 00 08 */	beq lbl_8009E4A4
/* 8009E4A0 00094220  63 9C 00 01 */	ori r28, r28, 1
lbl_8009E4A4:
/* 8009E4A4 00094224  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8009E4A8 00094228  41 82 00 08 */	beq lbl_8009E4B0
/* 8009E4AC 0009422C  63 9C 00 02 */	ori r28, r28, 2
lbl_8009E4B0:
/* 8009E4B0 00094230  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 8009E4B4 00094234  41 82 00 08 */	beq lbl_8009E4BC
/* 8009E4B8 00094238  63 9C 00 04 */	ori r28, r28, 4
lbl_8009E4BC:
/* 8009E4BC 0009423C  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 8009E4C0 00094240  41 82 00 08 */	beq lbl_8009E4C8
/* 8009E4C4 00094244  63 9C 00 08 */	ori r28, r28, 8
lbl_8009E4C8:
/* 8009E4C8 00094248  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8009E4CC 0009424C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8009E4D0 00094250  41 82 00 08 */	beq lbl_8009E4D8
/* 8009E4D4 00094254  63 7B 00 01 */	ori r27, r27, 1
lbl_8009E4D8:
/* 8009E4D8 00094258  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8009E4DC 0009425C  41 82 00 08 */	beq lbl_8009E4E4
/* 8009E4E0 00094260  63 7B 00 02 */	ori r27, r27, 2
lbl_8009E4E4:
/* 8009E4E4 00094264  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 8009E4E8 00094268  41 82 00 08 */	beq lbl_8009E4F0
/* 8009E4EC 0009426C  63 7B 00 04 */	ori r27, r27, 4
lbl_8009E4F0:
/* 8009E4F0 00094270  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 8009E4F4 00094274  41 82 00 08 */	beq lbl_8009E4FC
/* 8009E4F8 00094278  63 7B 00 08 */	ori r27, r27, 8
lbl_8009E4FC:
/* 8009E4FC 0009427C  88 E1 00 38 */	lbz r7, 0x38(r1)
/* 8009E500 00094280  88 C1 00 39 */	lbz r6, 0x39(r1)
/* 8009E504 00094284  7C E7 07 74 */	extsb r7, r7
/* 8009E508 00094288  7C E5 FE 70 */	srawi r5, r7, 0x1f
/* 8009E50C 0009428C  7C C6 07 74 */	extsb r6, r6
/* 8009E510 00094290  7F A3 FE 70 */	srawi r3, r29, 0x1f
/* 8009E514 00094294  7C A4 3A 78 */	xor r4, r5, r7
/* 8009E518 00094298  7C 60 EA 78 */	xor r0, r3, r29
/* 8009E51C 0009429C  7C 85 20 50 */	subf r4, r5, r4
/* 8009E520 000942A0  7C 03 00 50 */	subf r0, r3, r0
/* 8009E524 000942A4  7C 00 20 00 */	cmpw r0, r4
/* 8009E528 000942A8  40 80 00 08 */	bge lbl_8009E530
/* 8009E52C 000942AC  7C FD 3B 78 */	mr r29, r7
lbl_8009E530:
/* 8009E530 000942B0  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 8009E534 000942B4  7F C3 FE 70 */	srawi r3, r30, 0x1f
/* 8009E538 000942B8  7C A4 32 78 */	xor r4, r5, r6
/* 8009E53C 000942BC  7C 60 F2 78 */	xor r0, r3, r30
/* 8009E540 000942C0  7C 85 20 50 */	subf r4, r5, r4
/* 8009E544 000942C4  7C 03 00 50 */	subf r0, r3, r0
/* 8009E548 000942C8  7C 00 20 00 */	cmpw r0, r4
/* 8009E54C 000942CC  40 80 01 D4 */	bge lbl_8009E720
/* 8009E550 000942D0  7C DE 33 78 */	mr r30, r6
/* 8009E554 000942D4  48 00 01 CC */	b lbl_8009E720
lbl_8009E558:
/* 8009E558 000942D8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8009E55C 000942DC  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8009E560 000942E0  41 82 00 7C */	beq lbl_8009E5DC
/* 8009E564 000942E4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8009E568 000942E8  41 82 00 08 */	beq lbl_8009E570
/* 8009E56C 000942EC  63 9C 00 01 */	ori r28, r28, 1
lbl_8009E570:
/* 8009E570 000942F0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8009E574 000942F4  41 82 00 08 */	beq lbl_8009E57C
/* 8009E578 000942F8  63 9C 00 02 */	ori r28, r28, 2
lbl_8009E57C:
/* 8009E57C 000942FC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8009E580 00094300  41 82 00 08 */	beq lbl_8009E588
/* 8009E584 00094304  63 9C 00 04 */	ori r28, r28, 4
lbl_8009E588:
/* 8009E588 00094308  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8009E58C 0009430C  41 82 00 08 */	beq lbl_8009E594
/* 8009E590 00094310  63 9C 00 08 */	ori r28, r28, 8
lbl_8009E594:
/* 8009E594 00094314  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8009E598 00094318  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8009E59C 0009431C  41 82 00 0C */	beq lbl_8009E5A8
/* 8009E5A0 00094320  7F 7B E3 78 */	or r27, r27, r28
/* 8009E5A4 00094324  48 00 01 7C */	b lbl_8009E720
lbl_8009E5A8:
/* 8009E5A8 00094328  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8009E5AC 0009432C  41 82 00 08 */	beq lbl_8009E5B4
/* 8009E5B0 00094330  63 7B 00 01 */	ori r27, r27, 1
lbl_8009E5B4:
/* 8009E5B4 00094334  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8009E5B8 00094338  41 82 00 08 */	beq lbl_8009E5C0
/* 8009E5BC 0009433C  63 7B 00 02 */	ori r27, r27, 2
lbl_8009E5C0:
/* 8009E5C0 00094340  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8009E5C4 00094344  41 82 00 08 */	beq lbl_8009E5CC
/* 8009E5C8 00094348  63 7B 00 04 */	ori r27, r27, 4
lbl_8009E5CC:
/* 8009E5CC 0009434C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8009E5D0 00094350  41 82 01 50 */	beq lbl_8009E720
/* 8009E5D4 00094354  63 7B 00 08 */	ori r27, r27, 8
/* 8009E5D8 00094358  48 00 01 48 */	b lbl_8009E720
lbl_8009E5DC:
/* 8009E5DC 0009435C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8009E5E0 00094360  38 E0 00 00 */	li r7, 0
/* 8009E5E4 00094364  38 C0 00 00 */	li r6, 0
/* 8009E5E8 00094368  41 82 00 08 */	beq lbl_8009E5F0
/* 8009E5EC 0009436C  38 C0 00 7F */	li r6, 0x7f
lbl_8009E5F0:
/* 8009E5F0 00094370  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8009E5F4 00094374  41 82 00 08 */	beq lbl_8009E5FC
/* 8009E5F8 00094378  38 C0 FF 81 */	li r6, -127
lbl_8009E5FC:
/* 8009E5FC 0009437C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8009E600 00094380  41 82 00 08 */	beq lbl_8009E608
/* 8009E604 00094384  38 E0 00 7F */	li r7, 0x7f
lbl_8009E608:
/* 8009E608 00094388  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8009E60C 0009438C  41 82 00 08 */	beq lbl_8009E614
/* 8009E610 00094390  38 E0 FF 81 */	li r7, -127
lbl_8009E614:
/* 8009E614 00094394  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 8009E618 00094398  7F A3 FE 70 */	srawi r3, r29, 0x1f
/* 8009E61C 0009439C  7C A4 32 78 */	xor r4, r5, r6
/* 8009E620 000943A0  7C 60 EA 78 */	xor r0, r3, r29
/* 8009E624 000943A4  7C 85 20 50 */	subf r4, r5, r4
/* 8009E628 000943A8  7C 03 00 50 */	subf r0, r3, r0
/* 8009E62C 000943AC  7C 00 20 00 */	cmpw r0, r4
/* 8009E630 000943B0  40 80 00 08 */	bge lbl_8009E638
/* 8009E634 000943B4  7C DD 33 78 */	mr r29, r6
lbl_8009E638:
/* 8009E638 000943B8  7C E5 FE 70 */	srawi r5, r7, 0x1f
/* 8009E63C 000943BC  7F C3 FE 70 */	srawi r3, r30, 0x1f
/* 8009E640 000943C0  7C A4 3A 78 */	xor r4, r5, r7
/* 8009E644 000943C4  7C 60 F2 78 */	xor r0, r3, r30
/* 8009E648 000943C8  7C 85 20 50 */	subf r4, r5, r4
/* 8009E64C 000943CC  7C 03 00 50 */	subf r0, r3, r0
/* 8009E650 000943D0  7C 00 20 00 */	cmpw r0, r4
/* 8009E654 000943D4  40 80 00 CC */	bge lbl_8009E720
/* 8009E658 000943D8  7C FE 3B 78 */	mr r30, r7
/* 8009E65C 000943DC  48 00 00 C4 */	b lbl_8009E720
lbl_8009E660:
/* 8009E660 000943E0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8009E664 000943E4  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8009E668 000943E8  41 82 00 08 */	beq lbl_8009E670
/* 8009E66C 000943EC  63 9C 00 01 */	ori r28, r28, 1
lbl_8009E670:
/* 8009E670 000943F0  54 60 03 9D */	rlwinm. r0, r3, 0, 0xe, 0xe
/* 8009E674 000943F4  41 82 00 08 */	beq lbl_8009E67C
/* 8009E678 000943F8  63 9C 00 02 */	ori r28, r28, 2
lbl_8009E67C:
/* 8009E67C 000943FC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 8009E680 00094400  41 82 00 08 */	beq lbl_8009E688
/* 8009E684 00094404  63 9C 00 04 */	ori r28, r28, 4
lbl_8009E688:
/* 8009E688 00094408  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8009E68C 0009440C  41 82 00 08 */	beq lbl_8009E694
/* 8009E690 00094410  63 9C 00 08 */	ori r28, r28, 8
lbl_8009E694:
/* 8009E694 00094414  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8009E698 00094418  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8009E69C 0009441C  41 82 00 08 */	beq lbl_8009E6A4
/* 8009E6A0 00094420  63 7B 00 01 */	ori r27, r27, 1
lbl_8009E6A4:
/* 8009E6A4 00094424  54 60 03 9D */	rlwinm. r0, r3, 0, 0xe, 0xe
/* 8009E6A8 00094428  41 82 00 08 */	beq lbl_8009E6B0
/* 8009E6AC 0009442C  63 7B 00 02 */	ori r27, r27, 2
lbl_8009E6B0:
/* 8009E6B0 00094430  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 8009E6B4 00094434  41 82 00 08 */	beq lbl_8009E6BC
/* 8009E6B8 00094438  63 7B 00 04 */	ori r27, r27, 4
lbl_8009E6BC:
/* 8009E6BC 0009443C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8009E6C0 00094440  41 82 00 08 */	beq lbl_8009E6C8
/* 8009E6C4 00094444  63 7B 00 08 */	ori r27, r27, 8
lbl_8009E6C8:
/* 8009E6C8 00094448  88 C1 00 38 */	lbz r6, 0x38(r1)
/* 8009E6CC 0009444C  88 E1 00 39 */	lbz r7, 0x39(r1)
/* 8009E6D0 00094450  7C C6 07 74 */	extsb r6, r6
/* 8009E6D4 00094454  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 8009E6D8 00094458  7C E7 07 74 */	extsb r7, r7
/* 8009E6DC 0009445C  7F A3 FE 70 */	srawi r3, r29, 0x1f
/* 8009E6E0 00094460  7C A4 32 78 */	xor r4, r5, r6
/* 8009E6E4 00094464  7C 60 EA 78 */	xor r0, r3, r29
/* 8009E6E8 00094468  7C 85 20 50 */	subf r4, r5, r4
/* 8009E6EC 0009446C  7C 03 00 50 */	subf r0, r3, r0
/* 8009E6F0 00094470  7C 00 20 00 */	cmpw r0, r4
/* 8009E6F4 00094474  40 80 00 08 */	bge lbl_8009E6FC
/* 8009E6F8 00094478  7C DD 33 78 */	mr r29, r6
lbl_8009E6FC:
/* 8009E6FC 0009447C  7C E5 FE 70 */	srawi r5, r7, 0x1f
/* 8009E700 00094480  7F C3 FE 70 */	srawi r3, r30, 0x1f
/* 8009E704 00094484  7C A4 3A 78 */	xor r4, r5, r7
/* 8009E708 00094488  7C 60 F2 78 */	xor r0, r3, r30
/* 8009E70C 0009448C  7C 85 20 50 */	subf r4, r5, r4
/* 8009E710 00094490  7C 03 00 50 */	subf r0, r3, r0
/* 8009E714 00094494  7C 00 20 00 */	cmpw r0, r4
/* 8009E718 00094498  40 80 00 08 */	bge lbl_8009E720
/* 8009E71C 0009449C  7C FE 3B 78 */	mr r30, r7
lbl_8009E720:
/* 8009E720 000944A0  3B FF 00 01 */	addi r31, r31, 1
/* 8009E724 000944A4  2C 1F 00 08 */	cmpwi r31, 8
/* 8009E728 000944A8  41 80 FD 28 */	blt lbl_8009E450
/* 8009E72C 000944AC  7F A3 FE 70 */	srawi r3, r29, 0x1f
/* 8009E730 000944B0  7C 60 EA 78 */	xor r0, r3, r29
/* 8009E734 000944B4  7C 03 00 50 */	subf r0, r3, r0
/* 8009E738 000944B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8009E73C 000944BC  41 81 00 08 */	bgt lbl_8009E744
/* 8009E740 000944C0  3B A0 00 00 */	li r29, 0
lbl_8009E744:
/* 8009E744 000944C4  7F C3 FE 70 */	srawi r3, r30, 0x1f
/* 8009E748 000944C8  7C 60 F2 78 */	xor r0, r3, r30
/* 8009E74C 000944CC  7C 03 00 50 */	subf r0, r3, r0
/* 8009E750 000944D0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8009E754 000944D4  41 81 00 08 */	bgt lbl_8009E75C
/* 8009E758 000944D8  3B C0 00 00 */	li r30, 0
lbl_8009E75C:
/* 8009E75C 000944DC  2C 1C 00 00 */	cmpwi r28, 0
/* 8009E760 000944E0  40 82 00 14 */	bne lbl_8009E774
/* 8009E764 000944E4  2C 1D 00 00 */	cmpwi r29, 0
/* 8009E768 000944E8  40 82 00 0C */	bne lbl_8009E774
/* 8009E76C 000944EC  2C 1E 00 00 */	cmpwi r30, 0
/* 8009E770 000944F0  41 82 02 60 */	beq lbl_8009E9D0
lbl_8009E774:
/* 8009E774 000944F4  4B FF D7 01 */	bl CameraController$7getInstance
/* 8009E778 000944F8  34 63 00 C4 */	addic. r3, r3, 0xc4
/* 8009E77C 000944FC  41 82 00 3C */	beq lbl_8009E7B8
/* 8009E780 00094500  C0 82 8A D4 */	lfs f4, lbl_805A1DF4-_SDA2_BASE_(r2)
/* 8009E784 00094504  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8009E788 00094508  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009E78C 0009450C  EC 44 00 72 */	fmuls f2, f4, f1
/* 8009E790 00094510  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8009E794 00094514  EC 24 00 32 */	fmuls f1, f4, f0
/* 8009E798 00094518  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8009E79C 0009451C  EF A4 00 F2 */	fmuls f29, f4, f3
/* 8009E7A0 00094520  C3 E3 00 04 */	lfs f31, 4(r3)
/* 8009E7A4 00094524  FF 80 10 50 */	fneg f28, f2
/* 8009E7A8 00094528  C3 C3 00 0C */	lfs f30, 0xc(r3)
/* 8009E7AC 0009452C  FF 40 08 50 */	fneg f26, f1
/* 8009E7B0 00094530  EF 64 00 32 */	fmuls f27, f4, f0
/* 8009E7B4 00094534  48 00 00 1C */	b lbl_8009E7D0
lbl_8009E7B8:
/* 8009E7B8 00094538  C3 E2 8A D8 */	lfs f31, lbl_805A1DF8-_SDA2_BASE_(r2)
/* 8009E7BC 0009453C  C3 C2 8A DC */	lfs f30, lbl_805A1DFC-_SDA2_BASE_(r2)
/* 8009E7C0 00094540  C3 A2 8A E0 */	lfs f29, lbl_805A1E00-_SDA2_BASE_(r2)
/* 8009E7C4 00094544  C3 82 8A E4 */	lfs f28, lbl_805A1E04-_SDA2_BASE_(r2)
/* 8009E7C8 00094548  C3 42 8A E8 */	lfs f26, lbl_805A1E08-_SDA2_BASE_(r2)
/* 8009E7CC 0009454C  C3 62 8A EC */	lfs f27, lbl_805A1E0C-_SDA2_BASE_(r2)
lbl_8009E7D0:
/* 8009E7D0 00094550  57 60 07 BF */	clrlwi. r0, r27, 0x1e
/* 8009E7D4 00094554  41 82 01 10 */	beq lbl_8009E8E4
/* 8009E7D8 00094558  80 7A 00 00 */	lwz r3, 0(r26)
/* 8009E7DC 0009455C  54 60 00 38 */	rlwinm r0, r3, 0, 0, 0x1c
/* 8009E7E0 00094560  54 7F 07 7E */	clrlwi r31, r3, 0x1d
/* 8009E7E4 00094564  90 1A 00 00 */	stw r0, 0(r26)
/* 8009E7E8 00094568  4B FF D6 8D */	bl CameraController$7getInstance
/* 8009E7EC 0009456C  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 8009E7F0 00094570  8B 23 00 45 */	lbz r25, 0x45(r3)
/* 8009E7F4 00094574  41 82 00 4C */	beq lbl_8009E840
/* 8009E7F8 00094578  3B 60 00 01 */	li r27, 1
/* 8009E7FC 0009457C  48 00 00 38 */	b lbl_8009E834
lbl_8009E800:
/* 8009E800 00094580  7F 60 F8 30 */	slw r0, r27, r31
/* 8009E804 00094584  7F 20 00 39 */	and. r0, r25, r0
/* 8009E808 00094588  40 82 00 28 */	bne lbl_8009E830
/* 8009E80C 0009458C  7F E3 FB 78 */	mr r3, r31
/* 8009E810 00094590  48 00 C5 CD */	bl cmDemoController$7getFighterSubject
/* 8009E814 00094594  2C 03 00 00 */	cmpwi r3, 0
/* 8009E818 00094598  41 82 00 18 */	beq lbl_8009E830
/* 8009E81C 0009459C  80 7A 00 00 */	lwz r3, 0(r26)
/* 8009E820 000945A0  38 1F 00 01 */	addi r0, r31, 1
/* 8009E824 000945A4  7C 60 03 78 */	or r0, r3, r0
/* 8009E828 000945A8  90 1A 00 00 */	stw r0, 0(r26)
/* 8009E82C 000945AC  48 00 00 70 */	b lbl_8009E89C
lbl_8009E830:
/* 8009E830 000945B0  3B FF 00 01 */	addi r31, r31, 1
lbl_8009E834:
/* 8009E834 000945B4  2C 1F 00 07 */	cmpwi r31, 7
/* 8009E838 000945B8  41 80 FF C8 */	blt lbl_8009E800
/* 8009E83C 000945BC  48 00 00 60 */	b lbl_8009E89C
lbl_8009E840:
/* 8009E840 000945C0  57 60 07 BD */	rlwinm. r0, r27, 0, 0x1e, 0x1e
/* 8009E844 000945C4  41 82 00 58 */	beq lbl_8009E89C
/* 8009E848 000945C8  3B FF FF FE */	addi r31, r31, -2
/* 8009E84C 000945CC  2C 1F FF FE */	cmpwi r31, -2
/* 8009E850 000945D0  41 81 00 08 */	bgt lbl_8009E858
/* 8009E854 000945D4  3B E0 00 06 */	li r31, 6
lbl_8009E858:
/* 8009E858 000945D8  3B 60 00 01 */	li r27, 1
/* 8009E85C 000945DC  48 00 00 38 */	b lbl_8009E894
lbl_8009E860:
/* 8009E860 000945E0  7F 60 F8 30 */	slw r0, r27, r31
/* 8009E864 000945E4  7F 20 00 39 */	and. r0, r25, r0
/* 8009E868 000945E8  40 82 00 28 */	bne lbl_8009E890
/* 8009E86C 000945EC  7F E3 FB 78 */	mr r3, r31
/* 8009E870 000945F0  48 00 C5 6D */	bl cmDemoController$7getFighterSubject
/* 8009E874 000945F4  2C 03 00 00 */	cmpwi r3, 0
/* 8009E878 000945F8  41 82 00 18 */	beq lbl_8009E890
/* 8009E87C 000945FC  80 7A 00 00 */	lwz r3, 0(r26)
/* 8009E880 00094600  38 1F 00 01 */	addi r0, r31, 1
/* 8009E884 00094604  7C 60 03 78 */	or r0, r3, r0
/* 8009E888 00094608  90 1A 00 00 */	stw r0, 0(r26)
/* 8009E88C 0009460C  48 00 00 10 */	b lbl_8009E89C
lbl_8009E890:
/* 8009E890 00094610  3B FF FF FF */	addi r31, r31, -1
lbl_8009E894:
/* 8009E894 00094614  2C 1F 00 00 */	cmpwi r31, 0
/* 8009E898 00094618  40 80 FF C8 */	bge lbl_8009E860
lbl_8009E89C:
/* 8009E89C 0009461C  C0 22 8A C8 */	lfs f1, lbl_805A1DE8-_SDA2_BASE_(r2)
/* 8009E8A0 00094620  C0 42 8A D0 */	lfs f2, lbl_805A1DF0-_SDA2_BASE_(r2)
/* 8009E8A4 00094624  C0 02 8A CC */	lfs f0, lbl_805A1DEC-_SDA2_BASE_(r2)
/* 8009E8A8 00094628  EC A1 E0 28 */	fsubs f5, f1, f28
/* 8009E8AC 0009462C  EC 62 F8 28 */	fsubs f3, f2, f31
/* 8009E8B0 00094630  EC E0 D0 28 */	fsubs f7, f0, f26
/* 8009E8B4 00094634  FC 85 E0 6E */	fsel f4, f5, f1, f28
/* 8009E8B8 00094638  FC 23 F8 AE */	fsel f1, f3, f2, f31
/* 8009E8BC 0009463C  FC C7 D0 2E */	fsel f6, f7, f0, f26
/* 8009E8C0 00094640  EC A4 E8 28 */	fsubs f5, f4, f29
/* 8009E8C4 00094644  EC 61 F0 28 */	fsubs f3, f1, f30
/* 8009E8C8 00094648  EC E6 D8 28 */	fsubs f7, f6, f27
/* 8009E8CC 0009464C  FC 45 27 6E */	fsel f2, f5, f29, f4
/* 8009E8D0 00094650  FC 03 0F AE */	fsel f0, f3, f30, f1
/* 8009E8D4 00094654  FC 27 36 EE */	fsel f1, f7, f27, f6
/* 8009E8D8 00094658  D0 5A 00 04 */	stfs f2, 4(r26)
/* 8009E8DC 0009465C  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 8009E8E0 00094660  D0 3A 00 08 */	stfs f1, 8(r26)
lbl_8009E8E4:
/* 8009E8E4 00094664  80 1A 00 00 */	lwz r0, 0(r26)
/* 8009E8E8 00094668  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8009E8EC 0009466C  41 82 00 E4 */	beq lbl_8009E9D0
/* 8009E8F0 00094670  57 80 07 3B */	rlwinm. r0, r28, 0, 0x1c, 0x1d
/* 8009E8F4 00094674  41 82 00 50 */	beq lbl_8009E944
/* 8009E8F8 00094678  57 80 07 7B */	rlwinm. r0, r28, 0, 0x1d, 0x1d
/* 8009E8FC 0009467C  41 82 00 18 */	beq lbl_8009E914
/* 8009E900 00094680  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 8009E904 00094684  C0 02 8A F0 */	lfs f0, lbl_805A1E10-_SDA2_BASE_(r2)
/* 8009E908 00094688  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009E90C 0009468C  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 8009E910 00094690  48 00 00 1C */	b lbl_8009E92C
lbl_8009E914:
/* 8009E914 00094694  57 80 07 39 */	rlwinm. r0, r28, 0, 0x1c, 0x1c
/* 8009E918 00094698  41 82 00 14 */	beq lbl_8009E92C
/* 8009E91C 0009469C  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 8009E920 000946A0  C0 02 8A F4 */	lfs f0, lbl_805A1E14-_SDA2_BASE_(r2)
/* 8009E924 000946A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009E928 000946A8  D0 1A 00 0C */	stfs f0, 0xc(r26)
lbl_8009E92C:
/* 8009E92C 000946AC  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8009E930 000946B0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8009E934 000946B4  FC 01 F8 2E */	fsel f0, f1, f0, f31
/* 8009E938 000946B8  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8009E93C 000946BC  FC 01 07 AE */	fsel f0, f1, f30, f0
/* 8009E940 000946C0  D0 1A 00 0C */	stfs f0, 0xc(r26)
lbl_8009E944:
/* 8009E944 000946C4  2C 1D 00 00 */	cmpwi r29, 0
/* 8009E948 000946C8  40 82 00 0C */	bne lbl_8009E954
/* 8009E94C 000946CC  2C 1E 00 00 */	cmpwi r30, 0
/* 8009E950 000946D0  41 82 00 80 */	beq lbl_8009E9D0
lbl_8009E954:
/* 8009E954 000946D4  7C 1E 00 D0 */	neg r0, r30
/* 8009E958 000946D8  3C 60 43 30 */	lis r3, 0x4330
/* 8009E95C 000946DC  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8009E960 000946E0  90 61 00 48 */	stw r3, 0x48(r1)
/* 8009E964 000946E4  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 8009E968 000946E8  C8 A2 8B 00 */	lfd f5, lbl_805A1E20-_SDA2_BASE_(r2)
/* 8009E96C 000946EC  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8009E970 000946F0  C0 02 8A F8 */	lfs f0, lbl_805A1E18-_SDA2_BASE_(r2)
/* 8009E974 000946F4  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 8009E978 000946F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8009E97C 000946FC  EC 81 28 28 */	fsubs f4, f1, f5
/* 8009E980 00094700  C0 22 8A FC */	lfs f1, lbl_805A1E1C-_SDA2_BASE_(r2)
/* 8009E984 00094704  90 61 00 50 */	stw r3, 0x50(r1)
/* 8009E988 00094708  C0 7A 00 04 */	lfs f3, 4(r26)
/* 8009E98C 0009470C  EC 80 01 32 */	fmuls f4, f0, f4
/* 8009E990 00094710  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 8009E994 00094714  C0 1A 00 08 */	lfs f0, 8(r26)
/* 8009E998 00094718  EC 42 28 28 */	fsubs f2, f2, f5
/* 8009E99C 0009471C  EC 63 20 2A */	fadds f3, f3, f4
/* 8009E9A0 00094720  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8009E9A4 00094724  EC 43 E0 28 */	fsubs f2, f3, f28
/* 8009E9A8 00094728  EC 00 08 2A */	fadds f0, f0, f1
/* 8009E9AC 0009472C  FC 22 E0 EE */	fsel f1, f2, f3, f28
/* 8009E9B0 00094730  EC 80 D0 28 */	fsubs f4, f0, f26
/* 8009E9B4 00094734  EC 41 E8 28 */	fsubs f2, f1, f29
/* 8009E9B8 00094738  FC 64 D0 2E */	fsel f3, f4, f0, f26
/* 8009E9BC 0009473C  FC 02 0F 6E */	fsel f0, f2, f29, f1
/* 8009E9C0 00094740  EC 83 D8 28 */	fsubs f4, f3, f27
/* 8009E9C4 00094744  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8009E9C8 00094748  FC 04 1E EE */	fsel f0, f4, f27, f3
/* 8009E9CC 0009474C  D0 1A 00 08 */	stfs f0, 8(r26)
lbl_8009E9D0:
/* 8009E9D0 00094750  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8009E9D4 00094754  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8009E9D8 00094758  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8009E9DC 0009475C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8009E9E0 00094760  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8009E9E4 00094764  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8009E9E8 00094768  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 8009E9EC 0009476C  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8009E9F0 00094770  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 8009E9F4 00094774  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8009E9F8 00094778  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 8009E9FC 0009477C  39 61 00 80 */	addi r11, r1, 0x80
/* 8009EA00 00094780  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 8009EA04 00094784  48 35 29 61 */	bl _restgpr_25
/* 8009EA08 00094788  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8009EA0C 0009478C  7C 08 03 A6 */	mtlr r0
/* 8009EA10 00094790  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8009EA14 00094794  4E 80 00 20 */	blr 

.global cmReplay$7calcCamera
cmReplay$7calcCamera:
/* 8009EA18 00094798  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8009EA1C 0009479C  7C 08 02 A6 */	mflr r0
/* 8009EA20 000947A0  2C 04 00 00 */	cmpwi r4, 0
/* 8009EA24 000947A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8009EA28 000947A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8009EA2C 000947AC  7C 9F 23 78 */	mr r31, r4
/* 8009EA30 000947B0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8009EA34 000947B4  7C 7E 1B 78 */	mr r30, r3
/* 8009EA38 000947B8  41 82 02 0C */	beq lbl_8009EC44
/* 8009EA3C 000947BC  80 03 00 00 */	lwz r0, 0(r3)
/* 8009EA40 000947C0  54 03 07 7F */	clrlwi. r3, r0, 0x1d
/* 8009EA44 000947C4  41 82 02 00 */	beq lbl_8009EC44
/* 8009EA48 000947C8  38 63 FF FF */	addi r3, r3, -1
/* 8009EA4C 000947CC  48 00 C3 91 */	bl cmDemoController$7getFighterSubject
/* 8009EA50 000947D0  2C 03 00 00 */	cmpwi r3, 0
/* 8009EA54 000947D4  41 82 01 F0 */	beq lbl_8009EC44
/* 8009EA58 000947D8  80 03 00 08 */	lwz r0, 8(r3)
/* 8009EA5C 000947DC  54 00 87 FF */	rlwinm. r0, r0, 0x10, 0x1f, 0x1f
/* 8009EA60 000947E0  41 82 01 E4 */	beq lbl_8009EC44
/* 8009EA64 000947E4  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8009EA68 000947E8  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8009EA6C 000947EC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8009EA70 000947F0  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8009EA74 000947F4  90 81 00 30 */	stw r4, 0x30(r1)
/* 8009EA78 000947F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009EA7C 000947FC  4B FF D3 F9 */	bl CameraController$7getInstance
/* 8009EA80 00094800  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8009EA84 00094804  C0 03 01 48 */	lfs f0, 0x148(r3)
/* 8009EA88 00094808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EA8C 0009480C  41 80 00 2C */	blt lbl_8009EAB8
/* 8009EA90 00094810  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 8009EA94 00094814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EA98 00094818  41 81 00 20 */	bgt lbl_8009EAB8
/* 8009EA9C 0009481C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8009EAA0 00094820  C0 03 01 50 */	lfs f0, 0x150(r3)
/* 8009EAA4 00094824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EAA8 00094828  41 81 00 10 */	bgt lbl_8009EAB8
/* 8009EAAC 0009482C  C0 03 01 54 */	lfs f0, 0x154(r3)
/* 8009EAB0 00094830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EAB4 00094834  40 80 00 0C */	bge lbl_8009EAC0
lbl_8009EAB8:
/* 8009EAB8 00094838  38 00 00 00 */	li r0, 0
/* 8009EABC 0009483C  48 00 00 08 */	b lbl_8009EAC4
lbl_8009EAC0:
/* 8009EAC0 00094840  38 00 00 01 */	li r0, 1
lbl_8009EAC4:
/* 8009EAC4 00094844  2C 00 00 00 */	cmpwi r0, 0
/* 8009EAC8 00094848  41 82 01 7C */	beq lbl_8009EC44
/* 8009EACC 0009484C  C0 02 8A CC */	lfs f0, lbl_805A1DEC-_SDA2_BASE_(r2)
/* 8009EAD0 00094850  38 61 00 14 */	addi r3, r1, 0x14
/* 8009EAD4 00094854  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 8009EAD8 00094858  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8009EADC 0009485C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8009EAE0 00094860  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 8009EAE4 00094864  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8009EAE8 00094868  C0 82 8B 08 */	lfs f4, lbl_805A1E28-_SDA2_BASE_(r2)
/* 8009EAEC 0009486C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009EAF0 00094870  48 00 C6 D9 */	bl cmDemoController$7calcQuakeOffset
/* 8009EAF4 00094874  A0 9F 00 FA */	lhz r4, 0xfa(r31)
/* 8009EAF8 00094878  38 00 00 E1 */	li r0, 0xe1
/* 8009EAFC 0009487C  C0 C1 00 20 */	lfs f6, 0x20(r1)
/* 8009EB00 00094880  7F E3 FB 78 */	mr r3, r31
/* 8009EB04 00094884  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 8009EB08 00094888  60 85 00 02 */	ori r5, r4, 2
/* 8009EB0C 0009488C  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 8009EB10 00094890  60 84 00 C2 */	ori r4, r4, 0xc2
/* 8009EB14 00094894  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 8009EB18 00094898  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8009EB1C 0009489C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8009EB20 000948A0  D0 DF 00 9C */	stfs f6, 0x9c(r31)
/* 8009EB24 000948A4  C0 02 8A CC */	lfs f0, lbl_805A1DEC-_SDA2_BASE_(r2)
/* 8009EB28 000948A8  D0 BF 00 A0 */	stfs f5, 0xa0(r31)
/* 8009EB2C 000948AC  D0 9F 00 A4 */	stfs f4, 0xa4(r31)
/* 8009EB30 000948B0  D0 DF 00 B4 */	stfs f6, 0xb4(r31)
/* 8009EB34 000948B4  D0 BF 00 B8 */	stfs f5, 0xb8(r31)
/* 8009EB38 000948B8  D0 9F 00 BC */	stfs f4, 0xbc(r31)
/* 8009EB3C 000948BC  D0 7F 00 60 */	stfs f3, 0x60(r31)
/* 8009EB40 000948C0  D0 5F 00 64 */	stfs f2, 0x64(r31)
/* 8009EB44 000948C4  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 8009EB48 000948C8  B0 BF 00 FA */	sth r5, 0xfa(r31)
/* 8009EB4C 000948CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8009EB50 000948D0  D0 3F 00 C0 */	stfs f1, 0xc0(r31)
/* 8009EB54 000948D4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8009EB58 000948D8  D0 3F 00 C4 */	stfs f1, 0xc4(r31)
/* 8009EB5C 000948DC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8009EB60 000948E0  D0 3F 00 CC */	stfs f1, 0xcc(r31)
/* 8009EB64 000948E4  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 8009EB68 000948E8  B0 9F 00 FA */	sth r4, 0xfa(r31)
/* 8009EB6C 000948EC  B0 1F 00 F8 */	sth r0, 0xf8(r31)
/* 8009EB70 000948F0  4B F7 9C 09 */	bl gfCamera$7calc
/* 8009EB74 000948F4  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 8009EB78 000948F8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8009EB7C 000948FC  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8009EB80 00094900  90 81 00 08 */	stw r4, 8(r1)
/* 8009EB84 00094904  90 61 00 0C */	stw r3, 0xc(r1)
/* 8009EB88 00094908  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009EB8C 0009490C  4B FF D2 E9 */	bl CameraController$7getInstance
/* 8009EB90 00094910  C0 21 00 08 */	lfs f1, 8(r1)
/* 8009EB94 00094914  C0 03 01 58 */	lfs f0, 0x158(r3)
/* 8009EB98 00094918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EB9C 0009491C  41 80 00 2C */	blt lbl_8009EBC8
/* 8009EBA0 00094920  C0 03 01 5C */	lfs f0, 0x15c(r3)
/* 8009EBA4 00094924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EBA8 00094928  41 81 00 20 */	bgt lbl_8009EBC8
/* 8009EBAC 0009492C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8009EBB0 00094930  C0 03 01 60 */	lfs f0, 0x160(r3)
/* 8009EBB4 00094934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EBB8 00094938  41 81 00 10 */	bgt lbl_8009EBC8
/* 8009EBBC 0009493C  C0 03 01 64 */	lfs f0, 0x164(r3)
/* 8009EBC0 00094940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009EBC4 00094944  40 80 00 0C */	bge lbl_8009EBD0
lbl_8009EBC8:
/* 8009EBC8 00094948  38 00 00 00 */	li r0, 0
/* 8009EBCC 0009494C  48 00 00 08 */	b lbl_8009EBD4
lbl_8009EBD0:
/* 8009EBD0 00094950  38 00 00 01 */	li r0, 1
lbl_8009EBD4:
/* 8009EBD4 00094954  2C 00 00 00 */	cmpwi r0, 0
/* 8009EBD8 00094958  40 82 00 6C */	bne lbl_8009EC44
/* 8009EBDC 0009495C  C0 23 01 58 */	lfs f1, 0x158(r3)
/* 8009EBE0 00094960  38 00 00 43 */	li r0, 0x43
/* 8009EBE4 00094964  C0 01 00 08 */	lfs f0, 8(r1)
/* 8009EBE8 00094968  C0 A3 01 64 */	lfs f5, 0x164(r3)
/* 8009EBEC 0009496C  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 8009EBF0 00094970  EC 60 08 28 */	fsubs f3, f0, f1
/* 8009EBF4 00094974  C0 43 01 5C */	lfs f2, 0x15c(r3)
/* 8009EBF8 00094978  EC E4 28 28 */	fsubs f7, f4, f5
/* 8009EBFC 0009497C  C0 C3 01 60 */	lfs f6, 0x160(r3)
/* 8009EC00 00094980  FC 23 08 2E */	fsel f1, f3, f0, f1
/* 8009EC04 00094984  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8009EC08 00094988  B0 1F 00 F8 */	sth r0, 0xf8(r31)
/* 8009EC0C 0009498C  7F E3 FB 78 */	mr r3, r31
/* 8009EC10 00094990  FC 87 29 2E */	fsel f4, f7, f4, f5
/* 8009EC14 00094994  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8009EC18 00094998  EC 61 10 28 */	fsubs f3, f1, f2
/* 8009EC1C 0009499C  EC E4 30 28 */	fsubs f7, f4, f6
/* 8009EC20 000949A0  FC 03 08 AE */	fsel f0, f3, f2, f1
/* 8009EC24 000949A4  FC 47 21 AE */	fsel f2, f7, f6, f4
/* 8009EC28 000949A8  FC 20 00 18 */	frsp f1, f0
/* 8009EC2C 000949AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8009EC30 000949B0  FC 00 10 18 */	frsp f0, f2
/* 8009EC34 000949B4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8009EC38 000949B8  D0 3F 00 6C */	stfs f1, 0x6c(r31)
/* 8009EC3C 000949BC  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 8009EC40 000949C0  4B F7 9B 39 */	bl gfCamera$7calc
lbl_8009EC44:
/* 8009EC44 000949C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8009EC48 000949C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8009EC4C 000949CC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8009EC50 000949D0  7C 08 03 A6 */	mtlr r0
/* 8009EC54 000949D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8009EC58 000949D8  4E 80 00 20 */	blr 

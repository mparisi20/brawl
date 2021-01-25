.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global btm_cback
btm_cback:
/* 802442A0 0023A020  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802442A4 0023A024  7C 08 02 A6 */	mflr r0
/* 802442A8 0023A028  3C E0 80 48 */	lis r7, lbl_80482038@ha
/* 802442AC 0023A02C  28 03 00 02 */	cmplwi r3, 2
/* 802442B0 0023A030  90 01 00 24 */	stw r0, 0x24(r1)
/* 802442B4 0023A034  38 E7 20 38 */	addi r7, r7, lbl_80482038@l
/* 802442B8 0023A038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802442BC 0023A03C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802442C0 0023A040  7C 9E 23 78 */	mr r30, r4
/* 802442C4 0023A044  40 80 01 9C */	bge lbl_80244460
/* 802442C8 0023A048  3D 00 80 53 */	lis r8, lbl_8052C4C0@ha
/* 802442CC 0023A04C  54 60 23 36 */	rlwinm r0, r3, 4, 0xc, 0x1b
/* 802442D0 0023A050  39 08 C4 C0 */	addi r8, r8, lbl_8052C4C0@l
/* 802442D4 0023A054  7F E8 02 14 */	add r31, r8, r0
/* 802442D8 0023A058  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 802442DC 0023A05C  2C 00 00 00 */	cmpwi r0, 0
/* 802442E0 0023A060  41 82 01 80 */	beq lbl_80244460
/* 802442E4 0023A064  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 802442E8 0023A068  2C 00 00 03 */	cmpwi r0, 3
/* 802442EC 0023A06C  41 82 00 6C */	beq lbl_80244358
/* 802442F0 0023A070  40 80 00 10 */	bge lbl_80244300
/* 802442F4 0023A074  2C 00 00 02 */	cmpwi r0, 2
/* 802442F8 0023A078  40 80 00 14 */	bge lbl_8024430C
/* 802442FC 0023A07C  48 00 01 34 */	b lbl_80244430
lbl_80244300:
/* 80244300 0023A080  2C 00 00 05 */	cmpwi r0, 5
/* 80244304 0023A084  40 80 01 2C */	bge lbl_80244430
/* 80244308 0023A088  48 00 00 9C */	b lbl_802443A4
lbl_8024430C:
/* 8024430C 0023A08C  88 C4 00 01 */	lbz r6, 1(r4)
/* 80244310 0023A090  38 60 01 14 */	li r3, 0x114
/* 80244314 0023A094  88 08 00 28 */	lbz r0, 0x28(r8)
/* 80244318 0023A098  3B C1 00 08 */	addi r30, r1, 8
/* 8024431C 0023A09C  98 C1 00 0A */	stb r6, 0xa(r1)
/* 80244320 0023A0A0  28 00 00 04 */	cmplwi r0, 4
/* 80244324 0023A0A4  88 04 00 00 */	lbz r0, 0(r4)
/* 80244328 0023A0A8  7C 00 00 34 */	cntlzw r0, r0
/* 8024432C 0023A0AC  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 80244330 0023A0B0  7C 00 00 D0 */	neg r0, r0
/* 80244334 0023A0B4  7C 60 00 78 */	andc r0, r3, r0
/* 80244338 0023A0B8  B0 01 00 08 */	sth r0, 8(r1)
/* 8024433C 0023A0BC  41 80 00 F4 */	blt lbl_80244430
/* 80244340 0023A0C0  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 80244344 0023A0C4  38 87 00 00 */	addi r4, r7, 0
/* 80244348 0023A0C8  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 8024434C 0023A0CC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80244350 0023A0D0  4B FE D6 C5 */	bl LogMsg_2
/* 80244354 0023A0D4  48 00 00 DC */	b lbl_80244430
lbl_80244358:
/* 80244358 0023A0D8  A0 A4 00 00 */	lhz r5, 0(r4)
/* 8024435C 0023A0DC  2C 05 00 00 */	cmpwi r5, 0
/* 80244360 0023A0E0  41 82 00 24 */	beq lbl_80244384
/* 80244364 0023A0E4  88 08 00 28 */	lbz r0, 0x28(r8)
/* 80244368 0023A0E8  28 00 00 04 */	cmplwi r0, 4
/* 8024436C 0023A0EC  41 80 00 C4 */	blt lbl_80244430
/* 80244370 0023A0F0  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 80244374 0023A0F4  38 87 00 3C */	addi r4, r7, 0x3c
/* 80244378 0023A0F8  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 8024437C 0023A0FC  4B FE D6 81 */	bl LogMsg_1
/* 80244380 0023A100  48 00 00 B0 */	b lbl_80244430
lbl_80244384:
/* 80244384 0023A104  88 08 00 28 */	lbz r0, 0x28(r8)
/* 80244388 0023A108  28 00 00 04 */	cmplwi r0, 4
/* 8024438C 0023A10C  41 80 00 A4 */	blt lbl_80244430
/* 80244390 0023A110  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 80244394 0023A114  38 87 00 70 */	addi r4, r7, 0x70
/* 80244398 0023A118  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 8024439C 0023A11C  4B FE D6 49 */	bl LogMsg_0
/* 802443A0 0023A120  48 00 00 90 */	b lbl_80244430
lbl_802443A4:
/* 802443A4 0023A124  A0 04 00 00 */	lhz r0, 0(r4)
/* 802443A8 0023A128  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802443AC 0023A12C  28 00 00 08 */	cmplwi r0, 8
/* 802443B0 0023A130  41 81 00 54 */	bgt lbl_80244404
/* 802443B4 0023A134  3C 60 80 48 */	lis r3, lbl_80482104@ha
/* 802443B8 0023A138  54 00 10 3A */	slwi r0, r0, 2
/* 802443BC 0023A13C  38 63 21 04 */	addi r3, r3, lbl_80482104@l
/* 802443C0 0023A140  7C 63 00 2E */	lwzx r3, r3, r0
/* 802443C4 0023A144  7C 69 03 A6 */	mtctr r3
/* 802443C8 0023A148  4E 80 04 20 */	bctr 
/* 802443CC 0023A14C  38 A0 00 00 */	li r5, 0
/* 802443D0 0023A150  48 00 00 38 */	b lbl_80244408
/* 802443D4 0023A154  38 A0 01 0B */	li r5, 0x10b
/* 802443D8 0023A158  48 00 00 30 */	b lbl_80244408
/* 802443DC 0023A15C  38 A0 01 03 */	li r5, 0x103
/* 802443E0 0023A160  48 00 00 28 */	b lbl_80244408
/* 802443E4 0023A164  38 A0 01 09 */	li r5, 0x109
/* 802443E8 0023A168  48 00 00 20 */	b lbl_80244408
/* 802443EC 0023A16C  38 A0 01 0C */	li r5, 0x10c
/* 802443F0 0023A170  48 00 00 18 */	b lbl_80244408
/* 802443F4 0023A174  38 A0 01 0D */	li r5, 0x10d
/* 802443F8 0023A178  48 00 00 10 */	b lbl_80244408
/* 802443FC 0023A17C  38 A0 01 15 */	li r5, 0x115
/* 80244400 0023A180  48 00 00 08 */	b lbl_80244408
lbl_80244404:
/* 80244404 0023A184  38 A0 01 14 */	li r5, 0x114
lbl_80244408:
/* 80244408 0023A188  3C 60 80 53 */	lis r3, lbl_8052C4C0@ha
/* 8024440C 0023A18C  B0 A4 00 00 */	sth r5, 0(r4)
/* 80244410 0023A190  38 63 C4 C0 */	addi r3, r3, lbl_8052C4C0@l
/* 80244414 0023A194  88 03 00 28 */	lbz r0, 0x28(r3)
/* 80244418 0023A198  28 00 00 04 */	cmplwi r0, 4
/* 8024441C 0023A19C  41 80 00 14 */	blt lbl_80244430
/* 80244420 0023A1A0  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 80244424 0023A1A4  38 87 00 98 */	addi r4, r7, 0x98
/* 80244428 0023A1A8  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 8024442C 0023A1AC  4B FE D5 D1 */	bl LogMsg_1
lbl_80244430:
/* 80244430 0023A1B0  81 9F 00 04 */	lwz r12, 4(r31)
/* 80244434 0023A1B4  2C 0C 00 00 */	cmpwi r12, 0
/* 80244438 0023A1B8  41 82 00 14 */	beq lbl_8024444C
/* 8024443C 0023A1BC  7F C4 F3 78 */	mr r4, r30
/* 80244440 0023A1C0  A0 7F 00 0C */	lhz r3, 0xc(r31)
/* 80244444 0023A1C4  7D 89 03 A6 */	mtctr r12
/* 80244448 0023A1C8  4E 80 04 21 */	bctrl 
lbl_8024444C:
/* 8024444C 0023A1CC  2C 1F 00 00 */	cmpwi r31, 0
/* 80244450 0023A1D0  41 82 00 10 */	beq lbl_80244460
/* 80244454 0023A1D4  38 00 00 00 */	li r0, 0
/* 80244458 0023A1D8  90 1F 00 04 */	stw r0, 4(r31)
/* 8024445C 0023A1DC  98 1F 00 0F */	stb r0, 0xf(r31)
lbl_80244460:
/* 80244460 0023A1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244464 0023A1E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244468 0023A1E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024446C 0023A1EC  7C 08 03 A6 */	mtlr r0
/* 80244470 0023A1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80244474 0023A1F4  4E 80 00 20 */	blr 

.global gap_btm_cback0
gap_btm_cback0:
/* 80244478 0023A1F8  7C 64 1B 78 */	mr r4, r3
/* 8024447C 0023A1FC  38 60 00 00 */	li r3, 0
/* 80244480 0023A200  4B FF FE 20 */	b btm_cback

.global gap_btm_cback1
gap_btm_cback1:
/* 80244484 0023A204  7C 64 1B 78 */	mr r4, r3
/* 80244488 0023A208  38 60 00 01 */	li r3, 1
/* 8024448C 0023A20C  4B FF FE 14 */	b btm_cback

.global gap_find_addr_name_cb
gap_find_addr_name_cb:
/* 80244490 0023A210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244494 0023A214  7C 08 02 A6 */	mflr r0
/* 80244498 0023A218  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024449C 0023A21C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802444A0 0023A220  3F E0 80 53 */	lis r31, lbl_8052C4C0@ha
/* 802444A4 0023A224  3B FF C4 C0 */	addi r31, r31, lbl_8052C4C0@l
/* 802444A8 0023A228  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802444AC 0023A22C  3B DF 00 34 */	addi r30, r31, 0x34
/* 802444B0 0023A230  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802444B4 0023A234  7C 7D 1B 78 */	mr r29, r3
/* 802444B8 0023A238  88 1F 00 7E */	lbz r0, 0x7e(r31)
/* 802444BC 0023A23C  2C 00 00 00 */	cmpwi r0, 0
/* 802444C0 0023A240  41 82 01 CC */	beq lbl_8024468C
/* 802444C4 0023A244  A0 A3 00 00 */	lhz r5, 0(r3)
/* 802444C8 0023A248  2C 05 00 00 */	cmpwi r5, 0
/* 802444CC 0023A24C  40 82 01 10 */	bne lbl_802445DC
/* 802444D0 0023A250  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 802444D4 0023A254  28 00 00 04 */	cmplwi r0, 4
/* 802444D8 0023A258  41 80 00 1C */	blt lbl_802444F4
/* 802444DC 0023A25C  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802444E0 0023A260  3C 80 80 48 */	lis r4, lbl_804821B0@ha
/* 802444E4 0023A264  38 DD 00 04 */	addi r6, r29, 4
/* 802444E8 0023A268  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802444EC 0023A26C  38 84 21 B0 */	addi r4, r4, lbl_804821B0@l
/* 802444F0 0023A270  4B FE D5 25 */	bl LogMsg_2
lbl_802444F4:
/* 802444F4 0023A274  38 7E 00 08 */	addi r3, r30, 8
/* 802444F8 0023A278  48 1A C1 49 */	bl strlen
/* 802444FC 0023A27C  7C 65 1B 78 */	mr r5, r3
/* 80244500 0023A280  38 7E 00 08 */	addi r3, r30, 8
/* 80244504 0023A284  38 9D 00 04 */	addi r4, r29, 4
/* 80244508 0023A288  48 1B 60 11 */	bl strncmp
/* 8024450C 0023A28C  2C 03 00 00 */	cmpwi r3, 0
/* 80244510 0023A290  40 82 00 24 */	bne lbl_80244534
/* 80244514 0023A294  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80244518 0023A298  38 7E 00 02 */	addi r3, r30, 2
/* 8024451C 0023A29C  38 A0 00 06 */	li r5, 6
/* 80244520 0023A2A0  38 84 00 02 */	addi r4, r4, 2
/* 80244524 0023A2A4  4B DB FE 15 */	bl func_80004338
/* 80244528 0023A2A8  38 00 00 00 */	li r0, 0
/* 8024452C 0023A2AC  B0 1E 00 00 */	sth r0, 0(r30)
/* 80244530 0023A2B0  48 00 01 34 */	b lbl_80244664
lbl_80244534:
/* 80244534 0023A2B4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80244538 0023A2B8  4B FF 84 3D */	bl BTM_InqDbNext
/* 8024453C 0023A2BC  2C 03 00 00 */	cmpwi r3, 0
/* 80244540 0023A2C0  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80244544 0023A2C4  41 82 00 8C */	beq lbl_802445D0
/* 80244548 0023A2C8  3C 80 80 24 */	lis r4, gap_find_addr_name_cb@ha
/* 8024454C 0023A2CC  38 63 00 02 */	addi r3, r3, 2
/* 80244550 0023A2D0  38 84 44 90 */	addi r4, r4, gap_find_addr_name_cb@l
/* 80244554 0023A2D4  4B FF 81 49 */	bl BTM_ReadRemoteDeviceName
/* 80244558 0023A2D8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024455C 0023A2DC  28 00 00 01 */	cmplwi r0, 1
/* 80244560 0023A2E0  41 82 01 2C */	beq lbl_8024468C
/* 80244564 0023A2E4  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80244568 0023A2E8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8024456C 0023A2EC  28 00 00 08 */	cmplwi r0, 8
/* 80244570 0023A2F0  41 81 00 54 */	bgt lbl_802445C4
/* 80244574 0023A2F4  3C 60 80 48 */	lis r3, lbl_80482254@ha
/* 80244578 0023A2F8  54 00 10 3A */	slwi r0, r0, 2
/* 8024457C 0023A2FC  38 63 22 54 */	addi r3, r3, lbl_80482254@l
/* 80244580 0023A300  7C 63 00 2E */	lwzx r3, r3, r0
/* 80244584 0023A304  7C 69 03 A6 */	mtctr r3
/* 80244588 0023A308  4E 80 04 20 */	bctr 
/* 8024458C 0023A30C  38 00 00 00 */	li r0, 0
/* 80244590 0023A310  48 00 00 38 */	b lbl_802445C8
/* 80244594 0023A314  38 00 01 0B */	li r0, 0x10b
/* 80244598 0023A318  48 00 00 30 */	b lbl_802445C8
/* 8024459C 0023A31C  38 00 01 03 */	li r0, 0x103
/* 802445A0 0023A320  48 00 00 28 */	b lbl_802445C8
/* 802445A4 0023A324  38 00 01 09 */	li r0, 0x109
/* 802445A8 0023A328  48 00 00 20 */	b lbl_802445C8
/* 802445AC 0023A32C  38 00 01 0C */	li r0, 0x10c
/* 802445B0 0023A330  48 00 00 18 */	b lbl_802445C8
/* 802445B4 0023A334  38 00 01 0D */	li r0, 0x10d
/* 802445B8 0023A338  48 00 00 10 */	b lbl_802445C8
/* 802445BC 0023A33C  38 00 01 15 */	li r0, 0x115
/* 802445C0 0023A340  48 00 00 08 */	b lbl_802445C8
lbl_802445C4:
/* 802445C4 0023A344  38 00 01 14 */	li r0, 0x114
lbl_802445C8:
/* 802445C8 0023A348  B0 1E 00 00 */	sth r0, 0(r30)
/* 802445CC 0023A34C  48 00 00 98 */	b lbl_80244664
lbl_802445D0:
/* 802445D0 0023A350  38 00 01 02 */	li r0, 0x102
/* 802445D4 0023A354  B0 1E 00 00 */	sth r0, 0(r30)
/* 802445D8 0023A358  48 00 00 8C */	b lbl_80244664
lbl_802445DC:
/* 802445DC 0023A35C  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 802445E0 0023A360  28 00 00 04 */	cmplwi r0, 4
/* 802445E4 0023A364  41 80 00 18 */	blt lbl_802445FC
/* 802445E8 0023A368  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802445EC 0023A36C  3C 80 80 48 */	lis r4, lbl_804821F4@ha
/* 802445F0 0023A370  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802445F4 0023A374  38 84 21 F4 */	addi r4, r4, lbl_804821F4@l
/* 802445F8 0023A378  4B FE D4 05 */	bl LogMsg_1
lbl_802445FC:
/* 802445FC 0023A37C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80244600 0023A380  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80244604 0023A384  28 00 00 08 */	cmplwi r0, 8
/* 80244608 0023A388  41 81 00 54 */	bgt lbl_8024465C
/* 8024460C 0023A38C  3C 60 80 48 */	lis r3, lbl_80482230@ha
/* 80244610 0023A390  54 00 10 3A */	slwi r0, r0, 2
/* 80244614 0023A394  38 63 22 30 */	addi r3, r3, lbl_80482230@l
/* 80244618 0023A398  7C 63 00 2E */	lwzx r3, r3, r0
/* 8024461C 0023A39C  7C 69 03 A6 */	mtctr r3
/* 80244620 0023A3A0  4E 80 04 20 */	bctr 
/* 80244624 0023A3A4  38 00 00 00 */	li r0, 0
/* 80244628 0023A3A8  48 00 00 38 */	b lbl_80244660
/* 8024462C 0023A3AC  38 00 01 0B */	li r0, 0x10b
/* 80244630 0023A3B0  48 00 00 30 */	b lbl_80244660
/* 80244634 0023A3B4  38 00 01 03 */	li r0, 0x103
/* 80244638 0023A3B8  48 00 00 28 */	b lbl_80244660
/* 8024463C 0023A3BC  38 00 01 09 */	li r0, 0x109
/* 80244640 0023A3C0  48 00 00 20 */	b lbl_80244660
/* 80244644 0023A3C4  38 00 01 0C */	li r0, 0x10c
/* 80244648 0023A3C8  48 00 00 18 */	b lbl_80244660
/* 8024464C 0023A3CC  38 00 01 0D */	li r0, 0x10d
/* 80244650 0023A3D0  48 00 00 10 */	b lbl_80244660
/* 80244654 0023A3D4  38 00 01 15 */	li r0, 0x115
/* 80244658 0023A3D8  48 00 00 08 */	b lbl_80244660
lbl_8024465C:
/* 8024465C 0023A3DC  38 00 01 14 */	li r0, 0x114
lbl_80244660:
/* 80244660 0023A3E0  B0 1E 00 00 */	sth r0, 0(r30)
lbl_80244664:
/* 80244664 0023A3E4  81 9F 00 2C */	lwz r12, 0x2c(r31)
/* 80244668 0023A3E8  2C 0C 00 00 */	cmpwi r12, 0
/* 8024466C 0023A3EC  41 82 00 14 */	beq lbl_80244680
/* 80244670 0023A3F0  7F C4 F3 78 */	mr r4, r30
/* 80244674 0023A3F4  38 60 00 05 */	li r3, 5
/* 80244678 0023A3F8  7D 89 03 A6 */	mtctr r12
/* 8024467C 0023A3FC  4E 80 04 21 */	bctrl 
lbl_80244680:
/* 80244680 0023A400  38 00 00 00 */	li r0, 0
/* 80244684 0023A404  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 80244688 0023A408  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_8024468C:
/* 8024468C 0023A40C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244690 0023A410  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244694 0023A414  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80244698 0023A418  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8024469C 0023A41C  7C 08 03 A6 */	mtlr r0
/* 802446A0 0023A420  38 21 00 20 */	addi r1, r1, 0x20
/* 802446A4 0023A424  4E 80 00 20 */	blr 

.global gap_find_addr_inq_cb
gap_find_addr_inq_cb:
/* 802446A8 0023A428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802446AC 0023A42C  7C 08 02 A6 */	mflr r0
/* 802446B0 0023A430  90 01 00 24 */	stw r0, 0x24(r1)
/* 802446B4 0023A434  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802446B8 0023A438  3F E0 80 53 */	lis r31, lbl_8052C4C0@ha
/* 802446BC 0023A43C  3B FF C4 C0 */	addi r31, r31, lbl_8052C4C0@l
/* 802446C0 0023A440  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802446C4 0023A444  3B DF 00 34 */	addi r30, r31, 0x34
/* 802446C8 0023A448  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802446CC 0023A44C  7C 7D 1B 78 */	mr r29, r3
/* 802446D0 0023A450  88 1F 00 7E */	lbz r0, 0x7e(r31)
/* 802446D4 0023A454  2C 00 00 00 */	cmpwi r0, 0
/* 802446D8 0023A458  41 82 01 68 */	beq lbl_80244840
/* 802446DC 0023A45C  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 802446E0 0023A460  28 00 00 04 */	cmplwi r0, 4
/* 802446E4 0023A464  41 80 00 20 */	blt lbl_80244704
/* 802446E8 0023A468  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802446EC 0023A46C  3C 80 80 48 */	lis r4, lbl_80482278@ha
/* 802446F0 0023A470  88 BD 00 00 */	lbz r5, 0(r29)
/* 802446F4 0023A474  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802446F8 0023A478  88 DD 00 01 */	lbz r6, 1(r29)
/* 802446FC 0023A47C  38 84 22 78 */	addi r4, r4, lbl_80482278@l
/* 80244700 0023A480  4B FE D3 15 */	bl LogMsg_2
lbl_80244704:
/* 80244704 0023A484  88 1D 00 00 */	lbz r0, 0(r29)
/* 80244708 0023A488  2C 00 00 00 */	cmpwi r0, 0
/* 8024470C 0023A48C  40 82 00 AC */	bne lbl_802447B8
/* 80244710 0023A490  38 00 01 11 */	li r0, 0x111
/* 80244714 0023A494  B0 1E 00 00 */	sth r0, 0(r30)
/* 80244718 0023A498  4B FF 81 A5 */	bl BTM_InqDbFirst
/* 8024471C 0023A49C  2C 03 00 00 */	cmpwi r3, 0
/* 80244720 0023A4A0  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80244724 0023A4A4  41 82 00 88 */	beq lbl_802447AC
/* 80244728 0023A4A8  3C 80 80 24 */	lis r4, gap_find_addr_name_cb@ha
/* 8024472C 0023A4AC  38 63 00 02 */	addi r3, r3, 2
/* 80244730 0023A4B0  38 84 44 90 */	addi r4, r4, gap_find_addr_name_cb@l
/* 80244734 0023A4B4  4B FF 7F 69 */	bl BTM_ReadRemoteDeviceName
/* 80244738 0023A4B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024473C 0023A4BC  28 00 00 01 */	cmplwi r0, 1
/* 80244740 0023A4C0  41 82 01 00 */	beq lbl_80244840
/* 80244744 0023A4C4  88 1D 00 00 */	lbz r0, 0(r29)
/* 80244748 0023A4C8  28 00 00 08 */	cmplwi r0, 8
/* 8024474C 0023A4CC  41 81 00 54 */	bgt lbl_802447A0
/* 80244750 0023A4D0  3C 60 80 48 */	lis r3, lbl_804822E0@ha
/* 80244754 0023A4D4  54 00 10 3A */	slwi r0, r0, 2
/* 80244758 0023A4D8  38 63 22 E0 */	addi r3, r3, lbl_804822E0@l
/* 8024475C 0023A4DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80244760 0023A4E0  7C 69 03 A6 */	mtctr r3
/* 80244764 0023A4E4  4E 80 04 20 */	bctr 
/* 80244768 0023A4E8  38 00 00 00 */	li r0, 0
/* 8024476C 0023A4EC  48 00 00 38 */	b lbl_802447A4
/* 80244770 0023A4F0  38 00 01 0B */	li r0, 0x10b
/* 80244774 0023A4F4  48 00 00 30 */	b lbl_802447A4
/* 80244778 0023A4F8  38 00 01 03 */	li r0, 0x103
/* 8024477C 0023A4FC  48 00 00 28 */	b lbl_802447A4
/* 80244780 0023A500  38 00 01 09 */	li r0, 0x109
/* 80244784 0023A504  48 00 00 20 */	b lbl_802447A4
/* 80244788 0023A508  38 00 01 0C */	li r0, 0x10c
/* 8024478C 0023A50C  48 00 00 18 */	b lbl_802447A4
/* 80244790 0023A510  38 00 01 0D */	li r0, 0x10d
/* 80244794 0023A514  48 00 00 10 */	b lbl_802447A4
/* 80244798 0023A518  38 00 01 15 */	li r0, 0x115
/* 8024479C 0023A51C  48 00 00 08 */	b lbl_802447A4
lbl_802447A0:
/* 802447A0 0023A520  38 00 01 14 */	li r0, 0x114
lbl_802447A4:
/* 802447A4 0023A524  B0 1E 00 00 */	sth r0, 0(r30)
/* 802447A8 0023A528  48 00 00 70 */	b lbl_80244818
lbl_802447AC:
/* 802447AC 0023A52C  38 00 01 02 */	li r0, 0x102
/* 802447B0 0023A530  B0 1E 00 00 */	sth r0, 0(r30)
/* 802447B4 0023A534  48 00 00 64 */	b lbl_80244818
lbl_802447B8:
/* 802447B8 0023A538  28 00 00 08 */	cmplwi r0, 8
/* 802447BC 0023A53C  41 81 00 54 */	bgt lbl_80244810
/* 802447C0 0023A540  3C 60 80 48 */	lis r3, lbl_804822BC@ha
/* 802447C4 0023A544  54 00 10 3A */	slwi r0, r0, 2
/* 802447C8 0023A548  38 63 22 BC */	addi r3, r3, lbl_804822BC@l
/* 802447CC 0023A54C  7C 63 00 2E */	lwzx r3, r3, r0
/* 802447D0 0023A550  7C 69 03 A6 */	mtctr r3
/* 802447D4 0023A554  4E 80 04 20 */	bctr 
/* 802447D8 0023A558  38 00 00 00 */	li r0, 0
/* 802447DC 0023A55C  48 00 00 38 */	b lbl_80244814
/* 802447E0 0023A560  38 00 01 0B */	li r0, 0x10b
/* 802447E4 0023A564  48 00 00 30 */	b lbl_80244814
/* 802447E8 0023A568  38 00 01 03 */	li r0, 0x103
/* 802447EC 0023A56C  48 00 00 28 */	b lbl_80244814
/* 802447F0 0023A570  38 00 01 09 */	li r0, 0x109
/* 802447F4 0023A574  48 00 00 20 */	b lbl_80244814
/* 802447F8 0023A578  38 00 01 0C */	li r0, 0x10c
/* 802447FC 0023A57C  48 00 00 18 */	b lbl_80244814
/* 80244800 0023A580  38 00 01 0D */	li r0, 0x10d
/* 80244804 0023A584  48 00 00 10 */	b lbl_80244814
/* 80244808 0023A588  38 00 01 15 */	li r0, 0x115
/* 8024480C 0023A58C  48 00 00 08 */	b lbl_80244814
lbl_80244810:
/* 80244810 0023A590  38 00 01 14 */	li r0, 0x114
lbl_80244814:
/* 80244814 0023A594  B0 1E 00 00 */	sth r0, 0(r30)
lbl_80244818:
/* 80244818 0023A598  81 9F 00 2C */	lwz r12, 0x2c(r31)
/* 8024481C 0023A59C  2C 0C 00 00 */	cmpwi r12, 0
/* 80244820 0023A5A0  41 82 00 14 */	beq lbl_80244834
/* 80244824 0023A5A4  7F C4 F3 78 */	mr r4, r30
/* 80244828 0023A5A8  38 60 00 05 */	li r3, 5
/* 8024482C 0023A5AC  7D 89 03 A6 */	mtctr r12
/* 80244830 0023A5B0  4E 80 04 21 */	bctrl 
lbl_80244834:
/* 80244834 0023A5B4  38 00 00 00 */	li r0, 0
/* 80244838 0023A5B8  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 8024483C 0023A5BC  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_80244840:
/* 80244840 0023A5C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244844 0023A5C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80244848 0023A5C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024484C 0023A5CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80244850 0023A5D0  7C 08 03 A6 */	mtlr r0
/* 80244854 0023A5D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80244858 0023A5D8  4E 80 00 20 */	blr 

.global gap_convert_btm_status
gap_convert_btm_status:
/* 8024485C 0023A5DC  28 03 00 08 */	cmplwi r3, 8
/* 80244860 0023A5E0  41 81 00 54 */	bgt lbl_802448B4
/* 80244864 0023A5E4  3C 80 80 48 */	lis r4, lbl_80482304@ha
/* 80244868 0023A5E8  54 60 10 3A */	slwi r0, r3, 2
/* 8024486C 0023A5EC  38 84 23 04 */	addi r4, r4, lbl_80482304@l
/* 80244870 0023A5F0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80244874 0023A5F4  7C 89 03 A6 */	mtctr r4
/* 80244878 0023A5F8  4E 80 04 20 */	bctr 
/* 8024487C 0023A5FC  38 60 00 00 */	li r3, 0
/* 80244880 0023A600  4E 80 00 20 */	blr 
/* 80244884 0023A604  38 60 01 0B */	li r3, 0x10b
/* 80244888 0023A608  4E 80 00 20 */	blr 
/* 8024488C 0023A60C  38 60 01 03 */	li r3, 0x103
/* 80244890 0023A610  4E 80 00 20 */	blr 
/* 80244894 0023A614  38 60 01 09 */	li r3, 0x109
/* 80244898 0023A618  4E 80 00 20 */	blr 
/* 8024489C 0023A61C  38 60 01 0C */	li r3, 0x10c
/* 802448A0 0023A620  4E 80 00 20 */	blr 
/* 802448A4 0023A624  38 60 01 0D */	li r3, 0x10d
/* 802448A8 0023A628  4E 80 00 20 */	blr 
/* 802448AC 0023A62C  38 60 01 15 */	li r3, 0x115
/* 802448B0 0023A630  4E 80 00 20 */	blr 
lbl_802448B4:
/* 802448B4 0023A634  38 60 01 14 */	li r3, 0x114
/* 802448B8 0023A638  4E 80 00 20 */	blr 


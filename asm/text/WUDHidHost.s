.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global WUDHidHostCallback
WUDHidHostCallback:
/* 8022E32C 002240AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022E330 002240B0  7C 08 02 A6 */	mflr r0
/* 8022E334 002240B4  28 03 00 0F */	cmplwi r3, 0xf
/* 8022E338 002240B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022E33C 002240BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8022E340 002240C0  3F E0 80 50 */	lis r31, lbl_804FB4A0@ha
/* 8022E344 002240C4  3B FF B4 A0 */	addi r31, r31, lbl_804FB4A0@l
/* 8022E348 002240C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022E34C 002240CC  7C 9E 23 78 */	mr r30, r4
/* 8022E350 002240D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8022E354 002240D4  3F A0 80 48 */	lis r29, lbl_8047F830@ha
/* 8022E358 002240D8  3B BD F8 30 */	addi r29, r29, lbl_8047F830@l
/* 8022E35C 002240DC  41 81 05 4C */	bgt lbl_8022E8A8
/* 8022E360 002240E0  3C A0 80 48 */	lis r5, lbl_8047FA30@ha
/* 8022E364 002240E4  54 60 10 3A */	slwi r0, r3, 2
/* 8022E368 002240E8  38 A5 FA 30 */	addi r5, r5, lbl_8047FA30@l
/* 8022E36C 002240EC  7C A5 00 2E */	lwzx r5, r5, r0
/* 8022E370 002240F0  7C A9 03 A6 */	mtctr r5
/* 8022E374 002240F4  4E 80 04 20 */	bctr 
/* 8022E378 002240F8  38 7D 00 00 */	addi r3, r29, 0
/* 8022E37C 002240FC  4C C6 31 82 */	crclr 6
/* 8022E380 00224100  48 00 05 A9 */	bl WUD_DEBUGPrint
/* 8022E384 00224104  80 1F 07 40 */	lwz r0, 0x740(r31)
/* 8022E388 00224108  60 00 00 01 */	ori r0, r0, 1
/* 8022E38C 0022410C  90 1F 07 40 */	stw r0, 0x740(r31)
/* 8022E390 00224110  48 00 05 18 */	b lbl_8022E8A8
/* 8022E394 00224114  38 7D 00 14 */	addi r3, r29, 0x14
/* 8022E398 00224118  4C C6 31 82 */	crclr 6
/* 8022E39C 0022411C  48 00 05 8D */	bl WUD_DEBUGPrint
/* 8022E3A0 00224120  48 00 05 08 */	b lbl_8022E8A8
/* 8022E3A4 00224124  38 7D 00 28 */	addi r3, r29, 0x28
/* 8022E3A8 00224128  4C C6 31 82 */	crclr 6
/* 8022E3AC 0022412C  48 00 05 7D */	bl WUD_DEBUGPrint
/* 8022E3B0 00224130  88 9E 00 07 */	lbz r4, 7(r30)
/* 8022E3B4 00224134  38 7D 00 3C */	addi r3, r29, 0x3c
/* 8022E3B8 00224138  88 BE 00 00 */	lbz r5, 0(r30)
/* 8022E3BC 0022413C  88 DE 00 01 */	lbz r6, 1(r30)
/* 8022E3C0 00224140  88 FE 00 02 */	lbz r7, 2(r30)
/* 8022E3C4 00224144  89 1E 00 03 */	lbz r8, 3(r30)
/* 8022E3C8 00224148  89 3E 00 04 */	lbz r9, 4(r30)
/* 8022E3CC 0022414C  89 5E 00 05 */	lbz r10, 5(r30)
/* 8022E3D0 00224150  4C C6 31 82 */	crclr 6
/* 8022E3D4 00224154  48 00 05 55 */	bl WUD_DEBUGPrint
/* 8022E3D8 00224158  88 9E 00 06 */	lbz r4, 6(r30)
/* 8022E3DC 0022415C  2C 04 00 00 */	cmpwi r4, 0
/* 8022E3E0 00224160  40 82 01 30 */	bne lbl_8022E510
/* 8022E3E4 00224164  3F A0 80 50 */	lis r29, lbl_804FBBF0@ha
/* 8022E3E8 00224168  7F C4 F3 78 */	mr r4, r30
/* 8022E3EC 0022416C  3B BD BB F0 */	addi r29, r29, lbl_804FBBF0@l
/* 8022E3F0 00224170  38 A0 00 06 */	li r5, 6
/* 8022E3F4 00224174  38 7D 00 40 */	addi r3, r29, 0x40
/* 8022E3F8 00224178  48 1C 7D 59 */	bl memcmp
/* 8022E3FC 0022417C  2C 03 00 00 */	cmpwi r3, 0
/* 8022E400 00224180  41 82 00 10 */	beq lbl_8022E410
/* 8022E404 00224184  7F C3 F3 78 */	mr r3, r30
/* 8022E408 00224188  4B FF E5 79 */	bl WUDiGetDevInfo
/* 8022E40C 0022418C  7C 7D 1B 78 */	mr r29, r3
lbl_8022E410:
/* 8022E410 00224190  88 1D 00 59 */	lbz r0, 0x59(r29)
/* 8022E414 00224194  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022E418 00224198  41 82 00 14 */	beq lbl_8022E42C
/* 8022E41C 0022419C  40 80 00 24 */	bge lbl_8022E440
/* 8022E420 002241A0  2C 00 00 02 */	cmpwi r0, 2
/* 8022E424 002241A4  41 82 00 14 */	beq lbl_8022E438
/* 8022E428 002241A8  48 00 00 18 */	b lbl_8022E440
lbl_8022E42C:
/* 8022E42C 002241AC  38 00 00 12 */	li r0, 0x12
/* 8022E430 002241B0  98 1F 00 0C */	stb r0, 0xc(r31)
/* 8022E434 002241B4  48 00 00 0C */	b lbl_8022E440
lbl_8022E438:
/* 8022E438 002241B8  38 00 00 17 */	li r0, 0x17
/* 8022E43C 002241BC  98 1F 00 0C */	stb r0, 0xc(r31)
lbl_8022E440:
/* 8022E440 002241C0  38 00 00 08 */	li r0, 8
/* 8022E444 002241C4  7F C3 F3 78 */	mr r3, r30
/* 8022E448 002241C8  98 1D 00 59 */	stb r0, 0x59(r29)
/* 8022E44C 002241CC  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E450 002241D0  98 1D 00 56 */	stb r0, 0x56(r29)
/* 8022E454 002241D4  88 9F 06 E4 */	lbz r4, 0x6e4(r31)
/* 8022E458 002241D8  38 04 00 01 */	addi r0, r4, 1
/* 8022E45C 002241DC  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 8022E460 002241E0  4B FF E5 21 */	bl WUDiGetDevInfo
/* 8022E464 002241E4  2C 03 00 00 */	cmpwi r3, 0
/* 8022E468 002241E8  7C 7D 1B 78 */	mr r29, r3
/* 8022E46C 002241EC  40 82 00 0C */	bne lbl_8022E478
/* 8022E470 002241F0  3F A0 80 50 */	lis r29, lbl_804FBBF0@ha
/* 8022E474 002241F4  3B BD BB F0 */	addi r29, r29, lbl_804FBBF0@l
lbl_8022E478:
/* 8022E478 002241F8  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E47C 002241FC  3C A0 80 50 */	lis r5, lbl_804FC1C0@ha
/* 8022E480 00224200  3C 80 80 50 */	lis r4, lbl_804FD408@ha
/* 8022E484 00224204  3C 60 80 50 */	lis r3, lbl_804FD428@ha
/* 8022E488 00224208  38 DD 00 40 */	addi r6, r29, 0x40
/* 8022E48C 0022420C  54 00 10 3A */	slwi r0, r0, 2
/* 8022E490 00224210  38 A5 C1 C0 */	addi r5, r5, lbl_804FC1C0@l
/* 8022E494 00224214  38 84 D4 08 */	addi r4, r4, lbl_804FD408@l
/* 8022E498 00224218  7C C5 01 2E */	stwx r6, r5, r0
/* 8022E49C 0022421C  38 A0 00 00 */	li r5, 0
/* 8022E4A0 00224220  38 63 D4 28 */	addi r3, r3, lbl_804FD428@l
/* 8022E4A4 00224224  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E4A8 00224228  54 00 08 3C */	slwi r0, r0, 1
/* 8022E4AC 0022422C  7C A4 03 2E */	sthx r5, r4, r0
/* 8022E4B0 00224230  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E4B4 00224234  54 00 08 3C */	slwi r0, r0, 1
/* 8022E4B8 00224238  7C A3 03 2E */	sthx r5, r3, r0
/* 8022E4BC 0022423C  88 1D 00 5B */	lbz r0, 0x5b(r29)
/* 8022E4C0 00224240  28 00 00 03 */	cmplwi r0, 3
/* 8022E4C4 00224244  41 82 00 0C */	beq lbl_8022E4D0
/* 8022E4C8 00224248  28 00 00 01 */	cmplwi r0, 1
/* 8022E4CC 0022424C  40 82 00 10 */	bne lbl_8022E4DC
lbl_8022E4D0:
/* 8022E4D0 00224250  7F A3 EB 78 */	mr r3, r29
/* 8022E4D4 00224254  4B FF E6 45 */	bl WUDiMoveTopSmpDevInfoPtr
/* 8022E4D8 00224258  48 00 00 0C */	b lbl_8022E4E4
lbl_8022E4DC:
/* 8022E4DC 0022425C  7F A3 EB 78 */	mr r3, r29
/* 8022E4E0 00224260  4B FF E9 C1 */	bl WUDiMoveTopStdDevInfoPtr
lbl_8022E4E4:
/* 8022E4E4 00224264  38 7D 00 40 */	addi r3, r29, 0x40
/* 8022E4E8 00224268  38 80 00 08 */	li r4, 8
/* 8022E4EC 0022426C  4B FF D6 C5 */	bl WUDSetSniffMode
/* 8022E4F0 00224270  81 9F 06 F0 */	lwz r12, 0x6f0(r31)
/* 8022E4F4 00224274  2C 0C 00 00 */	cmpwi r12, 0
/* 8022E4F8 00224278  41 82 03 B0 */	beq lbl_8022E8A8
/* 8022E4FC 0022427C  7F A3 EB 78 */	mr r3, r29
/* 8022E500 00224280  38 80 00 01 */	li r4, 1
/* 8022E504 00224284  7D 89 03 A6 */	mtctr r12
/* 8022E508 00224288  4E 80 04 21 */	bctrl 
/* 8022E50C 0022428C  48 00 03 9C */	b lbl_8022E8A8
lbl_8022E510:
/* 8022E510 00224290  38 7D 00 70 */	addi r3, r29, 0x70
/* 8022E514 00224294  4C C6 31 82 */	crclr 6
/* 8022E518 00224298  48 00 04 11 */	bl WUD_DEBUGPrint
/* 8022E51C 0022429C  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8022E520 002242A0  2C 00 00 00 */	cmpwi r0, 0
/* 8022E524 002242A4  41 82 00 6C */	beq lbl_8022E590
/* 8022E528 002242A8  3F A0 80 50 */	lis r29, lbl_804FBBF0@ha
/* 8022E52C 002242AC  7F C3 F3 78 */	mr r3, r30
/* 8022E530 002242B0  3B BD BB F0 */	addi r29, r29, lbl_804FBBF0@l
/* 8022E534 002242B4  38 A0 00 06 */	li r5, 6
/* 8022E538 002242B8  38 9D 00 40 */	addi r4, r29, 0x40
/* 8022E53C 002242BC  48 1C 7C 15 */	bl memcmp
/* 8022E540 002242C0  2C 03 00 00 */	cmpwi r3, 0
/* 8022E544 002242C4  40 82 03 64 */	bne lbl_8022E8A8
/* 8022E548 002242C8  88 1D 00 59 */	lbz r0, 0x59(r29)
/* 8022E54C 002242CC  28 00 00 02 */	cmplwi r0, 2
/* 8022E550 002242D0  40 82 03 58 */	bne lbl_8022E8A8
/* 8022E554 002242D4  7F C3 F3 78 */	mr r3, r30
/* 8022E558 002242D8  4B FF E4 29 */	bl WUDiGetDevInfo
/* 8022E55C 002242DC  2C 03 00 00 */	cmpwi r3, 0
/* 8022E560 002242E0  41 82 00 24 */	beq lbl_8022E584
/* 8022E564 002242E4  88 1E 00 06 */	lbz r0, 6(r30)
/* 8022E568 002242E8  28 00 00 0C */	cmplwi r0, 0xc
/* 8022E56C 002242EC  40 82 00 18 */	bne lbl_8022E584
/* 8022E570 002242F0  7F C3 F3 78 */	mr r3, r30
/* 8022E574 002242F4  4B FF E2 B1 */	bl WUDiRemoveDevice
/* 8022E578 002242F8  88 7F 06 E5 */	lbz r3, 0x6e5(r31)
/* 8022E57C 002242FC  38 03 FF FF */	addi r0, r3, -1
/* 8022E580 00224300  98 1F 06 E5 */	stb r0, 0x6e5(r31)
lbl_8022E584:
/* 8022E584 00224304  38 00 00 FF */	li r0, 0xff
/* 8022E588 00224308  98 1F 00 0C */	stb r0, 0xc(r31)
/* 8022E58C 0022430C  48 00 03 1C */	b lbl_8022E8A8
lbl_8022E590:
/* 8022E590 00224310  7F C3 F3 78 */	mr r3, r30
/* 8022E594 00224314  4B FF E3 ED */	bl WUDiGetDevInfo
/* 8022E598 00224318  2C 03 00 00 */	cmpwi r3, 0
/* 8022E59C 0022431C  41 82 03 0C */	beq lbl_8022E8A8
/* 8022E5A0 00224320  88 1E 00 06 */	lbz r0, 6(r30)
/* 8022E5A4 00224324  28 00 00 0C */	cmplwi r0, 0xc
/* 8022E5A8 00224328  40 82 03 00 */	bne lbl_8022E8A8
/* 8022E5AC 0022432C  7F C3 F3 78 */	mr r3, r30
/* 8022E5B0 00224330  4B FF E3 D1 */	bl WUDiGetDevInfo
/* 8022E5B4 00224334  2C 03 00 00 */	cmpwi r3, 0
/* 8022E5B8 00224338  41 82 00 24 */	beq lbl_8022E5DC
/* 8022E5BC 0022433C  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 8022E5C0 00224340  28 00 00 03 */	cmplwi r0, 3
/* 8022E5C4 00224344  41 82 00 0C */	beq lbl_8022E5D0
/* 8022E5C8 00224348  28 00 00 01 */	cmplwi r0, 1
/* 8022E5CC 0022434C  40 82 00 0C */	bne lbl_8022E5D8
lbl_8022E5D0:
/* 8022E5D0 00224350  4B FF E6 61 */	bl WUDiMoveBottomSmpDevInfoPtr
/* 8022E5D4 00224354  48 00 00 08 */	b lbl_8022E5DC
lbl_8022E5D8:
/* 8022E5D8 00224358  4B FF E9 E1 */	bl WUDiMoveBottomStdDevInfoPtr
lbl_8022E5DC:
/* 8022E5DC 0022435C  7F C3 F3 78 */	mr r3, r30
/* 8022E5E0 00224360  4B FF E2 45 */	bl WUDiRemoveDevice
/* 8022E5E4 00224364  88 7F 06 E5 */	lbz r3, 0x6e5(r31)
/* 8022E5E8 00224368  38 03 FF FF */	addi r0, r3, -1
/* 8022E5EC 0022436C  98 1F 06 E5 */	stb r0, 0x6e5(r31)
/* 8022E5F0 00224370  48 00 02 B8 */	b lbl_8022E8A8
/* 8022E5F4 00224374  38 7D 00 80 */	addi r3, r29, 0x80
/* 8022E5F8 00224378  4C C6 31 82 */	crclr 6
/* 8022E5FC 0022437C  48 00 03 2D */	bl WUD_DEBUGPrint
/* 8022E600 00224380  88 9F 06 E4 */	lbz r4, 0x6e4(r31)
/* 8022E604 00224384  38 7D 00 94 */	addi r3, r29, 0x94
/* 8022E608 00224388  38 04 FF FF */	addi r0, r4, -1
/* 8022E60C 0022438C  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 8022E610 00224390  88 9E 00 01 */	lbz r4, 1(r30)
/* 8022E614 00224394  88 BE 00 00 */	lbz r5, 0(r30)
/* 8022E618 00224398  4C C6 31 82 */	crclr 6
/* 8022E61C 0022439C  48 00 03 0D */	bl WUD_DEBUGPrint
/* 8022E620 002243A0  88 1E 00 01 */	lbz r0, 1(r30)
/* 8022E624 002243A4  3C 60 80 50 */	lis r3, lbl_804FC1C0@ha
/* 8022E628 002243A8  38 63 C1 C0 */	addi r3, r3, lbl_804FC1C0@l
/* 8022E62C 002243AC  54 00 10 3A */	slwi r0, r0, 2
/* 8022E630 002243B0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8022E634 002243B4  4B FF E3 4D */	bl WUDiGetDevInfo
/* 8022E638 002243B8  2C 03 00 00 */	cmpwi r3, 0
/* 8022E63C 002243BC  7C 7D 1B 78 */	mr r29, r3
/* 8022E640 002243C0  41 82 00 28 */	beq lbl_8022E668
/* 8022E644 002243C4  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 8022E648 002243C8  28 00 00 03 */	cmplwi r0, 3
/* 8022E64C 002243CC  41 82 00 0C */	beq lbl_8022E658
/* 8022E650 002243D0  28 00 00 01 */	cmplwi r0, 1
/* 8022E654 002243D4  40 82 00 10 */	bne lbl_8022E664
lbl_8022E658:
/* 8022E658 002243D8  7F A3 EB 78 */	mr r3, r29
/* 8022E65C 002243DC  4B FF E6 ED */	bl WUDiMoveTopOfDisconnectedSmpDevice
/* 8022E660 002243E0  48 00 00 08 */	b lbl_8022E668
lbl_8022E664:
/* 8022E664 002243E4  4B FF EA 6D */	bl WUDiMoveTopOfDisconnectedStdDevice
lbl_8022E668:
/* 8022E668 002243E8  88 1E 00 01 */	lbz r0, 1(r30)
/* 8022E66C 002243EC  3C A0 80 50 */	lis r5, lbl_804FC1C0@ha
/* 8022E670 002243F0  3C 80 80 50 */	lis r4, lbl_804FD408@ha
/* 8022E674 002243F4  81 9F 06 F0 */	lwz r12, 0x6f0(r31)
/* 8022E678 002243F8  54 00 10 3A */	slwi r0, r0, 2
/* 8022E67C 002243FC  38 A5 C1 C0 */	addi r5, r5, lbl_804FC1C0@l
/* 8022E680 00224400  38 C0 00 00 */	li r6, 0
/* 8022E684 00224404  3C 60 80 50 */	lis r3, lbl_804FD428@ha
/* 8022E688 00224408  7C C5 01 2E */	stwx r6, r5, r0
/* 8022E68C 0022440C  38 84 D4 08 */	addi r4, r4, lbl_804FD408@l
/* 8022E690 00224410  2C 0C 00 00 */	cmpwi r12, 0
/* 8022E694 00224414  38 63 D4 28 */	addi r3, r3, lbl_804FD428@l
/* 8022E698 00224418  88 1E 00 01 */	lbz r0, 1(r30)
/* 8022E69C 0022441C  54 00 08 3C */	slwi r0, r0, 1
/* 8022E6A0 00224420  7C C4 03 2E */	sthx r6, r4, r0
/* 8022E6A4 00224424  88 1E 00 01 */	lbz r0, 1(r30)
/* 8022E6A8 00224428  54 00 08 3C */	slwi r0, r0, 1
/* 8022E6AC 0022442C  7C C3 03 2E */	sthx r6, r3, r0
/* 8022E6B0 00224430  41 82 01 F8 */	beq lbl_8022E8A8
/* 8022E6B4 00224434  7F A3 EB 78 */	mr r3, r29
/* 8022E6B8 00224438  38 80 00 00 */	li r4, 0
/* 8022E6BC 0022443C  7D 89 03 A6 */	mtctr r12
/* 8022E6C0 00224440  4E 80 04 21 */	bctrl 
/* 8022E6C4 00224444  48 00 01 E4 */	b lbl_8022E8A8
/* 8022E6C8 00224448  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 8022E6CC 0022444C  4C C6 31 82 */	crclr 6
/* 8022E6D0 00224450  48 00 02 59 */	bl WUD_DEBUGPrint
/* 8022E6D4 00224454  48 00 01 D4 */	b lbl_8022E8A8
/* 8022E6D8 00224458  38 7D 00 CC */	addi r3, r29, 0xcc
/* 8022E6DC 0022445C  4C C6 31 82 */	crclr 6
/* 8022E6E0 00224460  48 00 02 49 */	bl WUD_DEBUGPrint
/* 8022E6E4 00224464  48 00 01 C4 */	b lbl_8022E8A8
/* 8022E6E8 00224468  38 7D 00 E0 */	addi r3, r29, 0xe0
/* 8022E6EC 0022446C  4C C6 31 82 */	crclr 6
/* 8022E6F0 00224470  48 00 02 39 */	bl WUD_DEBUGPrint
/* 8022E6F4 00224474  48 00 01 B4 */	b lbl_8022E8A8
/* 8022E6F8 00224478  38 7D 00 F8 */	addi r3, r29, 0xf8
/* 8022E6FC 0022447C  4C C6 31 82 */	crclr 6
/* 8022E700 00224480  48 00 02 29 */	bl WUD_DEBUGPrint
/* 8022E704 00224484  48 00 01 A4 */	b lbl_8022E8A8
/* 8022E708 00224488  38 7D 01 10 */	addi r3, r29, 0x110
/* 8022E70C 0022448C  4C C6 31 82 */	crclr 6
/* 8022E710 00224490  48 00 02 19 */	bl WUD_DEBUGPrint
/* 8022E714 00224494  48 00 01 94 */	b lbl_8022E8A8
/* 8022E718 00224498  38 7D 01 28 */	addi r3, r29, 0x128
/* 8022E71C 0022449C  4C C6 31 82 */	crclr 6
/* 8022E720 002244A0  48 00 02 09 */	bl WUD_DEBUGPrint
/* 8022E724 002244A4  48 00 01 84 */	b lbl_8022E8A8
/* 8022E728 002244A8  38 7D 01 40 */	addi r3, r29, 0x140
/* 8022E72C 002244AC  4C C6 31 82 */	crclr 6
/* 8022E730 002244B0  48 00 01 F9 */	bl WUD_DEBUGPrint
/* 8022E734 002244B4  48 00 01 74 */	b lbl_8022E8A8
/* 8022E738 002244B8  38 7D 01 58 */	addi r3, r29, 0x158
/* 8022E73C 002244BC  4C C6 31 82 */	crclr 6
/* 8022E740 002244C0  48 00 01 E9 */	bl WUD_DEBUGPrint
/* 8022E744 002244C4  88 1E 00 05 */	lbz r0, 5(r30)
/* 8022E748 002244C8  38 7D 01 6C */	addi r3, r29, 0x16c
/* 8022E74C 002244CC  90 01 00 08 */	stw r0, 8(r1)
/* 8022E750 002244D0  88 9E 00 06 */	lbz r4, 6(r30)
/* 8022E754 002244D4  88 BE 00 07 */	lbz r5, 7(r30)
/* 8022E758 002244D8  88 DE 00 00 */	lbz r6, 0(r30)
/* 8022E75C 002244DC  88 FE 00 01 */	lbz r7, 1(r30)
/* 8022E760 002244E0  89 1E 00 02 */	lbz r8, 2(r30)
/* 8022E764 002244E4  89 3E 00 03 */	lbz r9, 3(r30)
/* 8022E768 002244E8  89 5E 00 04 */	lbz r10, 4(r30)
/* 8022E76C 002244EC  4C C6 31 82 */	crclr 6
/* 8022E770 002244F0  48 00 01 B9 */	bl WUD_DEBUGPrint
/* 8022E774 002244F4  7F C3 F3 78 */	mr r3, r30
/* 8022E778 002244F8  4B FF E2 09 */	bl WUDiGetDevInfo
/* 8022E77C 002244FC  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E780 00224500  3C C0 80 50 */	lis r6, lbl_804FC1C0@ha
/* 8022E784 00224504  3C A0 80 50 */	lis r5, lbl_804FD408@ha
/* 8022E788 00224508  3C 80 80 50 */	lis r4, lbl_804FD428@ha
/* 8022E78C 0022450C  98 03 00 56 */	stb r0, 0x56(r3)
/* 8022E790 00224510  38 E3 00 40 */	addi r7, r3, 0x40
/* 8022E794 00224514  38 C6 C1 C0 */	addi r6, r6, lbl_804FC1C0@l
/* 8022E798 00224518  38 A5 D4 08 */	addi r5, r5, lbl_804FD408@l
/* 8022E79C 0022451C  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E7A0 00224520  38 60 00 00 */	li r3, 0
/* 8022E7A4 00224524  38 84 D4 28 */	addi r4, r4, lbl_804FD428@l
/* 8022E7A8 00224528  54 00 10 3A */	slwi r0, r0, 2
/* 8022E7AC 0022452C  7C E6 01 2E */	stwx r7, r6, r0
/* 8022E7B0 00224530  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E7B4 00224534  54 00 08 3C */	slwi r0, r0, 1
/* 8022E7B8 00224538  7C 65 03 2E */	sthx r3, r5, r0
/* 8022E7BC 0022453C  88 1E 00 07 */	lbz r0, 7(r30)
/* 8022E7C0 00224540  54 00 08 3C */	slwi r0, r0, 1
/* 8022E7C4 00224544  7C 64 03 2E */	sthx r3, r4, r0
/* 8022E7C8 00224548  48 00 00 E0 */	b lbl_8022E8A8
/* 8022E7CC 0022454C  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 8022E7D0 00224550  4C C6 31 82 */	crclr 6
/* 8022E7D4 00224554  48 00 01 55 */	bl WUD_DEBUGPrint
/* 8022E7D8 00224558  88 1E 00 05 */	lbz r0, 5(r30)
/* 8022E7DC 0022455C  38 7D 01 6C */	addi r3, r29, 0x16c
/* 8022E7E0 00224560  90 01 00 08 */	stw r0, 8(r1)
/* 8022E7E4 00224564  88 9E 00 06 */	lbz r4, 6(r30)
/* 8022E7E8 00224568  88 BE 00 07 */	lbz r5, 7(r30)
/* 8022E7EC 0022456C  88 DE 00 00 */	lbz r6, 0(r30)
/* 8022E7F0 00224570  88 FE 00 01 */	lbz r7, 1(r30)
/* 8022E7F4 00224574  89 1E 00 02 */	lbz r8, 2(r30)
/* 8022E7F8 00224578  89 3E 00 03 */	lbz r9, 3(r30)
/* 8022E7FC 0022457C  89 5E 00 04 */	lbz r10, 4(r30)
/* 8022E800 00224580  4C C6 31 82 */	crclr 6
/* 8022E804 00224584  48 00 01 25 */	bl WUD_DEBUGPrint
/* 8022E808 00224588  48 00 00 A0 */	b lbl_8022E8A8
/* 8022E80C 0022458C  38 7D 01 C0 */	addi r3, r29, 0x1c0
/* 8022E810 00224590  4C C6 31 82 */	crclr 6
/* 8022E814 00224594  48 00 01 15 */	bl WUD_DEBUGPrint
/* 8022E818 00224598  48 00 00 90 */	b lbl_8022E8A8
/* 8022E81C 0022459C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8022E820 002245A0  88 7F 06 E5 */	lbz r3, 0x6e5(r31)
/* 8022E824 002245A4  B0 1F 07 44 */	sth r0, 0x744(r31)
/* 8022E828 002245A8  A0 04 00 02 */	lhz r0, 2(r4)
/* 8022E82C 002245AC  B0 1F 07 46 */	sth r0, 0x746(r31)
/* 8022E830 002245B0  A0 04 00 04 */	lhz r0, 4(r4)
/* 8022E834 002245B4  7C 03 00 00 */	cmpw r3, r0
/* 8022E838 002245B8  40 80 00 18 */	bge lbl_8022E850
/* 8022E83C 002245BC  38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 8022E840 002245C0  4C C6 31 82 */	crclr 6
/* 8022E844 002245C4  4B FA 9D BD */	bl OSReport
/* 8022E848 002245C8  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8022E84C 002245CC  98 1F 06 E5 */	stb r0, 0x6e5(r31)
lbl_8022E850:
/* 8022E850 002245D0  3C A0 80 50 */	lis r5, lbl_804FD408@ha
/* 8022E854 002245D4  3C 60 80 50 */	lis r3, lbl_804FD428@ha
/* 8022E858 002245D8  7F C6 F3 78 */	mr r6, r30
/* 8022E85C 002245DC  38 E0 00 00 */	li r7, 0
/* 8022E860 002245E0  38 A5 D4 08 */	addi r5, r5, lbl_804FD408@l
/* 8022E864 002245E4  38 63 D4 28 */	addi r3, r3, lbl_804FD428@l
/* 8022E868 002245E8  48 00 00 34 */	b lbl_8022E89C
lbl_8022E86C:
/* 8022E86C 002245EC  88 06 00 06 */	lbz r0, 6(r6)
/* 8022E870 002245F0  28 00 00 10 */	cmplwi r0, 0x10
/* 8022E874 002245F4  40 80 00 20 */	bge lbl_8022E894
/* 8022E878 002245F8  A0 86 00 08 */	lhz r4, 8(r6)
/* 8022E87C 002245FC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 8022E880 00224600  7C 85 03 2E */	sthx r4, r5, r0
/* 8022E884 00224604  88 06 00 06 */	lbz r0, 6(r6)
/* 8022E888 00224608  A0 86 00 0A */	lhz r4, 0xa(r6)
/* 8022E88C 0022460C  54 00 08 3C */	slwi r0, r0, 1
/* 8022E890 00224610  7C 83 03 2E */	sthx r4, r3, r0
lbl_8022E894:
/* 8022E894 00224614  38 C6 00 06 */	addi r6, r6, 6
/* 8022E898 00224618  38 E7 00 01 */	addi r7, r7, 1
lbl_8022E89C:
/* 8022E89C 0022461C  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8022E8A0 00224620  7C 07 00 00 */	cmpw r7, r0
/* 8022E8A4 00224624  41 80 FF C8 */	blt lbl_8022E86C
lbl_8022E8A8:
/* 8022E8A8 00224628  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022E8AC 0022462C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022E8B0 00224630  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8022E8B4 00224634  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8022E8B8 00224638  7C 08 03 A6 */	mtlr r0
/* 8022E8BC 0022463C  38 21 00 20 */	addi r1, r1, 0x20
/* 8022E8C0 00224640  4E 80 00 20 */	blr 

.global bta_hh_co_data
bta_hh_co_data:
/* 8022E8C4 00224644  28 08 00 03 */	cmplwi r8, 3
/* 8022E8C8 00224648  3C C0 80 50 */	lis r6, lbl_804FB4A0@ha
/* 8022E8CC 0022464C  38 C6 B4 A0 */	addi r6, r6, lbl_804FB4A0@l
/* 8022E8D0 00224650  40 82 00 18 */	bne lbl_8022E8E8
/* 8022E8D4 00224654  81 86 06 EC */	lwz r12, 0x6ec(r6)
/* 8022E8D8 00224658  2C 0C 00 00 */	cmpwi r12, 0
/* 8022E8DC 0022465C  4D 82 00 20 */	beqlr 
/* 8022E8E0 00224660  7D 89 03 A6 */	mtctr r12
/* 8022E8E4 00224664  4E 80 04 20 */	bctr 
lbl_8022E8E8:
/* 8022E8E8 00224668  3C 60 80 48 */	lis r3, lbl_8047FA70@ha
/* 8022E8EC 0022466C  7D 04 43 78 */	mr r4, r8
/* 8022E8F0 00224670  38 63 FA 70 */	addi r3, r3, lbl_8047FA70@l
/* 8022E8F4 00224674  4C C6 31 82 */	crclr 6
/* 8022E8F8 00224678  48 00 00 30 */	b WUD_DEBUGPrint
/* 8022E8FC 0022467C  4E 80 00 20 */	blr 

.global bta_hh_co_open
bta_hh_co_open:
/* 8022E900 00224680  3C 60 80 48 */	lis r3, lbl_8047FA88@ha
/* 8022E904 00224684  38 63 FA 88 */	addi r3, r3, lbl_8047FA88@l
/* 8022E908 00224688  4C C6 31 82 */	crclr 6
/* 8022E90C 0022468C  48 00 00 1C */	b WUD_DEBUGPrint

.global bta_hh_co_close
bta_hh_co_close:
/* 8022E910 00224690  3C 60 80 48 */	lis r3, lbl_8047FA9C@ha
/* 8022E914 00224694  38 63 FA 9C */	addi r3, r3, lbl_8047FA9C@l
/* 8022E918 00224698  4C C6 31 82 */	crclr 6
/* 8022E91C 0022469C  48 00 00 0C */	b WUD_DEBUGPrint

.global bta_dm_co_get_compress_memory
bta_dm_co_get_compress_memory:
/* 8022E920 002246A0  38 60 00 00 */	li r3, 0
/* 8022E924 002246A4  4E 80 00 20 */	blr 

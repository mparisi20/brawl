.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global THPAudioDecode
THPAudioDecode:
/* 8025F508 00255288  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8025F50C 0025528C  7C 08 02 A6 */	mflr r0
/* 8025F510 00255290  90 01 00 44 */	stw r0, 0x44(r1)
/* 8025F514 00255294  39 61 00 40 */	addi r11, r1, 0x40
/* 8025F518 00255298  48 19 1D ED */	bl _savegpr_20
/* 8025F51C 0025529C  2C 03 00 00 */	cmpwi r3, 0
/* 8025F520 002552A0  41 82 00 0C */	beq lbl_8025F52C
/* 8025F524 002552A4  2C 04 00 00 */	cmpwi r4, 0
/* 8025F528 002552A8  40 82 00 0C */	bne lbl_8025F534
lbl_8025F52C:
/* 8025F52C 002552AC  38 60 00 00 */	li r3, 0
/* 8025F530 002552B0  48 00 04 54 */	b lbl_8025F984
lbl_8025F534:
/* 8025F534 002552B4  2C 05 00 01 */	cmpwi r5, 1
/* 8025F538 002552B8  80 A4 00 00 */	lwz r5, 0(r4)
/* 8025F53C 002552BC  3A 84 00 50 */	addi r20, r4, 0x50
/* 8025F540 002552C0  7D 94 2A 14 */	add r12, r20, r5
/* 8025F544 002552C4  40 82 00 1C */	bne lbl_8025F560
/* 8025F548 002552C8  80 04 00 04 */	lwz r0, 4(r4)
/* 8025F54C 002552CC  7C 7E 1B 78 */	mr r30, r3
/* 8025F550 002552D0  39 00 00 01 */	li r8, 1
/* 8025F554 002552D4  54 00 08 3C */	slwi r0, r0, 1
/* 8025F558 002552D8  7F E3 02 14 */	add r31, r3, r0
/* 8025F55C 002552DC  48 00 00 10 */	b lbl_8025F56C
lbl_8025F560:
/* 8025F560 002552E0  7C 7E 1B 78 */	mr r30, r3
/* 8025F564 002552E4  3B E3 00 02 */	addi r31, r3, 2
/* 8025F568 002552E8  39 00 00 02 */	li r8, 2
lbl_8025F56C:
/* 8025F56C 002552EC  2C 05 00 00 */	cmpwi r5, 0
/* 8025F570 002552F0  40 82 01 68 */	bne lbl_8025F6D8
/* 8025F574 002552F4  88 B4 00 00 */	lbz r5, 0(r20)
/* 8025F578 002552F8  3E E0 80 00 */	lis r23, 0x7FFFFFFF@ha
/* 8025F57C 002552FC  39 60 00 00 */	li r11, 0
/* 8025F580 00255300  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 8025F584 00255304  A9 24 00 48 */	lha r9, 0x48(r4)
/* 8025F588 00255308  54 A0 E7 7E */	rlwinm r0, r5, 0x1c, 0x1d, 0x1f
/* 8025F58C 0025530C  54 A7 07 3E */	clrlwi r7, r5, 0x1c
/* 8025F590 00255310  A9 44 00 4A */	lha r10, 0x4a(r4)
/* 8025F594 00255314  55 08 08 3C */	slwi r8, r8, 1
/* 8025F598 00255318  38 B4 00 01 */	addi r5, r20, 1
/* 8025F59C 0025531C  3B 63 80 00 */	addi r27, r3, 0x00008000@l
/* 8025F5A0 00255320  3B 37 FF FF */	addi r25, r23, 0x7FFFFFFF@l
/* 8025F5A4 00255324  6D 78 80 00 */	xoris r24, r11, 0x8000
/* 8025F5A8 00255328  38 C0 00 02 */	li r6, 2
/* 8025F5AC 0025532C  3B 40 00 00 */	li r26, 0
/* 8025F5B0 00255330  3A C0 FF FF */	li r22, -1
/* 8025F5B4 00255334  48 00 01 14 */	b lbl_8025F6C8
lbl_8025F5B8:
/* 8025F5B8 00255338  54 C3 07 3F */	clrlwi. r3, r6, 0x1c
/* 8025F5BC 0025533C  40 82 00 18 */	bne lbl_8025F5D4
/* 8025F5C0 00255340  88 65 00 00 */	lbz r3, 0(r5)
/* 8025F5C4 00255344  38 A5 00 01 */	addi r5, r5, 1
/* 8025F5C8 00255348  38 C6 00 02 */	addi r6, r6, 2
/* 8025F5CC 0025534C  54 60 E7 7E */	rlwinm r0, r3, 0x1c, 0x1d, 0x1f
/* 8025F5D0 00255350  54 67 07 3E */	clrlwi r7, r3, 0x1c
lbl_8025F5D4:
/* 8025F5D4 00255354  54 C3 07 FF */	clrlwi. r3, r6, 0x1f
/* 8025F5D8 00255358  41 82 00 18 */	beq lbl_8025F5F0
/* 8025F5DC 0025535C  88 65 00 00 */	lbz r3, 0(r5)
/* 8025F5E0 00255360  38 A5 00 01 */	addi r5, r5, 1
/* 8025F5E4 00255364  54 63 E0 06 */	slwi r3, r3, 0x1c
/* 8025F5E8 00255368  7C 75 E6 70 */	srawi r21, r3, 0x1c
/* 8025F5EC 0025536C  48 00 00 10 */	b lbl_8025F5FC
lbl_8025F5F0:
/* 8025F5F0 00255370  88 65 00 00 */	lbz r3, 0(r5)
/* 8025F5F4 00255374  54 63 C0 06 */	rlwinm r3, r3, 0x18, 0, 3
/* 8025F5F8 00255378  7C 75 E6 70 */	srawi r21, r3, 0x1c
lbl_8025F5FC:
/* 8025F5FC 0025537C  54 0C 15 BA */	rlwinm r12, r0, 2, 0x16, 0x1d
/* 8025F600 00255380  54 E3 06 3E */	clrlwi r3, r7, 0x18
/* 8025F604 00255384  7D 84 62 14 */	add r12, r4, r12
/* 8025F608 00255388  7D 5C 07 34 */	extsh r28, r10
/* 8025F60C 0025538C  A9 4C 00 0A */	lha r10, 0xa(r12)
/* 8025F610 00255390  7E A3 18 30 */	slw r3, r21, r3
/* 8025F614 00255394  A9 8C 00 08 */	lha r12, 8(r12)
/* 8025F618 00255398  7D 35 07 34 */	extsh r21, r9
/* 8025F61C 0025539C  7F 9C 51 D6 */	mullw r28, r28, r10
/* 8025F620 002553A0  54 6A 58 28 */	slwi r10, r3, 0xb
/* 8025F624 002553A4  38 C6 00 01 */	addi r6, r6, 1
/* 8025F628 002553A8  7E B5 61 D6 */	mullw r21, r21, r12
/* 8025F62C 002553AC  7F 83 FE 70 */	srawi r3, r28, 0x1f
/* 8025F630 002553B0  7E AC FE 70 */	srawi r12, r21, 0x1f
/* 8025F634 002553B4  7F 9C A8 14 */	addc r28, r28, r21
/* 8025F638 002553B8  7E A3 61 14 */	adde r21, r3, r12
/* 8025F63C 002553BC  7D 43 FE 70 */	srawi r3, r10, 0x1f
/* 8025F640 002553C0  7D 9C 50 14 */	addc r12, r28, r10
/* 8025F644 002553C4  7C 75 19 14 */	adde r3, r21, r3
/* 8025F648 002553C8  55 8A 28 34 */	slwi r10, r12, 5
/* 8025F64C 002553CC  54 63 28 34 */	slwi r3, r3, 5
/* 8025F650 002553D0  51 83 2E FE */	rlwimi r3, r12, 5, 0x1b, 0x1f
/* 8025F654 002553D4  7E 8A D8 14 */	addc r20, r10, r27
/* 8025F658 002553D8  7C 63 D1 14 */	adde r3, r3, r26
/* 8025F65C 002553DC  6C 6C 80 00 */	xoris r12, r3, 0x8000
/* 8025F660 002553E0  7D 54 C8 10 */	subfc r10, r20, r25
/* 8025F664 002553E4  7D 8C C1 10 */	subfe r12, r12, r24
/* 8025F668 002553E8  7D 98 C1 10 */	subfe r12, r24, r24
/* 8025F66C 002553EC  7D 8C 00 D1 */	neg. r12, r12
/* 8025F670 002553F0  41 82 00 0C */	beq lbl_8025F67C
/* 8025F674 002553F4  3A 97 FF FF */	addi r20, r23, -1
/* 8025F678 002553F8  38 60 00 00 */	li r3, 0
lbl_8025F67C:
/* 8025F67C 002553FC  6C 6A 80 00 */	xoris r10, r3, 0x8000
/* 8025F680 00255400  6E D5 80 00 */	xoris r21, r22, 0x8000
/* 8025F684 00255404  7D 97 A0 10 */	subfc r12, r23, r20
/* 8025F688 00255408  7E B5 51 10 */	subfe r21, r21, r10
/* 8025F68C 0025540C  7E AA 51 10 */	subfe r21, r10, r10
/* 8025F690 00255410  7E B5 00 D1 */	neg. r21, r21
/* 8025F694 00255414  41 82 00 0C */	beq lbl_8025F6A0
/* 8025F698 00255418  3E 80 80 00 */	lis r20, 0x8000
/* 8025F69C 0025541C  38 60 FF FF */	li r3, -1
lbl_8025F6A0:
/* 8025F6A0 00255420  56 8C 80 3E */	rotlwi r12, r20, 0x10
/* 8025F6A4 00255424  7D 2A 4B 78 */	mr r10, r9
/* 8025F6A8 00255428  50 6C 80 1E */	rlwimi r12, r3, 0x10, 0, 0xf
/* 8025F6AC 0025542C  7C 63 86 70 */	srawi r3, r3, 0x10
/* 8025F6B0 00255430  B1 9F 00 00 */	sth r12, 0(r31)
/* 8025F6B4 00255434  7D 89 63 78 */	mr r9, r12
/* 8025F6B8 00255438  7F FF 42 14 */	add r31, r31, r8
/* 8025F6BC 0025543C  39 6B 00 01 */	addi r11, r11, 1
/* 8025F6C0 00255440  B1 9E 00 00 */	sth r12, 0(r30)
/* 8025F6C4 00255444  7F DE 42 14 */	add r30, r30, r8
lbl_8025F6C8:
/* 8025F6C8 00255448  80 64 00 04 */	lwz r3, 4(r4)
/* 8025F6CC 0025544C  7C 0B 18 40 */	cmplw r11, r3
/* 8025F6D0 00255450  41 80 FE E8 */	blt lbl_8025F5B8
/* 8025F6D4 00255454  48 00 02 B0 */	b lbl_8025F984
lbl_8025F6D8:
/* 8025F6D8 00255458  88 14 00 00 */	lbz r0, 0(r20)
/* 8025F6DC 0025545C  3F 40 80 00 */	lis r26, 0x7FFFFFFF@ha
/* 8025F6E0 00255460  38 C0 00 00 */	li r6, 0
/* 8025F6E4 00255464  3C E0 00 01 */	lis r7, 0x00008000@ha
/* 8025F6E8 00255468  A8 64 00 48 */	lha r3, 0x48(r4)
/* 8025F6EC 0025546C  54 0A E7 7E */	rlwinm r10, r0, 0x1c, 0x1d, 0x1f
/* 8025F6F0 00255470  54 0B 07 3E */	clrlwi r11, r0, 0x1c
/* 8025F6F4 00255474  55 00 08 3C */	slwi r0, r8, 1
/* 8025F6F8 00255478  A8 A4 00 4A */	lha r5, 0x4a(r4)
/* 8025F6FC 0025547C  39 14 00 01 */	addi r8, r20, 1
/* 8025F700 00255480  3A C7 80 00 */	addi r22, r7, 0x00008000@l
/* 8025F704 00255484  3B 9A FF FF */	addi r28, r26, 0x7FFFFFFF@l
/* 8025F708 00255488  6C DB 80 00 */	xoris r27, r6, 0x8000
/* 8025F70C 0025548C  39 20 00 02 */	li r9, 2
/* 8025F710 00255490  3B A0 00 00 */	li r29, 0
/* 8025F714 00255494  3B 20 FF FF */	li r25, -1
/* 8025F718 00255498  48 00 01 0C */	b lbl_8025F824
lbl_8025F71C:
/* 8025F71C 0025549C  55 27 07 3F */	clrlwi. r7, r9, 0x1c
/* 8025F720 002554A0  40 82 00 18 */	bne lbl_8025F738
/* 8025F724 002554A4  88 E8 00 00 */	lbz r7, 0(r8)
/* 8025F728 002554A8  39 08 00 01 */	addi r8, r8, 1
/* 8025F72C 002554AC  39 29 00 02 */	addi r9, r9, 2
/* 8025F730 002554B0  54 EA E7 7E */	rlwinm r10, r7, 0x1c, 0x1d, 0x1f
/* 8025F734 002554B4  54 EB 07 3E */	clrlwi r11, r7, 0x1c
lbl_8025F738:
/* 8025F738 002554B8  55 27 07 FF */	clrlwi. r7, r9, 0x1f
/* 8025F73C 002554BC  41 82 00 18 */	beq lbl_8025F754
/* 8025F740 002554C0  88 E8 00 00 */	lbz r7, 0(r8)
/* 8025F744 002554C4  39 08 00 01 */	addi r8, r8, 1
/* 8025F748 002554C8  54 E7 E0 06 */	slwi r7, r7, 0x1c
/* 8025F74C 002554CC  7C F8 E6 70 */	srawi r24, r7, 0x1c
/* 8025F750 002554D0  48 00 00 10 */	b lbl_8025F760
lbl_8025F754:
/* 8025F754 002554D4  88 E8 00 00 */	lbz r7, 0(r8)
/* 8025F758 002554D8  54 E7 C0 06 */	rlwinm r7, r7, 0x18, 0, 3
/* 8025F75C 002554DC  7C F8 E6 70 */	srawi r24, r7, 0x1c
lbl_8025F760:
/* 8025F760 002554E0  55 55 15 BA */	rlwinm r21, r10, 2, 0x16, 0x1d
/* 8025F764 002554E4  55 67 06 3E */	clrlwi r7, r11, 0x18
/* 8025F768 002554E8  7E 84 AA 14 */	add r20, r4, r21
/* 8025F76C 002554EC  7C B7 07 34 */	extsh r23, r5
/* 8025F770 002554F0  AA B4 00 0A */	lha r21, 0xa(r20)
/* 8025F774 002554F4  7F 05 38 30 */	slw r5, r24, r7
/* 8025F778 002554F8  A8 F4 00 08 */	lha r7, 8(r20)
/* 8025F77C 002554FC  7C 78 07 34 */	extsh r24, r3
/* 8025F780 00255500  7E B7 A9 D6 */	mullw r21, r23, r21
/* 8025F784 00255504  54 B7 58 28 */	slwi r23, r5, 0xb
/* 8025F788 00255508  39 29 00 01 */	addi r9, r9, 1
/* 8025F78C 0025550C  7F 18 39 D6 */	mullw r24, r24, r7
/* 8025F790 00255510  7E A7 FE 70 */	srawi r7, r21, 0x1f
/* 8025F794 00255514  7F 05 FE 70 */	srawi r5, r24, 0x1f
/* 8025F798 00255518  7F 15 C0 14 */	addc r24, r21, r24
/* 8025F79C 0025551C  7C E7 29 14 */	adde r7, r7, r5
/* 8025F7A0 00255520  7E E5 FE 70 */	srawi r5, r23, 0x1f
/* 8025F7A4 00255524  7E F8 B8 14 */	addc r23, r24, r23
/* 8025F7A8 00255528  7C A7 29 14 */	adde r5, r7, r5
/* 8025F7AC 0025552C  56 E7 28 34 */	slwi r7, r23, 5
/* 8025F7B0 00255530  54 A5 28 34 */	slwi r5, r5, 5
/* 8025F7B4 00255534  52 E5 2E FE */	rlwimi r5, r23, 5, 0x1b, 0x1f
/* 8025F7B8 00255538  7E 87 B0 14 */	addc r20, r7, r22
/* 8025F7BC 0025553C  7C E5 E9 14 */	adde r7, r5, r29
/* 8025F7C0 00255540  6C F7 80 00 */	xoris r23, r7, 0x8000
/* 8025F7C4 00255544  7C B4 E0 10 */	subfc r5, r20, r28
/* 8025F7C8 00255548  7E F7 D9 10 */	subfe r23, r23, r27
/* 8025F7CC 0025554C  7E FB D9 10 */	subfe r23, r27, r27
/* 8025F7D0 00255550  7E F7 00 D1 */	neg. r23, r23
/* 8025F7D4 00255554  41 82 00 0C */	beq lbl_8025F7E0
/* 8025F7D8 00255558  3A 9A FF FF */	addi r20, r26, -1
/* 8025F7DC 0025555C  38 E0 00 00 */	li r7, 0
lbl_8025F7E0:
/* 8025F7E0 00255560  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8025F7E4 00255564  6F 38 80 00 */	xoris r24, r25, 0x8000
/* 8025F7E8 00255568  7E FA A0 10 */	subfc r23, r26, r20
/* 8025F7EC 0025556C  7F 18 29 10 */	subfe r24, r24, r5
/* 8025F7F0 00255570  7F 05 29 10 */	subfe r24, r5, r5
/* 8025F7F4 00255574  7F 18 00 D1 */	neg. r24, r24
/* 8025F7F8 00255578  41 82 00 0C */	beq lbl_8025F804
/* 8025F7FC 0025557C  3E 80 80 00 */	lis r20, 0x8000
/* 8025F800 00255580  38 E0 FF FF */	li r7, -1
lbl_8025F804:
/* 8025F804 00255584  56 97 80 3E */	rotlwi r23, r20, 0x10
/* 8025F808 00255588  7C 65 1B 78 */	mr r5, r3
/* 8025F80C 0025558C  50 F7 80 1E */	rlwimi r23, r7, 0x10, 0, 0xf
/* 8025F810 00255590  7C E3 86 70 */	srawi r3, r7, 0x10
/* 8025F814 00255594  B2 FF 00 00 */	sth r23, 0(r31)
/* 8025F818 00255598  7E E3 BB 78 */	mr r3, r23
/* 8025F81C 0025559C  7F FF 02 14 */	add r31, r31, r0
/* 8025F820 002555A0  38 C6 00 01 */	addi r6, r6, 1
lbl_8025F824:
/* 8025F824 002555A4  80 E4 00 04 */	lwz r7, 4(r4)
/* 8025F828 002555A8  7C 06 38 40 */	cmplw r6, r7
/* 8025F82C 002555AC  41 80 FE F0 */	blt lbl_8025F71C
/* 8025F830 002555B0  89 0C 00 00 */	lbz r8, 0(r12)
/* 8025F834 002555B4  3F A0 80 00 */	lis r29, 0x7FFFFFFF@ha
/* 8025F838 002555B8  38 E0 00 00 */	li r7, 0
/* 8025F83C 002555BC  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 8025F840 002555C0  A8 A4 00 4C */	lha r5, 0x4c(r4)
/* 8025F844 002555C4  55 0A E7 7E */	rlwinm r10, r8, 0x1c, 0x1d, 0x1f
/* 8025F848 002555C8  55 0B 07 3E */	clrlwi r11, r8, 0x1c
/* 8025F84C 002555CC  A8 C4 00 4E */	lha r6, 0x4e(r4)
/* 8025F850 002555D0  39 0C 00 01 */	addi r8, r12, 1
/* 8025F854 002555D4  3B 23 80 00 */	addi r25, r3, 0x00008000@l
/* 8025F858 002555D8  3B 7D FF FF */	addi r27, r29, 0x7FFFFFFF@l
/* 8025F85C 002555DC  6C FC 80 00 */	xoris r28, r7, 0x8000
/* 8025F860 002555E0  39 20 00 02 */	li r9, 2
/* 8025F864 002555E4  3B 40 00 00 */	li r26, 0
/* 8025F868 002555E8  3B E0 FF FF */	li r31, -1
/* 8025F86C 002555EC  48 00 01 0C */	b lbl_8025F978
lbl_8025F870:
/* 8025F870 002555F0  55 23 07 3F */	clrlwi. r3, r9, 0x1c
/* 8025F874 002555F4  40 82 00 18 */	bne lbl_8025F88C
/* 8025F878 002555F8  88 68 00 00 */	lbz r3, 0(r8)
/* 8025F87C 002555FC  39 08 00 01 */	addi r8, r8, 1
/* 8025F880 00255600  39 29 00 02 */	addi r9, r9, 2
/* 8025F884 00255604  54 6A E7 7E */	rlwinm r10, r3, 0x1c, 0x1d, 0x1f
/* 8025F888 00255608  54 6B 07 3E */	clrlwi r11, r3, 0x1c
lbl_8025F88C:
/* 8025F88C 0025560C  55 23 07 FF */	clrlwi. r3, r9, 0x1f
/* 8025F890 00255610  41 82 00 18 */	beq lbl_8025F8A8
/* 8025F894 00255614  88 68 00 00 */	lbz r3, 0(r8)
/* 8025F898 00255618  39 08 00 01 */	addi r8, r8, 1
/* 8025F89C 0025561C  54 63 E0 06 */	slwi r3, r3, 0x1c
/* 8025F8A0 00255620  7C 75 E6 70 */	srawi r21, r3, 0x1c
/* 8025F8A4 00255624  48 00 00 10 */	b lbl_8025F8B4
lbl_8025F8A8:
/* 8025F8A8 00255628  88 68 00 00 */	lbz r3, 0(r8)
/* 8025F8AC 0025562C  54 63 C0 06 */	rlwinm r3, r3, 0x18, 0, 3
/* 8025F8B0 00255630  7C 75 E6 70 */	srawi r21, r3, 0x1c
lbl_8025F8B4:
/* 8025F8B4 00255634  55 4C 15 BA */	rlwinm r12, r10, 2, 0x16, 0x1d
/* 8025F8B8 00255638  55 63 06 3E */	clrlwi r3, r11, 0x18
/* 8025F8BC 0025563C  7D 84 62 14 */	add r12, r4, r12
/* 8025F8C0 00255640  7C D7 07 34 */	extsh r23, r6
/* 8025F8C4 00255644  A8 CC 00 2A */	lha r6, 0x2a(r12)
/* 8025F8C8 00255648  7C B8 07 34 */	extsh r24, r5
/* 8025F8CC 0025564C  A9 8C 00 28 */	lha r12, 0x28(r12)
/* 8025F8D0 00255650  7E A3 18 30 */	slw r3, r21, r3
/* 8025F8D4 00255654  7E F7 31 D6 */	mullw r23, r23, r6
/* 8025F8D8 00255658  39 29 00 01 */	addi r9, r9, 1
/* 8025F8DC 0025565C  54 66 58 28 */	slwi r6, r3, 0xb
/* 8025F8E0 00255660  7D 98 61 D6 */	mullw r12, r24, r12
/* 8025F8E4 00255664  7E F4 FE 70 */	srawi r20, r23, 0x1f
/* 8025F8E8 00255668  7D 83 FE 70 */	srawi r3, r12, 0x1f
/* 8025F8EC 0025566C  7D 97 60 14 */	addc r12, r23, r12
/* 8025F8F0 00255670  7F 14 19 14 */	adde r24, r20, r3
/* 8025F8F4 00255674  7C C3 FE 70 */	srawi r3, r6, 0x1f
/* 8025F8F8 00255678  7D 8C 30 14 */	addc r12, r12, r6
/* 8025F8FC 0025567C  7C 78 19 14 */	adde r3, r24, r3
/* 8025F900 00255680  55 86 28 34 */	slwi r6, r12, 5
/* 8025F904 00255684  54 63 28 34 */	slwi r3, r3, 5
/* 8025F908 00255688  51 83 2E FE */	rlwimi r3, r12, 5, 0x1b, 0x1f
/* 8025F90C 0025568C  7E A6 C8 14 */	addc r21, r6, r25
/* 8025F910 00255690  7E 83 D1 14 */	adde r20, r3, r26
/* 8025F914 00255694  6E 86 80 00 */	xoris r6, r20, 0x8000
/* 8025F918 00255698  7C 75 D8 10 */	subfc r3, r21, r27
/* 8025F91C 0025569C  7C C6 E1 10 */	subfe r6, r6, r28
/* 8025F920 002556A0  7C DC E1 10 */	subfe r6, r28, r28
/* 8025F924 002556A4  7C C6 00 D1 */	neg. r6, r6
/* 8025F928 002556A8  41 82 00 0C */	beq lbl_8025F934
/* 8025F92C 002556AC  3A BD FF FF */	addi r21, r29, -1
/* 8025F930 002556B0  3A 80 00 00 */	li r20, 0
lbl_8025F934:
/* 8025F934 002556B4  6E 83 80 00 */	xoris r3, r20, 0x8000
/* 8025F938 002556B8  6F EC 80 00 */	xoris r12, r31, 0x8000
/* 8025F93C 002556BC  7C DD A8 10 */	subfc r6, r29, r21
/* 8025F940 002556C0  7D 8C 19 10 */	subfe r12, r12, r3
/* 8025F944 002556C4  7D 83 19 10 */	subfe r12, r3, r3
/* 8025F948 002556C8  7D 8C 00 D1 */	neg. r12, r12
/* 8025F94C 002556CC  41 82 00 0C */	beq lbl_8025F958
/* 8025F950 002556D0  3E A0 80 00 */	lis r21, 0x8000
/* 8025F954 002556D4  3A 80 FF FF */	li r20, -1
lbl_8025F958:
/* 8025F958 002556D8  56 AC 80 3E */	rotlwi r12, r21, 0x10
/* 8025F95C 002556DC  7C A6 2B 78 */	mr r6, r5
/* 8025F960 002556E0  52 8C 80 1E */	rlwimi r12, r20, 0x10, 0, 0xf
/* 8025F964 002556E4  7E 83 86 70 */	srawi r3, r20, 0x10
/* 8025F968 002556E8  B1 9E 00 00 */	sth r12, 0(r30)
/* 8025F96C 002556EC  7D 85 63 78 */	mr r5, r12
/* 8025F970 002556F0  7F DE 02 14 */	add r30, r30, r0
/* 8025F974 002556F4  38 E7 00 01 */	addi r7, r7, 1
lbl_8025F978:
/* 8025F978 002556F8  80 64 00 04 */	lwz r3, 4(r4)
/* 8025F97C 002556FC  7C 07 18 40 */	cmplw r7, r3
/* 8025F980 00255700  41 80 FE F0 */	blt lbl_8025F870
lbl_8025F984:
/* 8025F984 00255704  39 61 00 40 */	addi r11, r1, 0x40
/* 8025F988 00255708  48 19 19 C9 */	bl _restgpr_20
/* 8025F98C 0025570C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8025F990 00255710  7C 08 03 A6 */	mtlr r0
/* 8025F994 00255714  38 21 00 40 */	addi r1, r1, 0x40
/* 8025F998 00255718  4E 80 00 20 */	blr 


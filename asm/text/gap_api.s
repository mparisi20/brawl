.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global GAP_Init
GAP_Init:
/* 80243704 00239484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80243708 00239488  7C 08 02 A6 */	mflr r0
/* 8024370C 0023948C  38 80 00 00 */	li r4, 0
/* 80243710 00239490  38 A0 03 AC */	li r5, 0x3ac
/* 80243714 00239494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80243718 00239498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024371C 0023949C  3F E0 80 53 */	lis r31, lbl_8052C4C0@ha
/* 80243720 002394A0  38 7F C4 C0 */	addi r3, r31, lbl_8052C4C0@l
/* 80243724 002394A4  4B DC 0D 19 */	bl memset
/* 80243728 002394A8  3C A0 80 24 */	lis r5, gap_btm_cback0@ha
/* 8024372C 002394AC  3C 60 80 24 */	lis r3, gap_btm_cback1@ha
/* 80243730 002394B0  38 A5 44 78 */	addi r5, r5, gap_btm_cback0@l
/* 80243734 002394B4  38 9F C4 C0 */	addi r4, r31, -15168
/* 80243738 002394B8  38 63 44 84 */	addi r3, r3, gap_btm_cback1@l
/* 8024373C 002394BC  38 00 00 05 */	li r0, 5
/* 80243740 002394C0  90 A4 00 20 */	stw r5, 0x20(r4)
/* 80243744 002394C4  90 64 00 24 */	stw r3, 0x24(r4)
/* 80243748 002394C8  98 04 00 28 */	stb r0, 0x28(r4)
/* 8024374C 002394CC  48 00 00 19 */	bl gap_conn_init
/* 80243750 002394D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80243754 002394D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80243758 002394D8  7C 08 03 A6 */	mtlr r0
/* 8024375C 002394DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80243760 002394E0  4E 80 00 20 */	blr 


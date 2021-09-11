.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global btu_init_core
btu_init_core:
/* 802435AC 0023932C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802435B0 00239330  7C 08 02 A6 */	mflr r0
/* 802435B4 00239334  90 01 00 14 */	stw r0, 0x14(r1)
/* 802435B8 00239338  4B FF A2 AD */	bl btm_init
/* 802435BC 0023933C  48 00 9F 7D */	bl l2c_init
/* 802435C0 00239340  48 01 60 A9 */	bl sdp_init
/* 802435C4 00239344  4B FF 86 D5 */	bl btm_discovery_db_init
/* 802435C8 00239348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802435CC 0023934C  7C 08 03 A6 */	mtlr r0
/* 802435D0 00239350  38 21 00 10 */	addi r1, r1, 0x10
/* 802435D4 00239354  4E 80 00 20 */	blr 

.global BTE_Init
BTE_Init:
/* 802435D8 00239358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802435DC 0023935C  7C 08 02 A6 */	mflr r0
/* 802435E0 00239360  38 80 00 00 */	li r4, 0
/* 802435E4 00239364  38 A0 00 84 */	li r5, 0x84
/* 802435E8 00239368  90 01 00 14 */	stw r0, 0x14(r1)
/* 802435EC 0023936C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802435F0 00239370  3F E0 80 53 */	lis r31, lbl_805297D0@ha
/* 802435F4 00239374  38 7F 97 D0 */	addi r3, r31, lbl_805297D0@l
/* 802435F8 00239378  4B DC 0E 45 */	bl memset
/* 802435FC 0023937C  38 7F 97 D0 */	addi r3, r31, -26672
/* 80243600 00239380  38 80 02 A4 */	li r4, 0x2a4
/* 80243604 00239384  38 00 00 01 */	li r0, 1
/* 80243608 00239388  B0 83 00 7E */	sth r4, 0x7e(r3)
/* 8024360C 0023938C  B0 03 00 80 */	sth r0, 0x80(r3)
/* 80243610 00239390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80243614 00239394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80243618 00239398  7C 08 03 A6 */	mtlr r0
/* 8024361C 0023939C  38 21 00 10 */	addi r1, r1, 0x10
/* 80243620 002393A0  4E 80 00 20 */	blr 


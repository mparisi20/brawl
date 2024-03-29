.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_fopen
pf2_fopen:
/* 803EB644 003E13C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EB648 003E13C8  7C 08 02 A6 */	mflr r0
/* 803EB64C 003E13CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EB650 003E13D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803EB654 003E13D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803EB658 003E13D8  7C 7E 1B 78 */	mr r30, r3
/* 803EB65C 003E13DC  7C 83 23 78 */	mr r3, r4
/* 803EB660 003E13E0  4B FF FD 5D */	bl PFAPI_ParseOpenModeString
/* 803EB664 003E13E4  2C 03 00 00 */	cmpwi r3, 0
/* 803EB668 003E13E8  7C 7F 1B 78 */	mr r31, r3
/* 803EB66C 003E13EC  40 82 00 1C */	bne lbl_803EB688
/* 803EB670 003E13F0  3C 80 80 56 */	lis r4, lbl_805644C0@ha
/* 803EB674 003E13F4  38 00 00 0A */	li r0, 0xa
/* 803EB678 003E13F8  38 84 44 C0 */	addi r4, r4, lbl_805644C0@l
/* 803EB67C 003E13FC  38 60 00 00 */	li r3, 0
/* 803EB680 003E1400  90 04 00 40 */	stw r0, 0x40(r4)
/* 803EB684 003E1404  48 00 00 44 */	b lbl_803EB6C8
lbl_803EB688:
/* 803EB688 003E1408  7F C4 F3 78 */	mr r4, r30
/* 803EB68C 003E140C  38 61 00 10 */	addi r3, r1, 0x10
/* 803EB690 003E1410  38 A0 00 01 */	li r5, 1
/* 803EB694 003E1414  4B FE B1 9D */	bl PFSTR_InitStr
/* 803EB698 003E1418  2C 03 00 00 */	cmpwi r3, 0
/* 803EB69C 003E141C  40 82 00 18 */	bne lbl_803EB6B4
/* 803EB6A0 003E1420  7F E4 FB 78 */	mr r4, r31
/* 803EB6A4 003E1424  38 61 00 10 */	addi r3, r1, 0x10
/* 803EB6A8 003E1428  38 A1 00 08 */	addi r5, r1, 8
/* 803EB6AC 003E142C  4B FF 9F E9 */	bl PFFILE_fopen
/* 803EB6B0 003E1430  48 00 00 10 */	b lbl_803EB6C0
lbl_803EB6B4:
/* 803EB6B4 003E1434  3C 80 80 56 */	lis r4, lbl_805644C0@ha
/* 803EB6B8 003E1438  38 84 44 C0 */	addi r4, r4, lbl_805644C0@l
/* 803EB6BC 003E143C  90 64 00 40 */	stw r3, 0x40(r4)
lbl_803EB6C0:
/* 803EB6C0 003E1440  80 81 00 08 */	lwz r4, 8(r1)
/* 803EB6C4 003E1444  4B FF FE 29 */	bl PFAPI_convertReturnValue2NULL
lbl_803EB6C8:
/* 803EB6C8 003E1448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EB6CC 003E144C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803EB6D0 003E1450  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803EB6D4 003E1454  7C 08 03 A6 */	mtlr r0
/* 803EB6D8 003E1458  38 21 00 30 */	addi r1, r1, 0x30
/* 803EB6DC 003E145C  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3dFPQ34nw4r4math5M$7CalcTexMtx
nw4r3g3dFPQ34nw4r4math5M$7CalcTexMtx:
/* 801A4D08 0019AA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A4D0C 0019AA8C  7C 08 02 A6 */	mflr r0
/* 801A4D10 0019AA90  2C 07 00 00 */	cmpwi r7, 0
/* 801A4D14 0019AA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A4D18 0019AA98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A4D1C 0019AA9C  7C 9F 23 78 */	mr r31, r4
/* 801A4D20 0019AAA0  93 C1 00 08 */	stw r30, 8(r1)
/* 801A4D24 0019AAA4  7C 7E 1B 78 */	mr r30, r3
/* 801A4D28 0019AAA8  40 82 00 14 */	bne lbl_801A4D3C
/* 801A4D2C 0019AAAC  48 00 44 A5 */	bl nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ3$7CalcTexMtx_Maya
/* 801A4D30 0019AAB0  7C 60 00 34 */	cntlzw r0, r3
/* 801A4D34 0019AAB4  54 00 D9 7E */	srwi r0, r0, 5
/* 801A4D38 0019AAB8  48 00 00 28 */	b lbl_801A4D60
lbl_801A4D3C:
/* 801A4D3C 0019AABC  2C 07 00 01 */	cmpwi r7, 1
/* 801A4D40 0019AAC0  40 82 00 14 */	bne lbl_801A4D54
/* 801A4D44 0019AAC4  48 00 50 2D */	bl nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ3$7CalcTexMtx_Xsi
/* 801A4D48 0019AAC8  7C 60 00 34 */	cntlzw r0, r3
/* 801A4D4C 0019AACC  54 00 D9 7E */	srwi r0, r0, 5
/* 801A4D50 0019AAD0  48 00 00 10 */	b lbl_801A4D60
lbl_801A4D54:
/* 801A4D54 0019AAD4  48 00 5C 81 */	bl nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ3$7CalcTexMtx_3dsmax
/* 801A4D58 0019AAD8  7C 60 00 34 */	cntlzw r0, r3
/* 801A4D5C 0019AADC  54 00 D9 7E */	srwi r0, r0, 5
lbl_801A4D60:
/* 801A4D60 0019AAE0  2C 00 00 00 */	cmpwi r0, 0
/* 801A4D64 0019AAE4  41 82 00 14 */	beq lbl_801A4D78
/* 801A4D68 0019AAE8  2C 1F 00 00 */	cmpwi r31, 0
/* 801A4D6C 0019AAEC  41 82 00 0C */	beq lbl_801A4D78
/* 801A4D70 0019AAF0  7F C3 F3 78 */	mr r3, r30
/* 801A4D74 0019AAF4  48 04 73 E5 */	bl PSMTXIdentity
lbl_801A4D78:
/* 801A4D78 0019AAF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A4D7C 0019AAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A4D80 0019AB00  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A4D84 0019AB04  7C 08 03 A6 */	mtlr r0
/* 801A4D88 0019AB08  38 21 00 10 */	addi r1, r1, 0x10
/* 801A4D8C 0019AB0C  4E 80 00 20 */	blr 


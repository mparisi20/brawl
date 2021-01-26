.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d12ScnMdlSimpleUlRC5Vec3f$7nwSMGetGlobalPosition
nw4r3g3d12ScnMdlSimpleUlRC5Vec3f$7nwSMGetGlobalPosition:
/* 80043B6C 000398EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80043B70 000398F0  7C 08 02 A6 */	mflr r0
/* 80043B74 000398F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80043B78 000398F8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80043B7C 000398FC  7C DF 33 78 */	mr r31, r6
/* 80043B80 00039900  7C A6 2B 78 */	mr r6, r5
/* 80043B84 00039904  38 A0 00 01 */	li r5, 1
/* 80043B88 00039908  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80043B8C 0003990C  7C 7E 1B 78 */	mr r30, r3
/* 80043B90 00039910  7C 83 23 78 */	mr r3, r4
/* 80043B94 00039914  38 81 00 08 */	addi r4, r1, 8
/* 80043B98 00039918  48 16 B3 E9 */	bl nw4r3g3d12ScnMdlSimpleCFPQ34nw4r4m$7GetScnMtxPos
/* 80043B9C 0003991C  C0 22 84 C0 */	lfs f1, lbl_805A17E0-_SDA2_BASE_(r2)
/* 80043BA0 00039920  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80043BA4 00039924  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80043BA8 00039928  40 82 00 1C */	bne lbl_80043BC4
/* 80043BAC 0003992C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80043BB0 00039930  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80043BB4 00039934  40 82 00 10 */	bne lbl_80043BC4
/* 80043BB8 00039938  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80043BBC 0003993C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80043BC0 00039940  41 82 00 18 */	beq lbl_80043BD8
lbl_80043BC4:
/* 80043BC4 00039944  7F E4 FB 78 */	mr r4, r31
/* 80043BC8 00039948  7F C5 F3 78 */	mr r5, r30
/* 80043BCC 0003994C  38 61 00 08 */	addi r3, r1, 8
/* 80043BD0 00039950  4B FF A8 49 */	bl Matrix$7mulPos
/* 80043BD4 00039954  48 00 00 1C */	b lbl_80043BF0
lbl_80043BD8:
/* 80043BD8 00039958  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80043BDC 0003995C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80043BE0 00039960  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80043BE4 00039964  D0 5E 00 00 */	stfs f2, 0(r30)
/* 80043BE8 00039968  D0 3E 00 04 */	stfs f1, 4(r30)
/* 80043BEC 0003996C  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80043BF0:
/* 80043BF0 00039970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80043BF4 00039974  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80043BF8 00039978  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80043BFC 0003997C  7C 08 03 A6 */	mtlr r0
/* 80043C00 00039980  38 21 00 40 */	addi r1, r1, 0x40
/* 80043C04 00039984  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlSimpleUl$7nwSMGetGlobalPosition
nw4r3g3d12ScnMdlSimpleUl$7nwSMGetGlobalPosition:
/* 80043C08 00039988  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80043C0C 0003998C  7C 08 02 A6 */	mflr r0
/* 80043C10 00039990  7C A6 2B 78 */	mr r6, r5
/* 80043C14 00039994  38 A0 00 01 */	li r5, 1
/* 80043C18 00039998  90 01 00 44 */	stw r0, 0x44(r1)
/* 80043C1C 0003999C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80043C20 000399A0  7C 7F 1B 78 */	mr r31, r3
/* 80043C24 000399A4  7C 83 23 78 */	mr r3, r4
/* 80043C28 000399A8  38 81 00 08 */	addi r4, r1, 8
/* 80043C2C 000399AC  48 16 B3 55 */	bl nw4r3g3d12ScnMdlSimpleCFPQ34nw4r4m$7GetScnMtxPos
/* 80043C30 000399B0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80043C34 000399B4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80043C38 000399B8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80043C3C 000399BC  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80043C40 000399C0  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80043C44 000399C4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80043C48 000399C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80043C4C 000399CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80043C50 000399D0  7C 08 03 A6 */	mtlr r0
/* 80043C54 000399D4  38 21 00 40 */	addi r1, r1, 0x40
/* 80043C58 000399D8  4E 80 00 20 */	blr 

.global nw4r3g3d12ScnMdlSimpleUl$7nwSMGetLocalPosition
nw4r3g3d12ScnMdlSimpleUl$7nwSMGetLocalPosition:
/* 80043C5C 000399DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80043C60 000399E0  7C 08 02 A6 */	mflr r0
/* 80043C64 000399E4  7C A6 2B 78 */	mr r6, r5
/* 80043C68 000399E8  38 A0 00 00 */	li r5, 0
/* 80043C6C 000399EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80043C70 000399F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80043C74 000399F4  7C 7F 1B 78 */	mr r31, r3
/* 80043C78 000399F8  7C 83 23 78 */	mr r3, r4
/* 80043C7C 000399FC  38 81 00 08 */	addi r4, r1, 8
/* 80043C80 00039A00  48 16 B3 01 */	bl nw4r3g3d12ScnMdlSimpleCFPQ34nw4r4m$7GetScnMtxPos
/* 80043C84 00039A04  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80043C88 00039A08  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80043C8C 00039A0C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80043C90 00039A10  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80043C94 00039A14  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80043C98 00039A18  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80043C9C 00039A1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80043CA0 00039A20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80043CA4 00039A24  7C 08 03 A6 */	mtlr r0
/* 80043CA8 00039A28  38 21 00 40 */	addi r1, r1, 0x40
/* 80043CAC 00039A2C  4E 80 00 20 */	blr 


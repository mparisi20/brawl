.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ3$7CalcTexMtx_3dsmax
nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ3$7CalcTexMtx_3dsmax:
/* 801AA9D4 001A0754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AA9D8 001A0758  7C 08 02 A6 */	mflr r0
/* 801AA9DC 001A075C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AA9E0 001A0760  54 C0 FF 7E */	rlwinm r0, r6, 0x1f, 0x1d, 0x1f
/* 801AA9E4 001A0764  28 00 00 07 */	cmplwi r0, 7
/* 801AA9E8 001A0768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AA9EC 001A076C  7C 7F 1B 78 */	mr r31, r3
/* 801AA9F0 001A0770  40 82 00 0C */	bne lbl_801AA9FC
/* 801AA9F4 001A0774  38 60 00 00 */	li r3, 0
/* 801AA9F8 001A0778  48 00 00 64 */	b lbl_801AAA5C
lbl_801AA9FC:
/* 801AA9FC 001A077C  2C 04 00 00 */	cmpwi r4, 0
/* 801AAA00 001A0780  41 82 00 24 */	beq lbl_801AAA24
/* 801AAA04 001A0784  3C C0 80 41 */	lis r6, lbl_8040AB48@ha
/* 801AAA08 001A0788  54 00 10 3A */	slwi r0, r0, 2
/* 801AAA0C 001A078C  38 C6 AB 48 */	addi r6, r6, lbl_8040AB48@l
/* 801AAA10 001A0790  7C A4 2B 78 */	mr r4, r5
/* 801AAA14 001A0794  7D 86 00 2E */	lwzx r12, r6, r0
/* 801AAA18 001A0798  7D 89 03 A6 */	mtctr r12
/* 801AAA1C 001A079C  4E 80 04 21 */	bctrl 
/* 801AAA20 001A07A0  48 00 00 20 */	b lbl_801AAA40
lbl_801AAA24:
/* 801AAA24 001A07A4  3C C0 80 41 */	lis r6, lbl_8040AB64@ha
/* 801AAA28 001A07A8  54 00 10 3A */	slwi r0, r0, 2
/* 801AAA2C 001A07AC  38 C6 AB 64 */	addi r6, r6, lbl_8040AB64@l
/* 801AAA30 001A07B0  7C A4 2B 78 */	mr r4, r5
/* 801AAA34 001A07B4  7D 86 00 2E */	lwzx r12, r6, r0
/* 801AAA38 001A07B8  7D 89 03 A6 */	mtctr r12
/* 801AAA3C 001A07BC  4E 80 04 21 */	bctrl 
lbl_801AAA40:
/* 801AAA40 001A07C0  C0 22 A0 A8 */	lfs f1, lbl_805A33C8-_SDA2_BASE_(r2)
/* 801AAA44 001A07C4  38 60 00 01 */	li r3, 1
/* 801AAA48 001A07C8  C0 02 A0 B0 */	lfs f0, lbl_805A33D0-_SDA2_BASE_(r2)
/* 801AAA4C 001A07CC  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 801AAA50 001A07D0  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 801AAA54 001A07D4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 801AAA58 001A07D8  D0 3F 00 2C */	stfs f1, 0x2c(r31)
lbl_801AAA5C:
/* 801AAA5C 001A07DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AAA60 001A07E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AAA64 001A07E4  7C 08 03 A6 */	mtlr r0
/* 801AAA68 001A07E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801AAA6C 001A07EC  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkSolverGetSystemTime
hkSolverGetSystemTime:
/* 802A0B88 00296908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0B8C 0029690C  7C 08 02 A6 */	mflr r0
/* 802A0B90 00296910  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0B94 00296914  4B F4 0F A1 */	bl OSGetTime
/* 802A0B98 00296918  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 802A0B9C 0029691C  38 A0 00 00 */	li r5, 0
/* 802A0BA0 00296920  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 802A0BA4 00296924  54 06 F0 BE */	srwi r6, r0, 2
/* 802A0BA8 00296928  48 15 08 C9 */	bl __div2i
/* 802A0BAC 0029692C  48 15 0C 35 */	bl __cvt_sll_flt
/* 802A0BB0 00296930  C0 02 AB 88 */	lfs f0, lbl_805A3EA8-_SDA2_BASE_(r2)
/* 802A0BB4 00296934  EC 20 08 2A */	fadds f1, f0, f1
/* 802A0BB8 00296938  48 15 0D A9 */	bl __cvt_dbl_ull
/* 802A0BBC 0029693C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0BC0 00296940  7C 08 03 A6 */	mtlr r0
/* 802A0BC4 00296944  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0BC8 00296948  4E 80 00 20 */	blr 


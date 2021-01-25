.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkSimpleClosestContactCollector$7addCdPoint
hkSimpleClosestContactCollector$7addCdPoint:
/* 802CA9D8 002C0758  88 03 00 08 */	lbz r0, 8(r3)
/* 802CA9DC 002C075C  7C 05 07 74 */	extsb r5, r0
/* 802CA9E0 002C0760  7C 05 00 D0 */	neg r0, r5
/* 802CA9E4 002C0764  7C 00 2B 78 */	or r0, r0, r5
/* 802CA9E8 002C0768  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802CA9EC 002C076C  41 82 00 14 */	beq lbl_802CAA00
/* 802CA9F0 002C0770  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802CA9F4 002C0774  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 802CA9F8 002C0778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CA9FC 002C077C  4C 80 00 20 */	bgelr 
lbl_802CAA00:
/* 802CAA00 002C0780  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802CAA04 002C0784  38 00 00 01 */	li r0, 1
/* 802CAA08 002C0788  C0 E4 00 00 */	lfs f7, 0(r4)
/* 802CAA0C 002C078C  C0 C4 00 04 */	lfs f6, 4(r4)
/* 802CAA10 002C0790  C0 A4 00 08 */	lfs f5, 8(r4)
/* 802CAA14 002C0794  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 802CAA18 002C0798  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 802CAA1C 002C079C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802CAA20 002C07A0  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802CAA24 002C07A4  98 03 00 08 */	stb r0, 8(r3)
/* 802CAA28 002C07A8  D0 E3 00 10 */	stfs f7, 0x10(r3)
/* 802CAA2C 002C07AC  D0 C3 00 14 */	stfs f6, 0x14(r3)
/* 802CAA30 002C07B0  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 802CAA34 002C07B4  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 802CAA38 002C07B8  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 802CAA3C 002C07BC  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 802CAA40 002C07C0  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802CAA44 002C07C4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802CAA48 002C07C8  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CAA4C 002C07CC  4E 80 00 20 */	blr 


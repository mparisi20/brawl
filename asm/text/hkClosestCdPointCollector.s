.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkClosestCdPointCollector$7addCdPoint
hkClosestCdPointCollector$7addCdPoint:
/* 802CA920 002C06A0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802CA924 002C06A4  2C 00 00 00 */	cmpwi r0, 0
/* 802CA928 002C06A8  41 82 00 14 */	beq lbl_802CA93C
/* 802CA92C 002C06AC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802CA930 002C06B0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 802CA934 002C06B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CA938 002C06B8  4C 80 00 20 */	bgelr 
lbl_802CA93C:
/* 802CA93C 002C06BC  C0 E4 00 00 */	lfs f7, 0(r4)
/* 802CA940 002C06C0  C0 C4 00 04 */	lfs f6, 4(r4)
/* 802CA944 002C06C4  C0 A4 00 08 */	lfs f5, 8(r4)
/* 802CA948 002C06C8  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 802CA94C 002C06CC  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 802CA950 002C06D0  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802CA954 002C06D4  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802CA958 002C06D8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802CA95C 002C06DC  D0 E3 00 10 */	stfs f7, 0x10(r3)
/* 802CA960 002C06E0  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 802CA964 002C06E4  D0 C3 00 14 */	stfs f6, 0x14(r3)
/* 802CA968 002C06E8  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 802CA96C 002C06EC  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 802CA970 002C06F0  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 802CA974 002C06F4  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 802CA978 002C06F8  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802CA97C 002C06FC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802CA980 002C0700  48 00 00 08 */	b lbl_802CA988
lbl_802CA984:
/* 802CA984 002C0704  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_802CA988:
/* 802CA988 002C0708  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802CA98C 002C070C  2C 00 00 00 */	cmpwi r0, 0
/* 802CA990 002C0710  40 82 FF F4 */	bne lbl_802CA984
/* 802CA994 002C0714  90 A3 00 30 */	stw r5, 0x30(r3)
/* 802CA998 002C0718  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 802CA99C 002C071C  80 C4 00 24 */	lwz r6, 0x24(r4)
/* 802CA9A0 002C0720  80 05 00 04 */	lwz r0, 4(r5)
/* 802CA9A4 002C0724  90 03 00 34 */	stw r0, 0x34(r3)
/* 802CA9A8 002C0728  48 00 00 08 */	b lbl_802CA9B0
lbl_802CA9AC:
/* 802CA9AC 002C072C  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_802CA9B0:
/* 802CA9B0 002C0730  80 06 00 0C */	lwz r0, 0xc(r6)
/* 802CA9B4 002C0734  2C 00 00 00 */	cmpwi r0, 0
/* 802CA9B8 002C0738  40 82 FF F4 */	bne lbl_802CA9AC
/* 802CA9BC 002C073C  90 C3 00 38 */	stw r6, 0x38(r3)
/* 802CA9C0 002C0740  80 A4 00 24 */	lwz r5, 0x24(r4)
/* 802CA9C4 002C0744  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802CA9C8 002C0748  80 05 00 04 */	lwz r0, 4(r5)
/* 802CA9CC 002C074C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 802CA9D0 002C0750  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CA9D4 002C0754  4E 80 00 20 */	blr 


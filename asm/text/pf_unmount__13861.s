.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global pf2_unmount
pf2_unmount:
/* 803EBA18 003E1798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBA1C 003E179C  7C 08 02 A6 */	mflr r0
/* 803EBA20 003E17A0  7C 63 07 74 */	extsb r3, r3
/* 803EBA24 003E17A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBA28 003E17A8  4B FF F0 BD */	bl PFVOL_unmount
/* 803EBA2C 003E17AC  4B FF FA D9 */	bl PFAPI_convertReturnValue4unmount
/* 803EBA30 003E17B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBA34 003E17B4  7C 08 03 A6 */	mtlr r0
/* 803EBA38 003E17B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBA3C 003E17BC  4E 80 00 20 */	blr 


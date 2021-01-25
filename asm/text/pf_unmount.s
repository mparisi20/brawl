.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_unmount
VFipf2_unmount:
/* 803C2E54 003B8BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2E58 003B8BD8  7C 08 02 A6 */	mflr r0
/* 803C2E5C 003B8BDC  7C 63 07 74 */	extsb r3, r3
/* 803C2E60 003B8BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2E64 003B8BE4  4B FF F2 89 */	bl VFiPFVOL_unmount
/* 803C2E68 003B8BE8  4B FF FA CD */	bl VFiPFAPI_convertReturnValue4unmount
/* 803C2E6C 003B8BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2E70 003B8BF0  7C 08 03 A6 */	mtlr r0
/* 803C2E74 003B8BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2E78 003B8BF8  4E 80 00 20 */	blr 


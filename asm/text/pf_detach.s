.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_detach
VFipf2_detach:
/* 803C2A88 003B8808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2A8C 003B880C  7C 08 02 A6 */	mflr r0
/* 803C2A90 003B8810  7C 63 07 74 */	extsb r3, r3
/* 803C2A94 003B8814  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2A98 003B8818  4B FF F3 D1 */	bl VFiPFVOL_detach
/* 803C2A9C 003B881C  4B FF FE 71 */	bl VFiPFAPI_convertReturnValue
/* 803C2AA0 003B8820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2AA4 003B8824  7C 08 03 A6 */	mtlr r0
/* 803C2AA8 003B8828  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2AAC 003B882C  4E 80 00 20 */	blr 


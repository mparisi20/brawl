.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_format
VFipf2_format:
/* 803C2BB8 003B8938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2BBC 003B893C  7C 08 02 A6 */	mflr r0
/* 803C2BC0 003B8940  7C 63 07 74 */	extsb r3, r3
/* 803C2BC4 003B8944  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2BC8 003B8948  4B FF F3 BD */	bl VFiPFVOL_format
/* 803C2BCC 003B894C  4B FF FD 41 */	bl VFiPFAPI_convertReturnValue
/* 803C2BD0 003B8950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2BD4 003B8954  7C 08 03 A6 */	mtlr r0
/* 803C2BD8 003B8958  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2BDC 003B895C  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_devinf
VFipf2_devinf:
/* 803C2D4C 003B8ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2D50 003B8AD0  7C 08 02 A6 */	mflr r0
/* 803C2D54 003B8AD4  7C 63 07 74 */	extsb r3, r3
/* 803C2D58 003B8AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2D5C 003B8ADC  4B FF E9 B5 */	bl VFiPFVOL_getdev
/* 803C2D60 003B8AE0  4B FF FB AD */	bl VFiPFAPI_convertReturnValue
/* 803C2D64 003B8AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2D68 003B8AE8  7C 08 03 A6 */	mtlr r0
/* 803C2D6C 003B8AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2D70 003B8AF0  4E 80 00 20 */	blr 


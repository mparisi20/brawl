.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_fwrite
VFipf2_fwrite:
/* 803C2D24 003B8AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2D28 003B8AA8  7C 08 02 A6 */	mflr r0
/* 803C2D2C 003B8AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2D30 003B8AB0  38 E1 00 08 */	addi r7, r1, 8
/* 803C2D34 003B8AB4  4B FF 9C 35 */	bl VFiPFFILE_fwrite
/* 803C2D38 003B8AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2D3C 003B8ABC  80 61 00 08 */	lwz r3, 8(r1)
/* 803C2D40 003B8AC0  7C 08 03 A6 */	mtlr r0
/* 803C2D44 003B8AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2D48 003B8AC8  4E 80 00 20 */	blr 


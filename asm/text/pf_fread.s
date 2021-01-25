.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_fread
VFipf2_fread:
/* 803C2BE0 003B8960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2BE4 003B8964  7C 08 02 A6 */	mflr r0
/* 803C2BE8 003B8968  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2BEC 003B896C  38 E1 00 08 */	addi r7, r1, 8
/* 803C2BF0 003B8970  4B FF 9B 61 */	bl VFiPFFILE_fread
/* 803C2BF4 003B8974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2BF8 003B8978  80 61 00 08 */	lwz r3, 8(r1)
/* 803C2BFC 003B897C  7C 08 03 A6 */	mtlr r0
/* 803C2C00 003B8980  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2C04 003B8984  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_errnum
VFipf2_errnum:
/* 803C2AB0 003B8830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2AB4 003B8834  7C 08 02 A6 */	mflr r0
/* 803C2AB8 003B8838  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2ABC 003B883C  4B FF EC 45 */	bl VFiPFVOL_errnum
/* 803C2AC0 003B8840  4B FF FD FD */	bl VFiPFAPI_convertError
/* 803C2AC4 003B8844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2AC8 003B8848  7C 08 03 A6 */	mtlr r0
/* 803C2ACC 003B884C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2AD0 003B8850  4E 80 00 20 */	blr 


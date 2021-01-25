.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_fsnext
VFipf2_fsnext:
/* 803C2CA0 003B8A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2CA4 003B8A24  7C 08 02 A6 */	mflr r0
/* 803C2CA8 003B8A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2CAC 003B8A2C  4B FE EF CD */	bl VFiPFDIR_fsnext
/* 803C2CB0 003B8A30  4B FF FC 5D */	bl VFiPFAPI_convertReturnValue
/* 803C2CB4 003B8A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2CB8 003B8A38  7C 08 03 A6 */	mtlr r0
/* 803C2CBC 003B8A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2CC0 003B8A40  4E 80 00 20 */	blr 


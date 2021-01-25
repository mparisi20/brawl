.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_fseek
VFipf2_fseek:
/* 803C2C08 003B8988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2C0C 003B898C  7C 08 02 A6 */	mflr r0
/* 803C2C10 003B8990  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2C14 003B8994  4B FF 9F AD */	bl VFiPFFILE_fseek
/* 803C2C18 003B8998  4B FF FC F5 */	bl VFiPFAPI_convertReturnValue
/* 803C2C1C 003B899C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2C20 003B89A0  7C 08 03 A6 */	mtlr r0
/* 803C2C24 003B89A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2C28 003B89A8  4E 80 00 20 */	blr 


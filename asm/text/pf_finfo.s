.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_finfo
VFipf2_finfo:
/* 803C2AF8 003B8878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2AFC 003B887C  7C 08 02 A6 */	mflr r0
/* 803C2B00 003B8880  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2B04 003B8884  4B FF A4 31 */	bl VFiPFFILE_finfo
/* 803C2B08 003B8888  4B FF FE 05 */	bl VFiPFAPI_convertReturnValue
/* 803C2B0C 003B888C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2B10 003B8890  7C 08 03 A6 */	mtlr r0
/* 803C2B14 003B8894  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2B18 003B8898  4E 80 00 20 */	blr 


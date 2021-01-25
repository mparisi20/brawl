.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFipf2_fclose
VFipf2_fclose:
/* 803C2AD4 003B8854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2AD8 003B8858  7C 08 02 A6 */	mflr r0
/* 803C2ADC 003B885C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2AE0 003B8860  4B FF 99 15 */	bl VFiPFFILE_fclose
/* 803C2AE4 003B8864  4B FF FE 29 */	bl VFiPFAPI_convertReturnValue
/* 803C2AE8 003B8868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2AEC 003B886C  7C 08 03 A6 */	mtlr r0
/* 803C2AF0 003B8870  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2AF4 003B8874  4E 80 00 20 */	blr 


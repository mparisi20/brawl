.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global PFCODE_Combine_Width
PFCODE_Combine_Width:
/* 803D6598 003CC318  54 60 80 1E */	slwi r0, r3, 0x10
/* 803D659C 003CC31C  7C 60 22 14 */	add r3, r0, r4
/* 803D65A0 003CC320  4E 80 00 20 */	blr 

.global PFCODE_Divide_Width
PFCODE_Divide_Width:
/* 803D65A4 003CC324  54 60 84 3E */	srwi r0, r3, 0x10
/* 803D65A8 003CC328  B0 04 00 00 */	sth r0, 0(r4)
/* 803D65AC 003CC32C  B0 65 00 00 */	sth r3, 0(r5)
/* 803D65B0 003CC330  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFiPFCODE_Combine_Width
VFiPFCODE_Combine_Width:
/* 803A992C 0039F6AC  54 60 80 1E */	slwi r0, r3, 0x10
/* 803A9930 0039F6B0  7C 60 22 14 */	add r3, r0, r4
/* 803A9934 0039F6B4  4E 80 00 20 */	blr 

.global VFiPFCODE_Divide_Width
VFiPFCODE_Divide_Width:
/* 803A9938 0039F6B8  54 60 84 3E */	srwi r0, r3, 0x10
/* 803A993C 0039F6BC  B0 04 00 00 */	sth r0, 0(r4)
/* 803A9940 0039F6C0  B0 65 00 00 */	sth r3, 0(r5)
/* 803A9944 0039F6C4  4E 80 00 20 */	blr 


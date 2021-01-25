.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global abs
abs:
/* 803F5060 003EADE0  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 803F5064 003EADE4  7C 80 1A 78 */	xor r0, r4, r3
/* 803F5068 003EADE8  7C 64 00 50 */	subf r3, r4, r0
/* 803F506C 003EADEC  4E 80 00 20 */	blr 


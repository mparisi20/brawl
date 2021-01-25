.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global asin
asin:
/* 80400B34 003F68B4  4B FF C2 E4 */	b __ieee754_asin


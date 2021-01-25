.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global acos
acos:
/* 80400B30 003F68B0  4B FF C0 24 */	b __ieee754_acos


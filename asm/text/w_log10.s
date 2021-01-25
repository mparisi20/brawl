.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global log10
log10:
/* 80400B40 003F68C0  4B FF CD C4 */	b __ieee754_log10


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global FAFread
FAFread:
/* 803EBEE4 003E1C64  4B FF F7 FC */	b pf2_fread


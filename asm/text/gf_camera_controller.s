.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfCameraController$7draw
gfCameraController$7draw:
/* 8001A3A4 00010124  80 63 00 00 */	lwz r3, 0(r3)
/* 8001A3A8 00010128  4B FF F3 C0 */	b gfCamera$7renderDebug


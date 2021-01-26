.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfKeepFrameBuffer$7startKeepScreen
gfKeepFrameBuffer$7startKeepScreen:
/* 8002B61C 0002139C  88 03 00 35 */	lbz r0, 0x35(r3)
/* 8002B620 000213A0  60 00 00 80 */	ori r0, r0, 0x80
/* 8002B624 000213A4  98 03 00 35 */	stb r0, 0x35(r3)
/* 8002B628 000213A8  4E 80 00 20 */	blr 


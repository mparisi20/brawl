.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd15Sound3DListenerFv$7__ct
nw4r3snd15Sound3DListenerFv$7__ct:
/* 801C60AC 001BBE2C  C0 02 A2 A8 */	lfs f0, lbl_805A35C8-_SDA2_BASE_(r2)
/* 801C60B0 001BBE30  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 801C60B4 001BBE34  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 801C60B8 001BBE38  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 801C60BC 001BBE3C  4E 80 00 20 */	blr 


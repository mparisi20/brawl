.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global copysign
copysign:
/* 804004AC 003F622C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804004B0 003F6230  D8 21 00 08 */	stfd f1, 8(r1)
/* 804004B4 003F6234  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 804004B8 003F6238  80 61 00 08 */	lwz r3, 8(r1)
/* 804004BC 003F623C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804004C0 003F6240  54 00 00 00 */	rlwinm r0, r0, 0, 0, 0
/* 804004C4 003F6244  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 804004C8 003F6248  90 01 00 08 */	stw r0, 8(r1)
/* 804004CC 003F624C  C8 21 00 08 */	lfd f1, 8(r1)
/* 804004D0 003F6250  38 21 00 20 */	addi r1, r1, 0x20
/* 804004D4 003F6254  4E 80 00 20 */	blr 


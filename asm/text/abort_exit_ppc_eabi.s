.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global abort
abort:
/* 803FC984 003F2704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC988 003F2708  7C 08 02 A6 */	mflr r0
/* 803FC98C 003F270C  38 60 00 01 */	li r3, 1
/* 803FC990 003F2710  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC994 003F2714  4B FF D8 3D */	bl raise
/* 803FC998 003F2718  38 00 00 01 */	li r0, 1
/* 803FC99C 003F271C  38 60 00 01 */	li r3, 1
/* 803FC9A0 003F2720  90 0D CE D0 */	stw r0, lbl_805A12F0-_SDA_BASE_(r13)
/* 803FC9A4 003F2724  4B DE 78 05 */	bl exit
/* 803FC9A8 003F2728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC9AC 003F272C  7C 08 03 A6 */	mtlr r0
/* 803FC9B0 003F2730  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC9B4 003F2734  4E 80 00 20 */	blr 

.global atexit
atexit:
/* 803FC9B8 003F2738  4B FF 3D CC */	b __register_atexit


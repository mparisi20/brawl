.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TRKMessageSend
TRKMessageSend:
/* 8040123C 003F6FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80401240 003F6FC0  7C 08 02 A6 */	mflr r0
/* 80401244 003F6FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80401248 003F6FC8  80 83 00 08 */	lwz r4, 8(r3)
/* 8040124C 003F6FCC  38 63 00 10 */	addi r3, r3, 0x10
/* 80401250 003F6FD0  48 00 49 1D */	bl TRKWriteUARTN
/* 80401254 003F6FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80401258 003F6FD8  38 60 00 00 */	li r3, 0
/* 8040125C 003F6FDC  7C 08 03 A6 */	mtlr r0
/* 80401260 003F6FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80401264 003F6FE4  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TRKTargetContinue
TRKTargetContinue:
/* 80405EB8 003FBC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405EBC 003FBC3C  7C 08 02 A6 */	mflr r0
/* 80405EC0 003FBC40  38 60 00 00 */	li r3, 0
/* 80405EC4 003FBC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405EC8 003FBC48  4B FF DC AD */	bl TRKTargetSetStopped
/* 80405ECC 003FBC4C  4B FF FC 41 */	bl UnreserveEXI2Port
/* 80405ED0 003FBC50  4B FF DB 1D */	bl TRKSwapAndGo
/* 80405ED4 003FBC54  4B FF FC 69 */	bl ReserveEXI2Port
/* 80405ED8 003FBC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405EDC 003FBC5C  38 60 00 00 */	li r3, 0
/* 80405EE0 003FBC60  7C 08 03 A6 */	mtlr r0
/* 80405EE4 003FBC64  38 21 00 10 */	addi r1, r1, 0x10
/* 80405EE8 003FBC68  4E 80 00 20 */	blr 


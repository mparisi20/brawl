.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global SystemCallVector
SystemCallVector:
/* 801E03FC 001D617C  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 801E0400 001D6180  61 2A 00 08 */	ori r10, r9, 8
/* 801E0404 001D6184  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 801E0408 001D6188  4C 00 01 2C */	isync 
/* 801E040C 001D618C  7C 00 04 AC */	sync 0
/* 801E0410 001D6190  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 801E0414 001D6194  4C 00 00 64 */	rfi 

.global __OSSystemCallVectorEnd
__OSSystemCallVectorEnd:
/* 801E0418 001D6198  60 00 00 00 */	nop 

.global __OSInitSystemCall
__OSInitSystemCall:
/* 801E041C 001D619C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E0420 001D61A0  7C 08 02 A6 */	mflr r0
/* 801E0424 001D61A4  3C 80 80 1E */	lis r4, SystemCallVector@ha
/* 801E0428 001D61A8  3C A0 80 1E */	lis r5, __OSSystemCallVectorEnd@ha
/* 801E042C 001D61AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E0430 001D61B0  38 84 03 FC */	addi r4, r4, SystemCallVector@l
/* 801E0434 001D61B4  38 A5 04 18 */	addi r5, r5, __OSSystemCallVectorEnd@l
/* 801E0438 001D61B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E043C 001D61BC  3F E0 80 00 */	lis r31, 0x80000C00@ha
/* 801E0440 001D61C0  38 7F 0C 00 */	addi r3, r31, 0x80000C00@l
/* 801E0444 001D61C4  7C A4 28 50 */	subf r5, r4, r5
/* 801E0448 001D61C8  4B E2 3E F1 */	bl memcpy
/* 801E044C 001D61CC  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 801E0450 001D61D0  38 80 01 00 */	li r4, 0x100
/* 801E0454 001D61D4  4B FF 72 F5 */	bl DCFlushRangeNoSync
/* 801E0458 001D61D8  7C 00 04 AC */	sync 0
/* 801E045C 001D61DC  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 801E0460 001D61E0  38 80 01 00 */	li r4, 0x100
/* 801E0464 001D61E4  4B FF 73 69 */	bl ICInvalidateRange
/* 801E0468 001D61E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E046C 001D61EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E0470 001D61F0  7C 08 03 A6 */	mtlr r0
/* 801E0474 001D61F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801E0478 001D61F8  4E 80 00 20 */	blr 


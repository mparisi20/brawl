.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global MWExitCriticalSection
MWExitCriticalSection:
/* 80406478 003FC1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040647C 003FC1FC  7C 08 02 A6 */	mflr r0
/* 80406480 003FC200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80406484 003FC204  80 63 00 00 */	lwz r3, 0(r3)
/* 80406488 003FC208  4B DD 6A B1 */	bl OSRestoreInterrupts
/* 8040648C 003FC20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406490 003FC210  7C 08 03 A6 */	mtlr r0
/* 80406494 003FC214  38 21 00 10 */	addi r1, r1, 0x10
/* 80406498 003FC218  4E 80 00 20 */	blr 

.global MWEnterCriticalSection
MWEnterCriticalSection:
/* 8040649C 003FC21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804064A0 003FC220  7C 08 02 A6 */	mflr r0
/* 804064A4 003FC224  90 01 00 14 */	stw r0, 0x14(r1)
/* 804064A8 003FC228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804064AC 003FC22C  7C 7F 1B 78 */	mr r31, r3
/* 804064B0 003FC230  4B DD 6A 61 */	bl OSDisableInterrupts
/* 804064B4 003FC234  90 7F 00 00 */	stw r3, 0(r31)
/* 804064B8 003FC238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804064BC 003FC23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804064C0 003FC240  7C 08 03 A6 */	mtlr r0
/* 804064C4 003FC244  38 21 00 10 */	addi r1, r1, 0x10
/* 804064C8 003FC248  4E 80 00 20 */	blr 

.global MWInitializeCriticalSection
MWInitializeCriticalSection:
/* 804064CC 003FC24C  4E 80 00 20 */	blr 
/* 804064D0 003FC250  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 804064D4 003FC254  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 804064D8 003FC258  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 804064DC 003FC25C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */


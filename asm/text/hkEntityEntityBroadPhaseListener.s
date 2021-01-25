.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkEntityEntityBroadPhaseListener$7__ct
hkEntityEntityBroadPhaseListener$7__ct:
/* 802F3420 002E91A0  3C A0 80 49 */	lis r5, lbl_804886A8@ha
/* 802F3424 002E91A4  38 00 00 01 */	li r0, 1
/* 802F3428 002E91A8  38 A5 86 A8 */	addi r5, r5, lbl_804886A8@l
/* 802F342C 002E91AC  B0 03 00 06 */	sth r0, 6(r3)
/* 802F3430 002E91B0  90 A3 00 00 */	stw r5, 0(r3)
/* 802F3434 002E91B4  90 83 00 08 */	stw r4, 8(r3)
/* 802F3438 002E91B8  4E 80 00 20 */	blr 

.global hkEntityEntityBroadPhaseListener$7addCollisionPair
hkEntityEntityBroadPhaseListener$7addCollisionPair:
/* 802F343C 002E91BC  80 A4 00 00 */	lwz r5, 0(r4)
/* 802F3440 002E91C0  80 C4 00 04 */	lwz r6, 4(r4)
/* 802F3444 002E91C4  88 05 00 05 */	lbz r0, 5(r5)
/* 802F3448 002E91C8  80 83 00 08 */	lwz r4, 8(r3)
/* 802F344C 002E91CC  7C 03 07 74 */	extsb r3, r0
/* 802F3450 002E91D0  88 06 00 05 */	lbz r0, 5(r6)
/* 802F3454 002E91D4  7C 65 1A 14 */	add r3, r5, r3
/* 802F3458 002E91D8  80 A4 00 68 */	lwz r5, 0x68(r4)
/* 802F345C 002E91DC  A1 03 00 1A */	lhz r8, 0x1a(r3)
/* 802F3460 002E91E0  7C 00 07 74 */	extsb r0, r0
/* 802F3464 002E91E4  7C 86 02 14 */	add r4, r6, r0
/* 802F3468 002E91E8  80 E5 00 00 */	lwz r7, 0(r5)
/* 802F346C 002E91EC  55 00 18 38 */	slwi r0, r8, 3
/* 802F3470 002E91F0  A0 C4 00 1A */	lhz r6, 0x1a(r4)
/* 802F3474 002E91F4  7C 00 42 14 */	add r0, r0, r8
/* 802F3478 002E91F8  7C 07 02 14 */	add r0, r7, r0
/* 802F347C 002E91FC  7C C0 32 14 */	add r6, r0, r6
/* 802F3480 002E9200  88 06 19 D4 */	lbz r0, 0x19d4(r6)
/* 802F3484 002E9204  7C 00 07 75 */	extsb. r0, r0
/* 802F3488 002E9208  4D 82 00 20 */	beqlr 
/* 802F348C 002E920C  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 802F3490 002E9210  7C C7 02 14 */	add r6, r7, r0
/* 802F3494 002E9214  88 06 1A 38 */	lbz r0, 0x1a38(r6)
/* 802F3498 002E9218  98 05 00 0C */	stb r0, 0xc(r5)
/* 802F349C 002E921C  48 00 00 54 */	b hkWorldAgentUtil$7addAgent
/* 802F34A0 002E9220  4E 80 00 20 */	blr 

.global hkEntityEntityBroadPhaseListener$7removeCollisionPair
hkEntityEntityBroadPhaseListener$7removeCollisionPair:
/* 802F34A4 002E9224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F34A8 002E9228  7C 08 02 A6 */	mflr r0
/* 802F34AC 002E922C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F34B0 002E9230  80 A4 00 00 */	lwz r5, 0(r4)
/* 802F34B4 002E9234  80 84 00 04 */	lwz r4, 4(r4)
/* 802F34B8 002E9238  88 65 00 05 */	lbz r3, 5(r5)
/* 802F34BC 002E923C  88 04 00 05 */	lbz r0, 5(r4)
/* 802F34C0 002E9240  7C 63 07 74 */	extsb r3, r3
/* 802F34C4 002E9244  7C 00 07 74 */	extsb r0, r0
/* 802F34C8 002E9248  7C 65 1A 14 */	add r3, r5, r3
/* 802F34CC 002E924C  7C 84 02 14 */	add r4, r4, r0
/* 802F34D0 002E9250  48 00 CF B9 */	bl hkAgentNnMachine_FindAgent
/* 802F34D4 002E9254  2C 03 00 00 */	cmpwi r3, 0
/* 802F34D8 002E9258  41 82 00 08 */	beq lbl_802F34E0
/* 802F34DC 002E925C  48 00 01 95 */	bl hkWorldAgentUtil$7removeAgent
lbl_802F34E0:
/* 802F34E0 002E9260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F34E4 002E9264  7C 08 03 A6 */	mtlr r0
/* 802F34E8 002E9268  38 21 00 10 */	addi r1, r1, 0x10
/* 802F34EC 002E926C  4E 80 00 20 */	blr 


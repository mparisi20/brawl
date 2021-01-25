.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global efParticleCounter$7foreachPM
efParticleCounter$7foreachPM:
/* 8005D4F8 00053278  80 A4 00 00 */	lwz r5, 0(r4)
/* 8005D4FC 0005327C  A0 03 00 40 */	lhz r0, 0x40(r3)
/* 8005D500 00053280  7C 05 02 14 */	add r0, r5, r0
/* 8005D504 00053284  90 04 00 00 */	stw r0, 0(r4)
/* 8005D508 00053288  4E 80 00 20 */	blr 

.global efParticleCounter$7count
efParticleCounter$7count:
/* 8005D50C 0005328C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005D510 00053290  7C 08 02 A6 */	mflr r0
/* 8005D514 00053294  3C C0 80 06 */	lis r6, efParticleCounter$7foreachPM@ha
/* 8005D518 00053298  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005D51C 0005329C  38 00 00 00 */	li r0, 0
/* 8005D520 000532A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005D524 000532A4  7C 7F 1B 78 */	mr r31, r3
/* 8005D528 000532A8  7F E5 FB 78 */	mr r5, r31
/* 8005D52C 000532AC  90 03 00 00 */	stw r0, 0(r3)
/* 8005D530 000532B0  7C 83 23 78 */	mr r3, r4
/* 8005D534 000532B4  38 86 D4 F8 */	addi r4, r6, efParticleCounter$7foreachPM@l
/* 8005D538 000532B8  38 C0 00 01 */	li r6, 1
/* 8005D53C 000532BC  48 10 6F 45 */	bl nw4r2ef6EffectFPFPvUl_vUlb$7ForeachParticleManager
/* 8005D540 000532C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8005D544 000532C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005D548 000532C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005D54C 000532CC  7C 08 03 A6 */	mtlr r0
/* 8005D550 000532D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8005D554 000532D4  4E 80 00 20 */	blr 


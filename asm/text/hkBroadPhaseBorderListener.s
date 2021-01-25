.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkBroadPhaseBorderListener$7addCollisionPair
hkBroadPhaseBorderListener$7addCollisionPair:
/* 802F3290 002E9010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3294 002E9014  7C 08 02 A6 */	mflr r0
/* 802F3298 002E9018  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F329C 002E901C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F32A0 002E9020  7C 9F 23 78 */	mr r31, r4
/* 802F32A4 002E9024  80 A4 00 00 */	lwz r5, 0(r4)
/* 802F32A8 002E9028  88 C5 00 04 */	lbz r6, 4(r5)
/* 802F32AC 002E902C  2C 06 00 03 */	cmpwi r6, 3
/* 802F32B0 002E9030  40 82 00 14 */	bne lbl_802F32C4
/* 802F32B4 002E9034  80 64 00 04 */	lwz r3, 4(r4)
/* 802F32B8 002E9038  88 03 00 04 */	lbz r0, 4(r3)
/* 802F32BC 002E903C  2C 00 00 03 */	cmpwi r0, 3
/* 802F32C0 002E9040  41 82 00 84 */	beq lbl_802F3344
lbl_802F32C4:
/* 802F32C4 002E9044  7C C0 07 74 */	extsb r0, r6
/* 802F32C8 002E9048  2C 00 00 03 */	cmpwi r0, 3
/* 802F32CC 002E904C  40 82 00 34 */	bne lbl_802F3300
/* 802F32D0 002E9050  88 05 00 05 */	lbz r0, 5(r5)
/* 802F32D4 002E9054  80 84 00 04 */	lwz r4, 4(r4)
/* 802F32D8 002E9058  7C 00 07 74 */	extsb r0, r0
/* 802F32DC 002E905C  7C A5 02 14 */	add r5, r5, r0
/* 802F32E0 002E9060  88 04 00 05 */	lbz r0, 5(r4)
/* 802F32E4 002E9064  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802F32E8 002E9068  7D 83 28 6E */	lwzux r12, r3, r5
/* 802F32EC 002E906C  7C 00 07 74 */	extsb r0, r0
/* 802F32F0 002E9070  7C 84 02 14 */	add r4, r4, r0
/* 802F32F4 002E9074  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802F32F8 002E9078  7D 89 03 A6 */	mtctr r12
/* 802F32FC 002E907C  4E 80 04 21 */	bctrl 
lbl_802F3300:
/* 802F3300 002E9080  80 7F 00 04 */	lwz r3, 4(r31)
/* 802F3304 002E9084  88 03 00 04 */	lbz r0, 4(r3)
/* 802F3308 002E9088  2C 00 00 03 */	cmpwi r0, 3
/* 802F330C 002E908C  40 82 00 38 */	bne lbl_802F3344
/* 802F3310 002E9090  80 BF 00 04 */	lwz r5, 4(r31)
/* 802F3314 002E9094  80 9F 00 00 */	lwz r4, 0(r31)
/* 802F3318 002E9098  88 65 00 05 */	lbz r3, 5(r5)
/* 802F331C 002E909C  88 04 00 05 */	lbz r0, 5(r4)
/* 802F3320 002E90A0  7C 63 07 74 */	extsb r3, r3
/* 802F3324 002E90A4  7C A5 1A 14 */	add r5, r5, r3
/* 802F3328 002E90A8  7C 00 07 74 */	extsb r0, r0
/* 802F332C 002E90AC  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802F3330 002E90B0  7C 84 02 14 */	add r4, r4, r0
/* 802F3334 002E90B4  7D 83 28 6E */	lwzux r12, r3, r5
/* 802F3338 002E90B8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802F333C 002E90BC  7D 89 03 A6 */	mtctr r12
/* 802F3340 002E90C0  4E 80 04 21 */	bctrl 
lbl_802F3344:
/* 802F3344 002E90C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3348 002E90C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F334C 002E90CC  7C 08 03 A6 */	mtlr r0
/* 802F3350 002E90D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3354 002E90D4  4E 80 00 20 */	blr 

.global hkBroadPhaseBorderListener$7removeCollisionPair
hkBroadPhaseBorderListener$7removeCollisionPair:
/* 802F3358 002E90D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F335C 002E90DC  7C 08 02 A6 */	mflr r0
/* 802F3360 002E90E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3364 002E90E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3368 002E90E8  7C 9F 23 78 */	mr r31, r4
/* 802F336C 002E90EC  80 A4 00 00 */	lwz r5, 0(r4)
/* 802F3370 002E90F0  88 C5 00 04 */	lbz r6, 4(r5)
/* 802F3374 002E90F4  2C 06 00 03 */	cmpwi r6, 3
/* 802F3378 002E90F8  40 82 00 14 */	bne lbl_802F338C
/* 802F337C 002E90FC  80 64 00 04 */	lwz r3, 4(r4)
/* 802F3380 002E9100  88 03 00 04 */	lbz r0, 4(r3)
/* 802F3384 002E9104  2C 00 00 03 */	cmpwi r0, 3
/* 802F3388 002E9108  41 82 00 84 */	beq lbl_802F340C
lbl_802F338C:
/* 802F338C 002E910C  7C C0 07 74 */	extsb r0, r6
/* 802F3390 002E9110  2C 00 00 03 */	cmpwi r0, 3
/* 802F3394 002E9114  40 82 00 34 */	bne lbl_802F33C8
/* 802F3398 002E9118  88 05 00 05 */	lbz r0, 5(r5)
/* 802F339C 002E911C  80 84 00 04 */	lwz r4, 4(r4)
/* 802F33A0 002E9120  7C 00 07 74 */	extsb r0, r0
/* 802F33A4 002E9124  7C A5 02 14 */	add r5, r5, r0
/* 802F33A8 002E9128  88 04 00 05 */	lbz r0, 5(r4)
/* 802F33AC 002E912C  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802F33B0 002E9130  7D 83 28 6E */	lwzux r12, r3, r5
/* 802F33B4 002E9134  7C 00 07 74 */	extsb r0, r0
/* 802F33B8 002E9138  7C 84 02 14 */	add r4, r4, r0
/* 802F33BC 002E913C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802F33C0 002E9140  7D 89 03 A6 */	mtctr r12
/* 802F33C4 002E9144  4E 80 04 21 */	bctrl 
lbl_802F33C8:
/* 802F33C8 002E9148  80 7F 00 04 */	lwz r3, 4(r31)
/* 802F33CC 002E914C  88 03 00 04 */	lbz r0, 4(r3)
/* 802F33D0 002E9150  2C 00 00 03 */	cmpwi r0, 3
/* 802F33D4 002E9154  40 82 00 38 */	bne lbl_802F340C
/* 802F33D8 002E9158  80 BF 00 04 */	lwz r5, 4(r31)
/* 802F33DC 002E915C  80 9F 00 00 */	lwz r4, 0(r31)
/* 802F33E0 002E9160  88 65 00 05 */	lbz r3, 5(r5)
/* 802F33E4 002E9164  88 04 00 05 */	lbz r0, 5(r4)
/* 802F33E8 002E9168  7C 63 07 74 */	extsb r3, r3
/* 802F33EC 002E916C  7C A5 1A 14 */	add r5, r5, r3
/* 802F33F0 002E9170  7C 00 07 74 */	extsb r0, r0
/* 802F33F4 002E9174  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802F33F8 002E9178  7C 84 02 14 */	add r4, r4, r0
/* 802F33FC 002E917C  7D 83 28 6E */	lwzux r12, r3, r5
/* 802F3400 002E9180  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802F3404 002E9184  7D 89 03 A6 */	mtctr r12
/* 802F3408 002E9188  4E 80 04 21 */	bctrl 
lbl_802F340C:
/* 802F340C 002E918C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3410 002E9190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F3414 002E9194  7C 08 03 A6 */	mtlr r0
/* 802F3418 002E9198  38 21 00 10 */	addi r1, r1, 0x10
/* 802F341C 002E919C  4E 80 00 20 */	blr 


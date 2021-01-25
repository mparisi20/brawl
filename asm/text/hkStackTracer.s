.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkStackTracer$7__ct
hkStackTracer$7__ct:
/* 8027E514 00274294  3C 80 80 48 */	lis r4, lbl_80486378@ha
/* 8027E518 00274298  38 00 00 01 */	li r0, 1
/* 8027E51C 0027429C  38 84 63 78 */	addi r4, r4, lbl_80486378@l
/* 8027E520 002742A0  B0 03 00 06 */	sth r0, 6(r3)
/* 8027E524 002742A4  90 83 00 00 */	stw r4, 0(r3)
/* 8027E528 002742A8  4E 80 00 20 */	blr 

.global hkStackTracer$7__dt
hkStackTracer$7__dt:
/* 8027E52C 002742AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E530 002742B0  7C 08 02 A6 */	mflr r0
/* 8027E534 002742B4  2C 03 00 00 */	cmpwi r3, 0
/* 8027E538 002742B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E53C 002742BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027E540 002742C0  7C 7F 1B 78 */	mr r31, r3
/* 8027E544 002742C4  41 82 00 2C */	beq lbl_8027E570
/* 8027E548 002742C8  2C 04 00 00 */	cmpwi r4, 0
/* 8027E54C 002742CC  40 81 00 24 */	ble lbl_8027E570
/* 8027E550 002742D0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 8027E554 002742D4  7F E4 FB 78 */	mr r4, r31
/* 8027E558 002742D8  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8027E55C 002742DC  38 C0 00 13 */	li r6, 0x13
/* 8027E560 002742E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8027E564 002742E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8027E568 002742E8  7D 89 03 A6 */	mtctr r12
/* 8027E56C 002742EC  4E 80 04 21 */	bctrl 
lbl_8027E570:
/* 8027E570 002742F0  7F E3 FB 78 */	mr r3, r31
/* 8027E574 002742F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027E578 002742F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E57C 002742FC  7C 08 03 A6 */	mtlr r0
/* 8027E580 00274300  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E584 00274304  4E 80 00 20 */	blr 

.global hkStackTracer$7dumpStackTrace
hkStackTracer$7dumpStackTrace:
/* 8027E588 00274308  3C 60 80 41 */	lis r3, lbl_8040F408@ha
/* 8027E58C 0027430C  7C CC 33 78 */	mr r12, r6
/* 8027E590 00274310  7C E4 3B 78 */	mr r4, r7
/* 8027E594 00274314  38 63 F4 08 */	addi r3, r3, lbl_8040F408@l
/* 8027E598 00274318  7D 89 03 A6 */	mtctr r12
/* 8027E59C 0027431C  4E 80 04 20 */	bctr 

.global hkStackTracer$7getStackTrace
hkStackTracer$7getStackTrace:
/* 8027E5A0 00274320  38 60 00 00 */	li r3, 0
/* 8027E5A4 00274324  4E 80 00 20 */	blr 


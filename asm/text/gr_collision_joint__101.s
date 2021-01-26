.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global grCollisionJoint$7getSegment
grCollisionJoint$7getSegment:
/* 80113BA8 00109928  A0 03 00 00 */	lhz r0, 0(r3)
/* 80113BAC 0010992C  1C E4 00 12 */	mulli r7, r4, 0x12
/* 80113BB0 00109930  81 03 00 34 */	lwz r8, 0x34(r3)
/* 80113BB4 00109934  7C A4 2B 78 */	mr r4, r5
/* 80113BB8 00109938  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80113BBC 0010993C  38 C0 00 00 */	li r6, 0
/* 80113BC0 00109940  1C 00 00 12 */	mulli r0, r0, 0x12
/* 80113BC4 00109944  7C 08 02 14 */	add r0, r8, r0
/* 80113BC8 00109948  7C A7 02 14 */	add r5, r7, r0
/* 80113BCC 0010994C  4B FF DD 9C */	b grCollision$7getSegment


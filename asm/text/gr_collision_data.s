.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global grCollData$7getJointNodeName
grCollData$7getJointNodeName:
/* 80110720 001064A0  A0 03 00 00 */	lhz r0, 0(r3)
/* 80110724 001064A4  7C 04 00 40 */	cmplw r4, r0
/* 80110728 001064A8  41 80 00 0C */	blt lbl_80110734
/* 8011072C 001064AC  38 60 00 00 */	li r3, 0
/* 80110730 001064B0  4E 80 00 20 */	blr 
lbl_80110734:
/* 80110734 001064B4  1C 04 00 6C */	mulli r0, r4, 0x6c
/* 80110738 001064B8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8011073C 001064BC  7C 63 02 14 */	add r3, r3, r0
/* 80110740 001064C0  38 63 00 4C */	addi r3, r3, 0x4c
/* 80110744 001064C4  4E 80 00 20 */	blr 


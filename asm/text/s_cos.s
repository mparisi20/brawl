.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global cos
cos:
/* 804004D8 003F6258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804004DC 003F625C  7C 08 02 A6 */	mflr r0
/* 804004E0 003F6260  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 804004E4 003F6264  C8 42 BD 90 */	lfd f2, lbl_805A50B0-_SDA2_BASE_(r2)
/* 804004E8 003F6268  D8 21 00 08 */	stfd f1, 8(r1)
/* 804004EC 003F626C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804004F0 003F6270  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 804004F4 003F6274  80 61 00 08 */	lwz r3, 8(r1)
/* 804004F8 003F6278  54 63 00 7E */	clrlwi r3, r3, 1
/* 804004FC 003F627C  7C 03 00 00 */	cmpw r3, r0
/* 80400500 003F6280  41 81 00 0C */	bgt lbl_8040050C
/* 80400504 003F6284  4B FF E0 F5 */	bl __kernel_cos
/* 80400508 003F6288  48 00 00 94 */	b lbl_8040059C
lbl_8040050C:
/* 8040050C 003F628C  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80400510 003F6290  7C 03 00 00 */	cmpw r3, r0
/* 80400514 003F6294  41 80 00 0C */	blt lbl_80400520
/* 80400518 003F6298  FC 21 08 28 */	fsub f1, f1, f1
/* 8040051C 003F629C  48 00 00 80 */	b lbl_8040059C
lbl_80400520:
/* 80400520 003F62A0  38 61 00 10 */	addi r3, r1, 0x10
/* 80400524 003F62A4  4B FF DD 3D */	bl __ieee754_rem_pio2
/* 80400528 003F62A8  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8040052C 003F62AC  2C 00 00 01 */	cmpwi r0, 1
/* 80400530 003F62B0  41 82 00 30 */	beq lbl_80400560
/* 80400534 003F62B4  40 80 00 10 */	bge lbl_80400544
/* 80400538 003F62B8  2C 00 00 00 */	cmpwi r0, 0
/* 8040053C 003F62BC  40 80 00 14 */	bge lbl_80400550
/* 80400540 003F62C0  48 00 00 4C */	b lbl_8040058C
lbl_80400544:
/* 80400544 003F62C4  2C 00 00 03 */	cmpwi r0, 3
/* 80400548 003F62C8  40 80 00 44 */	bge lbl_8040058C
/* 8040054C 003F62CC  48 00 00 2C */	b lbl_80400578
lbl_80400550:
/* 80400550 003F62D0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80400554 003F62D4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80400558 003F62D8  4B FF E0 A1 */	bl __kernel_cos
/* 8040055C 003F62DC  48 00 00 40 */	b lbl_8040059C
lbl_80400560:
/* 80400560 003F62E0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80400564 003F62E4  38 60 00 01 */	li r3, 1
/* 80400568 003F62E8  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8040056C 003F62EC  4B FF F8 A9 */	bl __kernel_sin
/* 80400570 003F62F0  FC 20 08 50 */	fneg f1, f1
/* 80400574 003F62F4  48 00 00 28 */	b lbl_8040059C
lbl_80400578:
/* 80400578 003F62F8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8040057C 003F62FC  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80400580 003F6300  4B FF E0 79 */	bl __kernel_cos
/* 80400584 003F6304  FC 20 08 50 */	fneg f1, f1
/* 80400588 003F6308  48 00 00 14 */	b lbl_8040059C
lbl_8040058C:
/* 8040058C 003F630C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80400590 003F6310  38 60 00 01 */	li r3, 1
/* 80400594 003F6314  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80400598 003F6318  4B FF F8 7D */	bl __kernel_sin
lbl_8040059C:
/* 8040059C 003F631C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804005A0 003F6320  7C 08 03 A6 */	mtlr r0
/* 804005A4 003F6324  38 21 00 20 */	addi r1, r1, 0x20
/* 804005A8 003F6328  4E 80 00 20 */	blr 

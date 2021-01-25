.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMath$7fabs
hkMath$7fabs:
/* 802A0BCC 0029694C  FC 20 0A 10 */	fabs f1, f1
/* 802A0BD0 00296950  FC 20 08 18 */	frsp f1, f1
/* 802A0BD4 00296954  4E 80 00 20 */	blr 

.global hkBool$7__opb
hkBool$7__opb:
/* 802A0BD8 00296958  88 03 00 00 */	lbz r0, 0(r3)
/* 802A0BDC 0029695C  7C 03 07 74 */	extsb r3, r0
/* 802A0BE0 00296960  7C 03 00 D0 */	neg r0, r3
/* 802A0BE4 00296964  7C 00 1B 78 */	or r0, r0, r3
/* 802A0BE8 00296968  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802A0BEC 0029696C  4E 80 00 20 */	blr 

.global hkBool$7__as
hkBool$7__as:
/* 802A0BF0 00296970  98 83 00 00 */	stb r4, 0(r3)
/* 802A0BF4 00296974  4E 80 00 20 */	blr 

.global hkMath$7sqrt
hkMath$7sqrt:
/* 802A0BF8 00296978  C0 02 AB 94 */	lfs f0, lbl_805A3EB4-_SDA2_BASE_(r2)
/* 802A0BFC 0029697C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0C00 00296980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A0C04 00296984  4C 40 13 82 */	cror 2, 0, 2
/* 802A0C08 00296988  40 82 00 14 */	bne lbl_802A0C1C
/* 802A0C0C 0029698C  3C 00 7F 80 */	lis r0, 0x7f80
/* 802A0C10 00296990  90 01 00 08 */	stw r0, 8(r1)
/* 802A0C14 00296994  C0 21 00 08 */	lfs f1, 8(r1)
/* 802A0C18 00296998  48 00 00 24 */	b lbl_802A0C3C
lbl_802A0C1C:
/* 802A0C1C 0029699C  FC 60 08 34 */	frsqrte f3, f1
/* 802A0C20 002969A0  C0 42 AB 98 */	lfs f2, lbl_805A3EB8-_SDA2_BASE_(r2)
/* 802A0C24 002969A4  C0 02 AB 9C */	lfs f0, lbl_805A3EBC-_SDA2_BASE_(r2)
/* 802A0C28 002969A8  FC 60 18 18 */	frsp f3, f3
/* 802A0C2C 002969AC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 802A0C30 002969B0  EC 42 00 F2 */	fmuls f2, f2, f3
/* 802A0C34 002969B4  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 802A0C38 002969B8  EC 22 00 32 */	fmuls f1, f2, f0
lbl_802A0C3C:
/* 802A0C3C 002969BC  C0 02 AB 90 */	lfs f0, lbl_805A3EB0-_SDA2_BASE_(r2)
/* 802A0C40 002969C0  EC 20 08 24 */	fdivs f1, f0, f1
/* 802A0C44 002969C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0C48 002969C8  4E 80 00 20 */	blr 

.global hkMath$7min2$0f$1
hkMath$7min2$0f$1:
/* 802A0C4C 002969CC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802A0C50 002969D0  4D 80 00 20 */	bltlr 
/* 802A0C54 002969D4  FC 20 10 90 */	fmr f1, f2
/* 802A0C58 002969D8  4E 80 00 20 */	blr 

.global __sinit_$3hkVehicleFrictionSolver_cpp
__sinit_$3hkVehicleFrictionSolver_cpp:
/* 802A0C5C 002969DC  38 00 00 00 */	li r0, 0
/* 802A0C60 002969E0  98 0D CA E0 */	stb r0, lbl_805A0F00-_SDA_BASE_(r13)
/* 802A0C64 002969E4  4E 80 00 20 */	blr 


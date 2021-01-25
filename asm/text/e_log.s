.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global __ieee754_log
__ieee754_log:
/* 803FD650 003F33D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FD654 003F33D4  3C 00 00 10 */	lis r0, 0x10
/* 803FD658 003F33D8  38 E0 00 00 */	li r7, 0
/* 803FD65C 003F33DC  D8 21 00 08 */	stfd f1, 8(r1)
/* 803FD660 003F33E0  81 01 00 08 */	lwz r8, 8(r1)
/* 803FD664 003F33E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803FD668 003F33E8  7C 08 00 00 */	cmpw r8, r0
/* 803FD66C 003F33EC  40 80 00 54 */	bge lbl_803FD6C0
/* 803FD670 003F33F0  55 00 00 7E */	clrlwi r0, r8, 1
/* 803FD674 003F33F4  7C 00 1B 79 */	or. r0, r0, r3
/* 803FD678 003F33F8  40 82 00 14 */	bne lbl_803FD68C
/* 803FD67C 003F33FC  C8 22 BA 48 */	lfd f1, lbl_805A4D68-_SDA2_BASE_(r2)
/* 803FD680 003F3400  C8 0D CE D8 */	lfd f0, lbl_805A12F8-_SDA_BASE_(r13)
/* 803FD684 003F3404  FC 21 00 24 */	fdiv f1, f1, f0
/* 803FD688 003F3408  48 00 02 74 */	b lbl_803FD8FC
lbl_803FD68C:
/* 803FD68C 003F340C  2C 08 00 00 */	cmpwi r8, 0
/* 803FD690 003F3410  40 80 00 1C */	bge lbl_803FD6AC
/* 803FD694 003F3414  FC 21 08 28 */	fsub f1, f1, f1
/* 803FD698 003F3418  C8 0D CE D8 */	lfd f0, lbl_805A12F8-_SDA_BASE_(r13)
/* 803FD69C 003F341C  38 00 00 21 */	li r0, 0x21
/* 803FD6A0 003F3420  90 0D CE C0 */	stw r0, lbl_805A12E0-_SDA_BASE_(r13)
/* 803FD6A4 003F3424  FC 21 00 24 */	fdiv f1, f1, f0
/* 803FD6A8 003F3428  48 00 02 54 */	b lbl_803FD8FC
lbl_803FD6AC:
/* 803FD6AC 003F342C  C8 02 BA 50 */	lfd f0, lbl_805A4D70-_SDA2_BASE_(r2)
/* 803FD6B0 003F3430  38 E0 FF CA */	li r7, -54
/* 803FD6B4 003F3434  FC 21 00 32 */	fmul f1, f1, f0
/* 803FD6B8 003F3438  D8 21 00 08 */	stfd f1, 8(r1)
/* 803FD6BC 003F343C  81 01 00 08 */	lwz r8, 8(r1)
lbl_803FD6C0:
/* 803FD6C0 003F3440  3C 00 7F F0 */	lis r0, 0x7ff0
/* 803FD6C4 003F3444  7C 08 00 00 */	cmpw r8, r0
/* 803FD6C8 003F3448  41 80 00 0C */	blt lbl_803FD6D4
/* 803FD6CC 003F344C  FC 21 08 2A */	fadd f1, f1, f1
/* 803FD6D0 003F3450  48 00 02 2C */	b lbl_803FD8FC
lbl_803FD6D4:
/* 803FD6D4 003F3454  7D 05 A6 70 */	srawi r5, r8, 0x14
/* 803FD6D8 003F3458  55 08 03 3E */	clrlwi r8, r8, 0xc
/* 803FD6DC 003F345C  3C 68 00 09 */	addis r3, r8, 9
/* 803FD6E0 003F3460  C8 02 BA 58 */	lfd f0, lbl_805A4D78-_SDA2_BASE_(r2)
/* 803FD6E4 003F3464  38 83 5F 64 */	addi r4, r3, 0x5f64
/* 803FD6E8 003F3468  38 08 00 02 */	addi r0, r8, 2
/* 803FD6EC 003F346C  54 83 02 D6 */	rlwinm r3, r4, 0, 0xb, 0xb
/* 803FD6F0 003F3470  7C A7 2A 14 */	add r5, r7, r5
/* 803FD6F4 003F3474  6C 63 3F F0 */	xoris r3, r3, 0x3ff0
/* 803FD6F8 003F3478  54 00 03 3E */	clrlwi r0, r0, 0xc
/* 803FD6FC 003F347C  7D 03 1B 78 */	or r3, r8, r3
/* 803FD700 003F3480  38 E5 FC 01 */	addi r7, r5, -1023
/* 803FD704 003F3484  90 61 00 08 */	stw r3, 8(r1)
/* 803FD708 003F3488  54 83 67 FE */	rlwinm r3, r4, 0xc, 0x1f, 0x1f
/* 803FD70C 003F348C  2C 00 00 03 */	cmpwi r0, 3
/* 803FD710 003F3490  C8 21 00 08 */	lfd f1, 8(r1)
/* 803FD714 003F3494  7C E7 1A 14 */	add r7, r7, r3
/* 803FD718 003F3498  FC 01 00 28 */	fsub f0, f1, f0
/* 803FD71C 003F349C  40 80 00 B4 */	bge lbl_803FD7D0
/* 803FD720 003F34A0  C8 2D CE D8 */	lfd f1, lbl_805A12F8-_SDA_BASE_(r13)
/* 803FD724 003F34A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803FD728 003F34A8  40 82 00 44 */	bne lbl_803FD76C
/* 803FD72C 003F34AC  2C 07 00 00 */	cmpwi r7, 0
/* 803FD730 003F34B0  40 82 00 08 */	bne lbl_803FD738
/* 803FD734 003F34B4  48 00 01 C8 */	b lbl_803FD8FC
lbl_803FD738:
/* 803FD738 003F34B8  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 803FD73C 003F34BC  3C 00 43 30 */	lis r0, 0x4330
/* 803FD740 003F34C0  90 61 00 14 */	stw r3, 0x14(r1)
/* 803FD744 003F34C4  C8 62 BA C0 */	lfd f3, lbl_805A4DE0-_SDA2_BASE_(r2)
/* 803FD748 003F34C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803FD74C 003F34CC  C8 22 BA 60 */	lfd f1, lbl_805A4D80-_SDA2_BASE_(r2)
/* 803FD750 003F34D0  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 803FD754 003F34D4  C8 02 BA 68 */	lfd f0, lbl_805A4D88-_SDA2_BASE_(r2)
/* 803FD758 003F34D8  FC 42 18 28 */	fsub f2, f2, f3
/* 803FD75C 003F34DC  FC 21 00 B2 */	fmul f1, f1, f2
/* 803FD760 003F34E0  FC 00 00 B2 */	fmul f0, f0, f2
/* 803FD764 003F34E4  FC 21 00 2A */	fadd f1, f1, f0
/* 803FD768 003F34E8  48 00 01 94 */	b lbl_803FD8FC
lbl_803FD76C:
/* 803FD76C 003F34EC  C8 62 BA 78 */	lfd f3, lbl_805A4D98-_SDA2_BASE_(r2)
/* 803FD770 003F34F0  FC 20 00 32 */	fmul f1, f0, f0
/* 803FD774 003F34F4  C8 42 BA 70 */	lfd f2, lbl_805A4D90-_SDA2_BASE_(r2)
/* 803FD778 003F34F8  2C 07 00 00 */	cmpwi r7, 0
/* 803FD77C 003F34FC  FC 63 00 32 */	fmul f3, f3, f0
/* 803FD780 003F3500  FC 42 18 28 */	fsub f2, f2, f3
/* 803FD784 003F3504  FC A2 00 72 */	fmul f5, f2, f1
/* 803FD788 003F3508  40 82 00 0C */	bne lbl_803FD794
/* 803FD78C 003F350C  FC 20 28 28 */	fsub f1, f0, f5
/* 803FD790 003F3510  48 00 01 6C */	b lbl_803FD8FC
lbl_803FD794:
/* 803FD794 003F3514  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 803FD798 003F3518  3C 00 43 30 */	lis r0, 0x4330
/* 803FD79C 003F351C  90 61 00 14 */	stw r3, 0x14(r1)
/* 803FD7A0 003F3520  C8 82 BA C0 */	lfd f4, lbl_805A4DE0-_SDA2_BASE_(r2)
/* 803FD7A4 003F3524  90 01 00 10 */	stw r0, 0x10(r1)
/* 803FD7A8 003F3528  C8 22 BA 68 */	lfd f1, lbl_805A4D88-_SDA2_BASE_(r2)
/* 803FD7AC 003F352C  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 803FD7B0 003F3530  C8 42 BA 60 */	lfd f2, lbl_805A4D80-_SDA2_BASE_(r2)
/* 803FD7B4 003F3534  FC 63 20 28 */	fsub f3, f3, f4
/* 803FD7B8 003F3538  FC 21 00 F2 */	fmul f1, f1, f3
/* 803FD7BC 003F353C  FC 42 00 F2 */	fmul f2, f2, f3
/* 803FD7C0 003F3540  FC 25 08 28 */	fsub f1, f5, f1
/* 803FD7C4 003F3544  FC 01 00 28 */	fsub f0, f1, f0
/* 803FD7C8 003F3548  FC 22 00 28 */	fsub f1, f2, f0
/* 803FD7CC 003F354C  48 00 01 30 */	b lbl_803FD8FC
lbl_803FD7D0:
/* 803FD7D0 003F3550  C8 22 BA 80 */	lfd f1, lbl_805A4DA0-_SDA2_BASE_(r2)
/* 803FD7D4 003F3554  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 803FD7D8 003F3558  3C 80 43 30 */	lis r4, 0x4330
/* 803FD7DC 003F355C  3C 60 00 07 */	lis r3, 0x0006B851@ha
/* 803FD7E0 003F3560  FC 21 00 2A */	fadd f1, f1, f0
/* 803FD7E4 003F3564  3C C8 FF FA */	addis r6, r8, 0xfffa
/* 803FD7E8 003F3568  38 03 B8 51 */	addi r0, r3, 0x0006B851@l
/* 803FD7EC 003F356C  C8 A2 BA B8 */	lfd f5, lbl_805A4DD8-_SDA2_BASE_(r2)
/* 803FD7F0 003F3570  C8 82 BA B0 */	lfd f4, lbl_805A4DD0-_SDA2_BASE_(r2)
/* 803FD7F4 003F3574  7C 08 00 50 */	subf r0, r8, r0
/* 803FD7F8 003F3578  FC 20 08 24 */	fdiv f1, f0, f1
/* 803FD7FC 003F357C  38 C6 EB 86 */	addi r6, r6, -5242
/* 803FD800 003F3580  C9 02 BA 98 */	lfd f8, lbl_805A4DB8-_SDA2_BASE_(r2)
/* 803FD804 003F3584  7C C6 03 79 */	or. r6, r6, r0
/* 803FD808 003F3588  C8 E2 BA 90 */	lfd f7, lbl_805A4DB0-_SDA2_BASE_(r2)
/* 803FD80C 003F358C  C8 62 BA A8 */	lfd f3, lbl_805A4DC8-_SDA2_BASE_(r2)
/* 803FD810 003F3590  FD 61 00 72 */	fmul f11, f1, f1
/* 803FD814 003F3594  C8 C2 BA 88 */	lfd f6, lbl_805A4DA8-_SDA2_BASE_(r2)
/* 803FD818 003F3598  C8 42 BA A0 */	lfd f2, lbl_805A4DC0-_SDA2_BASE_(r2)
/* 803FD81C 003F359C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803FD820 003F35A0  C9 42 BA C0 */	lfd f10, lbl_805A4DE0-_SDA2_BASE_(r2)
/* 803FD824 003F35A4  FD 8B 02 F2 */	fmul f12, f11, f11
/* 803FD828 003F35A8  90 81 00 10 */	stw r4, 0x10(r1)
/* 803FD82C 003F35AC  C9 21 00 10 */	lfd f9, 0x10(r1)
/* 803FD830 003F35B0  FC A5 03 32 */	fmul f5, f5, f12
/* 803FD834 003F35B4  FD 08 03 32 */	fmul f8, f8, f12
/* 803FD838 003F35B8  FC 84 28 2A */	fadd f4, f4, f5
/* 803FD83C 003F35BC  FD 29 50 28 */	fsub f9, f9, f10
/* 803FD840 003F35C0  FC A7 40 2A */	fadd f5, f7, f8
/* 803FD844 003F35C4  FC 8C 01 32 */	fmul f4, f12, f4
/* 803FD848 003F35C8  FC AC 01 72 */	fmul f5, f12, f5
/* 803FD84C 003F35CC  FC 63 20 2A */	fadd f3, f3, f4
/* 803FD850 003F35D0  FC 86 28 2A */	fadd f4, f6, f5
/* 803FD854 003F35D4  FC 6C 00 F2 */	fmul f3, f12, f3
/* 803FD858 003F35D8  FC 8C 01 32 */	fmul f4, f12, f4
/* 803FD85C 003F35DC  FC 42 18 2A */	fadd f2, f2, f3
/* 803FD860 003F35E0  FC 4B 00 B2 */	fmul f2, f11, f2
/* 803FD864 003F35E4  FC 62 20 2A */	fadd f3, f2, f4
/* 803FD868 003F35E8  40 81 00 58 */	ble lbl_803FD8C0
/* 803FD86C 003F35EC  C8 42 BA 70 */	lfd f2, lbl_805A4D90-_SDA2_BASE_(r2)
/* 803FD870 003F35F0  2C 07 00 00 */	cmpwi r7, 0
/* 803FD874 003F35F4  FC 42 00 32 */	fmul f2, f2, f0
/* 803FD878 003F35F8  FC A2 00 32 */	fmul f5, f2, f0
/* 803FD87C 003F35FC  40 82 00 18 */	bne lbl_803FD894
/* 803FD880 003F3600  FC 45 18 2A */	fadd f2, f5, f3
/* 803FD884 003F3604  FC 21 00 B2 */	fmul f1, f1, f2
/* 803FD888 003F3608  FC 25 08 28 */	fsub f1, f5, f1
/* 803FD88C 003F360C  FC 20 08 28 */	fsub f1, f0, f1
/* 803FD890 003F3610  48 00 00 6C */	b lbl_803FD8FC
lbl_803FD894:
/* 803FD894 003F3614  FC 65 18 2A */	fadd f3, f5, f3
/* 803FD898 003F3618  C8 42 BA 68 */	lfd f2, lbl_805A4D88-_SDA2_BASE_(r2)
/* 803FD89C 003F361C  C8 82 BA 60 */	lfd f4, lbl_805A4D80-_SDA2_BASE_(r2)
/* 803FD8A0 003F3620  FC 42 02 72 */	fmul f2, f2, f9
/* 803FD8A4 003F3624  FC 21 00 F2 */	fmul f1, f1, f3
/* 803FD8A8 003F3628  FC 64 02 72 */	fmul f3, f4, f9
/* 803FD8AC 003F362C  FC 21 10 2A */	fadd f1, f1, f2
/* 803FD8B0 003F3630  FC 25 08 28 */	fsub f1, f5, f1
/* 803FD8B4 003F3634  FC 01 00 28 */	fsub f0, f1, f0
/* 803FD8B8 003F3638  FC 23 00 28 */	fsub f1, f3, f0
/* 803FD8BC 003F363C  48 00 00 40 */	b lbl_803FD8FC
lbl_803FD8C0:
/* 803FD8C0 003F3640  2C 07 00 00 */	cmpwi r7, 0
/* 803FD8C4 003F3644  40 82 00 14 */	bne lbl_803FD8D8
/* 803FD8C8 003F3648  FC 40 18 28 */	fsub f2, f0, f3
/* 803FD8CC 003F364C  FC 21 00 B2 */	fmul f1, f1, f2
/* 803FD8D0 003F3650  FC 20 08 28 */	fsub f1, f0, f1
/* 803FD8D4 003F3654  48 00 00 28 */	b lbl_803FD8FC
lbl_803FD8D8:
/* 803FD8D8 003F3658  FC 60 18 28 */	fsub f3, f0, f3
/* 803FD8DC 003F365C  C8 42 BA 68 */	lfd f2, lbl_805A4D88-_SDA2_BASE_(r2)
/* 803FD8E0 003F3660  C8 82 BA 60 */	lfd f4, lbl_805A4D80-_SDA2_BASE_(r2)
/* 803FD8E4 003F3664  FC 42 02 72 */	fmul f2, f2, f9
/* 803FD8E8 003F3668  FC 21 00 F2 */	fmul f1, f1, f3
/* 803FD8EC 003F366C  FC 64 02 72 */	fmul f3, f4, f9
/* 803FD8F0 003F3670  FC 21 10 28 */	fsub f1, f1, f2
/* 803FD8F4 003F3674  FC 01 00 28 */	fsub f0, f1, f0
/* 803FD8F8 003F3678  FC 23 00 28 */	fsub f1, f3, f0
lbl_803FD8FC:
/* 803FD8FC 003F367C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FD900 003F3680  4E 80 00 20 */	blr 


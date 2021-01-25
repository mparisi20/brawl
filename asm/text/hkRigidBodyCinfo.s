.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkRigidBodyCinfo$7__ct
hkRigidBodyCinfo$7__ct:
/* 802E3604 002D9384  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E3608 002D9388  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 802E360C 002D938C  21 6B FF E0 */	subfic r11, r11, -32
/* 802E3610 002D9390  7C 2C 0B 78 */	mr r12, r1
/* 802E3614 002D9394  7C 21 59 6E */	stwux r1, r1, r11
/* 802E3618 002D9398  38 A0 00 00 */	li r5, 0
/* 802E361C 002D939C  C0 C2 B0 50 */	lfs f6, lbl_805A4370-_SDA2_BASE_(r2)
/* 802E3620 002D93A0  38 E0 00 01 */	li r7, 1
/* 802E3624 002D93A4  C0 A2 B0 54 */	lfs f5, lbl_805A4374-_SDA2_BASE_(r2)
/* 802E3628 002D93A8  38 C0 00 02 */	li r6, 2
/* 802E362C 002D93AC  C0 22 B0 64 */	lfs f1, lbl_805A4384-_SDA2_BASE_(r2)
/* 802E3630 002D93B0  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 802E3634 002D93B4  C0 82 B0 58 */	lfs f4, lbl_805A4378-_SDA2_BASE_(r2)
/* 802E3638 002D93B8  C0 62 B0 5C */	lfs f3, lbl_805A437C-_SDA2_BASE_(r2)
/* 802E363C 002D93BC  C0 42 B0 60 */	lfs f2, lbl_805A4380-_SDA2_BASE_(r2)
/* 802E3640 002D93C0  C0 02 B0 68 */	lfs f0, lbl_805A4388-_SDA2_BASE_(r2)
/* 802E3644 002D93C4  D0 C3 00 1C */	stfs f6, 0x1c(r3)
/* 802E3648 002D93C8  D0 C3 00 18 */	stfs f6, 0x18(r3)
/* 802E364C 002D93CC  D0 C3 00 14 */	stfs f6, 0x14(r3)
/* 802E3650 002D93D0  D0 C3 00 10 */	stfs f6, 0x10(r3)
/* 802E3654 002D93D4  D0 C3 00 20 */	stfs f6, 0x20(r3)
/* 802E3658 002D93D8  D0 C3 00 24 */	stfs f6, 0x24(r3)
/* 802E365C 002D93DC  D0 C3 00 28 */	stfs f6, 0x28(r3)
/* 802E3660 002D93E0  D0 A3 00 2C */	stfs f5, 0x2c(r3)
/* 802E3664 002D93E4  D0 C3 00 3C */	stfs f6, 0x3c(r3)
/* 802E3668 002D93E8  D0 C3 00 38 */	stfs f6, 0x38(r3)
/* 802E366C 002D93EC  D0 C3 00 34 */	stfs f6, 0x34(r3)
/* 802E3670 002D93F0  D0 C3 00 30 */	stfs f6, 0x30(r3)
/* 802E3674 002D93F4  D0 C3 00 4C */	stfs f6, 0x4c(r3)
/* 802E3678 002D93F8  D0 C3 00 48 */	stfs f6, 0x48(r3)
/* 802E367C 002D93FC  D0 C3 00 44 */	stfs f6, 0x44(r3)
/* 802E3680 002D9400  D0 C3 00 40 */	stfs f6, 0x40(r3)
/* 802E3684 002D9404  D0 C3 00 54 */	stfs f6, 0x54(r3)
/* 802E3688 002D9408  D0 C3 00 58 */	stfs f6, 0x58(r3)
/* 802E368C 002D940C  D0 C3 00 5C */	stfs f6, 0x5c(r3)
/* 802E3690 002D9410  D0 C3 00 60 */	stfs f6, 0x60(r3)
/* 802E3694 002D9414  D0 C3 00 68 */	stfs f6, 0x68(r3)
/* 802E3698 002D9418  D0 C3 00 6C */	stfs f6, 0x6c(r3)
/* 802E369C 002D941C  D0 C3 00 70 */	stfs f6, 0x70(r3)
/* 802E36A0 002D9420  D0 C3 00 74 */	stfs f6, 0x74(r3)
/* 802E36A4 002D9424  D0 C3 00 7C */	stfs f6, 0x7c(r3)
/* 802E36A8 002D9428  D0 A3 00 50 */	stfs f5, 0x50(r3)
/* 802E36AC 002D942C  D0 A3 00 64 */	stfs f5, 0x64(r3)
/* 802E36B0 002D9430  D0 A3 00 78 */	stfs f5, 0x78(r3)
/* 802E36B4 002D9434  D0 C3 00 8C */	stfs f6, 0x8c(r3)
/* 802E36B8 002D9438  D0 C3 00 88 */	stfs f6, 0x88(r3)
/* 802E36BC 002D943C  D0 C3 00 84 */	stfs f6, 0x84(r3)
/* 802E36C0 002D9440  D0 C3 00 80 */	stfs f6, 0x80(r3)
/* 802E36C4 002D9444  D0 A3 00 90 */	stfs f5, 0x90(r3)
/* 802E36C8 002D9448  D0 C3 00 94 */	stfs f6, 0x94(r3)
/* 802E36CC 002D944C  D0 83 00 98 */	stfs f4, 0x98(r3)
/* 802E36D0 002D9450  D0 63 00 9C */	stfs f3, 0x9c(r3)
/* 802E36D4 002D9454  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 802E36D8 002D9458  D0 23 00 A4 */	stfs f1, 0xa4(r3)
/* 802E36DC 002D945C  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 802E36E0 002D9460  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 802E36E4 002D9464  98 E3 00 B0 */	stb r7, 0xb0(r3)
/* 802E36E8 002D9468  98 C3 00 B1 */	stb r6, 0xb1(r3)
/* 802E36EC 002D946C  98 C3 00 B2 */	stb r6, 0xb2(r3)
/* 802E36F0 002D9470  98 A3 00 B3 */	stb r5, 0xb3(r3)
/* 802E36F4 002D9474  98 E3 00 08 */	stb r7, 8(r3)
/* 802E36F8 002D9478  B0 03 00 0A */	sth r0, 0xa(r3)
/* 802E36FC 002D947C  90 A3 00 00 */	stw r5, 0(r3)
/* 802E3700 002D9480  90 A3 00 04 */	stw r5, 4(r3)
/* 802E3704 002D9484  98 A3 00 B4 */	stb r5, 0xb4(r3)
/* 802E3708 002D9488  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 802E370C 002D948C  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 802E3710 002D9490  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 802E3714 002D9494  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 802E3718 002D9498  81 41 00 00 */	lwz r10, 0(r1)
/* 802E371C 002D949C  7D 41 53 78 */	mr r1, r10
/* 802E3720 002D94A0  4E 80 00 20 */	blr 

.global __sinit_$3hkRigidBodyClass_cpp
__sinit_$3hkRigidBodyClass_cpp:
/* 802E3724 002D94A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3728 002D94A8  7C 08 02 A6 */	mflr r0
/* 802E372C 002D94AC  3C 60 80 53 */	lis r3, lbl_80533008@ha
/* 802E3730 002D94B0  3C 80 80 41 */	lis r4, lbl_80412CF0@ha
/* 802E3734 002D94B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E3738 002D94B8  38 00 00 00 */	li r0, 0
/* 802E373C 002D94BC  3C A0 80 53 */	lis r5, lbl_80532F80@ha
/* 802E3740 002D94C0  38 63 30 08 */	addi r3, r3, lbl_80533008@l
/* 802E3744 002D94C4  90 01 00 08 */	stw r0, 8(r1)
/* 802E3748 002D94C8  38 84 2C F0 */	addi r4, r4, lbl_80412CF0@l
/* 802E374C 002D94CC  38 A5 2F 80 */	addi r5, r5, lbl_80532F80@l
/* 802E3750 002D94D0  38 C0 01 F0 */	li r6, 0x1f0
/* 802E3754 002D94D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E3758 002D94D8  38 E0 00 00 */	li r7, 0
/* 802E375C 002D94DC  39 00 00 00 */	li r8, 0
/* 802E3760 002D94E0  39 20 00 00 */	li r9, 0
/* 802E3764 002D94E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E3768 002D94E8  39 40 00 00 */	li r10, 0
/* 802E376C 002D94EC  4B F9 90 9D */	bl hkClass$7__ct
/* 802E3770 002D94F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E3774 002D94F4  7C 08 03 A6 */	mtlr r0
/* 802E3778 002D94F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802E377C 002D94FC  4E 80 00 20 */	blr 

.global __sinit_$3hkRigidBodyDeactivatorClass_cpp
__sinit_$3hkRigidBodyDeactivatorClass_cpp:
/* 802E3780 002D9500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3784 002D9504  7C 08 02 A6 */	mflr r0
/* 802E3788 002D9508  3C 60 80 53 */	lis r3, lbl_80533030@ha
/* 802E378C 002D950C  3C 80 80 41 */	lis r4, lbl_80412D8C@ha
/* 802E3790 002D9510  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E3794 002D9514  38 00 00 00 */	li r0, 0
/* 802E3798 002D9518  3C A0 80 53 */	lis r5, lbl_80532FA8@ha
/* 802E379C 002D951C  3D 20 80 41 */	lis r9, lbl_80412D80@ha
/* 802E37A0 002D9520  90 01 00 08 */	stw r0, 8(r1)
/* 802E37A4 002D9524  38 63 30 30 */	addi r3, r3, lbl_80533030@l
/* 802E37A8 002D9528  38 84 2D 8C */	addi r4, r4, lbl_80412D8C@l
/* 802E37AC 002D952C  38 A5 2F A8 */	addi r5, r5, lbl_80532FA8@l
/* 802E37B0 002D9530  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E37B4 002D9534  39 29 2D 80 */	addi r9, r9, lbl_80412D80@l
/* 802E37B8 002D9538  38 C0 00 08 */	li r6, 8
/* 802E37BC 002D953C  38 E0 00 00 */	li r7, 0
/* 802E37C0 002D9540  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E37C4 002D9544  39 00 00 00 */	li r8, 0
/* 802E37C8 002D9548  39 40 00 01 */	li r10, 1
/* 802E37CC 002D954C  4B F9 90 3D */	bl hkClass$7__ct
/* 802E37D0 002D9550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E37D4 002D9554  7C 08 03 A6 */	mtlr r0
/* 802E37D8 002D9558  38 21 00 20 */	addi r1, r1, 0x20
/* 802E37DC 002D955C  4E 80 00 20 */	blr 

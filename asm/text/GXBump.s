.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global GXSetTevIndirect
GXSetTevIndirect:
/* 801F3750 001E94D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F3754 001E94D4  39 80 00 00 */	li r12, 0
/* 801F3758 001E94D8  50 8C 07 BE */	rlwimi r12, r4, 0, 0x1e, 0x1f
/* 801F375C 001E94DC  38 83 00 10 */	addi r4, r3, 0x10
/* 801F3760 001E94E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F3764 001E94E4  50 AC 17 3A */	rlwimi r12, r5, 2, 0x1c, 0x1d
/* 801F3768 001E94E8  3D 60 CC 01 */	lis r11, 0xCC008000@ha
/* 801F376C 001E94EC  38 00 00 61 */	li r0, 0x61
/* 801F3770 001E94F0  98 0B 80 00 */	stb r0, 0xCC008000@l(r11)
/* 801F3774 001E94F4  50 CC 26 76 */	rlwimi r12, r6, 4, 0x19, 0x1b
/* 801F3778 001E94F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F377C 001E94FC  38 00 00 00 */	li r0, 0
/* 801F3780 001E9500  88 A1 00 1B */	lbz r5, 0x1b(r1)
/* 801F3784 001E9504  53 EC 3D F0 */	rlwimi r12, r31, 7, 0x17, 0x18
/* 801F3788 001E9508  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F378C 001E950C  50 EC 4C EC */	rlwimi r12, r7, 9, 0x13, 0x16
/* 801F3790 001E9510  51 0C 6C 24 */	rlwimi r12, r8, 0xd, 0x10, 0x12
/* 801F3794 001E9514  51 2C 83 5E */	rlwimi r12, r9, 0x10, 0xd, 0xf
/* 801F3798 001E9518  50 AC 9B 18 */	rlwimi r12, r5, 0x13, 0xc, 0xc
/* 801F379C 001E951C  51 4C A2 D6 */	rlwimi r12, r10, 0x14, 0xb, 0xb
/* 801F37A0 001E9520  50 8C C0 0E */	rlwimi r12, r4, 0x18, 0, 7
/* 801F37A4 001E9524  91 8B 80 00 */	stw r12, -0x8000(r11)
/* 801F37A8 001E9528  B0 03 00 02 */	sth r0, 2(r3)
/* 801F37AC 001E952C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F37B0 001E9530  38 21 00 10 */	addi r1, r1, 0x10
/* 801F37B4 001E9534  4E 80 00 20 */	blr 

.global GXSetIndTexMtx
GXSetIndTexMtx:
/* 801F37B8 001E9538  2C 03 00 08 */	cmpwi r3, 8
/* 801F37BC 001E953C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F37C0 001E9540  41 82 00 44 */	beq lbl_801F3804
/* 801F37C4 001E9544  40 80 00 1C */	bge lbl_801F37E0
/* 801F37C8 001E9548  2C 03 00 04 */	cmpwi r3, 4
/* 801F37CC 001E954C  41 82 00 38 */	beq lbl_801F3804
/* 801F37D0 001E9550  40 80 00 24 */	bge lbl_801F37F4
/* 801F37D4 001E9554  2C 03 00 01 */	cmpwi r3, 1
/* 801F37D8 001E9558  40 80 00 14 */	bge lbl_801F37EC
/* 801F37DC 001E955C  48 00 00 28 */	b lbl_801F3804
lbl_801F37E0:
/* 801F37E0 001E9560  2C 03 00 0C */	cmpwi r3, 0xc
/* 801F37E4 001E9564  40 80 00 20 */	bge lbl_801F3804
/* 801F37E8 001E9568  48 00 00 14 */	b lbl_801F37FC
lbl_801F37EC:
/* 801F37EC 001E956C  38 63 FF FF */	addi r3, r3, -1
/* 801F37F0 001E9570  48 00 00 18 */	b lbl_801F3808
lbl_801F37F4:
/* 801F37F4 001E9574  38 63 FF FB */	addi r3, r3, -5
/* 801F37F8 001E9578  48 00 00 10 */	b lbl_801F3808
lbl_801F37FC:
/* 801F37FC 001E957C  38 63 FF F7 */	addi r3, r3, -9
/* 801F3800 001E9580  48 00 00 08 */	b lbl_801F3808
lbl_801F3804:
/* 801F3804 001E9584  38 60 00 00 */	li r3, 0
lbl_801F3808:
/* 801F3808 001E9588  C0 C2 A5 38 */	lfs f6, lbl_805A3858-_SDA2_BASE_(r2)
/* 801F380C 001E958C  54 60 10 3A */	slwi r0, r3, 2
/* 801F3810 001E9590  C0 24 00 00 */	lfs f1, 0(r4)
/* 801F3814 001E9594  7D 23 00 50 */	subf r9, r3, r0
/* 801F3818 001E9598  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801F381C 001E959C  39 05 00 11 */	addi r8, r5, 0x11
/* 801F3820 001E95A0  EC 26 00 72 */	fmuls f1, f6, f1
/* 801F3824 001E95A4  C0 64 00 04 */	lfs f3, 4(r4)
/* 801F3828 001E95A8  EC 06 00 32 */	fmuls f0, f6, f0
/* 801F382C 001E95AC  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 801F3830 001E95B0  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801F3834 001E95B4  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 801F3838 001E95B8  FC A0 08 1E */	fctiwz f5, f1
/* 801F383C 001E95BC  C0 24 00 08 */	lfs f1, 8(r4)
/* 801F3840 001E95C0  FC 80 00 1E */	fctiwz f4, f0
/* 801F3844 001E95C4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801F3848 001E95C8  EC 46 00 B2 */	fmuls f2, f6, f2
/* 801F384C 001E95CC  38 E0 00 61 */	li r7, 0x61
/* 801F3850 001E95D0  D8 A1 00 08 */	stfd f5, 8(r1)
/* 801F3854 001E95D4  FC 60 18 1E */	fctiwz f3, f3
/* 801F3858 001E95D8  EC 26 00 72 */	fmuls f1, f6, f1
/* 801F385C 001E95DC  38 A0 00 00 */	li r5, 0
/* 801F3860 001E95E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F3864 001E95E4  FC 40 10 1E */	fctiwz f2, f2
/* 801F3868 001E95E8  EC 06 00 32 */	fmuls f0, f6, f0
/* 801F386C 001E95EC  FC 20 08 1E */	fctiwz f1, f1
/* 801F3870 001E95F0  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 801F3874 001E95F4  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 801F3878 001E95F8  FC 00 00 1E */	fctiwz f0, f0
/* 801F387C 001E95FC  38 69 00 06 */	addi r3, r9, 6
/* 801F3880 001E9600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3884 001E9604  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 801F3888 001E9608  38 80 00 00 */	li r4, 0
/* 801F388C 001E960C  50 05 5A A8 */	rlwimi r5, r0, 0xb, 0xa, 0x14
/* 801F3890 001E9610  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F3894 001E9614  51 05 B2 12 */	rlwimi r5, r8, 0x16, 8, 9
/* 801F3898 001E9618  50 65 C0 0E */	rlwimi r5, r3, 0x18, 0, 7
/* 801F389C 001E961C  98 E6 80 00 */	stb r7, 0xCC008000@l(r6)
/* 801F38A0 001E9620  50 04 05 7E */	rlwimi r4, r0, 0, 0x15, 0x1f
/* 801F38A4 001E9624  38 69 00 07 */	addi r3, r9, 7
/* 801F38A8 001E9628  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 801F38AC 001E962C  38 A0 00 00 */	li r5, 0
/* 801F38B0 001E9630  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 801F38B4 001E9634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F38B8 001E9638  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 801F38BC 001E963C  50 04 5A A8 */	rlwimi r4, r0, 0xb, 0xa, 0x14
/* 801F38C0 001E9640  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801F38C4 001E9644  51 04 A2 12 */	rlwimi r4, r8, 0x14, 8, 9
/* 801F38C8 001E9648  50 64 C0 0E */	rlwimi r4, r3, 0x18, 0, 7
/* 801F38CC 001E964C  98 E6 80 00 */	stb r7, -0x8000(r6)
/* 801F38D0 001E9650  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 801F38D4 001E9654  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F38D8 001E9658  90 86 80 00 */	stw r4, -0x8000(r6)
/* 801F38DC 001E965C  38 89 00 08 */	addi r4, r9, 8
/* 801F38E0 001E9660  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801F38E4 001E9664  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F38E8 001E9668  98 E6 80 00 */	stb r7, -0x8000(r6)
/* 801F38EC 001E966C  50 05 5A A8 */	rlwimi r5, r0, 0xb, 0xa, 0x14
/* 801F38F0 001E9670  38 00 00 00 */	li r0, 0
/* 801F38F4 001E9674  51 05 92 12 */	rlwimi r5, r8, 0x12, 8, 9
/* 801F38F8 001E9678  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 801F38FC 001E967C  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 801F3900 001E9680  B0 03 00 02 */	sth r0, 2(r3)
/* 801F3904 001E9684  38 21 00 40 */	addi r1, r1, 0x40
/* 801F3908 001E9688  4E 80 00 20 */	blr 

.global GXSetIndTexCoordScale
GXSetIndTexCoordScale:
/* 801F390C 001E968C  2C 03 00 02 */	cmpwi r3, 2
/* 801F3910 001E9690  41 82 00 8C */	beq lbl_801F399C
/* 801F3914 001E9694  40 80 00 14 */	bge lbl_801F3928
/* 801F3918 001E9698  2C 03 00 00 */	cmpwi r3, 0
/* 801F391C 001E969C  41 82 00 18 */	beq lbl_801F3934
/* 801F3920 001E96A0  40 80 00 48 */	bge lbl_801F3968
/* 801F3924 001E96A4  48 00 00 DC */	b lbl_801F3A00
lbl_801F3928:
/* 801F3928 001E96A8  2C 03 00 04 */	cmpwi r3, 4
/* 801F392C 001E96AC  40 80 00 D4 */	bge lbl_801F3A00
/* 801F3930 001E96B0  48 00 00 A0 */	b lbl_801F39D0
lbl_801F3934:
/* 801F3934 001E96B4  81 02 A4 90 */	lwz r8, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3938 001E96B8  38 C0 00 25 */	li r6, 0x25
/* 801F393C 001E96BC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F3940 001E96C0  38 00 00 61 */	li r0, 0x61
/* 801F3944 001E96C4  80 E8 01 78 */	lwz r7, 0x178(r8)
/* 801F3948 001E96C8  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 801F394C 001E96CC  50 A7 26 36 */	rlwimi r7, r5, 4, 0x18, 0x1b
/* 801F3950 001E96D0  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 801F3954 001E96D4  90 E8 01 78 */	stw r7, 0x178(r8)
/* 801F3958 001E96D8  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F395C 001E96DC  80 08 01 78 */	lwz r0, 0x178(r8)
/* 801F3960 001E96E0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F3964 001E96E4  48 00 00 9C */	b lbl_801F3A00
lbl_801F3968:
/* 801F3968 001E96E8  81 02 A4 90 */	lwz r8, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F396C 001E96EC  38 C0 00 25 */	li r6, 0x25
/* 801F3970 001E96F0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F3974 001E96F4  38 00 00 61 */	li r0, 0x61
/* 801F3978 001E96F8  80 E8 01 78 */	lwz r7, 0x178(r8)
/* 801F397C 001E96FC  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 801F3980 001E9700  50 A7 64 26 */	rlwimi r7, r5, 0xc, 0x10, 0x13
/* 801F3984 001E9704  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 801F3988 001E9708  90 E8 01 78 */	stw r7, 0x178(r8)
/* 801F398C 001E970C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F3990 001E9710  80 08 01 78 */	lwz r0, 0x178(r8)
/* 801F3994 001E9714  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F3998 001E9718  48 00 00 68 */	b lbl_801F3A00
lbl_801F399C:
/* 801F399C 001E971C  81 02 A4 90 */	lwz r8, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F39A0 001E9720  38 C0 00 26 */	li r6, 0x26
/* 801F39A4 001E9724  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F39A8 001E9728  38 00 00 61 */	li r0, 0x61
/* 801F39AC 001E972C  80 E8 01 7C */	lwz r7, 0x17c(r8)
/* 801F39B0 001E9730  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 801F39B4 001E9734  50 A7 26 36 */	rlwimi r7, r5, 4, 0x18, 0x1b
/* 801F39B8 001E9738  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 801F39BC 001E973C  90 E8 01 7C */	stw r7, 0x17c(r8)
/* 801F39C0 001E9740  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F39C4 001E9744  80 08 01 7C */	lwz r0, 0x17c(r8)
/* 801F39C8 001E9748  90 03 80 00 */	stw r0, -0x8000(r3)
/* 801F39CC 001E974C  48 00 00 34 */	b lbl_801F3A00
lbl_801F39D0:
/* 801F39D0 001E9750  81 02 A4 90 */	lwz r8, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F39D4 001E9754  38 C0 00 26 */	li r6, 0x26
/* 801F39D8 001E9758  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801F39DC 001E975C  38 00 00 61 */	li r0, 0x61
/* 801F39E0 001E9760  80 E8 01 7C */	lwz r7, 0x17c(r8)
/* 801F39E4 001E9764  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 801F39E8 001E9768  50 A7 64 26 */	rlwimi r7, r5, 0xc, 0x10, 0x13
/* 801F39EC 001E976C  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 801F39F0 001E9770  90 E8 01 7C */	stw r7, 0x17c(r8)
/* 801F39F4 001E9774  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 801F39F8 001E9778  80 08 01 7C */	lwz r0, 0x17c(r8)
/* 801F39FC 001E977C  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_801F3A00:
/* 801F3A00 001E9780  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3A04 001E9784  38 00 00 00 */	li r0, 0
/* 801F3A08 001E9788  B0 03 00 02 */	sth r0, 2(r3)
/* 801F3A0C 001E978C  4E 80 00 20 */	blr 

.global GXSetIndTexOrder
GXSetIndTexOrder:
/* 801F3A10 001E9790  2C 05 00 FF */	cmpwi r5, 0xff
/* 801F3A14 001E9794  40 82 00 08 */	bne lbl_801F3A1C
/* 801F3A18 001E9798  38 A0 00 00 */	li r5, 0
lbl_801F3A1C:
/* 801F3A1C 001E979C  2C 04 00 FF */	cmpwi r4, 0xff
/* 801F3A20 001E97A0  40 82 00 08 */	bne lbl_801F3A28
/* 801F3A24 001E97A4  38 80 00 00 */	li r4, 0
lbl_801F3A28:
/* 801F3A28 001E97A8  2C 03 00 02 */	cmpwi r3, 2
/* 801F3A2C 001E97AC  41 82 00 54 */	beq lbl_801F3A80
/* 801F3A30 001E97B0  40 80 00 14 */	bge lbl_801F3A44
/* 801F3A34 001E97B4  2C 03 00 00 */	cmpwi r3, 0
/* 801F3A38 001E97B8  41 82 00 18 */	beq lbl_801F3A50
/* 801F3A3C 001E97BC  40 80 00 2C */	bge lbl_801F3A68
/* 801F3A40 001E97C0  48 00 00 6C */	b lbl_801F3AAC
lbl_801F3A44:
/* 801F3A44 001E97C4  2C 03 00 04 */	cmpwi r3, 4
/* 801F3A48 001E97C8  40 80 00 64 */	bge lbl_801F3AAC
/* 801F3A4C 001E97CC  48 00 00 4C */	b lbl_801F3A98
lbl_801F3A50:
/* 801F3A50 001E97D0  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3A54 001E97D4  80 03 01 70 */	lwz r0, 0x170(r3)
/* 801F3A58 001E97D8  50 A0 07 7E */	rlwimi r0, r5, 0, 0x1d, 0x1f
/* 801F3A5C 001E97DC  50 80 1E B8 */	rlwimi r0, r4, 3, 0x1a, 0x1c
/* 801F3A60 001E97E0  90 03 01 70 */	stw r0, 0x170(r3)
/* 801F3A64 001E97E4  48 00 00 48 */	b lbl_801F3AAC
lbl_801F3A68:
/* 801F3A68 001E97E8  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3A6C 001E97EC  80 03 01 70 */	lwz r0, 0x170(r3)
/* 801F3A70 001E97F0  50 A0 35 F2 */	rlwimi r0, r5, 6, 0x17, 0x19
/* 801F3A74 001E97F4  50 80 4D 2C */	rlwimi r0, r4, 9, 0x14, 0x16
/* 801F3A78 001E97F8  90 03 01 70 */	stw r0, 0x170(r3)
/* 801F3A7C 001E97FC  48 00 00 30 */	b lbl_801F3AAC
lbl_801F3A80:
/* 801F3A80 001E9800  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3A84 001E9804  80 03 01 70 */	lwz r0, 0x170(r3)
/* 801F3A88 001E9808  50 A0 64 66 */	rlwimi r0, r5, 0xc, 0x11, 0x13
/* 801F3A8C 001E980C  50 80 7B A0 */	rlwimi r0, r4, 0xf, 0xe, 0x10
/* 801F3A90 001E9810  90 03 01 70 */	stw r0, 0x170(r3)
/* 801F3A94 001E9814  48 00 00 18 */	b lbl_801F3AAC
lbl_801F3A98:
/* 801F3A98 001E9818  80 62 A4 90 */	lwz r3, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3A9C 001E981C  80 03 01 70 */	lwz r0, 0x170(r3)
/* 801F3AA0 001E9820  50 A0 92 DA */	rlwimi r0, r5, 0x12, 0xb, 0xd
/* 801F3AA4 001E9824  50 80 AA 14 */	rlwimi r0, r4, 0x15, 8, 0xa
/* 801F3AA8 001E9828  90 03 01 70 */	stw r0, 0x170(r3)
lbl_801F3AAC:
/* 801F3AAC 001E982C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3AB0 001E9830  38 00 00 61 */	li r0, 0x61
/* 801F3AB4 001E9834  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F3AB8 001E9838  38 00 00 00 */	li r0, 0
/* 801F3ABC 001E983C  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3AC0 001E9840  80 65 01 70 */	lwz r3, 0x170(r5)
/* 801F3AC4 001E9844  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F3AC8 001E9848  80 65 05 FC */	lwz r3, 0x5fc(r5)
/* 801F3ACC 001E984C  60 63 00 03 */	ori r3, r3, 3
/* 801F3AD0 001E9850  90 65 05 FC */	stw r3, 0x5fc(r5)
/* 801F3AD4 001E9854  B0 05 00 02 */	sth r0, 2(r5)
/* 801F3AD8 001E9858  4E 80 00 20 */	blr 

.global GXSetNumIndStages
GXSetNumIndStages:
/* 801F3ADC 001E985C  80 82 A4 90 */	lwz r4, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3AE0 001E9860  80 04 02 54 */	lwz r0, 0x254(r4)
/* 801F3AE4 001E9864  50 60 83 5E */	rlwimi r0, r3, 0x10, 0xd, 0xf
/* 801F3AE8 001E9868  90 04 02 54 */	stw r0, 0x254(r4)
/* 801F3AEC 001E986C  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 801F3AF0 001E9870  60 00 00 06 */	ori r0, r0, 6
/* 801F3AF4 001E9874  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 801F3AF8 001E9878  4E 80 00 20 */	blr 

.global GXSetTevDirect
GXSetTevDirect:
/* 801F3AFC 001E987C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F3B00 001E9880  7C 08 02 A6 */	mflr r0
/* 801F3B04 001E9884  38 80 00 00 */	li r4, 0
/* 801F3B08 001E9888  38 A0 00 00 */	li r5, 0
/* 801F3B0C 001E988C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F3B10 001E9890  38 00 00 00 */	li r0, 0
/* 801F3B14 001E9894  38 C0 00 00 */	li r6, 0
/* 801F3B18 001E9898  38 E0 00 00 */	li r7, 0
/* 801F3B1C 001E989C  90 01 00 08 */	stw r0, 8(r1)
/* 801F3B20 001E98A0  39 00 00 00 */	li r8, 0
/* 801F3B24 001E98A4  39 20 00 00 */	li r9, 0
/* 801F3B28 001E98A8  39 40 00 00 */	li r10, 0
/* 801F3B2C 001E98AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F3B30 001E98B0  4B FF FC 21 */	bl GXSetTevIndirect
/* 801F3B34 001E98B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3B38 001E98B8  7C 08 03 A6 */	mtlr r0
/* 801F3B3C 001E98BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F3B40 001E98C0  4E 80 00 20 */	blr 

.global __GXUpdateBPMask
__GXUpdateBPMask:
/* 801F3B44 001E98C4  4E 80 00 20 */	blr 

.global __GXSetIndirectMask
__GXSetIndirectMask:
/* 801F3B48 001E98C8  80 E2 A4 90 */	lwz r7, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3B4C 001E98CC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3B50 001E98D0  38 A0 00 61 */	li r5, 0x61
/* 801F3B54 001E98D4  38 00 00 00 */	li r0, 0
/* 801F3B58 001E98D8  80 C7 01 74 */	lwz r6, 0x174(r7)
/* 801F3B5C 001E98DC  50 66 06 3E */	rlwimi r6, r3, 0, 0x18, 0x1f
/* 801F3B60 001E98E0  90 C7 01 74 */	stw r6, 0x174(r7)
/* 801F3B64 001E98E4  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 801F3B68 001E98E8  80 67 01 74 */	lwz r3, 0x174(r7)
/* 801F3B6C 001E98EC  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F3B70 001E98F0  B0 07 00 02 */	sth r0, 2(r7)
/* 801F3B74 001E98F4  4E 80 00 20 */	blr 

.global __GXFlushTextureState
__GXFlushTextureState:
/* 801F3B78 001E98F8  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801F3B7C 001E98FC  38 00 00 61 */	li r0, 0x61
/* 801F3B80 001E9900  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801F3B84 001E9904  38 00 00 00 */	li r0, 0
/* 801F3B88 001E9908  80 A2 A4 90 */	lwz r5, lbl_805A37B0-_SDA2_BASE_(r2)
/* 801F3B8C 001E990C  80 65 01 74 */	lwz r3, 0x174(r5)
/* 801F3B90 001E9910  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801F3B94 001E9914  B0 05 00 02 */	sth r0, 2(r5)
/* 801F3B98 001E9918  4E 80 00 20 */	blr 


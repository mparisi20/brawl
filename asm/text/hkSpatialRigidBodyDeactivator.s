.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkSpatialRigidBodyDeactivator
finishLoadedObjecthkSpatialRigidBodyDeactivator:
/* 802E37E0 002D9560  2C 03 00 00 */	cmpwi r3, 0
/* 802E37E4 002D9564  4D 82 00 20 */	beqlr 
/* 802E37E8 002D9568  3C 80 80 48 */	lis r4, lbl_80487F30@ha
/* 802E37EC 002D956C  38 00 00 01 */	li r0, 1
/* 802E37F0 002D9570  38 84 7F 30 */	addi r4, r4, lbl_80487F30@l
/* 802E37F4 002D9574  B0 03 00 06 */	sth r0, 6(r3)
/* 802E37F8 002D9578  90 83 00 00 */	stw r4, 0(r3)
/* 802E37FC 002D957C  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkSpatialRigidBodyDeactivator
cleanupLoadedObjecthkSpatialRigidBodyDeactivator:
/* 802E3800 002D9580  81 83 00 00 */	lwz r12, 0(r3)
/* 802E3804 002D9584  38 80 FF FF */	li r4, -1
/* 802E3808 002D9588  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E380C 002D958C  7D 89 03 A6 */	mtctr r12
/* 802E3810 002D9590  4E 80 04 20 */	bctr 

.global hkSpatialRigidBodyDeactivator$7__dt
hkSpatialRigidBodyDeactivator$7__dt:
/* 802E3814 002D9594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3818 002D9598  7C 08 02 A6 */	mflr r0
/* 802E381C 002D959C  2C 03 00 00 */	cmpwi r3, 0
/* 802E3820 002D95A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3824 002D95A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E3828 002D95A8  7C 7F 1B 78 */	mr r31, r3
/* 802E382C 002D95AC  41 82 00 2C */	beq lbl_802E3858
/* 802E3830 002D95B0  2C 04 00 00 */	cmpwi r4, 0
/* 802E3834 002D95B4  40 81 00 24 */	ble lbl_802E3858
/* 802E3838 002D95B8  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802E383C 002D95BC  7F E4 FB 78 */	mr r4, r31
/* 802E3840 002D95C0  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802E3844 002D95C4  38 C0 00 29 */	li r6, 0x29
/* 802E3848 002D95C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802E384C 002D95CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E3850 002D95D0  7D 89 03 A6 */	mtctr r12
/* 802E3854 002D95D4  4E 80 04 21 */	bctrl 
lbl_802E3858:
/* 802E3858 002D95D8  7F E3 FB 78 */	mr r3, r31
/* 802E385C 002D95DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E3860 002D95E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3864 002D95E4  7C 08 03 A6 */	mtlr r0
/* 802E3868 002D95E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E386C 002D95EC  4E 80 00 20 */	blr 

.global getVtablehkSpatialRigidBodyDeactivator
getVtablehkSpatialRigidBodyDeactivator:
/* 802E3870 002D95F0  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E3874 002D95F4  7C 2C 0B 78 */	mr r12, r1
/* 802E3878 002D95F8  21 6B FF 80 */	subfic r11, r11, -128
/* 802E387C 002D95FC  7C 21 59 6E */	stwux r1, r1, r11
/* 802E3880 002D9600  34 01 00 10 */	addic. r0, r1, 0x10
/* 802E3884 002D9604  41 82 00 18 */	beq lbl_802E389C
/* 802E3888 002D9608  3C 60 80 48 */	lis r3, lbl_80487F30@ha
/* 802E388C 002D960C  38 00 00 01 */	li r0, 1
/* 802E3890 002D9610  38 63 7F 30 */	addi r3, r3, lbl_80487F30@l
/* 802E3894 002D9614  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802E3898 002D9618  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802E389C:
/* 802E389C 002D961C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E38A0 002D9620  81 41 00 00 */	lwz r10, 0(r1)
/* 802E38A4 002D9624  7D 41 53 78 */	mr r1, r10
/* 802E38A8 002D9628  4E 80 00 20 */	blr 

.global hkSpatialRigidBodyDeactivator$7__ct
hkSpatialRigidBodyDeactivator$7__ct:
/* 802E38AC 002D962C  3C 80 80 48 */	lis r4, lbl_80487ED0@ha
/* 802E38B0 002D9630  C0 42 B0 84 */	lfs f2, lbl_805A43A4-_SDA2_BASE_(r2)
/* 802E38B4 002D9634  38 84 7E D0 */	addi r4, r4, lbl_80487ED0@l
/* 802E38B8 002D9638  C0 22 B0 88 */	lfs f1, lbl_805A43A8-_SDA2_BASE_(r2)
/* 802E38BC 002D963C  3C A0 80 48 */	lis r5, lbl_80487EB4@ha
/* 802E38C0 002D9640  90 83 00 00 */	stw r4, 0(r3)
/* 802E38C4 002D9644  38 A5 7E B4 */	addi r5, r5, lbl_80487EB4@l
/* 802E38C8 002D9648  C0 02 B0 8C */	lfs f0, lbl_805A43AC-_SDA2_BASE_(r2)
/* 802E38CC 002D964C  3C 80 80 48 */	lis r4, lbl_80487F30@ha
/* 802E38D0 002D9650  C0 E2 B0 70 */	lfs f7, lbl_805A4390-_SDA2_BASE_(r2)
/* 802E38D4 002D9654  C0 C2 B0 74 */	lfs f6, lbl_805A4394-_SDA2_BASE_(r2)
/* 802E38D8 002D9658  38 00 00 01 */	li r0, 1
/* 802E38DC 002D965C  C0 A2 B0 78 */	lfs f5, lbl_805A4398-_SDA2_BASE_(r2)
/* 802E38E0 002D9660  38 84 7F 30 */	addi r4, r4, lbl_80487F30@l
/* 802E38E4 002D9664  90 A3 00 00 */	stw r5, 0(r3)
/* 802E38E8 002D9668  C0 82 B0 7C */	lfs f4, lbl_805A439C-_SDA2_BASE_(r2)
/* 802E38EC 002D966C  C0 62 B0 80 */	lfs f3, lbl_805A43A0-_SDA2_BASE_(r2)
/* 802E38F0 002D9670  B0 03 00 06 */	sth r0, 6(r3)
/* 802E38F4 002D9674  90 83 00 00 */	stw r4, 0(r3)
/* 802E38F8 002D9678  D0 E3 00 50 */	stfs f7, 0x50(r3)
/* 802E38FC 002D967C  D0 C3 00 54 */	stfs f6, 0x54(r3)
/* 802E3900 002D9680  D0 A3 00 58 */	stfs f5, 0x58(r3)
/* 802E3904 002D9684  D0 83 00 5C */	stfs f4, 0x5c(r3)
/* 802E3908 002D9688  D0 63 00 60 */	stfs f3, 0x60(r3)
/* 802E390C 002D968C  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 802E3910 002D9690  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 802E3914 002D9694  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 802E3918 002D9698  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 802E391C 002D969C  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 802E3920 002D96A0  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 802E3924 002D96A4  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 802E3928 002D96A8  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 802E392C 002D96AC  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 802E3930 002D96B0  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802E3934 002D96B4  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802E3938 002D96B8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802E393C 002D96BC  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 802E3940 002D96C0  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 802E3944 002D96C4  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 802E3948 002D96C8  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802E394C 002D96CC  4E 80 00 20 */	blr 

.global hkSpatialRigidBodyDeactivator$7getRigidBodyDeactivatorType
hkSpatialRigidBodyDeactivator$7getRigidBodyDeactivatorType:
/* 802E3950 002D96D0  38 60 00 02 */	li r3, 2
/* 802E3954 002D96D4  4E 80 00 20 */	blr 

.global hkSpatialRigidBodyDeactivator$7shouldDeactivateHighFrequency
hkSpatialRigidBodyDeactivator$7shouldDeactivateHighFrequency:
/* 802E3958 002D96D8  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E395C 002D96DC  7C 2C 0B 78 */	mr r12, r1
/* 802E3960 002D96E0  21 6B FF D0 */	subfic r11, r11, -48
/* 802E3964 002D96E4  38 C4 01 20 */	addi r6, r4, 0x120
/* 802E3968 002D96E8  7C 21 59 6E */	stwux r1, r1, r11
/* 802E396C 002D96EC  38 A4 01 00 */	addi r5, r4, 0x100
/* 802E3970 002D96F0  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 802E3974 002D96F4  C0 24 01 24 */	lfs f1, 0x124(r4)
/* 802E3978 002D96F8  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 802E397C 002D96FC  EC A2 08 28 */	fsubs f5, f2, f1
/* 802E3980 002D9700  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 802E3984 002D9704  C0 24 01 20 */	lfs f1, 0x120(r4)
/* 802E3988 002D9708  EC 00 00 32 */	fmuls f0, f0, f0
/* 802E398C 002D970C  C0 83 00 14 */	lfs f4, 0x14(r3)
/* 802E3990 002D9710  EC C2 08 28 */	fsubs f6, f2, f1
/* 802E3994 002D9714  C0 44 01 04 */	lfs f2, 0x104(r4)
/* 802E3998 002D9718  EC 25 01 72 */	fmuls f1, f5, f5
/* 802E399C 002D971C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 802E39A0 002D9720  ED 44 10 28 */	fsubs f10, f4, f2
/* 802E39A4 002D9724  C0 44 01 28 */	lfs f2, 0x128(r4)
/* 802E39A8 002D9728  C1 03 00 10 */	lfs f8, 0x10(r3)
/* 802E39AC 002D972C  EC 26 09 BA */	fmadds f1, f6, f6, f1
/* 802E39B0 002D9730  EC 83 10 28 */	fsubs f4, f3, f2
/* 802E39B4 002D9734  C0 44 01 00 */	lfs f2, 0x100(r4)
/* 802E39B8 002D9738  ED 68 10 28 */	fsubs f11, f8, f2
/* 802E39BC 002D973C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 802E39C0 002D9740  C0 44 01 2C */	lfs f2, 0x12c(r4)
/* 802E39C4 002D9744  EC EA 02 B2 */	fmuls f7, f10, f10
/* 802E39C8 002D9748  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 802E39CC 002D974C  C1 23 00 18 */	lfs f9, 0x18(r3)
/* 802E39D0 002D9750  EC 43 10 28 */	fsubs f2, f3, f2
/* 802E39D4 002D9754  C1 04 01 08 */	lfs f8, 0x108(r4)
/* 802E39D8 002D9758  EC 6B 3A FA */	fmadds f3, f11, f11, f7
/* 802E39DC 002D975C  C1 A4 01 50 */	lfs f13, 0x150(r4)
/* 802E39E0 002D9760  ED 09 40 28 */	fsubs f8, f9, f8
/* 802E39E4 002D9764  C0 E3 00 1C */	lfs f7, 0x1c(r3)
/* 802E39E8 002D9768  ED 82 08 BA */	fmadds f12, f2, f2, f1
/* 802E39EC 002D976C  C0 24 01 0C */	lfs f1, 0x10c(r4)
/* 802E39F0 002D9770  ED 28 1A 3A */	fmadds f9, f8, f8, f3
/* 802E39F4 002D9774  D1 61 00 20 */	stfs f11, 0x20(r1)
/* 802E39F8 002D9778  EC 67 08 28 */	fsubs f3, f7, f1
/* 802E39FC 002D977C  EC 2D 03 32 */	fmuls f1, f13, f12
/* 802E3A00 002D9780  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 802E3A04 002D9784  D1 41 00 24 */	stfs f10, 0x24(r1)
/* 802E3A08 002D9788  EC 2D 00 72 */	fmuls f1, f13, f1
/* 802E3A0C 002D978C  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 802E3A10 002D9790  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 802E3A14 002D9794  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 802E3A18 002D9798  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 802E3A1C 002D979C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802E3A20 002D97A0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802E3A24 002D97A4  40 80 00 1C */	bge lbl_802E3A40
/* 802E3A28 002D97A8  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 802E3A2C 002D97AC  EC 00 00 32 */	fmuls f0, f0, f0
/* 802E3A30 002D97B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E3A34 002D97B4  40 80 00 0C */	bge lbl_802E3A40
/* 802E3A38 002D97B8  3C 60 01 00 */	lis r3, 0x100
/* 802E3A3C 002D97BC  48 00 00 48 */	b lbl_802E3A84
lbl_802E3A40:
/* 802E3A40 002D97C0  C0 05 00 00 */	lfs f0, 0(r5)
/* 802E3A44 002D97C4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802E3A48 002D97C8  C0 05 00 04 */	lfs f0, 4(r5)
/* 802E3A4C 002D97CC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802E3A50 002D97D0  C0 05 00 08 */	lfs f0, 8(r5)
/* 802E3A54 002D97D4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802E3A58 002D97D8  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802E3A5C 002D97DC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802E3A60 002D97E0  C0 06 00 00 */	lfs f0, 0(r6)
/* 802E3A64 002D97E4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802E3A68 002D97E8  C0 06 00 04 */	lfs f0, 4(r6)
/* 802E3A6C 002D97EC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802E3A70 002D97F0  C0 06 00 08 */	lfs f0, 8(r6)
/* 802E3A74 002D97F4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802E3A78 002D97F8  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 802E3A7C 002D97FC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802E3A80 002D9800  38 60 00 00 */	li r3, 0
lbl_802E3A84:
/* 802E3A84 002D9804  81 41 00 00 */	lwz r10, 0(r1)
/* 802E3A88 002D9808  7D 41 53 78 */	mr r1, r10
/* 802E3A8C 002D980C  4E 80 00 20 */	blr 

.global hkSpatialRigidBodyDeactivator$7shouldDeactivateLowFrequency
hkSpatialRigidBodyDeactivator$7shouldDeactivateLowFrequency:
/* 802E3A90 002D9810  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E3A94 002D9814  7C 2C 0B 78 */	mr r12, r1
/* 802E3A98 002D9818  21 6B FF D0 */	subfic r11, r11, -48
/* 802E3A9C 002D981C  38 C4 01 20 */	addi r6, r4, 0x120
/* 802E3AA0 002D9820  7C 21 59 6E */	stwux r1, r1, r11
/* 802E3AA4 002D9824  38 A4 01 00 */	addi r5, r4, 0x100
/* 802E3AA8 002D9828  C0 43 00 44 */	lfs f2, 0x44(r3)
/* 802E3AAC 002D982C  C0 24 01 24 */	lfs f1, 0x124(r4)
/* 802E3AB0 002D9830  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 802E3AB4 002D9834  EC A2 08 28 */	fsubs f5, f2, f1
/* 802E3AB8 002D9838  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 802E3ABC 002D983C  C0 24 01 20 */	lfs f1, 0x120(r4)
/* 802E3AC0 002D9840  EC 00 00 32 */	fmuls f0, f0, f0
/* 802E3AC4 002D9844  C0 83 00 34 */	lfs f4, 0x34(r3)
/* 802E3AC8 002D9848  EC C2 08 28 */	fsubs f6, f2, f1
/* 802E3ACC 002D984C  C0 44 01 04 */	lfs f2, 0x104(r4)
/* 802E3AD0 002D9850  EC 25 01 72 */	fmuls f1, f5, f5
/* 802E3AD4 002D9854  C0 63 00 48 */	lfs f3, 0x48(r3)
/* 802E3AD8 002D9858  ED 44 10 28 */	fsubs f10, f4, f2
/* 802E3ADC 002D985C  C0 44 01 28 */	lfs f2, 0x128(r4)
/* 802E3AE0 002D9860  C1 03 00 30 */	lfs f8, 0x30(r3)
/* 802E3AE4 002D9864  EC 26 09 BA */	fmadds f1, f6, f6, f1
/* 802E3AE8 002D9868  EC 83 10 28 */	fsubs f4, f3, f2
/* 802E3AEC 002D986C  C0 44 01 00 */	lfs f2, 0x100(r4)
/* 802E3AF0 002D9870  ED 68 10 28 */	fsubs f11, f8, f2
/* 802E3AF4 002D9874  C0 63 00 4C */	lfs f3, 0x4c(r3)
/* 802E3AF8 002D9878  C0 44 01 2C */	lfs f2, 0x12c(r4)
/* 802E3AFC 002D987C  EC EA 02 B2 */	fmuls f7, f10, f10
/* 802E3B00 002D9880  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 802E3B04 002D9884  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 802E3B08 002D9888  EC 43 10 28 */	fsubs f2, f3, f2
/* 802E3B0C 002D988C  C1 04 01 08 */	lfs f8, 0x108(r4)
/* 802E3B10 002D9890  EC 6B 3A FA */	fmadds f3, f11, f11, f7
/* 802E3B14 002D9894  C1 A4 01 50 */	lfs f13, 0x150(r4)
/* 802E3B18 002D9898  ED 09 40 28 */	fsubs f8, f9, f8
/* 802E3B1C 002D989C  C0 E3 00 3C */	lfs f7, 0x3c(r3)
/* 802E3B20 002D98A0  ED 82 08 BA */	fmadds f12, f2, f2, f1
/* 802E3B24 002D98A4  C0 24 01 0C */	lfs f1, 0x10c(r4)
/* 802E3B28 002D98A8  ED 28 1A 3A */	fmadds f9, f8, f8, f3
/* 802E3B2C 002D98AC  D1 61 00 20 */	stfs f11, 0x20(r1)
/* 802E3B30 002D98B0  EC 67 08 28 */	fsubs f3, f7, f1
/* 802E3B34 002D98B4  EC 2D 03 32 */	fmuls f1, f13, f12
/* 802E3B38 002D98B8  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 802E3B3C 002D98BC  D1 41 00 24 */	stfs f10, 0x24(r1)
/* 802E3B40 002D98C0  EC 2D 00 72 */	fmuls f1, f13, f1
/* 802E3B44 002D98C4  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 802E3B48 002D98C8  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 802E3B4C 002D98CC  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 802E3B50 002D98D0  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 802E3B54 002D98D4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802E3B58 002D98D8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802E3B5C 002D98DC  40 80 00 1C */	bge lbl_802E3B78
/* 802E3B60 002D98E0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 802E3B64 002D98E4  EC 00 00 32 */	fmuls f0, f0, f0
/* 802E3B68 002D98E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E3B6C 002D98EC  40 80 00 0C */	bge lbl_802E3B78
/* 802E3B70 002D98F0  3C 60 01 00 */	lis r3, 0x100
/* 802E3B74 002D98F4  48 00 00 48 */	b lbl_802E3BBC
lbl_802E3B78:
/* 802E3B78 002D98F8  C0 05 00 00 */	lfs f0, 0(r5)
/* 802E3B7C 002D98FC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802E3B80 002D9900  C0 05 00 04 */	lfs f0, 4(r5)
/* 802E3B84 002D9904  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802E3B88 002D9908  C0 05 00 08 */	lfs f0, 8(r5)
/* 802E3B8C 002D990C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802E3B90 002D9910  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802E3B94 002D9914  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802E3B98 002D9918  C0 06 00 00 */	lfs f0, 0(r6)
/* 802E3B9C 002D991C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 802E3BA0 002D9920  C0 06 00 04 */	lfs f0, 4(r6)
/* 802E3BA4 002D9924  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802E3BA8 002D9928  C0 06 00 08 */	lfs f0, 8(r6)
/* 802E3BAC 002D992C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802E3BB0 002D9930  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 802E3BB4 002D9934  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802E3BB8 002D9938  38 60 00 00 */	li r3, 0
lbl_802E3BBC:
/* 802E3BBC 002D993C  81 41 00 00 */	lwz r10, 0(r1)
/* 802E3BC0 002D9940  7D 41 53 78 */	mr r1, r10
/* 802E3BC4 002D9944  4E 80 00 20 */	blr 

.global __sinit_$3hkSpatialRigidBodyDeactivator_cpp
__sinit_$3hkSpatialRigidBodyDeactivator_cpp:
/* 802E3BC8 002D9948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3BCC 002D994C  7C 08 02 A6 */	mflr r0
/* 802E3BD0 002D9950  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3BD4 002D9954  4B FF FC 9D */	bl getVtablehkSpatialRigidBodyDeactivator
/* 802E3BD8 002D9958  3D 00 80 41 */	lis r8, lbl_80412DA8@ha
/* 802E3BDC 002D995C  3C E0 80 53 */	lis r7, lbl_80533058@ha
/* 802E3BE0 002D9960  3C C0 80 2E */	lis r6, finishLoadedObjecthkSpatialRigidBodyDeactivator@ha
/* 802E3BE4 002D9964  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkSpatialRigidBodyDeactivator@ha
/* 802E3BE8 002D9968  39 08 2D A8 */	addi r8, r8, lbl_80412DA8@l
/* 802E3BEC 002D996C  38 A7 30 58 */	addi r5, r7, lbl_80533058@l
/* 802E3BF0 002D9970  38 C6 37 E0 */	addi r6, r6, finishLoadedObjecthkSpatialRigidBodyDeactivator@l
/* 802E3BF4 002D9974  38 84 38 00 */	addi r4, r4, cleanupLoadedObjecthkSpatialRigidBodyDeactivator@l
/* 802E3BF8 002D9978  91 07 30 58 */	stw r8, 0x3058(r7)
/* 802E3BFC 002D997C  90 C5 00 04 */	stw r6, 4(r5)
/* 802E3C00 002D9980  90 85 00 08 */	stw r4, 8(r5)
/* 802E3C04 002D9984  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E3C08 002D9988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3C0C 002D998C  7C 08 03 A6 */	mtlr r0
/* 802E3C10 002D9990  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3C14 002D9994  4E 80 00 20 */	blr 

.global __sinit_$3hkSpatialRigidBodyDeactivatorClass_cpp
__sinit_$3hkSpatialRigidBodyDeactivatorClass_cpp:
/* 802E3C18 002D9998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3C1C 002D999C  7C 08 02 A6 */	mflr r0
/* 802E3C20 002D99A0  3C 80 80 41 */	lis r4, lbl_80412DE0@ha
/* 802E3C24 002D99A4  3C 60 80 53 */	lis r3, lbl_80533068@ha
/* 802E3C28 002D99A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E3C2C 002D99AC  38 84 2D E0 */	addi r4, r4, lbl_80412DE0@l
/* 802E3C30 002D99B0  38 00 00 02 */	li r0, 2
/* 802E3C34 002D99B4  38 63 30 68 */	addi r3, r3, lbl_80533068@l
/* 802E3C38 002D99B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E3C3C 002D99BC  3F E0 80 41 */	lis r31, lbl_80412F34@ha
/* 802E3C40 002D99C0  38 A0 00 00 */	li r5, 0
/* 802E3C44 002D99C4  38 C0 00 20 */	li r6, 0x20
/* 802E3C48 002D99C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E3C4C 002D99CC  3B C0 00 00 */	li r30, 0
/* 802E3C50 002D99D0  38 E0 00 00 */	li r7, 0
/* 802E3C54 002D99D4  39 00 00 00 */	li r8, 0
/* 802E3C58 002D99D8  90 81 00 08 */	stw r4, 8(r1)
/* 802E3C5C 002D99DC  38 9F 2F 34 */	addi r4, r31, lbl_80412F34@l
/* 802E3C60 002D99E0  39 20 00 00 */	li r9, 0
/* 802E3C64 002D99E4  39 40 00 00 */	li r10, 0
/* 802E3C68 002D99E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E3C6C 002D99EC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802E3C70 002D99F0  4B F9 8B 99 */	bl hkClass$7__ct
/* 802E3C74 002D99F4  3C A0 80 41 */	lis r5, lbl_80412EA8@ha
/* 802E3C78 002D99F8  38 9F 2F 34 */	addi r4, r31, 0x2f34
/* 802E3C7C 002D99FC  38 A5 2E A8 */	addi r5, r5, lbl_80412EA8@l
/* 802E3C80 002D9A00  3C 60 80 53 */	lis r3, lbl_8053308C@ha
/* 802E3C84 002D9A04  90 A1 00 08 */	stw r5, 8(r1)
/* 802E3C88 002D9A08  38 00 00 07 */	li r0, 7
/* 802E3C8C 002D9A0C  3C A0 80 53 */	lis r5, lbl_80533030@ha
/* 802E3C90 002D9A10  38 63 30 8C */	addi r3, r3, lbl_8053308C@l
/* 802E3C94 002D9A14  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E3C98 002D9A18  38 84 00 24 */	addi r4, r4, 0x24
/* 802E3C9C 002D9A1C  38 A5 30 30 */	addi r5, r5, lbl_80533030@l
/* 802E3CA0 002D9A20  38 C0 00 70 */	li r6, 0x70
/* 802E3CA4 002D9A24  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802E3CA8 002D9A28  38 E0 00 00 */	li r7, 0
/* 802E3CAC 002D9A2C  39 00 00 00 */	li r8, 0
/* 802E3CB0 002D9A30  39 20 00 00 */	li r9, 0
/* 802E3CB4 002D9A34  39 40 00 00 */	li r10, 0
/* 802E3CB8 002D9A38  4B F9 8B 51 */	bl hkClass$7__ct
/* 802E3CBC 002D9A3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E3CC0 002D9A40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E3CC4 002D9A44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E3CC8 002D9A48  7C 08 03 A6 */	mtlr r0
/* 802E3CCC 002D9A4C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E3CD0 002D9A50  4E 80 00 20 */	blr 


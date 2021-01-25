.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3lyt8BoundingFPCQ44nw4r3lyt3re$7__ct
nw4r3lyt8BoundingFPCQ44nw4r3lyt3re$7__ct:
/* 80187D00 0017DA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80187D04 0017DA84  7C 08 02 A6 */	mflr r0
/* 80187D08 0017DA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80187D0C 0017DA8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80187D10 0017DA90  7C 7F 1B 78 */	mr r31, r3
/* 80187D14 0017DA94  4B FF AA 4D */	bl nw4r3lyt4PaneFPCQ44nw4r3lyt3res4Pa$7__ct
/* 80187D18 0017DA98  3C 80 80 46 */	lis r4, lbl_804658D0@ha
/* 80187D1C 0017DA9C  7F E3 FB 78 */	mr r3, r31
/* 80187D20 0017DAA0  38 84 58 D0 */	addi r4, r4, lbl_804658D0@l
/* 80187D24 0017DAA4  90 9F 00 00 */	stw r4, 0(r31)
/* 80187D28 0017DAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80187D2C 0017DAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80187D30 0017DAB0  7C 08 03 A6 */	mtlr r0
/* 80187D34 0017DAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80187D38 0017DAB8  4E 80 00 20 */	blr 

.global nw4r3lyt8BoundingFv$7__dt
nw4r3lyt8BoundingFv$7__dt:
/* 80187D3C 0017DABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80187D40 0017DAC0  7C 08 02 A6 */	mflr r0
/* 80187D44 0017DAC4  2C 03 00 00 */	cmpwi r3, 0
/* 80187D48 0017DAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80187D4C 0017DACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80187D50 0017DAD0  7C 9F 23 78 */	mr r31, r4
/* 80187D54 0017DAD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80187D58 0017DAD8  7C 7E 1B 78 */	mr r30, r3
/* 80187D5C 0017DADC  41 82 00 1C */	beq lbl_80187D78
/* 80187D60 0017DAE0  38 80 00 00 */	li r4, 0
/* 80187D64 0017DAE4  4B FF AB 31 */	bl nw4r3lyt4PaneFv$7__dt
/* 80187D68 0017DAE8  2C 1F 00 00 */	cmpwi r31, 0
/* 80187D6C 0017DAEC  40 81 00 0C */	ble lbl_80187D78
/* 80187D70 0017DAF0  7F C3 F3 78 */	mr r3, r30
/* 80187D74 0017DAF4  4B E8 4B 55 */	bl __dl
lbl_80187D78:
/* 80187D78 0017DAF8  7F C3 F3 78 */	mr r3, r30
/* 80187D7C 0017DAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80187D80 0017DB00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80187D84 0017DB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80187D88 0017DB08  7C 08 03 A6 */	mtlr r0
/* 80187D8C 0017DB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80187D90 0017DB10  4E 80 00 20 */	blr 

.global nw4r3lyt8BoundingFRCQ34nw4r3lyt8Dr$7DrawSelf
nw4r3lyt8BoundingFRCQ34nw4r3lyt8Dr$7DrawSelf:
/* 80187D94 0017DB14  4E 80 00 20 */	blr 

.global nw4r3lyt8BoundingCFv$7GetRuntimeTypeInfo
nw4r3lyt8BoundingCFv$7GetRuntimeTypeInfo:
/* 80187D98 0017DB18  38 6D C1 08 */	addi r3, r13, lbl_805A0528-_SDA_BASE_
/* 80187D9C 0017DB1C  4E 80 00 20 */	blr 

.global __sinit_$3lyt_bounding_cpp
__sinit_$3lyt_bounding_cpp:
/* 80187DA0 0017DB20  38 0D C0 E0 */	addi r0, r13, lbl_805A0500-_SDA_BASE_
/* 80187DA4 0017DB24  90 0D C1 08 */	stw r0, lbl_805A0528-_SDA_BASE_(r13)
/* 80187DA8 0017DB28  4E 80 00 20 */	blr 

.global $2unnamed$2lyt_material_cpp$2$7CalcTextureMtx
$2unnamed$2lyt_material_cpp$2$7CalcTextureMtx:
/* 80187DAC 0017DB2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80187DB0 0017DB30  7C 08 02 A6 */	mflr r0
/* 80187DB4 0017DB34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80187DB8 0017DB38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80187DBC 0017DB3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80187DC0 0017DB40  C0 24 00 08 */	lfs f1, 8(r4)
/* 80187DC4 0017DB44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80187DC8 0017DB48  7C 9F 23 78 */	mr r31, r4
/* 80187DCC 0017DB4C  C0 42 9D F0 */	lfs f2, lbl_805A3110-_SDA2_BASE_(r2)
/* 80187DD0 0017DB50  C0 02 9D F4 */	lfs f0, lbl_805A3114-_SDA2_BASE_(r2)
/* 80187DD4 0017DB54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80187DD8 0017DB58  7C 7E 1B 78 */	mr r30, r3
/* 80187DDC 0017DB5C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80187DE0 0017DB60  D0 41 00 08 */	stfs f2, 8(r1)
/* 80187DE4 0017DB64  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80187DE8 0017DB68  4B FD A5 45 */	bl nw4r4mathFf$7CosFIdx
/* 80187DEC 0017DB6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80187DF0 0017DB70  FF E0 08 90 */	fmr f31, f1
/* 80187DF4 0017DB74  C0 02 9D F4 */	lfs f0, lbl_805A3114-_SDA2_BASE_(r2)
/* 80187DF8 0017DB78  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80187DFC 0017DB7C  4B FD A4 C9 */	bl nw4r4mathFf$7SinFIdx
/* 80187E00 0017DB80  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80187E04 0017DB84  FC A0 08 50 */	fneg f5, f1
/* 80187E08 0017DB88  C0 41 00 08 */	lfs f2, 8(r1)
/* 80187E0C 0017DB8C  ED 21 00 F2 */	fmuls f9, f1, f3
/* 80187E10 0017DB90  C1 02 9D F8 */	lfs f8, lbl_805A3118-_SDA2_BASE_(r2)
/* 80187E14 0017DB94  ED 7F 00 F2 */	fmuls f11, f31, f3
/* 80187E18 0017DB98  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80187E1C 0017DB9C  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 80187E20 0017DBA0  FC 80 10 50 */	fneg f4, f2
/* 80187E24 0017DBA4  ED 85 00 32 */	fmuls f12, f5, f0
/* 80187E28 0017DBA8  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80187E2C 0017DBAC  ED 5F 00 32 */	fmuls f10, f31, f0
/* 80187E30 0017DBB0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80187E34 0017DBB4  EC A3 10 2A */	fadds f5, f3, f2
/* 80187E38 0017DBB8  C0 02 9D FC */	lfs f0, lbl_805A311C-_SDA2_BASE_(r2)
/* 80187E3C 0017DBBC  EC 41 30 2A */	fadds f2, f1, f6
/* 80187E40 0017DBC0  D1 7E 00 00 */	stfs f11, 0(r30)
/* 80187E44 0017DBC4  FC E0 30 50 */	fneg f7, f6
/* 80187E48 0017DBC8  EC 29 01 32 */	fmuls f1, f9, f4
/* 80187E4C 0017DBCC  D1 9E 00 04 */	stfs f12, 4(r30)
/* 80187E50 0017DBD0  EC 6B 01 32 */	fmuls f3, f11, f4
/* 80187E54 0017DBD4  EC CC 01 F2 */	fmuls f6, f12, f7
/* 80187E58 0017DBD8  D1 1E 00 08 */	stfs f8, 8(r30)
/* 80187E5C 0017DBDC  EC 22 08 2A */	fadds f1, f2, f1
/* 80187E60 0017DBE0  EC 85 18 2A */	fadds f4, f5, f3
/* 80187E64 0017DBE4  D1 3E 00 10 */	stfs f9, 0x10(r30)
/* 80187E68 0017DBE8  EC 6A 01 F2 */	fmuls f3, f10, f7
/* 80187E6C 0017DBEC  D1 5E 00 14 */	stfs f10, 0x14(r30)
/* 80187E70 0017DBF0  EC 46 20 2A */	fadds f2, f6, f4
/* 80187E74 0017DBF4  EC 23 08 2A */	fadds f1, f3, f1
/* 80187E78 0017DBF8  D1 1E 00 18 */	stfs f8, 0x18(r30)
/* 80187E7C 0017DBFC  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 80187E80 0017DC00  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 80187E84 0017DC04  D1 1E 00 20 */	stfs f8, 0x20(r30)
/* 80187E88 0017DC08  D1 1E 00 24 */	stfs f8, 0x24(r30)
/* 80187E8C 0017DC0C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80187E90 0017DC10  D1 1E 00 2C */	stfs f8, 0x2c(r30)
/* 80187E94 0017DC14  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80187E98 0017DC18  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80187E9C 0017DC1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80187EA0 0017DC20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80187EA4 0017DC24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80187EA8 0017DC28  7C 08 03 A6 */	mtlr r0
/* 80187EAC 0017DC2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80187EB0 0017DC30  4E 80 00 20 */	blr 

.global $2unnamed$2lyt_material_cpp$2$7SetIndTexMtx
$2unnamed$2lyt_material_cpp$2$7SetIndTexMtx:
/* 80187EB4 0017DC34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80187EB8 0017DC38  7C 08 02 A6 */	mflr r0
/* 80187EBC 0017DC3C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80187EC0 0017DC40  38 A0 00 00 */	li r5, 0
/* 80187EC4 0017DC44  C0 64 00 04 */	lfs f3, 4(r4)
/* 80187EC8 0017DC48  FD 00 12 10 */	fabs f8, f2
/* 80187ECC 0017DC4C  C0 02 9D FC */	lfs f0, lbl_805A311C-_SDA2_BASE_(r2)
/* 80187ED0 0017DC50  C0 84 00 08 */	lfs f4, 8(r4)
/* 80187ED4 0017DC54  FD 20 1A 10 */	fabs f9, f3
/* 80187ED8 0017DC58  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 80187EDC 0017DC5C  C0 C4 00 10 */	lfs f6, 0x10(r4)
/* 80187EE0 0017DC60  C0 E4 00 14 */	lfs f7, 0x14(r4)
/* 80187EE4 0017DC64  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 80187EE8 0017DC68  FD 40 22 10 */	fabs f10, f4
/* 80187EEC 0017DC6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187EF0 0017DC70  FD 60 2A 10 */	fabs f11, f5
/* 80187EF4 0017DC74  FD 80 32 10 */	fabs f12, f6
/* 80187EF8 0017DC78  FD A0 3A 10 */	fabs f13, f7
/* 80187EFC 0017DC7C  4C 41 13 82 */	cror 2, 1, 2
/* 80187F00 0017DC80  41 82 00 40 */	beq lbl_80187F40
/* 80187F04 0017DC84  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 80187F08 0017DC88  4C 41 13 82 */	cror 2, 1, 2
/* 80187F0C 0017DC8C  41 82 00 34 */	beq lbl_80187F40
/* 80187F10 0017DC90  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 80187F14 0017DC94  4C 41 13 82 */	cror 2, 1, 2
/* 80187F18 0017DC98  41 82 00 28 */	beq lbl_80187F40
/* 80187F1C 0017DC9C  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 80187F20 0017DCA0  4C 41 13 82 */	cror 2, 1, 2
/* 80187F24 0017DCA4  41 82 00 1C */	beq lbl_80187F40
/* 80187F28 0017DCA8  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 80187F2C 0017DCAC  4C 41 13 82 */	cror 2, 1, 2
/* 80187F30 0017DCB0  41 82 00 10 */	beq lbl_80187F40
/* 80187F34 0017DCB4  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 80187F38 0017DCB8  4C 41 13 82 */	cror 2, 1, 2
/* 80187F3C 0017DCBC  40 82 00 98 */	bne lbl_80187FD4
lbl_80187F40:
/* 80187F40 0017DCC0  C0 22 9D F0 */	lfs f1, lbl_805A3110-_SDA2_BASE_(r2)
/* 80187F44 0017DCC4  C0 02 9D FC */	lfs f0, lbl_805A311C-_SDA2_BASE_(r2)
lbl_80187F48:
/* 80187F48 0017DCC8  7C A0 07 74 */	extsb r0, r5
/* 80187F4C 0017DCCC  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80187F50 0017DCD0  40 80 01 2C */	bge lbl_8018807C
/* 80187F54 0017DCD4  ED 08 00 72 */	fmuls f8, f8, f1
/* 80187F58 0017DCD8  EC 42 00 72 */	fmuls f2, f2, f1
/* 80187F5C 0017DCDC  EC 63 00 72 */	fmuls f3, f3, f1
/* 80187F60 0017DCE0  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 80187F64 0017DCE4  EC 84 00 72 */	fmuls f4, f4, f1
/* 80187F68 0017DCE8  EC A5 00 72 */	fmuls f5, f5, f1
/* 80187F6C 0017DCEC  EC C6 00 72 */	fmuls f6, f6, f1
/* 80187F70 0017DCF0  EC E7 00 72 */	fmuls f7, f7, f1
/* 80187F74 0017DCF4  ED 29 00 72 */	fmuls f9, f9, f1
/* 80187F78 0017DCF8  ED 4A 00 72 */	fmuls f10, f10, f1
/* 80187F7C 0017DCFC  ED 6B 00 72 */	fmuls f11, f11, f1
/* 80187F80 0017DD00  ED 8C 00 72 */	fmuls f12, f12, f1
/* 80187F84 0017DD04  ED AD 00 72 */	fmuls f13, f13, f1
/* 80187F88 0017DD08  4C 41 13 82 */	cror 2, 1, 2
/* 80187F8C 0017DD0C  38 A5 00 01 */	addi r5, r5, 1
/* 80187F90 0017DD10  41 82 FF B8 */	beq lbl_80187F48
/* 80187F94 0017DD14  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 80187F98 0017DD18  4C 41 13 82 */	cror 2, 1, 2
/* 80187F9C 0017DD1C  41 82 FF AC */	beq lbl_80187F48
/* 80187FA0 0017DD20  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 80187FA4 0017DD24  4C 41 13 82 */	cror 2, 1, 2
/* 80187FA8 0017DD28  41 82 FF A0 */	beq lbl_80187F48
/* 80187FAC 0017DD2C  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 80187FB0 0017DD30  4C 41 13 82 */	cror 2, 1, 2
/* 80187FB4 0017DD34  41 82 FF 94 */	beq lbl_80187F48
/* 80187FB8 0017DD38  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 80187FBC 0017DD3C  4C 41 13 82 */	cror 2, 1, 2
/* 80187FC0 0017DD40  41 82 FF 88 */	beq lbl_80187F48
/* 80187FC4 0017DD44  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 80187FC8 0017DD48  4C 41 13 82 */	cror 2, 1, 2
/* 80187FCC 0017DD4C  41 82 FF 7C */	beq lbl_80187F48
/* 80187FD0 0017DD50  48 00 00 AC */	b lbl_8018807C
lbl_80187FD4:
/* 80187FD4 0017DD54  C0 22 9D F0 */	lfs f1, lbl_805A3110-_SDA2_BASE_(r2)
/* 80187FD8 0017DD58  FC 08 08 40 */	fcmpo cr0, f8, f1
/* 80187FDC 0017DD5C  40 80 00 A0 */	bge lbl_8018807C
/* 80187FE0 0017DD60  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 80187FE4 0017DD64  40 80 00 98 */	bge lbl_8018807C
/* 80187FE8 0017DD68  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 80187FEC 0017DD6C  40 80 00 90 */	bge lbl_8018807C
/* 80187FF0 0017DD70  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 80187FF4 0017DD74  40 80 00 88 */	bge lbl_8018807C
/* 80187FF8 0017DD78  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 80187FFC 0017DD7C  40 80 00 80 */	bge lbl_8018807C
/* 80188000 0017DD80  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 80188004 0017DD84  40 80 00 78 */	bge lbl_8018807C
/* 80188008 0017DD88  C0 02 9E 00 */	lfs f0, lbl_805A3120-_SDA2_BASE_(r2)
lbl_8018800C:
/* 8018800C 0017DD8C  ED 08 00 32 */	fmuls f8, f8, f0
/* 80188010 0017DD90  38 A5 FF FF */	addi r5, r5, -1
/* 80188014 0017DD94  EC 42 00 32 */	fmuls f2, f2, f0
/* 80188018 0017DD98  EC 63 00 32 */	fmuls f3, f3, f0
/* 8018801C 0017DD9C  FC 08 08 40 */	fcmpo cr0, f8, f1
/* 80188020 0017DDA0  EC 84 00 32 */	fmuls f4, f4, f0
/* 80188024 0017DDA4  EC A5 00 32 */	fmuls f5, f5, f0
/* 80188028 0017DDA8  EC C6 00 32 */	fmuls f6, f6, f0
/* 8018802C 0017DDAC  EC E7 00 32 */	fmuls f7, f7, f0
/* 80188030 0017DDB0  ED 29 00 32 */	fmuls f9, f9, f0
/* 80188034 0017DDB4  ED 4A 00 32 */	fmuls f10, f10, f0
/* 80188038 0017DDB8  ED 6B 00 32 */	fmuls f11, f11, f0
/* 8018803C 0017DDBC  ED 8C 00 32 */	fmuls f12, f12, f0
/* 80188040 0017DDC0  ED AD 00 32 */	fmuls f13, f13, f0
/* 80188044 0017DDC4  40 80 00 38 */	bge lbl_8018807C
/* 80188048 0017DDC8  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 8018804C 0017DDCC  40 80 00 30 */	bge lbl_8018807C
/* 80188050 0017DDD0  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 80188054 0017DDD4  40 80 00 28 */	bge lbl_8018807C
/* 80188058 0017DDD8  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 8018805C 0017DDDC  40 80 00 20 */	bge lbl_8018807C
/* 80188060 0017DDE0  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 80188064 0017DDE4  40 80 00 18 */	bge lbl_8018807C
/* 80188068 0017DDE8  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 8018806C 0017DDEC  40 80 00 10 */	bge lbl_8018807C
/* 80188070 0017DDF0  7C A0 07 74 */	extsb r0, r5
/* 80188074 0017DDF4  2C 00 FF EF */	cmpwi r0, -17
/* 80188078 0017DDF8  41 81 FF 94 */	bgt lbl_8018800C
lbl_8018807C:
/* 8018807C 0017DDFC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80188080 0017DE00  38 81 00 08 */	addi r4, r1, 8
/* 80188084 0017DE04  7C A5 07 74 */	extsb r5, r5
/* 80188088 0017DE08  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8018808C 0017DE0C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80188090 0017DE10  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80188094 0017DE14  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 80188098 0017DE18  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 8018809C 0017DE1C  48 06 B7 1D */	bl GXSetIndTexMtx
/* 801880A0 0017DE20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801880A4 0017DE24  7C 08 03 A6 */	mtlr r0
/* 801880A8 0017DE28  38 21 00 20 */	addi r1, r1, 0x20
/* 801880AC 0017DE2C  4E 80 00 20 */	blr 

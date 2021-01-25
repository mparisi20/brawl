.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global Vec2f$7normalize
Vec2f$7normalize:
/* 8003DBA8 00033928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003DBAC 0003392C  7C 08 02 A6 */	mflr r0
/* 8003DBB0 00033930  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003DBB4 00033934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003DBB8 00033938  7C 7F 1B 78 */	mr r31, r3
/* 8003DBBC 0003393C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8003DBC0 00033940  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003DBC4 00033944  EC 21 00 72 */	fmuls f1, f1, f1
/* 8003DBC8 00033948  EC 00 00 32 */	fmuls f0, f0, f0
/* 8003DBCC 0003394C  EC 21 00 2A */	fadds f1, f1, f0
/* 8003DBD0 00033950  4B FF FF 89 */	bl rsqrtf
/* 8003DBD4 00033954  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8003DBD8 00033958  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8003DBDC 0003395C  EC 42 00 72 */	fmuls f2, f2, f1
/* 8003DBE0 00033960  EC 00 00 72 */	fmuls f0, f0, f1
/* 8003DBE4 00033964  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8003DBE8 00033968  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8003DBEC 0003396C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003DBF0 00033970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003DBF4 00033974  7C 08 03 A6 */	mtlr r0
/* 8003DBF8 00033978  38 21 00 10 */	addi r1, r1, 0x10
/* 8003DBFC 0003397C  4E 80 00 20 */	blr 

.global Vec2f$7normalize_786
Vec2f$7normalize_786:
/* 8003DC00 00033980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003DC04 00033984  7C 08 02 A6 */	mflr r0
/* 8003DC08 00033988  C0 24 00 00 */	lfs f1, 0(r4)
/* 8003DC0C 0003398C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8003DC10 00033990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003DC14 00033994  EC 21 00 72 */	fmuls f1, f1, f1
/* 8003DC18 00033998  EC 00 00 32 */	fmuls f0, f0, f0
/* 8003DC1C 0003399C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003DC20 000339A0  7C 9F 23 78 */	mr r31, r4
/* 8003DC24 000339A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8003DC28 000339A8  EC 21 00 2A */	fadds f1, f1, f0
/* 8003DC2C 000339AC  7C 7E 1B 78 */	mr r30, r3
/* 8003DC30 000339B0  4B FF FF 29 */	bl rsqrtf
/* 8003DC34 000339B4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8003DC38 000339B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8003DC3C 000339BC  EC 42 00 72 */	fmuls f2, f2, f1
/* 8003DC40 000339C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8003DC44 000339C4  D0 5E 00 00 */	stfs f2, 0(r30)
/* 8003DC48 000339C8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8003DC4C 000339CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003DC50 000339D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003DC54 000339D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003DC58 000339D8  7C 08 03 A6 */	mtlr r0
/* 8003DC5C 000339DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003DC60 000339E0  4E 80 00 20 */	blr 

.global Vec2f$7rot
Vec2f$7rot:
/* 8003DC64 000339E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003DC68 000339E8  7C 08 02 A6 */	mflr r0
/* 8003DC6C 000339EC  C0 43 00 00 */	lfs f2, 0(r3)
/* 8003DC70 000339F0  38 A0 00 00 */	li r5, 0
/* 8003DC74 000339F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003DC78 000339F8  38 00 00 00 */	li r0, 0
/* 8003DC7C 000339FC  FC 40 12 10 */	fabs f2, f2
/* 8003DC80 00033A00  C0 02 83 E8 */	lfs f0, lbl_805A1708-_SDA2_BASE_(r2)
/* 8003DC84 00033A04  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8003DC88 00033A08  7C 9F 23 78 */	mr r31, r4
/* 8003DC8C 00033A0C  FC 40 10 18 */	frsp f2, f2
/* 8003DC90 00033A10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8003DC94 00033A14  40 80 00 08 */	bge lbl_8003DC9C
/* 8003DC98 00033A18  38 00 00 01 */	li r0, 1
lbl_8003DC9C:
/* 8003DC9C 00033A1C  2C 00 00 00 */	cmpwi r0, 0
/* 8003DCA0 00033A20  41 82 00 30 */	beq lbl_8003DCD0
/* 8003DCA4 00033A24  C0 43 00 04 */	lfs f2, 4(r3)
/* 8003DCA8 00033A28  38 00 00 00 */	li r0, 0
/* 8003DCAC 00033A2C  C0 02 83 E8 */	lfs f0, lbl_805A1708-_SDA2_BASE_(r2)
/* 8003DCB0 00033A30  FC 40 12 10 */	fabs f2, f2
/* 8003DCB4 00033A34  FC 40 10 18 */	frsp f2, f2
/* 8003DCB8 00033A38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8003DCBC 00033A3C  40 80 00 08 */	bge lbl_8003DCC4
/* 8003DCC0 00033A40  38 00 00 01 */	li r0, 1
lbl_8003DCC4:
/* 8003DCC4 00033A44  2C 00 00 00 */	cmpwi r0, 0
/* 8003DCC8 00033A48  41 82 00 08 */	beq lbl_8003DCD0
/* 8003DCCC 00033A4C  38 A0 00 01 */	li r5, 1
lbl_8003DCD0:
/* 8003DCD0 00033A50  28 05 00 01 */	cmplwi r5, 1
/* 8003DCD4 00033A54  40 82 00 1C */	bne lbl_8003DCF0
/* 8003DCD8 00033A58  C0 02 83 EC */	lfs f0, lbl_805A170C-_SDA2_BASE_(r2)
/* 8003DCDC 00033A5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003DCE0 00033A60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8003DCE4 00033A64  D0 04 00 00 */	stfs f0, 0(r4)
/* 8003DCE8 00033A68  D0 04 00 04 */	stfs f0, 4(r4)
/* 8003DCEC 00033A6C  48 00 00 D0 */	b lbl_8003DDBC
lbl_8003DCF0:
/* 8003DCF0 00033A70  FC 40 0A 10 */	fabs f2, f1
/* 8003DCF4 00033A74  C0 02 83 E8 */	lfs f0, lbl_805A1708-_SDA2_BASE_(r2)
/* 8003DCF8 00033A78  38 00 00 00 */	li r0, 0
/* 8003DCFC 00033A7C  FC 40 10 18 */	frsp f2, f2
/* 8003DD00 00033A80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8003DD04 00033A84  40 80 00 08 */	bge lbl_8003DD0C
/* 8003DD08 00033A88  38 00 00 01 */	li r0, 1
lbl_8003DD0C:
/* 8003DD0C 00033A8C  28 00 00 01 */	cmplwi r0, 1
/* 8003DD10 00033A90  40 82 00 18 */	bne lbl_8003DD28
/* 8003DD14 00033A94  C0 23 00 00 */	lfs f1, 0(r3)
/* 8003DD18 00033A98  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003DD1C 00033A9C  D0 24 00 00 */	stfs f1, 0(r4)
/* 8003DD20 00033AA0  D0 04 00 04 */	stfs f0, 4(r4)
/* 8003DD24 00033AA4  48 00 00 98 */	b lbl_8003DDBC
lbl_8003DD28:
/* 8003DD28 00033AA8  FC 40 0A 10 */	fabs f2, f1
/* 8003DD2C 00033AAC  C0 62 83 EC */	lfs f3, lbl_805A170C-_SDA2_BASE_(r2)
/* 8003DD30 00033AB0  C0 02 83 F0 */	lfs f0, lbl_805A1710-_SDA2_BASE_(r2)
/* 8003DD34 00033AB4  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8003DD38 00033AB8  FC C0 10 18 */	frsp f6, f2
/* 8003DD3C 00033ABC  C0 42 83 F4 */	lfs f2, lbl_805A1714-_SDA2_BASE_(r2)
/* 8003DD40 00033AC0  C0 83 00 00 */	lfs f4, 0(r3)
/* 8003DD44 00033AC4  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8003DD48 00033AC8  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8003DD4C 00033ACC  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8003DD50 00033AD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8003DD54 00033AD4  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8003DD58 00033AD8  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8003DD5C 00033ADC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8003DD60 00033AE0  40 81 00 30 */	ble lbl_8003DD90
/* 8003DD64 00033AE4  C0 02 83 F8 */	lfs f0, lbl_805A1718-_SDA2_BASE_(r2)
/* 8003DD68 00033AE8  48 00 00 08 */	b lbl_8003DD70
lbl_8003DD6C:
/* 8003DD6C 00033AEC  EC 21 00 28 */	fsubs f1, f1, f0
lbl_8003DD70:
/* 8003DD70 00033AF0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8003DD74 00033AF4  41 81 FF F8 */	bgt lbl_8003DD6C
/* 8003DD78 00033AF8  C0 42 83 F8 */	lfs f2, lbl_805A1718-_SDA2_BASE_(r2)
/* 8003DD7C 00033AFC  C0 02 83 FC */	lfs f0, lbl_805A171C-_SDA2_BASE_(r2)
/* 8003DD80 00033B00  48 00 00 08 */	b lbl_8003DD88
lbl_8003DD84:
/* 8003DD84 00033B04  EC 21 10 2A */	fadds f1, f1, f2
lbl_8003DD88:
/* 8003DD88 00033B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8003DD8C 00033B0C  41 80 FF F8 */	blt lbl_8003DD84
lbl_8003DD90:
/* 8003DD90 00033B10  38 61 00 38 */	addi r3, r1, 0x38
/* 8003DD94 00033B14  38 81 00 28 */	addi r4, r1, 0x28
/* 8003DD98 00033B18  48 00 1B 65 */	bl Quat$7set
/* 8003DD9C 00033B1C  38 61 00 38 */	addi r3, r1, 0x38
/* 8003DDA0 00033B20  38 81 00 1C */	addi r4, r1, 0x1c
/* 8003DDA4 00033B24  38 A1 00 10 */	addi r5, r1, 0x10
/* 8003DDA8 00033B28  48 00 1C 6D */	bl Quat$7rot
/* 8003DDAC 00033B2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8003DDB0 00033B30  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8003DDB4 00033B34  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8003DDB8 00033B38  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_8003DDBC:
/* 8003DDBC 00033B3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003DDC0 00033B40  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8003DDC4 00033B44  7C 08 03 A6 */	mtlr r0
/* 8003DDC8 00033B48  38 21 00 50 */	addi r1, r1, 0x50
/* 8003DDCC 00033B4C  4E 80 00 20 */	blr 

.global Vec2f$7angle
Vec2f$7angle:
/* 8003DDD0 00033B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003DDD4 00033B54  7C 08 02 A6 */	mflr r0
/* 8003DDD8 00033B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003DDDC 00033B5C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8003DDE0 00033B60  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8003DDE4 00033B64  C0 E4 00 00 */	lfs f7, 0(r4)
/* 8003DDE8 00033B68  C0 A4 00 04 */	lfs f5, 4(r4)
/* 8003DDEC 00033B6C  C0 43 00 00 */	lfs f2, 0(r3)
/* 8003DDF0 00033B70  EC C7 01 F2 */	fmuls f6, f7, f7
/* 8003DDF4 00033B74  C0 63 00 04 */	lfs f3, 4(r3)
/* 8003DDF8 00033B78  EC 85 01 72 */	fmuls f4, f5, f5
/* 8003DDFC 00033B7C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8003DE00 00033B80  C1 02 83 EC */	lfs f8, lbl_805A170C-_SDA2_BASE_(r2)
/* 8003DE04 00033B84  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8003DE08 00033B88  EC 86 20 2A */	fadds f4, f6, f4
/* 8003DE0C 00033B8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8003DE10 00033B90  EC 20 01 32 */	fmuls f1, f0, f4
/* 8003DE14 00033B94  FC 08 08 00 */	fcmpu cr0, f8, f1
/* 8003DE18 00033B98  40 82 00 08 */	bne lbl_8003DE20
/* 8003DE1C 00033B9C  48 00 00 38 */	b lbl_8003DE54
lbl_8003DE20:
/* 8003DE20 00033BA0  EC 42 01 F2 */	fmuls f2, f2, f7
/* 8003DE24 00033BA4  EC 03 01 72 */	fmuls f0, f3, f5
/* 8003DE28 00033BA8  EF E2 00 2A */	fadds f31, f2, f0
/* 8003DE2C 00033BAC  4B FF FD 2D */	bl rsqrtf
/* 8003DE30 00033BB0  EC 7F 00 72 */	fmuls f3, f31, f1
/* 8003DE34 00033BB4  C0 22 84 00 */	lfs f1, lbl_805A1720-_SDA2_BASE_(r2)
/* 8003DE38 00033BB8  C0 42 83 F0 */	lfs f2, lbl_805A1710-_SDA2_BASE_(r2)
/* 8003DE3C 00033BBC  EC 03 08 28 */	fsubs f0, f3, f1
/* 8003DE40 00033BC0  FC 20 08 EE */	fsel f1, f0, f3, f1
/* 8003DE44 00033BC4  EC 01 10 28 */	fsubs f0, f1, f2
/* 8003DE48 00033BC8  FC 20 08 AE */	fsel f1, f0, f2, f1
/* 8003DE4C 00033BCC  48 3C 2C E5 */	bl acos
/* 8003DE50 00033BD0  FD 00 08 18 */	frsp f8, f1
lbl_8003DE54:
/* 8003DE54 00033BD4  FC 20 40 90 */	fmr f1, f8
/* 8003DE58 00033BD8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8003DE5C 00033BDC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8003DE60 00033BE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003DE64 00033BE4  7C 08 03 A6 */	mtlr r0
/* 8003DE68 00033BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003DE6C 00033BEC  4E 80 00 20 */	blr 

.global Vec3f$7normalize
Vec3f$7normalize:
/* 8003DE70 00033BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003DE74 00033BF4  7C 08 02 A6 */	mflr r0
/* 8003DE78 00033BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003DE7C 00033BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003DE80 00033C00  7C 7F 1B 78 */	mr r31, r3
/* 8003DE84 00033C04  C0 23 00 00 */	lfs f1, 0(r3)
/* 8003DE88 00033C08  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003DE8C 00033C0C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8003DE90 00033C10  C0 43 00 08 */	lfs f2, 8(r3)
/* 8003DE94 00033C14  EC 00 00 32 */	fmuls f0, f0, f0
/* 8003DE98 00033C18  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8003DE9C 00033C1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8003DEA0 00033C20  EC 22 00 2A */	fadds f1, f2, f0
/* 8003DEA4 00033C24  4B FF FC B5 */	bl rsqrtf
/* 8003DEA8 00033C28  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8003DEAC 00033C2C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8003DEB0 00033C30  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8003DEB4 00033C34  EC 63 00 72 */	fmuls f3, f3, f1
/* 8003DEB8 00033C38  EC 42 00 72 */	fmuls f2, f2, f1
/* 8003DEBC 00033C3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8003DEC0 00033C40  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8003DEC4 00033C44  D0 5F 00 04 */	stfs f2, 4(r31)
/* 8003DEC8 00033C48  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8003DECC 00033C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003DED0 00033C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003DED4 00033C54  7C 08 03 A6 */	mtlr r0
/* 8003DED8 00033C58  38 21 00 10 */	addi r1, r1, 0x10
/* 8003DEDC 00033C5C  4E 80 00 20 */	blr 

.global Vec3f$7normalize_790
Vec3f$7normalize_790:
/* 8003DEE0 00033C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003DEE4 00033C64  7C 08 02 A6 */	mflr r0
/* 8003DEE8 00033C68  C0 24 00 00 */	lfs f1, 0(r4)
/* 8003DEEC 00033C6C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8003DEF0 00033C70  C0 44 00 08 */	lfs f2, 8(r4)
/* 8003DEF4 00033C74  EC 21 00 72 */	fmuls f1, f1, f1
/* 8003DEF8 00033C78  EC 00 00 32 */	fmuls f0, f0, f0
/* 8003DEFC 00033C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003DF00 00033C80  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8003DF04 00033C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003DF08 00033C88  7C 9F 23 78 */	mr r31, r4
/* 8003DF0C 00033C8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8003DF10 00033C90  93 C1 00 08 */	stw r30, 8(r1)
/* 8003DF14 00033C94  7C 7E 1B 78 */	mr r30, r3
/* 8003DF18 00033C98  EC 22 00 2A */	fadds f1, f2, f0
/* 8003DF1C 00033C9C  4B FF FC 3D */	bl rsqrtf
/* 8003DF20 00033CA0  E0 5F 00 00 */	psq_l f2, 0(r31), 0, qr0
/* 8003DF24 00033CA4  E0 1F 80 08 */	psq_l f0, 8(r31), 1, qr0
/* 8003DF28 00033CA8  10 42 00 58 */	ps_muls0 f2, f2, f1
/* 8003DF2C 00033CAC  10 00 00 58 */	ps_muls0 f0, f0, f1
/* 8003DF30 00033CB0  F0 5E 00 00 */	psq_st f2, 0(r30), 0, qr0
/* 8003DF34 00033CB4  F0 1E 80 08 */	psq_st f0, 8(r30), 1, qr0
/* 8003DF38 00033CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003DF3C 00033CBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003DF40 00033CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003DF44 00033CC4  7C 08 03 A6 */	mtlr r0
/* 8003DF48 00033CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003DF4C 00033CCC  4E 80 00 20 */	blr 

.global Vec3f$7rot
Vec3f$7rot:
/* 8003DF50 00033CD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003DF54 00033CD4  7C 08 02 A6 */	mflr r0
/* 8003DF58 00033CD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003DF5C 00033CDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003DF60 00033CE0  7C BF 2B 78 */	mr r31, r5
/* 8003DF64 00033CE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003DF68 00033CE8  7C 7E 1B 78 */	mr r30, r3
/* 8003DF6C 00033CEC  38 61 00 08 */	addi r3, r1, 8
/* 8003DF70 00033CF0  48 00 19 8D */	bl Quat$7set
/* 8003DF74 00033CF4  7F C4 F3 78 */	mr r4, r30
/* 8003DF78 00033CF8  7F E5 FB 78 */	mr r5, r31
/* 8003DF7C 00033CFC  38 61 00 08 */	addi r3, r1, 8
/* 8003DF80 00033D00  48 00 1A 95 */	bl Quat$7rot
/* 8003DF84 00033D04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003DF88 00033D08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003DF8C 00033D0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003DF90 00033D10  7C 08 03 A6 */	mtlr r0
/* 8003DF94 00033D14  38 21 00 20 */	addi r1, r1, 0x20
/* 8003DF98 00033D18  4E 80 00 20 */	blr 

.global Vec3f$7angle
Vec3f$7angle:
/* 8003DF9C 00033D1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003DFA0 00033D20  7C 08 02 A6 */	mflr r0
/* 8003DFA4 00033D24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003DFA8 00033D28  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8003DFAC 00033D2C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8003DFB0 00033D30  C1 04 00 00 */	lfs f8, 0(r4)
/* 8003DFB4 00033D34  C0 E4 00 04 */	lfs f7, 4(r4)
/* 8003DFB8 00033D38  C0 43 00 00 */	lfs f2, 0(r3)
/* 8003DFBC 00033D3C  EC C8 02 32 */	fmuls f6, f8, f8
/* 8003DFC0 00033D40  C0 63 00 04 */	lfs f3, 4(r3)
/* 8003DFC4 00033D44  EC 87 01 F2 */	fmuls f4, f7, f7
/* 8003DFC8 00033D48  C1 44 00 08 */	lfs f10, 8(r4)
/* 8003DFCC 00033D4C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8003DFD0 00033D50  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8003DFD4 00033D54  C0 A3 00 08 */	lfs f5, 8(r3)
/* 8003DFD8 00033D58  EC C6 20 2A */	fadds f6, f6, f4
/* 8003DFDC 00033D5C  ED 2A 02 B2 */	fmuls f9, f10, f10
/* 8003DFE0 00033D60  C1 62 83 EC */	lfs f11, lbl_805A170C-_SDA2_BASE_(r2)
/* 8003DFE4 00033D64  EC 01 00 2A */	fadds f0, f1, f0
/* 8003DFE8 00033D68  EC 85 01 72 */	fmuls f4, f5, f5
/* 8003DFEC 00033D6C  EC 29 30 2A */	fadds f1, f9, f6
/* 8003DFF0 00033D70  EC 04 00 2A */	fadds f0, f4, f0
/* 8003DFF4 00033D74  EC 20 00 72 */	fmuls f1, f0, f1
/* 8003DFF8 00033D78  FC 0B 08 00 */	fcmpu cr0, f11, f1
/* 8003DFFC 00033D7C  40 82 00 08 */	bne lbl_8003E004
/* 8003E000 00033D80  48 00 00 40 */	b lbl_8003E040
lbl_8003E004:
/* 8003E004 00033D84  EC 03 01 F2 */	fmuls f0, f3, f7
/* 8003E008 00033D88  EC 42 02 32 */	fmuls f2, f2, f8
/* 8003E00C 00033D8C  EC 65 02 B2 */	fmuls f3, f5, f10
/* 8003E010 00033D90  EC 02 00 2A */	fadds f0, f2, f0
/* 8003E014 00033D94  EF E3 00 2A */	fadds f31, f3, f0
/* 8003E018 00033D98  4B FF FB 41 */	bl rsqrtf
/* 8003E01C 00033D9C  EC 7F 00 72 */	fmuls f3, f31, f1
/* 8003E020 00033DA0  C0 22 84 00 */	lfs f1, lbl_805A1720-_SDA2_BASE_(r2)
/* 8003E024 00033DA4  C0 42 83 F0 */	lfs f2, lbl_805A1710-_SDA2_BASE_(r2)
/* 8003E028 00033DA8  EC 03 08 28 */	fsubs f0, f3, f1
/* 8003E02C 00033DAC  FC 20 08 EE */	fsel f1, f0, f3, f1
/* 8003E030 00033DB0  EC 01 10 28 */	fsubs f0, f1, f2
/* 8003E034 00033DB4  FC 20 08 AE */	fsel f1, f0, f2, f1
/* 8003E038 00033DB8  48 3C 2A F9 */	bl acos
/* 8003E03C 00033DBC  FD 60 08 18 */	frsp f11, f1
lbl_8003E040:
/* 8003E040 00033DC0  FC 20 58 90 */	fmr f1, f11
/* 8003E044 00033DC4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8003E048 00033DC8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8003E04C 00033DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003E050 00033DD0  7C 08 03 A6 */	mtlr r0
/* 8003E054 00033DD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8003E058 00033DD8  4E 80 00 20 */	blr 

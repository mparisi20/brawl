.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global grCollCollection$7__ct
grCollCollection$7__ct:
/* 80116E94 0010CC14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80116E98 0010CC18  7C 08 02 A6 */	mflr r0
/* 80116E9C 0010CC1C  38 C0 00 00 */	li r6, 0
/* 80116EA0 0010CC20  38 A0 00 07 */	li r5, 7
/* 80116EA4 0010CC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80116EA8 0010CC28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80116EAC 0010CC2C  54 9F 20 36 */	slwi r31, r4, 4
/* 80116EB0 0010CC30  93 C1 00 08 */	stw r30, 8(r1)
/* 80116EB4 0010CC34  7C 7E 1B 78 */	mr r30, r3
/* 80116EB8 0010CC38  88 03 00 13 */	lbz r0, 0x13(r3)
/* 80116EBC 0010CC3C  B0 83 00 18 */	sth r4, 0x18(r3)
/* 80116EC0 0010CC40  7F E4 FB 78 */	mr r4, r31
/* 80116EC4 0010CC44  60 00 00 80 */	ori r0, r0, 0x80
/* 80116EC8 0010CC48  B0 C3 00 10 */	sth r6, 0x10(r3)
/* 80116ECC 0010CC4C  98 A3 00 12 */	stb r5, 0x12(r3)
/* 80116ED0 0010CC50  98 03 00 13 */	stb r0, 0x13(r3)
/* 80116ED4 0010CC54  B0 C3 00 1A */	sth r6, 0x1a(r3)
/* 80116ED8 0010CC58  38 60 00 0C */	li r3, 0xc
/* 80116EDC 0010CC5C  4B F0 DB 09 */	bl alloc__13gfHeapManagerFUlUl
/* 80116EE0 0010CC60  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80116EE4 0010CC64  7F E5 FB 78 */	mr r5, r31
/* 80116EE8 0010CC68  38 80 00 00 */	li r4, 0
/* 80116EEC 0010CC6C  4B F0 F5 89 */	bl gfMemFill
/* 80116EF0 0010CC70  7F C3 F3 78 */	mr r3, r30
/* 80116EF4 0010CC74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80116EF8 0010CC78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80116EFC 0010CC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80116F00 0010CC80  7C 08 03 A6 */	mtlr r0
/* 80116F04 0010CC84  38 21 00 10 */	addi r1, r1, 0x10
/* 80116F08 0010CC88  4E 80 00 20 */	blr 

.global grCollCollection$7__dt
grCollCollection$7__dt:
/* 80116F0C 0010CC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80116F10 0010CC90  7C 08 02 A6 */	mflr r0
/* 80116F14 0010CC94  2C 03 00 00 */	cmpwi r3, 0
/* 80116F18 0010CC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80116F1C 0010CC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80116F20 0010CCA0  7C 9F 23 78 */	mr r31, r4
/* 80116F24 0010CCA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80116F28 0010CCA8  7C 7E 1B 78 */	mr r30, r3
/* 80116F2C 0010CCAC  41 82 00 2C */	beq lbl_80116F58
/* 80116F30 0010CCB0  34 03 00 18 */	addic. r0, r3, 0x18
/* 80116F34 0010CCB4  41 82 00 14 */	beq lbl_80116F48
/* 80116F38 0010CCB8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80116F3C 0010CCBC  2C 03 00 00 */	cmpwi r3, 0
/* 80116F40 0010CCC0  41 82 00 08 */	beq lbl_80116F48
/* 80116F44 0010CCC4  4B F0 DB 09 */	bl free__13gfHeapManagerFPv
lbl_80116F48:
/* 80116F48 0010CCC8  2C 1F 00 00 */	cmpwi r31, 0
/* 80116F4C 0010CCCC  40 81 00 0C */	ble lbl_80116F58
/* 80116F50 0010CCD0  7F C3 F3 78 */	mr r3, r30
/* 80116F54 0010CCD4  4B EF 59 75 */	bl __dl__FPv
lbl_80116F58:
/* 80116F58 0010CCD8  7F C3 F3 78 */	mr r3, r30
/* 80116F5C 0010CCDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80116F60 0010CCE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80116F64 0010CCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80116F68 0010CCE8  7C 08 03 A6 */	mtlr r0
/* 80116F6C 0010CCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80116F70 0010CCF0  4E 80 00 20 */	blr 

.global grCollCollection$7reset
grCollCollection$7reset:
/* 80116F74 0010CCF4  88 03 00 13 */	lbz r0, 0x13(r3)
/* 80116F78 0010CCF8  38 A0 00 00 */	li r5, 0
/* 80116F7C 0010CCFC  38 80 00 07 */	li r4, 7
/* 80116F80 0010CD00  B0 A3 00 10 */	sth r5, 0x10(r3)
/* 80116F84 0010CD04  60 00 00 80 */	ori r0, r0, 0x80
/* 80116F88 0010CD08  98 83 00 12 */	stb r4, 0x12(r3)
/* 80116F8C 0010CD0C  98 03 00 13 */	stb r0, 0x13(r3)
/* 80116F90 0010CD10  B0 A3 00 1A */	sth r5, 0x1a(r3)
/* 80116F94 0010CD14  4E 80 00 20 */	blr 

.global grCollCollection$7addSegment
grCollCollection$7addSegment:
/* 80116F98 0010CD18  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80116F9C 0010CD1C  7C 08 02 A6 */	mflr r0
/* 80116FA0 0010CD20  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80116FA4 0010CD24  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80116FA8 0010CD28  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 80116FAC 0010CD2C  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80116FB0 0010CD30  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 80116FB4 0010CD34  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80116FB8 0010CD38  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 80116FBC 0010CD3C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80116FC0 0010CD40  48 2D A3 41 */	bl _savegpr_19
/* 80116FC4 0010CD44  88 03 00 12 */	lbz r0, 0x12(r3)
/* 80116FC8 0010CD48  7C 75 1B 78 */	mr r21, r3
/* 80116FCC 0010CD4C  A3 64 00 06 */	lhz r27, 6(r4)
/* 80116FD0 0010CD50  7C 96 23 78 */	mr r22, r4
/* 80116FD4 0010CD54  C3 C2 96 2C */	lfs f30, lbl_805A294C-_SDA2_BASE_(r2)
/* 80116FD8 0010CD58  54 1A 24 36 */	rlwinm r26, r0, 4, 0x10, 0x1b
/* 80116FDC 0010CD5C  C3 E2 96 30 */	lfs f31, lbl_805A2950-_SDA2_BASE_(r2)
/* 80116FE0 0010CD60  3B C1 00 38 */	addi r30, r1, 0x38
/* 80116FE4 0010CD64  3B 20 00 00 */	li r25, 0
/* 80116FE8 0010CD68  3B A0 00 00 */	li r29, 0
/* 80116FEC 0010CD6C  3A 80 00 00 */	li r20, 0
/* 80116FF0 0010CD70  48 00 02 54 */	b lbl_80117244
lbl_80116FF4:
/* 80116FF4 0010CD74  7E C3 B3 78 */	mr r3, r22
/* 80116FF8 0010CD78  7F 24 CB 78 */	mr r4, r25
/* 80116FFC 0010CD7C  4B FF A9 5D */	bl grCollision$7getJoint
/* 80117000 0010CD80  88 83 00 54 */	lbz r4, 0x54(r3)
/* 80117004 0010CD84  7C 7F 1B 78 */	mr r31, r3
/* 80117008 0010CD88  54 80 D7 FF */	rlwinm. r0, r4, 0x1a, 0x1f, 0x1f
/* 8011700C 0010CD8C  41 82 02 30 */	beq lbl_8011723C
/* 80117010 0010CD90  54 80 E7 FF */	rlwinm. r0, r4, 0x1c, 0x1f, 0x1f
/* 80117014 0010CD94  41 82 02 28 */	beq lbl_8011723C
/* 80117018 0010CD98  A3 03 00 00 */	lhz r24, 0(r3)
/* 8011701C 0010CD9C  7E A4 AB 78 */	mr r4, r21
/* 80117020 0010CDA0  A2 E3 00 02 */	lhz r23, 2(r3)
/* 80117024 0010CDA4  38 63 00 10 */	addi r3, r3, 0x10
/* 80117028 0010CDA8  4B F2 AD 3D */	bl clAABBox2D$7checkIntersect_864
/* 8011702C 0010CDAC  2C 03 00 00 */	cmpwi r3, 0
/* 80117030 0010CDB0  41 82 02 0C */	beq lbl_8011723C
/* 80117034 0010CDB4  7F 98 BA 14 */	add r28, r24, r23
/* 80117038 0010CDB8  48 00 01 FC */	b lbl_80117234
lbl_8011703C:
/* 8011703C 0010CDBC  7E C3 B3 78 */	mr r3, r22
/* 80117040 0010CDC0  7F 04 C3 78 */	mr r4, r24
/* 80117044 0010CDC4  4B FF AB 1D */	bl grCollision$7getLine_3566
/* 80117048 0010CDC8  A0 83 00 10 */	lhz r4, 0x10(r3)
/* 8011704C 0010CDCC  7C 77 1B 78 */	mr r23, r3
/* 80117050 0010CDD0  A0 15 00 10 */	lhz r0, 0x10(r21)
/* 80117054 0010CDD4  7C 80 00 39 */	and. r0, r4, r0
/* 80117058 0010CDD8  40 82 01 D8 */	bne lbl_80117230
/* 8011705C 0010CDDC  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 80117060 0010CDE0  7C 00 D0 39 */	and. r0, r0, r26
/* 80117064 0010CDE4  41 82 01 CC */	beq lbl_80117230
/* 80117068 0010CDE8  7E C3 B3 78 */	mr r3, r22
/* 8011706C 0010CDEC  7E E6 BB 78 */	mr r6, r23
/* 80117070 0010CDF0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80117074 0010CDF4  38 A1 00 48 */	addi r5, r1, 0x48
/* 80117078 0010CDF8  7F A7 C3 78 */	or r7, r29, r24
/* 8011707C 0010CDFC  4B FF AA 19 */	bl grCollision$7getSegmentTrace_3563
/* 80117080 0010CE00  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 80117084 0010CE04  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80117088 0010CE08  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8011708C 0010CE0C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80117090 0010CE10  EC 43 10 28 */	fsubs f2, f3, f2
/* 80117094 0010CE14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80117098 0010CE18  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8011709C 0010CE1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801170A0 0010CE20  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801170A4 0010CE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801170A8 0010CE28  90 61 00 08 */	stw r3, 8(r1)
/* 801170AC 0010CE2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801170B0 0010CE30  C0 21 00 08 */	lfs f1, 8(r1)
/* 801170B4 0010CE34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801170B8 0010CE38  EC 21 00 72 */	fmuls f1, f1, f1
/* 801170BC 0010CE3C  EC 00 00 32 */	fmuls f0, f0, f0
/* 801170C0 0010CE40  EF A1 00 2A */	fadds f29, f1, f0
/* 801170C4 0010CE44  FC 00 EA 10 */	fabs f0, f29
/* 801170C8 0010CE48  FC 00 00 18 */	frsp f0, f0
/* 801170CC 0010CE4C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 801170D0 0010CE50  4C 40 13 82 */	cror 2, 0, 2
/* 801170D4 0010CE54  40 82 00 0C */	bne lbl_801170E0
/* 801170D8 0010CE58  C0 02 96 28 */	lfs f0, lbl_805A2948-_SDA2_BASE_(r2)
/* 801170DC 0010CE5C  48 00 00 10 */	b lbl_801170EC
lbl_801170E0:
/* 801170E0 0010CE60  FC 20 E8 90 */	fmr f1, f29
/* 801170E4 0010CE64  4B F2 6A 75 */	bl rsqrtf
/* 801170E8 0010CE68  EC 1D 00 72 */	fmuls f0, f29, f1
lbl_801170EC:
/* 801170EC 0010CE6C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801170F0 0010CE70  41 80 01 40 */	blt lbl_80117230
/* 801170F4 0010CE74  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801170F8 0010CE78  38 60 00 01 */	li r3, 1
/* 801170FC 0010CE7C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80117100 0010CE80  38 00 00 00 */	li r0, 0
/* 80117104 0010CE84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80117108 0010CE88  40 82 00 38 */	bne lbl_80117140
/* 8011710C 0010CE8C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80117110 0010CE90  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80117114 0010CE94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80117118 0010CE98  40 82 00 28 */	bne lbl_80117140
/* 8011711C 0010CE9C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80117120 0010CEA0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80117124 0010CEA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80117128 0010CEA8  40 82 00 18 */	bne lbl_80117140
/* 8011712C 0010CEAC  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80117130 0010CEB0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80117134 0010CEB4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80117138 0010CEB8  40 82 00 08 */	bne lbl_80117140
/* 8011713C 0010CEBC  38 00 00 01 */	li r0, 1
lbl_80117140:
/* 80117140 0010CEC0  2C 00 00 00 */	cmpwi r0, 0
/* 80117144 0010CEC4  41 82 00 08 */	beq lbl_8011714C
/* 80117148 0010CEC8  38 60 00 00 */	li r3, 0
lbl_8011714C:
/* 8011714C 0010CECC  2C 03 00 00 */	cmpwi r3, 0
/* 80117150 0010CED0  3A 60 00 00 */	li r19, 0
/* 80117154 0010CED4  40 82 00 18 */	bne lbl_8011716C
/* 80117158 0010CED8  7E A3 AB 78 */	mr r3, r21
/* 8011715C 0010CEDC  38 81 00 5C */	addi r4, r1, 0x5c
/* 80117160 0010CEE0  4B F2 A8 19 */	bl clAABBox2D$7checkIntersect
/* 80117164 0010CEE4  7C 73 1B 78 */	mr r19, r3
/* 80117168 0010CEE8  48 00 00 6C */	b lbl_801171D4
lbl_8011716C:
/* 8011716C 0010CEEC  E0 61 00 5C */	psq_l f3, 92(r1), 0, qr0
/* 80117170 0010CEF0  7E A3 AB 78 */	mr r3, r21
/* 80117174 0010CEF4  E0 41 00 64 */	psq_l f2, 100(r1), 0, qr0
/* 80117178 0010CEF8  7F C4 F3 78 */	mr r4, r30
/* 8011717C 0010CEFC  E0 C1 00 48 */	psq_l f6, 72(r1), 0, qr0
/* 80117180 0010CF00  E0 A1 00 50 */	psq_l f5, 80(r1), 0, qr0
/* 80117184 0010CF04  10 03 10 28 */	ps_sub f0, f3, f2
/* 80117188 0010CF08  10 86 28 28 */	ps_sub f4, f6, f5
/* 8011718C 0010CF0C  10 20 18 AE */	ps_sel f1, f0, f2, f3
/* 80117190 0010CF10  10 00 10 EE */	ps_sel f0, f0, f3, f2
/* 80117194 0010CF14  10 64 31 6E */	ps_sel f3, f4, f5, f6
/* 80117198 0010CF18  10 44 29 AE */	ps_sel f2, f4, f6, f5
/* 8011719C 0010CF1C  F0 3E 00 00 */	psq_st f1, 0(r30), 0, qr0
/* 801171A0 0010CF20  10 81 18 28 */	ps_sub f4, f1, f3
/* 801171A4 0010CF24  F0 1E 00 08 */	psq_st f0, 8(r30), 0, qr0
/* 801171A8 0010CF28  10 A0 10 28 */	ps_sub f5, f0, f2
/* 801171AC 0010CF2C  F0 61 00 28 */	psq_st f3, 40(r1), 0, qr0
/* 801171B0 0010CF30  10 24 08 EE */	ps_sel f1, f4, f3, f1
/* 801171B4 0010CF34  10 05 10 2E */	ps_sel f0, f5, f0, f2
/* 801171B8 0010CF38  F0 41 00 30 */	psq_st f2, 48(r1), 0, qr0
/* 801171BC 0010CF3C  F0 3E 00 00 */	psq_st f1, 0(r30), 0, qr0
/* 801171C0 0010CF40  F0 01 00 40 */	psq_st f0, 64(r1), 0, qr0
/* 801171C4 0010CF44  4B F2 AB A1 */	bl clAABBox2D$7checkIntersect_864
/* 801171C8 0010CF48  2C 03 00 00 */	cmpwi r3, 0
/* 801171CC 0010CF4C  41 82 00 08 */	beq lbl_801171D4
/* 801171D0 0010CF50  3A 60 00 01 */	li r19, 1
lbl_801171D4:
/* 801171D4 0010CF54  2C 13 00 00 */	cmpwi r19, 0
/* 801171D8 0010CF58  41 82 00 58 */	beq lbl_80117230
/* 801171DC 0010CF5C  88 81 00 25 */	lbz r4, 0x25(r1)
/* 801171E0 0010CF60  A0 B5 00 1A */	lhz r5, 0x1a(r21)
/* 801171E4 0010CF64  A0 15 00 18 */	lhz r0, 0x18(r21)
/* 801171E8 0010CF68  54 84 06 6E */	rlwinm r4, r4, 0, 0x19, 0x17
/* 801171EC 0010CF6C  92 E1 00 18 */	stw r23, 0x18(r1)
/* 801171F0 0010CF70  7C 05 00 40 */	cmplw r5, r0
/* 801171F4 0010CF74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801171F8 0010CF78  92 C1 00 20 */	stw r22, 0x20(r1)
/* 801171FC 0010CF7C  9A 81 00 24 */	stb r20, 0x24(r1)
/* 80117200 0010CF80  98 81 00 25 */	stb r4, 0x25(r1)
/* 80117204 0010CF84  40 80 00 2C */	bge lbl_80117230
/* 80117208 0010CF88  80 75 00 1C */	lwz r3, 0x1c(r21)
/* 8011720C 0010CF8C  54 A0 23 36 */	rlwinm r0, r5, 4, 0xc, 0x1b
/* 80117210 0010CF90  7E E3 01 6E */	stwux r23, r3, r0
/* 80117214 0010CF94  93 E3 00 04 */	stw r31, 4(r3)
/* 80117218 0010CF98  92 C3 00 08 */	stw r22, 8(r3)
/* 8011721C 0010CF9C  9A 83 00 0C */	stb r20, 0xc(r3)
/* 80117220 0010CFA0  98 83 00 0D */	stb r4, 0xd(r3)
/* 80117224 0010CFA4  A0 75 00 1A */	lhz r3, 0x1a(r21)
/* 80117228 0010CFA8  38 03 00 01 */	addi r0, r3, 1
/* 8011722C 0010CFAC  B0 15 00 1A */	sth r0, 0x1a(r21)
lbl_80117230:
/* 80117230 0010CFB0  3B 18 00 01 */	addi r24, r24, 1
lbl_80117234:
/* 80117234 0010CFB4  7C 18 E0 40 */	cmplw r24, r28
/* 80117238 0010CFB8  41 80 FE 04 */	blt lbl_8011703C
lbl_8011723C:
/* 8011723C 0010CFBC  3F BD 00 01 */	addis r29, r29, 1
/* 80117240 0010CFC0  3B 39 00 01 */	addi r25, r25, 1
lbl_80117244:
/* 80117244 0010CFC4  7C 19 D8 40 */	cmplw r25, r27
/* 80117248 0010CFC8  41 80 FD AC */	blt lbl_80116FF4
/* 8011724C 0010CFCC  A0 75 00 1A */	lhz r3, 0x1a(r21)
/* 80117250 0010CFD0  7C 03 00 D0 */	neg r0, r3
/* 80117254 0010CFD4  7C 00 1B 78 */	or r0, r0, r3
/* 80117258 0010CFD8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8011725C 0010CFDC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80117260 0010CFE0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80117264 0010CFE4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 80117268 0010CFE8  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8011726C 0010CFEC  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 80117270 0010CFF0  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80117274 0010CFF4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80117278 0010CFF8  48 2D A0 D5 */	bl _restgpr_19
/* 8011727C 0010CFFC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80117280 0010D000  7C 08 03 A6 */	mtlr r0
/* 80117284 0010D004  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80117288 0010D008  4E 80 00 20 */	blr 

.global grCollCollection$7collect
grCollCollection$7collect:
/* 8011728C 0010D00C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80117290 0010D010  7C 08 02 A6 */	mflr r0
/* 80117294 0010D014  2C 05 00 00 */	cmpwi r5, 0
/* 80117298 0010D018  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011729C 0010D01C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801172A0 0010D020  7C 7F 1B 78 */	mr r31, r3
/* 801172A4 0010D024  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801172A8 0010D028  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801172AC 0010D02C  B0 83 00 10 */	sth r4, 0x10(r3)
/* 801172B0 0010D030  41 82 00 24 */	beq lbl_801172D4
/* 801172B4 0010D034  88 85 00 2C */	lbz r4, 0x2c(r5)
/* 801172B8 0010D038  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 801172BC 0010D03C  41 82 00 D8 */	beq lbl_80117394
/* 801172C0 0010D040  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 801172C4 0010D044  41 82 00 D0 */	beq lbl_80117394
/* 801172C8 0010D048  7C A4 2B 78 */	mr r4, r5
/* 801172CC 0010D04C  4B FF FC CD */	bl grCollCollection$7addSegment
/* 801172D0 0010D050  48 00 00 C4 */	b lbl_80117394
lbl_801172D4:
/* 801172D4 0010D054  88 03 00 13 */	lbz r0, 0x13(r3)
/* 801172D8 0010D058  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801172DC 0010D05C  41 82 00 5C */	beq lbl_80117338
/* 801172E0 0010D060  3C 60 80 4A */	lis r3, lbl_8049E57C@ha
/* 801172E4 0010D064  38 63 E5 7C */	addi r3, r3, lbl_8049E57C@l
/* 801172E8 0010D068  83 C3 00 04 */	lwz r30, 4(r3)
/* 801172EC 0010D06C  3B A3 00 04 */	addi r29, r3, 4
/* 801172F0 0010D070  48 00 00 3C */	b lbl_8011732C
lbl_801172F4:
/* 801172F4 0010D074  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 801172F8 0010D078  38 9E FF D0 */	addi r4, r30, -48
/* 801172FC 0010D07C  7C 04 00 40 */	cmplw r4, r0
/* 80117300 0010D080  41 82 00 28 */	beq lbl_80117328
/* 80117304 0010D084  88 64 00 2C */	lbz r3, 0x2c(r4)
/* 80117308 0010D088  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 8011730C 0010D08C  41 82 00 1C */	beq lbl_80117328
/* 80117310 0010D090  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80117314 0010D094  41 82 00 14 */	beq lbl_80117328
/* 80117318 0010D098  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8011731C 0010D09C  41 82 00 0C */	beq lbl_80117328
/* 80117320 0010D0A0  7F E3 FB 78 */	mr r3, r31
/* 80117324 0010D0A4  4B FF FC 75 */	bl grCollCollection$7addSegment
lbl_80117328:
/* 80117328 0010D0A8  83 DE 00 00 */	lwz r30, 0(r30)
lbl_8011732C:
/* 8011732C 0010D0AC  7C 1E E8 40 */	cmplw r30, r29
/* 80117330 0010D0B0  40 82 FF C4 */	bne lbl_801172F4
/* 80117334 0010D0B4  48 00 00 60 */	b lbl_80117394
lbl_80117338:
/* 80117338 0010D0B8  3C 60 80 4A */	lis r3, lbl_8049E57C@ha
/* 8011733C 0010D0BC  38 63 E5 7C */	addi r3, r3, lbl_8049E57C@l
/* 80117340 0010D0C0  83 A3 00 04 */	lwz r29, 4(r3)
/* 80117344 0010D0C4  3B C3 00 04 */	addi r30, r3, 4
/* 80117348 0010D0C8  48 00 00 44 */	b lbl_8011738C
lbl_8011734C:
/* 8011734C 0010D0CC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80117350 0010D0D0  38 9D FF D0 */	addi r4, r29, -48
/* 80117354 0010D0D4  7C 04 00 40 */	cmplw r4, r0
/* 80117358 0010D0D8  41 82 00 30 */	beq lbl_80117388
/* 8011735C 0010D0DC  88 64 00 2C */	lbz r3, 0x2c(r4)
/* 80117360 0010D0E0  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80117364 0010D0E4  41 82 00 24 */	beq lbl_80117388
/* 80117368 0010D0E8  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 8011736C 0010D0EC  40 82 00 1C */	bne lbl_80117388
/* 80117370 0010D0F0  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80117374 0010D0F4  41 82 00 14 */	beq lbl_80117388
/* 80117378 0010D0F8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8011737C 0010D0FC  41 82 00 0C */	beq lbl_80117388
/* 80117380 0010D100  7F E3 FB 78 */	mr r3, r31
/* 80117384 0010D104  4B FF FC 15 */	bl grCollCollection$7addSegment
lbl_80117388:
/* 80117388 0010D108  83 BD 00 00 */	lwz r29, 0(r29)
lbl_8011738C:
/* 8011738C 0010D10C  7C 1D F0 40 */	cmplw r29, r30
/* 80117390 0010D110  40 82 FF BC */	bne lbl_8011734C
lbl_80117394:
/* 80117394 0010D114  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 80117398 0010D118  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011739C 0010D11C  7C 03 00 D0 */	neg r0, r3
/* 801173A0 0010D120  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801173A4 0010D124  7C 00 1B 78 */	or r0, r0, r3
/* 801173A8 0010D128  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801173AC 0010D12C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801173B0 0010D130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801173B4 0010D134  7C 08 03 A6 */	mtlr r0
/* 801173B8 0010D138  38 21 00 20 */	addi r1, r1, 0x20
/* 801173BC 0010D13C  4E 80 00 20 */	blr 


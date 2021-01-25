.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global grCollisionRaycheck$7__ct
grCollisionRaycheck$7__ct:
/* 8013804C 0012DDCC  C0 02 97 60 */	lfs f0, lbl_805A2A80-_SDA2_BASE_(r2)
/* 80138050 0012DDD0  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 80138054 0012DDD4  38 C0 00 00 */	li r6, 0
/* 80138058 0012DDD8  38 A0 00 07 */	li r5, 7
/* 8013805C 0012DDDC  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 80138060 0012DDE0  B0 C3 00 10 */	sth r6, 0x10(r3)
/* 80138064 0012DDE4  98 A3 00 12 */	stb r5, 0x12(r3)
/* 80138068 0012DDE8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8013806C 0012DDEC  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80138070 0012DDF0  98 C3 00 40 */	stb r6, 0x40(r3)
/* 80138074 0012DDF4  98 C3 00 41 */	stb r6, 0x41(r3)
/* 80138078 0012DDF8  4E 80 00 20 */	blr 

.global grCollisionRaycheck$7__dt
grCollisionRaycheck$7__dt:
/* 8013807C 0012DDFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138080 0012DE00  7C 08 02 A6 */	mflr r0
/* 80138084 0012DE04  2C 03 00 00 */	cmpwi r3, 0
/* 80138088 0012DE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013808C 0012DE0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138090 0012DE10  7C 7F 1B 78 */	mr r31, r3
/* 80138094 0012DE14  41 82 00 10 */	beq lbl_801380A4
/* 80138098 0012DE18  2C 04 00 00 */	cmpwi r4, 0
/* 8013809C 0012DE1C  40 81 00 08 */	ble lbl_801380A4
/* 801380A0 0012DE20  4B ED 48 29 */	bl __dl
lbl_801380A4:
/* 801380A4 0012DE24  7F E3 FB 78 */	mr r3, r31
/* 801380A8 0012DE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801380AC 0012DE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801380B0 0012DE30  7C 08 03 A6 */	mtlr r0
/* 801380B4 0012DE34  38 21 00 10 */	addi r1, r1, 0x10
/* 801380B8 0012DE38  4E 80 00 20 */	blr 

.global grCollisionRaycheck$7raycheckSub
grCollisionRaycheck$7raycheckSub:
/* 801380BC 0012DE3C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801380C0 0012DE40  7C 08 02 A6 */	mflr r0
/* 801380C4 0012DE44  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801380C8 0012DE48  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801380CC 0012DE4C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 801380D0 0012DE50  39 61 00 A0 */	addi r11, r1, 0xa0
/* 801380D4 0012DE54  48 2B 92 3D */	bl _savegpr_23
/* 801380D8 0012DE58  7C 78 1B 78 */	mr r24, r3
/* 801380DC 0012DE5C  7C 99 23 78 */	mr r25, r4
/* 801380E0 0012DE60  38 63 00 2C */	addi r3, r3, 0x2c
/* 801380E4 0012DE64  38 81 00 60 */	addi r4, r1, 0x60
/* 801380E8 0012DE68  4B F0 84 A5 */	bl clRay2D$7getSegment
/* 801380EC 0012DE6C  88 18 00 12 */	lbz r0, 0x12(r24)
/* 801380F0 0012DE70  3B A0 00 00 */	li r29, 0
/* 801380F4 0012DE74  A3 F9 00 06 */	lhz r31, 6(r25)
/* 801380F8 0012DE78  3A E0 00 01 */	li r23, 1
/* 801380FC 0012DE7C  C3 E2 97 64 */	lfs f31, lbl_805A2A84-_SDA2_BASE_(r2)
/* 80138100 0012DE80  54 1E 24 36 */	rlwinm r30, r0, 4, 0x10, 0x1b
/* 80138104 0012DE84  48 00 02 1C */	b lbl_80138320
lbl_80138108:
/* 80138108 0012DE88  7F 23 CB 78 */	mr r3, r25
/* 8013810C 0012DE8C  7F A4 EB 78 */	mr r4, r29
/* 80138110 0012DE90  4B FD 98 49 */	bl grCollision$7getJoint
/* 80138114 0012DE94  88 03 00 54 */	lbz r0, 0x54(r3)
/* 80138118 0012DE98  7C 7A 1B 78 */	mr r26, r3
/* 8013811C 0012DE9C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80138120 0012DEA0  41 82 01 FC */	beq lbl_8013831C
/* 80138124 0012DEA4  38 63 00 10 */	addi r3, r3, 0x10
/* 80138128 0012DEA8  38 81 00 60 */	addi r4, r1, 0x60
/* 8013812C 0012DEAC  4B F0 98 4D */	bl clAABBox2D$7checkIntersect
/* 80138130 0012DEB0  2C 03 00 00 */	cmpwi r3, 0
/* 80138134 0012DEB4  41 82 01 E8 */	beq lbl_8013831C
/* 80138138 0012DEB8  A3 7A 00 00 */	lhz r27, 0(r26)
/* 8013813C 0012DEBC  A0 1A 00 02 */	lhz r0, 2(r26)
/* 80138140 0012DEC0  7F 9B 02 14 */	add r28, r27, r0
/* 80138144 0012DEC4  48 00 01 D0 */	b lbl_80138314
lbl_80138148:
/* 80138148 0012DEC8  7F 23 CB 78 */	mr r3, r25
/* 8013814C 0012DECC  7F 64 DB 78 */	mr r4, r27
/* 80138150 0012DED0  4B FD 9A 01 */	bl grCollision$7getLine
/* 80138154 0012DED4  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80138158 0012DED8  7C 7A 1B 78 */	mr r26, r3
/* 8013815C 0012DEDC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80138160 0012DEE0  41 82 00 10 */	beq lbl_80138170
/* 80138164 0012DEE4  88 18 00 41 */	lbz r0, 0x41(r24)
/* 80138168 0012DEE8  2C 00 00 00 */	cmpwi r0, 0
/* 8013816C 0012DEEC  41 82 01 A4 */	beq lbl_80138310
lbl_80138170:
/* 80138170 0012DEF0  A0 83 00 10 */	lhz r4, 0x10(r3)
/* 80138174 0012DEF4  A0 18 00 10 */	lhz r0, 0x10(r24)
/* 80138178 0012DEF8  7C 80 00 39 */	and. r0, r4, r0
/* 8013817C 0012DEFC  40 82 01 94 */	bne lbl_80138310
/* 80138180 0012DF00  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 80138184 0012DF04  7C 00 F0 39 */	and. r0, r0, r30
/* 80138188 0012DF08  41 82 01 88 */	beq lbl_80138310
/* 8013818C 0012DF0C  7F 23 CB 78 */	mr r3, r25
/* 80138190 0012DF10  7F 45 D3 78 */	mr r5, r26
/* 80138194 0012DF14  38 81 00 50 */	addi r4, r1, 0x50
/* 80138198 0012DF18  4B FD 98 25 */	bl grCollision$7getSegment_3560
/* 8013819C 0012DF1C  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 801381A0 0012DF20  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 801381A4 0012DF24  C0 C1 00 58 */	lfs f6, 0x58(r1)
/* 801381A8 0012DF28  C0 A1 00 50 */	lfs f5, 0x50(r1)
/* 801381AC 0012DF2C  10 81 10 28 */	ps_sub f4, f1, f2
/* 801381B0 0012DF30  10 61 10 28 */	ps_sub f3, f1, f2
/* 801381B4 0012DF34  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 801381B8 0012DF38  10 E5 30 28 */	ps_sub f7, f5, f6
/* 801381BC 0012DF3C  10 84 08 AE */	ps_sel f4, f4, f2, f1
/* 801381C0 0012DF40  11 05 30 28 */	ps_sub f8, f5, f6
/* 801381C4 0012DF44  10 63 10 6E */	ps_sel f3, f3, f1, f2
/* 801381C8 0012DF48  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 801381CC 0012DF4C  10 E7 31 6E */	ps_sel f7, f7, f5, f6
/* 801381D0 0012DF50  11 08 29 AE */	ps_sel f8, f8, f6, f5
/* 801381D4 0012DF54  41 80 01 3C */	blt lbl_80138310
/* 801381D8 0012DF58  C0 18 00 04 */	lfs f0, 4(r24)
/* 801381DC 0012DF5C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801381E0 0012DF60  41 81 01 30 */	bgt lbl_80138310
/* 801381E4 0012DF64  C0 18 00 08 */	lfs f0, 8(r24)
/* 801381E8 0012DF68  FC 00 40 40 */	fcmpo cr0, f0, f8
/* 801381EC 0012DF6C  41 80 01 24 */	blt lbl_80138310
/* 801381F0 0012DF70  C0 18 00 00 */	lfs f0, 0(r24)
/* 801381F4 0012DF74  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 801381F8 0012DF78  41 81 01 18 */	bgt lbl_80138310
/* 801381FC 0012DF7C  38 78 00 2C */	addi r3, r24, 0x2c
/* 80138200 0012DF80  38 81 00 50 */	addi r4, r1, 0x50
/* 80138204 0012DF84  38 A1 00 08 */	addi r5, r1, 8
/* 80138208 0012DF88  38 C1 00 48 */	addi r6, r1, 0x48
/* 8013820C 0012DF8C  4B F0 81 DD */	bl clRay2D$7checkIntersect_841
/* 80138210 0012DF90  2C 03 00 00 */	cmpwi r3, 0
/* 80138214 0012DF94  41 82 00 FC */	beq lbl_80138310
/* 80138218 0012DF98  C0 21 00 08 */	lfs f1, 8(r1)
/* 8013821C 0012DF9C  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 80138220 0012DFA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80138224 0012DFA4  40 80 00 EC */	bge lbl_80138310
/* 80138228 0012DFA8  88 18 00 40 */	lbz r0, 0x40(r24)
/* 8013822C 0012DFAC  38 C0 00 00 */	li r6, 0
/* 80138230 0012DFB0  2C 00 00 00 */	cmpwi r0, 0
/* 80138234 0012DFB4  41 82 00 0C */	beq lbl_80138240
/* 80138238 0012DFB8  38 C0 00 01 */	li r6, 1
/* 8013823C 0012DFBC  48 00 00 A0 */	b lbl_801382DC
lbl_80138240:
/* 80138240 0012DFC0  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80138244 0012DFC4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80138248 0012DFC8  C0 81 00 58 */	lfs f4, 0x58(r1)
/* 8013824C 0012DFCC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80138250 0012DFD0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80138254 0012DFD4  C0 78 00 34 */	lfs f3, 0x34(r24)
/* 80138258 0012DFD8  EC 84 00 28 */	fsubs f4, f4, f0
/* 8013825C 0012DFDC  C0 38 00 38 */	lfs f1, 0x38(r24)
/* 80138260 0012DFE0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80138264 0012DFE4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80138268 0012DFE8  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8013826C 0012DFEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80138270 0012DFF0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80138274 0012DFF4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80138278 0012DFF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8013827C 0012DFFC  FC A0 00 50 */	fneg f5, f0
/* 80138280 0012E000  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80138284 0012E004  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80138288 0012E008  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8013828C 0012E00C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80138290 0012E010  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80138294 0012E014  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80138298 0012E018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013829C 0012E01C  90 61 00 40 */	stw r3, 0x40(r1)
/* 801382A0 0012E020  90 01 00 44 */	stw r0, 0x44(r1)
/* 801382A4 0012E024  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 801382A8 0012E028  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801382AC 0012E02C  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801382B0 0012E030  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801382B4 0012E034  EC 01 00 32 */	fmuls f0, f1, f0
/* 801382B8 0012E038  80 81 00 28 */	lwz r4, 0x28(r1)
/* 801382BC 0012E03C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801382C0 0012E040  EC 02 00 2A */	fadds f0, f2, f0
/* 801382C4 0012E044  90 81 00 18 */	stw r4, 0x18(r1)
/* 801382C8 0012E048  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801382CC 0012E04C  90 61 00 38 */	stw r3, 0x38(r1)
/* 801382D0 0012E050  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801382D4 0012E054  40 80 00 08 */	bge lbl_801382DC
/* 801382D8 0012E058  38 C0 00 01 */	li r6, 1
lbl_801382DC:
/* 801382DC 0012E05C  2C 06 00 00 */	cmpwi r6, 0
/* 801382E0 0012E060  41 82 00 30 */	beq lbl_80138310
/* 801382E4 0012E064  C0 01 00 08 */	lfs f0, 8(r1)
/* 801382E8 0012E068  7F 23 CB 78 */	mr r3, r25
/* 801382EC 0012E06C  7F 44 D3 78 */	mr r4, r26
/* 801382F0 0012E070  D0 18 00 14 */	stfs f0, 0x14(r24)
/* 801382F4 0012E074  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801382F8 0012E078  D0 18 00 18 */	stfs f0, 0x18(r24)
/* 801382FC 0012E07C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80138300 0012E080  D0 18 00 1C */	stfs f0, 0x1c(r24)
/* 80138304 0012E084  4B FD 99 6D */	bl grCollision$7getLineId
/* 80138308 0012E088  90 78 00 3C */	stw r3, 0x3c(r24)
/* 8013830C 0012E08C  9A F8 00 28 */	stb r23, 0x28(r24)
lbl_80138310:
/* 80138310 0012E090  3B 7B 00 01 */	addi r27, r27, 1
lbl_80138314:
/* 80138314 0012E094  7C 1B E0 40 */	cmplw r27, r28
/* 80138318 0012E098  41 80 FE 30 */	blt lbl_80138148
lbl_8013831C:
/* 8013831C 0012E09C  3B BD 00 01 */	addi r29, r29, 1
lbl_80138320:
/* 80138320 0012E0A0  7C 1D F8 40 */	cmplw r29, r31
/* 80138324 0012E0A4  41 80 FD E4 */	blt lbl_80138108
/* 80138328 0012E0A8  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8013832C 0012E0AC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80138330 0012E0B0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80138334 0012E0B4  48 2B 90 29 */	bl _restgpr_23
/* 80138338 0012E0B8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8013833C 0012E0BC  7C 08 03 A6 */	mtlr r0
/* 80138340 0012E0C0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80138344 0012E0C4  4E 80 00 20 */	blr 

.global grCollisionRaycheck$7raycheck
grCollisionRaycheck$7raycheck:
/* 80138348 0012E0C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013834C 0012E0CC  7C 08 02 A6 */	mflr r0
/* 80138350 0012E0D0  80 E4 00 00 */	lwz r7, 0(r4)
/* 80138354 0012E0D4  39 00 00 00 */	li r8, 0
/* 80138358 0012E0D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013835C 0012E0DC  80 C4 00 04 */	lwz r6, 4(r4)
/* 80138360 0012E0E0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80138364 0012E0E4  7C 7F 1B 78 */	mr r31, r3
/* 80138368 0012E0E8  80 A4 00 08 */	lwz r5, 8(r4)
/* 8013836C 0012E0EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80138370 0012E0F0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80138374 0012E0F4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80138378 0012E0F8  C0 02 97 60 */	lfs f0, lbl_805A2A80-_SDA2_BASE_(r2)
/* 8013837C 0012E0FC  93 81 00 30 */	stw r28, 0x30(r1)
/* 80138380 0012E100  7C 9C 23 78 */	mr r28, r4
/* 80138384 0012E104  7F E4 FB 78 */	mr r4, r31
/* 80138388 0012E108  99 03 00 28 */	stb r8, 0x28(r3)
/* 8013838C 0012E10C  90 E3 00 2C */	stw r7, 0x2c(r3)
/* 80138390 0012E110  90 C3 00 30 */	stw r6, 0x30(r3)
/* 80138394 0012E114  90 A3 00 34 */	stw r5, 0x34(r3)
/* 80138398 0012E118  90 03 00 38 */	stw r0, 0x38(r3)
/* 8013839C 0012E11C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801383A0 0012E120  7F 83 E3 78 */	mr r3, r28
/* 801383A4 0012E124  4B F0 81 75 */	bl clRay2D$7getAABBox
/* 801383A8 0012E128  3C 60 80 4A */	lis r3, lbl_8049E57C@ha
/* 801383AC 0012E12C  38 63 E5 7C */	addi r3, r3, lbl_8049E57C@l
/* 801383B0 0012E130  83 C3 00 04 */	lwz r30, 4(r3)
/* 801383B4 0012E134  3B A3 00 04 */	addi r29, r3, 4
/* 801383B8 0012E138  48 00 00 30 */	b lbl_801383E8
lbl_801383BC:
/* 801383BC 0012E13C  88 7E FF FC */	lbz r3, -4(r30)
/* 801383C0 0012E140  38 9E FF D0 */	addi r4, r30, -48
/* 801383C4 0012E144  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801383C8 0012E148  41 82 00 1C */	beq lbl_801383E4
/* 801383CC 0012E14C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801383D0 0012E150  41 82 00 14 */	beq lbl_801383E4
/* 801383D4 0012E154  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 801383D8 0012E158  41 82 00 0C */	beq lbl_801383E4
/* 801383DC 0012E15C  7F E3 FB 78 */	mr r3, r31
/* 801383E0 0012E160  4B FF FC DD */	bl grCollisionRaycheck$7raycheckSub
lbl_801383E4:
/* 801383E4 0012E164  83 DE 00 00 */	lwz r30, 0(r30)
lbl_801383E8:
/* 801383E8 0012E168  7C 1E E8 40 */	cmplw r30, r29
/* 801383EC 0012E16C  40 82 FF D0 */	bne lbl_801383BC
/* 801383F0 0012E170  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 801383F4 0012E174  28 00 00 01 */	cmplwi r0, 1
/* 801383F8 0012E178  40 82 00 70 */	bne lbl_80138468
/* 801383FC 0012E17C  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80138400 0012E180  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80138404 0012E184  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80138408 0012E188  EC 61 01 32 */	fmuls f3, f1, f4
/* 8013840C 0012E18C  C0 5C 00 00 */	lfs f2, 0(r28)
/* 80138410 0012E190  EC 20 01 32 */	fmuls f1, f0, f4
/* 80138414 0012E194  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80138418 0012E198  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8013841C 0012E19C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80138420 0012E1A0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80138424 0012E1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138428 0012E1A8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8013842C 0012E1AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80138430 0012E1B0  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80138434 0012E1B4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80138438 0012E1B8  EC 43 10 2A */	fadds f2, f3, f2
/* 8013843C 0012E1BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80138440 0012E1C0  D0 41 00 08 */	stfs f2, 8(r1)
/* 80138444 0012E1C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80138448 0012E1C8  80 61 00 08 */	lwz r3, 8(r1)
/* 8013844C 0012E1CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80138450 0012E1D0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80138454 0012E1D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138458 0012E1D8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8013845C 0012E1DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80138460 0012E1E0  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80138464 0012E1E4  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_80138468:
/* 80138468 0012E1E8  88 7F 00 28 */	lbz r3, 0x28(r31)
/* 8013846C 0012E1EC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80138470 0012E1F0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80138474 0012E1F4  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80138478 0012E1F8  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8013847C 0012E1FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80138480 0012E200  7C 08 03 A6 */	mtlr r0
/* 80138484 0012E204  38 21 00 40 */	addi r1, r1, 0x40
/* 80138488 0012E208  4E 80 00 20 */	blr 

.global grCollisionRaycheck$7raycheck_3863
grCollisionRaycheck$7raycheck_3863:
/* 8013848C 0012E20C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80138490 0012E210  7C 08 02 A6 */	mflr r0
/* 80138494 0012E214  88 C5 00 2C */	lbz r6, 0x2c(r5)
/* 80138498 0012E218  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013849C 0012E21C  38 00 00 00 */	li r0, 0
/* 801384A0 0012E220  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801384A4 0012E224  7C BF 2B 78 */	mr r31, r5
/* 801384A8 0012E228  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801384AC 0012E22C  7C 9E 23 78 */	mr r30, r4
/* 801384B0 0012E230  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801384B4 0012E234  7C 7D 1B 78 */	mr r29, r3
/* 801384B8 0012E238  98 03 00 28 */	stb r0, 0x28(r3)
/* 801384BC 0012E23C  54 C0 CF FF */	rlwinm. r0, r6, 0x19, 0x1f, 0x1f
/* 801384C0 0012E240  41 82 00 CC */	beq lbl_8013858C
/* 801384C4 0012E244  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 801384C8 0012E248  41 82 00 C4 */	beq lbl_8013858C
/* 801384CC 0012E24C  54 C0 F7 FF */	rlwinm. r0, r6, 0x1e, 0x1f, 0x1f
/* 801384D0 0012E250  41 82 00 BC */	beq lbl_8013858C
/* 801384D4 0012E254  80 E4 00 00 */	lwz r7, 0(r4)
/* 801384D8 0012E258  80 C4 00 04 */	lwz r6, 4(r4)
/* 801384DC 0012E25C  80 A4 00 08 */	lwz r5, 8(r4)
/* 801384E0 0012E260  80 04 00 0C */	lwz r0, 0xc(r4)
/* 801384E4 0012E264  7F A4 EB 78 */	mr r4, r29
/* 801384E8 0012E268  C0 02 97 60 */	lfs f0, lbl_805A2A80-_SDA2_BASE_(r2)
/* 801384EC 0012E26C  90 E3 00 2C */	stw r7, 0x2c(r3)
/* 801384F0 0012E270  90 C3 00 30 */	stw r6, 0x30(r3)
/* 801384F4 0012E274  90 A3 00 34 */	stw r5, 0x34(r3)
/* 801384F8 0012E278  90 03 00 38 */	stw r0, 0x38(r3)
/* 801384FC 0012E27C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80138500 0012E280  7F C3 F3 78 */	mr r3, r30
/* 80138504 0012E284  4B F0 80 15 */	bl clRay2D$7getAABBox
/* 80138508 0012E288  7F A3 EB 78 */	mr r3, r29
/* 8013850C 0012E28C  7F E4 FB 78 */	mr r4, r31
/* 80138510 0012E290  4B FF FB AD */	bl grCollisionRaycheck$7raycheckSub
/* 80138514 0012E294  88 1D 00 28 */	lbz r0, 0x28(r29)
/* 80138518 0012E298  28 00 00 01 */	cmplwi r0, 1
/* 8013851C 0012E29C  40 82 00 70 */	bne lbl_8013858C
/* 80138520 0012E2A0  C0 9D 00 14 */	lfs f4, 0x14(r29)
/* 80138524 0012E2A4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80138528 0012E2A8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8013852C 0012E2AC  EC 61 01 32 */	fmuls f3, f1, f4
/* 80138530 0012E2B0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80138534 0012E2B4  EC 20 01 32 */	fmuls f1, f0, f4
/* 80138538 0012E2B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8013853C 0012E2BC  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80138540 0012E2C0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80138544 0012E2C4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80138548 0012E2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013854C 0012E2CC  90 61 00 18 */	stw r3, 0x18(r1)
/* 80138550 0012E2D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80138554 0012E2D4  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80138558 0012E2D8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8013855C 0012E2DC  EC 43 10 2A */	fadds f2, f3, f2
/* 80138560 0012E2E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80138564 0012E2E4  D0 41 00 08 */	stfs f2, 8(r1)
/* 80138568 0012E2E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013856C 0012E2EC  80 61 00 08 */	lwz r3, 8(r1)
/* 80138570 0012E2F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80138574 0012E2F4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80138578 0012E2F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013857C 0012E2FC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80138580 0012E300  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80138584 0012E304  D0 3D 00 20 */	stfs f1, 0x20(r29)
/* 80138588 0012E308  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_8013858C:
/* 8013858C 0012E30C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80138590 0012E310  88 7D 00 28 */	lbz r3, 0x28(r29)
/* 80138594 0012E314  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80138598 0012E318  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8013859C 0012E31C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801385A0 0012E320  7C 08 03 A6 */	mtlr r0
/* 801385A4 0012E324  38 21 00 40 */	addi r1, r1, 0x40
/* 801385A8 0012E328  4E 80 00 20 */	blr 

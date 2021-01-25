.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkBoxBoxAgent3$7registerAgent3
hkBoxBoxAgent3$7registerAgent3:
/* 802FB244 002F0FC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FB248 002F0FC8  7C 08 02 A6 */	mflr r0
/* 802FB24C 002F0FCC  3D 80 80 30 */	lis r12, hkBoxBoxAgent3$7process@ha
/* 802FB250 002F0FD0  3D 60 80 30 */	lis r11, hkBoxBoxAgent3$7cleanup@ha
/* 802FB254 002F0FD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FB258 002F0FD8  3D 40 80 30 */	lis r10, hkBoxBoxAgent3$7removePoint@ha
/* 802FB25C 002F0FDC  3D 20 80 30 */	lis r9, hkBoxBoxAgent3$7commitPotential@ha
/* 802FB260 002F0FE0  3D 00 80 30 */	lis r8, hkBoxBoxAgent3$7createZombie@ha
/* 802FB264 002F0FE4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FB268 002F0FE8  3F E0 80 30 */	lis r31, hkBoxBoxAgent3$7create@ha
/* 802FB26C 002F0FEC  38 00 00 00 */	li r0, 0
/* 802FB270 002F0FF0  3C E0 80 30 */	lis r7, hkBoxBoxAgent3$7destroy@ha
/* 802FB274 002F0FF4  3B FF B2 E8 */	addi r31, r31, hkBoxBoxAgent3$7create@l
/* 802FB278 002F0FF8  39 8C B4 64 */	addi r12, r12, hkBoxBoxAgent3$7process@l
/* 802FB27C 002F0FFC  39 6B B3 24 */	addi r11, r11, hkBoxBoxAgent3$7cleanup@l
/* 802FB280 002F1000  39 4A B3 A4 */	addi r10, r10, hkBoxBoxAgent3$7removePoint@l
/* 802FB284 002F1004  39 29 B4 18 */	addi r9, r9, hkBoxBoxAgent3$7commitPotential@l
/* 802FB288 002F1008  39 08 B4 5C */	addi r8, r8, hkBoxBoxAgent3$7createZombie@l
/* 802FB28C 002F100C  38 E7 B4 60 */	addi r7, r7, hkBoxBoxAgent3$7destroy@l
/* 802FB290 002F1010  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB294 002F1014  38 81 00 08 */	addi r4, r1, 8
/* 802FB298 002F1018  38 A0 00 07 */	li r5, 7
/* 802FB29C 002F101C  90 01 00 28 */	stw r0, 0x28(r1)
/* 802FB2A0 002F1020  38 C0 00 07 */	li r6, 7
/* 802FB2A4 002F1024  98 01 00 35 */	stb r0, 0x35(r1)
/* 802FB2A8 002F1028  93 E1 00 08 */	stw r31, 8(r1)
/* 802FB2AC 002F102C  91 81 00 30 */	stw r12, 0x30(r1)
/* 802FB2B0 002F1030  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FB2B4 002F1034  91 61 00 10 */	stw r11, 0x10(r1)
/* 802FB2B8 002F1038  91 41 00 14 */	stw r10, 0x14(r1)
/* 802FB2BC 002F103C  91 21 00 18 */	stw r9, 0x18(r1)
/* 802FB2C0 002F1040  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802FB2C4 002F1044  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FB2C8 002F1048  90 E1 00 0C */	stw r7, 0xc(r1)
/* 802FB2CC 002F104C  98 01 00 34 */	stb r0, 0x34(r1)
/* 802FB2D0 002F1050  4B FD 0F 45 */	bl hkCollisionDispatcher$7registerAgent3
/* 802FB2D4 002F1054  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FB2D8 002F1058  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FB2DC 002F105C  7C 08 03 A6 */	mtlr r0
/* 802FB2E0 002F1060  38 21 00 40 */	addi r1, r1, 0x40
/* 802FB2E4 002F1064  4E 80 00 20 */	blr 

.global hkBoxBoxAgent3$7create
hkBoxBoxAgent3$7create:
/* 802FB2E8 002F1068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FB2EC 002F106C  7C 08 02 A6 */	mflr r0
/* 802FB2F0 002F1070  2C 05 00 00 */	cmpwi r5, 0
/* 802FB2F4 002F1074  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB2F8 002F1078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FB2FC 002F107C  7C BF 2B 78 */	mr r31, r5
/* 802FB300 002F1080  41 82 00 0C */	beq lbl_802FB30C
/* 802FB304 002F1084  7F E3 FB 78 */	mr r3, r31
/* 802FB308 002F1088  4B FA 6A 81 */	bl hkBoxBoxManifold$7__ct
lbl_802FB30C:
/* 802FB30C 002F108C  38 7F 00 50 */	addi r3, r31, 0x50
/* 802FB310 002F1090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FB314 002F1094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FB318 002F1098  7C 08 03 A6 */	mtlr r0
/* 802FB31C 002F109C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FB320 002F10A0  4E 80 00 20 */	blr 

.global hkBoxBoxAgent3$7cleanup
hkBoxBoxAgent3$7cleanup:
/* 802FB324 002F10A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FB328 002F10A8  7C 08 02 A6 */	mflr r0
/* 802FB32C 002F10AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB330 002F10B0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802FB334 002F10B4  7C 9C 23 78 */	mr r28, r4
/* 802FB338 002F10B8  7C 7B 1B 78 */	mr r27, r3
/* 802FB33C 002F10BC  7C BD 2B 78 */	mr r29, r5
/* 802FB340 002F10C0  7F 9F E3 78 */	mr r31, r28
/* 802FB344 002F10C4  3B C0 00 00 */	li r30, 0
/* 802FB348 002F10C8  48 00 00 2C */	b lbl_802FB374
lbl_802FB34C:
/* 802FB34C 002F10CC  A0 9F 00 02 */	lhz r4, 2(r31)
/* 802FB350 002F10D0  28 04 FF FF */	cmplwi r4, 0xffff
/* 802FB354 002F10D4  41 82 00 18 */	beq lbl_802FB36C
/* 802FB358 002F10D8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802FB35C 002F10DC  7F A3 EB 78 */	mr r3, r29
/* 802FB360 002F10E0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802FB364 002F10E4  7D 89 03 A6 */	mtctr r12
/* 802FB368 002F10E8  4E 80 04 21 */	bctrl 
lbl_802FB36C:
/* 802FB36C 002F10EC  3B FF 00 04 */	addi r31, r31, 4
/* 802FB370 002F10F0  3B DE 00 01 */	addi r30, r30, 1
lbl_802FB374:
/* 802FB374 002F10F4  88 1C 00 21 */	lbz r0, 0x21(r28)
/* 802FB378 002F10F8  7C 1E 00 00 */	cmpw r30, r0
/* 802FB37C 002F10FC  41 80 FF D0 */	blt lbl_802FB34C
/* 802FB380 002F1100  38 00 00 00 */	li r0, 0
/* 802FB384 002F1104  38 7C 00 50 */	addi r3, r28, 0x50
/* 802FB388 002F1108  98 1C 00 21 */	stb r0, 0x21(r28)
/* 802FB38C 002F110C  98 1B 00 02 */	stb r0, 2(r27)
/* 802FB390 002F1110  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802FB394 002F1114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FB398 002F1118  7C 08 03 A6 */	mtlr r0
/* 802FB39C 002F111C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FB3A0 002F1120  4E 80 00 20 */	blr 

.global hkBoxBoxAgent3$7removePoint
hkBoxBoxAgent3$7removePoint:
/* 802FB3A4 002F1124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FB3A8 002F1128  7C 08 02 A6 */	mflr r0
/* 802FB3AC 002F112C  38 C0 00 00 */	li r6, 0
/* 802FB3B0 002F1130  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB3B4 002F1134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FB3B8 002F1138  7C 7F 1B 78 */	mr r31, r3
/* 802FB3BC 002F113C  7C 83 23 78 */	mr r3, r4
/* 802FB3C0 002F1140  88 04 00 21 */	lbz r0, 0x21(r4)
/* 802FB3C4 002F1144  7C 09 03 A6 */	mtctr r0
/* 802FB3C8 002F1148  2C 00 00 00 */	cmpwi r0, 0
/* 802FB3CC 002F114C  40 81 00 38 */	ble lbl_802FB404
lbl_802FB3D0:
/* 802FB3D0 002F1150  A0 03 00 02 */	lhz r0, 2(r3)
/* 802FB3D4 002F1154  7C 05 00 40 */	cmplw r5, r0
/* 802FB3D8 002F1158  40 82 00 20 */	bne lbl_802FB3F8
/* 802FB3DC 002F115C  7C 83 23 78 */	mr r3, r4
/* 802FB3E0 002F1160  7C C4 33 78 */	mr r4, r6
/* 802FB3E4 002F1164  4B FA 6A A9 */	bl hkBoxBoxManifold$7removePoint
/* 802FB3E8 002F1168  88 7F 00 02 */	lbz r3, 2(r31)
/* 802FB3EC 002F116C  38 03 FF FF */	addi r0, r3, -1
/* 802FB3F0 002F1170  98 1F 00 02 */	stb r0, 2(r31)
/* 802FB3F4 002F1174  48 00 00 10 */	b lbl_802FB404
lbl_802FB3F8:
/* 802FB3F8 002F1178  38 63 00 04 */	addi r3, r3, 4
/* 802FB3FC 002F117C  38 C6 00 01 */	addi r6, r6, 1
/* 802FB400 002F1180  42 00 FF D0 */	bdnz lbl_802FB3D0
lbl_802FB404:
/* 802FB404 002F1184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FB408 002F1188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FB40C 002F118C  7C 08 03 A6 */	mtlr r0
/* 802FB410 002F1190  38 21 00 10 */	addi r1, r1, 0x10
/* 802FB414 002F1194  4E 80 00 20 */	blr 

.global hkBoxBoxAgent3$7commitPotential
hkBoxBoxAgent3$7commitPotential:
/* 802FB418 002F1198  88 04 00 21 */	lbz r0, 0x21(r4)
/* 802FB41C 002F119C  7C 83 23 78 */	mr r3, r4
/* 802FB420 002F11A0  38 C0 00 00 */	li r6, 0
/* 802FB424 002F11A4  7C 09 03 A6 */	mtctr r0
/* 802FB428 002F11A8  2C 00 00 00 */	cmpwi r0, 0
/* 802FB42C 002F11AC  4C 81 00 20 */	blelr 
lbl_802FB430:
/* 802FB430 002F11B0  A0 03 00 02 */	lhz r0, 2(r3)
/* 802FB434 002F11B4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802FB438 002F11B8  40 82 00 14 */	bne lbl_802FB44C
/* 802FB43C 002F11BC  54 C0 10 3A */	slwi r0, r6, 2
/* 802FB440 002F11C0  7C 64 02 14 */	add r3, r4, r0
/* 802FB444 002F11C4  B0 A3 00 02 */	sth r5, 2(r3)
/* 802FB448 002F11C8  4E 80 00 20 */	blr 
lbl_802FB44C:
/* 802FB44C 002F11CC  38 63 00 04 */	addi r3, r3, 4
/* 802FB450 002F11D0  38 C6 00 01 */	addi r6, r6, 1
/* 802FB454 002F11D4  42 00 FF DC */	bdnz lbl_802FB430
/* 802FB458 002F11D8  4E 80 00 20 */	blr 

.global hkBoxBoxAgent3$7createZombie
hkBoxBoxAgent3$7createZombie:
/* 802FB45C 002F11DC  4E 80 00 20 */	blr 

.global hkBoxBoxAgent3$7destroy
hkBoxBoxAgent3$7destroy:
/* 802FB460 002F11E0  4B FF FE C4 */	b hkBoxBoxAgent3$7cleanup

.global hkBoxBoxAgent3$7process
hkBoxBoxAgent3$7process:
/* 802FB464 002F11E4  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802FB468 002F11E8  7C 2C 0B 78 */	mr r12, r1
/* 802FB46C 002F11EC  21 6B FD 70 */	subfic r11, r11, -656
/* 802FB470 002F11F0  7C 21 59 6E */	stwux r1, r1, r11
/* 802FB474 002F11F4  7C 08 02 A6 */	mflr r0
/* 802FB478 002F11F8  90 0C 00 04 */	stw r0, 4(r12)
/* 802FB47C 002F11FC  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802FB480 002F1200  F3 EC 0F F8 */	psq_st f31, -8(r12), 0, qr0
/* 802FB484 002F1204  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 802FB488 002F1208  F3 CC 0F E8 */	psq_st f30, -24(r12), 0, qr0
/* 802FB48C 002F120C  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 802FB490 002F1210  F3 AC 0F D8 */	psq_st f29, -40(r12), 0, qr0
/* 802FB494 002F1214  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 802FB498 002F1218  F3 8C 0F C8 */	psq_st f28, -56(r12), 0, qr0
/* 802FB49C 002F121C  DB 6C FF B0 */	stfd f27, -0x50(r12)
/* 802FB4A0 002F1220  F3 6C 0F B8 */	psq_st f27, -72(r12), 0, qr0
/* 802FB4A4 002F1224  DB 4C FF A0 */	stfd f26, -0x60(r12)
/* 802FB4A8 002F1228  F3 4C 0F A8 */	psq_st f26, -88(r12), 0, qr0
/* 802FB4AC 002F122C  DB 2C FF 90 */	stfd f25, -0x70(r12)
/* 802FB4B0 002F1230  F3 2C 0F 98 */	psq_st f25, -104(r12), 0, qr0
/* 802FB4B4 002F1234  DB 0C FF 80 */	stfd f24, -0x80(r12)
/* 802FB4B8 002F1238  F3 0C 0F 88 */	psq_st f24, -120(r12), 0, qr0
/* 802FB4BC 002F123C  DA EC FF 70 */	stfd f23, -0x90(r12)
/* 802FB4C0 002F1240  F2 EC 0F 78 */	psq_st f23, -136(r12), 0, qr0
/* 802FB4C4 002F1244  DA CC FF 60 */	stfd f22, -0xa0(r12)
/* 802FB4C8 002F1248  F2 CC 0F 68 */	psq_st f22, -152(r12), 0, qr0
/* 802FB4CC 002F124C  DA AC FF 50 */	stfd f21, -0xb0(r12)
/* 802FB4D0 002F1250  F2 AC 0F 58 */	psq_st f21, -168(r12), 0, qr0
/* 802FB4D4 002F1254  DA 8C FF 40 */	stfd f20, -0xc0(r12)
/* 802FB4D8 002F1258  F2 8C 0F 48 */	psq_st f20, -184(r12), 0, qr0
/* 802FB4DC 002F125C  3C C0 80 53 */	lis r6, lbl_80532448@ha
/* 802FB4E0 002F1260  38 C6 24 48 */	addi r6, r6, lbl_80532448@l
/* 802FB4E4 002F1264  93 EC FF 3C */	stw r31, -0xc4(r12)
/* 802FB4E8 002F1268  7C BF 2B 78 */	mr r31, r5
/* 802FB4EC 002F126C  93 CC FF 38 */	stw r30, -0xc8(r12)
/* 802FB4F0 002F1270  7C 9E 23 78 */	mr r30, r4
/* 802FB4F4 002F1274  80 86 00 0C */	lwz r4, 0xc(r6)
/* 802FB4F8 002F1278  80 A6 00 04 */	lwz r5, 4(r6)
/* 802FB4FC 002F127C  7C 80 2A 78 */	xor r0, r4, r5
/* 802FB500 002F1280  7C 00 00 34 */	cntlzw r0, r0
/* 802FB504 002F1284  7C 80 00 30 */	slw r0, r4, r0
/* 802FB508 002F1288  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FB50C 002F128C  7C 04 07 74 */	extsb r4, r0
/* 802FB510 002F1290  7C 04 00 D0 */	neg r0, r4
/* 802FB514 002F1294  7C 00 23 78 */	or r0, r0, r4
/* 802FB518 002F1298  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802FB51C 002F129C  41 82 00 20 */	beq lbl_802FB53C
/* 802FB520 002F12A0  3C 80 80 41 */	lis r4, lbl_80414130@ha
/* 802FB524 002F12A4  38 84 41 30 */	addi r4, r4, lbl_80414130@l
/* 802FB528 002F12A8  90 85 00 00 */	stw r4, 0(r5)
/* 802FB52C 002F12AC  7C 8C 42 E6 */	mftb r4, 0x10c
/* 802FB530 002F12B0  38 05 00 0C */	addi r0, r5, 0xc
/* 802FB534 002F12B4  90 85 00 04 */	stw r4, 4(r5)
/* 802FB538 002F12B8  90 06 00 04 */	stw r0, 4(r6)
lbl_802FB53C:
/* 802FB53C 002F12BC  80 83 00 00 */	lwz r4, 0(r3)
/* 802FB540 002F12C0  80 A3 00 04 */	lwz r5, 4(r3)
/* 802FB544 002F12C4  80 C4 00 00 */	lwz r6, 0(r4)
/* 802FB548 002F12C8  81 05 00 00 */	lwz r8, 0(r5)
/* 802FB54C 002F12CC  C0 A6 00 0C */	lfs f5, 0xc(r6)
/* 802FB550 002F12D0  C0 66 00 14 */	lfs f3, 0x14(r6)
/* 802FB554 002F12D4  C0 C8 00 0C */	lfs f6, 0xc(r8)
/* 802FB558 002F12D8  EE 83 28 2A */	fadds f20, f3, f5
/* 802FB55C 002F12DC  C0 46 00 18 */	lfs f2, 0x18(r6)
/* 802FB560 002F12E0  C0 26 00 1C */	lfs f1, 0x1c(r6)
/* 802FB564 002F12E4  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 802FB568 002F12E8  EE A2 28 2A */	fadds f21, f2, f5
/* 802FB56C 002F12EC  EE C1 28 2A */	fadds f22, f1, f5
/* 802FB570 002F12F0  C0 88 00 10 */	lfs f4, 0x10(r8)
/* 802FB574 002F12F4  EC 00 28 2A */	fadds f0, f0, f5
/* 802FB578 002F12F8  C0 68 00 14 */	lfs f3, 0x14(r8)
/* 802FB57C 002F12FC  C0 48 00 18 */	lfs f2, 0x18(r8)
/* 802FB580 002F1300  EE E4 30 2A */	fadds f23, f4, f6
/* 802FB584 002F1304  C0 28 00 1C */	lfs f1, 0x1c(r8)
/* 802FB588 002F1308  EF 03 30 2A */	fadds f24, f3, f6
/* 802FB58C 002F130C  EF 22 30 2A */	fadds f25, f2, f6
/* 802FB590 002F1310  C3 63 00 10 */	lfs f27, 0x10(r3)
/* 802FB594 002F1314  EF 41 30 2A */	fadds f26, f1, f6
/* 802FB598 002F1318  80 C3 00 08 */	lwz r6, 8(r3)
/* 802FB59C 002F131C  C3 83 00 14 */	lfs f28, 0x14(r3)
/* 802FB5A0 002F1320  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 802FB5A4 002F1324  C3 C3 00 1C */	lfs f30, 0x1c(r3)
/* 802FB5A8 002F1328  C3 E3 00 20 */	lfs f31, 0x20(r3)
/* 802FB5AC 002F132C  C1 A3 00 24 */	lfs f13, 0x24(r3)
/* 802FB5B0 002F1330  81 05 00 08 */	lwz r8, 8(r5)
/* 802FB5B4 002F1334  81 24 00 08 */	lwz r9, 8(r4)
/* 802FB5B8 002F1338  C0 26 00 08 */	lfs f1, 8(r6)
/* 802FB5BC 002F133C  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 802FB5C0 002F1340  80 83 00 04 */	lwz r4, 4(r3)
/* 802FB5C4 002F1344  80 03 00 00 */	lwz r0, 0(r3)
/* 802FB5C8 002F1348  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 802FB5CC 002F134C  D0 A1 00 84 */	stfs f5, 0x84(r1)
/* 802FB5D0 002F1350  D0 A1 00 88 */	stfs f5, 0x88(r1)
/* 802FB5D4 002F1354  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 802FB5D8 002F1358  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 802FB5DC 002F135C  D2 81 00 74 */	stfs f20, 0x74(r1)
/* 802FB5E0 002F1360  D2 A1 00 78 */	stfs f21, 0x78(r1)
/* 802FB5E4 002F1364  D2 C1 00 7C */	stfs f22, 0x7c(r1)
/* 802FB5E8 002F1368  D0 C1 00 60 */	stfs f6, 0x60(r1)
/* 802FB5EC 002F136C  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 802FB5F0 002F1370  D0 C1 00 68 */	stfs f6, 0x68(r1)
/* 802FB5F4 002F1374  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 802FB5F8 002F1378  D2 E1 00 50 */	stfs f23, 0x50(r1)
/* 802FB5FC 002F137C  D3 01 00 54 */	stfs f24, 0x54(r1)
/* 802FB600 002F1380  D3 21 00 58 */	stfs f25, 0x58(r1)
/* 802FB604 002F1384  D3 41 00 5C */	stfs f26, 0x5c(r1)
/* 802FB608 002F1388  90 01 00 90 */	stw r0, 0x90(r1)
/* 802FB60C 002F138C  90 81 00 94 */	stw r4, 0x94(r1)
/* 802FB610 002F1390  90 C1 00 98 */	stw r6, 0x98(r1)
/* 802FB614 002F1394  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 802FB618 002F1398  90 E1 00 A0 */	stw r7, 0xa0(r1)
/* 802FB61C 002F139C  91 21 00 A4 */	stw r9, 0xa4(r1)
/* 802FB620 002F13A0  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 802FB624 002F13A4  D3 61 00 40 */	stfs f27, 0x40(r1)
/* 802FB628 002F13A8  D3 81 00 44 */	stfs f28, 0x44(r1)
/* 802FB62C 002F13AC  D3 A1 00 48 */	stfs f29, 0x48(r1)
/* 802FB630 002F13B0  D3 C1 00 4C */	stfs f30, 0x4c(r1)
/* 802FB634 002F13B4  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 802FB638 002F13B8  D1 A1 00 34 */	stfs f13, 0x34(r1)
/* 802FB63C 002F13BC  C1 83 00 28 */	lfs f12, 0x28(r3)
/* 802FB640 002F13C0  38 81 01 70 */	addi r4, r1, 0x170
/* 802FB644 002F13C4  C1 63 00 2C */	lfs f11, 0x2c(r3)
/* 802FB648 002F13C8  38 01 01 C0 */	addi r0, r1, 0x1c0
/* 802FB64C 002F13CC  C1 43 00 30 */	lfs f10, 0x30(r3)
/* 802FB650 002F13D0  C1 23 00 34 */	lfs f9, 0x34(r3)
/* 802FB654 002F13D4  C1 03 00 38 */	lfs f8, 0x38(r3)
/* 802FB658 002F13D8  C0 E3 00 3C */	lfs f7, 0x3c(r3)
/* 802FB65C 002F13DC  C0 C3 00 40 */	lfs f6, 0x40(r3)
/* 802FB660 002F13E0  C0 A3 00 44 */	lfs f5, 0x44(r3)
/* 802FB664 002F13E4  C0 83 00 48 */	lfs f4, 0x48(r3)
/* 802FB668 002F13E8  C0 63 00 4C */	lfs f3, 0x4c(r3)
/* 802FB66C 002F13EC  C0 42 B2 30 */	lfs f2, lbl_805A4550-_SDA2_BASE_(r2)
/* 802FB670 002F13F0  D1 81 00 38 */	stfs f12, 0x38(r1)
/* 802FB674 002F13F4  D1 61 00 3C */	stfs f11, 0x3c(r1)
/* 802FB678 002F13F8  D1 41 00 20 */	stfs f10, 0x20(r1)
/* 802FB67C 002F13FC  D1 21 00 24 */	stfs f9, 0x24(r1)
/* 802FB680 002F1400  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 802FB684 002F1404  D0 E1 00 2C */	stfs f7, 0x2c(r1)
/* 802FB688 002F1408  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 802FB68C 002F140C  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 802FB690 002F1410  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802FB694 002F1414  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802FB698 002F1418  D3 61 00 B0 */	stfs f27, 0xb0(r1)
/* 802FB69C 002F141C  D3 81 00 B4 */	stfs f28, 0xb4(r1)
/* 802FB6A0 002F1420  D3 A1 00 B8 */	stfs f29, 0xb8(r1)
/* 802FB6A4 002F1424  D3 C1 00 BC */	stfs f30, 0xbc(r1)
/* 802FB6A8 002F1428  D3 E1 00 C0 */	stfs f31, 0xc0(r1)
/* 802FB6AC 002F142C  D1 A1 00 C4 */	stfs f13, 0xc4(r1)
/* 802FB6B0 002F1430  D1 81 00 C8 */	stfs f12, 0xc8(r1)
/* 802FB6B4 002F1434  D1 61 00 CC */	stfs f11, 0xcc(r1)
/* 802FB6B8 002F1438  D1 41 00 D0 */	stfs f10, 0xd0(r1)
/* 802FB6BC 002F143C  D1 21 00 D4 */	stfs f9, 0xd4(r1)
/* 802FB6C0 002F1440  D1 01 00 D8 */	stfs f8, 0xd8(r1)
/* 802FB6C4 002F1444  D0 E1 00 DC */	stfs f7, 0xdc(r1)
/* 802FB6C8 002F1448  D0 C1 00 E0 */	stfs f6, 0xe0(r1)
/* 802FB6CC 002F144C  D0 A1 00 E4 */	stfs f5, 0xe4(r1)
/* 802FB6D0 002F1450  D0 81 00 E8 */	stfs f4, 0xe8(r1)
/* 802FB6D4 002F1454  D0 61 00 EC */	stfs f3, 0xec(r1)
/* 802FB6D8 002F1458  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 802FB6DC 002F145C  D2 81 00 F4 */	stfs f20, 0xf4(r1)
/* 802FB6E0 002F1460  D2 A1 00 F8 */	stfs f21, 0xf8(r1)
/* 802FB6E4 002F1464  D2 C1 00 FC */	stfs f22, 0xfc(r1)
/* 802FB6E8 002F1468  D2 E1 01 00 */	stfs f23, 0x100(r1)
/* 802FB6EC 002F146C  D3 01 01 04 */	stfs f24, 0x104(r1)
/* 802FB6F0 002F1470  D3 21 01 08 */	stfs f25, 0x108(r1)
/* 802FB6F4 002F1474  D3 41 01 0C */	stfs f26, 0x10c(r1)
/* 802FB6F8 002F1478  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 802FB6FC 002F147C  D0 41 01 44 */	stfs f2, 0x144(r1)
lbl_802FB700:
/* 802FB700 002F1480  38 84 00 10 */	addi r4, r4, 0x10
/* 802FB704 002F1484  7C 04 00 40 */	cmplw r4, r0
/* 802FB708 002F1488  41 80 FF F8 */	blt lbl_802FB700
/* 802FB70C 002F148C  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 802FB710 002F1490  7F E4 FB 78 */	mr r4, r31
/* 802FB714 002F1494  C0 61 00 F4 */	lfs f3, 0xf4(r1)
/* 802FB718 002F1498  38 61 00 90 */	addi r3, r1, 0x90
/* 802FB71C 002F149C  ED 01 00 2A */	fadds f8, f1, f0
/* 802FB720 002F14A0  C0 41 00 F8 */	lfs f2, 0xf8(r1)
/* 802FB724 002F14A4  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 802FB728 002F14A8  EC E1 18 2A */	fadds f7, f1, f3
/* 802FB72C 002F14AC  EC C1 10 2A */	fadds f6, f1, f2
/* 802FB730 002F14B0  C0 81 01 00 */	lfs f4, 0x100(r1)
/* 802FB734 002F14B4  EC A1 00 2A */	fadds f5, f1, f0
/* 802FB738 002F14B8  C0 61 01 04 */	lfs f3, 0x104(r1)
/* 802FB73C 002F14BC  C0 41 01 08 */	lfs f2, 0x108(r1)
/* 802FB740 002F14C0  EC 81 20 2A */	fadds f4, f1, f4
/* 802FB744 002F14C4  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 802FB748 002F14C8  EC 61 18 2A */	fadds f3, f1, f3
/* 802FB74C 002F14CC  EC 41 10 2A */	fadds f2, f1, f2
/* 802FB750 002F14D0  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 802FB754 002F14D4  EC 01 00 2A */	fadds f0, f1, f0
/* 802FB758 002F14D8  D0 21 01 14 */	stfs f1, 0x114(r1)
/* 802FB75C 002F14DC  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 802FB760 002F14E0  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 802FB764 002F14E4  D1 01 01 20 */	stfs f8, 0x120(r1)
/* 802FB768 002F14E8  D0 E1 01 24 */	stfs f7, 0x124(r1)
/* 802FB76C 002F14EC  D0 C1 01 28 */	stfs f6, 0x128(r1)
/* 802FB770 002F14F0  D0 A1 01 2C */	stfs f5, 0x12c(r1)
/* 802FB774 002F14F4  D0 81 01 30 */	stfs f4, 0x130(r1)
/* 802FB778 002F14F8  D0 61 01 34 */	stfs f3, 0x134(r1)
/* 802FB77C 002F14FC  D0 41 01 38 */	stfs f2, 0x138(r1)
/* 802FB780 002F1500  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 802FB784 002F1504  48 00 AC A1 */	bl hkBoxBoxCollisionDetection$7calcManifold
/* 802FB788 002F1508  88 1F 00 21 */	lbz r0, 0x21(r31)
/* 802FB78C 002F150C  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802FB790 002F1510  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802FB794 002F1514  98 1E 00 02 */	stb r0, 2(r30)
/* 802FB798 002F1518  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802FB79C 002F151C  80 85 00 04 */	lwz r4, 4(r5)
/* 802FB7A0 002F1520  7C 60 22 78 */	xor r0, r3, r4
/* 802FB7A4 002F1524  7C 00 00 34 */	cntlzw r0, r0
/* 802FB7A8 002F1528  7C 60 00 30 */	slw r0, r3, r0
/* 802FB7AC 002F152C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FB7B0 002F1530  7C 03 07 74 */	extsb r3, r0
/* 802FB7B4 002F1534  7C 03 00 D0 */	neg r0, r3
/* 802FB7B8 002F1538  7C 00 1B 78 */	or r0, r0, r3
/* 802FB7BC 002F153C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802FB7C0 002F1540  41 82 00 24 */	beq lbl_802FB7E4
/* 802FB7C4 002F1544  3C 60 80 41 */	lis r3, lbl_80414130@ha
/* 802FB7C8 002F1548  38 63 41 30 */	addi r3, r3, lbl_80414130@l
/* 802FB7CC 002F154C  38 03 00 0A */	addi r0, r3, 0xa
/* 802FB7D0 002F1550  90 04 00 00 */	stw r0, 0(r4)
/* 802FB7D4 002F1554  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802FB7D8 002F1558  38 04 00 0C */	addi r0, r4, 0xc
/* 802FB7DC 002F155C  90 64 00 04 */	stw r3, 4(r4)
/* 802FB7E0 002F1560  90 05 00 04 */	stw r0, 4(r5)
lbl_802FB7E4:
/* 802FB7E4 002F1564  38 7F 00 50 */	addi r3, r31, 0x50
/* 802FB7E8 002F1568  81 41 00 00 */	lwz r10, 0(r1)
/* 802FB7EC 002F156C  38 00 FF F8 */	li r0, -8
/* 802FB7F0 002F1570  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802FB7F4 002F1574  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802FB7F8 002F1578  38 00 FF E8 */	li r0, -24
/* 802FB7FC 002F157C  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 802FB800 002F1580  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 802FB804 002F1584  38 00 FF D8 */	li r0, -40
/* 802FB808 002F1588  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 802FB80C 002F158C  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 802FB810 002F1590  38 00 FF C8 */	li r0, -56
/* 802FB814 002F1594  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 802FB818 002F1598  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 802FB81C 002F159C  38 00 FF B8 */	li r0, -72
/* 802FB820 002F15A0  13 6A 00 0C */	psq_lx f27, r10, r0, 0, qr0
/* 802FB824 002F15A4  CB 6A FF B0 */	lfd f27, -0x50(r10)
/* 802FB828 002F15A8  38 00 FF A8 */	li r0, -88
/* 802FB82C 002F15AC  13 4A 00 0C */	psq_lx f26, r10, r0, 0, qr0
/* 802FB830 002F15B0  CB 4A FF A0 */	lfd f26, -0x60(r10)
/* 802FB834 002F15B4  38 00 FF 98 */	li r0, -104
/* 802FB838 002F15B8  13 2A 00 0C */	psq_lx f25, r10, r0, 0, qr0
/* 802FB83C 002F15BC  CB 2A FF 90 */	lfd f25, -0x70(r10)
/* 802FB840 002F15C0  38 00 FF 88 */	li r0, -120
/* 802FB844 002F15C4  13 0A 00 0C */	psq_lx f24, r10, r0, 0, qr0
/* 802FB848 002F15C8  CB 0A FF 80 */	lfd f24, -0x80(r10)
/* 802FB84C 002F15CC  38 00 FF 78 */	li r0, -136
/* 802FB850 002F15D0  12 EA 00 0C */	psq_lx f23, r10, r0, 0, qr0
/* 802FB854 002F15D4  CA EA FF 70 */	lfd f23, -0x90(r10)
/* 802FB858 002F15D8  38 00 FF 68 */	li r0, -152
/* 802FB85C 002F15DC  12 CA 00 0C */	psq_lx f22, r10, r0, 0, qr0
/* 802FB860 002F15E0  CA CA FF 60 */	lfd f22, -0xa0(r10)
/* 802FB864 002F15E4  38 00 FF 58 */	li r0, -168
/* 802FB868 002F15E8  12 AA 00 0C */	psq_lx f21, r10, r0, 0, qr0
/* 802FB86C 002F15EC  CA AA FF 50 */	lfd f21, -0xb0(r10)
/* 802FB870 002F15F0  38 00 FF 48 */	li r0, -184
/* 802FB874 002F15F4  12 8A 00 0C */	psq_lx f20, r10, r0, 0, qr0
/* 802FB878 002F15F8  CA 8A FF 40 */	lfd f20, -0xc0(r10)
/* 802FB87C 002F15FC  83 EA FF 3C */	lwz r31, -0xc4(r10)
/* 802FB880 002F1600  83 CA FF 38 */	lwz r30, -0xc8(r10)
/* 802FB884 002F1604  80 0A 00 04 */	lwz r0, 4(r10)
/* 802FB888 002F1608  7C 08 03 A6 */	mtlr r0
/* 802FB88C 002F160C  7D 41 53 78 */	mr r1, r10
/* 802FB890 002F1610  4E 80 00 20 */	blr 


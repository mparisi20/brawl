.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkShapeCollection$7castRay
hkShapeCollection$7castRay:
/* 802D01B0 002C5F30  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802D01B4 002C5F34  7C 2C 0B 78 */	mr r12, r1
/* 802D01B8 002C5F38  21 6B FD D0 */	subfic r11, r11, -560
/* 802D01BC 002C5F3C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D01C0 002C5F40  7C 08 02 A6 */	mflr r0
/* 802D01C4 002C5F44  3D 00 80 53 */	lis r8, lbl_80532448@ha
/* 802D01C8 002C5F48  90 0C 00 04 */	stw r0, 4(r12)
/* 802D01CC 002C5F4C  39 08 24 48 */	addi r8, r8, lbl_80532448@l
/* 802D01D0 002C5F50  BF 6C FF EC */	stmw r27, -0x14(r12)
/* 802D01D4 002C5F54  7C 7C 1B 78 */	mr r28, r3
/* 802D01D8 002C5F58  7C 9D 23 78 */	mr r29, r4
/* 802D01DC 002C5F5C  7C BE 2B 78 */	mr r30, r5
/* 802D01E0 002C5F60  80 C8 00 0C */	lwz r6, 0xc(r8)
/* 802D01E4 002C5F64  80 E8 00 04 */	lwz r7, 4(r8)
/* 802D01E8 002C5F68  7C C0 3A 78 */	xor r0, r6, r7
/* 802D01EC 002C5F6C  7C 00 00 34 */	cntlzw r0, r0
/* 802D01F0 002C5F70  7C C0 00 30 */	slw r0, r6, r0
/* 802D01F4 002C5F74  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D01F8 002C5F78  7C 06 07 74 */	extsb r6, r0
/* 802D01FC 002C5F7C  7C 06 00 D0 */	neg r0, r6
/* 802D0200 002C5F80  7C 00 33 78 */	or r0, r0, r6
/* 802D0204 002C5F84  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D0208 002C5F88  41 82 00 20 */	beq lbl_802D0228
/* 802D020C 002C5F8C  3C C0 80 41 */	lis r6, lbl_804104B8@ha
/* 802D0210 002C5F90  38 C6 04 B8 */	addi r6, r6, lbl_804104B8@l
/* 802D0214 002C5F94  90 C7 00 00 */	stw r6, 0(r7)
/* 802D0218 002C5F98  7C CC 42 E6 */	mftb r6, 0x10c
/* 802D021C 002C5F9C  38 07 00 0C */	addi r0, r7, 0xc
/* 802D0220 002C5FA0  90 C7 00 04 */	stw r6, 4(r7)
/* 802D0224 002C5FA4  90 08 00 04 */	stw r0, 4(r8)
lbl_802D0228:
/* 802D0228 002C5FA8  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802D022C 002C5FAC  3B E0 FF FF */	li r31, -1
/* 802D0230 002C5FB0  80 C5 00 38 */	lwz r6, 0x38(r5)
/* 802D0234 002C5FB4  2C 00 00 00 */	cmpwi r0, 0
/* 802D0238 002C5FB8  38 86 00 01 */	addi r4, r6, 1
/* 802D023C 002C5FBC  90 85 00 38 */	stw r4, 0x38(r5)
/* 802D0240 002C5FC0  40 82 00 98 */	bne lbl_802D02D8
/* 802D0244 002C5FC4  85 83 00 0C */	lwzu r12, 0xc(r3)
/* 802D0248 002C5FC8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D024C 002C5FCC  7D 89 03 A6 */	mtctr r12
/* 802D0250 002C5FD0  4E 80 04 21 */	bctrl 
/* 802D0254 002C5FD4  7C 7B 1B 78 */	mr r27, r3
/* 802D0258 002C5FD8  48 00 00 70 */	b lbl_802D02C8
lbl_802D025C:
/* 802D025C 002C5FDC  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D0260 002C5FE0  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D0264 002C5FE4  7F 64 DB 78 */	mr r4, r27
/* 802D0268 002C5FE8  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D026C 002C5FEC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D0270 002C5FF0  7D 89 03 A6 */	mtctr r12
/* 802D0274 002C5FF4  4E 80 04 21 */	bctrl 
/* 802D0278 002C5FF8  81 83 00 00 */	lwz r12, 0(r3)
/* 802D027C 002C5FFC  7F A4 EB 78 */	mr r4, r29
/* 802D0280 002C6000  7F C5 F3 78 */	mr r5, r30
/* 802D0284 002C6004  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D0288 002C6008  7D 89 03 A6 */	mtctr r12
/* 802D028C 002C600C  4E 80 04 21 */	bctrl 
/* 802D0290 002C6010  54 60 46 3E */	srwi r0, r3, 0x18
/* 802D0294 002C6014  7C 03 07 74 */	extsb r3, r0
/* 802D0298 002C6018  7C 03 00 D0 */	neg r0, r3
/* 802D029C 002C601C  7C 00 1B 78 */	or r0, r0, r3
/* 802D02A0 002C6020  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D02A4 002C6024  41 82 00 08 */	beq lbl_802D02AC
/* 802D02A8 002C6028  7F 7F DB 78 */	mr r31, r27
lbl_802D02AC:
/* 802D02AC 002C602C  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D02B0 002C6030  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D02B4 002C6034  7F 64 DB 78 */	mr r4, r27
/* 802D02B8 002C6038  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D02BC 002C603C  7D 89 03 A6 */	mtctr r12
/* 802D02C0 002C6040  4E 80 04 21 */	bctrl 
/* 802D02C4 002C6044  7C 7B 1B 78 */	mr r27, r3
lbl_802D02C8:
/* 802D02C8 002C6048  3C 1B 00 01 */	addis r0, r27, 1
/* 802D02CC 002C604C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D02D0 002C6050  40 82 FF 8C */	bne lbl_802D025C
/* 802D02D4 002C6054  48 00 00 CC */	b lbl_802D03A0
lbl_802D02D8:
/* 802D02D8 002C6058  85 83 00 0C */	lwzu r12, 0xc(r3)
/* 802D02DC 002C605C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D02E0 002C6060  7D 89 03 A6 */	mtctr r12
/* 802D02E4 002C6064  4E 80 04 21 */	bctrl 
/* 802D02E8 002C6068  7C 7B 1B 78 */	mr r27, r3
/* 802D02EC 002C606C  48 00 00 A8 */	b lbl_802D0394
lbl_802D02F0:
/* 802D02F0 002C6070  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802D02F4 002C6074  7F A4 EB 78 */	mr r4, r29
/* 802D02F8 002C6078  7F 85 E3 78 */	mr r5, r28
/* 802D02FC 002C607C  7F 66 DB 78 */	mr r6, r27
/* 802D0300 002C6080  81 83 00 00 */	lwz r12, 0(r3)
/* 802D0304 002C6084  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D0308 002C6088  7D 89 03 A6 */	mtctr r12
/* 802D030C 002C608C  4E 80 04 21 */	bctrl 
/* 802D0310 002C6090  54 60 46 3E */	srwi r0, r3, 0x18
/* 802D0314 002C6094  7C 03 07 74 */	extsb r3, r0
/* 802D0318 002C6098  7C 03 00 D0 */	neg r0, r3
/* 802D031C 002C609C  7C 00 1B 78 */	or r0, r0, r3
/* 802D0320 002C60A0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D0324 002C60A4  41 82 00 54 */	beq lbl_802D0378
/* 802D0328 002C60A8  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D032C 002C60AC  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D0330 002C60B0  7F 64 DB 78 */	mr r4, r27
/* 802D0334 002C60B4  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D0338 002C60B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D033C 002C60BC  7D 89 03 A6 */	mtctr r12
/* 802D0340 002C60C0  4E 80 04 21 */	bctrl 
/* 802D0344 002C60C4  81 83 00 00 */	lwz r12, 0(r3)
/* 802D0348 002C60C8  7F A4 EB 78 */	mr r4, r29
/* 802D034C 002C60CC  7F C5 F3 78 */	mr r5, r30
/* 802D0350 002C60D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D0354 002C60D4  7D 89 03 A6 */	mtctr r12
/* 802D0358 002C60D8  4E 80 04 21 */	bctrl 
/* 802D035C 002C60DC  54 60 46 3E */	srwi r0, r3, 0x18
/* 802D0360 002C60E0  7C 03 07 74 */	extsb r3, r0
/* 802D0364 002C60E4  7C 03 00 D0 */	neg r0, r3
/* 802D0368 002C60E8  7C 00 1B 78 */	or r0, r0, r3
/* 802D036C 002C60EC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D0370 002C60F0  41 82 00 08 */	beq lbl_802D0378
/* 802D0374 002C60F4  7F 7F DB 78 */	mr r31, r27
lbl_802D0378:
/* 802D0378 002C60F8  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D037C 002C60FC  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D0380 002C6100  7F 64 DB 78 */	mr r4, r27
/* 802D0384 002C6104  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D0388 002C6108  7D 89 03 A6 */	mtctr r12
/* 802D038C 002C610C  4E 80 04 21 */	bctrl 
/* 802D0390 002C6110  7C 7B 1B 78 */	mr r27, r3
lbl_802D0394:
/* 802D0394 002C6114  3C 1B 00 01 */	addis r0, r27, 1
/* 802D0398 002C6118  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D039C 002C611C  40 82 FF 54 */	bne lbl_802D02F0
lbl_802D03A0:
/* 802D03A0 002C6120  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 802D03A4 002C6124  3C 1F 00 01 */	addis r0, r31, 1
/* 802D03A8 002C6128  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D03AC 002C612C  38 03 FF FF */	addi r0, r3, -1
/* 802D03B0 002C6130  90 1E 00 38 */	stw r0, 0x38(r30)
/* 802D03B4 002C6134  41 82 00 10 */	beq lbl_802D03C4
/* 802D03B8 002C6138  54 00 10 3A */	slwi r0, r0, 2
/* 802D03BC 002C613C  7C 7E 02 14 */	add r3, r30, r0
/* 802D03C0 002C6140  93 E3 00 18 */	stw r31, 0x18(r3)
lbl_802D03C4:
/* 802D03C4 002C6144  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802D03C8 002C6148  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802D03CC 002C614C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802D03D0 002C6150  80 85 00 04 */	lwz r4, 4(r5)
/* 802D03D4 002C6154  7C 60 22 78 */	xor r0, r3, r4
/* 802D03D8 002C6158  7C 00 00 34 */	cntlzw r0, r0
/* 802D03DC 002C615C  7C 60 00 30 */	slw r0, r3, r0
/* 802D03E0 002C6160  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D03E4 002C6164  7C 03 07 74 */	extsb r3, r0
/* 802D03E8 002C6168  7C 03 00 D0 */	neg r0, r3
/* 802D03EC 002C616C  7C 00 1B 78 */	or r0, r0, r3
/* 802D03F0 002C6170  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D03F4 002C6174  41 82 00 24 */	beq lbl_802D0418
/* 802D03F8 002C6178  3C 60 80 41 */	lis r3, lbl_804104B8@ha
/* 802D03FC 002C617C  38 63 04 B8 */	addi r3, r3, lbl_804104B8@l
/* 802D0400 002C6180  38 03 00 0F */	addi r0, r3, 0xf
/* 802D0404 002C6184  90 04 00 00 */	stw r0, 0(r4)
/* 802D0408 002C6188  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802D040C 002C618C  38 04 00 0C */	addi r0, r4, 0xc
/* 802D0410 002C6190  90 64 00 04 */	stw r3, 4(r4)
/* 802D0414 002C6194  90 05 00 04 */	stw r0, 4(r5)
lbl_802D0418:
/* 802D0418 002C6198  20 7F FF FF */	subfic r3, r31, -1
/* 802D041C 002C619C  38 1F 00 01 */	addi r0, r31, 1
/* 802D0420 002C61A0  7C 60 03 78 */	or r0, r3, r0
/* 802D0424 002C61A4  54 03 C9 CE */	rlwinm r3, r0, 0x19, 7, 7
/* 802D0428 002C61A8  81 41 00 00 */	lwz r10, 0(r1)
/* 802D042C 002C61AC  BB 6A FF EC */	lmw r27, -0x14(r10)
/* 802D0430 002C61B0  80 0A 00 04 */	lwz r0, 4(r10)
/* 802D0434 002C61B4  7C 08 03 A6 */	mtlr r0
/* 802D0438 002C61B8  7D 41 53 78 */	mr r1, r10
/* 802D043C 002C61BC  4E 80 00 20 */	blr 

.global hkShapeCollection$7getMaximumProjection
hkShapeCollection$7getMaximumProjection:
/* 802D0440 002C61C0  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802D0444 002C61C4  7C 2C 0B 78 */	mr r12, r1
/* 802D0448 002C61C8  21 6B FD D0 */	subfic r11, r11, -560
/* 802D044C 002C61CC  7C 21 59 6E */	stwux r1, r1, r11
/* 802D0450 002C61D0  7C 08 02 A6 */	mflr r0
/* 802D0454 002C61D4  90 0C 00 04 */	stw r0, 4(r12)
/* 802D0458 002C61D8  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802D045C 002C61DC  F3 EC 0F F8 */	psq_st f31, -8(r12), 0, qr0
/* 802D0460 002C61E0  3C C0 80 53 */	lis r6, lbl_80532448@ha
/* 802D0464 002C61E4  38 C6 24 48 */	addi r6, r6, lbl_80532448@l
/* 802D0468 002C61E8  93 EC FF EC */	stw r31, -0x14(r12)
/* 802D046C 002C61EC  7C 9F 23 78 */	mr r31, r4
/* 802D0470 002C61F0  93 CC FF E8 */	stw r30, -0x18(r12)
/* 802D0474 002C61F4  7C 7E 1B 78 */	mr r30, r3
/* 802D0478 002C61F8  93 AC FF E4 */	stw r29, -0x1c(r12)
/* 802D047C 002C61FC  80 86 00 0C */	lwz r4, 0xc(r6)
/* 802D0480 002C6200  80 A6 00 04 */	lwz r5, 4(r6)
/* 802D0484 002C6204  7C 80 2A 78 */	xor r0, r4, r5
/* 802D0488 002C6208  7C 00 00 34 */	cntlzw r0, r0
/* 802D048C 002C620C  7C 80 00 30 */	slw r0, r4, r0
/* 802D0490 002C6210  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D0494 002C6214  7C 04 07 74 */	extsb r4, r0
/* 802D0498 002C6218  7C 04 00 D0 */	neg r0, r4
/* 802D049C 002C621C  7C 00 23 78 */	or r0, r0, r4
/* 802D04A0 002C6220  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D04A4 002C6224  41 82 00 24 */	beq lbl_802D04C8
/* 802D04A8 002C6228  3C 80 80 41 */	lis r4, lbl_804104B8@ha
/* 802D04AC 002C622C  38 84 04 B8 */	addi r4, r4, lbl_804104B8@l
/* 802D04B0 002C6230  38 04 00 2F */	addi r0, r4, 0x2f
/* 802D04B4 002C6234  90 05 00 00 */	stw r0, 0(r5)
/* 802D04B8 002C6238  7C 8C 42 E6 */	mftb r4, 0x10c
/* 802D04BC 002C623C  38 05 00 0C */	addi r0, r5, 0xc
/* 802D04C0 002C6240  90 85 00 04 */	stw r4, 4(r5)
/* 802D04C4 002C6244  90 06 00 04 */	stw r0, 4(r6)
lbl_802D04C8:
/* 802D04C8 002C6248  85 83 00 0C */	lwzu r12, 0xc(r3)
/* 802D04CC 002C624C  C3 E2 AD 78 */	lfs f31, lbl_805A4098-_SDA2_BASE_(r2)
/* 802D04D0 002C6250  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D04D4 002C6254  7D 89 03 A6 */	mtctr r12
/* 802D04D8 002C6258  4E 80 04 21 */	bctrl 
/* 802D04DC 002C625C  7C 7D 1B 78 */	mr r29, r3
/* 802D04E0 002C6260  48 00 00 60 */	b lbl_802D0540
lbl_802D04E4:
/* 802D04E4 002C6264  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 802D04E8 002C6268  38 7E 00 0C */	addi r3, r30, 0xc
/* 802D04EC 002C626C  7F A4 EB 78 */	mr r4, r29
/* 802D04F0 002C6270  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D04F4 002C6274  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D04F8 002C6278  7D 89 03 A6 */	mtctr r12
/* 802D04FC 002C627C  4E 80 04 21 */	bctrl 
/* 802D0500 002C6280  81 83 00 00 */	lwz r12, 0(r3)
/* 802D0504 002C6284  7F E4 FB 78 */	mr r4, r31
/* 802D0508 002C6288  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D050C 002C628C  7D 89 03 A6 */	mtctr r12
/* 802D0510 002C6290  4E 80 04 21 */	bctrl 
/* 802D0514 002C6294  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 802D0518 002C6298  40 81 00 08 */	ble lbl_802D0520
/* 802D051C 002C629C  48 00 00 08 */	b lbl_802D0524
lbl_802D0520:
/* 802D0520 002C62A0  FF E0 08 90 */	fmr f31, f1
lbl_802D0524:
/* 802D0524 002C62A4  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 802D0528 002C62A8  38 7E 00 0C */	addi r3, r30, 0xc
/* 802D052C 002C62AC  7F A4 EB 78 */	mr r4, r29
/* 802D0530 002C62B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D0534 002C62B4  7D 89 03 A6 */	mtctr r12
/* 802D0538 002C62B8  4E 80 04 21 */	bctrl 
/* 802D053C 002C62BC  7C 7D 1B 78 */	mr r29, r3
lbl_802D0540:
/* 802D0540 002C62C0  3C 1D 00 01 */	addis r0, r29, 1
/* 802D0544 002C62C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D0548 002C62C8  40 82 FF 9C */	bne lbl_802D04E4
/* 802D054C 002C62CC  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802D0550 002C62D0  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802D0554 002C62D4  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802D0558 002C62D8  80 85 00 04 */	lwz r4, 4(r5)
/* 802D055C 002C62DC  7C 60 22 78 */	xor r0, r3, r4
/* 802D0560 002C62E0  7C 00 00 34 */	cntlzw r0, r0
/* 802D0564 002C62E4  7C 60 00 30 */	slw r0, r3, r0
/* 802D0568 002C62E8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D056C 002C62EC  7C 03 07 74 */	extsb r3, r0
/* 802D0570 002C62F0  7C 03 00 D0 */	neg r0, r3
/* 802D0574 002C62F4  7C 00 1B 78 */	or r0, r0, r3
/* 802D0578 002C62F8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D057C 002C62FC  41 82 00 24 */	beq lbl_802D05A0
/* 802D0580 002C6300  3C 60 80 41 */	lis r3, lbl_804104B8@ha
/* 802D0584 002C6304  38 63 04 B8 */	addi r3, r3, lbl_804104B8@l
/* 802D0588 002C6308  38 03 00 0F */	addi r0, r3, 0xf
/* 802D058C 002C630C  90 04 00 00 */	stw r0, 0(r4)
/* 802D0590 002C6310  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802D0594 002C6314  38 04 00 0C */	addi r0, r4, 0xc
/* 802D0598 002C6318  90 64 00 04 */	stw r3, 4(r4)
/* 802D059C 002C631C  90 05 00 04 */	stw r0, 4(r5)
lbl_802D05A0:
/* 802D05A0 002C6320  FC 20 F8 90 */	fmr f1, f31
/* 802D05A4 002C6324  81 41 00 00 */	lwz r10, 0(r1)
/* 802D05A8 002C6328  38 00 FF F8 */	li r0, -8
/* 802D05AC 002C632C  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802D05B0 002C6330  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802D05B4 002C6334  83 EA FF EC */	lwz r31, -0x14(r10)
/* 802D05B8 002C6338  83 CA FF E8 */	lwz r30, -0x18(r10)
/* 802D05BC 002C633C  83 AA FF E4 */	lwz r29, -0x1c(r10)
/* 802D05C0 002C6340  80 0A 00 04 */	lwz r0, 4(r10)
/* 802D05C4 002C6344  7C 08 03 A6 */	mtlr r0
/* 802D05C8 002C6348  7D 41 53 78 */	mr r1, r10
/* 802D05CC 002C634C  4E 80 00 20 */	blr 

.global hkShapeCollection$7castRayWithCollector
hkShapeCollection$7castRayWithCollector:
/* 802D05D0 002C6350  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802D05D4 002C6354  7C 2C 0B 78 */	mr r12, r1
/* 802D05D8 002C6358  21 6B FD B0 */	subfic r11, r11, -592
/* 802D05DC 002C635C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D05E0 002C6360  7C 08 02 A6 */	mflr r0
/* 802D05E4 002C6364  3D 20 80 53 */	lis r9, lbl_80532448@ha
/* 802D05E8 002C6368  90 0C 00 04 */	stw r0, 4(r12)
/* 802D05EC 002C636C  39 29 24 48 */	addi r9, r9, lbl_80532448@l
/* 802D05F0 002C6370  BF 6C FF EC */	stmw r27, -0x14(r12)
/* 802D05F4 002C6374  7C BE 2B 78 */	mr r30, r5
/* 802D05F8 002C6378  7C 7C 1B 78 */	mr r28, r3
/* 802D05FC 002C637C  7C 9D 23 78 */	mr r29, r4
/* 802D0600 002C6380  7C DF 33 78 */	mr r31, r6
/* 802D0604 002C6384  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802D0608 002C6388  81 09 00 04 */	lwz r8, 4(r9)
/* 802D060C 002C638C  7C E0 42 78 */	xor r0, r7, r8
/* 802D0610 002C6390  7C 00 00 34 */	cntlzw r0, r0
/* 802D0614 002C6394  7C E0 00 30 */	slw r0, r7, r0
/* 802D0618 002C6398  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D061C 002C639C  7C 05 07 74 */	extsb r5, r0
/* 802D0620 002C63A0  7C 05 00 D0 */	neg r0, r5
/* 802D0624 002C63A4  7C 00 2B 78 */	or r0, r0, r5
/* 802D0628 002C63A8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D062C 002C63AC  41 82 00 20 */	beq lbl_802D064C
/* 802D0630 002C63B0  3C A0 80 41 */	lis r5, lbl_804104B8@ha
/* 802D0634 002C63B4  38 A5 04 B8 */	addi r5, r5, lbl_804104B8@l
/* 802D0638 002C63B8  90 A8 00 00 */	stw r5, 0(r8)
/* 802D063C 002C63BC  7C AC 42 E6 */	mftb r5, 0x10c
/* 802D0640 002C63C0  38 08 00 0C */	addi r0, r8, 0xc
/* 802D0644 002C63C4  90 A8 00 04 */	stw r5, 4(r8)
/* 802D0648 002C63C8  90 09 00 04 */	stw r0, 4(r9)
lbl_802D064C:
/* 802D064C 002C63CC  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802D0650 002C63D0  2C 00 00 00 */	cmpwi r0, 0
/* 802D0654 002C63D4  40 82 00 94 */	bne lbl_802D06E8
/* 802D0658 002C63D8  85 83 00 0C */	lwzu r12, 0xc(r3)
/* 802D065C 002C63DC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D0660 002C63E0  7D 89 03 A6 */	mtctr r12
/* 802D0664 002C63E4  4E 80 04 21 */	bctrl 
/* 802D0668 002C63E8  7C 7B 1B 78 */	mr r27, r3
/* 802D066C 002C63EC  48 00 00 6C */	b lbl_802D06D8
lbl_802D0670:
/* 802D0670 002C63F0  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D0674 002C63F4  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D0678 002C63F8  7F 64 DB 78 */	mr r4, r27
/* 802D067C 002C63FC  38 A1 00 30 */	addi r5, r1, 0x30
/* 802D0680 002C6400  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D0684 002C6404  7D 89 03 A6 */	mtctr r12
/* 802D0688 002C6408  4E 80 04 21 */	bctrl 
/* 802D068C 002C640C  80 1E 00 08 */	lwz r0, 8(r30)
/* 802D0690 002C6410  7F A4 EB 78 */	mr r4, r29
/* 802D0694 002C6414  93 C1 00 2C */	stw r30, 0x2c(r1)
/* 802D0698 002C6418  7F E6 FB 78 */	mr r6, r31
/* 802D069C 002C641C  38 A1 00 20 */	addi r5, r1, 0x20
/* 802D06A0 002C6420  90 01 00 28 */	stw r0, 0x28(r1)
/* 802D06A4 002C6424  90 61 00 20 */	stw r3, 0x20(r1)
/* 802D06A8 002C6428  93 61 00 24 */	stw r27, 0x24(r1)
/* 802D06AC 002C642C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D06B0 002C6430  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D06B4 002C6434  7D 89 03 A6 */	mtctr r12
/* 802D06B8 002C6438  4E 80 04 21 */	bctrl 
/* 802D06BC 002C643C  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D06C0 002C6440  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D06C4 002C6444  7F 64 DB 78 */	mr r4, r27
/* 802D06C8 002C6448  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D06CC 002C644C  7D 89 03 A6 */	mtctr r12
/* 802D06D0 002C6450  4E 80 04 21 */	bctrl 
/* 802D06D4 002C6454  7C 7B 1B 78 */	mr r27, r3
lbl_802D06D8:
/* 802D06D8 002C6458  3C 1B 00 01 */	addis r0, r27, 1
/* 802D06DC 002C645C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D06E0 002C6460  40 82 FF 90 */	bne lbl_802D0670
/* 802D06E4 002C6464  48 00 00 C8 */	b lbl_802D07AC
lbl_802D06E8:
/* 802D06E8 002C6468  85 83 00 0C */	lwzu r12, 0xc(r3)
/* 802D06EC 002C646C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D06F0 002C6470  7D 89 03 A6 */	mtctr r12
/* 802D06F4 002C6474  4E 80 04 21 */	bctrl 
/* 802D06F8 002C6478  7C 7B 1B 78 */	mr r27, r3
/* 802D06FC 002C647C  48 00 00 A4 */	b lbl_802D07A0
lbl_802D0700:
/* 802D0700 002C6480  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802D0704 002C6484  7F A4 EB 78 */	mr r4, r29
/* 802D0708 002C6488  7F 85 E3 78 */	mr r5, r28
/* 802D070C 002C648C  7F 66 DB 78 */	mr r6, r27
/* 802D0710 002C6490  81 83 00 00 */	lwz r12, 0(r3)
/* 802D0714 002C6494  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D0718 002C6498  7D 89 03 A6 */	mtctr r12
/* 802D071C 002C649C  4E 80 04 21 */	bctrl 
/* 802D0720 002C64A0  54 60 46 3E */	srwi r0, r3, 0x18
/* 802D0724 002C64A4  7C 03 07 74 */	extsb r3, r0
/* 802D0728 002C64A8  7C 03 00 D0 */	neg r0, r3
/* 802D072C 002C64AC  7C 00 1B 78 */	or r0, r0, r3
/* 802D0730 002C64B0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D0734 002C64B4  41 82 00 50 */	beq lbl_802D0784
/* 802D0738 002C64B8  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D073C 002C64BC  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D0740 002C64C0  7F 64 DB 78 */	mr r4, r27
/* 802D0744 002C64C4  38 A1 00 30 */	addi r5, r1, 0x30
/* 802D0748 002C64C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D074C 002C64CC  7D 89 03 A6 */	mtctr r12
/* 802D0750 002C64D0  4E 80 04 21 */	bctrl 
/* 802D0754 002C64D4  80 1E 00 08 */	lwz r0, 8(r30)
/* 802D0758 002C64D8  7F A4 EB 78 */	mr r4, r29
/* 802D075C 002C64DC  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802D0760 002C64E0  7F E6 FB 78 */	mr r6, r31
/* 802D0764 002C64E4  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D0768 002C64E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802D076C 002C64EC  90 61 00 10 */	stw r3, 0x10(r1)
/* 802D0770 002C64F0  93 61 00 14 */	stw r27, 0x14(r1)
/* 802D0774 002C64F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802D0778 002C64F8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D077C 002C64FC  7D 89 03 A6 */	mtctr r12
/* 802D0780 002C6500  4E 80 04 21 */	bctrl 
lbl_802D0784:
/* 802D0784 002C6504  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802D0788 002C6508  38 7C 00 0C */	addi r3, r28, 0xc
/* 802D078C 002C650C  7F 64 DB 78 */	mr r4, r27
/* 802D0790 002C6510  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D0794 002C6514  7D 89 03 A6 */	mtctr r12
/* 802D0798 002C6518  4E 80 04 21 */	bctrl 
/* 802D079C 002C651C  7C 7B 1B 78 */	mr r27, r3
lbl_802D07A0:
/* 802D07A0 002C6520  3C 1B 00 01 */	addis r0, r27, 1
/* 802D07A4 002C6524  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D07A8 002C6528  40 82 FF 58 */	bne lbl_802D0700
lbl_802D07AC:
/* 802D07AC 002C652C  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802D07B0 002C6530  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802D07B4 002C6534  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802D07B8 002C6538  80 85 00 04 */	lwz r4, 4(r5)
/* 802D07BC 002C653C  7C 60 22 78 */	xor r0, r3, r4
/* 802D07C0 002C6540  7C 00 00 34 */	cntlzw r0, r0
/* 802D07C4 002C6544  7C 60 00 30 */	slw r0, r3, r0
/* 802D07C8 002C6548  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D07CC 002C654C  7C 03 07 74 */	extsb r3, r0
/* 802D07D0 002C6550  7C 03 00 D0 */	neg r0, r3
/* 802D07D4 002C6554  7C 00 1B 78 */	or r0, r0, r3
/* 802D07D8 002C6558  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802D07DC 002C655C  41 82 00 24 */	beq lbl_802D0800
/* 802D07E0 002C6560  3C 60 80 41 */	lis r3, lbl_804104B8@ha
/* 802D07E4 002C6564  38 63 04 B8 */	addi r3, r3, lbl_804104B8@l
/* 802D07E8 002C6568  38 03 00 0F */	addi r0, r3, 0xf
/* 802D07EC 002C656C  90 04 00 00 */	stw r0, 0(r4)
/* 802D07F0 002C6570  7C 6C 42 E6 */	mftb r3, 0x10c
/* 802D07F4 002C6574  38 04 00 0C */	addi r0, r4, 0xc
/* 802D07F8 002C6578  90 64 00 04 */	stw r3, 4(r4)
/* 802D07FC 002C657C  90 05 00 04 */	stw r0, 4(r5)
lbl_802D0800:
/* 802D0800 002C6580  81 41 00 00 */	lwz r10, 0(r1)
/* 802D0804 002C6584  BB 6A FF EC */	lmw r27, -0x14(r10)
/* 802D0808 002C6588  80 0A 00 04 */	lwz r0, 4(r10)
/* 802D080C 002C658C  7C 08 03 A6 */	mtlr r0
/* 802D0810 002C6590  7D 41 53 78 */	mr r1, r10
/* 802D0814 002C6594  4E 80 00 20 */	blr 

.global hkShapeCollection$7getContainer
hkShapeCollection$7getContainer:
/* 802D0818 002C6598  2C 03 00 00 */	cmpwi r3, 0
/* 802D081C 002C659C  4D 82 00 20 */	beqlr 
/* 802D0820 002C65A0  38 63 00 0C */	addi r3, r3, 0xc
/* 802D0824 002C65A4  4E 80 00 20 */	blr 

.global __sinit_$3hkShapeCollectionClass_cpp
__sinit_$3hkShapeCollectionClass_cpp:
/* 802D0828 002C65A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D082C 002C65AC  7C 08 02 A6 */	mflr r0
/* 802D0830 002C65B0  3C A0 80 41 */	lis r5, lbl_80410530@ha
/* 802D0834 002C65B4  3C 60 80 53 */	lis r3, lbl_80532708@ha
/* 802D0838 002C65B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D083C 002C65BC  38 A5 05 30 */	addi r5, r5, lbl_80410530@l
/* 802D0840 002C65C0  3C 80 80 41 */	lis r4, lbl_80410544@ha
/* 802D0844 002C65C4  38 C0 00 01 */	li r6, 1
/* 802D0848 002C65C8  90 A1 00 08 */	stw r5, 8(r1)
/* 802D084C 002C65CC  3C A0 80 53 */	lis r5, lbl_80532830@ha
/* 802D0850 002C65D0  38 00 00 00 */	li r0, 0
/* 802D0854 002C65D4  38 63 27 08 */	addi r3, r3, lbl_80532708@l
/* 802D0858 002C65D8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D085C 002C65DC  38 84 05 44 */	addi r4, r4, lbl_80410544@l
/* 802D0860 002C65E0  38 A5 28 30 */	addi r5, r5, lbl_80532830@l
/* 802D0864 002C65E4  38 C0 00 14 */	li r6, 0x14
/* 802D0868 002C65E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D086C 002C65EC  38 E0 00 00 */	li r7, 0
/* 802D0870 002C65F0  39 00 00 01 */	li r8, 1
/* 802D0874 002C65F4  39 20 00 00 */	li r9, 0
/* 802D0878 002C65F8  39 40 00 00 */	li r10, 0
/* 802D087C 002C65FC  4B FA BF 8D */	bl hkClass$7__ct
/* 802D0880 002C6600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0884 002C6604  7C 08 03 A6 */	mtlr r0
/* 802D0888 002C6608  38 21 00 20 */	addi r1, r1, 0x20
/* 802D088C 002C660C  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gpiAppendCharToBuffer
gpiAppendCharToBuffer:
/* 8036A1A4 0035FF24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036A1A8 0035FF28  7C 08 02 A6 */	mflr r0
/* 8036A1AC 0035FF2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036A1B0 0035FF30  39 61 00 20 */	addi r11, r1, 0x20
/* 8036A1B4 0035FF34  48 08 71 6D */	bl _savegpr_27
/* 8036A1B8 0035FF38  83 E4 00 08 */	lwz r31, 8(r4)
/* 8036A1BC 0035FF3C  7C 7B 1B 78 */	mr r27, r3
/* 8036A1C0 0035FF40  83 C4 00 04 */	lwz r30, 4(r4)
/* 8036A1C4 0035FF44  7C 9C 23 78 */	mr r28, r4
/* 8036A1C8 0035FF48  80 C4 00 00 */	lwz r6, 0(r4)
/* 8036A1CC 0035FF4C  7C BD 2B 78 */	mr r29, r5
/* 8036A1D0 0035FF50  7C 1E F8 00 */	cmpw r30, r31
/* 8036A1D4 0035FF54  40 82 00 38 */	bne lbl_8036A20C
/* 8036A1D8 0035FF58  38 9E 40 01 */	addi r4, r30, 0x4001
/* 8036A1DC 0035FF5C  7C C3 33 78 */	mr r3, r6
/* 8036A1E0 0035FF60  3B DE 40 00 */	addi r30, r30, 0x4000
/* 8036A1E4 0035FF64  4B FF 3E 15 */	bl gsirealloc
/* 8036A1E8 0035FF68  2C 03 00 00 */	cmpwi r3, 0
/* 8036A1EC 0035FF6C  7C 66 1B 78 */	mr r6, r3
/* 8036A1F0 0035FF70  40 82 00 1C */	bne lbl_8036A20C
/* 8036A1F4 0035FF74  3C 80 80 49 */	lis r4, lbl_8048ED80@ha
/* 8036A1F8 0035FF78  7F 63 DB 78 */	mr r3, r27
/* 8036A1FC 0035FF7C  38 84 ED 80 */	addi r4, r4, lbl_8048ED80@l
/* 8036A200 0035FF80  48 00 90 E1 */	bl gpiSetErrorString
/* 8036A204 0035FF84  38 60 00 01 */	li r3, 1
/* 8036A208 0035FF88  48 00 00 2C */	b lbl_8036A234
lbl_8036A20C:
/* 8036A20C 0035FF8C  7F A6 F9 AE */	stbx r29, r6, r31
/* 8036A210 0035FF90  7C 9F 32 14 */	add r4, r31, r6
/* 8036A214 0035FF94  38 00 00 00 */	li r0, 0
/* 8036A218 0035FF98  38 60 00 00 */	li r3, 0
/* 8036A21C 0035FF9C  98 04 00 01 */	stb r0, 1(r4)
/* 8036A220 0035FFA0  80 9C 00 08 */	lwz r4, 8(r28)
/* 8036A224 0035FFA4  93 DC 00 04 */	stw r30, 4(r28)
/* 8036A228 0035FFA8  38 04 00 01 */	addi r0, r4, 1
/* 8036A22C 0035FFAC  90 1C 00 08 */	stw r0, 8(r28)
/* 8036A230 0035FFB0  90 DC 00 00 */	stw r6, 0(r28)
lbl_8036A234:
/* 8036A234 0035FFB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8036A238 0035FFB8  48 08 71 35 */	bl _restgpr_27
/* 8036A23C 0035FFBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036A240 0035FFC0  7C 08 03 A6 */	mtlr r0
/* 8036A244 0035FFC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8036A248 0035FFC8  4E 80 00 20 */	blr 

.global gpiAppendStringToBufferLen
gpiAppendStringToBufferLen:
/* 8036A24C 0035FFCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036A250 0035FFD0  7C 08 02 A6 */	mflr r0
/* 8036A254 0035FFD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8036A258 0035FFD8  39 61 00 30 */	addi r11, r1, 0x30
/* 8036A25C 0035FFDC  48 08 70 BD */	bl _savegpr_25
/* 8036A260 0035FFE0  2C 05 00 00 */	cmpwi r5, 0
/* 8036A264 0035FFE4  7C 79 1B 78 */	mr r25, r3
/* 8036A268 0035FFE8  7C 9A 23 78 */	mr r26, r4
/* 8036A26C 0035FFEC  7C BB 2B 78 */	mr r27, r5
/* 8036A270 0035FFF0  7C DC 33 78 */	mr r28, r6
/* 8036A274 0035FFF4  40 82 00 0C */	bne lbl_8036A280
/* 8036A278 0035FFF8  38 60 00 00 */	li r3, 0
/* 8036A27C 0035FFFC  48 00 00 94 */	b lbl_8036A310
lbl_8036A280:
/* 8036A280 00360000  83 E4 00 08 */	lwz r31, 8(r4)
/* 8036A284 00360004  83 C4 00 04 */	lwz r30, 4(r4)
/* 8036A288 00360008  83 A4 00 00 */	lwz r29, 0(r4)
/* 8036A28C 0036000C  7C 1F F0 50 */	subf r0, r31, r30
/* 8036A290 00360010  7C 00 30 00 */	cmpw r0, r6
/* 8036A294 00360014  40 80 00 48 */	bge lbl_8036A2DC
/* 8036A298 00360018  2C 06 40 00 */	cmpwi r6, 0x4000
/* 8036A29C 0036001C  38 00 40 00 */	li r0, 0x4000
/* 8036A2A0 00360020  41 80 00 08 */	blt lbl_8036A2A8
/* 8036A2A4 00360024  7F 80 E3 78 */	mr r0, r28
lbl_8036A2A8:
/* 8036A2A8 00360028  7F DE 02 14 */	add r30, r30, r0
/* 8036A2AC 0036002C  7F A3 EB 78 */	mr r3, r29
/* 8036A2B0 00360030  38 9E 00 01 */	addi r4, r30, 1
/* 8036A2B4 00360034  4B FF 3D 45 */	bl gsirealloc
/* 8036A2B8 00360038  2C 03 00 00 */	cmpwi r3, 0
/* 8036A2BC 0036003C  7C 7D 1B 78 */	mr r29, r3
/* 8036A2C0 00360040  40 82 00 1C */	bne lbl_8036A2DC
/* 8036A2C4 00360044  3C 80 80 49 */	lis r4, lbl_8048ED80@ha
/* 8036A2C8 00360048  7F 23 CB 78 */	mr r3, r25
/* 8036A2CC 0036004C  38 84 ED 80 */	addi r4, r4, lbl_8048ED80@l
/* 8036A2D0 00360050  48 00 90 11 */	bl gpiSetErrorString
/* 8036A2D4 00360054  38 60 00 01 */	li r3, 1
/* 8036A2D8 00360058  48 00 00 38 */	b lbl_8036A310
lbl_8036A2DC:
/* 8036A2DC 0036005C  7F 64 DB 78 */	mr r4, r27
/* 8036A2E0 00360060  7F 85 E3 78 */	mr r5, r28
/* 8036A2E4 00360064  7C 7D FA 14 */	add r3, r29, r31
/* 8036A2E8 00360068  4B C9 A0 51 */	bl memcpy
/* 8036A2EC 0036006C  7C 1F E2 14 */	add r0, r31, r28
/* 8036A2F0 00360070  38 60 00 00 */	li r3, 0
/* 8036A2F4 00360074  7C 7D 01 AE */	stbx r3, r29, r0
/* 8036A2F8 00360078  38 60 00 00 */	li r3, 0
/* 8036A2FC 0036007C  80 1A 00 08 */	lwz r0, 8(r26)
/* 8036A300 00360080  93 DA 00 04 */	stw r30, 4(r26)
/* 8036A304 00360084  7C 00 E2 14 */	add r0, r0, r28
/* 8036A308 00360088  90 1A 00 08 */	stw r0, 8(r26)
/* 8036A30C 0036008C  93 BA 00 00 */	stw r29, 0(r26)
lbl_8036A310:
/* 8036A310 00360090  39 61 00 30 */	addi r11, r1, 0x30
/* 8036A314 00360094  48 08 70 51 */	bl _restgpr_25
/* 8036A318 00360098  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036A31C 0036009C  7C 08 03 A6 */	mtlr r0
/* 8036A320 003600A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8036A324 003600A4  4E 80 00 20 */	blr 

.global gpiAppendStringToBuffer
gpiAppendStringToBuffer:
/* 8036A328 003600A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036A32C 003600AC  7C 08 02 A6 */	mflr r0
/* 8036A330 003600B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036A334 003600B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036A338 003600B8  7C BF 2B 78 */	mr r31, r5
/* 8036A33C 003600BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036A340 003600C0  7C 9E 23 78 */	mr r30, r4
/* 8036A344 003600C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036A348 003600C8  7C 7D 1B 78 */	mr r29, r3
/* 8036A34C 003600CC  7F E3 FB 78 */	mr r3, r31
/* 8036A350 003600D0  48 08 62 F1 */	bl strlen
/* 8036A354 003600D4  7C 66 1B 78 */	mr r6, r3
/* 8036A358 003600D8  7F A3 EB 78 */	mr r3, r29
/* 8036A35C 003600DC  7F C4 F3 78 */	mr r4, r30
/* 8036A360 003600E0  7F E5 FB 78 */	mr r5, r31
/* 8036A364 003600E4  4B FF FE E9 */	bl gpiAppendStringToBufferLen
/* 8036A368 003600E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036A36C 003600EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036A370 003600F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036A374 003600F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036A378 003600F8  7C 08 03 A6 */	mtlr r0
/* 8036A37C 003600FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8036A380 00360100  4E 80 00 20 */	blr 

.global gpiAppendIntToBuffer
gpiAppendIntToBuffer:
/* 8036A384 00360104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036A388 00360108  7C 08 02 A6 */	mflr r0
/* 8036A38C 0036010C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036A390 00360110  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036A394 00360114  7C 9F 23 78 */	mr r31, r4
/* 8036A398 00360118  38 8D B2 78 */	addi r4, r13, lbl_8059F698-_SDA_BASE_
/* 8036A39C 0036011C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036A3A0 00360120  7C 7E 1B 78 */	mr r30, r3
/* 8036A3A4 00360124  38 61 00 08 */	addi r3, r1, 8
/* 8036A3A8 00360128  4C C6 31 82 */	crclr 6
/* 8036A3AC 0036012C  48 08 E6 51 */	bl sprintf
/* 8036A3B0 00360130  38 61 00 08 */	addi r3, r1, 8
/* 8036A3B4 00360134  48 08 62 8D */	bl strlen
/* 8036A3B8 00360138  7C 66 1B 78 */	mr r6, r3
/* 8036A3BC 0036013C  7F C3 F3 78 */	mr r3, r30
/* 8036A3C0 00360140  7F E4 FB 78 */	mr r4, r31
/* 8036A3C4 00360144  38 A1 00 08 */	addi r5, r1, 8
/* 8036A3C8 00360148  4B FF FE 85 */	bl gpiAppendStringToBufferLen
/* 8036A3CC 0036014C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036A3D0 00360150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036A3D4 00360154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036A3D8 00360158  7C 08 03 A6 */	mtlr r0
/* 8036A3DC 0036015C  38 21 00 20 */	addi r1, r1, 0x20
/* 8036A3E0 00360160  4E 80 00 20 */	blr 

.global gpiSendData
gpiSendData:
/* 8036A3E4 00360164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036A3E8 00360168  7C 08 02 A6 */	mflr r0
/* 8036A3EC 0036016C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036A3F0 00360170  39 61 00 20 */	addi r11, r1, 0x20
/* 8036A3F4 00360174  48 08 6F 2D */	bl _savegpr_27
/* 8036A3F8 00360178  7C 9C 23 78 */	mr r28, r4
/* 8036A3FC 0036017C  7C 7B 1B 78 */	mr r27, r3
/* 8036A400 00360180  7C A4 2B 78 */	mr r4, r5
/* 8036A404 00360184  7C C5 33 78 */	mr r5, r6
/* 8036A408 00360188  7C FD 3B 78 */	mr r29, r7
/* 8036A40C 0036018C  7D 1E 43 78 */	mr r30, r8
/* 8036A410 00360190  7D 3F 4B 78 */	mr r31, r9
/* 8036A414 00360194  7F 83 E3 78 */	mr r3, r28
/* 8036A418 00360198  38 C0 00 00 */	li r6, 0
/* 8036A41C 0036019C  4B FF 20 F5 */	bl send
/* 8036A420 003601A0  2C 03 FF FF */	cmpwi r3, -1
/* 8036A424 003601A4  40 82 00 80 */	bne lbl_8036A4A4
/* 8036A428 003601A8  7F 83 E3 78 */	mr r3, r28
/* 8036A42C 003601AC  4B FF 22 2D */	bl GOAGetLastError
/* 8036A430 003601B0  2C 03 FF FA */	cmpwi r3, -6
/* 8036A434 003601B4  41 82 00 60 */	beq lbl_8036A494
/* 8036A438 003601B8  2C 03 FF E6 */	cmpwi r3, -26
/* 8036A43C 003601BC  41 82 00 58 */	beq lbl_8036A494
/* 8036A440 003601C0  2C 03 FF B4 */	cmpwi r3, -76
/* 8036A444 003601C4  41 82 00 50 */	beq lbl_8036A494
/* 8036A448 003601C8  88 1F 00 00 */	lbz r0, 0(r31)
/* 8036A44C 003601CC  2C 00 00 50 */	cmpwi r0, 0x50
/* 8036A450 003601D0  40 82 00 18 */	bne lbl_8036A468
/* 8036A454 003601D4  88 1F 00 01 */	lbz r0, 1(r31)
/* 8036A458 003601D8  2C 00 00 52 */	cmpwi r0, 0x52
/* 8036A45C 003601DC  40 82 00 0C */	bne lbl_8036A468
/* 8036A460 003601E0  38 60 00 03 */	li r3, 3
/* 8036A464 003601E4  48 00 00 6C */	b lbl_8036A4D0
lbl_8036A468:
/* 8036A468 003601E8  3C A0 80 49 */	lis r5, lbl_8048ED90@ha
/* 8036A46C 003601EC  7F 63 DB 78 */	mr r3, r27
/* 8036A470 003601F0  38 A5 ED 90 */	addi r5, r5, lbl_8048ED90@l
/* 8036A474 003601F4  38 80 00 05 */	li r4, 5
/* 8036A478 003601F8  48 00 8E 19 */	bl gpiSetError
/* 8036A47C 003601FC  7F 63 DB 78 */	mr r3, r27
/* 8036A480 00360200  38 80 00 03 */	li r4, 3
/* 8036A484 00360204  38 A0 00 00 */	li r5, 0
/* 8036A488 00360208  48 00 06 69 */	bl gpiCallErrorCallback
/* 8036A48C 0036020C  38 60 00 03 */	li r3, 3
/* 8036A490 00360210  48 00 00 40 */	b lbl_8036A4D0
lbl_8036A494:
/* 8036A494 00360214  38 00 00 00 */	li r0, 0
/* 8036A498 00360218  90 1E 00 00 */	stw r0, 0(r30)
/* 8036A49C 0036021C  90 1D 00 00 */	stw r0, 0(r29)
/* 8036A4A0 00360220  48 00 00 2C */	b lbl_8036A4CC
lbl_8036A4A4:
/* 8036A4A4 00360224  2C 03 00 00 */	cmpwi r3, 0
/* 8036A4A8 00360228  40 82 00 18 */	bne lbl_8036A4C0
/* 8036A4AC 0036022C  38 60 00 00 */	li r3, 0
/* 8036A4B0 00360230  38 00 00 01 */	li r0, 1
/* 8036A4B4 00360234  90 7E 00 00 */	stw r3, 0(r30)
/* 8036A4B8 00360238  90 1D 00 00 */	stw r0, 0(r29)
/* 8036A4BC 0036023C  48 00 00 10 */	b lbl_8036A4CC
lbl_8036A4C0:
/* 8036A4C0 00360240  90 7E 00 00 */	stw r3, 0(r30)
/* 8036A4C4 00360244  38 00 00 00 */	li r0, 0
/* 8036A4C8 00360248  90 1D 00 00 */	stw r0, 0(r29)
lbl_8036A4CC:
/* 8036A4CC 0036024C  38 60 00 00 */	li r3, 0
lbl_8036A4D0:
/* 8036A4D0 00360250  39 61 00 20 */	addi r11, r1, 0x20
/* 8036A4D4 00360254  48 08 6E 99 */	bl _restgpr_27
/* 8036A4D8 00360258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036A4DC 0036025C  7C 08 03 A6 */	mtlr r0
/* 8036A4E0 00360260  38 21 00 20 */	addi r1, r1, 0x20
/* 8036A4E4 00360264  4E 80 00 20 */	blr 

.global gpiSendOrBufferChar
gpiSendOrBufferChar:
/* 8036A4E8 00360268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036A4EC 0036026C  7C 08 02 A6 */	mflr r0
/* 8036A4F0 00360270  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036A4F4 00360274  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036A4F8 00360278  7C 9F 23 78 */	mr r31, r4
/* 8036A4FC 0036027C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036A500 00360280  7C 7E 1B 78 */	mr r30, r3
/* 8036A504 00360284  98 A1 00 08 */	stb r5, 8(r1)
/* 8036A508 00360288  80 64 00 38 */	lwz r3, 0x38(r4)
/* 8036A50C 0036028C  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8036A510 00360290  7C 03 00 51 */	subf. r0, r3, r0
/* 8036A514 00360294  40 82 00 54 */	bne lbl_8036A568
/* 8036A518 00360298  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 8036A51C 0036029C  4B FF 00 75 */	bl ArrayLength
/* 8036A520 003602A0  2C 03 00 00 */	cmpwi r3, 0
/* 8036A524 003602A4  40 82 00 44 */	bne lbl_8036A568
/* 8036A528 003602A8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8036A52C 003602AC  7F C3 F3 78 */	mr r3, r30
/* 8036A530 003602B0  38 A1 00 08 */	addi r5, r1, 8
/* 8036A534 003602B4  38 E1 00 10 */	addi r7, r1, 0x10
/* 8036A538 003602B8  39 01 00 0C */	addi r8, r1, 0xc
/* 8036A53C 003602BC  38 C0 00 01 */	li r6, 1
/* 8036A540 003602C0  39 2D B2 7C */	addi r9, r13, lbl_8059F69C-_SDA_BASE_
/* 8036A544 003602C4  4B FF FE A1 */	bl gpiSendData
/* 8036A548 003602C8  2C 03 00 00 */	cmpwi r3, 0
/* 8036A54C 003602CC  41 82 00 08 */	beq lbl_8036A554
/* 8036A550 003602D0  48 00 00 2C */	b lbl_8036A57C
lbl_8036A554:
/* 8036A554 003602D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036A558 003602D8  2C 00 00 00 */	cmpwi r0, 0
/* 8036A55C 003602DC  41 82 00 0C */	beq lbl_8036A568
/* 8036A560 003602E0  38 60 00 00 */	li r3, 0
/* 8036A564 003602E4  48 00 00 18 */	b lbl_8036A57C
lbl_8036A568:
/* 8036A568 003602E8  88 01 00 08 */	lbz r0, 8(r1)
/* 8036A56C 003602EC  7F C3 F3 78 */	mr r3, r30
/* 8036A570 003602F0  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8036A574 003602F4  7C 05 07 74 */	extsb r5, r0
/* 8036A578 003602F8  4B FF FC 2D */	bl gpiAppendCharToBuffer
lbl_8036A57C:
/* 8036A57C 003602FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036A580 00360300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036A584 00360304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036A588 00360308  7C 08 03 A6 */	mtlr r0
/* 8036A58C 0036030C  38 21 00 20 */	addi r1, r1, 0x20
/* 8036A590 00360310  4E 80 00 20 */	blr 

.global gpiSendOrBufferStringLen
gpiSendOrBufferStringLen:
/* 8036A594 00360314  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036A598 00360318  7C 08 02 A6 */	mflr r0
/* 8036A59C 0036031C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8036A5A0 00360320  39 61 00 30 */	addi r11, r1, 0x30
/* 8036A5A4 00360324  48 08 6D 7D */	bl _savegpr_27
/* 8036A5A8 00360328  2C 06 00 00 */	cmpwi r6, 0
/* 8036A5AC 0036032C  7C DE 33 78 */	mr r30, r6
/* 8036A5B0 00360330  7C 7B 1B 78 */	mr r27, r3
/* 8036A5B4 00360334  7C 9C 23 78 */	mr r28, r4
/* 8036A5B8 00360338  7C BD 2B 78 */	mr r29, r5
/* 8036A5BC 0036033C  3B E0 00 00 */	li r31, 0
/* 8036A5C0 00360340  40 82 00 0C */	bne lbl_8036A5CC
/* 8036A5C4 00360344  38 60 00 00 */	li r3, 0
/* 8036A5C8 00360348  48 00 00 A0 */	b lbl_8036A668
lbl_8036A5CC:
/* 8036A5CC 0036034C  80 64 00 38 */	lwz r3, 0x38(r4)
/* 8036A5D0 00360350  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8036A5D4 00360354  7C 03 00 51 */	subf. r0, r3, r0
/* 8036A5D8 00360358  40 82 00 64 */	bne lbl_8036A63C
/* 8036A5DC 0036035C  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 8036A5E0 00360360  4B FE FF B1 */	bl ArrayLength
/* 8036A5E4 00360364  2C 03 00 00 */	cmpwi r3, 0
/* 8036A5E8 00360368  40 82 00 54 */	bne lbl_8036A63C
lbl_8036A5EC:
/* 8036A5EC 0036036C  80 9C 00 08 */	lwz r4, 8(r28)
/* 8036A5F0 00360370  7F 63 DB 78 */	mr r3, r27
/* 8036A5F4 00360374  7F C6 F3 78 */	mr r6, r30
/* 8036A5F8 00360378  7C BD FA 14 */	add r5, r29, r31
/* 8036A5FC 0036037C  38 E1 00 0C */	addi r7, r1, 0xc
/* 8036A600 00360380  39 01 00 08 */	addi r8, r1, 8
/* 8036A604 00360384  39 2D B2 7C */	addi r9, r13, lbl_8059F69C-_SDA_BASE_
/* 8036A608 00360388  4B FF FD DD */	bl gpiSendData
/* 8036A60C 0036038C  2C 03 00 00 */	cmpwi r3, 0
/* 8036A610 00360390  41 82 00 08 */	beq lbl_8036A618
/* 8036A614 00360394  48 00 00 54 */	b lbl_8036A668
lbl_8036A618:
/* 8036A618 00360398  80 01 00 08 */	lwz r0, 8(r1)
/* 8036A61C 0036039C  2C 00 00 00 */	cmpwi r0, 0
/* 8036A620 003603A0  41 82 00 0C */	beq lbl_8036A62C
/* 8036A624 003603A4  7F FF 02 14 */	add r31, r31, r0
/* 8036A628 003603A8  7F C0 F0 50 */	subf r30, r0, r30
lbl_8036A62C:
/* 8036A62C 003603AC  2C 00 00 00 */	cmpwi r0, 0
/* 8036A630 003603B0  41 82 00 0C */	beq lbl_8036A63C
/* 8036A634 003603B4  2C 1E 00 00 */	cmpwi r30, 0
/* 8036A638 003603B8  40 82 FF B4 */	bne lbl_8036A5EC
lbl_8036A63C:
/* 8036A63C 003603BC  2C 1E 00 00 */	cmpwi r30, 0
/* 8036A640 003603C0  41 82 00 24 */	beq lbl_8036A664
/* 8036A644 003603C4  7F 63 DB 78 */	mr r3, r27
/* 8036A648 003603C8  7F C6 F3 78 */	mr r6, r30
/* 8036A64C 003603CC  38 9C 00 2C */	addi r4, r28, 0x2c
/* 8036A650 003603D0  7C BD FA 14 */	add r5, r29, r31
/* 8036A654 003603D4  4B FF FB F9 */	bl gpiAppendStringToBufferLen
/* 8036A658 003603D8  2C 03 00 00 */	cmpwi r3, 0
/* 8036A65C 003603DC  41 82 00 08 */	beq lbl_8036A664
/* 8036A660 003603E0  48 00 00 08 */	b lbl_8036A668
lbl_8036A664:
/* 8036A664 003603E4  38 60 00 00 */	li r3, 0
lbl_8036A668:
/* 8036A668 003603E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8036A66C 003603EC  48 08 6D 01 */	bl _restgpr_27
/* 8036A670 003603F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036A674 003603F4  7C 08 03 A6 */	mtlr r0
/* 8036A678 003603F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8036A67C 003603FC  4E 80 00 20 */	blr 

.global gpiSendOrBufferString
gpiSendOrBufferString:
/* 8036A680 00360400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036A684 00360404  7C 08 02 A6 */	mflr r0
/* 8036A688 00360408  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036A68C 0036040C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036A690 00360410  7C BF 2B 78 */	mr r31, r5
/* 8036A694 00360414  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036A698 00360418  7C 9E 23 78 */	mr r30, r4
/* 8036A69C 0036041C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036A6A0 00360420  7C 7D 1B 78 */	mr r29, r3
/* 8036A6A4 00360424  7F E3 FB 78 */	mr r3, r31
/* 8036A6A8 00360428  48 08 5F 99 */	bl strlen
/* 8036A6AC 0036042C  7C 66 1B 78 */	mr r6, r3
/* 8036A6B0 00360430  7F A3 EB 78 */	mr r3, r29
/* 8036A6B4 00360434  7F C4 F3 78 */	mr r4, r30
/* 8036A6B8 00360438  7F E5 FB 78 */	mr r5, r31
/* 8036A6BC 0036043C  4B FF FE D9 */	bl gpiSendOrBufferStringLen
/* 8036A6C0 00360440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036A6C4 00360444  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036A6C8 00360448  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036A6CC 0036044C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036A6D0 00360450  7C 08 03 A6 */	mtlr r0
/* 8036A6D4 00360454  38 21 00 20 */	addi r1, r1, 0x20
/* 8036A6D8 00360458  4E 80 00 20 */	blr 

.global gpiRecvToBuffer
gpiRecvToBuffer:
/* 8036A6DC 0036045C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036A6E0 00360460  7C 08 02 A6 */	mflr r0
/* 8036A6E4 00360464  90 01 00 44 */	stw r0, 0x44(r1)
/* 8036A6E8 00360468  39 61 00 40 */	addi r11, r1, 0x40
/* 8036A6EC 0036046C  48 08 6C 15 */	bl _savegpr_19
/* 8036A6F0 00360470  83 85 00 00 */	lwz r28, 0(r5)
/* 8036A6F4 00360474  7C 73 1B 78 */	mr r19, r3
/* 8036A6F8 00360478  83 65 00 08 */	lwz r27, 8(r5)
/* 8036A6FC 0036047C  7C 94 23 78 */	mr r20, r4
/* 8036A700 00360480  83 45 00 04 */	lwz r26, 4(r5)
/* 8036A704 00360484  7C B5 2B 78 */	mr r21, r5
/* 8036A708 00360488  7C D6 33 78 */	mr r22, r6
/* 8036A70C 0036048C  7C F7 3B 78 */	mr r23, r7
/* 8036A710 00360490  3B 20 00 00 */	li r25, 0
/* 8036A714 00360494  3B 00 00 00 */	li r24, 0
/* 8036A718 00360498  3B C0 00 00 */	li r30, 0
/* 8036A71C 0036049C  3F E0 00 02 */	lis r31, 2
lbl_8036A720:
/* 8036A720 003604A0  38 9B 40 00 */	addi r4, r27, 0x4000
/* 8036A724 003604A4  7C 04 D0 00 */	cmpw r4, r26
/* 8036A728 003604A8  40 81 00 38 */	ble lbl_8036A760
/* 8036A72C 003604AC  7C 9A 23 78 */	mr r26, r4
/* 8036A730 003604B0  7F 83 E3 78 */	mr r3, r28
/* 8036A734 003604B4  38 84 00 01 */	addi r4, r4, 1
/* 8036A738 003604B8  4B FF 38 C1 */	bl gsirealloc
/* 8036A73C 003604BC  2C 03 00 00 */	cmpwi r3, 0
/* 8036A740 003604C0  7C 7C 1B 78 */	mr r28, r3
/* 8036A744 003604C4  40 82 00 1C */	bne lbl_8036A760
/* 8036A748 003604C8  3C 80 80 49 */	lis r4, lbl_8048ED80@ha
/* 8036A74C 003604CC  7E 63 9B 78 */	mr r3, r19
/* 8036A750 003604D0  38 84 ED 80 */	addi r4, r4, lbl_8048ED80@l
/* 8036A754 003604D4  48 00 8B 8D */	bl gpiSetErrorString
/* 8036A758 003604D8  38 60 00 01 */	li r3, 1
/* 8036A75C 003604DC  48 00 00 A8 */	b lbl_8036A804
lbl_8036A760:
/* 8036A760 003604E0  7E 83 A3 78 */	mr r3, r20
/* 8036A764 003604E4  7C 9C DA 14 */	add r4, r28, r27
/* 8036A768 003604E8  7C BB D0 50 */	subf r5, r27, r26
/* 8036A76C 003604EC  38 C0 00 00 */	li r6, 0
/* 8036A770 003604F0  4B FF 1D 09 */	bl recv
/* 8036A774 003604F4  2C 03 FF FF */	cmpwi r3, -1
/* 8036A778 003604F8  7C 7D 1B 78 */	mr r29, r3
/* 8036A77C 003604FC  40 82 00 3C */	bne lbl_8036A7B8
/* 8036A780 00360500  7E 83 A3 78 */	mr r3, r20
/* 8036A784 00360504  4B FF 1E D5 */	bl GOAGetLastError
/* 8036A788 00360508  2C 03 FF FA */	cmpwi r3, -6
/* 8036A78C 0036050C  41 82 00 44 */	beq lbl_8036A7D0
/* 8036A790 00360510  2C 03 FF E6 */	cmpwi r3, -26
/* 8036A794 00360514  41 82 00 3C */	beq lbl_8036A7D0
/* 8036A798 00360518  2C 03 FF B4 */	cmpwi r3, -76
/* 8036A79C 0036051C  41 82 00 34 */	beq lbl_8036A7D0
/* 8036A7A0 00360520  3C 80 80 49 */	lis r4, lbl_8048EDB8@ha
/* 8036A7A4 00360524  7E 63 9B 78 */	mr r3, r19
/* 8036A7A8 00360528  38 84 ED B8 */	addi r4, r4, lbl_8048EDB8@l
/* 8036A7AC 0036052C  48 00 8B 35 */	bl gpiSetErrorString
/* 8036A7B0 00360530  38 60 00 03 */	li r3, 3
/* 8036A7B4 00360534  48 00 00 50 */	b lbl_8036A804
lbl_8036A7B8:
/* 8036A7B8 00360538  2C 03 00 00 */	cmpwi r3, 0
/* 8036A7BC 0036053C  40 82 00 0C */	bne lbl_8036A7C8
/* 8036A7C0 00360540  3B 00 00 01 */	li r24, 1
/* 8036A7C4 00360544  48 00 00 0C */	b lbl_8036A7D0
lbl_8036A7C8:
/* 8036A7C8 00360548  7F 7B 1A 14 */	add r27, r27, r3
/* 8036A7CC 0036054C  7F 39 1A 14 */	add r25, r25, r3
lbl_8036A7D0:
/* 8036A7D0 00360550  2C 1D 00 00 */	cmpwi r29, 0
/* 8036A7D4 00360554  7F DC D9 AE */	stbx r30, r28, r27
/* 8036A7D8 00360558  41 80 00 14 */	blt lbl_8036A7EC
/* 8036A7DC 0036055C  2C 18 00 00 */	cmpwi r24, 0
/* 8036A7E0 00360560  40 82 00 0C */	bne lbl_8036A7EC
/* 8036A7E4 00360564  7C 19 F8 00 */	cmpw r25, r31
/* 8036A7E8 00360568  41 80 FF 38 */	blt lbl_8036A720
lbl_8036A7EC:
/* 8036A7EC 0036056C  93 95 00 00 */	stw r28, 0(r21)
/* 8036A7F0 00360570  38 60 00 00 */	li r3, 0
/* 8036A7F4 00360574  93 75 00 08 */	stw r27, 8(r21)
/* 8036A7F8 00360578  93 55 00 04 */	stw r26, 4(r21)
/* 8036A7FC 0036057C  93 36 00 00 */	stw r25, 0(r22)
/* 8036A800 00360580  93 17 00 00 */	stw r24, 0(r23)
lbl_8036A804:
/* 8036A804 00360584  39 61 00 40 */	addi r11, r1, 0x40
/* 8036A808 00360588  48 08 6B 45 */	bl _restgpr_19
/* 8036A80C 0036058C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8036A810 00360590  7C 08 03 A6 */	mtlr r0
/* 8036A814 00360594  38 21 00 40 */	addi r1, r1, 0x40
/* 8036A818 00360598  4E 80 00 20 */	blr 

.global gpiSendFromBuffer
gpiSendFromBuffer:
/* 8036A81C 0036059C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036A820 003605A0  7C 08 02 A6 */	mflr r0
/* 8036A824 003605A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8036A828 003605A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8036A82C 003605AC  48 08 6A DD */	bl _savegpr_21
/* 8036A830 003605B0  83 65 00 08 */	lwz r27, 8(r5)
/* 8036A834 003605B4  7C 75 1B 78 */	mr r21, r3
/* 8036A838 003605B8  83 85 00 0C */	lwz r28, 0xc(r5)
/* 8036A83C 003605BC  7C 96 23 78 */	mr r22, r4
/* 8036A840 003605C0  83 A5 00 00 */	lwz r29, 0(r5)
/* 8036A844 003605C4  7C B7 2B 78 */	mr r23, r5
/* 8036A848 003605C8  7F DC D8 51 */	subf. r30, r28, r27
/* 8036A84C 003605CC  7C D8 33 78 */	mr r24, r6
/* 8036A850 003605D0  7C F9 3B 78 */	mr r25, r7
/* 8036A854 003605D4  7D 1A 43 78 */	mr r26, r8
/* 8036A858 003605D8  3B E0 00 00 */	li r31, 0
/* 8036A85C 003605DC  40 82 00 0C */	bne lbl_8036A868
/* 8036A860 003605E0  38 60 00 00 */	li r3, 0
/* 8036A864 003605E4  48 00 00 A0 */	b lbl_8036A904
lbl_8036A868:
/* 8036A868 003605E8  7C 1C FA 14 */	add r0, r28, r31
/* 8036A86C 003605EC  7E A3 AB 78 */	mr r3, r21
/* 8036A870 003605F0  7E C4 B3 78 */	mr r4, r22
/* 8036A874 003605F4  7F C6 F3 78 */	mr r6, r30
/* 8036A878 003605F8  7F 49 D3 78 */	mr r9, r26
/* 8036A87C 003605FC  7C BD 02 14 */	add r5, r29, r0
/* 8036A880 00360600  38 E1 00 0C */	addi r7, r1, 0xc
/* 8036A884 00360604  39 01 00 08 */	addi r8, r1, 8
/* 8036A888 00360608  4B FF FB 5D */	bl gpiSendData
/* 8036A88C 0036060C  2C 03 00 00 */	cmpwi r3, 0
/* 8036A890 00360610  41 82 00 08 */	beq lbl_8036A898
/* 8036A894 00360614  48 00 00 70 */	b lbl_8036A904
lbl_8036A898:
/* 8036A898 00360618  80 01 00 08 */	lwz r0, 8(r1)
/* 8036A89C 0036061C  2C 00 00 00 */	cmpwi r0, 0
/* 8036A8A0 00360620  41 82 00 0C */	beq lbl_8036A8AC
/* 8036A8A4 00360624  7F FF 02 14 */	add r31, r31, r0
/* 8036A8A8 00360628  7F C0 F0 50 */	subf r30, r0, r30
lbl_8036A8AC:
/* 8036A8AC 0036062C  2C 00 00 00 */	cmpwi r0, 0
/* 8036A8B0 00360630  41 82 00 0C */	beq lbl_8036A8BC
/* 8036A8B4 00360634  2C 1E 00 00 */	cmpwi r30, 0
/* 8036A8B8 00360638  40 82 FF B0 */	bne lbl_8036A868
lbl_8036A8BC:
/* 8036A8BC 0036063C  2C 19 00 00 */	cmpwi r25, 0
/* 8036A8C0 00360640  41 82 00 24 */	beq lbl_8036A8E4
/* 8036A8C4 00360644  2C 1F 00 00 */	cmpwi r31, 0
/* 8036A8C8 00360648  40 81 00 20 */	ble lbl_8036A8E8
/* 8036A8CC 0036064C  7F A3 EB 78 */	mr r3, r29
/* 8036A8D0 00360650  7C 9D FA 14 */	add r4, r29, r31
/* 8036A8D4 00360654  38 BE 00 01 */	addi r5, r30, 1
/* 8036A8D8 00360658  48 08 B7 55 */	bl memmove
/* 8036A8DC 0036065C  7F 7F D8 50 */	subf r27, r31, r27
/* 8036A8E0 00360660  48 00 00 08 */	b lbl_8036A8E8
lbl_8036A8E4:
/* 8036A8E4 00360664  7F 9C FA 14 */	add r28, r28, r31
lbl_8036A8E8:
/* 8036A8E8 00360668  2C 18 00 00 */	cmpwi r24, 0
/* 8036A8EC 0036066C  93 77 00 08 */	stw r27, 8(r23)
/* 8036A8F0 00360670  93 97 00 0C */	stw r28, 0xc(r23)
/* 8036A8F4 00360674  41 82 00 0C */	beq lbl_8036A900
/* 8036A8F8 00360678  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036A8FC 0036067C  90 18 00 00 */	stw r0, 0(r24)
lbl_8036A900:
/* 8036A900 00360680  38 60 00 00 */	li r3, 0
lbl_8036A904:
/* 8036A904 00360684  39 61 00 40 */	addi r11, r1, 0x40
/* 8036A908 00360688  48 08 6A 4D */	bl _restgpr_21
/* 8036A90C 0036068C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8036A910 00360690  7C 08 03 A6 */	mtlr r0
/* 8036A914 00360694  38 21 00 40 */	addi r1, r1, 0x40
/* 8036A918 00360698  4E 80 00 20 */	blr 

.global gpiReadMessageFromBuffer
gpiReadMessageFromBuffer:
/* 8036A91C 0036069C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036A920 003606A0  7C 08 02 A6 */	mflr r0
/* 8036A924 003606A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8036A928 003606A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8036A92C 003606AC  48 08 69 F1 */	bl _savegpr_26
/* 8036A930 003606B0  3B A0 00 00 */	li r29, 0
/* 8036A934 003606B4  7C 9F 23 78 */	mr r31, r4
/* 8036A938 003606B8  93 A5 00 00 */	stw r29, 0(r5)
/* 8036A93C 003606BC  7C BA 2B 78 */	mr r26, r5
/* 8036A940 003606C0  7C DB 33 78 */	mr r27, r6
/* 8036A944 003606C4  7C FC 3B 78 */	mr r28, r7
/* 8036A948 003606C8  80 04 00 08 */	lwz r0, 8(r4)
/* 8036A94C 003606CC  2C 00 00 05 */	cmpwi r0, 5
/* 8036A950 003606D0  40 80 00 0C */	bge lbl_8036A95C
/* 8036A954 003606D4  38 60 00 00 */	li r3, 0
/* 8036A958 003606D8  48 00 01 00 */	b lbl_8036AA58
lbl_8036A95C:
/* 8036A95C 003606DC  80 64 00 00 */	lwz r3, 0(r4)
/* 8036A960 003606E0  38 80 00 0A */	li r4, 0xa
/* 8036A964 003606E4  48 08 FB F5 */	bl strchr
/* 8036A968 003606E8  2C 03 00 00 */	cmpwi r3, 0
/* 8036A96C 003606EC  7C 7E 1B 78 */	mr r30, r3
/* 8036A970 003606F0  41 82 00 E4 */	beq lbl_8036AA54
/* 8036A974 003606F4  38 8D B2 80 */	addi r4, r13, lbl_8059F6A0-_SDA_BASE_
/* 8036A978 003606F8  38 A0 00 05 */	li r5, 5
/* 8036A97C 003606FC  38 63 FF FB */	addi r3, r3, -5
/* 8036A980 00360700  48 08 FB 99 */	bl strncmp
/* 8036A984 00360704  2C 03 00 00 */	cmpwi r3, 0
/* 8036A988 00360708  41 82 00 0C */	beq lbl_8036A994
/* 8036A98C 0036070C  38 60 00 03 */	li r3, 3
/* 8036A990 00360710  48 00 00 C8 */	b lbl_8036AA58
lbl_8036A994:
/* 8036A994 00360714  9B BE 00 00 */	stb r29, 0(r30)
/* 8036A998 00360718  38 A1 00 08 */	addi r5, r1, 8
/* 8036A99C 0036071C  38 8D B2 88 */	addi r4, r13, lbl_8059F6A8-_SDA_BASE_
/* 8036A9A0 00360720  38 C0 00 10 */	li r6, 0x10
/* 8036A9A4 00360724  80 7F 00 00 */	lwz r3, 0(r31)
/* 8036A9A8 00360728  48 00 85 6D */	bl gpiValueForKey
/* 8036A9AC 0036072C  2C 03 00 00 */	cmpwi r3, 0
/* 8036A9B0 00360730  40 82 00 0C */	bne lbl_8036A9BC
/* 8036A9B4 00360734  38 60 00 03 */	li r3, 3
/* 8036A9B8 00360738  48 00 00 A0 */	b lbl_8036AA58
lbl_8036A9BC:
/* 8036A9BC 0036073C  38 61 00 08 */	addi r3, r1, 8
/* 8036A9C0 00360740  48 09 1D 45 */	bl atoi
/* 8036A9C4 00360744  90 7B 00 00 */	stw r3, 0(r27)
/* 8036A9C8 00360748  38 A1 00 08 */	addi r5, r1, 8
/* 8036A9CC 0036074C  38 8D B2 8C */	addi r4, r13, lbl_8059F6AC-_SDA_BASE_
/* 8036A9D0 00360750  38 C0 00 10 */	li r6, 0x10
/* 8036A9D4 00360754  80 7F 00 00 */	lwz r3, 0(r31)
/* 8036A9D8 00360758  48 00 85 3D */	bl gpiValueForKey
/* 8036A9DC 0036075C  2C 03 00 00 */	cmpwi r3, 0
/* 8036A9E0 00360760  40 82 00 0C */	bne lbl_8036A9EC
/* 8036A9E4 00360764  38 60 00 03 */	li r3, 3
/* 8036A9E8 00360768  48 00 00 70 */	b lbl_8036AA58
lbl_8036A9EC:
/* 8036A9EC 0036076C  38 61 00 08 */	addi r3, r1, 8
/* 8036A9F0 00360770  48 09 1D 15 */	bl atoi
/* 8036A9F4 00360774  80 1F 00 00 */	lwz r0, 0(r31)
/* 8036A9F8 00360778  80 BF 00 08 */	lwz r5, 8(r31)
/* 8036A9FC 0036077C  7C 00 F0 50 */	subf r0, r0, r30
/* 8036AA00 00360780  7C 83 02 14 */	add r4, r3, r0
/* 8036AA04 00360784  38 04 00 01 */	addi r0, r4, 1
/* 8036AA08 00360788  7C 05 00 00 */	cmpw r5, r0
/* 8036AA0C 0036078C  40 81 00 40 */	ble lbl_8036AA4C
/* 8036AA10 00360790  7C 83 F2 14 */	add r4, r3, r30
/* 8036AA14 00360794  88 04 00 01 */	lbz r0, 1(r4)
/* 8036AA18 00360798  7C 00 07 75 */	extsb. r0, r0
/* 8036AA1C 0036079C  41 82 00 0C */	beq lbl_8036AA28
/* 8036AA20 003607A0  38 60 00 03 */	li r3, 3
/* 8036AA24 003607A4  48 00 00 34 */	b lbl_8036AA58
lbl_8036AA28:
/* 8036AA28 003607A8  38 1E 00 01 */	addi r0, r30, 1
/* 8036AA2C 003607AC  90 1A 00 00 */	stw r0, 0(r26)
/* 8036AA30 003607B0  90 7C 00 00 */	stw r3, 0(r28)
/* 8036AA34 003607B4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8036AA38 003607B8  7C 00 F0 50 */	subf r0, r0, r30
/* 8036AA3C 003607BC  7C 63 02 14 */	add r3, r3, r0
/* 8036AA40 003607C0  38 03 00 02 */	addi r0, r3, 2
/* 8036AA44 003607C4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8036AA48 003607C8  48 00 00 0C */	b lbl_8036AA54
lbl_8036AA4C:
/* 8036AA4C 003607CC  38 00 00 0A */	li r0, 0xa
/* 8036AA50 003607D0  98 1E 00 00 */	stb r0, 0(r30)
lbl_8036AA54:
/* 8036AA54 003607D4  38 60 00 00 */	li r3, 0
lbl_8036AA58:
/* 8036AA58 003607D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8036AA5C 003607DC  48 08 69 0D */	bl _restgpr_26
/* 8036AA60 003607E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036AA64 003607E4  7C 08 03 A6 */	mtlr r0
/* 8036AA68 003607E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8036AA6C 003607EC  4E 80 00 20 */	blr 

.global gpiClipBufferToPosition
gpiClipBufferToPosition:
/* 8036AA70 003607F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036AA74 003607F4  7C 08 02 A6 */	mflr r0
/* 8036AA78 003607F8  2C 04 00 00 */	cmpwi r4, 0
/* 8036AA7C 003607FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036AA80 00360800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036AA84 00360804  7C 9F 23 78 */	mr r31, r4
/* 8036AA88 00360808  41 82 00 1C */	beq lbl_8036AAA4
/* 8036AA8C 0036080C  80 64 00 00 */	lwz r3, 0(r4)
/* 8036AA90 00360810  2C 03 00 00 */	cmpwi r3, 0
/* 8036AA94 00360814  41 82 00 10 */	beq lbl_8036AAA4
/* 8036AA98 00360818  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 8036AA9C 0036081C  2C 06 00 00 */	cmpwi r6, 0
/* 8036AAA0 00360820  40 82 00 0C */	bne lbl_8036AAAC
lbl_8036AAA4:
/* 8036AAA4 00360824  38 60 00 00 */	li r3, 0
/* 8036AAA8 00360828  48 00 00 34 */	b lbl_8036AADC
lbl_8036AAAC:
/* 8036AAAC 0036082C  80 04 00 08 */	lwz r0, 8(r4)
/* 8036AAB0 00360830  7C A6 00 51 */	subf. r5, r6, r0
/* 8036AAB4 00360834  90 A4 00 08 */	stw r5, 8(r4)
/* 8036AAB8 00360838  41 82 00 0C */	beq lbl_8036AAC4
/* 8036AABC 0036083C  7C 83 32 14 */	add r4, r3, r6
/* 8036AAC0 00360840  48 08 B5 6D */	bl memmove
lbl_8036AAC4:
/* 8036AAC4 00360844  80 9F 00 00 */	lwz r4, 0(r31)
/* 8036AAC8 00360848  38 A0 00 00 */	li r5, 0
/* 8036AACC 0036084C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8036AAD0 00360850  38 60 00 00 */	li r3, 0
/* 8036AAD4 00360854  7C A4 01 AE */	stbx r5, r4, r0
/* 8036AAD8 00360858  90 BF 00 0C */	stw r5, 0xc(r31)
lbl_8036AADC:
/* 8036AADC 0036085C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036AAE0 00360860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036AAE4 00360864  7C 08 03 A6 */	mtlr r0
/* 8036AAE8 00360868  38 21 00 10 */	addi r1, r1, 0x10
/* 8036AAEC 0036086C  4E 80 00 20 */	blr 


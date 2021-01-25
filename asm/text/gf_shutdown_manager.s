.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfShutdownManager$7initilize
gfShutdownManager$7initilize:
/* 80030340 000260C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030344 000260C4  7C 08 02 A6 */	mflr r0
/* 80030348 000260C8  3C 60 80 03 */	lis r3, gfShutdownManager$7ResetCallback@ha
/* 8003034C 000260CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030350 000260D0  38 63 03 74 */	addi r3, r3, gfShutdownManager$7ResetCallback@l
/* 80030354 000260D4  48 1B 20 F5 */	bl OSSetResetCallback
/* 80030358 000260D8  3C 60 80 03 */	lis r3, gfShutdownManager$7PowerOffCallback@ha
/* 8003035C 000260DC  38 63 03 88 */	addi r3, r3, gfShutdownManager$7PowerOffCallback@l
/* 80030360 000260E0  48 1B 21 A5 */	bl OSSetPowerCallback
/* 80030364 000260E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030368 000260E8  7C 08 03 A6 */	mtlr r0
/* 8003036C 000260EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80030370 000260F0  4E 80 00 20 */	blr 

.global gfShutdownManager$7ResetCallback
gfShutdownManager$7ResetCallback:
/* 80030374 000260F4  3C 60 80 49 */	lis r3, lbl_80495390@ha
/* 80030378 000260F8  88 03 53 90 */	lbz r0, lbl_80495390@l(r3)
/* 8003037C 000260FC  60 00 00 40 */	ori r0, r0, 0x40
/* 80030380 00026100  98 03 53 90 */	stb r0, 0x5390(r3)
/* 80030384 00026104  4E 80 00 20 */	blr 

.global gfShutdownManager$7PowerOffCallback
gfShutdownManager$7PowerOffCallback:
/* 80030388 00026108  3C 60 80 49 */	lis r3, lbl_80495390@ha
/* 8003038C 0002610C  88 03 53 90 */	lbz r0, lbl_80495390@l(r3)
/* 80030390 00026110  60 00 00 20 */	ori r0, r0, 0x20
/* 80030394 00026114  98 03 53 90 */	stb r0, 0x5390(r3)
/* 80030398 00026118  4E 80 00 20 */	blr 

.global gfShutdownManager$7enterRestartProcess
gfShutdownManager$7enterRestartProcess:
/* 8003039C 0002611C  88 03 00 00 */	lbz r0, 0(r3)
/* 800303A0 00026120  60 00 00 40 */	ori r0, r0, 0x40
/* 800303A4 00026124  98 03 00 00 */	stb r0, 0(r3)
/* 800303A8 00026128  4E 80 00 20 */	blr 

.global gfShutdownManager$7enterReturnToWiiMenuProcess
gfShutdownManager$7enterReturnToWiiMenuProcess:
/* 800303AC 0002612C  88 03 00 00 */	lbz r0, 0(r3)
/* 800303B0 00026130  60 00 00 10 */	ori r0, r0, 0x10
/* 800303B4 00026134  98 03 00 00 */	stb r0, 0(r3)
/* 800303B8 00026138  4E 80 00 20 */	blr 

.global func_800303BC
func_800303BC:
/* 800303BC 0002613C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800303C0 00026140  7C 08 02 A6 */	mflr r0
/* 800303C4 00026144  90 01 00 14 */	stw r0, 0x14(r1)
/* 800303C8 00026148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800303CC 0002614C  7C 7F 1B 78 */	mr r31, r3
/* 800303D0 00026150  88 83 00 00 */	lbz r4, 0(r3)
/* 800303D4 00026154  54 80 D7 FF */	rlwinm. r0, r4, 0x1a, 0x1f, 0x1f
/* 800303D8 00026158  40 82 00 14 */	bne lbl_800303EC
/* 800303DC 0002615C  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 800303E0 00026160  40 82 00 0C */	bne lbl_800303EC
/* 800303E4 00026164  54 80 E7 FF */	rlwinm. r0, r4, 0x1c, 0x1f, 0x1f
/* 800303E8 00026168  41 82 01 0C */	beq lbl_800304F4
lbl_800303EC:
/* 800303EC 0002616C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 800303F0 00026170  2C 00 00 00 */	cmpwi r0, 0
/* 800303F4 00026174  41 82 01 00 */	beq lbl_800304F4
/* 800303F8 00026178  88 03 00 0D */	lbz r0, 0xd(r3)
/* 800303FC 0002617C  2C 00 00 00 */	cmpwi r0, 0
/* 80030400 00026180  41 82 00 F4 */	beq lbl_800304F4
/* 80030404 00026184  88 03 00 00 */	lbz r0, 0(r3)
/* 80030408 00026188  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8003040C 0002618C  40 82 00 48 */	bne lbl_80030454
/* 80030410 00026190  4B FE AA F9 */	bl gfErrorManager$7getInstance
/* 80030414 00026194  88 03 00 00 */	lbz r0, 0(r3)
/* 80030418 00026198  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8003041C 0002619C  28 00 00 01 */	cmplwi r0, 1
/* 80030420 000261A0  40 82 00 14 */	bne lbl_80030434
/* 80030424 000261A4  4B FE AA E5 */	bl gfErrorManager$7getInstance
/* 80030428 000261A8  88 03 00 00 */	lbz r0, 0(r3)
/* 8003042C 000261AC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80030430 000261B0  41 82 00 24 */	beq lbl_80030454
lbl_80030434:
/* 80030434 000261B4  38 60 00 2E */	li r3, 0x2e
/* 80030438 000261B8  48 02 9F B9 */	bl func_8005A3F0
/* 8003043C 000261BC  7C 64 1B 78 */	mr r4, r3
/* 80030440 000261C0  38 7F 00 08 */	addi r3, r31, 8
/* 80030444 000261C4  48 00 82 41 */	bl gfReturnStatusCallbackList$7add
/* 80030448 000261C8  88 1F 00 00 */	lbz r0, 0(r31)
/* 8003044C 000261CC  60 00 00 08 */	ori r0, r0, 8
/* 80030450 000261D0  98 1F 00 00 */	stb r0, 0(r31)
lbl_80030454:
/* 80030454 000261D4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80030458 000261D8  54 00 28 10 */	rlwinm r0, r0, 5, 0, 8
/* 8003045C 000261DC  7C 00 C6 70 */	srawi r0, r0, 0x18
/* 80030460 000261E0  2C 00 00 01 */	cmpwi r0, 1
/* 80030464 000261E4  41 82 00 2C */	beq lbl_80030490
/* 80030468 000261E8  40 80 00 8C */	bge lbl_800304F4
/* 8003046C 000261EC  2C 00 00 00 */	cmpwi r0, 0
/* 80030470 000261F0  40 80 00 08 */	bge lbl_80030478
/* 80030474 000261F4  48 00 00 80 */	b lbl_800304F4
lbl_80030478:
/* 80030478 000261F8  38 7F 00 04 */	addi r3, r31, 4
/* 8003047C 000261FC  4B FE 9F C5 */	bl gfCallBackList$7process
/* 80030480 00026200  80 1F 00 00 */	lwz r0, 0(r31)
/* 80030484 00026204  38 60 00 01 */	li r3, 1
/* 80030488 00026208  50 60 99 58 */	rlwimi r0, r3, 0x13, 5, 0xc
/* 8003048C 0002620C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80030490:
/* 80030490 00026210  38 7F 00 08 */	addi r3, r31, 8
/* 80030494 00026214  48 00 82 89 */	bl gfReturnStatusCallbackList$7process
/* 80030498 00026218  2C 03 00 00 */	cmpwi r3, 0
/* 8003049C 0002621C  41 82 00 58 */	beq lbl_800304F4
/* 800304A0 00026220  80 6D BC 20 */	lwz r3, lbl_805A0040-_SDA_BASE_(r13)
/* 800304A4 00026224  4B FF A6 D1 */	bl gfPadSystem$7stopMotorAllForce
/* 800304A8 00026228  88 7F 00 00 */	lbz r3, 0(r31)
/* 800304AC 0002622C  54 60 DF FE */	rlwinm r0, r3, 0x1b, 0x1f, 0x1f
/* 800304B0 00026230  28 00 00 01 */	cmplwi r0, 1
/* 800304B4 00026234  40 82 00 14 */	bne lbl_800304C8
/* 800304B8 00026238  80 6D BB 8C */	lwz r3, lbl_8059FFAC-_SDA_BASE_(r13)
/* 800304BC 0002623C  4B FE 69 B5 */	bl gfApplication$7reset
/* 800304C0 00026240  48 1A EE 59 */	bl OSShutdownSystem
/* 800304C4 00026244  48 00 00 30 */	b lbl_800304F4
lbl_800304C8:
/* 800304C8 00026248  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 800304CC 0002624C  28 00 00 01 */	cmplwi r0, 1
/* 800304D0 00026250  40 82 00 14 */	bne lbl_800304E4
/* 800304D4 00026254  80 6D BB 8C */	lwz r3, lbl_8059FFAC-_SDA_BASE_(r13)
/* 800304D8 00026258  4B FE 69 99 */	bl gfApplication$7reset
/* 800304DC 0002625C  48 1A F1 29 */	bl OSReturnToMenu
/* 800304E0 00026260  48 00 00 14 */	b lbl_800304F4
lbl_800304E4:
/* 800304E4 00026264  38 00 00 00 */	li r0, 0
/* 800304E8 00026268  98 1F 00 0C */	stb r0, 0xc(r31)
/* 800304EC 0002626C  80 6D BB 8C */	lwz r3, lbl_8059FFAC-_SDA_BASE_(r13)
/* 800304F0 00026270  4B FE 69 B5 */	bl gfApplication$7restart
lbl_800304F4:
/* 800304F4 00026274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800304F8 00026278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800304FC 0002627C  7C 08 03 A6 */	mtlr r0
/* 80030500 00026280  38 21 00 10 */	addi r1, r1, 0x10
/* 80030504 00026284  4E 80 00 20 */	blr 
/* 80030508 00026288  3C A0 80 49 */	lis r5, lbl_80495390@ha
/* 8003050C 0002628C  38 00 00 00 */	li r0, 0
/* 80030510 00026290  88 85 53 90 */	lbz r4, lbl_80495390@l(r5)
/* 80030514 00026294  38 65 53 90 */	addi r3, r5, 0x5390
/* 80030518 00026298  38 C0 00 01 */	li r6, 1
/* 8003051C 0002629C  90 03 00 04 */	stw r0, 4(r3)
/* 80030520 000262A0  60 84 00 80 */	ori r4, r4, 0x80
/* 80030524 000262A4  90 03 00 08 */	stw r0, 8(r3)
/* 80030528 000262A8  98 03 00 0C */	stb r0, 0xc(r3)
/* 8003052C 000262AC  54 80 07 30 */	rlwinm r0, r4, 0, 0x1c, 0x18
/* 80030530 000262B0  98 05 53 90 */	stb r0, 0x5390(r5)
/* 80030534 000262B4  80 05 53 90 */	lwz r0, 0x5390(r5)
/* 80030538 000262B8  98 C3 00 0D */	stb r6, 0xd(r3)
/* 8003053C 000262BC  54 00 03 48 */	rlwinm r0, r0, 0, 0xd, 4
/* 80030540 000262C0  90 05 53 90 */	stw r0, 0x5390(r5)
/* 80030544 000262C4  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfShutdownManager$7update
gfShutdownManager$7update:
/* 800309F8 00026778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800309FC 0002677C  7C 08 02 A6 */	mflr r0
/* 80030A00 00026780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030A04 00026784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030A08 00026788  7C 7F 1B 78 */	mr r31, r3
/* 80030A0C 0002678C  93 C1 00 08 */	stw r30, 8(r1)
/* 80030A10 00026790  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 80030A14 00026794  2C 00 00 00 */	cmpwi r0, 0
/* 80030A18 00026798  41 82 00 0C */	beq lbl_80030A24
/* 80030A1C 0002679C  38 60 00 00 */	li r3, 0
/* 80030A20 000267A0  48 00 01 30 */	b lbl_80030B50
lbl_80030A24:
/* 80030A24 000267A4  89 03 00 F8 */	lbz r8, 0xf8(r3)
/* 80030A28 000267A8  39 20 00 00 */	li r9, 0
/* 80030A2C 000267AC  38 C5 FF F8 */	addi r6, r5, -8
/* 80030A30 000267B0  38 05 FF F9 */	addi r0, r5, -7
/* 80030A34 000267B4  55 08 06 6E */	rlwinm r8, r8, 0, 0x19, 0x17
/* 80030A38 000267B8  39 40 00 02 */	li r10, 2
/* 80030A3C 000267BC  7C C7 00 34 */	cntlzw r7, r6
/* 80030A40 000267C0  7C 00 00 34 */	cntlzw r0, r0
/* 80030A44 000267C4  55 06 07 74 */	rlwinm r6, r8, 0, 0x1d, 0x1a
/* 80030A48 000267C8  39 00 00 04 */	li r8, 4
/* 80030A4C 000267CC  50 E6 0E 72 */	rlwimi r6, r7, 1, 0x19, 0x19
/* 80030A50 000267D0  2C 05 00 08 */	cmpwi r5, 8
/* 80030A54 000267D4  50 06 06 B4 */	rlwimi r6, r0, 0, 0x1a, 0x1a
/* 80030A58 000267D8  91 43 00 F0 */	stw r10, 0xf0(r3)
/* 80030A5C 000267DC  91 03 00 F4 */	stw r8, 0xf4(r3)
/* 80030A60 000267E0  99 23 00 F9 */	stb r9, 0xf9(r3)
/* 80030A64 000267E4  91 23 01 00 */	stw r9, 0x100(r3)
/* 80030A68 000267E8  98 C3 00 F8 */	stb r6, 0xf8(r3)
/* 80030A6C 000267EC  41 82 00 0C */	beq lbl_80030A78
/* 80030A70 000267F0  2C 05 00 07 */	cmpwi r5, 7
/* 80030A74 000267F4  40 82 00 08 */	bne lbl_80030A7C
lbl_80030A78:
/* 80030A78 000267F8  39 20 00 01 */	li r9, 1
lbl_80030A7C:
/* 80030A7C 000267FC  2C 09 00 00 */	cmpwi r9, 0
/* 80030A80 00026800  41 82 00 08 */	beq lbl_80030A88
/* 80030A84 00026804  38 A0 00 00 */	li r5, 0
lbl_80030A88:
/* 80030A88 00026808  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 80030A8C 0002680C  3B C0 00 00 */	li r30, 0
/* 80030A90 00026810  90 A3 01 04 */	stw r5, 0x104(r3)
/* 80030A94 00026814  2C 00 00 00 */	cmpwi r0, 0
/* 80030A98 00026818  90 83 01 08 */	stw r4, 0x108(r3)
/* 80030A9C 0002681C  93 C3 00 A0 */	stw r30, 0xa0(r3)
/* 80030AA0 00026820  41 82 00 10 */	beq lbl_80030AB0
/* 80030AA4 00026824  7C 03 03 78 */	mr r3, r0
/* 80030AA8 00026828  4B FF 3F A5 */	bl gfHeapManager$7free
/* 80030AAC 0002682C  93 DF 00 8C */	stw r30, 0x8c(r31)
lbl_80030AB0:
/* 80030AB0 00026830  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 80030AB4 00026834  2C 03 00 00 */	cmpwi r3, 0
/* 80030AB8 00026838  41 82 00 10 */	beq lbl_80030AC8
/* 80030ABC 0002683C  4B FF 3F 91 */	bl gfHeapManager$7free
/* 80030AC0 00026840  38 00 00 00 */	li r0, 0
/* 80030AC4 00026844  90 1F 00 90 */	stw r0, 0x90(r31)
lbl_80030AC8:
/* 80030AC8 00026848  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80030ACC 0002684C  2C 03 00 00 */	cmpwi r3, 0
/* 80030AD0 00026850  41 82 00 10 */	beq lbl_80030AE0
/* 80030AD4 00026854  4B FF 3F 79 */	bl gfHeapManager$7free
/* 80030AD8 00026858  38 00 00 00 */	li r0, 0
/* 80030ADC 0002685C  90 1F 00 94 */	stw r0, 0x94(r31)
lbl_80030AE0:
/* 80030AE0 00026860  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 80030AE4 00026864  2C 03 00 00 */	cmpwi r3, 0
/* 80030AE8 00026868  41 82 00 14 */	beq lbl_80030AFC
/* 80030AEC 0002686C  38 80 00 01 */	li r4, 1
/* 80030AF0 00026870  48 11 DA 31 */	bl nteExchange$7__dt
/* 80030AF4 00026874  38 00 00 00 */	li r0, 0
/* 80030AF8 00026878  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_80030AFC:
/* 80030AFC 0002687C  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 80030B00 00026880  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80030B04 00026884  40 82 00 10 */	bne lbl_80030B14
/* 80030B08 00026888  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 80030B0C 0002688C  2C 00 00 04 */	cmpwi r0, 4
/* 80030B10 00026890  40 82 00 10 */	bne lbl_80030B20
lbl_80030B14:
/* 80030B14 00026894  38 00 00 00 */	li r0, 0
/* 80030B18 00026898  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80030B1C 0002689C  48 00 00 14 */	b lbl_80030B30
lbl_80030B20:
/* 80030B20 000268A0  2C 00 00 03 */	cmpwi r0, 3
/* 80030B24 000268A4  40 82 00 0C */	bne lbl_80030B30
/* 80030B28 000268A8  38 00 00 02 */	li r0, 2
/* 80030B2C 000268AC  90 1F 00 F4 */	stw r0, 0xf4(r31)
lbl_80030B30:
/* 80030B30 000268B0  3C 60 80 49 */	lis r3, lbl_804953A0@ha
/* 80030B34 000268B4  3C 80 80 49 */	lis r4, lbl_80495390@ha
/* 80030B38 000268B8  38 63 53 A0 */	addi r3, r3, lbl_804953A0@l
/* 80030B3C 000268BC  38 00 00 00 */	li r0, 0
/* 80030B40 000268C0  38 84 53 90 */	addi r4, r4, lbl_80495390@l
/* 80030B44 000268C4  98 03 00 08 */	stb r0, 8(r3)
/* 80030B48 000268C8  38 60 00 01 */	li r3, 1
/* 80030B4C 000268CC  98 04 00 0C */	stb r0, 0xc(r4)
lbl_80030B50:
/* 80030B50 000268D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030B54 000268D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030B58 000268D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80030B5C 000268DC  7C 08 03 A6 */	mtlr r0
/* 80030B60 000268E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80030B64 000268E4  4E 80 00 20 */	blr 

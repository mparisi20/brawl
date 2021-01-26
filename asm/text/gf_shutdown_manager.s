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


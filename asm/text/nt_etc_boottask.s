.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nteBootTask$7__ct
nteBootTask$7__ct:
/* 8015820C 0014DF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80158210 0014DF90  7C 08 02 A6 */	mflr r0
/* 80158214 0014DF94  3C C0 80 46 */	lis r6, lbl_804620F8@ha
/* 80158218 0014DF98  38 A0 00 26 */	li r5, 0x26
/* 8015821C 0014DF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80158220 0014DFA0  38 E0 00 0D */	li r7, 0xd
/* 80158224 0014DFA4  39 00 00 01 */	li r8, 1
/* 80158228 0014DFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015822C 0014DFAC  7C 9F 23 78 */	mr r31, r4
/* 80158230 0014DFB0  38 86 20 F8 */	addi r4, r6, lbl_804620F8@l
/* 80158234 0014DFB4  38 C0 00 0E */	li r6, 0xe
/* 80158238 0014DFB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8015823C 0014DFBC  7C 7E 1B 78 */	mr r30, r3
/* 80158240 0014DFC0  4B ED 56 79 */	bl gfTask$7__ct
/* 80158244 0014DFC4  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 80158248 0014DFC8  3C 60 80 46 */	lis r3, lbl_80462130@ha
/* 8015824C 0014DFCC  38 63 21 30 */	addi r3, r3, lbl_80462130@l
/* 80158250 0014DFD0  38 80 00 00 */	li r4, 0
/* 80158254 0014DFD4  38 A3 00 64 */	addi r5, r3, 0x64
/* 80158258 0014DFD8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015825C 0014DFDC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80158260 0014DFE0  7F C3 F3 78 */	mr r3, r30
/* 80158264 0014DFE4  90 BE 00 40 */	stw r5, 0x40(r30)
/* 80158268 0014DFE8  93 FE 00 44 */	stw r31, 0x44(r30)
/* 8015826C 0014DFEC  90 9E 00 48 */	stw r4, 0x48(r30)
/* 80158270 0014DFF0  98 9E 00 4C */	stb r4, 0x4c(r30)
/* 80158274 0014DFF4  90 9E 00 5C */	stw r4, 0x5c(r30)
/* 80158278 0014DFF8  90 9E 00 50 */	stw r4, 0x50(r30)
/* 8015827C 0014DFFC  B0 9E 00 54 */	sth r4, 0x54(r30)
/* 80158280 0014E000  B0 9E 00 56 */	sth r4, 0x56(r30)
/* 80158284 0014E004  B0 9E 00 58 */	sth r4, 0x58(r30)
/* 80158288 0014E008  98 1E 00 2C */	stb r0, 0x2c(r30)
/* 8015828C 0014E00C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158290 0014E010  83 C1 00 08 */	lwz r30, 8(r1)
/* 80158294 0014E014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158298 0014E018  7C 08 03 A6 */	mtlr r0
/* 8015829C 0014E01C  38 21 00 10 */	addi r1, r1, 0x10
/* 801582A0 0014E020  4E 80 00 20 */	blr 

.global nteBootTask$7__dt
nteBootTask$7__dt:
/* 801582A4 0014E024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801582A8 0014E028  7C 08 02 A6 */	mflr r0
/* 801582AC 0014E02C  2C 03 00 00 */	cmpwi r3, 0
/* 801582B0 0014E030  90 01 00 14 */	stw r0, 0x14(r1)
/* 801582B4 0014E034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801582B8 0014E038  7C 9F 23 78 */	mr r31, r4
/* 801582BC 0014E03C  93 C1 00 08 */	stw r30, 8(r1)
/* 801582C0 0014E040  7C 7E 1B 78 */	mr r30, r3
/* 801582C4 0014E044  41 82 00 54 */	beq lbl_80158318
/* 801582C8 0014E048  80 A3 00 48 */	lwz r5, 0x48(r3)
/* 801582CC 0014E04C  3C 80 80 46 */	lis r4, lbl_80462130@ha
/* 801582D0 0014E050  38 84 21 30 */	addi r4, r4, lbl_80462130@l
/* 801582D4 0014E054  38 04 00 64 */	addi r0, r4, 0x64
/* 801582D8 0014E058  2C 05 00 00 */	cmpwi r5, 0
/* 801582DC 0014E05C  90 83 00 3C */	stw r4, 0x3c(r3)
/* 801582E0 0014E060  90 03 00 40 */	stw r0, 0x40(r3)
/* 801582E4 0014E064  41 82 00 18 */	beq lbl_801582FC
/* 801582E8 0014E068  7C A3 2B 78 */	mr r3, r5
/* 801582EC 0014E06C  38 80 00 01 */	li r4, 1
/* 801582F0 0014E070  4B FF 62 31 */	bl nteExchange$7__dt
/* 801582F4 0014E074  38 00 00 00 */	li r0, 0
/* 801582F8 0014E078  90 1E 00 48 */	stw r0, 0x48(r30)
lbl_801582FC:
/* 801582FC 0014E07C  7F C3 F3 78 */	mr r3, r30
/* 80158300 0014E080  38 80 00 00 */	li r4, 0
/* 80158304 0014E084  4B ED 57 19 */	bl gfTask$7__dt
/* 80158308 0014E088  2C 1F 00 00 */	cmpwi r31, 0
/* 8015830C 0014E08C  40 81 00 0C */	ble lbl_80158318
/* 80158310 0014E090  7F C3 F3 78 */	mr r3, r30
/* 80158314 0014E094  4B EB 45 B5 */	bl __dl
lbl_80158318:
/* 80158318 0014E098  7F C3 F3 78 */	mr r3, r30
/* 8015831C 0014E09C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158320 0014E0A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80158324 0014E0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158328 0014E0A8  7C 08 03 A6 */	mtlr r0
/* 8015832C 0014E0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80158330 0014E0B0  4E 80 00 20 */	blr 

.global nteBootTask$7startTask
nteBootTask$7startTask:
/* 80158334 0014E0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80158338 0014E0B8  7C 08 02 A6 */	mflr r0
/* 8015833C 0014E0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80158340 0014E0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80158344 0014E0C4  7C 7F 1B 78 */	mr r31, r3
/* 80158348 0014E0C8  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8015834C 0014E0CC  2C 00 00 00 */	cmpwi r0, 0
/* 80158350 0014E0D0  40 82 00 48 */	bne lbl_80158398
/* 80158354 0014E0D4  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80158358 0014E0D8  38 60 00 98 */	li r3, 0x98
/* 8015835C 0014E0DC  4B EB 45 5D */	bl srHeapType$7__nw
/* 80158360 0014E0E0  2C 03 00 00 */	cmpwi r3, 0
/* 80158364 0014E0E4  41 82 00 0C */	beq lbl_80158370
/* 80158368 0014E0E8  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8015836C 0014E0EC  4B FF 61 0D */	bl nteExchange$7__ct
lbl_80158370:
/* 80158370 0014E0F0  2C 03 00 00 */	cmpwi r3, 0
/* 80158374 0014E0F4  90 7F 00 48 */	stw r3, 0x48(r31)
/* 80158378 0014E0F8  40 82 00 10 */	bne lbl_80158388
/* 8015837C 0014E0FC  38 00 00 01 */	li r0, 1
/* 80158380 0014E100  98 1F 00 4C */	stb r0, 0x4c(r31)
/* 80158384 0014E104  48 00 00 14 */	b lbl_80158398
lbl_80158388:
/* 80158388 0014E108  38 60 00 01 */	li r3, 1
/* 8015838C 0014E10C  38 00 00 00 */	li r0, 0
/* 80158390 0014E110  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 80158394 0014E114  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_80158398:
/* 80158398 0014E118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015839C 0014E11C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801583A0 0014E120  7C 08 03 A6 */	mtlr r0
/* 801583A4 0014E124  38 21 00 10 */	addi r1, r1, 0x10
/* 801583A8 0014E128  4E 80 00 20 */	blr 

.global nteBootTask$7processDefault
nteBootTask$7processDefault:
/* 801583AC 0014E12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801583B0 0014E130  7C 08 02 A6 */	mflr r0
/* 801583B4 0014E134  90 01 00 14 */	stw r0, 0x14(r1)
/* 801583B8 0014E138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801583BC 0014E13C  7C 7F 1B 78 */	mr r31, r3
/* 801583C0 0014E140  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 801583C4 0014E144  28 00 00 06 */	cmplwi r0, 6
/* 801583C8 0014E148  41 81 02 10 */	bgt lbl_801585D8
/* 801583CC 0014E14C  3C 80 80 46 */	lis r4, lbl_80462104@ha
/* 801583D0 0014E150  54 00 10 3A */	slwi r0, r0, 2
/* 801583D4 0014E154  38 84 21 04 */	addi r4, r4, lbl_80462104@l
/* 801583D8 0014E158  7C 84 00 2E */	lwzx r4, r4, r0
/* 801583DC 0014E15C  7C 89 03 A6 */	mtctr r4
/* 801583E0 0014E160  4E 80 04 20 */	bctr 
/* 801583E4 0014E164  80 63 00 48 */	lwz r3, 0x48(r3)
/* 801583E8 0014E168  38 80 00 04 */	li r4, 4
/* 801583EC 0014E16C  38 A0 00 00 */	li r5, 0
/* 801583F0 0014E170  4B FF 70 A1 */	bl nteExchange$7_requestJob
/* 801583F4 0014E174  38 00 00 02 */	li r0, 2
/* 801583F8 0014E178  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801583FC 0014E17C  48 00 01 DC */	b lbl_801585D8
/* 80158400 0014E180  80 83 00 48 */	lwz r4, 0x48(r3)
/* 80158404 0014E184  88 04 00 8C */	lbz r0, 0x8c(r4)
/* 80158408 0014E188  2C 00 00 00 */	cmpwi r0, 0
/* 8015840C 0014E18C  41 82 01 CC */	beq lbl_801585D8
/* 80158410 0014E190  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80158414 0014E194  2C 00 00 00 */	cmpwi r0, 0
/* 80158418 0014E198  40 82 00 10 */	bne lbl_80158428
/* 8015841C 0014E19C  38 00 00 03 */	li r0, 3
/* 80158420 0014E1A0  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80158424 0014E1A4  48 00 01 B4 */	b lbl_801585D8
lbl_80158428:
/* 80158428 0014E1A8  38 80 00 00 */	li r4, 0
/* 8015842C 0014E1AC  38 00 00 01 */	li r0, 1
/* 80158430 0014E1B0  90 83 00 5C */	stw r4, 0x5c(r3)
/* 80158434 0014E1B4  98 03 00 4C */	stb r0, 0x4c(r3)
/* 80158438 0014E1B8  48 00 01 A0 */	b lbl_801585D8
/* 8015843C 0014E1BC  80 63 00 48 */	lwz r3, 0x48(r3)
/* 80158440 0014E1C0  4B FF 4A 29 */	bl nteWiiConnect24$7getMyWiiID
/* 80158444 0014E1C4  4B FF 7A 85 */	bl nteGlobal$7setWiiID
/* 80158448 0014E1C8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8015844C 0014E1CC  38 80 00 01 */	li r4, 1
/* 80158450 0014E1D0  4B FF 4C B9 */	bl nteWiiConnect24$7check_getStatus
/* 80158454 0014E1D4  4B FF 81 5D */	bl nteGlobal$7setEnableNWCMail
/* 80158458 0014E1D8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8015845C 0014E1DC  38 80 00 02 */	li r4, 2
/* 80158460 0014E1E0  4B FF 4C A9 */	bl nteWiiConnect24$7check_getStatus
/* 80158464 0014E1E4  4B FF 81 79 */	bl nteGlobal$7setEnableNWCDL
/* 80158468 0014E1E8  38 00 00 04 */	li r0, 4
/* 8015846C 0014E1EC  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80158470 0014E1F0  48 00 01 68 */	b lbl_801585D8
/* 80158474 0014E1F4  38 60 00 03 */	li r3, 3
/* 80158478 0014E1F8  4B ED 81 39 */	bl gfSysRecorder2$7isEnable
/* 8015847C 0014E1FC  2C 03 00 00 */	cmpwi r3, 0
/* 80158480 0014E200  41 82 00 30 */	beq lbl_801584B0
/* 80158484 0014E204  4B FF 81 11 */	bl nteGlobal$7isEnableNWCMail
/* 80158488 0014E208  2C 03 00 00 */	cmpwi r3, 0
/* 8015848C 0014E20C  41 82 00 24 */	beq lbl_801584B0
/* 80158490 0014E210  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80158494 0014E214  38 80 00 00 */	li r4, 0
/* 80158498 0014E218  4B FF 70 ED */	bl nteExchange$7request_ReceiveMail
/* 8015849C 0014E21C  2C 03 00 00 */	cmpwi r3, 0
/* 801584A0 0014E220  41 82 00 10 */	beq lbl_801584B0
/* 801584A4 0014E224  38 00 00 05 */	li r0, 5
/* 801584A8 0014E228  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801584AC 0014E22C  48 00 01 2C */	b lbl_801585D8
lbl_801584B0:
/* 801584B0 0014E230  38 00 00 06 */	li r0, 6
/* 801584B4 0014E234  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801584B8 0014E238  48 00 01 20 */	b lbl_801585D8
/* 801584BC 0014E23C  80 83 00 48 */	lwz r4, 0x48(r3)
/* 801584C0 0014E240  88 04 00 8C */	lbz r0, 0x8c(r4)
/* 801584C4 0014E244  2C 00 00 00 */	cmpwi r0, 0
/* 801584C8 0014E248  41 82 01 10 */	beq lbl_801585D8
/* 801584CC 0014E24C  80 04 00 90 */	lwz r0, 0x90(r4)
/* 801584D0 0014E250  2C 00 FF FF */	cmpwi r0, -1
/* 801584D4 0014E254  41 82 00 2C */	beq lbl_80158500
/* 801584D8 0014E258  40 80 00 14 */	bge lbl_801584EC
/* 801584DC 0014E25C  2C 00 FF FD */	cmpwi r0, -3
/* 801584E0 0014E260  41 82 00 38 */	beq lbl_80158518
/* 801584E4 0014E264  40 80 00 28 */	bge lbl_8015850C
/* 801584E8 0014E268  48 00 00 38 */	b lbl_80158520
lbl_801584EC:
/* 801584EC 0014E26C  2C 00 00 01 */	cmpwi r0, 1
/* 801584F0 0014E270  40 80 00 30 */	bge lbl_80158520
/* 801584F4 0014E274  38 00 00 00 */	li r0, 0
/* 801584F8 0014E278  90 03 00 50 */	stw r0, 0x50(r3)
/* 801584FC 0014E27C  48 00 00 24 */	b lbl_80158520
lbl_80158500:
/* 80158500 0014E280  38 00 00 03 */	li r0, 3
/* 80158504 0014E284  90 03 00 50 */	stw r0, 0x50(r3)
/* 80158508 0014E288  48 00 00 18 */	b lbl_80158520
lbl_8015850C:
/* 8015850C 0014E28C  38 00 00 01 */	li r0, 1
/* 80158510 0014E290  90 03 00 50 */	stw r0, 0x50(r3)
/* 80158514 0014E294  48 00 00 0C */	b lbl_80158520
lbl_80158518:
/* 80158518 0014E298  38 00 00 02 */	li r0, 2
/* 8015851C 0014E29C  90 03 00 50 */	stw r0, 0x50(r3)
lbl_80158520:
/* 80158520 0014E2A0  80 83 00 50 */	lwz r4, 0x50(r3)
/* 80158524 0014E2A4  38 04 FF FF */	addi r0, r4, -1
/* 80158528 0014E2A8  28 00 00 01 */	cmplwi r0, 1
/* 8015852C 0014E2AC  41 81 00 20 */	bgt lbl_8015854C
/* 80158530 0014E2B0  80 83 00 48 */	lwz r4, 0x48(r3)
/* 80158534 0014E2B4  A0 04 00 82 */	lhz r0, 0x82(r4)
/* 80158538 0014E2B8  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8015853C 0014E2BC  A0 04 00 84 */	lhz r0, 0x84(r4)
/* 80158540 0014E2C0  B0 03 00 56 */	sth r0, 0x56(r3)
/* 80158544 0014E2C4  A0 04 00 86 */	lhz r0, 0x86(r4)
/* 80158548 0014E2C8  B0 03 00 58 */	sth r0, 0x58(r3)
lbl_8015854C:
/* 8015854C 0014E2CC  38 00 00 06 */	li r0, 6
/* 80158550 0014E2D0  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80158554 0014E2D4  48 00 00 84 */	b lbl_801585D8
/* 80158558 0014E2D8  4B FF 80 69 */	bl nteGlobal$7isEnableNWCDL
/* 8015855C 0014E2DC  2C 03 00 00 */	cmpwi r3, 0
/* 80158560 0014E2E0  41 82 00 54 */	beq lbl_801585B4
/* 80158564 0014E2E4  4B FF 78 8D */	bl nteGlobal$7isPermitService
/* 80158568 0014E2E8  28 03 00 01 */	cmplwi r3, 1
/* 8015856C 0014E2EC  40 82 00 2C */	bne lbl_80158598
/* 80158570 0014E2F0  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80158574 0014E2F4  4B FF 52 21 */	bl nteWiiConnect24$7dl_isRegisterDLTask
/* 80158578 0014E2F8  2C 03 00 00 */	cmpwi r3, 0
/* 8015857C 0014E2FC  41 82 00 10 */	beq lbl_8015858C
/* 80158580 0014E300  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80158584 0014E304  4B FF 52 D1 */	bl nteWiiConnect24$7dl_registerDLTask
/* 80158588 0014E308  48 00 00 40 */	b lbl_801585C8
lbl_8015858C:
/* 8015858C 0014E30C  38 60 00 00 */	li r3, 0
/* 80158590 0014E310  4B FF 78 75 */	bl nteGlobal$7setPermitService
/* 80158594 0014E314  48 00 00 34 */	b lbl_801585C8
lbl_80158598:
/* 80158598 0014E318  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8015859C 0014E31C  4B FF 51 F9 */	bl nteWiiConnect24$7dl_isRegisterDLTask
/* 801585A0 0014E320  2C 03 00 00 */	cmpwi r3, 0
/* 801585A4 0014E324  41 82 00 24 */	beq lbl_801585C8
/* 801585A8 0014E328  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801585AC 0014E32C  4B FF 56 31 */	bl nteWiiConnect24$7dl_deleteDLTask
/* 801585B0 0014E330  48 00 00 18 */	b lbl_801585C8
lbl_801585B4:
/* 801585B4 0014E334  4B FF 78 3D */	bl nteGlobal$7isPermitService
/* 801585B8 0014E338  28 03 00 01 */	cmplwi r3, 1
/* 801585BC 0014E33C  40 82 00 0C */	bne lbl_801585C8
/* 801585C0 0014E340  38 60 00 00 */	li r3, 0
/* 801585C4 0014E344  4B FF 78 41 */	bl nteGlobal$7setPermitService
lbl_801585C8:
/* 801585C8 0014E348  38 60 00 00 */	li r3, 0
/* 801585CC 0014E34C  38 00 00 01 */	li r0, 1
/* 801585D0 0014E350  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 801585D4 0014E354  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_801585D8:
/* 801585D8 0014E358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801585DC 0014E35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801585E0 0014E360  7C 08 03 A6 */	mtlr r0
/* 801585E4 0014E364  38 21 00 10 */	addi r1, r1, 0x10
/* 801585E8 0014E368  4E 80 00 20 */	blr 

.global nteBootTask$7notify_Error
nteBootTask$7notify_Error:
/* 801585EC 0014E36C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801585F0 0014E370  7C 08 02 A6 */	mflr r0
/* 801585F4 0014E374  2C 06 00 00 */	cmpwi r6, 0
/* 801585F8 0014E378  90 01 00 34 */	stw r0, 0x34(r1)
/* 801585FC 0014E37C  38 00 00 00 */	li r0, 0
/* 80158600 0014E380  98 01 00 08 */	stb r0, 8(r1)
/* 80158604 0014E384  41 82 00 1C */	beq lbl_80158620
/* 80158608 0014E388  3C 80 80 46 */	lis r4, lbl_80462120@ha
/* 8015860C 0014E38C  7C C5 33 78 */	mr r5, r6
/* 80158610 0014E390  38 61 00 08 */	addi r3, r1, 8
/* 80158614 0014E394  38 84 21 20 */	addi r4, r4, lbl_80462120@l
/* 80158618 0014E398  4C C6 31 82 */	crclr 6
/* 8015861C 0014E39C  48 2A 03 E1 */	bl sprintf
lbl_80158620:
/* 80158620 0014E3A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80158624 0014E3A4  7C 08 03 A6 */	mtlr r0
/* 80158628 0014E3A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8015862C 0014E3AC  4E 80 00 20 */	blr 

.global nteBootTask$7$264$2notify_Error
nteBootTask$7$264$2notify_Error:
/* 80158630 0014E3B0  38 63 FF C0 */	addi r3, r3, -64
/* 80158634 0014E3B4  4B FF FF B8 */	b nteBootTask$7notify_Error

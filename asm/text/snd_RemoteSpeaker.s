.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd13RemoteSpeakerFv$7__ct
nw4r3snd13RemoteSpeakerFv$7__ct:
/* 801C2244 001B7FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2248 001B7FC8  7C 08 02 A6 */	mflr r0
/* 801C224C 001B7FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2250 001B7FD0  38 00 00 00 */	li r0, 0
/* 801C2254 001B7FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C2258 001B7FD8  7C 7F 1B 78 */	mr r31, r3
/* 801C225C 001B7FDC  98 03 00 00 */	stb r0, 0(r3)
/* 801C2260 001B7FE0  98 03 00 01 */	stb r0, 1(r3)
/* 801C2264 001B7FE4  98 03 00 02 */	stb r0, 2(r3)
/* 801C2268 001B7FE8  98 03 00 03 */	stb r0, 3(r3)
/* 801C226C 001B7FEC  98 03 00 04 */	stb r0, 4(r3)
/* 801C2270 001B7FF0  98 03 00 05 */	stb r0, 5(r3)
/* 801C2274 001B7FF4  98 03 00 06 */	stb r0, 6(r3)
/* 801C2278 001B7FF8  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C227C 001B7FFC  90 03 00 10 */	stw r0, 0x10(r3)
/* 801C2280 001B8000  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C2284 001B8004  90 03 00 3C */	stw r0, 0x3c(r3)
/* 801C2288 001B8008  38 63 00 40 */	addi r3, r3, 0x40
/* 801C228C 001B800C  48 01 44 0D */	bl OSCreateAlarm
/* 801C2290 001B8010  7F E4 FB 78 */	mr r4, r31
/* 801C2294 001B8014  38 7F 00 40 */	addi r3, r31, 0x40
/* 801C2298 001B8018  48 01 4B 7D */	bl OSSetAlarmUserData
/* 801C229C 001B801C  38 7F 00 70 */	addi r3, r31, 0x70
/* 801C22A0 001B8020  48 01 43 F9 */	bl OSCreateAlarm
/* 801C22A4 001B8024  7F E4 FB 78 */	mr r4, r31
/* 801C22A8 001B8028  38 7F 00 70 */	addi r3, r31, 0x70
/* 801C22AC 001B802C  48 01 4B 69 */	bl OSSetAlarmUserData
/* 801C22B0 001B8030  7F E3 FB 78 */	mr r3, r31
/* 801C22B4 001B8034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C22B8 001B8038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C22BC 001B803C  7C 08 03 A6 */	mtlr r0
/* 801C22C0 001B8040  38 21 00 10 */	addi r1, r1, 0x10
/* 801C22C4 001B8044  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFPFll_v$7Setup
nw4r3snd13RemoteSpeakerFPFll_v$7Setup:
/* 801C22C8 001B8048  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C22CC 001B804C  7C 08 02 A6 */	mflr r0
/* 801C22D0 001B8050  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C22D4 001B8054  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C22D8 001B8058  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C22DC 001B805C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C22E0 001B8060  7C 9D 23 78 */	mr r29, r4
/* 801C22E4 001B8064  93 81 00 10 */	stw r28, 0x10(r1)
/* 801C22E8 001B8068  7C 7C 1B 78 */	mr r28, r3
/* 801C22EC 001B806C  48 01 AC 25 */	bl OSDisableInterrupts
/* 801C22F0 001B8070  3B C0 00 00 */	li r30, 0
/* 801C22F4 001B8074  7C 7F 1B 78 */	mr r31, r3
/* 801C22F8 001B8078  9B DC 00 01 */	stb r30, 1(r28)
/* 801C22FC 001B807C  38 7C 00 40 */	addi r3, r28, 0x40
/* 801C2300 001B8080  9B DC 00 02 */	stb r30, 2(r28)
/* 801C2304 001B8084  48 01 46 E9 */	bl OSCancelAlarm
/* 801C2308 001B8088  9B DC 00 07 */	stb r30, 7(r28)
/* 801C230C 001B808C  38 7C 00 70 */	addi r3, r28, 0x70
/* 801C2310 001B8090  48 01 46 DD */	bl OSCancelAlarm
/* 801C2314 001B8094  81 9C 00 3C */	lwz r12, 0x3c(r28)
/* 801C2318 001B8098  38 00 00 01 */	li r0, 1
/* 801C231C 001B809C  9B DC 00 08 */	stb r30, 8(r28)
/* 801C2320 001B80A0  2C 0C 00 00 */	cmpwi r12, 0
/* 801C2324 001B80A4  9B DC 00 06 */	stb r30, 6(r28)
/* 801C2328 001B80A8  9B DC 00 07 */	stb r30, 7(r28)
/* 801C232C 001B80AC  9B DC 00 01 */	stb r30, 1(r28)
/* 801C2330 001B80B0  98 1C 00 02 */	stb r0, 2(r28)
/* 801C2334 001B80B4  9B DC 00 08 */	stb r30, 8(r28)
/* 801C2338 001B80B8  41 82 00 18 */	beq lbl_801C2350
/* 801C233C 001B80BC  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 801C2340 001B80C0  38 80 00 00 */	li r4, 0
/* 801C2344 001B80C4  7D 89 03 A6 */	mtctr r12
/* 801C2348 001B80C8  4E 80 04 21 */	bctrl 
/* 801C234C 001B80CC  9B DC 00 04 */	stb r30, 4(r28)
lbl_801C2350:
/* 801C2350 001B80D0  38 00 00 01 */	li r0, 1
/* 801C2354 001B80D4  93 BC 00 3C */	stw r29, 0x3c(r28)
/* 801C2358 001B80D8  7F E3 FB 78 */	mr r3, r31
/* 801C235C 001B80DC  90 1C 00 10 */	stw r0, 0x10(r28)
/* 801C2360 001B80E0  98 1C 00 00 */	stb r0, 0(r28)
/* 801C2364 001B80E4  48 01 AB D5 */	bl OSRestoreInterrupts
/* 801C2368 001B80E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C236C 001B80EC  38 60 00 01 */	li r3, 1
/* 801C2370 001B80F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C2374 001B80F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C2378 001B80F8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801C237C 001B80FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C2380 001B8100  7C 08 03 A6 */	mtlr r0
/* 801C2384 001B8104  38 21 00 20 */	addi r1, r1, 0x20
/* 801C2388 001B8108  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFPFll_v$7Shutdown
nw4r3snd13RemoteSpeakerFPFll_v$7Shutdown:
/* 801C238C 001B810C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C2390 001B8110  7C 08 02 A6 */	mflr r0
/* 801C2394 001B8114  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C2398 001B8118  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C239C 001B811C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C23A0 001B8120  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C23A4 001B8124  7C 9D 23 78 */	mr r29, r4
/* 801C23A8 001B8128  93 81 00 10 */	stw r28, 0x10(r1)
/* 801C23AC 001B812C  7C 7C 1B 78 */	mr r28, r3
/* 801C23B0 001B8130  48 01 AB 61 */	bl OSDisableInterrupts
/* 801C23B4 001B8134  3B C0 00 00 */	li r30, 0
/* 801C23B8 001B8138  7C 7F 1B 78 */	mr r31, r3
/* 801C23BC 001B813C  9B DC 00 01 */	stb r30, 1(r28)
/* 801C23C0 001B8140  38 7C 00 40 */	addi r3, r28, 0x40
/* 801C23C4 001B8144  9B DC 00 02 */	stb r30, 2(r28)
/* 801C23C8 001B8148  48 01 46 25 */	bl OSCancelAlarm
/* 801C23CC 001B814C  9B DC 00 07 */	stb r30, 7(r28)
/* 801C23D0 001B8150  38 7C 00 70 */	addi r3, r28, 0x70
/* 801C23D4 001B8154  48 01 46 19 */	bl OSCancelAlarm
/* 801C23D8 001B8158  81 9C 00 3C */	lwz r12, 0x3c(r28)
/* 801C23DC 001B815C  9B DC 00 08 */	stb r30, 8(r28)
/* 801C23E0 001B8160  2C 0C 00 00 */	cmpwi r12, 0
/* 801C23E4 001B8164  41 82 00 18 */	beq lbl_801C23FC
/* 801C23E8 001B8168  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 801C23EC 001B816C  38 80 00 00 */	li r4, 0
/* 801C23F0 001B8170  7D 89 03 A6 */	mtctr r12
/* 801C23F4 001B8174  4E 80 04 21 */	bctrl 
/* 801C23F8 001B8178  9B DC 00 04 */	stb r30, 4(r28)
lbl_801C23FC:
/* 801C23FC 001B817C  38 60 00 03 */	li r3, 3
/* 801C2400 001B8180  38 00 00 00 */	li r0, 0
/* 801C2404 001B8184  90 7C 00 10 */	stw r3, 0x10(r28)
/* 801C2408 001B8188  7F E3 FB 78 */	mr r3, r31
/* 801C240C 001B818C  93 BC 00 3C */	stw r29, 0x3c(r28)
/* 801C2410 001B8190  98 1C 00 00 */	stb r0, 0(r28)
/* 801C2414 001B8194  48 01 AB 25 */	bl OSRestoreInterrupts
/* 801C2418 001B8198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C241C 001B819C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C2420 001B81A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C2424 001B81A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C2428 001B81A8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801C242C 001B81AC  7C 08 03 A6 */	mtlr r0
/* 801C2430 001B81B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801C2434 001B81B4  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFb$7EnableOutput
nw4r3snd13RemoteSpeakerFb$7EnableOutput:
/* 801C2438 001B81B8  88 03 00 00 */	lbz r0, 0(r3)
/* 801C243C 001B81BC  2C 00 00 00 */	cmpwi r0, 0
/* 801C2440 001B81C0  40 82 00 0C */	bne lbl_801C244C
/* 801C2444 001B81C4  38 60 00 00 */	li r3, 0
/* 801C2448 001B81C8  4E 80 00 20 */	blr 
lbl_801C244C:
/* 801C244C 001B81CC  98 83 00 02 */	stb r4, 2(r3)
/* 801C2450 001B81D0  38 60 00 01 */	li r3, 1
/* 801C2454 001B81D4  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerCFv$7IsEnabledOutput
nw4r3snd13RemoteSpeakerCFv$7IsEnabledOutput:
/* 801C2458 001B81D8  88 03 00 00 */	lbz r0, 0(r3)
/* 801C245C 001B81DC  2C 00 00 00 */	cmpwi r0, 0
/* 801C2460 001B81E0  41 82 00 0C */	beq lbl_801C246C
/* 801C2464 001B81E4  88 63 00 02 */	lbz r3, 2(r3)
/* 801C2468 001B81E8  4E 80 00 20 */	blr 
lbl_801C246C:
/* 801C246C 001B81EC  38 60 00 00 */	li r3, 0
/* 801C2470 001B81F0  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFv$7Update
nw4r3snd13RemoteSpeakerFv$7Update:
/* 801C2474 001B81F4  88 03 00 05 */	lbz r0, 5(r3)
/* 801C2478 001B81F8  2C 00 00 00 */	cmpwi r0, 0
/* 801C247C 001B81FC  4C 82 00 20 */	bnelr 
/* 801C2480 001B8200  80 83 00 10 */	lwz r4, 0x10(r3)
/* 801C2484 001B8204  2C 04 00 00 */	cmpwi r4, 0
/* 801C2488 001B8208  41 82 00 08 */	beq lbl_801C2490
/* 801C248C 001B820C  48 00 00 08 */	b lbl_801C2494
lbl_801C2490:
/* 801C2490 001B8210  80 83 00 14 */	lwz r4, 0x14(r3)
lbl_801C2494:
/* 801C2494 001B8214  38 00 00 00 */	li r0, 0
/* 801C2498 001B8218  90 03 00 10 */	stw r0, 0x10(r3)
/* 801C249C 001B821C  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C24A0 001B8220  48 00 00 08 */	b nw4r3snd13RemoteSpeakerFQ44nw4r3sn$7ExecCommand
/* 801C24A4 001B8224  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFQ44nw4r3sn$7ExecCommand
nw4r3snd13RemoteSpeakerFQ44nw4r3sn$7ExecCommand:
/* 801C24A8 001B8228  2C 04 00 02 */	cmpwi r4, 2
/* 801C24AC 001B822C  41 82 00 48 */	beq lbl_801C24F4
/* 801C24B0 001B8230  40 80 00 14 */	bge lbl_801C24C4
/* 801C24B4 001B8234  2C 04 00 00 */	cmpwi r4, 0
/* 801C24B8 001B8238  4D 82 00 20 */	beqlr 
/* 801C24BC 001B823C  40 80 00 14 */	bge lbl_801C24D0
/* 801C24C0 001B8240  4E 80 00 20 */	blr 
lbl_801C24C4:
/* 801C24C4 001B8244  2C 04 00 04 */	cmpwi r4, 4
/* 801C24C8 001B8248  4C 80 00 20 */	bgelr 
/* 801C24CC 001B824C  48 00 00 50 */	b lbl_801C251C
lbl_801C24D0:
/* 801C24D0 001B8250  38 00 00 01 */	li r0, 1
/* 801C24D4 001B8254  3C A0 80 1C */	lis r5, nw4r3snd13RemoteSpeakerFll$7SpeakerOnCallback@ha
/* 801C24D8 001B8258  98 03 00 04 */	stb r0, 4(r3)
/* 801C24DC 001B825C  38 A5 28 5C */	addi r5, r5, nw4r3snd13RemoteSpeakerFll$7SpeakerOnCallback@l
/* 801C24E0 001B8260  38 80 00 01 */	li r4, 1
/* 801C24E4 001B8264  98 03 00 05 */	stb r0, 5(r3)
/* 801C24E8 001B8268  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C24EC 001B826C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 801C24F0 001B8270  48 05 89 D4 */	b WPADControlSpeaker
lbl_801C24F4:
/* 801C24F4 001B8274  38 C0 00 01 */	li r6, 1
/* 801C24F8 001B8278  38 00 00 03 */	li r0, 3
/* 801C24FC 001B827C  3C A0 80 1C */	lis r5, nw4r3snd13RemoteSpeakerFll$7SpeakerPlayCallback@ha
/* 801C2500 001B8280  98 C3 00 04 */	stb r6, 4(r3)
/* 801C2504 001B8284  38 A5 29 68 */	addi r5, r5, nw4r3snd13RemoteSpeakerFll$7SpeakerPlayCallback@l
/* 801C2508 001B8288  38 80 00 04 */	li r4, 4
/* 801C250C 001B828C  98 C3 00 05 */	stb r6, 5(r3)
/* 801C2510 001B8290  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C2514 001B8294  80 63 00 38 */	lwz r3, 0x38(r3)
/* 801C2518 001B8298  48 05 89 AC */	b WPADControlSpeaker
lbl_801C251C:
/* 801C251C 001B829C  38 C0 00 01 */	li r6, 1
/* 801C2520 001B82A0  38 00 00 05 */	li r0, 5
/* 801C2524 001B82A4  3C A0 80 1C */	lis r5, nw4r3snd13RemoteSpeakerFll$7SpeakerOffCallback@ha
/* 801C2528 001B82A8  98 C3 00 04 */	stb r6, 4(r3)
/* 801C252C 001B82AC  38 A5 2A 50 */	addi r5, r5, nw4r3snd13RemoteSpeakerFll$7SpeakerOffCallback@l
/* 801C2530 001B82B0  38 80 00 00 */	li r4, 0
/* 801C2534 001B82B4  98 C3 00 05 */	stb r6, 5(r3)
/* 801C2538 001B82B8  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C253C 001B82BC  80 63 00 38 */	lwz r3, 0x38(r3)
/* 801C2540 001B82C0  48 05 89 84 */	b WPADControlSpeaker
/* 801C2544 001B82C4  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFPCs$7UpdateStreamData
nw4r3snd13RemoteSpeakerFPCs$7UpdateStreamData:
/* 801C2548 001B82C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C254C 001B82CC  7C 08 02 A6 */	mflr r0
/* 801C2550 001B82D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C2554 001B82D4  39 61 00 40 */	addi r11, r1, 0x40
/* 801C2558 001B82D8  48 22 ED C1 */	bl _savegpr_25
/* 801C255C 001B82DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801C2560 001B82E0  7C 7D 1B 78 */	mr r29, r3
/* 801C2564 001B82E4  7C 99 23 78 */	mr r25, r4
/* 801C2568 001B82E8  2C 00 00 04 */	cmpwi r0, 4
/* 801C256C 001B82EC  40 82 02 D8 */	bne lbl_801C2844
/* 801C2570 001B82F0  88 03 00 02 */	lbz r0, 2(r3)
/* 801C2574 001B82F4  3B C0 00 01 */	li r30, 1
/* 801C2578 001B82F8  2C 00 00 00 */	cmpwi r0, 0
/* 801C257C 001B82FC  41 82 00 F0 */	beq lbl_801C266C
/* 801C2580 001B8300  38 00 00 02 */	li r0, 2
/* 801C2584 001B8304  7F 26 CB 78 */	mr r6, r25
/* 801C2588 001B8308  38 A0 00 01 */	li r5, 1
/* 801C258C 001B830C  38 80 00 00 */	li r4, 0
/* 801C2590 001B8310  7C 09 03 A6 */	mtctr r0
lbl_801C2594:
/* 801C2594 001B8314  80 06 00 00 */	lwz r0, 0(r6)
/* 801C2598 001B8318  2C 00 00 00 */	cmpwi r0, 0
/* 801C259C 001B831C  41 82 00 0C */	beq lbl_801C25A8
/* 801C25A0 001B8320  38 A0 00 00 */	li r5, 0
/* 801C25A4 001B8324  48 00 00 CC */	b lbl_801C2670
lbl_801C25A8:
/* 801C25A8 001B8328  80 06 00 04 */	lwz r0, 4(r6)
/* 801C25AC 001B832C  2C 00 00 00 */	cmpwi r0, 0
/* 801C25B0 001B8330  41 82 00 0C */	beq lbl_801C25BC
/* 801C25B4 001B8334  38 A0 00 00 */	li r5, 0
/* 801C25B8 001B8338  48 00 00 B8 */	b lbl_801C2670
lbl_801C25BC:
/* 801C25BC 001B833C  80 06 00 08 */	lwz r0, 8(r6)
/* 801C25C0 001B8340  2C 00 00 00 */	cmpwi r0, 0
/* 801C25C4 001B8344  41 82 00 0C */	beq lbl_801C25D0
/* 801C25C8 001B8348  38 A0 00 00 */	li r5, 0
/* 801C25CC 001B834C  48 00 00 A4 */	b lbl_801C2670
lbl_801C25D0:
/* 801C25D0 001B8350  80 06 00 0C */	lwz r0, 0xc(r6)
/* 801C25D4 001B8354  2C 00 00 00 */	cmpwi r0, 0
/* 801C25D8 001B8358  41 82 00 0C */	beq lbl_801C25E4
/* 801C25DC 001B835C  38 A0 00 00 */	li r5, 0
/* 801C25E0 001B8360  48 00 00 90 */	b lbl_801C2670
lbl_801C25E4:
/* 801C25E4 001B8364  80 06 00 10 */	lwz r0, 0x10(r6)
/* 801C25E8 001B8368  2C 00 00 00 */	cmpwi r0, 0
/* 801C25EC 001B836C  41 82 00 0C */	beq lbl_801C25F8
/* 801C25F0 001B8370  38 A0 00 00 */	li r5, 0
/* 801C25F4 001B8374  48 00 00 7C */	b lbl_801C2670
lbl_801C25F8:
/* 801C25F8 001B8378  80 06 00 14 */	lwz r0, 0x14(r6)
/* 801C25FC 001B837C  2C 00 00 00 */	cmpwi r0, 0
/* 801C2600 001B8380  41 82 00 0C */	beq lbl_801C260C
/* 801C2604 001B8384  38 A0 00 00 */	li r5, 0
/* 801C2608 001B8388  48 00 00 68 */	b lbl_801C2670
lbl_801C260C:
/* 801C260C 001B838C  80 06 00 18 */	lwz r0, 0x18(r6)
/* 801C2610 001B8390  2C 00 00 00 */	cmpwi r0, 0
/* 801C2614 001B8394  41 82 00 0C */	beq lbl_801C2620
/* 801C2618 001B8398  38 A0 00 00 */	li r5, 0
/* 801C261C 001B839C  48 00 00 54 */	b lbl_801C2670
lbl_801C2620:
/* 801C2620 001B83A0  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 801C2624 001B83A4  2C 00 00 00 */	cmpwi r0, 0
/* 801C2628 001B83A8  41 82 00 0C */	beq lbl_801C2634
/* 801C262C 001B83AC  38 A0 00 00 */	li r5, 0
/* 801C2630 001B83B0  48 00 00 40 */	b lbl_801C2670
lbl_801C2634:
/* 801C2634 001B83B4  80 06 00 20 */	lwz r0, 0x20(r6)
/* 801C2638 001B83B8  2C 00 00 00 */	cmpwi r0, 0
/* 801C263C 001B83BC  41 82 00 0C */	beq lbl_801C2648
/* 801C2640 001B83C0  38 A0 00 00 */	li r5, 0
/* 801C2644 001B83C4  48 00 00 2C */	b lbl_801C2670
lbl_801C2648:
/* 801C2648 001B83C8  80 06 00 24 */	lwz r0, 0x24(r6)
/* 801C264C 001B83CC  2C 00 00 00 */	cmpwi r0, 0
/* 801C2650 001B83D0  41 82 00 0C */	beq lbl_801C265C
/* 801C2654 001B83D4  38 A0 00 00 */	li r5, 0
/* 801C2658 001B83D8  48 00 00 18 */	b lbl_801C2670
lbl_801C265C:
/* 801C265C 001B83DC  38 C6 00 28 */	addi r6, r6, 0x28
/* 801C2660 001B83E0  38 84 00 09 */	addi r4, r4, 9
/* 801C2664 001B83E4  42 00 FF 30 */	bdnz lbl_801C2594
/* 801C2668 001B83E8  48 00 00 08 */	b lbl_801C2670
lbl_801C266C:
/* 801C266C 001B83EC  38 A0 00 01 */	li r5, 1
lbl_801C2670:
/* 801C2670 001B83F0  2C 05 00 00 */	cmpwi r5, 0
/* 801C2674 001B83F4  40 82 00 10 */	bne lbl_801C2684
/* 801C2678 001B83F8  88 03 00 06 */	lbz r0, 6(r3)
/* 801C267C 001B83FC  2C 00 00 00 */	cmpwi r0, 0
/* 801C2680 001B8400  41 82 00 08 */	beq lbl_801C2688
lbl_801C2684:
/* 801C2684 001B8404  3B C0 00 00 */	li r30, 0
lbl_801C2688:
/* 801C2688 001B8408  88 03 00 01 */	lbz r0, 1(r3)
/* 801C268C 001B840C  3B 40 00 00 */	li r26, 0
/* 801C2690 001B8410  2C 00 00 00 */	cmpwi r0, 0
/* 801C2694 001B8414  40 82 00 10 */	bne lbl_801C26A4
/* 801C2698 001B8418  2C 1E 00 00 */	cmpwi r30, 0
/* 801C269C 001B841C  41 82 00 08 */	beq lbl_801C26A4
/* 801C26A0 001B8420  3B 40 00 01 */	li r26, 1
lbl_801C26A4:
/* 801C26A4 001B8424  2C 00 00 00 */	cmpwi r0, 0
/* 801C26A8 001B8428  3B E0 00 00 */	li r31, 0
/* 801C26AC 001B842C  41 82 00 10 */	beq lbl_801C26BC
/* 801C26B0 001B8430  2C 1E 00 00 */	cmpwi r30, 0
/* 801C26B4 001B8434  40 82 00 08 */	bne lbl_801C26BC
/* 801C26B8 001B8438  3B E0 00 01 */	li r31, 1
lbl_801C26BC:
/* 801C26BC 001B843C  2C 1E 00 00 */	cmpwi r30, 0
/* 801C26C0 001B8440  41 82 00 BC */	beq lbl_801C277C
/* 801C26C4 001B8444  48 01 A8 4D */	bl OSDisableInterrupts
/* 801C26C8 001B8448  7C 7C 1B 78 */	mr r28, r3
/* 801C26CC 001B844C  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 801C26D0 001B8450  48 05 9F CD */	bl WPADCanSendStreamData
/* 801C26D4 001B8454  2C 03 00 00 */	cmpwi r3, 0
/* 801C26D8 001B8458  40 82 00 10 */	bne lbl_801C26E8
/* 801C26DC 001B845C  7F 83 E3 78 */	mr r3, r28
/* 801C26E0 001B8460  48 01 A8 59 */	bl OSRestoreInterrupts
/* 801C26E4 001B8464  48 00 01 60 */	b lbl_801C2844
lbl_801C26E8:
/* 801C26E8 001B8468  88 1D 00 03 */	lbz r0, 3(r29)
/* 801C26EC 001B846C  3B 60 00 00 */	li r27, 0
/* 801C26F0 001B8470  7F 25 CB 78 */	mr r5, r25
/* 801C26F4 001B8474  38 7D 00 18 */	addi r3, r29, 0x18
/* 801C26F8 001B8478  7C 00 00 34 */	cntlzw r0, r0
/* 801C26FC 001B847C  9B 7D 00 03 */	stb r27, 3(r29)
/* 801C2700 001B8480  54 04 D9 7E */	srwi r4, r0, 5
/* 801C2704 001B8484  38 E1 00 08 */	addi r7, r1, 8
/* 801C2708 001B8488  38 C0 00 28 */	li r6, 0x28
/* 801C270C 001B848C  48 04 DD 25 */	bl WENCGetEncodeData
/* 801C2710 001B8490  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 801C2714 001B8494  38 81 00 08 */	addi r4, r1, 8
/* 801C2718 001B8498  38 A0 00 14 */	li r5, 0x14
/* 801C271C 001B849C  48 05 A0 05 */	bl WPADSendStreamData
/* 801C2720 001B84A0  2C 03 00 00 */	cmpwi r3, 0
/* 801C2724 001B84A4  41 82 00 50 */	beq lbl_801C2774
/* 801C2728 001B84A8  3B C0 00 01 */	li r30, 1
/* 801C272C 001B84AC  93 7D 00 0C */	stw r27, 0xc(r29)
/* 801C2730 001B84B0  38 7D 00 40 */	addi r3, r29, 0x40
/* 801C2734 001B84B4  93 DD 00 14 */	stw r30, 0x14(r29)
/* 801C2738 001B84B8  9B 7D 00 01 */	stb r27, 1(r29)
/* 801C273C 001B84BC  9B 7D 00 02 */	stb r27, 2(r29)
/* 801C2740 001B84C0  48 01 42 AD */	bl OSCancelAlarm
/* 801C2744 001B84C4  9B 7D 00 07 */	stb r27, 7(r29)
/* 801C2748 001B84C8  38 7D 00 70 */	addi r3, r29, 0x70
/* 801C274C 001B84CC  48 01 42 A1 */	bl OSCancelAlarm
/* 801C2750 001B84D0  9B 7D 00 08 */	stb r27, 8(r29)
/* 801C2754 001B84D4  7F 83 E3 78 */	mr r3, r28
/* 801C2758 001B84D8  9B 7D 00 06 */	stb r27, 6(r29)
/* 801C275C 001B84DC  9B 7D 00 07 */	stb r27, 7(r29)
/* 801C2760 001B84E0  9B 7D 00 01 */	stb r27, 1(r29)
/* 801C2764 001B84E4  9B DD 00 02 */	stb r30, 2(r29)
/* 801C2768 001B84E8  9B 7D 00 08 */	stb r27, 8(r29)
/* 801C276C 001B84EC  48 01 A7 CD */	bl OSRestoreInterrupts
/* 801C2770 001B84F0  48 00 00 D4 */	b lbl_801C2844
lbl_801C2774:
/* 801C2774 001B84F4  7F 83 E3 78 */	mr r3, r28
/* 801C2778 001B84F8  48 01 A7 C1 */	bl OSRestoreInterrupts
lbl_801C277C:
/* 801C277C 001B84FC  2C 1A 00 00 */	cmpwi r26, 0
/* 801C2780 001B8500  41 82 00 78 */	beq lbl_801C27F8
/* 801C2784 001B8504  48 01 A7 8D */	bl OSDisableInterrupts
/* 801C2788 001B8508  88 1D 00 07 */	lbz r0, 7(r29)
/* 801C278C 001B850C  7C 7C 1B 78 */	mr r28, r3
/* 801C2790 001B8510  2C 00 00 00 */	cmpwi r0, 0
/* 801C2794 001B8514  40 82 00 4C */	bne lbl_801C27E0
/* 801C2798 001B8518  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 801C279C 001B851C  3C E0 80 1C */	lis r7, nw4r3snd13RemoteSpeakerFP7OSAlarmP$7ContinueAlarmHandler@ha
/* 801C27A0 001B8520  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 801C27A4 001B8524  38 80 01 E0 */	li r4, 0x1e0
/* 801C27A8 001B8528  38 A0 00 00 */	li r5, 0
/* 801C27AC 001B852C  38 7D 00 40 */	addi r3, r29, 0x40
/* 801C27B0 001B8530  54 06 F0 BE */	srwi r6, r0, 2
/* 801C27B4 001B8534  38 E7 2B 38 */	addi r7, r7, nw4r3snd13RemoteSpeakerFP7OSAlarmP$7ContinueAlarmHandler@l
/* 801C27B8 001B8538  7C 06 20 16 */	mulhwu r0, r6, r4
/* 801C27BC 001B853C  7C 85 21 D6 */	mullw r4, r5, r4
/* 801C27C0 001B8540  1C C6 01 E0 */	mulli r6, r6, 0x1e0
/* 801C27C4 001B8544  7C A0 22 14 */	add r5, r0, r4
/* 801C27C8 001B8548  48 01 41 31 */	bl OSSetAlarm
/* 801C27CC 001B854C  48 01 F3 69 */	bl OSGetTime
/* 801C27D0 001B8550  38 00 00 01 */	li r0, 1
/* 801C27D4 001B8554  90 9D 00 A4 */	stw r4, 0xa4(r29)
/* 801C27D8 001B8558  90 7D 00 A0 */	stw r3, 0xa0(r29)
/* 801C27DC 001B855C  98 1D 00 07 */	stb r0, 7(r29)
lbl_801C27E0:
/* 801C27E0 001B8560  38 7D 00 70 */	addi r3, r29, 0x70
/* 801C27E4 001B8564  48 01 42 09 */	bl OSCancelAlarm
/* 801C27E8 001B8568  38 00 00 00 */	li r0, 0
/* 801C27EC 001B856C  7F 83 E3 78 */	mr r3, r28
/* 801C27F0 001B8570  98 1D 00 08 */	stb r0, 8(r29)
/* 801C27F4 001B8574  48 01 A7 45 */	bl OSRestoreInterrupts
lbl_801C27F8:
/* 801C27F8 001B8578  2C 1F 00 00 */	cmpwi r31, 0
/* 801C27FC 001B857C  41 82 00 44 */	beq lbl_801C2840
/* 801C2800 001B8580  48 01 A7 11 */	bl OSDisableInterrupts
/* 801C2804 001B8584  38 00 00 01 */	li r0, 1
/* 801C2808 001B8588  7C 7C 1B 78 */	mr r28, r3
/* 801C280C 001B858C  98 1D 00 08 */	stb r0, 8(r29)
/* 801C2810 001B8590  38 7D 00 70 */	addi r3, r29, 0x70
/* 801C2814 001B8594  48 01 41 D9 */	bl OSCancelAlarm
/* 801C2818 001B8598  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 801C281C 001B859C  3C E0 80 1C */	lis r7, nw4r3snd13RemoteSpeakerFP7OSAlarmP$7IntervalAlarmHandler@ha
/* 801C2820 001B85A0  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 801C2824 001B85A4  38 7D 00 70 */	addi r3, r29, 0x70
/* 801C2828 001B85A8  38 E7 2B 90 */	addi r7, r7, nw4r3snd13RemoteSpeakerFP7OSAlarmP$7IntervalAlarmHandler@l
/* 801C282C 001B85AC  38 A0 00 00 */	li r5, 0
/* 801C2830 001B85B0  54 06 F0 BE */	srwi r6, r0, 2
/* 801C2834 001B85B4  48 01 40 C5 */	bl OSSetAlarm
/* 801C2838 001B85B8  7F 83 E3 78 */	mr r3, r28
/* 801C283C 001B85BC  48 01 A6 FD */	bl OSRestoreInterrupts
lbl_801C2840:
/* 801C2840 001B85C0  9B DD 00 01 */	stb r30, 1(r29)
lbl_801C2844:
/* 801C2844 001B85C4  39 61 00 40 */	addi r11, r1, 0x40
/* 801C2848 001B85C8  48 22 EB 1D */	bl _restgpr_25
/* 801C284C 001B85CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C2850 001B85D0  7C 08 03 A6 */	mtlr r0
/* 801C2854 001B85D4  38 21 00 40 */	addi r1, r1, 0x40
/* 801C2858 001B85D8  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFll$7SpeakerOnCallback
nw4r3snd13RemoteSpeakerFll$7SpeakerOnCallback:
/* 801C285C 001B85DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C2860 001B85E0  7C 08 02 A6 */	mflr r0
/* 801C2864 001B85E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C2868 001B85E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C286C 001B85EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C2870 001B85F0  7C 9E 23 78 */	mr r30, r4
/* 801C2874 001B85F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C2878 001B85F8  7C 7D 1B 78 */	mr r29, r3
/* 801C287C 001B85FC  48 00 03 89 */	bl nw4r3snd6detail20RemoteSpeakerManagerFv$7GetInstance
/* 801C2880 001B8600  7F A4 EB 78 */	mr r4, r29
/* 801C2884 001B8604  48 00 04 19 */	bl nw4r3snd6detail20RemoteSpeakerManagerFi$7GetRemoteSpeaker
/* 801C2888 001B8608  2C 1E FF FF */	cmpwi r30, -1
/* 801C288C 001B860C  7C 7F 1B 78 */	mr r31, r3
/* 801C2890 001B8610  41 82 00 60 */	beq lbl_801C28F0
/* 801C2894 001B8614  40 80 00 14 */	bge lbl_801C28A8
/* 801C2898 001B8618  2C 1E FF FD */	cmpwi r30, -3
/* 801C289C 001B861C  41 82 00 48 */	beq lbl_801C28E4
/* 801C28A0 001B8620  40 80 00 38 */	bge lbl_801C28D8
/* 801C28A4 001B8624  48 00 00 58 */	b lbl_801C28FC
lbl_801C28A8:
/* 801C28A8 001B8628  2C 1E 00 01 */	cmpwi r30, 1
/* 801C28AC 001B862C  40 80 00 50 */	bge lbl_801C28FC
/* 801C28B0 001B8630  38 00 00 01 */	li r0, 1
/* 801C28B4 001B8634  38 80 00 00 */	li r4, 0
/* 801C28B8 001B8638  98 03 00 03 */	stb r0, 3(r3)
/* 801C28BC 001B863C  38 A0 00 20 */	li r5, 0x20
/* 801C28C0 001B8640  38 63 00 18 */	addi r3, r3, 0x18
/* 801C28C4 001B8644  4B E4 1B 79 */	bl memset
/* 801C28C8 001B8648  38 00 00 02 */	li r0, 2
/* 801C28CC 001B864C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801C28D0 001B8650  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801C28D4 001B8654  48 00 00 30 */	b lbl_801C2904
lbl_801C28D8:
/* 801C28D8 001B8658  38 00 00 01 */	li r0, 1
/* 801C28DC 001B865C  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C28E0 001B8660  48 00 00 24 */	b lbl_801C2904
lbl_801C28E4:
/* 801C28E4 001B8664  38 00 00 00 */	li r0, 0
/* 801C28E8 001B8668  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C28EC 001B866C  48 00 00 18 */	b lbl_801C2904
lbl_801C28F0:
/* 801C28F0 001B8670  38 00 00 00 */	li r0, 0
/* 801C28F4 001B8674  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C28F8 001B8678  48 00 00 0C */	b lbl_801C2904
lbl_801C28FC:
/* 801C28FC 001B867C  38 00 00 00 */	li r0, 0
/* 801C2900 001B8680  90 03 00 0C */	stw r0, 0xc(r3)
lbl_801C2904:
/* 801C2904 001B8684  2C 1E 00 00 */	cmpwi r30, 0
/* 801C2908 001B8688  41 82 00 3C */	beq lbl_801C2944
/* 801C290C 001B868C  2C 1E FF FE */	cmpwi r30, -2
/* 801C2910 001B8690  41 82 00 34 */	beq lbl_801C2944
/* 801C2914 001B8694  88 1F 00 04 */	lbz r0, 4(r31)
/* 801C2918 001B8698  2C 00 00 00 */	cmpwi r0, 0
/* 801C291C 001B869C  41 82 00 28 */	beq lbl_801C2944
/* 801C2920 001B86A0  81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 801C2924 001B86A4  2C 0C 00 00 */	cmpwi r12, 0
/* 801C2928 001B86A8  41 82 00 1C */	beq lbl_801C2944
/* 801C292C 001B86AC  7F A3 EB 78 */	mr r3, r29
/* 801C2930 001B86B0  7F C4 F3 78 */	mr r4, r30
/* 801C2934 001B86B4  7D 89 03 A6 */	mtctr r12
/* 801C2938 001B86B8  4E 80 04 21 */	bctrl 
/* 801C293C 001B86BC  38 00 00 00 */	li r0, 0
/* 801C2940 001B86C0  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_801C2944:
/* 801C2944 001B86C4  38 00 00 00 */	li r0, 0
/* 801C2948 001B86C8  98 1F 00 05 */	stb r0, 5(r31)
/* 801C294C 001B86CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C2950 001B86D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C2954 001B86D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C2958 001B86D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C295C 001B86DC  7C 08 03 A6 */	mtlr r0
/* 801C2960 001B86E0  38 21 00 20 */	addi r1, r1, 0x20
/* 801C2964 001B86E4  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFll$7SpeakerPlayCallback
nw4r3snd13RemoteSpeakerFll$7SpeakerPlayCallback:
/* 801C2968 001B86E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C296C 001B86EC  7C 08 02 A6 */	mflr r0
/* 801C2970 001B86F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C2974 001B86F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C2978 001B86F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C297C 001B86FC  7C 9E 23 78 */	mr r30, r4
/* 801C2980 001B8700  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C2984 001B8704  7C 7D 1B 78 */	mr r29, r3
/* 801C2988 001B8708  48 00 02 7D */	bl nw4r3snd6detail20RemoteSpeakerManagerFv$7GetInstance
/* 801C298C 001B870C  7F A4 EB 78 */	mr r4, r29
/* 801C2990 001B8710  48 00 03 0D */	bl nw4r3snd6detail20RemoteSpeakerManagerFi$7GetRemoteSpeaker
/* 801C2994 001B8714  2C 1E FF FF */	cmpwi r30, -1
/* 801C2998 001B8718  7C 7F 1B 78 */	mr r31, r3
/* 801C299C 001B871C  41 82 00 44 */	beq lbl_801C29E0
/* 801C29A0 001B8720  40 80 00 14 */	bge lbl_801C29B4
/* 801C29A4 001B8724  2C 1E FF FD */	cmpwi r30, -3
/* 801C29A8 001B8728  41 82 00 2C */	beq lbl_801C29D4
/* 801C29AC 001B872C  40 80 00 1C */	bge lbl_801C29C8
/* 801C29B0 001B8730  48 00 00 3C */	b lbl_801C29EC
lbl_801C29B4:
/* 801C29B4 001B8734  2C 1E 00 01 */	cmpwi r30, 1
/* 801C29B8 001B8738  40 80 00 34 */	bge lbl_801C29EC
/* 801C29BC 001B873C  38 00 00 04 */	li r0, 4
/* 801C29C0 001B8740  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C29C4 001B8744  48 00 00 30 */	b lbl_801C29F4
lbl_801C29C8:
/* 801C29C8 001B8748  38 00 00 02 */	li r0, 2
/* 801C29CC 001B874C  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C29D0 001B8750  48 00 00 24 */	b lbl_801C29F4
lbl_801C29D4:
/* 801C29D4 001B8754  38 00 00 00 */	li r0, 0
/* 801C29D8 001B8758  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C29DC 001B875C  48 00 00 18 */	b lbl_801C29F4
lbl_801C29E0:
/* 801C29E0 001B8760  38 00 00 00 */	li r0, 0
/* 801C29E4 001B8764  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C29E8 001B8768  48 00 00 0C */	b lbl_801C29F4
lbl_801C29EC:
/* 801C29EC 001B876C  38 00 00 00 */	li r0, 0
/* 801C29F0 001B8770  90 03 00 0C */	stw r0, 0xc(r3)
lbl_801C29F4:
/* 801C29F4 001B8774  2C 1E FF FE */	cmpwi r30, -2
/* 801C29F8 001B8778  41 82 00 34 */	beq lbl_801C2A2C
/* 801C29FC 001B877C  88 03 00 04 */	lbz r0, 4(r3)
/* 801C2A00 001B8780  2C 00 00 00 */	cmpwi r0, 0
/* 801C2A04 001B8784  41 82 00 28 */	beq lbl_801C2A2C
/* 801C2A08 001B8788  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 801C2A0C 001B878C  2C 0C 00 00 */	cmpwi r12, 0
/* 801C2A10 001B8790  41 82 00 1C */	beq lbl_801C2A2C
/* 801C2A14 001B8794  7F A3 EB 78 */	mr r3, r29
/* 801C2A18 001B8798  7F C4 F3 78 */	mr r4, r30
/* 801C2A1C 001B879C  7D 89 03 A6 */	mtctr r12
/* 801C2A20 001B87A0  4E 80 04 21 */	bctrl 
/* 801C2A24 001B87A4  38 00 00 00 */	li r0, 0
/* 801C2A28 001B87A8  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_801C2A2C:
/* 801C2A2C 001B87AC  38 00 00 00 */	li r0, 0
/* 801C2A30 001B87B0  98 1F 00 05 */	stb r0, 5(r31)
/* 801C2A34 001B87B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C2A38 001B87B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C2A3C 001B87BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C2A40 001B87C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C2A44 001B87C4  7C 08 03 A6 */	mtlr r0
/* 801C2A48 001B87C8  38 21 00 20 */	addi r1, r1, 0x20
/* 801C2A4C 001B87CC  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFll$7SpeakerOffCallback
nw4r3snd13RemoteSpeakerFll$7SpeakerOffCallback:
/* 801C2A50 001B87D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C2A54 001B87D4  7C 08 02 A6 */	mflr r0
/* 801C2A58 001B87D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C2A5C 001B87DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C2A60 001B87E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C2A64 001B87E4  7C 9E 23 78 */	mr r30, r4
/* 801C2A68 001B87E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C2A6C 001B87EC  7C 7D 1B 78 */	mr r29, r3
/* 801C2A70 001B87F0  48 00 01 95 */	bl nw4r3snd6detail20RemoteSpeakerManagerFv$7GetInstance
/* 801C2A74 001B87F4  7F A4 EB 78 */	mr r4, r29
/* 801C2A78 001B87F8  48 00 02 25 */	bl nw4r3snd6detail20RemoteSpeakerManagerFi$7GetRemoteSpeaker
/* 801C2A7C 001B87FC  2C 1E FF FF */	cmpwi r30, -1
/* 801C2A80 001B8800  7C 7F 1B 78 */	mr r31, r3
/* 801C2A84 001B8804  41 82 00 44 */	beq lbl_801C2AC8
/* 801C2A88 001B8808  40 80 00 14 */	bge lbl_801C2A9C
/* 801C2A8C 001B880C  2C 1E FF FD */	cmpwi r30, -3
/* 801C2A90 001B8810  41 82 00 2C */	beq lbl_801C2ABC
/* 801C2A94 001B8814  40 80 00 1C */	bge lbl_801C2AB0
/* 801C2A98 001B8818  48 00 00 3C */	b lbl_801C2AD4
lbl_801C2A9C:
/* 801C2A9C 001B881C  2C 1E 00 01 */	cmpwi r30, 1
/* 801C2AA0 001B8820  40 80 00 34 */	bge lbl_801C2AD4
/* 801C2AA4 001B8824  38 00 00 06 */	li r0, 6
/* 801C2AA8 001B8828  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C2AAC 001B882C  48 00 00 30 */	b lbl_801C2ADC
lbl_801C2AB0:
/* 801C2AB0 001B8830  38 00 00 03 */	li r0, 3
/* 801C2AB4 001B8834  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C2AB8 001B8838  48 00 00 24 */	b lbl_801C2ADC
lbl_801C2ABC:
/* 801C2ABC 001B883C  38 00 00 00 */	li r0, 0
/* 801C2AC0 001B8840  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C2AC4 001B8844  48 00 00 18 */	b lbl_801C2ADC
lbl_801C2AC8:
/* 801C2AC8 001B8848  38 00 00 00 */	li r0, 0
/* 801C2ACC 001B884C  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C2AD0 001B8850  48 00 00 0C */	b lbl_801C2ADC
lbl_801C2AD4:
/* 801C2AD4 001B8854  38 00 00 00 */	li r0, 0
/* 801C2AD8 001B8858  90 03 00 0C */	stw r0, 0xc(r3)
lbl_801C2ADC:
/* 801C2ADC 001B885C  2C 1E FF FE */	cmpwi r30, -2
/* 801C2AE0 001B8860  41 82 00 34 */	beq lbl_801C2B14
/* 801C2AE4 001B8864  88 03 00 04 */	lbz r0, 4(r3)
/* 801C2AE8 001B8868  2C 00 00 00 */	cmpwi r0, 0
/* 801C2AEC 001B886C  41 82 00 28 */	beq lbl_801C2B14
/* 801C2AF0 001B8870  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 801C2AF4 001B8874  2C 0C 00 00 */	cmpwi r12, 0
/* 801C2AF8 001B8878  41 82 00 1C */	beq lbl_801C2B14
/* 801C2AFC 001B887C  7F A3 EB 78 */	mr r3, r29
/* 801C2B00 001B8880  7F C4 F3 78 */	mr r4, r30
/* 801C2B04 001B8884  7D 89 03 A6 */	mtctr r12
/* 801C2B08 001B8888  4E 80 04 21 */	bctrl 
/* 801C2B0C 001B888C  38 00 00 00 */	li r0, 0
/* 801C2B10 001B8890  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_801C2B14:
/* 801C2B14 001B8894  38 00 00 00 */	li r0, 0
/* 801C2B18 001B8898  98 1F 00 05 */	stb r0, 5(r31)
/* 801C2B1C 001B889C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C2B20 001B88A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C2B24 001B88A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C2B28 001B88A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C2B2C 001B88AC  7C 08 03 A6 */	mtlr r0
/* 801C2B30 001B88B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801C2B34 001B88B4  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFP7OSAlarmP$7ContinueAlarmHandler
nw4r3snd13RemoteSpeakerFP7OSAlarmP$7ContinueAlarmHandler:
/* 801C2B38 001B88B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2B3C 001B88BC  7C 08 02 A6 */	mflr r0
/* 801C2B40 001B88C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2B44 001B88C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C2B48 001B88C8  93 C1 00 08 */	stw r30, 8(r1)
/* 801C2B4C 001B88CC  7C 7E 1B 78 */	mr r30, r3
/* 801C2B50 001B88D0  48 01 A3 C1 */	bl OSDisableInterrupts
/* 801C2B54 001B88D4  7C 7F 1B 78 */	mr r31, r3
/* 801C2B58 001B88D8  7F C3 F3 78 */	mr r3, r30
/* 801C2B5C 001B88DC  48 01 42 C1 */	bl OSGetAlarmUserData
/* 801C2B60 001B88E0  38 80 00 01 */	li r4, 1
/* 801C2B64 001B88E4  38 00 00 00 */	li r0, 0
/* 801C2B68 001B88E8  98 83 00 06 */	stb r4, 6(r3)
/* 801C2B6C 001B88EC  98 03 00 07 */	stb r0, 7(r3)
/* 801C2B70 001B88F0  7F E3 FB 78 */	mr r3, r31
/* 801C2B74 001B88F4  48 01 A3 C5 */	bl OSRestoreInterrupts
/* 801C2B78 001B88F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C2B7C 001B88FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2B80 001B8900  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C2B84 001B8904  7C 08 03 A6 */	mtlr r0
/* 801C2B88 001B8908  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2B8C 001B890C  4E 80 00 20 */	blr 

.global nw4r3snd13RemoteSpeakerFP7OSAlarmP$7IntervalAlarmHandler
nw4r3snd13RemoteSpeakerFP7OSAlarmP$7IntervalAlarmHandler:
/* 801C2B90 001B8910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2B94 001B8914  7C 08 02 A6 */	mflr r0
/* 801C2B98 001B8918  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2B9C 001B891C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C2BA0 001B8920  93 C1 00 08 */	stw r30, 8(r1)
/* 801C2BA4 001B8924  7C 7E 1B 78 */	mr r30, r3
/* 801C2BA8 001B8928  48 01 A3 69 */	bl OSDisableInterrupts
/* 801C2BAC 001B892C  7C 7F 1B 78 */	mr r31, r3
/* 801C2BB0 001B8930  7F C3 F3 78 */	mr r3, r30
/* 801C2BB4 001B8934  48 01 42 69 */	bl OSGetAlarmUserData
/* 801C2BB8 001B8938  88 03 00 08 */	lbz r0, 8(r3)
/* 801C2BBC 001B893C  7C 7E 1B 78 */	mr r30, r3
/* 801C2BC0 001B8940  2C 00 00 00 */	cmpwi r0, 0
/* 801C2BC4 001B8944  41 82 00 18 */	beq lbl_801C2BDC
/* 801C2BC8 001B8948  38 63 00 40 */	addi r3, r3, 0x40
/* 801C2BCC 001B894C  48 01 3E 21 */	bl OSCancelAlarm
/* 801C2BD0 001B8950  38 00 00 00 */	li r0, 0
/* 801C2BD4 001B8954  98 1E 00 06 */	stb r0, 6(r30)
/* 801C2BD8 001B8958  98 1E 00 07 */	stb r0, 7(r30)
lbl_801C2BDC:
/* 801C2BDC 001B895C  38 00 00 00 */	li r0, 0
/* 801C2BE0 001B8960  7F E3 FB 78 */	mr r3, r31
/* 801C2BE4 001B8964  98 1E 00 08 */	stb r0, 8(r30)
/* 801C2BE8 001B8968  48 01 A3 51 */	bl OSRestoreInterrupts
/* 801C2BEC 001B896C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C2BF0 001B8970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2BF4 001B8974  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C2BF8 001B8978  7C 08 03 A6 */	mtlr r0
/* 801C2BFC 001B897C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2C00 001B8980  4E 80 00 20 */	blr 


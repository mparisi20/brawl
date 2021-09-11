.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global bta_dm_init_pm
bta_dm_init_pm:
/* 802350CC 0022AE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802350D0 0022AE50  7C 08 02 A6 */	mflr r0
/* 802350D4 0022AE54  3C 60 80 53 */	lis r3, lbl_80529A98@ha
/* 802350D8 0022AE58  38 80 00 00 */	li r4, 0
/* 802350DC 0022AE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802350E0 0022AE60  38 63 9A 98 */	addi r3, r3, lbl_80529A98@l
/* 802350E4 0022AE64  38 A0 00 2E */	li r5, 0x2e
/* 802350E8 0022AE68  4B DC F3 55 */	bl memset
/* 802350EC 0022AE6C  80 6D A9 90 */	lwz r3, lbl_8059EDB0-_SDA_BASE_(r13)
/* 802350F0 0022AE70  88 03 00 01 */	lbz r0, 1(r3)
/* 802350F4 0022AE74  2C 00 00 00 */	cmpwi r0, 0
/* 802350F8 0022AE78  41 82 00 2C */	beq lbl_80235124
/* 802350FC 0022AE7C  3C 60 80 23 */	lis r3, bta_dm_pm_cback@ha
/* 80235100 0022AE80  38 63 51 4C */	addi r3, r3, bta_dm_pm_cback@l
/* 80235104 0022AE84  4B FF D0 25 */	bl bta_sys_pm_register
/* 80235108 0022AE88  3C 80 80 53 */	lis r4, lbl_80529994@ha
/* 8023510C 0022AE8C  3C A0 80 23 */	lis r5, bta_dm_pm_btm_cback@ha
/* 80235110 0022AE90  38 84 99 94 */	addi r4, r4, lbl_80529994@l
/* 80235114 0022AE94  38 60 00 03 */	li r3, 3
/* 80235118 0022AE98  38 84 00 95 */	addi r4, r4, 0x95
/* 8023511C 0022AE9C  38 A5 58 4C */	addi r5, r5, bta_dm_pm_btm_cback@l
/* 80235120 0022AEA0  48 00 87 A1 */	bl BTM_PmRegister
lbl_80235124:
/* 80235124 0022AEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80235128 0022AEA8  7C 08 03 A6 */	mtlr r0
/* 8023512C 0022AEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80235130 0022AEB0  4E 80 00 20 */	blr 

.global bta_dm_disable_pm
bta_dm_disable_pm:
/* 80235134 0022AEB4  3C 80 80 53 */	lis r4, lbl_80529994@ha
/* 80235138 0022AEB8  38 60 00 04 */	li r3, 4
/* 8023513C 0022AEBC  38 84 99 94 */	addi r4, r4, lbl_80529994@l
/* 80235140 0022AEC0  38 A0 00 00 */	li r5, 0
/* 80235144 0022AEC4  38 84 00 95 */	addi r4, r4, 0x95
/* 80235148 0022AEC8  48 00 87 78 */	b BTM_PmRegister

.global bta_dm_pm_cback
bta_dm_pm_cback:
/* 8023514C 0022AECC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80235150 0022AED0  7C 08 02 A6 */	mflr r0
/* 80235154 0022AED4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80235158 0022AED8  39 61 00 40 */	addi r11, r1, 0x40
/* 8023515C 0022AEDC  48 1B C1 B5 */	bl _savegpr_23
/* 80235160 0022AEE0  7C 79 1B 78 */	mr r25, r3
/* 80235164 0022AEE4  7C 9A 23 78 */	mr r26, r4
/* 80235168 0022AEE8  7C BB 2B 78 */	mr r27, r5
/* 8023516C 0022AEEC  7C DC 33 78 */	mr r28, r6
/* 80235170 0022AEF0  38 61 00 0C */	addi r3, r1, 0xc
/* 80235174 0022AEF4  48 00 61 E5 */	bl BTM_ReadLocalVersion
/* 80235178 0022AEF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023517C 0022AEFC  40 82 00 6C */	bne lbl_802351E8
/* 80235180 0022AF00  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 80235184 0022AF04  28 00 00 0F */	cmplwi r0, 0xf
/* 80235188 0022AF08  40 82 00 60 */	bne lbl_802351E8
/* 8023518C 0022AF0C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80235190 0022AF10  28 00 00 03 */	cmplwi r0, 3
/* 80235194 0022AF14  40 80 00 54 */	bge lbl_802351E8
/* 80235198 0022AF18  28 19 00 04 */	cmplwi r25, 4
/* 8023519C 0022AF1C  40 82 00 28 */	bne lbl_802351C4
/* 802351A0 0022AF20  3C A0 80 41 */	lis r5, lbl_8040D698@ha
/* 802351A4 0022AF24  7F 83 E3 78 */	mr r3, r28
/* 802351A8 0022AF28  38 A5 D6 98 */	addi r5, r5, lbl_8040D698@l
/* 802351AC 0022AF2C  38 81 00 08 */	addi r4, r1, 8
/* 802351B0 0022AF30  A0 05 00 04 */	lhz r0, 4(r5)
/* 802351B4 0022AF34  70 00 00 0B */	andi. r0, r0, 0xb
/* 802351B8 0022AF38  B0 01 00 08 */	sth r0, 8(r1)
/* 802351BC 0022AF3C  48 00 35 AD */	bl BTM_SetLinkPolicy
/* 802351C0 0022AF40  48 00 00 28 */	b lbl_802351E8
lbl_802351C4:
/* 802351C4 0022AF44  28 19 00 05 */	cmplwi r25, 5
/* 802351C8 0022AF48  40 82 00 20 */	bne lbl_802351E8
/* 802351CC 0022AF4C  3C A0 80 41 */	lis r5, lbl_8040D698@ha
/* 802351D0 0022AF50  7F 83 E3 78 */	mr r3, r28
/* 802351D4 0022AF54  38 A5 D6 98 */	addi r5, r5, lbl_8040D698@l
/* 802351D8 0022AF58  38 81 00 08 */	addi r4, r1, 8
/* 802351DC 0022AF5C  A0 05 00 04 */	lhz r0, 4(r5)
/* 802351E0 0022AF60  B0 01 00 08 */	sth r0, 8(r1)
/* 802351E4 0022AF64  48 00 35 85 */	bl BTM_SetLinkPolicy
lbl_802351E8:
/* 802351E8 0022AF68  80 AD A9 90 */	lwz r5, lbl_8059EDB0-_SDA_BASE_(r13)
/* 802351EC 0022AF6C  3B C0 00 01 */	li r30, 1
/* 802351F0 0022AF70  88 85 00 01 */	lbz r4, 1(r5)
/* 802351F4 0022AF74  48 00 00 38 */	b lbl_8023522C
lbl_802351F8:
/* 802351F8 0022AF78  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802351FC 0022AF7C  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 80235200 0022AF80  7C 03 00 50 */	subf r0, r3, r0
/* 80235204 0022AF84  7C 65 02 14 */	add r3, r5, r0
/* 80235208 0022AF88  7C 05 00 AE */	lbzx r0, r5, r0
/* 8023520C 0022AF8C  7C 1A 00 40 */	cmplw r26, r0
/* 80235210 0022AF90  40 82 00 18 */	bne lbl_80235228
/* 80235214 0022AF94  88 03 00 01 */	lbz r0, 1(r3)
/* 80235218 0022AF98  28 00 00 FF */	cmplwi r0, 0xff
/* 8023521C 0022AF9C  41 82 00 1C */	beq lbl_80235238
/* 80235220 0022AFA0  7C 1B 00 40 */	cmplw r27, r0
/* 80235224 0022AFA4  41 82 00 14 */	beq lbl_80235238
lbl_80235228:
/* 80235228 0022AFA8  3B DE 00 01 */	addi r30, r30, 1
lbl_8023522C:
/* 8023522C 0022AFAC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80235230 0022AFB0  7C 00 20 40 */	cmplw r0, r4
/* 80235234 0022AFB4  40 81 FF C4 */	ble lbl_802351F8
lbl_80235238:
/* 80235238 0022AFB8  88 05 00 01 */	lbz r0, 1(r5)
/* 8023523C 0022AFBC  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80235240 0022AFC0  7C 03 00 40 */	cmplw r3, r0
/* 80235244 0022AFC4  41 81 02 70 */	bgt lbl_802354B4
/* 80235248 0022AFC8  3E E0 80 53 */	lis r23, lbl_80529994@ha
/* 8023524C 0022AFCC  3B E0 00 00 */	li r31, 0
/* 80235250 0022AFD0  3A F7 99 94 */	addi r23, r23, lbl_80529994@l
lbl_80235254:
/* 80235254 0022AFD4  57 FD 2C F4 */	rlwinm r29, r31, 5, 0x13, 0x1a
/* 80235258 0022AFD8  7F 17 EA 14 */	add r24, r23, r29
/* 8023525C 0022AFDC  88 18 00 B6 */	lbz r0, 0xb6(r24)
/* 80235260 0022AFE0  2C 00 00 00 */	cmpwi r0, 0
/* 80235264 0022AFE4  41 82 00 30 */	beq lbl_80235294
/* 80235268 0022AFE8  7F 84 E3 78 */	mr r4, r28
/* 8023526C 0022AFEC  38 78 00 B0 */	addi r3, r24, 0xb0
/* 80235270 0022AFF0  4B FF CD F9 */	bl bdcmp
/* 80235274 0022AFF4  2C 03 00 00 */	cmpwi r3, 0
/* 80235278 0022AFF8  40 82 00 1C */	bne lbl_80235294
/* 8023527C 0022AFFC  7F 03 C3 78 */	mr r3, r24
/* 80235280 0022B000  38 63 00 98 */	addi r3, r3, 0x98
/* 80235284 0022B004  4B FF D2 99 */	bl bta_sys_stop_timer
/* 80235288 0022B008  38 00 00 00 */	li r0, 0
/* 8023528C 0022B00C  98 18 00 B6 */	stb r0, 0xb6(r24)
/* 80235290 0022B010  48 00 00 10 */	b lbl_802352A0
lbl_80235294:
/* 80235294 0022B014  3B FF 00 01 */	addi r31, r31, 1
/* 80235298 0022B018  28 1F 00 03 */	cmplwi r31, 3
/* 8023529C 0022B01C  41 80 FF B8 */	blt lbl_80235254
lbl_802352A0:
/* 802352A0 0022B020  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802352A4 0022B024  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802352A8 0022B028  7F C4 18 50 */	subf r30, r4, r3
/* 802352AC 0022B02C  80 0D A9 90 */	lwz r0, lbl_8059EDB0-_SDA_BASE_(r13)
/* 802352B0 0022B030  80 8D A9 94 */	lwz r4, lbl_8059EDB4-_SDA_BASE_(r13)
/* 802352B4 0022B034  57 3F 1D 78 */	rlwinm r31, r25, 3, 0x15, 0x1c
/* 802352B8 0022B038  7C 60 F2 14 */	add r3, r0, r30
/* 802352BC 0022B03C  88 03 00 02 */	lbz r0, 2(r3)
/* 802352C0 0022B040  1C 00 00 4A */	mulli r0, r0, 0x4a
/* 802352C4 0022B044  7C 04 02 14 */	add r0, r4, r0
/* 802352C8 0022B048  7C 60 FA 14 */	add r3, r0, r31
/* 802352CC 0022B04C  88 03 00 02 */	lbz r0, 2(r3)
/* 802352D0 0022B050  2C 00 00 00 */	cmpwi r0, 0
/* 802352D4 0022B054  41 82 01 E0 */	beq lbl_802354B4
/* 802352D8 0022B058  3E E0 80 53 */	lis r23, lbl_80529A98@ha
/* 802352DC 0022B05C  3B A0 00 00 */	li r29, 0
/* 802352E0 0022B060  3B 17 9A 98 */	addi r24, r23, lbl_80529A98@l
/* 802352E4 0022B064  48 00 00 44 */	b lbl_80235328
lbl_802352E8:
/* 802352E8 0022B068  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802352EC 0022B06C  57 A0 1D 78 */	rlwinm r0, r29, 3, 0x15, 0x1c
/* 802352F0 0022B070  7C 00 1A 14 */	add r0, r0, r3
/* 802352F4 0022B074  7C 78 02 14 */	add r3, r24, r0
/* 802352F8 0022B078  88 03 00 07 */	lbz r0, 7(r3)
/* 802352FC 0022B07C  7C 1A 00 40 */	cmplw r26, r0
/* 80235300 0022B080  40 82 00 24 */	bne lbl_80235324
/* 80235304 0022B084  88 03 00 08 */	lbz r0, 8(r3)
/* 80235308 0022B088  7C 1B 00 40 */	cmplw r27, r0
/* 8023530C 0022B08C  40 82 00 18 */	bne lbl_80235324
/* 80235310 0022B090  7F 84 E3 78 */	mr r4, r28
/* 80235314 0022B094  38 63 00 01 */	addi r3, r3, 1
/* 80235318 0022B098  4B FF CD 51 */	bl bdcmp
/* 8023531C 0022B09C  2C 03 00 00 */	cmpwi r3, 0
/* 80235320 0022B0A0  41 82 00 18 */	beq lbl_80235338
lbl_80235324:
/* 80235324 0022B0A4  3B BD 00 01 */	addi r29, r29, 1
lbl_80235328:
/* 80235328 0022B0A8  88 17 9A 98 */	lbz r0, -0x6568(r23)
/* 8023532C 0022B0AC  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80235330 0022B0B0  7C 03 00 40 */	cmplw r3, r0
/* 80235334 0022B0B4  41 80 FF B4 */	blt lbl_802352E8
lbl_80235338:
/* 80235338 0022B0B8  80 0D A9 90 */	lwz r0, lbl_8059EDB0-_SDA_BASE_(r13)
/* 8023533C 0022B0BC  80 8D A9 94 */	lwz r4, lbl_8059EDB4-_SDA_BASE_(r13)
/* 80235340 0022B0C0  7C 60 F2 14 */	add r3, r0, r30
/* 80235344 0022B0C4  88 03 00 02 */	lbz r0, 2(r3)
/* 80235348 0022B0C8  1C 00 00 4A */	mulli r0, r0, 0x4a
/* 8023534C 0022B0CC  7C 04 02 14 */	add r0, r4, r0
/* 80235350 0022B0D0  7C 60 FA 14 */	add r3, r0, r31
/* 80235354 0022B0D4  88 03 00 02 */	lbz r0, 2(r3)
/* 80235358 0022B0D8  28 00 00 10 */	cmplwi r0, 0x10
/* 8023535C 0022B0DC  40 82 00 70 */	bne lbl_802353CC
/* 80235360 0022B0E0  3F 60 80 53 */	lis r27, lbl_80529A98@ha
/* 80235364 0022B0E4  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80235368 0022B0E8  88 1B 9A 98 */	lbz r0, lbl_80529A98@l(r27)
/* 8023536C 0022B0EC  7C 03 00 40 */	cmplw r3, r0
/* 80235370 0022B0F0  41 82 00 C8 */	beq lbl_80235438
/* 80235374 0022B0F4  3B 5B 9A 98 */	addi r26, r27, -25960
/* 80235378 0022B0F8  48 00 00 38 */	b lbl_802353B0
lbl_8023537C:
/* 8023537C 0022B0FC  57 A6 06 3E */	clrlwi r6, r29, 0x18
/* 80235380 0022B100  57 A4 1D 78 */	rlwinm r4, r29, 3, 0x15, 0x1c
/* 80235384 0022B104  38 66 00 01 */	addi r3, r6, 1
/* 80235388 0022B108  38 A0 00 09 */	li r5, 9
/* 8023538C 0022B10C  54 60 18 38 */	slwi r0, r3, 3
/* 80235390 0022B110  7C 84 32 14 */	add r4, r4, r6
/* 80235394 0022B114  7C 00 1A 14 */	add r0, r0, r3
/* 80235398 0022B118  7C 7A 22 14 */	add r3, r26, r4
/* 8023539C 0022B11C  7C 9A 02 14 */	add r4, r26, r0
/* 802353A0 0022B120  38 63 00 01 */	addi r3, r3, 1
/* 802353A4 0022B124  38 84 00 01 */	addi r4, r4, 1
/* 802353A8 0022B128  4B DC EF 91 */	bl func_80004338
/* 802353AC 0022B12C  3B BD 00 01 */	addi r29, r29, 1
lbl_802353B0:
/* 802353B0 0022B130  88 7B 9A 98 */	lbz r3, -0x6568(r27)
/* 802353B4 0022B134  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802353B8 0022B138  7C 00 18 40 */	cmplw r0, r3
/* 802353BC 0022B13C  41 80 FF C0 */	blt lbl_8023537C
/* 802353C0 0022B140  38 03 FF FF */	addi r0, r3, -1
/* 802353C4 0022B144  98 1B 9A 98 */	stb r0, -0x6568(r27)
/* 802353C8 0022B148  48 00 00 70 */	b lbl_80235438
lbl_802353CC:
/* 802353CC 0022B14C  3F C0 80 53 */	lis r30, lbl_80529A98@ha
/* 802353D0 0022B150  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 802353D4 0022B154  88 1E 9A 98 */	lbz r0, lbl_80529A98@l(r30)
/* 802353D8 0022B158  7C 04 00 40 */	cmplw r4, r0
/* 802353DC 0022B15C  40 82 00 5C */	bne lbl_80235438
/* 802353E0 0022B160  28 00 00 05 */	cmplwi r0, 5
/* 802353E4 0022B164  40 82 00 24 */	bne lbl_80235408
/* 802353E8 0022B168  88 0D C9 10 */	lbz r0, lbl_805A0D30-_SDA_BASE_(r13)
/* 802353EC 0022B16C  28 00 00 02 */	cmplwi r0, 2
/* 802353F0 0022B170  41 80 00 C4 */	blt lbl_802354B4
/* 802353F4 0022B174  3C 80 80 48 */	lis r4, lbl_8047FDE0@ha
/* 802353F8 0022B178  38 60 05 01 */	li r3, 0x501
/* 802353FC 0022B17C  38 84 FD E0 */	addi r4, r4, lbl_8047FDE0@l
/* 80235400 0022B180  4B FF C5 E5 */	bl LogMsg_0
/* 80235404 0022B184  48 00 00 B0 */	b lbl_802354B4
lbl_80235408:
/* 80235408 0022B188  57 A3 1D 78 */	rlwinm r3, r29, 3, 0x15, 0x1c
/* 8023540C 0022B18C  38 1E 9A 98 */	addi r0, r30, -25960
/* 80235410 0022B190  7C 63 22 14 */	add r3, r3, r4
/* 80235414 0022B194  7F 84 E3 78 */	mr r4, r28
/* 80235418 0022B198  7C A0 1A 14 */	add r5, r0, r3
/* 8023541C 0022B19C  9B 45 00 07 */	stb r26, 7(r5)
/* 80235420 0022B1A0  38 65 00 01 */	addi r3, r5, 1
/* 80235424 0022B1A4  9B 65 00 08 */	stb r27, 8(r5)
/* 80235428 0022B1A8  4B FF CC 0D */	bl bdcpy
/* 8023542C 0022B1AC  88 7E 9A 98 */	lbz r3, -0x6568(r30)
/* 80235430 0022B1B0  38 03 00 01 */	addi r0, r3, 1
/* 80235434 0022B1B4  98 1E 9A 98 */	stb r0, -0x6568(r30)
lbl_80235438:
/* 80235438 0022B1B8  3C 60 80 53 */	lis r3, lbl_80529994@ha
/* 8023543C 0022B1BC  3B 00 00 00 */	li r24, 0
/* 80235440 0022B1C0  3B 43 99 94 */	addi r26, r3, lbl_80529994@l
/* 80235444 0022B1C4  48 00 00 38 */	b lbl_8023547C
lbl_80235448:
/* 80235448 0022B1C8  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8023544C 0022B1CC  7F 84 E3 78 */	mr r4, r28
/* 80235450 0022B1D0  1E E0 00 0B */	mulli r23, r0, 0xb
/* 80235454 0022B1D4  7C 7A BA 14 */	add r3, r26, r23
/* 80235458 0022B1D8  4B FF CC 11 */	bl bdcmp
/* 8023545C 0022B1DC  2C 03 00 00 */	cmpwi r3, 0
/* 80235460 0022B1E0  40 82 00 18 */	bne lbl_80235478
/* 80235464 0022B1E4  7C 7A BA 14 */	add r3, r26, r23
/* 80235468 0022B1E8  38 00 00 00 */	li r0, 0
/* 8023546C 0022B1EC  98 03 00 09 */	stb r0, 9(r3)
/* 80235470 0022B1F0  98 03 00 0A */	stb r0, 0xa(r3)
/* 80235474 0022B1F4  48 00 00 18 */	b lbl_8023548C
lbl_80235478:
/* 80235478 0022B1F8  3B 18 00 01 */	addi r24, r24, 1
lbl_8023547C:
/* 8023547C 0022B1FC  88 1A 00 4D */	lbz r0, 0x4d(r26)
/* 80235480 0022B200  57 03 06 3E */	clrlwi r3, r24, 0x18
/* 80235484 0022B204  7C 03 00 40 */	cmplw r3, r0
/* 80235488 0022B208  41 80 FF C0 */	blt lbl_80235448
lbl_8023548C:
/* 8023548C 0022B20C  3C C0 80 53 */	lis r6, lbl_80529A98@ha
/* 80235490 0022B210  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 80235494 0022B214  57 A0 1D 78 */	rlwinm r0, r29, 3, 0x15, 0x1c
/* 80235498 0022B218  7F 83 E3 78 */	mr r3, r28
/* 8023549C 0022B21C  38 C6 9A 98 */	addi r6, r6, lbl_80529A98@l
/* 802354A0 0022B220  38 80 00 00 */	li r4, 0
/* 802354A4 0022B224  7C 00 2A 14 */	add r0, r0, r5
/* 802354A8 0022B228  7C A6 02 14 */	add r5, r6, r0
/* 802354AC 0022B22C  9B 25 00 09 */	stb r25, 9(r5)
/* 802354B0 0022B230  48 00 00 1D */	bl bta_dm_pm_set_mode
lbl_802354B4:
/* 802354B4 0022B234  39 61 00 40 */	addi r11, r1, 0x40
/* 802354B8 0022B238  48 1B BE A5 */	bl _restgpr_23
/* 802354BC 0022B23C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802354C0 0022B240  7C 08 03 A6 */	mtlr r0
/* 802354C4 0022B244  38 21 00 40 */	addi r1, r1, 0x40
/* 802354C8 0022B248  4E 80 00 20 */	blr 

.global bta_dm_pm_set_mode
bta_dm_pm_set_mode:
/* 802354CC 0022B24C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802354D0 0022B250  7C 08 02 A6 */	mflr r0
/* 802354D4 0022B254  90 01 00 54 */	stw r0, 0x54(r1)
/* 802354D8 0022B258  39 61 00 50 */	addi r11, r1, 0x50
/* 802354DC 0022B25C  48 1B BE 29 */	bl _savegpr_20
/* 802354E0 0022B260  3C A0 80 53 */	lis r5, lbl_80529994@ha
/* 802354E4 0022B264  7C 74 1B 78 */	mr r20, r3
/* 802354E8 0022B268  3B 85 99 94 */	addi r28, r5, lbl_80529994@l
/* 802354EC 0022B26C  7C 95 23 78 */	mr r21, r4
/* 802354F0 0022B270  88 1C 00 4D */	lbz r0, 0x4d(r28)
/* 802354F4 0022B274  3B 60 00 00 */	li r27, 0
/* 802354F8 0022B278  3B 40 00 00 */	li r26, 0
/* 802354FC 0022B27C  3B 20 00 00 */	li r25, 0
/* 80235500 0022B280  2C 00 00 00 */	cmpwi r0, 0
/* 80235504 0022B284  3B 00 00 00 */	li r24, 0
/* 80235508 0022B288  3A E0 00 00 */	li r23, 0
/* 8023550C 0022B28C  3A C0 00 00 */	li r22, 0
/* 80235510 0022B290  41 82 03 24 */	beq lbl_80235834
/* 80235514 0022B294  3B C0 00 00 */	li r30, 0
/* 80235518 0022B298  48 00 00 30 */	b lbl_80235548
lbl_8023551C:
/* 8023551C 0022B29C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80235520 0022B2A0  7E 84 A3 78 */	mr r4, r20
/* 80235524 0022B2A4  1F A0 00 0B */	mulli r29, r0, 0xb
/* 80235528 0022B2A8  7C 7C EA 14 */	add r3, r28, r29
/* 8023552C 0022B2AC  4B FF CB 3D */	bl bdcmp
/* 80235530 0022B2B0  2C 03 00 00 */	cmpwi r3, 0
/* 80235534 0022B2B4  40 82 00 10 */	bne lbl_80235544
/* 80235538 0022B2B8  7F 1C EA 14 */	add r24, r28, r29
/* 8023553C 0022B2BC  8B 38 00 0A */	lbz r25, 0xa(r24)
/* 80235540 0022B2C0  48 00 00 18 */	b lbl_80235558
lbl_80235544:
/* 80235544 0022B2C4  3B DE 00 01 */	addi r30, r30, 1
lbl_80235548:
/* 80235548 0022B2C8  88 1C 00 4D */	lbz r0, 0x4d(r28)
/* 8023554C 0022B2CC  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80235550 0022B2D0  7C 03 00 40 */	cmplw r3, r0
/* 80235554 0022B2D4  41 80 FF C8 */	blt lbl_8023551C
lbl_80235558:
/* 80235558 0022B2D8  2C 18 00 00 */	cmpwi r24, 0
/* 8023555C 0022B2DC  41 82 02 D8 */	beq lbl_80235834
/* 80235560 0022B2E0  3F C0 80 53 */	lis r30, lbl_80529A98@ha
/* 80235564 0022B2E4  3B 80 00 00 */	li r28, 0
/* 80235568 0022B2E8  3B FE 9A 98 */	addi r31, r30, lbl_80529A98@l
/* 8023556C 0022B2EC  48 00 01 30 */	b lbl_8023569C
lbl_80235570:
/* 80235570 0022B2F0  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 80235574 0022B2F4  57 80 1D 78 */	rlwinm r0, r28, 3, 0x15, 0x1c
/* 80235578 0022B2F8  7F A0 1A 14 */	add r29, r0, r3
/* 8023557C 0022B2FC  7E 84 A3 78 */	mr r4, r20
/* 80235580 0022B300  7C 7F EA 14 */	add r3, r31, r29
/* 80235584 0022B304  38 63 00 01 */	addi r3, r3, 1
/* 80235588 0022B308  4B FF CA E1 */	bl bdcmp
/* 8023558C 0022B30C  2C 03 00 00 */	cmpwi r3, 0
/* 80235590 0022B310  40 82 01 08 */	bne lbl_80235698
/* 80235594 0022B314  80 ED A9 90 */	lwz r7, lbl_8059EDB0-_SDA_BASE_(r13)
/* 80235598 0022B318  7D 1F EA 14 */	add r8, r31, r29
/* 8023559C 0022B31C  88 68 00 08 */	lbz r3, 8(r8)
/* 802355A0 0022B320  39 20 00 01 */	li r9, 1
/* 802355A4 0022B324  88 C7 00 01 */	lbz r6, 1(r7)
/* 802355A8 0022B328  88 88 00 07 */	lbz r4, 7(r8)
/* 802355AC 0022B32C  48 00 00 38 */	b lbl_802355E4
lbl_802355B0:
/* 802355B0 0022B330  55 25 06 3E */	clrlwi r5, r9, 0x18
/* 802355B4 0022B334  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802355B8 0022B338  7C 05 00 50 */	subf r0, r5, r0
/* 802355BC 0022B33C  7C A7 02 14 */	add r5, r7, r0
/* 802355C0 0022B340  7C 07 00 AE */	lbzx r0, r7, r0
/* 802355C4 0022B344  7C 00 20 40 */	cmplw r0, r4
/* 802355C8 0022B348  40 82 00 18 */	bne lbl_802355E0
/* 802355CC 0022B34C  88 05 00 01 */	lbz r0, 1(r5)
/* 802355D0 0022B350  28 00 00 FF */	cmplwi r0, 0xff
/* 802355D4 0022B354  41 82 00 1C */	beq lbl_802355F0
/* 802355D8 0022B358  7C 00 18 40 */	cmplw r0, r3
/* 802355DC 0022B35C  41 82 00 14 */	beq lbl_802355F0
lbl_802355E0:
/* 802355E0 0022B360  39 29 00 01 */	addi r9, r9, 1
lbl_802355E4:
/* 802355E4 0022B364  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 802355E8 0022B368  7C 00 30 40 */	cmplw r0, r6
/* 802355EC 0022B36C  40 81 FF C4 */	ble lbl_802355B0
lbl_802355F0:
/* 802355F0 0022B370  55 23 06 3E */	clrlwi r3, r9, 0x18
/* 802355F4 0022B374  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802355F8 0022B378  7C 63 00 50 */	subf r3, r3, r0
/* 802355FC 0022B37C  88 08 00 09 */	lbz r0, 9(r8)
/* 80235600 0022B380  7C 87 1A 14 */	add r4, r7, r3
/* 80235604 0022B384  80 6D A9 94 */	lwz r3, lbl_8059EDB4-_SDA_BASE_(r13)
/* 80235608 0022B388  88 84 00 02 */	lbz r4, 2(r4)
/* 8023560C 0022B38C  54 00 18 38 */	slwi r0, r0, 3
/* 80235610 0022B390  1C 84 00 4A */	mulli r4, r4, 0x4a
/* 80235614 0022B394  7C A3 22 14 */	add r5, r3, r4
/* 80235618 0022B398  7C 65 02 14 */	add r3, r5, r0
/* 8023561C 0022B39C  88 05 00 00 */	lbz r0, 0(r5)
/* 80235620 0022B3A0  88 83 00 02 */	lbz r4, 2(r3)
/* 80235624 0022B3A4  7E F7 03 78 */	or r23, r23, r0
/* 80235628 0022B3A8  7F 20 20 39 */	and. r0, r25, r4
/* 8023562C 0022B3AC  40 82 00 34 */	bne lbl_80235660
/* 80235630 0022B3B0  7C 7F EA 14 */	add r3, r31, r29
/* 80235634 0022B3B4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80235638 0022B3B8  88 63 00 09 */	lbz r3, 9(r3)
/* 8023563C 0022B3BC  54 63 18 38 */	slwi r3, r3, 3
/* 80235640 0022B3C0  7C A5 1A 14 */	add r5, r5, r3
/* 80235644 0022B3C4  88 65 00 02 */	lbz r3, 2(r5)
/* 80235648 0022B3C8  7C 03 00 40 */	cmplw r3, r0
/* 8023564C 0022B3CC  7E D6 1B 78 */	or r22, r22, r3
/* 80235650 0022B3D0  40 81 00 48 */	ble lbl_80235698
/* 80235654 0022B3D4  A3 45 00 04 */	lhz r26, 4(r5)
/* 80235658 0022B3D8  7C 9B 23 78 */	mr r27, r4
/* 8023565C 0022B3DC  48 00 00 3C */	b lbl_80235698
lbl_80235660:
/* 80235660 0022B3E0  88 63 00 06 */	lbz r3, 6(r3)
/* 80235664 0022B3E4  7F 20 18 39 */	and. r0, r25, r3
/* 80235668 0022B3E8  40 82 00 30 */	bne lbl_80235698
/* 8023566C 0022B3EC  7C 9F EA 14 */	add r4, r31, r29
/* 80235670 0022B3F0  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80235674 0022B3F4  88 84 00 09 */	lbz r4, 9(r4)
/* 80235678 0022B3F8  54 84 18 38 */	slwi r4, r4, 3
/* 8023567C 0022B3FC  7C A5 22 14 */	add r5, r5, r4
/* 80235680 0022B400  88 85 00 06 */	lbz r4, 6(r5)
/* 80235684 0022B404  7C 04 00 40 */	cmplw r4, r0
/* 80235688 0022B408  7E D6 23 78 */	or r22, r22, r4
/* 8023568C 0022B40C  40 81 00 0C */	ble lbl_80235698
/* 80235690 0022B410  7C 7B 1B 78 */	mr r27, r3
/* 80235694 0022B414  A3 45 00 08 */	lhz r26, 8(r5)
lbl_80235698:
/* 80235698 0022B418  3B 9C 00 01 */	addi r28, r28, 1
lbl_8023569C:
/* 8023569C 0022B41C  88 1E 9A 98 */	lbz r0, -0x6568(r30)
/* 802356A0 0022B420  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802356A4 0022B424  7C 03 00 40 */	cmplw r3, r0
/* 802356A8 0022B428  41 80 FE C8 */	blt lbl_80235570
/* 802356AC 0022B42C  57 60 07 BF */	clrlwi. r0, r27, 0x1e
/* 802356B0 0022B430  41 82 00 24 */	beq lbl_802356D4
/* 802356B4 0022B434  56 E3 06 3E */	clrlwi r3, r23, 0x18
/* 802356B8 0022B438  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802356BC 0022B43C  7C 60 00 39 */	and. r0, r3, r0
/* 802356C0 0022B440  40 82 00 14 */	bne lbl_802356D4
/* 802356C4 0022B444  7E E0 B0 38 */	and r0, r23, r22
/* 802356C8 0022B448  54 1B 07 BF */	clrlwi. r27, r0, 0x1e
/* 802356CC 0022B44C  40 82 00 08 */	bne lbl_802356D4
/* 802356D0 0022B450  3B 40 00 00 */	li r26, 0
lbl_802356D4:
/* 802356D4 0022B454  2C 15 00 00 */	cmpwi r21, 0
/* 802356D8 0022B458  40 82 00 A0 */	bne lbl_80235778
/* 802356DC 0022B45C  2C 1A 00 00 */	cmpwi r26, 0
/* 802356E0 0022B460  41 82 00 98 */	beq lbl_80235778
/* 802356E4 0022B464  3E A0 80 53 */	lis r21, lbl_80529994@ha
/* 802356E8 0022B468  38 00 00 03 */	li r0, 3
/* 802356EC 0022B46C  3A B5 99 94 */	addi r21, r21, lbl_80529994@l
/* 802356F0 0022B470  38 80 00 00 */	li r4, 0
/* 802356F4 0022B474  7C 09 03 A6 */	mtctr r0
lbl_802356F8:
/* 802356F8 0022B478  54 96 2C F4 */	rlwinm r22, r4, 5, 0x13, 0x1a
/* 802356FC 0022B47C  7C 75 B2 14 */	add r3, r21, r22
/* 80235700 0022B480  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 80235704 0022B484  2C 00 00 00 */	cmpwi r0, 0
/* 80235708 0022B488  40 82 00 3C */	bne lbl_80235744
/* 8023570C 0022B48C  38 00 00 01 */	li r0, 1
/* 80235710 0022B490  7E 84 A3 78 */	mr r4, r20
/* 80235714 0022B494  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 80235718 0022B498  38 63 00 B0 */	addi r3, r3, 0xb0
/* 8023571C 0022B49C  4B FF C9 19 */	bl bdcpy
/* 80235720 0022B4A0  3C 80 80 23 */	lis r4, bta_dm_pm_timer_cback@ha
/* 80235724 0022B4A4  7C 75 B2 14 */	add r3, r21, r22
/* 80235728 0022B4A8  38 84 58 C4 */	addi r4, r4, bta_dm_pm_timer_cback@l
/* 8023572C 0022B4AC  7F 45 D3 78 */	mr r5, r26
/* 80235730 0022B4B0  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 80235734 0022B4B4  38 63 00 98 */	addi r3, r3, 0x98
/* 80235738 0022B4B8  38 80 00 00 */	li r4, 0
/* 8023573C 0022B4BC  4B FF CD C1 */	bl bta_sys_start_timer
/* 80235740 0022B4C0  48 00 00 F4 */	b lbl_80235834
lbl_80235744:
/* 80235744 0022B4C4  38 84 00 01 */	addi r4, r4, 1
/* 80235748 0022B4C8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8023574C 0022B4CC  42 00 FF AC */	bdnz lbl_802356F8
/* 80235750 0022B4D0  28 00 00 03 */	cmplwi r0, 3
/* 80235754 0022B4D4  40 82 00 24 */	bne lbl_80235778
/* 80235758 0022B4D8  88 0D C9 10 */	lbz r0, lbl_805A0D30-_SDA_BASE_(r13)
/* 8023575C 0022B4DC  28 00 00 02 */	cmplwi r0, 2
/* 80235760 0022B4E0  41 80 00 D4 */	blt lbl_80235834
/* 80235764 0022B4E4  3C 80 80 48 */	lis r4, lbl_8047FE0C@ha
/* 80235768 0022B4E8  38 60 05 01 */	li r3, 0x501
/* 8023576C 0022B4EC  38 84 FE 0C */	addi r4, r4, lbl_8047FE0C@l
/* 80235770 0022B4F0  4B FF C2 75 */	bl LogMsg_0
/* 80235774 0022B4F4  48 00 00 C0 */	b lbl_80235834
lbl_80235778:
/* 80235778 0022B4F8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8023577C 0022B4FC  41 82 00 B8 */	beq lbl_80235834
/* 80235780 0022B500  28 00 00 01 */	cmplwi r0, 1
/* 80235784 0022B504  40 82 00 44 */	bne lbl_802357C8
/* 80235788 0022B508  38 00 00 01 */	li r0, 1
/* 8023578C 0022B50C  7E 83 A3 78 */	mr r3, r20
/* 80235790 0022B510  98 18 00 09 */	stb r0, 9(r24)
/* 80235794 0022B514  38 81 00 09 */	addi r4, r1, 9
/* 80235798 0022B518  48 00 83 B5 */	bl BTM_ReadPowerMode
/* 8023579C 0022B51C  88 01 00 09 */	lbz r0, 9(r1)
/* 802357A0 0022B520  28 00 00 03 */	cmplwi r0, 3
/* 802357A4 0022B524  41 82 00 90 */	beq lbl_80235834
/* 802357A8 0022B528  3C 60 80 53 */	lis r3, lbl_80529994@ha
/* 802357AC 0022B52C  80 AD A9 98 */	lwz r5, lbl_8059EDB8-_SDA_BASE_(r13)
/* 802357B0 0022B530  38 63 99 94 */	addi r3, r3, lbl_80529994@l
/* 802357B4 0022B534  7E 84 A3 78 */	mr r4, r20
/* 802357B8 0022B538  88 63 00 95 */	lbz r3, 0x95(r3)
/* 802357BC 0022B53C  38 A5 00 0A */	addi r5, r5, 0xa
/* 802357C0 0022B540  48 00 81 BD */	bl BTM_SetPowerMode
/* 802357C4 0022B544  48 00 00 70 */	b lbl_80235834
lbl_802357C8:
/* 802357C8 0022B548  28 00 00 02 */	cmplwi r0, 2
/* 802357CC 0022B54C  40 82 00 40 */	bne lbl_8023580C
/* 802357D0 0022B550  38 00 00 02 */	li r0, 2
/* 802357D4 0022B554  7E 83 A3 78 */	mr r3, r20
/* 802357D8 0022B558  98 18 00 09 */	stb r0, 9(r24)
/* 802357DC 0022B55C  38 81 00 08 */	addi r4, r1, 8
/* 802357E0 0022B560  48 00 83 6D */	bl BTM_ReadPowerMode
/* 802357E4 0022B564  88 01 00 08 */	lbz r0, 8(r1)
/* 802357E8 0022B568  28 00 00 02 */	cmplwi r0, 2
/* 802357EC 0022B56C  41 82 00 48 */	beq lbl_80235834
/* 802357F0 0022B570  3C 60 80 53 */	lis r3, lbl_80529994@ha
/* 802357F4 0022B574  80 AD A9 98 */	lwz r5, lbl_8059EDB8-_SDA_BASE_(r13)
/* 802357F8 0022B578  38 63 99 94 */	addi r3, r3, lbl_80529994@l
/* 802357FC 0022B57C  7E 84 A3 78 */	mr r4, r20
/* 80235800 0022B580  88 63 00 95 */	lbz r3, 0x95(r3)
/* 80235804 0022B584  48 00 81 79 */	bl BTM_SetPowerMode
/* 80235808 0022B588  48 00 00 2C */	b lbl_80235834
lbl_8023580C:
/* 8023580C 0022B58C  28 00 00 04 */	cmplwi r0, 4
/* 80235810 0022B590  40 82 00 24 */	bne lbl_80235834
/* 80235814 0022B594  3C 60 80 53 */	lis r3, lbl_80529994@ha
/* 80235818 0022B598  38 00 00 00 */	li r0, 0
/* 8023581C 0022B59C  38 63 99 94 */	addi r3, r3, lbl_80529994@l
/* 80235820 0022B5A0  98 01 00 14 */	stb r0, 0x14(r1)
/* 80235824 0022B5A4  88 63 00 95 */	lbz r3, 0x95(r3)
/* 80235828 0022B5A8  7E 84 A3 78 */	mr r4, r20
/* 8023582C 0022B5AC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80235830 0022B5B0  48 00 81 4D */	bl BTM_SetPowerMode
lbl_80235834:
/* 80235834 0022B5B4  39 61 00 50 */	addi r11, r1, 0x50
/* 80235838 0022B5B8  48 1B BB 19 */	bl _restgpr_20
/* 8023583C 0022B5BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80235840 0022B5C0  7C 08 03 A6 */	mtlr r0
/* 80235844 0022B5C4  38 21 00 50 */	addi r1, r1, 0x50
/* 80235848 0022B5C8  4E 80 00 20 */	blr 

.global bta_dm_pm_btm_cback
bta_dm_pm_btm_cback:
/* 8023584C 0022B5CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80235850 0022B5D0  7C 08 02 A6 */	mflr r0
/* 80235854 0022B5D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80235858 0022B5D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8023585C 0022B5DC  48 1B BA C5 */	bl _savegpr_27
/* 80235860 0022B5E0  7C 7B 1B 78 */	mr r27, r3
/* 80235864 0022B5E4  7C 9C 23 78 */	mr r28, r4
/* 80235868 0022B5E8  7C BD 2B 78 */	mr r29, r5
/* 8023586C 0022B5EC  7C DE 33 78 */	mr r30, r6
/* 80235870 0022B5F0  38 60 00 14 */	li r3, 0x14
/* 80235874 0022B5F4  4B FF 95 E5 */	bl GKI_getbuf
/* 80235878 0022B5F8  2C 03 00 00 */	cmpwi r3, 0
/* 8023587C 0022B5FC  7C 7F 1B 78 */	mr r31, r3
/* 80235880 0022B600  41 82 00 2C */	beq lbl_802358AC
/* 80235884 0022B604  38 00 01 09 */	li r0, 0x109
/* 80235888 0022B608  7F 64 DB 78 */	mr r4, r27
/* 8023588C 0022B60C  B0 03 00 00 */	sth r0, 0(r3)
/* 80235890 0022B610  9B 83 00 0E */	stb r28, 0xe(r3)
/* 80235894 0022B614  B3 A3 00 10 */	sth r29, 0x10(r3)
/* 80235898 0022B618  9B C3 00 12 */	stb r30, 0x12(r3)
/* 8023589C 0022B61C  38 63 00 08 */	addi r3, r3, 8
/* 802358A0 0022B620  4B FF C7 95 */	bl bdcpy
/* 802358A4 0022B624  7F E3 FB 78 */	mr r3, r31
/* 802358A8 0022B628  4B FF CC 39 */	bl bta_sys_sendmsg
lbl_802358AC:
/* 802358AC 0022B62C  39 61 00 20 */	addi r11, r1, 0x20
/* 802358B0 0022B630  48 1B BA BD */	bl _restgpr_27
/* 802358B4 0022B634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802358B8 0022B638  7C 08 03 A6 */	mtlr r0
/* 802358BC 0022B63C  38 21 00 20 */	addi r1, r1, 0x20
/* 802358C0 0022B640  4E 80 00 20 */	blr 

.global bta_dm_pm_timer_cback
bta_dm_pm_timer_cback:
/* 802358C4 0022B644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802358C8 0022B648  7C 08 02 A6 */	mflr r0
/* 802358CC 0022B64C  3C 80 80 53 */	lis r4, lbl_80529994@ha
/* 802358D0 0022B650  90 01 00 14 */	stw r0, 0x14(r1)
/* 802358D4 0022B654  38 84 99 94 */	addi r4, r4, lbl_80529994@l
/* 802358D8 0022B658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802358DC 0022B65C  93 C1 00 08 */	stw r30, 8(r1)
/* 802358E0 0022B660  3B C0 00 00 */	li r30, 0
/* 802358E4 0022B664  88 04 00 B6 */	lbz r0, 0xb6(r4)
/* 802358E8 0022B668  2C 00 00 00 */	cmpwi r0, 0
/* 802358EC 0022B66C  41 82 00 1C */	beq lbl_80235908
/* 802358F0 0022B670  38 04 00 98 */	addi r0, r4, 0x98
/* 802358F4 0022B674  7C 00 18 40 */	cmplw r0, r3
/* 802358F8 0022B678  40 82 00 10 */	bne lbl_80235908
/* 802358FC 0022B67C  38 00 00 00 */	li r0, 0
/* 80235900 0022B680  98 04 00 B6 */	stb r0, 0xb6(r4)
/* 80235904 0022B684  48 00 00 58 */	b lbl_8023595C
lbl_80235908:
/* 80235908 0022B688  88 04 00 D6 */	lbz r0, 0xd6(r4)
/* 8023590C 0022B68C  3B C0 00 01 */	li r30, 1
/* 80235910 0022B690  2C 00 00 00 */	cmpwi r0, 0
/* 80235914 0022B694  41 82 00 1C */	beq lbl_80235930
/* 80235918 0022B698  38 04 00 B8 */	addi r0, r4, 0xb8
/* 8023591C 0022B69C  7C 00 18 40 */	cmplw r0, r3
/* 80235920 0022B6A0  40 82 00 10 */	bne lbl_80235930
/* 80235924 0022B6A4  38 00 00 00 */	li r0, 0
/* 80235928 0022B6A8  98 04 00 D6 */	stb r0, 0xd6(r4)
/* 8023592C 0022B6AC  48 00 00 30 */	b lbl_8023595C
lbl_80235930:
/* 80235930 0022B6B0  88 04 00 F6 */	lbz r0, 0xf6(r4)
/* 80235934 0022B6B4  3B C0 00 02 */	li r30, 2
/* 80235938 0022B6B8  2C 00 00 00 */	cmpwi r0, 0
/* 8023593C 0022B6BC  41 82 00 1C */	beq lbl_80235958
/* 80235940 0022B6C0  38 04 00 D8 */	addi r0, r4, 0xd8
/* 80235944 0022B6C4  7C 00 18 40 */	cmplw r0, r3
/* 80235948 0022B6C8  40 82 00 10 */	bne lbl_80235958
/* 8023594C 0022B6CC  38 00 00 00 */	li r0, 0
/* 80235950 0022B6D0  98 04 00 F6 */	stb r0, 0xf6(r4)
/* 80235954 0022B6D4  48 00 00 08 */	b lbl_8023595C
lbl_80235958:
/* 80235958 0022B6D8  3B C0 00 03 */	li r30, 3
lbl_8023595C:
/* 8023595C 0022B6DC  28 1E 00 03 */	cmplwi r30, 3
/* 80235960 0022B6E0  41 82 00 44 */	beq lbl_802359A4
/* 80235964 0022B6E4  38 60 00 0E */	li r3, 0xe
/* 80235968 0022B6E8  4B FF 94 F1 */	bl GKI_getbuf
/* 8023596C 0022B6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80235970 0022B6F0  7C 7F 1B 78 */	mr r31, r3
/* 80235974 0022B6F4  41 82 00 30 */	beq lbl_802359A4
/* 80235978 0022B6F8  3C 80 80 53 */	lis r4, lbl_80529994@ha
/* 8023597C 0022B6FC  38 A0 01 0A */	li r5, 0x10a
/* 80235980 0022B700  38 84 99 94 */	addi r4, r4, lbl_80529994@l
/* 80235984 0022B704  57 C0 2C F4 */	rlwinm r0, r30, 5, 0x13, 0x1a
/* 80235988 0022B708  B0 A3 00 00 */	sth r5, 0(r3)
/* 8023598C 0022B70C  7C 84 02 14 */	add r4, r4, r0
/* 80235990 0022B710  38 84 00 B0 */	addi r4, r4, 0xb0
/* 80235994 0022B714  38 63 00 08 */	addi r3, r3, 8
/* 80235998 0022B718  4B FF C6 9D */	bl bdcpy
/* 8023599C 0022B71C  7F E3 FB 78 */	mr r3, r31
/* 802359A0 0022B720  4B FF CB 41 */	bl bta_sys_sendmsg
lbl_802359A4:
/* 802359A4 0022B724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802359A8 0022B728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802359AC 0022B72C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802359B0 0022B730  7C 08 03 A6 */	mtlr r0
/* 802359B4 0022B734  38 21 00 10 */	addi r1, r1, 0x10
/* 802359B8 0022B738  4E 80 00 20 */	blr 

.global bta_dm_pm_btm_status
bta_dm_pm_btm_status:
/* 802359BC 0022B73C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802359C0 0022B740  7C 08 02 A6 */	mflr r0
/* 802359C4 0022B744  90 01 00 24 */	stw r0, 0x24(r1)
/* 802359C8 0022B748  39 61 00 20 */	addi r11, r1, 0x20
/* 802359CC 0022B74C  48 1B B9 55 */	bl _savegpr_27
/* 802359D0 0022B750  3F C0 80 53 */	lis r30, lbl_80529994@ha
/* 802359D4 0022B754  7C 7F 1B 78 */	mr r31, r3
/* 802359D8 0022B758  3B DE 99 94 */	addi r30, r30, lbl_80529994@l
/* 802359DC 0022B75C  3B 60 00 00 */	li r27, 0
lbl_802359E0:
/* 802359E0 0022B760  57 7C 2C F4 */	rlwinm r28, r27, 5, 0x13, 0x1a
/* 802359E4 0022B764  7F BE E2 14 */	add r29, r30, r28
/* 802359E8 0022B768  88 1D 00 B6 */	lbz r0, 0xb6(r29)
/* 802359EC 0022B76C  2C 00 00 00 */	cmpwi r0, 0
/* 802359F0 0022B770  41 82 00 30 */	beq lbl_80235A20
/* 802359F4 0022B774  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 802359F8 0022B778  38 9F 00 08 */	addi r4, r31, 8
/* 802359FC 0022B77C  4B FF C6 6D */	bl bdcmp
/* 80235A00 0022B780  2C 03 00 00 */	cmpwi r3, 0
/* 80235A04 0022B784  40 82 00 1C */	bne lbl_80235A20
/* 80235A08 0022B788  7F A3 EB 78 */	mr r3, r29
/* 80235A0C 0022B78C  38 63 00 98 */	addi r3, r3, 0x98
/* 80235A10 0022B790  4B FF CB 0D */	bl bta_sys_stop_timer
/* 80235A14 0022B794  38 00 00 00 */	li r0, 0
/* 80235A18 0022B798  98 1D 00 B6 */	stb r0, 0xb6(r29)
/* 80235A1C 0022B79C  48 00 00 10 */	b lbl_80235A2C
lbl_80235A20:
/* 80235A20 0022B7A0  3B 7B 00 01 */	addi r27, r27, 1
/* 80235A24 0022B7A4  28 1B 00 03 */	cmplwi r27, 3
/* 80235A28 0022B7A8  41 80 FF B8 */	blt lbl_802359E0
lbl_80235A2C:
/* 80235A2C 0022B7AC  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 80235A30 0022B7B0  2C 00 00 00 */	cmpwi r0, 0
/* 80235A34 0022B7B4  41 82 00 08 */	beq lbl_80235A3C
/* 80235A38 0022B7B8  48 00 00 8C */	b lbl_80235AC4
lbl_80235A3C:
/* 80235A3C 0022B7BC  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 80235A40 0022B7C0  2C 00 00 00 */	cmpwi r0, 0
/* 80235A44 0022B7C4  41 82 00 74 */	beq lbl_80235AB8
/* 80235A48 0022B7C8  3C 60 80 53 */	lis r3, lbl_80529994@ha
/* 80235A4C 0022B7CC  3B A0 00 00 */	li r29, 0
/* 80235A50 0022B7D0  3B C3 99 94 */	addi r30, r3, lbl_80529994@l
/* 80235A54 0022B7D4  48 00 00 50 */	b lbl_80235AA4
lbl_80235A58:
/* 80235A58 0022B7D8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80235A5C 0022B7DC  38 9F 00 08 */	addi r4, r31, 8
/* 80235A60 0022B7E0  1F 80 00 0B */	mulli r28, r0, 0xb
/* 80235A64 0022B7E4  7C 7E E2 14 */	add r3, r30, r28
/* 80235A68 0022B7E8  4B FF C6 01 */	bl bdcmp
/* 80235A6C 0022B7EC  2C 03 00 00 */	cmpwi r3, 0
/* 80235A70 0022B7F0  40 82 00 30 */	bne lbl_80235AA0
/* 80235A74 0022B7F4  7C BE E2 14 */	add r5, r30, r28
/* 80235A78 0022B7F8  88 05 00 09 */	lbz r0, 9(r5)
/* 80235A7C 0022B7FC  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 80235A80 0022B800  41 82 00 44 */	beq lbl_80235AC4
/* 80235A84 0022B804  88 05 00 0A */	lbz r0, 0xa(r5)
/* 80235A88 0022B808  38 7F 00 08 */	addi r3, r31, 8
/* 80235A8C 0022B80C  38 80 00 00 */	li r4, 0
/* 80235A90 0022B810  7C 00 33 78 */	or r0, r0, r6
/* 80235A94 0022B814  98 05 00 0A */	stb r0, 0xa(r5)
/* 80235A98 0022B818  4B FF FA 35 */	bl bta_dm_pm_set_mode
/* 80235A9C 0022B81C  48 00 00 28 */	b lbl_80235AC4
lbl_80235AA0:
/* 80235AA0 0022B820  3B BD 00 01 */	addi r29, r29, 1
lbl_80235AA4:
/* 80235AA4 0022B824  88 1E 00 4D */	lbz r0, 0x4d(r30)
/* 80235AA8 0022B828  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80235AAC 0022B82C  7C 03 00 40 */	cmplw r3, r0
/* 80235AB0 0022B830  41 80 FF A8 */	blt lbl_80235A58
/* 80235AB4 0022B834  48 00 00 10 */	b lbl_80235AC4
lbl_80235AB8:
/* 80235AB8 0022B838  38 7F 00 08 */	addi r3, r31, 8
/* 80235ABC 0022B83C  38 80 00 00 */	li r4, 0
/* 80235AC0 0022B840  4B FF FA 0D */	bl bta_dm_pm_set_mode
lbl_80235AC4:
/* 80235AC4 0022B844  39 61 00 20 */	addi r11, r1, 0x20
/* 80235AC8 0022B848  48 1B B8 A5 */	bl _restgpr_27
/* 80235ACC 0022B84C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80235AD0 0022B850  7C 08 03 A6 */	mtlr r0
/* 80235AD4 0022B854  38 21 00 20 */	addi r1, r1, 0x20
/* 80235AD8 0022B858  4E 80 00 20 */	blr 

.global bta_dm_pm_timer
bta_dm_pm_timer:
/* 80235ADC 0022B85C  38 80 00 01 */	li r4, 1
/* 80235AE0 0022B860  38 63 00 08 */	addi r3, r3, 8
/* 80235AE4 0022B864  4B FF F9 E8 */	b bta_dm_pm_set_mode


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail11SoundThreadFv$7GetInstance
nw4r3snd6detail11SoundThreadFv$7GetInstance:
/* 801CC2E4 001C2064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC2E8 001C2068  7C 08 02 A6 */	mflr r0
/* 801CC2EC 001C206C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC2F0 001C2070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC2F4 001C2074  88 0D C1 E0 */	lbz r0, lbl_805A0600-_SDA_BASE_(r13)
/* 801CC2F8 001C2078  7C 00 07 75 */	extsb. r0, r0
/* 801CC2FC 001C207C  40 82 00 90 */	bne lbl_801CC38C
/* 801CC300 001C2080  3F E0 80 4E */	lis r31, lbl_804D8CC0@ha
/* 801CC304 001C2084  38 00 00 00 */	li r0, 0
/* 801CC308 001C2088  3B FF 8C C0 */	addi r31, r31, lbl_804D8CC0@l
/* 801CC30C 001C208C  38 A0 00 04 */	li r5, 4
/* 801CC310 001C2090  90 1F 03 7C */	stw r0, 0x37c(r31)
/* 801CC314 001C2094  38 FF 03 7C */	addi r7, r31, 0x37c
/* 801CC318 001C2098  38 DF 03 88 */	addi r6, r31, 0x388
/* 801CC31C 001C209C  38 7F 03 20 */	addi r3, r31, 0x320
/* 801CC320 001C20A0  90 1F 03 80 */	stw r0, 0x380(r31)
/* 801CC324 001C20A4  38 9F 03 40 */	addi r4, r31, 0x340
/* 801CC328 001C20A8  90 1F 03 88 */	stw r0, 0x388(r31)
/* 801CC32C 001C20AC  90 1F 03 8C */	stw r0, 0x38c(r31)
/* 801CC330 001C20B0  90 1F 03 50 */	stw r0, 0x350(r31)
/* 801CC334 001C20B4  90 1F 03 6C */	stw r0, 0x36c(r31)
/* 801CC338 001C20B8  90 1F 03 70 */	stw r0, 0x370(r31)
/* 801CC33C 001C20BC  90 1F 03 78 */	stw r0, 0x378(r31)
/* 801CC340 001C20C0  90 FF 03 7C */	stw r7, 0x37c(r31)
/* 801CC344 001C20C4  90 FF 03 80 */	stw r7, 0x380(r31)
/* 801CC348 001C20C8  90 1F 03 84 */	stw r0, 0x384(r31)
/* 801CC34C 001C20CC  90 DF 03 88 */	stw r6, 0x388(r31)
/* 801CC350 001C20D0  90 DF 03 8C */	stw r6, 0x38c(r31)
/* 801CC354 001C20D4  98 1F 03 94 */	stb r0, 0x394(r31)
/* 801CC358 001C20D8  48 01 1D 3D */	bl OSInitMessageQueue
/* 801CC35C 001C20DC  38 7F 03 18 */	addi r3, r31, 0x318
/* 801CC360 001C20E0  48 01 43 A5 */	bl OSInitThreadQueue
/* 801CC364 001C20E4  38 7F 03 54 */	addi r3, r31, 0x354
/* 801CC368 001C20E8  48 01 28 15 */	bl OSInitMutex
/* 801CC36C 001C20EC  3C 80 80 1D */	lis r4, nw4r3snd6detail11SoundThreadFv$7__dt@ha
/* 801CC370 001C20F0  3C A0 80 4E */	lis r5, lbl_804D8CB0@ha
/* 801CC374 001C20F4  7F E3 FB 78 */	mr r3, r31
/* 801CC378 001C20F8  38 84 C3 A8 */	addi r4, r4, nw4r3snd6detail11SoundThreadFv$7__dt@l
/* 801CC37C 001C20FC  38 A5 8C B0 */	addi r5, r5, lbl_804D8CB0@l
/* 801CC380 001C2100  48 22 43 A5 */	bl __register_global_object_tmp
/* 801CC384 001C2104  38 00 00 01 */	li r0, 1
/* 801CC388 001C2108  98 0D C1 E0 */	stb r0, lbl_805A0600-_SDA_BASE_(r13)
lbl_801CC38C:
/* 801CC38C 001C210C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC390 001C2110  3C 60 80 4E */	lis r3, lbl_804D8CC0@ha
/* 801CC394 001C2114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC398 001C2118  38 63 8C C0 */	addi r3, r3, lbl_804D8CC0@l
/* 801CC39C 001C211C  7C 08 03 A6 */	mtlr r0
/* 801CC3A0 001C2120  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC3A4 001C2124  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFv$7__dt
nw4r3snd6detail11SoundThreadFv$7__dt:
/* 801CC3A8 001C2128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC3AC 001C212C  7C 08 02 A6 */	mflr r0
/* 801CC3B0 001C2130  2C 03 00 00 */	cmpwi r3, 0
/* 801CC3B4 001C2134  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC3B8 001C2138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC3BC 001C213C  7C 9F 23 78 */	mr r31, r4
/* 801CC3C0 001C2140  93 C1 00 08 */	stw r30, 8(r1)
/* 801CC3C4 001C2144  7C 7E 1B 78 */	mr r30, r3
/* 801CC3C8 001C2148  41 82 00 34 */	beq lbl_801CC3FC
/* 801CC3CC 001C214C  34 63 03 84 */	addic. r3, r3, 0x384
/* 801CC3D0 001C2150  41 82 00 0C */	beq lbl_801CC3DC
/* 801CC3D4 001C2154  38 80 00 00 */	li r4, 0
/* 801CC3D8 001C2158  4B F8 FE 61 */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_801CC3DC:
/* 801CC3DC 001C215C  34 7E 03 78 */	addic. r3, r30, 0x378
/* 801CC3E0 001C2160  41 82 00 0C */	beq lbl_801CC3EC
/* 801CC3E4 001C2164  38 80 00 00 */	li r4, 0
/* 801CC3E8 001C2168  4B F8 FE 51 */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_801CC3EC:
/* 801CC3EC 001C216C  2C 1F 00 00 */	cmpwi r31, 0
/* 801CC3F0 001C2170  40 81 00 0C */	ble lbl_801CC3FC
/* 801CC3F4 001C2174  7F C3 F3 78 */	mr r3, r30
/* 801CC3F8 001C2178  4B E4 04 D1 */	bl __dl__FPv
lbl_801CC3FC:
/* 801CC3FC 001C217C  7F C3 F3 78 */	mr r3, r30
/* 801CC400 001C2180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC404 001C2184  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CC408 001C2188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC40C 001C218C  7C 08 03 A6 */	mtlr r0
/* 801CC410 001C2190  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC414 001C2194  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFlPvUl$7Create
nw4r3snd6detail11SoundThreadFlPvUl$7Create:
/* 801CC418 001C2198  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC41C 001C219C  7C 08 02 A6 */	mflr r0
/* 801CC420 001C21A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC424 001C21A4  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC428 001C21A8  48 22 4E F5 */	bl _savegpr_26
/* 801CC42C 001C21AC  88 03 03 94 */	lbz r0, 0x394(r3)
/* 801CC430 001C21B0  7C 7A 1B 78 */	mr r26, r3
/* 801CC434 001C21B4  7C 9B 23 78 */	mr r27, r4
/* 801CC438 001C21B8  7C BC 2B 78 */	mr r28, r5
/* 801CC43C 001C21BC  2C 00 00 00 */	cmpwi r0, 0
/* 801CC440 001C21C0  7C DD 33 78 */	mr r29, r6
/* 801CC444 001C21C4  41 82 00 0C */	beq lbl_801CC450
/* 801CC448 001C21C8  38 60 00 01 */	li r3, 1
/* 801CC44C 001C21CC  48 00 00 EC */	b lbl_801CC538
lbl_801CC450:
/* 801CC450 001C21D0  3B E0 00 01 */	li r31, 1
/* 801CC454 001C21D4  90 A3 03 50 */	stw r5, 0x350(r3)
/* 801CC458 001C21D8  9B E3 03 94 */	stb r31, 0x394(r3)
/* 801CC45C 001C21DC  88 0D C1 E0 */	lbz r0, lbl_805A0600-_SDA_BASE_(r13)
/* 801CC460 001C21E0  7C 00 07 75 */	extsb. r0, r0
/* 801CC464 001C21E4  40 82 00 8C */	bne lbl_801CC4F0
/* 801CC468 001C21E8  3F C0 80 4E */	lis r30, lbl_804D8CC0@ha
/* 801CC46C 001C21EC  38 00 00 00 */	li r0, 0
/* 801CC470 001C21F0  3B DE 8C C0 */	addi r30, r30, lbl_804D8CC0@l
/* 801CC474 001C21F4  38 A0 00 04 */	li r5, 4
/* 801CC478 001C21F8  90 1E 03 7C */	stw r0, 0x37c(r30)
/* 801CC47C 001C21FC  38 DE 03 7C */	addi r6, r30, 0x37c
/* 801CC480 001C2200  38 FE 03 88 */	addi r7, r30, 0x388
/* 801CC484 001C2204  38 7E 03 20 */	addi r3, r30, 0x320
/* 801CC488 001C2208  90 1E 03 80 */	stw r0, 0x380(r30)
/* 801CC48C 001C220C  38 9E 03 40 */	addi r4, r30, 0x340
/* 801CC490 001C2210  90 1E 03 88 */	stw r0, 0x388(r30)
/* 801CC494 001C2214  90 1E 03 8C */	stw r0, 0x38c(r30)
/* 801CC498 001C2218  90 1E 03 50 */	stw r0, 0x350(r30)
/* 801CC49C 001C221C  90 1E 03 6C */	stw r0, 0x36c(r30)
/* 801CC4A0 001C2220  90 1E 03 70 */	stw r0, 0x370(r30)
/* 801CC4A4 001C2224  90 1E 03 78 */	stw r0, 0x378(r30)
/* 801CC4A8 001C2228  90 DE 03 7C */	stw r6, 0x37c(r30)
/* 801CC4AC 001C222C  90 DE 03 80 */	stw r6, 0x380(r30)
/* 801CC4B0 001C2230  90 1E 03 84 */	stw r0, 0x384(r30)
/* 801CC4B4 001C2234  90 FE 03 88 */	stw r7, 0x388(r30)
/* 801CC4B8 001C2238  90 FE 03 8C */	stw r7, 0x38c(r30)
/* 801CC4BC 001C223C  98 1E 03 94 */	stb r0, 0x394(r30)
/* 801CC4C0 001C2240  48 01 1B D5 */	bl OSInitMessageQueue
/* 801CC4C4 001C2244  38 7E 03 18 */	addi r3, r30, 0x318
/* 801CC4C8 001C2248  48 01 42 3D */	bl OSInitThreadQueue
/* 801CC4CC 001C224C  38 7E 03 54 */	addi r3, r30, 0x354
/* 801CC4D0 001C2250  48 01 26 AD */	bl OSInitMutex
/* 801CC4D4 001C2254  3C 80 80 1D */	lis r4, nw4r3snd6detail11SoundThreadFv$7__dt@ha
/* 801CC4D8 001C2258  3C A0 80 4E */	lis r5, lbl_804D8CB0@ha
/* 801CC4DC 001C225C  7F C3 F3 78 */	mr r3, r30
/* 801CC4E0 001C2260  38 84 C3 A8 */	addi r4, r4, nw4r3snd6detail11SoundThreadFv$7__dt@l
/* 801CC4E4 001C2264  38 A5 8C B0 */	addi r5, r5, lbl_804D8CB0@l
/* 801CC4E8 001C2268  48 22 42 3D */	bl __register_global_object_tmp
/* 801CC4EC 001C226C  9B ED C1 E0 */	stb r31, lbl_805A0600-_SDA_BASE_(r13)
lbl_801CC4F0:
/* 801CC4F0 001C2270  3C 80 80 1D */	lis r4, nw4r3snd6detail11SoundThreadFPv$7SoundThreadFunc@ha
/* 801CC4F4 001C2274  3C A0 80 4E */	lis r5, lbl_804D8CC0@ha
/* 801CC4F8 001C2278  7F 43 D3 78 */	mr r3, r26
/* 801CC4FC 001C227C  7F A7 EB 78 */	mr r7, r29
/* 801CC500 001C2280  7F 68 DB 78 */	mr r8, r27
/* 801CC504 001C2284  38 84 C7 5C */	addi r4, r4, nw4r3snd6detail11SoundThreadFPv$7SoundThreadFunc@l
/* 801CC508 001C2288  38 A5 8C C0 */	addi r5, r5, lbl_804D8CC0@l
/* 801CC50C 001C228C  7C DC EA 14 */	add r6, r28, r29
/* 801CC510 001C2290  39 20 00 00 */	li r9, 0
/* 801CC514 001C2294  48 01 47 E9 */	bl OSCreateThread
/* 801CC518 001C2298  2C 03 00 00 */	cmpwi r3, 0
/* 801CC51C 001C229C  7C 7F 1B 78 */	mr r31, r3
/* 801CC520 001C22A0  41 82 00 0C */	beq lbl_801CC52C
/* 801CC524 001C22A4  7F 43 D3 78 */	mr r3, r26
/* 801CC528 001C22A8  48 01 4E 3D */	bl OSResumeThread
lbl_801CC52C:
/* 801CC52C 001C22AC  7C 1F 00 D0 */	neg r0, r31
/* 801CC530 001C22B0  7C 00 FB 78 */	or r0, r0, r31
/* 801CC534 001C22B4  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801CC538:
/* 801CC538 001C22B8  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC53C 001C22BC  48 22 4E 2D */	bl _restgpr_26
/* 801CC540 001C22C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC544 001C22C4  7C 08 03 A6 */	mtlr r0
/* 801CC548 001C22C8  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC54C 001C22CC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFv$7Shutdown
nw4r3snd6detail11SoundThreadFv$7Shutdown:
/* 801CC550 001C22D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC554 001C22D4  7C 08 02 A6 */	mflr r0
/* 801CC558 001C22D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC55C 001C22DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC560 001C22E0  93 C1 00 08 */	stw r30, 8(r1)
/* 801CC564 001C22E4  7C 7E 1B 78 */	mr r30, r3
/* 801CC568 001C22E8  88 03 03 94 */	lbz r0, 0x394(r3)
/* 801CC56C 001C22EC  2C 00 00 00 */	cmpwi r0, 0
/* 801CC570 001C22F0  41 82 00 C8 */	beq lbl_801CC638
/* 801CC574 001C22F4  88 0D C1 E0 */	lbz r0, lbl_805A0600-_SDA_BASE_(r13)
/* 801CC578 001C22F8  7C 00 07 75 */	extsb. r0, r0
/* 801CC57C 001C22FC  40 82 00 90 */	bne lbl_801CC60C
/* 801CC580 001C2300  3F E0 80 4E */	lis r31, lbl_804D8CC0@ha
/* 801CC584 001C2304  38 00 00 00 */	li r0, 0
/* 801CC588 001C2308  3B FF 8C C0 */	addi r31, r31, lbl_804D8CC0@l
/* 801CC58C 001C230C  38 A0 00 04 */	li r5, 4
/* 801CC590 001C2310  90 1F 03 7C */	stw r0, 0x37c(r31)
/* 801CC594 001C2314  38 DF 03 7C */	addi r6, r31, 0x37c
/* 801CC598 001C2318  38 FF 03 88 */	addi r7, r31, 0x388
/* 801CC59C 001C231C  38 7F 03 20 */	addi r3, r31, 0x320
/* 801CC5A0 001C2320  90 1F 03 80 */	stw r0, 0x380(r31)
/* 801CC5A4 001C2324  38 9F 03 40 */	addi r4, r31, 0x340
/* 801CC5A8 001C2328  90 1F 03 88 */	stw r0, 0x388(r31)
/* 801CC5AC 001C232C  90 1F 03 8C */	stw r0, 0x38c(r31)
/* 801CC5B0 001C2330  90 1F 03 50 */	stw r0, 0x350(r31)
/* 801CC5B4 001C2334  90 1F 03 6C */	stw r0, 0x36c(r31)
/* 801CC5B8 001C2338  90 1F 03 70 */	stw r0, 0x370(r31)
/* 801CC5BC 001C233C  90 1F 03 78 */	stw r0, 0x378(r31)
/* 801CC5C0 001C2340  90 DF 03 7C */	stw r6, 0x37c(r31)
/* 801CC5C4 001C2344  90 DF 03 80 */	stw r6, 0x380(r31)
/* 801CC5C8 001C2348  90 1F 03 84 */	stw r0, 0x384(r31)
/* 801CC5CC 001C234C  90 FF 03 88 */	stw r7, 0x388(r31)
/* 801CC5D0 001C2350  90 FF 03 8C */	stw r7, 0x38c(r31)
/* 801CC5D4 001C2354  98 1F 03 94 */	stb r0, 0x394(r31)
/* 801CC5D8 001C2358  48 01 1A BD */	bl OSInitMessageQueue
/* 801CC5DC 001C235C  38 7F 03 18 */	addi r3, r31, 0x318
/* 801CC5E0 001C2360  48 01 41 25 */	bl OSInitThreadQueue
/* 801CC5E4 001C2364  38 7F 03 54 */	addi r3, r31, 0x354
/* 801CC5E8 001C2368  48 01 25 95 */	bl OSInitMutex
/* 801CC5EC 001C236C  3C 80 80 1D */	lis r4, nw4r3snd6detail11SoundThreadFv$7__dt@ha
/* 801CC5F0 001C2370  3C A0 80 4E */	lis r5, lbl_804D8CB0@ha
/* 801CC5F4 001C2374  7F E3 FB 78 */	mr r3, r31
/* 801CC5F8 001C2378  38 84 C3 A8 */	addi r4, r4, nw4r3snd6detail11SoundThreadFv$7__dt@l
/* 801CC5FC 001C237C  38 A5 8C B0 */	addi r5, r5, lbl_804D8CB0@l
/* 801CC600 001C2380  48 22 41 25 */	bl __register_global_object_tmp
/* 801CC604 001C2384  38 00 00 01 */	li r0, 1
/* 801CC608 001C2388  98 0D C1 E0 */	stb r0, lbl_805A0600-_SDA_BASE_(r13)
lbl_801CC60C:
/* 801CC60C 001C238C  3C 60 80 4E */	lis r3, lbl_804D8CC0@ha
/* 801CC610 001C2390  38 80 00 02 */	li r4, 2
/* 801CC614 001C2394  38 63 8C C0 */	addi r3, r3, lbl_804D8CC0@l
/* 801CC618 001C2398  38 A0 00 01 */	li r5, 1
/* 801CC61C 001C239C  38 63 03 20 */	addi r3, r3, 0x320
/* 801CC620 001C23A0  48 01 1C 79 */	bl OSJamMessage
/* 801CC624 001C23A4  7F C3 F3 78 */	mr r3, r30
/* 801CC628 001C23A8  38 80 00 00 */	li r4, 0
/* 801CC62C 001C23AC  48 01 4B F9 */	bl OSJoinThread
/* 801CC630 001C23B0  38 00 00 00 */	li r0, 0
/* 801CC634 001C23B4  98 1E 03 94 */	stb r0, 0x394(r30)
lbl_801CC638:
/* 801CC638 001C23B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC63C 001C23BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC640 001C23C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CC644 001C23C4  7C 08 03 A6 */	mtlr r0
/* 801CC648 001C23C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC64C 001C23CC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFv$7AxCallbackFunc
nw4r3snd6detail11SoundThreadFv$7AxCallbackFunc:
/* 801CC650 001C23D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC654 001C23D4  7C 08 02 A6 */	mflr r0
/* 801CC658 001C23D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC65C 001C23DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC660 001C23E0  93 C1 00 08 */	stw r30, 8(r1)
/* 801CC664 001C23E4  88 0D C1 E0 */	lbz r0, lbl_805A0600-_SDA_BASE_(r13)
/* 801CC668 001C23E8  7C 00 07 75 */	extsb. r0, r0
/* 801CC66C 001C23EC  40 82 00 90 */	bne lbl_801CC6FC
/* 801CC670 001C23F0  3F C0 80 4E */	lis r30, lbl_804D8CC0@ha
/* 801CC674 001C23F4  38 00 00 00 */	li r0, 0
/* 801CC678 001C23F8  3B DE 8C C0 */	addi r30, r30, lbl_804D8CC0@l
/* 801CC67C 001C23FC  38 A0 00 04 */	li r5, 4
/* 801CC680 001C2400  90 1E 03 7C */	stw r0, 0x37c(r30)
/* 801CC684 001C2404  38 DE 03 7C */	addi r6, r30, 0x37c
/* 801CC688 001C2408  38 FE 03 88 */	addi r7, r30, 0x388
/* 801CC68C 001C240C  38 7E 03 20 */	addi r3, r30, 0x320
/* 801CC690 001C2410  90 1E 03 80 */	stw r0, 0x380(r30)
/* 801CC694 001C2414  38 9E 03 40 */	addi r4, r30, 0x340
/* 801CC698 001C2418  90 1E 03 88 */	stw r0, 0x388(r30)
/* 801CC69C 001C241C  90 1E 03 8C */	stw r0, 0x38c(r30)
/* 801CC6A0 001C2420  90 1E 03 50 */	stw r0, 0x350(r30)
/* 801CC6A4 001C2424  90 1E 03 6C */	stw r0, 0x36c(r30)
/* 801CC6A8 001C2428  90 1E 03 70 */	stw r0, 0x370(r30)
/* 801CC6AC 001C242C  90 1E 03 78 */	stw r0, 0x378(r30)
/* 801CC6B0 001C2430  90 DE 03 7C */	stw r6, 0x37c(r30)
/* 801CC6B4 001C2434  90 DE 03 80 */	stw r6, 0x380(r30)
/* 801CC6B8 001C2438  90 1E 03 84 */	stw r0, 0x384(r30)
/* 801CC6BC 001C243C  90 FE 03 88 */	stw r7, 0x388(r30)
/* 801CC6C0 001C2440  90 FE 03 8C */	stw r7, 0x38c(r30)
/* 801CC6C4 001C2444  98 1E 03 94 */	stb r0, 0x394(r30)
/* 801CC6C8 001C2448  48 01 19 CD */	bl OSInitMessageQueue
/* 801CC6CC 001C244C  38 7E 03 18 */	addi r3, r30, 0x318
/* 801CC6D0 001C2450  48 01 40 35 */	bl OSInitThreadQueue
/* 801CC6D4 001C2454  38 7E 03 54 */	addi r3, r30, 0x354
/* 801CC6D8 001C2458  48 01 24 A5 */	bl OSInitMutex
/* 801CC6DC 001C245C  3C 80 80 1D */	lis r4, nw4r3snd6detail11SoundThreadFv$7__dt@ha
/* 801CC6E0 001C2460  3C A0 80 4E */	lis r5, lbl_804D8CB0@ha
/* 801CC6E4 001C2464  7F C3 F3 78 */	mr r3, r30
/* 801CC6E8 001C2468  38 84 C3 A8 */	addi r4, r4, nw4r3snd6detail11SoundThreadFv$7__dt@l
/* 801CC6EC 001C246C  38 A5 8C B0 */	addi r5, r5, lbl_804D8CB0@l
/* 801CC6F0 001C2470  48 22 40 35 */	bl __register_global_object_tmp
/* 801CC6F4 001C2474  38 00 00 01 */	li r0, 1
/* 801CC6F8 001C2478  98 0D C1 E0 */	stb r0, lbl_805A0600-_SDA_BASE_(r13)
lbl_801CC6FC:
/* 801CC6FC 001C247C  3F C0 80 4E */	lis r30, lbl_804D8CC0@ha
/* 801CC700 001C2480  38 80 00 01 */	li r4, 1
/* 801CC704 001C2484  3B DE 8C C0 */	addi r30, r30, lbl_804D8CC0@l
/* 801CC708 001C2488  38 A0 00 00 */	li r5, 0
/* 801CC70C 001C248C  38 7E 03 20 */	addi r3, r30, 0x320
/* 801CC710 001C2490  48 01 19 E5 */	bl OSSendMessage
/* 801CC714 001C2494  87 FE 03 88 */	lwzu r31, 0x388(r30)
/* 801CC718 001C2498  48 00 00 1C */	b lbl_801CC734
lbl_801CC71C:
/* 801CC71C 001C249C  7F E3 FB 78 */	mr r3, r31
/* 801CC720 001C24A0  83 FF 00 00 */	lwz r31, 0(r31)
/* 801CC724 001C24A4  81 83 00 08 */	lwz r12, 8(r3)
/* 801CC728 001C24A8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801CC72C 001C24AC  7D 89 03 A6 */	mtctr r12
/* 801CC730 001C24B0  4E 80 04 21 */	bctrl 
lbl_801CC734:
/* 801CC734 001C24B4  7C 1F F0 40 */	cmplw r31, r30
/* 801CC738 001C24B8  40 82 FF E4 */	bne lbl_801CC71C
/* 801CC73C 001C24BC  48 00 63 95 */	bl nw4r3snd6detail12VoiceManagerFv$7GetInstance
/* 801CC740 001C24C0  48 00 69 39 */	bl nw4r3snd6detail12VoiceManagerFv$7NotifyVoiceUpdate
/* 801CC744 001C24C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC748 001C24C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC74C 001C24CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CC750 001C24D0  7C 08 03 A6 */	mtlr r0
/* 801CC754 001C24D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC758 001C24D8  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFPv$7SoundThreadFunc
nw4r3snd6detail11SoundThreadFPv$7SoundThreadFunc:
/* 801CC75C 001C24DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC760 001C24E0  7C 08 02 A6 */	mflr r0
/* 801CC764 001C24E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC768 001C24E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC76C 001C24EC  7C 7F 1B 78 */	mr r31, r3
/* 801CC770 001C24F0  4B FE B0 89 */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC774 001C24F4  3C A0 80 1D */	lis r5, nw4r3snd6detail11SoundThreadFv$7AxCallbackFunc@ha
/* 801CC778 001C24F8  38 9F 03 6C */	addi r4, r31, 0x36c
/* 801CC77C 001C24FC  38 A5 C6 50 */	addi r5, r5, nw4r3snd6detail11SoundThreadFv$7AxCallbackFunc@l
/* 801CC780 001C2500  4B FE B7 69 */	bl nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detai$7RegisterCallback
/* 801CC784 001C2504  7F E3 FB 78 */	mr r3, r31
/* 801CC788 001C2508  48 00 00 ED */	bl nw4r3snd6detail11SoundThreadFv$7SoundThreadProc
/* 801CC78C 001C250C  4B FE B0 6D */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC790 001C2510  38 9F 03 6C */	addi r4, r31, 0x36c
/* 801CC794 001C2514  4B FE B7 C1 */	bl nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detai$7UnregisterCallback
/* 801CC798 001C2518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC79C 001C251C  38 60 00 00 */	li r3, 0
/* 801CC7A0 001C2520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC7A4 001C2524  7C 08 03 A6 */	mtlr r0
/* 801CC7A8 001C2528  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC7AC 001C252C  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFPQ54nw4r3snd6de$7RegisterPlayerCallback
nw4r3snd6detail11SoundThreadFPQ54nw4r3snd6de$7RegisterPlayerCallback:
/* 801CC7B0 001C2530  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC7B4 001C2534  7C 08 02 A6 */	mflr r0
/* 801CC7B8 001C2538  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC7BC 001C253C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CC7C0 001C2540  3B E3 03 54 */	addi r31, r3, 0x354
/* 801CC7C4 001C2544  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CC7C8 001C2548  7C 9E 23 78 */	mr r30, r4
/* 801CC7CC 001C254C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CC7D0 001C2550  7C 7D 1B 78 */	mr r29, r3
/* 801CC7D4 001C2554  7F E3 FB 78 */	mr r3, r31
/* 801CC7D8 001C2558  48 01 23 DD */	bl OSLockMutex
/* 801CC7DC 001C255C  38 1D 03 88 */	addi r0, r29, 0x388
/* 801CC7E0 001C2560  7F C5 F3 78 */	mr r5, r30
/* 801CC7E4 001C2564  90 01 00 08 */	stw r0, 8(r1)
/* 801CC7E8 001C2568  38 7D 03 84 */	addi r3, r29, 0x384
/* 801CC7EC 001C256C  38 81 00 08 */	addi r4, r1, 8
/* 801CC7F0 001C2570  4B F8 FB 59 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
/* 801CC7F4 001C2574  7F E3 FB 78 */	mr r3, r31
/* 801CC7F8 001C2578  48 01 24 99 */	bl OSUnlockMutex
/* 801CC7FC 001C257C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC800 001C2580  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CC804 001C2584  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CC808 001C2588  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CC80C 001C258C  7C 08 03 A6 */	mtlr r0
/* 801CC810 001C2590  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC814 001C2594  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFPQ54nw4r3snd6de$7UnregisterPlayerCallback
nw4r3snd6detail11SoundThreadFPQ54nw4r3snd6de$7UnregisterPlayerCallback:
/* 801CC818 001C2598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC81C 001C259C  7C 08 02 A6 */	mflr r0
/* 801CC820 001C25A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC824 001C25A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CC828 001C25A8  3B E3 03 54 */	addi r31, r3, 0x354
/* 801CC82C 001C25AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CC830 001C25B0  7C 9E 23 78 */	mr r30, r4
/* 801CC834 001C25B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CC838 001C25B8  7C 7D 1B 78 */	mr r29, r3
/* 801CC83C 001C25BC  7F E3 FB 78 */	mr r3, r31
/* 801CC840 001C25C0  48 01 23 75 */	bl OSLockMutex
/* 801CC844 001C25C4  7F C4 F3 78 */	mr r4, r30
/* 801CC848 001C25C8  38 7D 03 84 */	addi r3, r29, 0x384
/* 801CC84C 001C25CC  4B F8 FB 29 */	bl nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12Li$7Erase
/* 801CC850 001C25D0  7F E3 FB 78 */	mr r3, r31
/* 801CC854 001C25D4  48 01 24 3D */	bl OSUnlockMutex
/* 801CC858 001C25D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC85C 001C25DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CC860 001C25E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CC864 001C25E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CC868 001C25E8  7C 08 03 A6 */	mtlr r0
/* 801CC86C 001C25EC  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC870 001C25F0  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThreadFv$7SoundThreadProc
nw4r3snd6detail11SoundThreadFv$7SoundThreadProc:
/* 801CC874 001C25F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CC878 001C25F8  7C 08 02 A6 */	mflr r0
/* 801CC87C 001C25FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CC880 001C2600  39 61 00 30 */	addi r11, r1, 0x30
/* 801CC884 001C2604  48 22 4A 9D */	bl _savegpr_27
/* 801CC888 001C2608  7C 7B 1B 78 */	mr r27, r3
lbl_801CC88C:
/* 801CC88C 001C260C  38 7B 03 20 */	addi r3, r27, 0x320
/* 801CC890 001C2610  38 81 00 08 */	addi r4, r1, 8
/* 801CC894 001C2614  38 A0 00 01 */	li r5, 1
/* 801CC898 001C2618  48 01 19 25 */	bl OSReceiveMessage
/* 801CC89C 001C261C  80 01 00 08 */	lwz r0, 8(r1)
/* 801CC8A0 001C2620  28 00 00 01 */	cmplwi r0, 1
/* 801CC8A4 001C2624  40 82 00 E8 */	bne lbl_801CC98C
/* 801CC8A8 001C2628  3B 9B 03 54 */	addi r28, r27, 0x354
/* 801CC8AC 001C262C  7F 83 E3 78 */	mr r3, r28
/* 801CC8B0 001C2630  48 01 23 05 */	bl OSLockMutex
/* 801CC8B4 001C2634  83 FB 03 7C */	lwz r31, 0x37c(r27)
/* 801CC8B8 001C2638  3B DB 03 7C */	addi r30, r27, 0x37c
/* 801CC8BC 001C263C  48 00 00 1C */	b lbl_801CC8D8
lbl_801CC8C0:
/* 801CC8C0 001C2640  7F E3 FB 78 */	mr r3, r31
/* 801CC8C4 001C2644  83 FF 00 00 */	lwz r31, 0(r31)
/* 801CC8C8 001C2648  81 83 00 08 */	lwz r12, 8(r3)
/* 801CC8CC 001C264C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801CC8D0 001C2650  7D 89 03 A6 */	mtctr r12
/* 801CC8D4 001C2654  4E 80 04 21 */	bctrl 
lbl_801CC8D8:
/* 801CC8D8 001C2658  7C 1F F0 40 */	cmplw r31, r30
/* 801CC8DC 001C265C  40 82 FF E4 */	bne lbl_801CC8C0
/* 801CC8E0 001C2660  48 01 52 6D */	bl OSGetTick
/* 801CC8E4 001C2664  7C 7D 1B 78 */	mr r29, r3
/* 801CC8E8 001C2668  4B FE E8 A1 */	bl nw4r3snd6detail14AxVoiceManagerFv$7GetInstance
/* 801CC8EC 001C266C  4B FE F1 55 */	bl nw4r3snd6detail14AxVoiceManagerFv$7FreeAllReservedAxVoice
/* 801CC8F0 001C2670  4B FE AF 09 */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC8F4 001C2674  4B FE B1 C9 */	bl nw4r3snd6detail9AxManagerFv$7Update
/* 801CC8F8 001C2678  4B FE AF 01 */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC8FC 001C267C  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 801CC900 001C2680  2C 00 00 00 */	cmpwi r0, 0
/* 801CC904 001C2684  40 82 00 38 */	bne lbl_801CC93C
/* 801CC908 001C2688  83 DB 03 88 */	lwz r30, 0x388(r27)
/* 801CC90C 001C268C  3B FB 03 88 */	addi r31, r27, 0x388
/* 801CC910 001C2690  48 00 00 1C */	b lbl_801CC92C
lbl_801CC914:
/* 801CC914 001C2694  7F C3 F3 78 */	mr r3, r30
/* 801CC918 001C2698  83 DE 00 00 */	lwz r30, 0(r30)
/* 801CC91C 001C269C  81 83 00 08 */	lwz r12, 8(r3)
/* 801CC920 001C26A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801CC924 001C26A4  7D 89 03 A6 */	mtctr r12
/* 801CC928 001C26A8  4E 80 04 21 */	bctrl 
lbl_801CC92C:
/* 801CC92C 001C26AC  7C 1E F8 40 */	cmplw r30, r31
/* 801CC930 001C26B0  40 82 FF E4 */	bne lbl_801CC914
/* 801CC934 001C26B4  4B FF 0D 6D */	bl nw4r3snd6detail14ChannelManagerFv$7GetInstance
/* 801CC938 001C26B8  4B FF 10 5D */	bl nw4r3snd6detail14ChannelManagerFv$7UpdateAllChannel
lbl_801CC93C:
/* 801CC93C 001C26BC  48 00 6D 39 */	bl nw4r3snd6detail4UtilFv$7CalcRandom
/* 801CC940 001C26C0  48 00 61 91 */	bl nw4r3snd6detail12VoiceManagerFv$7GetInstance
/* 801CC944 001C26C4  48 00 66 85 */	bl nw4r3snd6detail12VoiceManagerFv$7UpdateAllVoices
/* 801CC948 001C26C8  48 01 52 05 */	bl OSGetTick
/* 801CC94C 001C26CC  7C 1D 18 50 */	subf r0, r29, r3
/* 801CC950 001C26D0  83 DB 03 7C */	lwz r30, 0x37c(r27)
/* 801CC954 001C26D4  90 1B 03 90 */	stw r0, 0x390(r27)
/* 801CC958 001C26D8  3B FB 03 7C */	addi r31, r27, 0x37c
/* 801CC95C 001C26DC  48 00 00 1C */	b lbl_801CC978
lbl_801CC960:
/* 801CC960 001C26E0  7F C3 F3 78 */	mr r3, r30
/* 801CC964 001C26E4  83 DE 00 00 */	lwz r30, 0(r30)
/* 801CC968 001C26E8  81 83 00 08 */	lwz r12, 8(r3)
/* 801CC96C 001C26EC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801CC970 001C26F0  7D 89 03 A6 */	mtctr r12
/* 801CC974 001C26F4  4E 80 04 21 */	bctrl 
lbl_801CC978:
/* 801CC978 001C26F8  7C 1E F8 40 */	cmplw r30, r31
/* 801CC97C 001C26FC  40 82 FF E4 */	bne lbl_801CC960
/* 801CC980 001C2700  7F 83 E3 78 */	mr r3, r28
/* 801CC984 001C2704  48 01 23 0D */	bl OSUnlockMutex
/* 801CC988 001C2708  4B FF FF 04 */	b lbl_801CC88C
lbl_801CC98C:
/* 801CC98C 001C270C  28 00 00 02 */	cmplwi r0, 2
/* 801CC990 001C2710  40 82 FE FC */	bne lbl_801CC88C
/* 801CC994 001C2714  83 DB 03 88 */	lwz r30, 0x388(r27)
/* 801CC998 001C2718  3B FB 03 88 */	addi r31, r27, 0x388
/* 801CC99C 001C271C  48 00 00 1C */	b lbl_801CC9B8
lbl_801CC9A0:
/* 801CC9A0 001C2720  7F C3 F3 78 */	mr r3, r30
/* 801CC9A4 001C2724  83 DE 00 00 */	lwz r30, 0(r30)
/* 801CC9A8 001C2728  81 83 00 08 */	lwz r12, 8(r3)
/* 801CC9AC 001C272C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CC9B0 001C2730  7D 89 03 A6 */	mtctr r12
/* 801CC9B4 001C2734  4E 80 04 21 */	bctrl 
lbl_801CC9B8:
/* 801CC9B8 001C2738  7C 1E F8 40 */	cmplw r30, r31
/* 801CC9BC 001C273C  40 82 FF E4 */	bne lbl_801CC9A0
/* 801CC9C0 001C2740  39 61 00 30 */	addi r11, r1, 0x30
/* 801CC9C4 001C2744  48 22 49 A9 */	bl _restgpr_27
/* 801CC9C8 001C2748  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CC9CC 001C274C  7C 08 03 A6 */	mtlr r0
/* 801CC9D0 001C2750  38 21 00 30 */	addi r1, r1, 0x30
/* 801CC9D4 001C2754  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail11BasicPlayerFv$7__ct
nw4r3snd6detail11BasicPlayerFv$7__ct:
/* 801BC360 001B20E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BC364 001B20E4  7C 08 02 A6 */	mflr r0
/* 801BC368 001B20E8  3C 80 80 46 */	lis r4, lbl_804665B8@ha
/* 801BC36C 001B20EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BC370 001B20F0  38 00 FF FF */	li r0, -1
/* 801BC374 001B20F4  38 84 65 B8 */	addi r4, r4, lbl_804665B8@l
/* 801BC378 001B20F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BC37C 001B20FC  7C 7F 1B 78 */	mr r31, r3
/* 801BC380 001B2100  90 03 00 04 */	stw r0, 4(r3)
/* 801BC384 001B2104  90 83 00 00 */	stw r4, 0(r3)
/* 801BC388 001B2108  48 00 00 1D */	bl nw4r3snd6detail11BasicPlayerFv$7InitParam
/* 801BC38C 001B210C  7F E3 FB 78 */	mr r3, r31
/* 801BC390 001B2110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BC394 001B2114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BC398 001B2118  7C 08 03 A6 */	mtlr r0
/* 801BC39C 001B211C  38 21 00 10 */	addi r1, r1, 0x10
/* 801BC3A0 001B2120  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerFv$7InitParam
nw4r3snd6detail11BasicPlayerFv$7InitParam:
/* 801BC3A4 001B2124  C0 02 A1 84 */	lfs f0, lbl_805A34A4-_SDA2_BASE_(r2)
/* 801BC3A8 001B2128  38 80 00 00 */	li r4, 0
/* 801BC3AC 001B212C  C0 22 A1 80 */	lfs f1, lbl_805A34A0-_SDA2_BASE_(r2)
/* 801BC3B0 001B2130  38 00 00 01 */	li r0, 1
/* 801BC3B4 001B2134  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801BC3B8 001B2138  D0 23 00 08 */	stfs f1, 8(r3)
/* 801BC3BC 001B213C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 801BC3C0 001B2140  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801BC3C4 001B2144  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801BC3C8 001B2148  98 83 00 68 */	stb r4, 0x68(r3)
/* 801BC3CC 001B214C  90 83 00 6C */	stw r4, 0x6c(r3)
/* 801BC3D0 001B2150  90 83 00 70 */	stw r4, 0x70(r3)
/* 801BC3D4 001B2154  90 03 00 20 */	stw r0, 0x20(r3)
/* 801BC3D8 001B2158  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 801BC3DC 001B215C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 801BC3E0 001B2160  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801BC3E4 001B2164  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 801BC3E8 001B2168  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 801BC3EC 001B216C  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 801BC3F0 001B2170  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 801BC3F4 001B2174  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801BC3F8 001B2178  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 801BC3FC 001B217C  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 801BC400 001B2180  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 801BC404 001B2184  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 801BC408 001B2188  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 801BC40C 001B218C  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 801BC410 001B2190  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 801BC414 001B2194  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 801BC418 001B2198  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 801BC41C 001B219C  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerFQ34nw4r3snd6Aux$7SetFxSend
nw4r3snd6detail11BasicPlayerFQ34nw4r3snd6Aux$7SetFxSend:
/* 801BC420 001B21A0  54 80 10 3A */	slwi r0, r4, 2
/* 801BC424 001B21A4  7C 63 02 14 */	add r3, r3, r0
/* 801BC428 001B21A8  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 801BC42C 001B21AC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerCFQ34nw4r3snd6Au$7GetFxSend
nw4r3snd6detail11BasicPlayerCFQ34nw4r3snd6Au$7GetFxSend:
/* 801BC430 001B21B0  54 80 10 3A */	slwi r0, r4, 2
/* 801BC434 001B21B4  7C 63 02 14 */	add r3, r3, r0
/* 801BC438 001B21B8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801BC43C 001B21BC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerFif$7SetRemoteOutVolume
nw4r3snd6detail11BasicPlayerFif$7SetRemoteOutVolume:
/* 801BC440 001B21C0  54 80 10 3A */	slwi r0, r4, 2
/* 801BC444 001B21C4  7C 63 02 14 */	add r3, r3, r0
/* 801BC448 001B21C8  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 801BC44C 001B21CC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerCFi$7GetRemoteOutVolume
nw4r3snd6detail11BasicPlayerCFi$7GetRemoteOutVolume:
/* 801BC450 001B21D0  54 80 10 3A */	slwi r0, r4, 2
/* 801BC454 001B21D4  7C 63 02 14 */	add r3, r3, r0
/* 801BC458 001B21D8  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 801BC45C 001B21DC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerCFi$7GetRemoteSend
nw4r3snd6detail11BasicPlayerCFi$7GetRemoteSend:
/* 801BC460 001B21E0  54 80 10 3A */	slwi r0, r4, 2
/* 801BC464 001B21E4  7C 63 02 14 */	add r3, r3, r0
/* 801BC468 001B21E8  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 801BC46C 001B21EC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerCFi$7GetRemoteFxSend
nw4r3snd6detail11BasicPlayerCFi$7GetRemoteFxSend:
/* 801BC470 001B21F0  54 80 10 3A */	slwi r0, r4, 2
/* 801BC474 001B21F4  7C 63 02 14 */	add r3, r3, r0
/* 801BC478 001B21F8  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 801BC47C 001B21FC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11BasicPlayerFv$7__dt
nw4r3snd6detail11BasicPlayerFv$7__dt:
/* 801BC480 001B2200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BC484 001B2204  7C 08 02 A6 */	mflr r0
/* 801BC488 001B2208  2C 03 00 00 */	cmpwi r3, 0
/* 801BC48C 001B220C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BC490 001B2210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BC494 001B2214  7C 7F 1B 78 */	mr r31, r3
/* 801BC498 001B2218  41 82 00 10 */	beq lbl_801BC4A8
/* 801BC49C 001B221C  2C 04 00 00 */	cmpwi r4, 0
/* 801BC4A0 001B2220  40 81 00 08 */	ble lbl_801BC4A8
/* 801BC4A4 001B2224  4B E5 04 25 */	bl __dl__FPv
lbl_801BC4A8:
/* 801BC4A8 001B2228  7F E3 FB 78 */	mr r3, r31
/* 801BC4AC 001B222C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BC4B0 001B2230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BC4B4 001B2234  7C 08 03 A6 */	mtlr r0
/* 801BC4B8 001B2238  38 21 00 10 */	addi r1, r1, 0x10
/* 801BC4BC 001B223C  4E 80 00 20 */	blr 


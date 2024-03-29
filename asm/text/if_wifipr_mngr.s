.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IfWifiprMngr$7create
IfWifiprMngr$7create:
/* 800FC25C 000F1FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC260 000F1FE0  7C 08 02 A6 */	mflr r0
/* 800FC264 000F1FE4  38 60 00 68 */	li r3, 0x68
/* 800FC268 000F1FE8  38 80 00 28 */	li r4, 0x28
/* 800FC26C 000F1FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC270 000F1FF0  4B F1 06 49 */	bl __nw__10srHeapTypeFUlUl
/* 800FC274 000F1FF4  2C 03 00 00 */	cmpwi r3, 0
/* 800FC278 000F1FF8  41 82 00 08 */	beq lbl_800FC280
/* 800FC27C 000F1FFC  48 00 00 85 */	bl func_800FC300
lbl_800FC280:
/* 800FC280 000F2000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC284 000F2004  7C 08 03 A6 */	mtlr r0
/* 800FC288 000F2008  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC28C 000F200C  4E 80 00 20 */	blr 
/* 800FC290 000F2010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC294 000F2014  7C 08 02 A6 */	mflr r0
/* 800FC298 000F2018  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC29C 000F201C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FC2A0 000F2020  83 ED BE E0 */	lwz r31, lbl_805A0300-_SDA_BASE_(r13)
/* 800FC2A4 000F2024  2C 1F 00 00 */	cmpwi r31, 0
/* 800FC2A8 000F2028  41 82 00 3C */	beq lbl_800FC2E4
/* 800FC2AC 000F202C  7F E3 FB 78 */	mr r3, r31
/* 800FC2B0 000F2030  48 00 05 91 */	bl func_800FC840
/* 800FC2B4 000F2034  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800FC2B8 000F2038  48 0A 16 21 */	bl nw4r3g3d6G3dObjFv$7Destroy
/* 800FC2BC 000F203C  38 00 00 00 */	li r0, 0
/* 800FC2C0 000F2040  3C 80 80 10 */	lis r4, lbl_800FC3E4@ha
/* 800FC2C4 000F2044  90 1F 00 14 */	stw r0, 0x14(r31)
/* 800FC2C8 000F2048  38 7F 00 54 */	addi r3, r31, 0x54
/* 800FC2CC 000F204C  38 84 C3 E4 */	addi r4, r4, lbl_800FC3E4@l
/* 800FC2D0 000F2050  38 A0 00 04 */	li r5, 4
/* 800FC2D4 000F2054  38 C0 00 05 */	li r6, 5
/* 800FC2D8 000F2058  48 2F 49 FD */	bl __destroy_arr
/* 800FC2DC 000F205C  7F E3 FB 78 */	mr r3, r31
/* 800FC2E0 000F2060  4B F1 05 E9 */	bl __dl__FPv
lbl_800FC2E4:
/* 800FC2E4 000F2064  38 00 00 00 */	li r0, 0
/* 800FC2E8 000F2068  90 0D BE E0 */	stw r0, lbl_805A0300-_SDA_BASE_(r13)
/* 800FC2EC 000F206C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FC2F0 000F2070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC2F4 000F2074  7C 08 03 A6 */	mtlr r0
/* 800FC2F8 000F2078  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC2FC 000F207C  4E 80 00 20 */	blr 

.global func_800FC300
func_800FC300:
/* 800FC300 000F2080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC304 000F2084  7C 08 02 A6 */	mflr r0
/* 800FC308 000F2088  3C 80 80 10 */	lis r4, lbl_800FC3D8@ha
/* 800FC30C 000F208C  3C A0 80 10 */	lis r5, lbl_800FC3E4@ha
/* 800FC310 000F2090  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC314 000F2094  38 84 C3 D8 */	addi r4, r4, lbl_800FC3D8@l
/* 800FC318 000F2098  38 A5 C3 E4 */	addi r5, r5, lbl_800FC3E4@l
/* 800FC31C 000F209C  38 C0 00 04 */	li r6, 4
/* 800FC320 000F20A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FC324 000F20A4  3B E0 00 00 */	li r31, 0
/* 800FC328 000F20A8  38 E0 00 05 */	li r7, 5
/* 800FC32C 000F20AC  93 C1 00 08 */	stw r30, 8(r1)
/* 800FC330 000F20B0  7C 7E 1B 78 */	mr r30, r3
/* 800FC334 000F20B4  88 03 00 00 */	lbz r0, 0(r3)
/* 800FC338 000F20B8  93 E3 00 08 */	stw r31, 8(r3)
/* 800FC33C 000F20BC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800FC340 000F20C0  98 03 00 00 */	stb r0, 0(r3)
/* 800FC344 000F20C4  93 E3 00 0C */	stw r31, 0xc(r3)
/* 800FC348 000F20C8  93 E3 00 10 */	stw r31, 0x10(r3)
/* 800FC34C 000F20CC  93 E3 00 14 */	stw r31, 0x14(r3)
/* 800FC350 000F20D0  93 E3 00 18 */	stw r31, 0x18(r3)
/* 800FC354 000F20D4  93 E3 00 38 */	stw r31, 0x38(r3)
/* 800FC358 000F20D8  93 E3 00 3C */	stw r31, 0x3c(r3)
/* 800FC35C 000F20DC  93 E3 00 40 */	stw r31, 0x40(r3)
/* 800FC360 000F20E0  93 E3 00 44 */	stw r31, 0x44(r3)
/* 800FC364 000F20E4  93 E3 00 48 */	stw r31, 0x48(r3)
/* 800FC368 000F20E8  93 E3 00 4C */	stw r31, 0x4c(r3)
/* 800FC36C 000F20EC  9B E3 00 50 */	stb r31, 0x50(r3)
/* 800FC370 000F20F0  38 63 00 54 */	addi r3, r3, 0x54
/* 800FC374 000F20F4  48 2F 48 69 */	bl __construct_array
/* 800FC378 000F20F8  93 FE 00 08 */	stw r31, 8(r30)
/* 800FC37C 000F20FC  38 60 00 28 */	li r3, 0x28
/* 800FC380 000F2100  93 FE 00 0C */	stw r31, 0xc(r30)
/* 800FC384 000F2104  93 FE 00 10 */	stw r31, 0x10(r30)
/* 800FC388 000F2108  4B F2 80 A9 */	bl gfHeapManager$7getMEMAllocator
/* 800FC38C 000F210C  38 80 00 00 */	li r4, 0
/* 800FC390 000F2110  38 A0 00 04 */	li r5, 4
/* 800FC394 000F2114  48 0A F3 39 */	bl nw4r3g3d8ScnGroupFP12MEMAllocatorP$7Construct
/* 800FC398 000F2118  90 7E 00 14 */	stw r3, 0x14(r30)
/* 800FC39C 000F211C  7F C3 F3 78 */	mr r3, r30
/* 800FC3A0 000F2120  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 800FC3A4 000F2124  93 FE 00 20 */	stw r31, 0x20(r30)
/* 800FC3A8 000F2128  93 FE 00 24 */	stw r31, 0x24(r30)
/* 800FC3AC 000F212C  93 FE 00 28 */	stw r31, 0x28(r30)
/* 800FC3B0 000F2130  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 800FC3B4 000F2134  93 FE 00 30 */	stw r31, 0x30(r30)
/* 800FC3B8 000F2138  93 FE 00 34 */	stw r31, 0x34(r30)
/* 800FC3BC 000F213C  93 CD BE E0 */	stw r30, lbl_805A0300-_SDA_BASE_(r13)
/* 800FC3C0 000F2140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FC3C4 000F2144  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FC3C8 000F2148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC3CC 000F214C  7C 08 03 A6 */	mtlr r0
/* 800FC3D0 000F2150  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC3D4 000F2154  4E 80 00 20 */	blr 

.global lbl_800FC3D8
lbl_800FC3D8:
/* 800FC3D8 000F2158  38 00 00 00 */	li r0, 0
/* 800FC3DC 000F215C  90 03 00 00 */	stw r0, 0(r3)
/* 800FC3E0 000F2160  4E 80 00 20 */	blr 

.global lbl_800FC3E4
lbl_800FC3E4:
/* 800FC3E4 000F2164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC3E8 000F2168  7C 08 02 A6 */	mflr r0
/* 800FC3EC 000F216C  2C 03 00 00 */	cmpwi r3, 0
/* 800FC3F0 000F2170  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC3F4 000F2174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FC3F8 000F2178  7C 9F 23 78 */	mr r31, r4
/* 800FC3FC 000F217C  93 C1 00 08 */	stw r30, 8(r1)
/* 800FC400 000F2180  7C 7E 1B 78 */	mr r30, r3
/* 800FC404 000F2184  41 82 00 1C */	beq lbl_800FC420
/* 800FC408 000F2188  38 80 00 00 */	li r4, 0
/* 800FC40C 000F218C  4B F2 47 2D */	bl gfFileIOHandle$7__dt
/* 800FC410 000F2190  2C 1F 00 00 */	cmpwi r31, 0
/* 800FC414 000F2194  40 81 00 0C */	ble lbl_800FC420
/* 800FC418 000F2198  7F C3 F3 78 */	mr r3, r30
/* 800FC41C 000F219C  4B F1 04 AD */	bl __dl__FPv
lbl_800FC420:
/* 800FC420 000F21A0  7F C3 F3 78 */	mr r3, r30
/* 800FC424 000F21A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FC428 000F21A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FC42C 000F21AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC430 000F21B0  7C 08 03 A6 */	mtlr r0


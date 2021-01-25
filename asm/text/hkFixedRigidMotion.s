.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkFixedRigidMotion
finishLoadedObjecthkFixedRigidMotion:
/* 802E5258 002DAFD8  2C 03 00 00 */	cmpwi r3, 0
/* 802E525C 002DAFDC  4D 82 00 20 */	beqlr 
/* 802E5260 002DAFE0  3C 80 80 49 */	lis r4, lbl_80488088@ha
/* 802E5264 002DAFE4  38 00 00 01 */	li r0, 1
/* 802E5268 002DAFE8  38 84 80 88 */	addi r4, r4, lbl_80488088@l
/* 802E526C 002DAFEC  B0 03 00 06 */	sth r0, 6(r3)
/* 802E5270 002DAFF0  90 83 00 00 */	stw r4, 0(r3)
/* 802E5274 002DAFF4  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkFixedRigidMotion
cleanupLoadedObjecthkFixedRigidMotion:
/* 802E5278 002DAFF8  81 83 00 00 */	lwz r12, 0(r3)
/* 802E527C 002DAFFC  38 80 FF FF */	li r4, -1
/* 802E5280 002DB000  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E5284 002DB004  7D 89 03 A6 */	mtctr r12
/* 802E5288 002DB008  4E 80 04 20 */	bctr 

.global hkFixedRigidMotion$7__dt
hkFixedRigidMotion$7__dt:
/* 802E528C 002DB00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5290 002DB010  7C 08 02 A6 */	mflr r0
/* 802E5294 002DB014  2C 03 00 00 */	cmpwi r3, 0
/* 802E5298 002DB018  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E529C 002DB01C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E52A0 002DB020  7C 9F 23 78 */	mr r31, r4
/* 802E52A4 002DB024  93 C1 00 08 */	stw r30, 8(r1)
/* 802E52A8 002DB028  7C 7E 1B 78 */	mr r30, r3
/* 802E52AC 002DB02C  41 82 00 28 */	beq lbl_802E52D4
/* 802E52B0 002DB030  38 80 00 00 */	li r4, 0
/* 802E52B4 002DB034  48 00 03 F5 */	bl hkKeyframedRigidMotion$7__dt
/* 802E52B8 002DB038  2C 1F 00 00 */	cmpwi r31, 0
/* 802E52BC 002DB03C  40 81 00 18 */	ble lbl_802E52D4
/* 802E52C0 002DB040  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802E52C4 002DB044  7F C4 F3 78 */	mr r4, r30
/* 802E52C8 002DB048  A0 BE 00 04 */	lhz r5, 4(r30)
/* 802E52CC 002DB04C  38 C0 00 2C */	li r6, 0x2c
/* 802E52D0 002DB050  4B F9 97 ED */	bl hkThreadMemory$7deallocateChunk
lbl_802E52D4:
/* 802E52D4 002DB054  7F C3 F3 78 */	mr r3, r30
/* 802E52D8 002DB058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E52DC 002DB05C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E52E0 002DB060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E52E4 002DB064  7C 08 03 A6 */	mtlr r0
/* 802E52E8 002DB068  38 21 00 10 */	addi r1, r1, 0x10
/* 802E52EC 002DB06C  4E 80 00 20 */	blr 

.global getVtablehkFixedRigidMotion
getVtablehkFixedRigidMotion:
/* 802E52F0 002DB070  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E52F4 002DB074  7C 2C 0B 78 */	mr r12, r1
/* 802E52F8 002DB078  21 6B FE E0 */	subfic r11, r11, -288
/* 802E52FC 002DB07C  7C 21 59 6E */	stwux r1, r1, r11
/* 802E5300 002DB080  34 01 00 10 */	addic. r0, r1, 0x10
/* 802E5304 002DB084  41 82 00 18 */	beq lbl_802E531C
/* 802E5308 002DB088  3C 60 80 49 */	lis r3, lbl_80488088@ha
/* 802E530C 002DB08C  38 00 00 01 */	li r0, 1
/* 802E5310 002DB090  38 63 80 88 */	addi r3, r3, lbl_80488088@l
/* 802E5314 002DB094  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802E5318 002DB098  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802E531C:
/* 802E531C 002DB09C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E5320 002DB0A0  81 41 00 00 */	lwz r10, 0(r1)
/* 802E5324 002DB0A4  7D 41 53 78 */	mr r1, r10
/* 802E5328 002DB0A8  4E 80 00 20 */	blr 

.global hkFixedRigidMotion$7__ct
hkFixedRigidMotion$7__ct:
/* 802E532C 002DB0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5330 002DB0B0  7C 08 02 A6 */	mflr r0
/* 802E5334 002DB0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5338 002DB0B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E533C 002DB0BC  7C 7F 1B 78 */	mr r31, r3
/* 802E5340 002DB0C0  48 00 03 05 */	bl hkKeyframedRigidMotion$7__ct
/* 802E5344 002DB0C4  3C 80 80 49 */	lis r4, lbl_80488088@ha
/* 802E5348 002DB0C8  38 00 00 07 */	li r0, 7
/* 802E534C 002DB0CC  38 84 80 88 */	addi r4, r4, lbl_80488088@l
/* 802E5350 002DB0D0  98 1F 00 08 */	stb r0, 8(r31)
/* 802E5354 002DB0D4  7F E3 FB 78 */	mr r3, r31
/* 802E5358 002DB0D8  90 9F 00 00 */	stw r4, 0(r31)
/* 802E535C 002DB0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5360 002DB0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5364 002DB0E4  7C 08 03 A6 */	mtlr r0
/* 802E5368 002DB0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E536C 002DB0EC  4E 80 00 20 */	blr 

.global hkFixedRigidMotion$7setStepPosition
hkFixedRigidMotion$7setStepPosition:
/* 802E5370 002DB0F0  4E 80 00 20 */	blr 

.global hkFixedRigidMotion$7getPositionAndVelocities
hkFixedRigidMotion$7getPositionAndVelocities:
/* 802E5374 002DB0F4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802E5378 002DB0F8  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 802E537C 002DB0FC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802E5380 002DB100  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 802E5384 002DB104  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802E5388 002DB108  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 802E538C 002DB10C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802E5390 002DB110  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 802E5394 002DB114  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802E5398 002DB118  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 802E539C 002DB11C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802E53A0 002DB120  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 802E53A4 002DB124  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802E53A8 002DB128  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 802E53AC 002DB12C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802E53B0 002DB130  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 802E53B4 002DB134  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 802E53B8 002DB138  D0 04 00 30 */	stfs f0, 0x30(r4)
/* 802E53BC 002DB13C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802E53C0 002DB140  D0 04 00 34 */	stfs f0, 0x34(r4)
/* 802E53C4 002DB144  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802E53C8 002DB148  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 802E53CC 002DB14C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802E53D0 002DB150  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 802E53D4 002DB154  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802E53D8 002DB158  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 802E53DC 002DB15C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802E53E0 002DB160  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 802E53E4 002DB164  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802E53E8 002DB168  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 802E53EC 002DB16C  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 802E53F0 002DB170  D0 04 00 4C */	stfs f0, 0x4c(r4)
/* 802E53F4 002DB174  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 802E53F8 002DB178  D0 04 00 50 */	stfs f0, 0x50(r4)
/* 802E53FC 002DB17C  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 802E5400 002DB180  D0 04 00 54 */	stfs f0, 0x54(r4)
/* 802E5404 002DB184  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 802E5408 002DB188  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 802E540C 002DB18C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 802E5410 002DB190  D0 04 00 5C */	stfs f0, 0x5c(r4)
/* 802E5414 002DB194  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 802E5418 002DB198  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 802E541C 002DB19C  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 802E5420 002DB1A0  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 802E5424 002DB1A4  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 802E5428 002DB1A8  D0 04 00 68 */	stfs f0, 0x68(r4)
/* 802E542C 002DB1AC  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 802E5430 002DB1B0  D0 04 00 6C */	stfs f0, 0x6c(r4)
/* 802E5434 002DB1B4  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 802E5438 002DB1B8  D0 04 00 70 */	stfs f0, 0x70(r4)
/* 802E543C 002DB1BC  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 802E5440 002DB1C0  D0 04 00 74 */	stfs f0, 0x74(r4)
/* 802E5444 002DB1C4  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 802E5448 002DB1C8  D0 04 00 78 */	stfs f0, 0x78(r4)
/* 802E544C 002DB1CC  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 802E5450 002DB1D0  D0 04 00 7C */	stfs f0, 0x7c(r4)
/* 802E5454 002DB1D4  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 802E5458 002DB1D8  D0 04 00 80 */	stfs f0, 0x80(r4)
/* 802E545C 002DB1DC  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 802E5460 002DB1E0  D0 04 00 84 */	stfs f0, 0x84(r4)
/* 802E5464 002DB1E4  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 802E5468 002DB1E8  D0 04 00 88 */	stfs f0, 0x88(r4)
/* 802E546C 002DB1EC  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 802E5470 002DB1F0  D0 04 00 8C */	stfs f0, 0x8c(r4)
/* 802E5474 002DB1F4  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 802E5478 002DB1F8  D0 04 00 90 */	stfs f0, 0x90(r4)
/* 802E547C 002DB1FC  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 802E5480 002DB200  D0 04 00 94 */	stfs f0, 0x94(r4)
/* 802E5484 002DB204  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 802E5488 002DB208  D0 04 00 98 */	stfs f0, 0x98(r4)
/* 802E548C 002DB20C  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 802E5490 002DB210  D0 04 00 9C */	stfs f0, 0x9c(r4)
/* 802E5494 002DB214  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 802E5498 002DB218  D0 04 00 A0 */	stfs f0, 0xa0(r4)
/* 802E549C 002DB21C  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 802E54A0 002DB220  D0 04 00 A4 */	stfs f0, 0xa4(r4)
/* 802E54A4 002DB224  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 802E54A8 002DB228  D0 04 00 A8 */	stfs f0, 0xa8(r4)
/* 802E54AC 002DB22C  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 802E54B0 002DB230  D0 04 00 AC */	stfs f0, 0xac(r4)
/* 802E54B4 002DB234  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 802E54B8 002DB238  D0 04 00 B0 */	stfs f0, 0xb0(r4)
/* 802E54BC 002DB23C  C0 03 00 B4 */	lfs f0, 0xb4(r3)
/* 802E54C0 002DB240  D0 04 00 B4 */	stfs f0, 0xb4(r4)
/* 802E54C4 002DB244  C0 03 00 B8 */	lfs f0, 0xb8(r3)
/* 802E54C8 002DB248  D0 04 00 B8 */	stfs f0, 0xb8(r4)
/* 802E54CC 002DB24C  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 802E54D0 002DB250  D0 04 00 BC */	stfs f0, 0xbc(r4)
/* 802E54D4 002DB254  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 802E54D8 002DB258  D0 04 00 C0 */	stfs f0, 0xc0(r4)
/* 802E54DC 002DB25C  A0 03 00 C4 */	lhz r0, 0xc4(r3)
/* 802E54E0 002DB260  C0 02 B0 A8 */	lfs f0, lbl_805A43C8-_SDA2_BASE_(r2)
/* 802E54E4 002DB264  B0 04 00 C4 */	sth r0, 0xc4(r4)
/* 802E54E8 002DB268  A0 03 00 C6 */	lhz r0, 0xc6(r3)
/* 802E54EC 002DB26C  B0 04 00 C6 */	sth r0, 0xc6(r4)
/* 802E54F0 002DB270  D0 04 00 EC */	stfs f0, 0xec(r4)
/* 802E54F4 002DB274  D0 04 00 E8 */	stfs f0, 0xe8(r4)
/* 802E54F8 002DB278  D0 04 00 E4 */	stfs f0, 0xe4(r4)
/* 802E54FC 002DB27C  D0 04 00 E0 */	stfs f0, 0xe0(r4)
/* 802E5500 002DB280  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 802E5504 002DB284  D0 04 00 F8 */	stfs f0, 0xf8(r4)
/* 802E5508 002DB288  D0 04 00 F4 */	stfs f0, 0xf4(r4)
/* 802E550C 002DB28C  D0 04 00 F0 */	stfs f0, 0xf0(r4)
/* 802E5510 002DB290  4E 80 00 20 */	blr 

.global __sinit_$3hkFixedRigidMotion_cpp
__sinit_$3hkFixedRigidMotion_cpp:
/* 802E5514 002DB294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5518 002DB298  7C 08 02 A6 */	mflr r0
/* 802E551C 002DB29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5520 002DB2A0  4B FF FD D1 */	bl getVtablehkFixedRigidMotion
/* 802E5524 002DB2A4  3D 00 80 41 */	lis r8, lbl_80413130@ha
/* 802E5528 002DB2A8  3C E0 80 53 */	lis r7, lbl_805330F8@ha
/* 802E552C 002DB2AC  3C C0 80 2E */	lis r6, finishLoadedObjecthkFixedRigidMotion@ha
/* 802E5530 002DB2B0  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkFixedRigidMotion@ha
/* 802E5534 002DB2B4  39 08 31 30 */	addi r8, r8, lbl_80413130@l
/* 802E5538 002DB2B8  38 A7 30 F8 */	addi r5, r7, lbl_805330F8@l
/* 802E553C 002DB2BC  38 C6 52 58 */	addi r6, r6, finishLoadedObjecthkFixedRigidMotion@l
/* 802E5540 002DB2C0  38 84 52 78 */	addi r4, r4, cleanupLoadedObjecthkFixedRigidMotion@l
/* 802E5544 002DB2C4  91 07 30 F8 */	stw r8, 0x30f8(r7)
/* 802E5548 002DB2C8  90 C5 00 04 */	stw r6, 4(r5)
/* 802E554C 002DB2CC  90 85 00 08 */	stw r4, 8(r5)
/* 802E5550 002DB2D0  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E5554 002DB2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5558 002DB2D8  7C 08 03 A6 */	mtlr r0
/* 802E555C 002DB2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5560 002DB2E0  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMotion$7__ct
hkMotion$7__ct:
/* 802E4338 002DA0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E433C 002DA0BC  7C 08 02 A6 */	mflr r0
/* 802E4340 002DA0C0  3C C0 80 48 */	lis r6, lbl_80487F50@ha
/* 802E4344 002DA0C4  C0 02 B0 90 */	lfs f0, lbl_805A43B0-_SDA2_BASE_(r2)
/* 802E4348 002DA0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E434C 002DA0CC  38 C6 7F 50 */	addi r6, r6, lbl_80487F50@l
/* 802E4350 002DA0D0  38 00 00 01 */	li r0, 1
/* 802E4354 002DA0D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E4358 002DA0D8  7C 7F 1B 78 */	mr r31, r3
/* 802E435C 002DA0DC  B0 03 00 06 */	sth r0, 6(r3)
/* 802E4360 002DA0E0  90 C3 00 00 */	stw r6, 0(r3)
/* 802E4364 002DA0E4  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 802E4368 002DA0E8  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 802E436C 002DA0EC  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 802E4370 002DA0F0  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 802E4374 002DA0F4  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 802E4378 002DA0F8  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 802E437C 002DA0FC  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 802E4380 002DA100  D0 03 00 F0 */	stfs f0, 0xf0(r3)
/* 802E4384 002DA104  38 63 00 10 */	addi r3, r3, 0x10
/* 802E4388 002DA108  4B F9 DC 29 */	bl hkMotionState$7initMotionState
/* 802E438C 002DA10C  C0 02 B0 90 */	lfs f0, lbl_805A43B0-_SDA2_BASE_(r2)
/* 802E4390 002DA110  38 00 00 00 */	li r0, 0
/* 802E4394 002DA114  98 1F 00 08 */	stb r0, 8(r31)
/* 802E4398 002DA118  7F E3 FB 78 */	mr r3, r31
/* 802E439C 002DA11C  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 802E43A0 002DA120  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 802E43A4 002DA124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E43A8 002DA128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E43AC 002DA12C  7C 08 03 A6 */	mtlr r0
/* 802E43B0 002DA130  38 21 00 10 */	addi r1, r1, 0x10
/* 802E43B4 002DA134  4E 80 00 20 */	blr 

.global hkMotion$7setMass
hkMotion$7setMass:
/* 802E43B8 002DA138  C0 02 B0 90 */	lfs f0, lbl_805A43B0-_SDA2_BASE_(r2)
/* 802E43BC 002DA13C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802E43C0 002DA140  40 82 00 0C */	bne lbl_802E43CC
/* 802E43C4 002DA144  FC 20 00 90 */	fmr f1, f0
/* 802E43C8 002DA148  48 00 00 0C */	b lbl_802E43D4
lbl_802E43CC:
/* 802E43CC 002DA14C  C0 02 B0 94 */	lfs f0, lbl_805A43B4-_SDA2_BASE_(r2)
/* 802E43D0 002DA150  EC 20 08 24 */	fdivs f1, f0, f1
lbl_802E43D4:
/* 802E43D4 002DA154  81 83 00 00 */	lwz r12, 0(r3)
/* 802E43D8 002DA158  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802E43DC 002DA15C  7D 89 03 A6 */	mtctr r12
/* 802E43E0 002DA160  4E 80 04 20 */	bctr 

.global hkMotion$7getMass
hkMotion$7getMass:
/* 802E43E4 002DA164  C0 43 00 DC */	lfs f2, 0xdc(r3)
/* 802E43E8 002DA168  C0 22 B0 90 */	lfs f1, lbl_805A43B0-_SDA2_BASE_(r2)
/* 802E43EC 002DA16C  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 802E43F0 002DA170  4D 82 00 20 */	beqlr 
/* 802E43F4 002DA174  C0 02 B0 94 */	lfs f0, lbl_805A43B4-_SDA2_BASE_(r2)
/* 802E43F8 002DA178  EC 20 10 24 */	fdivs f1, f0, f2
/* 802E43FC 002DA17C  4E 80 00 20 */	blr 

.global hkMotion$7setMassInv
hkMotion$7setMassInv:
/* 802E4400 002DA180  D0 23 00 DC */	stfs f1, 0xdc(r3)
/* 802E4404 002DA184  4E 80 00 20 */	blr 

.global hkMotion$7setCenterOfMassInLocal
hkMotion$7setCenterOfMassInLocal:
/* 802E4408 002DA188  7C 65 1B 78 */	mr r5, r3
/* 802E440C 002DA18C  7C 83 23 78 */	mr r3, r4
/* 802E4410 002DA190  38 85 00 10 */	addi r4, r5, 0x10
/* 802E4414 002DA194  4B FA 2C E4 */	b hkSweptTransformUtil$7setCentreOfRotationLocal

.global hkMotion$7setPosition
hkMotion$7setPosition:
/* 802E4418 002DA198  7C 65 1B 78 */	mr r5, r3
/* 802E441C 002DA19C  7C 83 23 78 */	mr r3, r4
/* 802E4420 002DA1A0  38 85 00 10 */	addi r4, r5, 0x10
/* 802E4424 002DA1A4  4B FA 2B 74 */	b hkSweptTransformUtil$7warpToPosition

.global hkMotion$7setRotation
hkMotion$7setRotation:
/* 802E4428 002DA1A8  7C 65 1B 78 */	mr r5, r3
/* 802E442C 002DA1AC  7C 83 23 78 */	mr r3, r4
/* 802E4430 002DA1B0  38 85 00 10 */	addi r4, r5, 0x10
/* 802E4434 002DA1B4  4B FA 2C B0 */	b hkSweptTransformUtil$7warpToRotation

.global hkMotion$7setPositionAndRotation
hkMotion$7setPositionAndRotation:
/* 802E4438 002DA1B8  7C 66 1B 78 */	mr r6, r3
/* 802E443C 002DA1BC  7C 83 23 78 */	mr r3, r4
/* 802E4440 002DA1C0  7C A4 2B 78 */	mr r4, r5
/* 802E4444 002DA1C4  38 A6 00 10 */	addi r5, r6, 0x10
/* 802E4448 002DA1C8  4B FA 27 D8 */	b hkSweptTransformUtil$7warpTo

.global hkMotion$7setTransform
hkMotion$7setTransform:
/* 802E444C 002DA1CC  7C 65 1B 78 */	mr r5, r3
/* 802E4450 002DA1D0  7C 83 23 78 */	mr r3, r4
/* 802E4454 002DA1D4  38 85 00 10 */	addi r4, r5, 0x10
/* 802E4458 002DA1D8  4B FA 29 1C */	b hkSweptTransformUtil$7warpTo_9336

.global hkMotion$7setLinearVelocity
hkMotion$7setLinearVelocity:
/* 802E445C 002DA1DC  C0 64 00 00 */	lfs f3, 0(r4)
/* 802E4460 002DA1E0  C0 44 00 04 */	lfs f2, 4(r4)
/* 802E4464 002DA1E4  C0 24 00 08 */	lfs f1, 8(r4)
/* 802E4468 002DA1E8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802E446C 002DA1EC  D0 63 00 E0 */	stfs f3, 0xe0(r3)
/* 802E4470 002DA1F0  D0 43 00 E4 */	stfs f2, 0xe4(r3)
/* 802E4474 002DA1F4  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 802E4478 002DA1F8  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 802E447C 002DA1FC  4E 80 00 20 */	blr 

.global hkMotion$7setAngularVelocity
hkMotion$7setAngularVelocity:
/* 802E4480 002DA200  C0 64 00 00 */	lfs f3, 0(r4)
/* 802E4484 002DA204  C0 44 00 04 */	lfs f2, 4(r4)
/* 802E4488 002DA208  C0 24 00 08 */	lfs f1, 8(r4)
/* 802E448C 002DA20C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802E4490 002DA210  D0 63 00 F0 */	stfs f3, 0xf0(r3)
/* 802E4494 002DA214  D0 43 00 F4 */	stfs f2, 0xf4(r3)
/* 802E4498 002DA218  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 802E449C 002DA21C  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 802E44A0 002DA220  4E 80 00 20 */	blr 

.global hkMotion$7applyLinearImpulse
hkMotion$7applyLinearImpulse:
/* 802E44A4 002DA224  C0 C3 00 DC */	lfs f6, 0xdc(r3)
/* 802E44A8 002DA228  C0 64 00 00 */	lfs f3, 0(r4)
/* 802E44AC 002DA22C  C0 43 00 E0 */	lfs f2, 0xe0(r3)
/* 802E44B0 002DA230  C0 24 00 04 */	lfs f1, 4(r4)
/* 802E44B4 002DA234  EC A6 10 FA */	fmadds f5, f6, f3, f2
/* 802E44B8 002DA238  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 802E44BC 002DA23C  C0 64 00 08 */	lfs f3, 8(r4)
/* 802E44C0 002DA240  EC 86 00 7A */	fmadds f4, f6, f1, f0
/* 802E44C4 002DA244  C0 43 00 E8 */	lfs f2, 0xe8(r3)
/* 802E44C8 002DA248  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 802E44CC 002DA24C  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 802E44D0 002DA250  EC 46 10 FA */	fmadds f2, f6, f3, f2
/* 802E44D4 002DA254  D0 A3 00 E0 */	stfs f5, 0xe0(r3)
/* 802E44D8 002DA258  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 802E44DC 002DA25C  D0 83 00 E4 */	stfs f4, 0xe4(r3)
/* 802E44E0 002DA260  D0 43 00 E8 */	stfs f2, 0xe8(r3)
/* 802E44E4 002DA264  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 802E44E8 002DA268  4E 80 00 20 */	blr 

.global hkMotion$7getMotionStateAndVelocities
hkMotion$7getMotionStateAndVelocities:
/* 802E44EC 002DA26C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802E44F0 002DA270  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 802E44F4 002DA274  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802E44F8 002DA278  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 802E44FC 002DA27C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802E4500 002DA280  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 802E4504 002DA284  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802E4508 002DA288  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 802E450C 002DA28C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802E4510 002DA290  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 802E4514 002DA294  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802E4518 002DA298  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 802E451C 002DA29C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802E4520 002DA2A0  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 802E4524 002DA2A4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802E4528 002DA2A8  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 802E452C 002DA2AC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 802E4530 002DA2B0  D0 04 00 30 */	stfs f0, 0x30(r4)
/* 802E4534 002DA2B4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802E4538 002DA2B8  D0 04 00 34 */	stfs f0, 0x34(r4)
/* 802E453C 002DA2BC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802E4540 002DA2C0  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 802E4544 002DA2C4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802E4548 002DA2C8  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 802E454C 002DA2CC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802E4550 002DA2D0  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 802E4554 002DA2D4  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802E4558 002DA2D8  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 802E455C 002DA2DC  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802E4560 002DA2E0  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 802E4564 002DA2E4  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 802E4568 002DA2E8  D0 04 00 4C */	stfs f0, 0x4c(r4)
/* 802E456C 002DA2EC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 802E4570 002DA2F0  D0 04 00 50 */	stfs f0, 0x50(r4)
/* 802E4574 002DA2F4  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 802E4578 002DA2F8  D0 04 00 54 */	stfs f0, 0x54(r4)
/* 802E457C 002DA2FC  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 802E4580 002DA300  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 802E4584 002DA304  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 802E4588 002DA308  D0 04 00 5C */	stfs f0, 0x5c(r4)
/* 802E458C 002DA30C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 802E4590 002DA310  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 802E4594 002DA314  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 802E4598 002DA318  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 802E459C 002DA31C  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 802E45A0 002DA320  D0 04 00 68 */	stfs f0, 0x68(r4)
/* 802E45A4 002DA324  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 802E45A8 002DA328  D0 04 00 6C */	stfs f0, 0x6c(r4)
/* 802E45AC 002DA32C  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 802E45B0 002DA330  D0 04 00 70 */	stfs f0, 0x70(r4)
/* 802E45B4 002DA334  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 802E45B8 002DA338  D0 04 00 74 */	stfs f0, 0x74(r4)
/* 802E45BC 002DA33C  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 802E45C0 002DA340  D0 04 00 78 */	stfs f0, 0x78(r4)
/* 802E45C4 002DA344  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 802E45C8 002DA348  D0 04 00 7C */	stfs f0, 0x7c(r4)
/* 802E45CC 002DA34C  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 802E45D0 002DA350  D0 04 00 80 */	stfs f0, 0x80(r4)
/* 802E45D4 002DA354  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 802E45D8 002DA358  D0 04 00 84 */	stfs f0, 0x84(r4)
/* 802E45DC 002DA35C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 802E45E0 002DA360  D0 04 00 88 */	stfs f0, 0x88(r4)
/* 802E45E4 002DA364  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 802E45E8 002DA368  D0 04 00 8C */	stfs f0, 0x8c(r4)
/* 802E45EC 002DA36C  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 802E45F0 002DA370  D0 04 00 90 */	stfs f0, 0x90(r4)
/* 802E45F4 002DA374  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 802E45F8 002DA378  D0 04 00 94 */	stfs f0, 0x94(r4)
/* 802E45FC 002DA37C  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 802E4600 002DA380  D0 04 00 98 */	stfs f0, 0x98(r4)
/* 802E4604 002DA384  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 802E4608 002DA388  D0 04 00 9C */	stfs f0, 0x9c(r4)
/* 802E460C 002DA38C  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 802E4610 002DA390  D0 04 00 A0 */	stfs f0, 0xa0(r4)
/* 802E4614 002DA394  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 802E4618 002DA398  D0 04 00 A4 */	stfs f0, 0xa4(r4)
/* 802E461C 002DA39C  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 802E4620 002DA3A0  D0 04 00 A8 */	stfs f0, 0xa8(r4)
/* 802E4624 002DA3A4  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 802E4628 002DA3A8  D0 04 00 AC */	stfs f0, 0xac(r4)
/* 802E462C 002DA3AC  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 802E4630 002DA3B0  D0 04 00 B0 */	stfs f0, 0xb0(r4)
/* 802E4634 002DA3B4  C0 03 00 B4 */	lfs f0, 0xb4(r3)
/* 802E4638 002DA3B8  D0 04 00 B4 */	stfs f0, 0xb4(r4)
/* 802E463C 002DA3BC  C0 03 00 B8 */	lfs f0, 0xb8(r3)
/* 802E4640 002DA3C0  D0 04 00 B8 */	stfs f0, 0xb8(r4)
/* 802E4644 002DA3C4  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 802E4648 002DA3C8  D0 04 00 BC */	stfs f0, 0xbc(r4)
/* 802E464C 002DA3CC  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 802E4650 002DA3D0  D0 04 00 C0 */	stfs f0, 0xc0(r4)
/* 802E4654 002DA3D4  A0 03 00 C4 */	lhz r0, 0xc4(r3)
/* 802E4658 002DA3D8  B0 04 00 C4 */	sth r0, 0xc4(r4)
/* 802E465C 002DA3DC  A0 03 00 C6 */	lhz r0, 0xc6(r3)
/* 802E4660 002DA3E0  B0 04 00 C6 */	sth r0, 0xc6(r4)
/* 802E4664 002DA3E4  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 802E4668 002DA3E8  D0 04 00 E0 */	stfs f0, 0xe0(r4)
/* 802E466C 002DA3EC  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 802E4670 002DA3F0  D0 04 00 E4 */	stfs f0, 0xe4(r4)
/* 802E4674 002DA3F4  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 802E4678 002DA3F8  D0 04 00 E8 */	stfs f0, 0xe8(r4)
/* 802E467C 002DA3FC  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 802E4680 002DA400  D0 04 00 EC */	stfs f0, 0xec(r4)
/* 802E4684 002DA404  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 802E4688 002DA408  D0 04 00 F0 */	stfs f0, 0xf0(r4)
/* 802E468C 002DA40C  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 802E4690 002DA410  D0 04 00 F4 */	stfs f0, 0xf4(r4)
/* 802E4694 002DA414  C0 03 00 F8 */	lfs f0, 0xf8(r3)
/* 802E4698 002DA418  D0 04 00 F8 */	stfs f0, 0xf8(r4)
/* 802E469C 002DA41C  C0 03 00 FC */	lfs f0, 0xfc(r3)
/* 802E46A0 002DA420  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 802E46A4 002DA424  4E 80 00 20 */	blr 

.global hkMotion$7setDeactivationClass
hkMotion$7setDeactivationClass:
/* 802E46A8 002DA428  B0 83 00 C4 */	sth r4, 0xc4(r3)
/* 802E46AC 002DA42C  4E 80 00 20 */	blr 

.global __sinit_$3hkMotionClass_cpp
__sinit_$3hkMotionClass_cpp:
/* 802E46B0 002DA430  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E46B4 002DA434  7C 08 02 A6 */	mflr r0
/* 802E46B8 002DA438  3C C0 80 48 */	lis r6, lbl_80487FB8@ha
/* 802E46BC 002DA43C  3C 60 80 53 */	lis r3, lbl_805330B0@ha
/* 802E46C0 002DA440  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E46C4 002DA444  3C 80 80 41 */	lis r4, lbl_80413100@ha
/* 802E46C8 002DA448  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 802E46CC 002DA44C  3D 20 80 41 */	lis r9, lbl_804130B4@ha
/* 802E46D0 002DA450  80 ED AB D0 */	lwz r7, lbl_8059EFF0-_SDA_BASE_(r13)
/* 802E46D4 002DA454  38 C6 7F B8 */	addi r6, r6, lbl_80487FB8@l
/* 802E46D8 002DA458  38 00 00 05 */	li r0, 5
/* 802E46DC 002DA45C  38 63 30 B0 */	addi r3, r3, lbl_805330B0@l
/* 802E46E0 002DA460  90 C1 00 08 */	stw r6, 8(r1)
/* 802E46E4 002DA464  38 84 31 00 */	addi r4, r4, lbl_80413100@l
/* 802E46E8 002DA468  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 802E46EC 002DA46C  39 29 30 B4 */	addi r9, r9, lbl_804130B4@l
/* 802E46F0 002DA470  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E46F4 002DA474  38 00 00 00 */	li r0, 0
/* 802E46F8 002DA478  39 00 00 00 */	li r8, 0
/* 802E46FC 002DA47C  39 40 00 01 */	li r10, 1
/* 802E4700 002DA480  90 E6 00 08 */	stw r7, 8(r6)
/* 802E4704 002DA484  38 C0 01 00 */	li r6, 0x100
/* 802E4708 002DA488  38 E0 00 00 */	li r7, 0
/* 802E470C 002DA48C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E4710 002DA490  4B F9 80 F9 */	bl hkClass$7__ct
/* 802E4714 002DA494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E4718 002DA498  7C 08 03 A6 */	mtlr r0
/* 802E471C 002DA49C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E4720 002DA4A0  4E 80 00 20 */	blr 


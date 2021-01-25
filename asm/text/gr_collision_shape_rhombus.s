.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global grCollShapeRhombus$7init
grCollShapeRhombus$7init:
/* 80132B64 001288E4  C0 02 97 04 */	lfs f0, lbl_805A2A24-_SDA2_BASE_(r2)
/* 80132B68 001288E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80132B6C 001288EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80132B70 001288F0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80132B74 001288F4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80132B78 001288F8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80132B7C 001288FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80132B80 00128900  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80132B84 00128904  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80132B88 00128908  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80132B8C 0012890C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80132B90 00128910  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80132B94 00128914  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80132B98 00128918  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80132B9C 0012891C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80132BA0 00128920  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7set
grCollShapeRhombus$7set:
/* 80132BA4 00128924  80 A4 00 04 */	lwz r5, 4(r4)
/* 80132BA8 00128928  80 04 00 08 */	lwz r0, 8(r4)
/* 80132BAC 0012892C  90 A3 00 04 */	stw r5, 4(r3)
/* 80132BB0 00128930  90 03 00 08 */	stw r0, 8(r3)
/* 80132BB4 00128934  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 80132BB8 00128938  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80132BBC 0012893C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80132BC0 00128940  90 03 00 10 */	stw r0, 0x10(r3)
/* 80132BC4 00128944  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 80132BC8 00128948  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80132BCC 0012894C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80132BD0 00128950  90 03 00 18 */	stw r0, 0x18(r3)
/* 80132BD4 00128954  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 80132BD8 00128958  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80132BDC 0012895C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80132BE0 00128960  90 03 00 20 */	stw r0, 0x20(r3)
/* 80132BE4 00128964  80 A4 00 24 */	lwz r5, 0x24(r4)
/* 80132BE8 00128968  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80132BEC 0012896C  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80132BF0 00128970  90 03 00 28 */	stw r0, 0x28(r3)
/* 80132BF4 00128974  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 80132BF8 00128978  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80132BFC 0012897C  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 80132C00 00128980  90 03 00 30 */	stw r0, 0x30(r3)
/* 80132C04 00128984  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 80132C08 00128988  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80132C0C 0012898C  90 A3 00 34 */	stw r5, 0x34(r3)
/* 80132C10 00128990  90 03 00 38 */	stw r0, 0x38(r3)
/* 80132C14 00128994  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7move
grCollShapeRhombus$7move:
/* 80132C18 00128998  38 63 00 04 */	addi r3, r3, 4
/* 80132C1C 0012899C  4B F1 08 F0 */	b clRhombus2D$7move

.global grCollShapeRhombus$7setDownPos
grCollShapeRhombus$7setDownPos:
/* 80132C20 001289A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80132C24 001289A4  7C 08 02 A6 */	mflr r0
/* 80132C28 001289A8  C0 22 97 08 */	lfs f1, lbl_805A2A28-_SDA2_BASE_(r2)
/* 80132C2C 001289AC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80132C30 001289B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80132C34 001289B4  EC 61 00 2A */	fadds f3, f1, f0
/* 80132C38 001289B8  C0 44 00 00 */	lfs f2, 0(r4)
/* 80132C3C 001289BC  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80132C40 001289C0  38 81 00 18 */	addi r4, r1, 0x18
/* 80132C44 001289C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80132C48 001289C8  38 63 00 04 */	addi r3, r3, 4
/* 80132C4C 001289CC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80132C50 001289D0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80132C54 001289D4  EC 03 00 28 */	fsubs f0, f3, f0
/* 80132C58 001289D8  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80132C5C 001289DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80132C60 001289E0  80 A1 00 08 */	lwz r5, 8(r1)
/* 80132C64 001289E4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132C68 001289E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80132C6C 001289EC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80132C70 001289F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132C74 001289F4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80132C78 001289F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80132C7C 001289FC  4B F1 08 91 */	bl clRhombus2D$7move
/* 80132C80 00128A00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80132C84 00128A04  7C 08 03 A6 */	mtlr r0
/* 80132C88 00128A08  38 21 00 30 */	addi r1, r1, 0x30
/* 80132C8C 00128A0C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7setRightPos
grCollShapeRhombus$7setRightPos:
/* 80132C90 00128A10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80132C94 00128A14  7C 08 02 A6 */	mflr r0
/* 80132C98 00128A18  C0 24 00 00 */	lfs f1, 0(r4)
/* 80132C9C 00128A1C  C0 02 97 08 */	lfs f0, lbl_805A2A28-_SDA2_BASE_(r2)
/* 80132CA0 00128A20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80132CA4 00128A24  EC 41 00 28 */	fsubs f2, f1, f0
/* 80132CA8 00128A28  C0 64 00 04 */	lfs f3, 4(r4)
/* 80132CAC 00128A2C  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80132CB0 00128A30  38 81 00 18 */	addi r4, r1, 0x18
/* 80132CB4 00128A34  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80132CB8 00128A38  38 63 00 04 */	addi r3, r3, 4
/* 80132CBC 00128A3C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80132CC0 00128A40  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80132CC4 00128A44  EC 03 00 28 */	fsubs f0, f3, f0
/* 80132CC8 00128A48  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80132CCC 00128A4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80132CD0 00128A50  80 A1 00 08 */	lwz r5, 8(r1)
/* 80132CD4 00128A54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132CD8 00128A58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80132CDC 00128A5C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80132CE0 00128A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132CE4 00128A64  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80132CE8 00128A68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80132CEC 00128A6C  4B F1 08 21 */	bl clRhombus2D$7move
/* 80132CF0 00128A70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80132CF4 00128A74  7C 08 03 A6 */	mtlr r0
/* 80132CF8 00128A78  38 21 00 30 */	addi r1, r1, 0x30
/* 80132CFC 00128A7C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7setLeftPos
grCollShapeRhombus$7setLeftPos:
/* 80132D00 00128A80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80132D04 00128A84  7C 08 02 A6 */	mflr r0
/* 80132D08 00128A88  C0 22 97 08 */	lfs f1, lbl_805A2A28-_SDA2_BASE_(r2)
/* 80132D0C 00128A8C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80132D10 00128A90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80132D14 00128A94  EC 41 00 2A */	fadds f2, f1, f0
/* 80132D18 00128A98  C0 64 00 04 */	lfs f3, 4(r4)
/* 80132D1C 00128A9C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80132D20 00128AA0  38 81 00 18 */	addi r4, r1, 0x18
/* 80132D24 00128AA4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80132D28 00128AA8  38 63 00 04 */	addi r3, r3, 4
/* 80132D2C 00128AAC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80132D30 00128AB0  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80132D34 00128AB4  EC 03 00 28 */	fsubs f0, f3, f0
/* 80132D38 00128AB8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80132D3C 00128ABC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80132D40 00128AC0  80 A1 00 08 */	lwz r5, 8(r1)
/* 80132D44 00128AC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132D48 00128AC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80132D4C 00128ACC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80132D50 00128AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132D54 00128AD4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80132D58 00128AD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80132D5C 00128ADC  4B F1 07 B1 */	bl clRhombus2D$7move
/* 80132D60 00128AE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80132D64 00128AE4  7C 08 03 A6 */	mtlr r0
/* 80132D68 00128AE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80132D6C 00128AEC  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7setCenterPos
grCollShapeRhombus$7setCenterPos:
/* 80132D70 00128AF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80132D74 00128AF4  7C 08 02 A6 */	mflr r0
/* 80132D78 00128AF8  C0 24 00 04 */	lfs f1, 4(r4)
/* 80132D7C 00128AFC  C0 02 97 08 */	lfs f0, lbl_805A2A28-_SDA2_BASE_(r2)
/* 80132D80 00128B00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80132D84 00128B04  EC 61 00 28 */	fsubs f3, f1, f0
/* 80132D88 00128B08  C0 44 00 00 */	lfs f2, 0(r4)
/* 80132D8C 00128B0C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80132D90 00128B10  38 81 00 18 */	addi r4, r1, 0x18
/* 80132D94 00128B14  C0 03 00 08 */	lfs f0, 8(r3)
/* 80132D98 00128B18  38 63 00 04 */	addi r3, r3, 4
/* 80132D9C 00128B1C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80132DA0 00128B20  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80132DA4 00128B24  EC 03 00 28 */	fsubs f0, f3, f0
/* 80132DA8 00128B28  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80132DAC 00128B2C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80132DB0 00128B30  80 A1 00 08 */	lwz r5, 8(r1)
/* 80132DB4 00128B34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132DB8 00128B38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80132DBC 00128B3C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80132DC0 00128B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132DC4 00128B44  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80132DC8 00128B48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80132DCC 00128B4C  4B F1 07 41 */	bl clRhombus2D$7move
/* 80132DD0 00128B50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80132DD4 00128B54  7C 08 03 A6 */	mtlr r0
/* 80132DD8 00128B58  38 21 00 30 */	addi r1, r1, 0x30
/* 80132DDC 00128B5C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7setTopPos
grCollShapeRhombus$7setTopPos:
/* 80132DE0 00128B60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80132DE4 00128B64  7C 08 02 A6 */	mflr r0
/* 80132DE8 00128B68  C0 24 00 04 */	lfs f1, 4(r4)
/* 80132DEC 00128B6C  C0 02 97 08 */	lfs f0, lbl_805A2A28-_SDA2_BASE_(r2)
/* 80132DF0 00128B70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80132DF4 00128B74  EC 61 00 28 */	fsubs f3, f1, f0
/* 80132DF8 00128B78  C0 44 00 00 */	lfs f2, 0(r4)
/* 80132DFC 00128B7C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80132E00 00128B80  38 81 00 18 */	addi r4, r1, 0x18
/* 80132E04 00128B84  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80132E08 00128B88  38 63 00 04 */	addi r3, r3, 4
/* 80132E0C 00128B8C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80132E10 00128B90  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80132E14 00128B94  EC 03 00 28 */	fsubs f0, f3, f0
/* 80132E18 00128B98  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80132E1C 00128B9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80132E20 00128BA0  80 A1 00 08 */	lwz r5, 8(r1)
/* 80132E24 00128BA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132E28 00128BA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80132E2C 00128BAC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80132E30 00128BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132E34 00128BB4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80132E38 00128BB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80132E3C 00128BBC  4B F1 06 D1 */	bl clRhombus2D$7move
/* 80132E40 00128BC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80132E44 00128BC4  7C 08 03 A6 */	mtlr r0
/* 80132E48 00128BC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80132E4C 00128BCC  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7setLR
grCollShapeRhombus$7setLR:
/* 80132E50 00128BD0  C0 42 97 08 */	lfs f2, lbl_805A2A28-_SDA2_BASE_(r2)
/* 80132E54 00128BD4  C0 25 00 00 */	lfs f1, 0(r5)
/* 80132E58 00128BD8  C0 06 00 00 */	lfs f0, 0(r6)
/* 80132E5C 00128BDC  C0 84 00 00 */	lfs f4, 0(r4)
/* 80132E60 00128BE0  EC 22 08 2A */	fadds f1, f2, f1
/* 80132E64 00128BE4  C0 64 00 04 */	lfs f3, 4(r4)
/* 80132E68 00128BE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80132E6C 00128BEC  D0 83 00 04 */	stfs f4, 4(r3)
/* 80132E70 00128BF0  D0 63 00 08 */	stfs f3, 8(r3)
/* 80132E74 00128BF4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80132E78 00128BF8  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80132E7C 00128BFC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80132E80 00128C00  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80132E84 00128C04  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 80132E88 00128C08  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 80132E8C 00128C0C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7setLR_3771
grCollShapeRhombus$7setLR_3771:
/* 80132E90 00128C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80132E94 00128C14  7C 08 02 A6 */	mflr r0
/* 80132E98 00128C18  C0 24 00 00 */	lfs f1, 0(r4)
/* 80132E9C 00128C1C  7C A6 2B 78 */	mr r6, r5
/* 80132EA0 00128C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132EA4 00128C24  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80132EA8 00128C28  C0 03 00 04 */	lfs f0, 4(r3)
/* 80132EAC 00128C2C  C0 83 00 24 */	lfs f4, 0x24(r3)
/* 80132EB0 00128C30  EC 40 18 28 */	fsubs f2, f0, f3
/* 80132EB4 00128C34  C0 05 00 00 */	lfs f0, 0(r5)
/* 80132EB8 00128C38  7C 85 23 78 */	mr r5, r4
/* 80132EBC 00128C3C  EC 64 18 28 */	fsubs f3, f4, f3
/* 80132EC0 00128C40  EC 00 08 28 */	fsubs f0, f0, f1
/* 80132EC4 00128C44  38 81 00 08 */	addi r4, r1, 8
/* 80132EC8 00128C48  FC 40 12 10 */	fabs f2, f2
/* 80132ECC 00128C4C  FC 40 10 18 */	frsp f2, f2
/* 80132ED0 00128C50  EC 42 18 24 */	fdivs f2, f2, f3
/* 80132ED4 00128C54  EC 02 00 32 */	fmuls f0, f2, f0
/* 80132ED8 00128C58  EC 01 00 2A */	fadds f0, f1, f0
/* 80132EDC 00128C5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80132EE0 00128C60  C0 03 00 08 */	lfs f0, 8(r3)
/* 80132EE4 00128C64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132EE8 00128C68  81 83 00 00 */	lwz r12, 0(r3)
/* 80132EEC 00128C6C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80132EF0 00128C70  7D 89 03 A6 */	mtctr r12
/* 80132EF4 00128C74  4E 80 04 21 */	bctrl 
/* 80132EF8 00128C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80132EFC 00128C7C  7C 08 03 A6 */	mtlr r0
/* 80132F00 00128C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80132F04 00128C84  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7setUD
grCollShapeRhombus$7setUD:
/* 80132F08 00128C88  C0 25 00 04 */	lfs f1, 4(r5)
/* 80132F0C 00128C8C  C0 42 97 08 */	lfs f2, lbl_805A2A28-_SDA2_BASE_(r2)
/* 80132F10 00128C90  C0 06 00 04 */	lfs f0, 4(r6)
/* 80132F14 00128C94  C0 84 00 00 */	lfs f4, 0(r4)
/* 80132F18 00128C98  EC 21 10 28 */	fsubs f1, f1, f2
/* 80132F1C 00128C9C  C0 64 00 04 */	lfs f3, 4(r4)
/* 80132F20 00128CA0  EC 02 00 2A */	fadds f0, f2, f0
/* 80132F24 00128CA4  D0 83 00 04 */	stfs f4, 4(r3)
/* 80132F28 00128CA8  D0 63 00 08 */	stfs f3, 8(r3)
/* 80132F2C 00128CAC  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 80132F30 00128CB0  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80132F34 00128CB4  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 80132F38 00128CB8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80132F3C 00128CBC  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80132F40 00128CC0  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80132F44 00128CC4  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7modifyDownY
grCollShapeRhombus$7modifyDownY:
/* 80132F48 00128CC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80132F4C 00128CCC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80132F50 00128CD0  4C 81 00 20 */	blelr 
/* 80132F54 00128CD4  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80132F58 00128CD8  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7test
grCollShapeRhombus$7test:
/* 80132F5C 00128CDC  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7updateAABBox
grCollShapeRhombus$7updateAABBox:
/* 80132F60 00128CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80132F64 00128CE4  38 80 00 01 */	li r4, 1
/* 80132F68 00128CE8  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80132F6C 00128CEC  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 80132F70 00128CF0  D0 61 00 08 */	stfs f3, 8(r1)
/* 80132F74 00128CF4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80132F78 00128CF8  80 01 00 08 */	lwz r0, 8(r1)
/* 80132F7C 00128CFC  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80132F80 00128D00  54 00 4E 3E */	rlwinm r0, r0, 9, 0x18, 0x1f
/* 80132F84 00128D04  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 80132F88 00128D08  28 00 00 FF */	cmplwi r0, 0xff
/* 80132F8C 00128D0C  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80132F90 00128D10  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80132F94 00128D14  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80132F98 00128D18  40 82 00 08 */	bne lbl_80132FA0
/* 80132F9C 00128D1C  38 80 00 00 */	li r4, 0
lbl_80132FA0:
/* 80132FA0 00128D20  2C 04 00 00 */	cmpwi r4, 0
/* 80132FA4 00128D24  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80132FA8 00128D28  38 60 00 01 */	li r3, 1
/* 80132FAC 00128D2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132FB0 00128D30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80132FB4 00128D34  54 00 4E 3E */	rlwinm r0, r0, 9, 0x18, 0x1f
/* 80132FB8 00128D38  28 00 00 FF */	cmplwi r0, 0xff
/* 80132FBC 00128D3C  40 82 00 08 */	bne lbl_80132FC4
/* 80132FC0 00128D40  38 60 00 00 */	li r3, 0
lbl_80132FC4:
/* 80132FC4 00128D44  2C 03 00 00 */	cmpwi r3, 0
/* 80132FC8 00128D48  38 21 00 10 */	addi r1, r1, 0x10
/* 80132FCC 00128D4C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getWidth
grCollShapeRhombus$7getWidth:
/* 80132FD0 00128D50  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80132FD4 00128D54  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80132FD8 00128D58  EC 21 00 28 */	fsubs f1, f1, f0
/* 80132FDC 00128D5C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getHeight
grCollShapeRhombus$7getHeight:
/* 80132FE0 00128D60  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80132FE4 00128D64  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80132FE8 00128D68  EC 21 00 28 */	fsubs f1, f1, f0
/* 80132FEC 00128D6C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getTopPos
grCollShapeRhombus$7getTopPos:
/* 80132FF0 00128D70  7C 64 1B 78 */	mr r4, r3
/* 80132FF4 00128D74  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80132FF8 00128D78  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80132FFC 00128D7C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getRightPos
grCollShapeRhombus$7getRightPos:
/* 80133000 00128D80  7C 64 1B 78 */	mr r4, r3
/* 80133004 00128D84  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80133008 00128D88  80 84 00 28 */	lwz r4, 0x28(r4)
/* 8013300C 00128D8C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getLeftPos
grCollShapeRhombus$7getLeftPos:
/* 80133010 00128D90  7C 64 1B 78 */	mr r4, r3
/* 80133014 00128D94  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80133018 00128D98  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8013301C 00128D9C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getDownPos
grCollShapeRhombus$7getDownPos:
/* 80133020 00128DA0  7C 64 1B 78 */	mr r4, r3
/* 80133024 00128DA4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80133028 00128DA8  80 84 00 18 */	lwz r4, 0x18(r4)
/* 8013302C 00128DAC  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getCenterPos
grCollShapeRhombus$7getCenterPos:
/* 80133030 00128DB0  7C 64 1B 78 */	mr r4, r3
/* 80133034 00128DB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80133038 00128DB8  80 84 00 08 */	lwz r4, 8(r4)
/* 8013303C 00128DBC  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getAABBox
grCollShapeRhombus$7getAABBox:
/* 80133040 00128DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133044 00128DC4  38 A0 00 01 */	li r5, 1
/* 80133048 00128DC8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8013304C 00128DCC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80133050 00128DD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80133054 00128DD4  80 01 00 08 */	lwz r0, 8(r1)
/* 80133058 00128DD8  D0 24 00 00 */	stfs f1, 0(r4)
/* 8013305C 00128DDC  54 00 4E 3E */	rlwinm r0, r0, 9, 0x18, 0x1f
/* 80133060 00128DE0  D0 04 00 04 */	stfs f0, 4(r4)
/* 80133064 00128DE4  28 00 00 FF */	cmplwi r0, 0xff
/* 80133068 00128DE8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8013306C 00128DEC  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80133070 00128DF0  D0 24 00 08 */	stfs f1, 8(r4)
/* 80133074 00128DF4  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80133078 00128DF8  40 82 00 08 */	bne lbl_80133080
/* 8013307C 00128DFC  38 A0 00 00 */	li r5, 0
lbl_80133080:
/* 80133080 00128E00  2C 05 00 00 */	cmpwi r5, 0
/* 80133084 00128E04  C0 04 00 08 */	lfs f0, 8(r4)
/* 80133088 00128E08  38 60 00 01 */	li r3, 1
/* 8013308C 00128E0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80133090 00128E10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80133094 00128E14  54 00 4E 3E */	rlwinm r0, r0, 9, 0x18, 0x1f
/* 80133098 00128E18  28 00 00 FF */	cmplwi r0, 0xff
/* 8013309C 00128E1C  40 82 00 08 */	bne lbl_801330A4
/* 801330A0 00128E20  38 60 00 00 */	li r3, 0
lbl_801330A4:
/* 801330A4 00128E24  2C 03 00 00 */	cmpwi r3, 0
/* 801330A8 00128E28  38 21 00 10 */	addi r1, r1, 0x10
/* 801330AC 00128E2C  4E 80 00 20 */	blr 

.global grCollShapeRhombus$7getType
grCollShapeRhombus$7getType:
/* 801330B0 00128E30  38 60 00 02 */	li r3, 2
/* 801330B4 00128E34  4E 80 00 20 */	blr 


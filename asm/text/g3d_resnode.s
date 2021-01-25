.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d7ResNodeCFPQ34nw4r3g3d12Ch$7PatchChrAnmResult
nw4r3g3d7ResNodeCFPQ34nw4r3g3d12Ch$7PatchChrAnmResult:
/* 80192BC8 00188948  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80192BCC 0018894C  7C 08 02 A6 */	mflr r0
/* 80192BD0 00188950  90 01 00 34 */	stw r0, 0x34(r1)
/* 80192BD4 00188954  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80192BD8 00188958  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80192BDC 0018895C  7C 9E 23 78 */	mr r30, r4
/* 80192BE0 00188960  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80192BE4 00188964  83 A3 00 00 */	lwz r29, 0(r3)
/* 80192BE8 00188968  2C 1D 00 00 */	cmpwi r29, 0
/* 80192BEC 0018896C  41 82 01 5C */	beq lbl_80192D48
/* 80192BF0 00188970  83 E4 00 00 */	lwz r31, 0(r4)
/* 80192BF4 00188974  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80192BF8 00188978  41 82 00 58 */	beq lbl_80192C50
/* 80192BFC 0018897C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80192C00 00188980  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80192C04 00188984  41 82 00 1C */	beq lbl_80192C20
/* 80192C08 00188988  C0 02 9E 80 */	lfs f0, lbl_805A31A0-_SDA2_BASE_(r2)
/* 80192C0C 0018898C  63 FF 00 18 */	ori r31, r31, 0x18
/* 80192C10 00188990  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80192C14 00188994  D0 04 00 08 */	stfs f0, 8(r4)
/* 80192C18 00188998  D0 04 00 04 */	stfs f0, 4(r4)
/* 80192C1C 0018899C  48 00 00 34 */	b lbl_80192C50
lbl_80192C20:
/* 80192C20 001889A0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80192C24 001889A4  57 E3 07 34 */	rlwinm r3, r31, 0, 0x1c, 0x1a
/* 80192C28 001889A8  41 82 00 08 */	beq lbl_80192C30
/* 80192C2C 001889AC  63 E3 00 10 */	ori r3, r31, 0x10
lbl_80192C30:
/* 80192C30 001889B0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80192C34 001889B4  38 00 FF F5 */	li r0, -11
/* 80192C38 001889B8  7C 7F 00 38 */	and r31, r3, r0
/* 80192C3C 001889BC  D0 04 00 04 */	stfs f0, 4(r4)
/* 80192C40 001889C0  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80192C44 001889C4  D0 04 00 08 */	stfs f0, 8(r4)
/* 80192C48 001889C8  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80192C4C 001889CC  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_80192C50:
/* 80192C50 001889D0  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80192C54 001889D4  41 82 00 80 */	beq lbl_80192CD4
/* 80192C58 001889D8  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80192C5C 001889DC  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 80192C60 001889E0  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 80192C64 001889E4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80192C68 001889E8  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80192C6C 001889EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80192C70 001889F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80192C74 001889F4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80192C78 001889F8  41 82 00 14 */	beq lbl_80192C8C
/* 80192C7C 001889FC  38 64 00 1C */	addi r3, r4, 0x1c
/* 80192C80 00188A00  48 05 94 D9 */	bl PSMTXIdentity
/* 80192C84 00188A04  63 FF 00 20 */	ori r31, r31, 0x20
/* 80192C88 00188A08  48 00 00 30 */	b lbl_80192CB8
lbl_80192C8C:
/* 80192C8C 00188A0C  C0 7D 00 34 */	lfs f3, 0x34(r29)
/* 80192C90 00188A10  38 64 00 1C */	addi r3, r4, 0x1c
/* 80192C94 00188A14  C0 02 9E 84 */	lfs f0, lbl_805A31A4-_SDA2_BASE_(r2)
/* 80192C98 00188A18  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 80192C9C 00188A1C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80192CA0 00188A20  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80192CA4 00188A24  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80192CA8 00188A28  EC 20 00 72 */	fmuls f1, f0, f1
/* 80192CAC 00188A2C  4B FC FD 01 */	bl nw4r4mathFPQ34nw4r4math5$7MTX34RotXYZFIdx
/* 80192CB0 00188A30  38 00 FF D9 */	li r0, -39
/* 80192CB4 00188A34  7F FF 00 38 */	and r31, r31, r0
lbl_80192CB8:
/* 80192CB8 00188A38  C0 41 00 08 */	lfs f2, 8(r1)
/* 80192CBC 00188A3C  67 FF 80 00 */	oris r31, r31, 0x8000
/* 80192CC0 00188A40  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80192CC4 00188A44  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80192CC8 00188A48  D0 5E 00 28 */	stfs f2, 0x28(r30)
/* 80192CCC 00188A4C  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 80192CD0 00188A50  D0 1E 00 48 */	stfs f0, 0x48(r30)
lbl_80192CD4:
/* 80192CD4 00188A54  57 E0 05 AD */	rlwinm. r0, r31, 0, 0x16, 0x16
/* 80192CD8 00188A58  41 82 00 48 */	beq lbl_80192D20
/* 80192CDC 00188A5C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80192CE0 00188A60  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80192CE4 00188A64  41 82 00 1C */	beq lbl_80192D00
/* 80192CE8 00188A68  C0 02 9E 88 */	lfs f0, lbl_805A31A8-_SDA2_BASE_(r2)
/* 80192CEC 00188A6C  63 FF 00 40 */	ori r31, r31, 0x40
/* 80192CF0 00188A70  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80192CF4 00188A74  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80192CF8 00188A78  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80192CFC 00188A7C  48 00 00 24 */	b lbl_80192D20
lbl_80192D00:
/* 80192D00 00188A80  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80192D04 00188A84  38 00 FF B9 */	li r0, -71
/* 80192D08 00188A88  7F FF 00 38 */	and r31, r31, r0
/* 80192D0C 00188A8C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80192D10 00188A90  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80192D14 00188A94  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80192D18 00188A98  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80192D1C 00188A9C  D0 1E 00 48 */	stfs f0, 0x48(r30)
lbl_80192D20:
/* 80192D20 00188AA0  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80192D24 00188AA4  41 82 00 1C */	beq lbl_80192D40
/* 80192D28 00188AA8  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80192D2C 00188AAC  41 82 00 14 */	beq lbl_80192D40
/* 80192D30 00188AB0  63 FF 00 04 */	ori r31, r31, 4
/* 80192D34 00188AB4  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80192D38 00188AB8  41 82 00 08 */	beq lbl_80192D40
/* 80192D3C 00188ABC  63 FF 00 02 */	ori r31, r31, 2
lbl_80192D40:
/* 80192D40 00188AC0  57 E0 06 6A */	rlwinm r0, r31, 0, 0x19, 0x15
/* 80192D44 00188AC4  90 1E 00 00 */	stw r0, 0(r30)
lbl_80192D48:
/* 80192D48 00188AC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80192D4C 00188ACC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80192D50 00188AD0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80192D54 00188AD4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80192D58 00188AD8  7C 08 03 A6 */	mtlr r0
/* 80192D5C 00188ADC  38 21 00 30 */	addi r1, r1, 0x30
/* 80192D60 00188AE0  4E 80 00 20 */	blr 

.global nw4r3g3d7ResNodeCFPQ34nw4r3g3d12Ch$7CalcChrAnmResult
nw4r3g3d7ResNodeCFPQ34nw4r3g3d12Ch$7CalcChrAnmResult:
/* 80192D64 00188AE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80192D68 00188AE8  7C 08 02 A6 */	mflr r0
/* 80192D6C 00188AEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80192D70 00188AF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80192D74 00188AF4  83 E3 00 00 */	lwz r31, 0(r3)
/* 80192D78 00188AF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80192D7C 00188AFC  2C 1F 00 00 */	cmpwi r31, 0
/* 80192D80 00188B00  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80192D84 00188B04  7C 9D 23 78 */	mr r29, r4
/* 80192D88 00188B08  41 82 01 28 */	beq lbl_80192EB0
/* 80192D8C 00188B0C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80192D90 00188B10  3B C0 00 00 */	li r30, 0
/* 80192D94 00188B14  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80192D98 00188B18  41 82 00 1C */	beq lbl_80192DB4
/* 80192D9C 00188B1C  C0 02 9E 80 */	lfs f0, lbl_805A31A0-_SDA2_BASE_(r2)
/* 80192DA0 00188B20  63 DE 00 18 */	ori r30, r30, 0x18
/* 80192DA4 00188B24  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80192DA8 00188B28  D0 04 00 08 */	stfs f0, 8(r4)
/* 80192DAC 00188B2C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80192DB0 00188B30  48 00 00 28 */	b lbl_80192DD8
lbl_80192DB4:
/* 80192DB4 00188B34  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80192DB8 00188B38  41 82 00 08 */	beq lbl_80192DC0
/* 80192DBC 00188B3C  63 DE 00 10 */	ori r30, r30, 0x10
lbl_80192DC0:
/* 80192DC0 00188B40  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80192DC4 00188B44  D0 04 00 04 */	stfs f0, 4(r4)
/* 80192DC8 00188B48  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80192DCC 00188B4C  D0 04 00 08 */	stfs f0, 8(r4)
/* 80192DD0 00188B50  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80192DD4 00188B54  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_80192DD8:
/* 80192DD8 00188B58  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80192DDC 00188B5C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80192DE0 00188B60  41 82 00 14 */	beq lbl_80192DF4
/* 80192DE4 00188B64  38 64 00 1C */	addi r3, r4, 0x1c
/* 80192DE8 00188B68  48 05 93 71 */	bl PSMTXIdentity
/* 80192DEC 00188B6C  63 DE 00 20 */	ori r30, r30, 0x20
/* 80192DF0 00188B70  48 00 00 4C */	b lbl_80192E3C
lbl_80192DF4:
/* 80192DF4 00188B74  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80192DF8 00188B78  38 64 00 1C */	addi r3, r4, 0x1c
/* 80192DFC 00188B7C  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 80192E00 00188B80  C0 9F 00 34 */	lfs f4, 0x34(r31)
/* 80192E04 00188B84  C0 02 9E 84 */	lfs f0, lbl_805A31A4-_SDA2_BASE_(r2)
/* 80192E08 00188B88  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 80192E0C 00188B8C  D0 A4 00 14 */	stfs f5, 0x14(r4)
/* 80192E10 00188B90  D0 84 00 18 */	stfs f4, 0x18(r4)
/* 80192E14 00188B94  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80192E18 00188B98  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80192E1C 00188B9C  C0 DF 00 2C */	lfs f6, 0x2c(r31)
/* 80192E20 00188BA0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80192E24 00188BA4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80192E28 00188BA8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80192E2C 00188BAC  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80192E30 00188BB0  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80192E34 00188BB4  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80192E38 00188BB8  4B FC FB 75 */	bl nw4r4mathFPQ34nw4r4math5$7MTX34RotXYZFIdx
lbl_80192E3C:
/* 80192E3C 00188BBC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80192E40 00188BC0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80192E44 00188BC4  41 82 00 0C */	beq lbl_80192E50
/* 80192E48 00188BC8  63 DE 00 40 */	ori r30, r30, 0x40
/* 80192E4C 00188BCC  48 00 00 1C */	b lbl_80192E68
lbl_80192E50:
/* 80192E50 00188BD0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80192E54 00188BD4  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80192E58 00188BD8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80192E5C 00188BDC  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80192E60 00188BE0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80192E64 00188BE4  D0 1D 00 48 */	stfs f0, 0x48(r29)
lbl_80192E68:
/* 80192E68 00188BE8  57 C0 06 B5 */	rlwinm. r0, r30, 0, 0x1a, 0x1a
/* 80192E6C 00188BEC  41 82 00 1C */	beq lbl_80192E88
/* 80192E70 00188BF0  57 C0 06 73 */	rlwinm. r0, r30, 0, 0x19, 0x19
/* 80192E74 00188BF4  41 82 00 14 */	beq lbl_80192E88
/* 80192E78 00188BF8  63 DE 00 04 */	ori r30, r30, 4
/* 80192E7C 00188BFC  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 80192E80 00188C00  41 82 00 08 */	beq lbl_80192E88
/* 80192E84 00188C04  63 DE 00 02 */	ori r30, r30, 2
lbl_80192E88:
/* 80192E88 00188C08  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80192E8C 00188C0C  67 DE 80 00 */	oris r30, r30, 0x8000
/* 80192E90 00188C10  63 DE 00 01 */	ori r30, r30, 1
/* 80192E94 00188C14  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80192E98 00188C18  41 82 00 08 */	beq lbl_80192EA0
/* 80192E9C 00188C1C  63 DE 04 00 */	ori r30, r30, 0x400
lbl_80192EA0:
/* 80192EA0 00188C20  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80192EA4 00188C24  41 82 00 08 */	beq lbl_80192EAC
/* 80192EA8 00188C28  63 DE 08 00 */	ori r30, r30, 0x800
lbl_80192EAC:
/* 80192EAC 00188C2C  93 DD 00 00 */	stw r30, 0(r29)
lbl_80192EB0:
/* 80192EB0 00188C30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80192EB4 00188C34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80192EB8 00188C38  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80192EBC 00188C3C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80192EC0 00188C40  7C 08 03 A6 */	mtlr r0
/* 80192EC4 00188C44  38 21 00 30 */	addi r1, r1, 0x30
/* 80192EC8 00188C48  4E 80 00 20 */	blr 

.global nw4r3g3d7ResNodeFfff$7SetScale
nw4r3g3d7ResNodeFfff$7SetScale:
/* 80192ECC 00188C4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80192ED0 00188C50  2C 03 00 00 */	cmpwi r3, 0
/* 80192ED4 00188C54  4D 82 00 20 */	beqlr 
/* 80192ED8 00188C58  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80192EDC 00188C5C  40 82 00 44 */	bne lbl_80192F20
/* 80192EE0 00188C60  FC 02 18 00 */	fcmpu cr0, f2, f3
/* 80192EE4 00188C64  40 82 00 3C */	bne lbl_80192F20
/* 80192EE8 00188C68  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192EEC 00188C6C  C0 02 9E 80 */	lfs f0, lbl_805A31A0-_SDA2_BASE_(r2)
/* 80192EF0 00188C70  60 00 00 10 */	ori r0, r0, 0x10
/* 80192EF4 00188C74  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80192EF8 00188C78  90 03 00 14 */	stw r0, 0x14(r3)
/* 80192EFC 00188C7C  40 82 00 14 */	bne lbl_80192F10
/* 80192F00 00188C80  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192F04 00188C84  60 00 00 08 */	ori r0, r0, 8
/* 80192F08 00188C88  90 03 00 14 */	stw r0, 0x14(r3)
/* 80192F0C 00188C8C  48 00 00 20 */	b lbl_80192F2C
lbl_80192F10:
/* 80192F10 00188C90  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192F14 00188C94  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80192F18 00188C98  90 03 00 14 */	stw r0, 0x14(r3)
/* 80192F1C 00188C9C  48 00 00 10 */	b lbl_80192F2C
lbl_80192F20:
/* 80192F20 00188CA0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192F24 00188CA4  54 00 07 74 */	rlwinm r0, r0, 0, 0x1d, 0x1a
/* 80192F28 00188CA8  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80192F2C:
/* 80192F2C 00188CAC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80192F30 00188CB0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80192F34 00188CB4  41 82 00 20 */	beq lbl_80192F54
/* 80192F38 00188CB8  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80192F3C 00188CBC  41 82 00 18 */	beq lbl_80192F54
/* 80192F40 00188CC0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80192F44 00188CC4  41 82 00 10 */	beq lbl_80192F54
/* 80192F48 00188CC8  60 80 00 01 */	ori r0, r4, 1
/* 80192F4C 00188CCC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80192F50 00188CD0  48 00 00 10 */	b lbl_80192F60
lbl_80192F54:
/* 80192F54 00188CD4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192F58 00188CD8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80192F5C 00188CDC  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80192F60:
/* 80192F60 00188CE0  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80192F64 00188CE4  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80192F68 00188CE8  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80192F6C 00188CEC  4E 80 00 20 */	blr 

.global nw4r3g3d7ResNodeFfff$7SetTranslate
nw4r3g3d7ResNodeFfff$7SetTranslate:
/* 80192F70 00188CF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80192F74 00188CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80192F78 00188CF8  4D 82 00 20 */	beqlr 
/* 80192F7C 00188CFC  C0 02 9E 88 */	lfs f0, lbl_805A31A8-_SDA2_BASE_(r2)
/* 80192F80 00188D00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80192F84 00188D04  40 82 00 24 */	bne lbl_80192FA8
/* 80192F88 00188D08  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80192F8C 00188D0C  40 82 00 1C */	bne lbl_80192FA8
/* 80192F90 00188D10  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80192F94 00188D14  40 82 00 14 */	bne lbl_80192FA8
/* 80192F98 00188D18  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192F9C 00188D1C  60 00 00 02 */	ori r0, r0, 2
/* 80192FA0 00188D20  90 03 00 14 */	stw r0, 0x14(r3)
/* 80192FA4 00188D24  48 00 00 10 */	b lbl_80192FB4
lbl_80192FA8:
/* 80192FA8 00188D28  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192FAC 00188D2C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80192FB0 00188D30  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80192FB4:
/* 80192FB4 00188D34  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80192FB8 00188D38  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80192FBC 00188D3C  41 82 00 20 */	beq lbl_80192FDC
/* 80192FC0 00188D40  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80192FC4 00188D44  41 82 00 18 */	beq lbl_80192FDC
/* 80192FC8 00188D48  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80192FCC 00188D4C  41 82 00 10 */	beq lbl_80192FDC
/* 80192FD0 00188D50  60 80 00 01 */	ori r0, r4, 1
/* 80192FD4 00188D54  90 03 00 14 */	stw r0, 0x14(r3)
/* 80192FD8 00188D58  48 00 00 10 */	b lbl_80192FE8
lbl_80192FDC:
/* 80192FDC 00188D5C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80192FE0 00188D60  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80192FE4 00188D64  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80192FE8:
/* 80192FE8 00188D68  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80192FEC 00188D6C  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80192FF0 00188D70  D0 63 00 40 */	stfs f3, 0x40(r3)
/* 80192FF4 00188D74  4E 80 00 20 */	blr 

.global nw4r3g3d7ResNodeFfff$7SetRotate
nw4r3g3d7ResNodeFfff$7SetRotate:
/* 80192FF8 00188D78  80 63 00 00 */	lwz r3, 0(r3)
/* 80192FFC 00188D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80193000 00188D80  4D 82 00 20 */	beqlr 
/* 80193004 00188D84  C0 02 9E 88 */	lfs f0, lbl_805A31A8-_SDA2_BASE_(r2)
/* 80193008 00188D88  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8019300C 00188D8C  40 82 00 24 */	bne lbl_80193030
/* 80193010 00188D90  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80193014 00188D94  40 82 00 1C */	bne lbl_80193030
/* 80193018 00188D98  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 8019301C 00188D9C  40 82 00 14 */	bne lbl_80193030
/* 80193020 00188DA0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80193024 00188DA4  60 00 00 04 */	ori r0, r0, 4
/* 80193028 00188DA8  90 03 00 14 */	stw r0, 0x14(r3)
/* 8019302C 00188DAC  48 00 00 10 */	b lbl_8019303C
lbl_80193030:
/* 80193030 00188DB0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80193034 00188DB4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80193038 00188DB8  90 03 00 14 */	stw r0, 0x14(r3)
lbl_8019303C:
/* 8019303C 00188DBC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80193040 00188DC0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80193044 00188DC4  41 82 00 20 */	beq lbl_80193064
/* 80193048 00188DC8  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8019304C 00188DCC  41 82 00 18 */	beq lbl_80193064
/* 80193050 00188DD0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80193054 00188DD4  41 82 00 10 */	beq lbl_80193064
/* 80193058 00188DD8  60 80 00 01 */	ori r0, r4, 1
/* 8019305C 00188DDC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80193060 00188DE0  48 00 00 10 */	b lbl_80193070
lbl_80193064:
/* 80193064 00188DE4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80193068 00188DE8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8019306C 00188DEC  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80193070:
/* 80193070 00188DF0  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80193074 00188DF4  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80193078 00188DF8  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 8019307C 00188DFC  4E 80 00 20 */	blr 

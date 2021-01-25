.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkWorldCinfo
finishLoadedObjecthkWorldCinfo:
/* 802F004C 002E5DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0050 002E5DD0  7C 08 02 A6 */	mflr r0
/* 802F0054 002E5DD4  2C 03 00 00 */	cmpwi r3, 0
/* 802F0058 002E5DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F005C 002E5DDC  38 00 00 01 */	li r0, 1
/* 802F0060 002E5DE0  41 82 00 10 */	beq lbl_802F0070
/* 802F0064 002E5DE4  90 01 00 08 */	stw r0, 8(r1)
/* 802F0068 002E5DE8  38 81 00 08 */	addi r4, r1, 8
/* 802F006C 002E5DEC  48 00 02 B1 */	bl hkWorldCinfo$7__ct_10898
lbl_802F0070:
/* 802F0070 002E5DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0074 002E5DF4  7C 08 03 A6 */	mtlr r0
/* 802F0078 002E5DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F007C 002E5DFC  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkWorldCinfo
cleanupLoadedObjecthkWorldCinfo:
/* 802F0080 002E5E00  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0084 002E5E04  38 80 FF FF */	li r4, -1
/* 802F0088 002E5E08  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F008C 002E5E0C  7D 89 03 A6 */	mtctr r12
/* 802F0090 002E5E10  4E 80 04 20 */	bctr 

.global getVtablehkWorldCinfo
getVtablehkWorldCinfo:
/* 802F0094 002E5E14  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802F0098 002E5E18  7C 2C 0B 78 */	mr r12, r1
/* 802F009C 002E5E1C  21 6B FF 40 */	subfic r11, r11, -192
/* 802F00A0 002E5E20  7C 21 59 6E */	stwux r1, r1, r11
/* 802F00A4 002E5E24  7C 08 02 A6 */	mflr r0
/* 802F00A8 002E5E28  34 61 00 20 */	addic. r3, r1, 0x20
/* 802F00AC 002E5E2C  90 0C 00 04 */	stw r0, 4(r12)
/* 802F00B0 002E5E30  38 00 00 00 */	li r0, 0
/* 802F00B4 002E5E34  41 82 00 10 */	beq lbl_802F00C4
/* 802F00B8 002E5E38  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F00BC 002E5E3C  38 81 00 10 */	addi r4, r1, 0x10
/* 802F00C0 002E5E40  48 00 02 5D */	bl hkWorldCinfo$7__ct_10898
lbl_802F00C4:
/* 802F00C4 002E5E44  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802F00C8 002E5E48  81 41 00 00 */	lwz r10, 0(r1)
/* 802F00CC 002E5E4C  80 0A 00 04 */	lwz r0, 4(r10)
/* 802F00D0 002E5E50  7C 08 03 A6 */	mtlr r0
/* 802F00D4 002E5E54  7D 41 53 78 */	mr r1, r10
/* 802F00D8 002E5E58  4E 80 00 20 */	blr 

.global hkWorldCinfo$7__ct
hkWorldCinfo$7__ct:
/* 802F00DC 002E5E5C  C1 82 B1 68 */	lfs f12, lbl_805A4488-_SDA2_BASE_(r2)
/* 802F00E0 002E5E60  3D 00 80 49 */	lis r8, lbl_804883B8@ha
/* 802F00E4 002E5E64  39 20 00 01 */	li r9, 1
/* 802F00E8 002E5E68  38 C0 00 00 */	li r6, 0
/* 802F00EC 002E5E6C  C1 42 B1 70 */	lfs f10, lbl_805A4490-_SDA2_BASE_(r2)
/* 802F00F0 002E5E70  38 00 00 02 */	li r0, 2
/* 802F00F4 002E5E74  C1 22 B1 74 */	lfs f9, lbl_805A4494-_SDA2_BASE_(r2)
/* 802F00F8 002E5E78  39 08 83 B8 */	addi r8, r8, lbl_804883B8@l
/* 802F00FC 002E5E7C  C0 E2 B1 7C */	lfs f7, lbl_805A449C-_SDA2_BASE_(r2)
/* 802F0100 002E5E80  38 E0 04 00 */	li r7, 0x400
/* 802F0104 002E5E84  C0 A2 B1 84 */	lfs f5, lbl_805A44A4-_SDA2_BASE_(r2)
/* 802F0108 002E5E88  38 A0 00 04 */	li r5, 4
/* 802F010C 002E5E8C  C1 62 B1 6C */	lfs f11, lbl_805A448C-_SDA2_BASE_(r2)
/* 802F0110 002E5E90  38 80 00 14 */	li r4, 0x14
/* 802F0114 002E5E94  C1 02 B1 78 */	lfs f8, lbl_805A4498-_SDA2_BASE_(r2)
/* 802F0118 002E5E98  C0 C2 B1 80 */	lfs f6, lbl_805A44A0-_SDA2_BASE_(r2)
/* 802F011C 002E5E9C  C0 82 B1 88 */	lfs f4, lbl_805A44A8-_SDA2_BASE_(r2)
/* 802F0120 002E5EA0  C0 62 B1 8C */	lfs f3, lbl_805A44AC-_SDA2_BASE_(r2)
/* 802F0124 002E5EA4  C0 42 B1 90 */	lfs f2, lbl_805A44B0-_SDA2_BASE_(r2)
/* 802F0128 002E5EA8  C0 22 B1 94 */	lfs f1, lbl_805A44B4-_SDA2_BASE_(r2)
/* 802F012C 002E5EAC  C0 02 B1 98 */	lfs f0, lbl_805A44B8-_SDA2_BASE_(r2)
/* 802F0130 002E5EB0  B1 23 00 06 */	sth r9, 6(r3)
/* 802F0134 002E5EB4  91 03 00 00 */	stw r8, 0(r3)
/* 802F0138 002E5EB8  D1 83 00 10 */	stfs f12, 0x10(r3)
/* 802F013C 002E5EBC  D1 63 00 14 */	stfs f11, 0x14(r3)
/* 802F0140 002E5EC0  D1 83 00 18 */	stfs f12, 0x18(r3)
/* 802F0144 002E5EC4  D1 83 00 1C */	stfs f12, 0x1c(r3)
/* 802F0148 002E5EC8  99 23 00 96 */	stb r9, 0x96(r3)
/* 802F014C 002E5ECC  90 E3 00 20 */	stw r7, 0x20(r3)
/* 802F0150 002E5ED0  D1 43 00 30 */	stfs f10, 0x30(r3)
/* 802F0154 002E5ED4  D1 43 00 34 */	stfs f10, 0x34(r3)
/* 802F0158 002E5ED8  D1 43 00 38 */	stfs f10, 0x38(r3)
/* 802F015C 002E5EDC  D1 83 00 3C */	stfs f12, 0x3c(r3)
/* 802F0160 002E5EE0  D1 23 00 40 */	stfs f9, 0x40(r3)
/* 802F0164 002E5EE4  D1 23 00 44 */	stfs f9, 0x44(r3)
/* 802F0168 002E5EE8  D1 23 00 48 */	stfs f9, 0x48(r3)
/* 802F016C 002E5EEC  D1 83 00 4C */	stfs f12, 0x4c(r3)
/* 802F0170 002E5EF0  90 C3 00 54 */	stw r6, 0x54(r3)
/* 802F0174 002E5EF4  90 C3 00 64 */	stw r6, 0x64(r3)
/* 802F0178 002E5EF8  D1 03 00 6C */	stfs f8, 0x6c(r3)
/* 802F017C 002E5EFC  D0 E3 00 70 */	stfs f7, 0x70(r3)
/* 802F0180 002E5F00  D0 C3 00 24 */	stfs f6, 0x24(r3)
/* 802F0184 002E5F04  90 A3 00 74 */	stw r5, 0x74(r3)
/* 802F0188 002E5F08  91 23 00 78 */	stw r9, 0x78(r3)
/* 802F018C 002E5F0C  D0 A3 00 50 */	stfs f5, 0x50(r3)
/* 802F0190 002E5F10  98 C3 00 28 */	stb r6, 0x28(r3)
/* 802F0194 002E5F14  D0 83 00 90 */	stfs f4, 0x90(r3)
/* 802F0198 002E5F18  D0 63 00 58 */	stfs f3, 0x58(r3)
/* 802F019C 002E5F1C  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 802F01A0 002E5F20  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 802F01A4 002E5F24  90 83 00 80 */	stw r4, 0x80(r3)
/* 802F01A8 002E5F28  99 23 00 94 */	stb r9, 0x94(r3)
/* 802F01AC 002E5F2C  99 23 00 8C */	stb r9, 0x8c(r3)
/* 802F01B0 002E5F30  D0 A3 00 84 */	stfs f5, 0x84(r3)
/* 802F01B4 002E5F34  D0 E3 00 88 */	stfs f7, 0x88(r3)
/* 802F01B8 002E5F38  98 03 00 68 */	stb r0, 0x68(r3)
/* 802F01BC 002E5F3C  98 03 00 95 */	stb r0, 0x95(r3)
/* 802F01C0 002E5F40  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 802F01C4 002E5F44  90 C3 00 60 */	stw r6, 0x60(r3)
/* 802F01C8 002E5F48  4E 80 00 20 */	blr 

.global hkWorldCinfo$7setBroadPhaseWorldSize
hkWorldCinfo$7setBroadPhaseWorldSize:
/* 802F01CC 002E5F4C  C0 42 B1 9C */	lfs f2, lbl_805A44BC-_SDA2_BASE_(r2)
/* 802F01D0 002E5F50  C0 02 B1 A0 */	lfs f0, lbl_805A44C0-_SDA2_BASE_(r2)
/* 802F01D4 002E5F54  EC 42 00 72 */	fmuls f2, f2, f1
/* 802F01D8 002E5F58  EC 00 00 72 */	fmuls f0, f0, f1
/* 802F01DC 002E5F5C  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 802F01E0 002E5F60  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 802F01E4 002E5F64  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 802F01E8 002E5F68  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 802F01EC 002E5F6C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 802F01F0 002E5F70  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802F01F4 002E5F74  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802F01F8 002E5F78  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802F01FC 002E5F7C  4E 80 00 20 */	blr 

.global hkWorldCinfo$7setupSolverInfo
hkWorldCinfo$7setupSolverInfo:
/* 802F0200 002E5F80  28 04 00 09 */	cmplwi r4, 9
/* 802F0204 002E5F84  4D 81 00 20 */	bgtlr 
/* 802F0208 002E5F88  3C A0 80 49 */	lis r5, lbl_80488390@ha
/* 802F020C 002E5F8C  54 80 10 3A */	slwi r0, r4, 2
/* 802F0210 002E5F90  38 A5 83 90 */	addi r5, r5, lbl_80488390@l
/* 802F0214 002E5F94  7C A5 00 2E */	lwzx r5, r5, r0
/* 802F0218 002E5F98  7C A9 03 A6 */	mtctr r5
/* 802F021C 002E5F9C  4E 80 04 20 */	bctr 
/* 802F0220 002E5FA0  C0 22 B1 A4 */	lfs f1, lbl_805A44C4-_SDA2_BASE_(r2)
/* 802F0224 002E5FA4  38 00 00 02 */	li r0, 2
/* 802F0228 002E5FA8  C0 02 B1 A8 */	lfs f0, lbl_805A44C8-_SDA2_BASE_(r2)
/* 802F022C 002E5FAC  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F0230 002E5FB0  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F0234 002E5FB4  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F0238 002E5FB8  4E 80 00 20 */	blr 
/* 802F023C 002E5FBC  C0 22 B1 78 */	lfs f1, lbl_805A4498-_SDA2_BASE_(r2)
/* 802F0240 002E5FC0  38 00 00 02 */	li r0, 2
/* 802F0244 002E5FC4  C0 02 B1 7C */	lfs f0, lbl_805A449C-_SDA2_BASE_(r2)
/* 802F0248 002E5FC8  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F024C 002E5FCC  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F0250 002E5FD0  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F0254 002E5FD4  4E 80 00 20 */	blr 
/* 802F0258 002E5FD8  C0 22 B1 A8 */	lfs f1, lbl_805A44C8-_SDA2_BASE_(r2)
/* 802F025C 002E5FDC  38 00 00 02 */	li r0, 2
/* 802F0260 002E5FE0  C0 02 B1 AC */	lfs f0, lbl_805A44CC-_SDA2_BASE_(r2)
/* 802F0264 002E5FE4  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F0268 002E5FE8  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F026C 002E5FEC  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F0270 002E5FF0  4E 80 00 20 */	blr 
/* 802F0274 002E5FF4  C0 22 B1 A4 */	lfs f1, lbl_805A44C4-_SDA2_BASE_(r2)
/* 802F0278 002E5FF8  38 00 00 04 */	li r0, 4
/* 802F027C 002E5FFC  C0 02 B1 A8 */	lfs f0, lbl_805A44C8-_SDA2_BASE_(r2)
/* 802F0280 002E6000  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F0284 002E6004  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F0288 002E6008  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F028C 002E600C  4E 80 00 20 */	blr 
/* 802F0290 002E6010  C0 22 B1 78 */	lfs f1, lbl_805A4498-_SDA2_BASE_(r2)
/* 802F0294 002E6014  38 00 00 04 */	li r0, 4
/* 802F0298 002E6018  C0 02 B1 7C */	lfs f0, lbl_805A449C-_SDA2_BASE_(r2)
/* 802F029C 002E601C  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F02A0 002E6020  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F02A4 002E6024  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F02A8 002E6028  4E 80 00 20 */	blr 
/* 802F02AC 002E602C  C0 22 B1 A8 */	lfs f1, lbl_805A44C8-_SDA2_BASE_(r2)
/* 802F02B0 002E6030  38 00 00 04 */	li r0, 4
/* 802F02B4 002E6034  C0 02 B1 AC */	lfs f0, lbl_805A44CC-_SDA2_BASE_(r2)
/* 802F02B8 002E6038  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F02BC 002E603C  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F02C0 002E6040  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F02C4 002E6044  4E 80 00 20 */	blr 
/* 802F02C8 002E6048  C0 22 B1 A4 */	lfs f1, lbl_805A44C4-_SDA2_BASE_(r2)
/* 802F02CC 002E604C  38 00 00 08 */	li r0, 8
/* 802F02D0 002E6050  C0 02 B1 A8 */	lfs f0, lbl_805A44C8-_SDA2_BASE_(r2)
/* 802F02D4 002E6054  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F02D8 002E6058  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F02DC 002E605C  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F02E0 002E6060  4E 80 00 20 */	blr 
/* 802F02E4 002E6064  C0 22 B1 78 */	lfs f1, lbl_805A4498-_SDA2_BASE_(r2)
/* 802F02E8 002E6068  38 00 00 08 */	li r0, 8
/* 802F02EC 002E606C  C0 02 B1 7C */	lfs f0, lbl_805A449C-_SDA2_BASE_(r2)
/* 802F02F0 002E6070  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F02F4 002E6074  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F02F8 002E6078  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F02FC 002E607C  4E 80 00 20 */	blr 
/* 802F0300 002E6080  C0 22 B1 A8 */	lfs f1, lbl_805A44C8-_SDA2_BASE_(r2)
/* 802F0304 002E6084  38 00 00 08 */	li r0, 8
/* 802F0308 002E6088  C0 02 B1 AC */	lfs f0, lbl_805A44CC-_SDA2_BASE_(r2)
/* 802F030C 002E608C  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 802F0310 002E6090  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 802F0314 002E6094  90 03 00 74 */	stw r0, 0x74(r3)
/* 802F0318 002E6098  4E 80 00 20 */	blr 

.global hkWorldCinfo$7__ct_10898
hkWorldCinfo$7__ct_10898:
/* 802F031C 002E609C  80 04 00 00 */	lwz r0, 0(r4)
/* 802F0320 002E60A0  3C 80 80 49 */	lis r4, lbl_804883B8@ha
/* 802F0324 002E60A4  38 84 83 B8 */	addi r4, r4, lbl_804883B8@l
/* 802F0328 002E60A8  38 A0 00 01 */	li r5, 1
/* 802F032C 002E60AC  2C 00 00 00 */	cmpwi r0, 0
/* 802F0330 002E60B0  B0 A3 00 06 */	sth r5, 6(r3)
/* 802F0334 002E60B4  90 83 00 00 */	stw r4, 0(r3)
/* 802F0338 002E60B8  4D 82 00 20 */	beqlr 
/* 802F033C 002E60BC  C0 22 B1 68 */	lfs f1, lbl_805A4488-_SDA2_BASE_(r2)
/* 802F0340 002E60C0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F0344 002E60C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802F0348 002E60C8  4C 82 00 20 */	bnelr 
/* 802F034C 002E60CC  C0 02 B1 80 */	lfs f0, lbl_805A44A0-_SDA2_BASE_(r2)
/* 802F0350 002E60D0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802F0354 002E60D4  4E 80 00 20 */	blr 

.global __sinit_$3hkWorldCinfo_cpp
__sinit_$3hkWorldCinfo_cpp:
/* 802F0358 002E60D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F035C 002E60DC  7C 08 02 A6 */	mflr r0
/* 802F0360 002E60E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0364 002E60E4  4B FF FD 31 */	bl getVtablehkWorldCinfo
/* 802F0368 002E60E8  3D 00 80 41 */	lis r8, lbl_80413748@ha
/* 802F036C 002E60EC  3C E0 80 53 */	lis r7, lbl_80533200@ha
/* 802F0370 002E60F0  3C C0 80 2F */	lis r6, finishLoadedObjecthkWorldCinfo@ha
/* 802F0374 002E60F4  3C 80 80 2F */	lis r4, cleanupLoadedObjecthkWorldCinfo@ha
/* 802F0378 002E60F8  39 08 37 48 */	addi r8, r8, lbl_80413748@l
/* 802F037C 002E60FC  38 A7 32 00 */	addi r5, r7, lbl_80533200@l
/* 802F0380 002E6100  38 C6 00 4C */	addi r6, r6, finishLoadedObjecthkWorldCinfo@l
/* 802F0384 002E6104  38 84 00 80 */	addi r4, r4, cleanupLoadedObjecthkWorldCinfo@l
/* 802F0388 002E6108  91 07 32 00 */	stw r8, 0x3200(r7)
/* 802F038C 002E610C  90 C5 00 04 */	stw r6, 4(r5)
/* 802F0390 002E6110  90 85 00 08 */	stw r4, 8(r5)
/* 802F0394 002E6114  90 65 00 0C */	stw r3, 0xc(r5)
/* 802F0398 002E6118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F039C 002E611C  7C 08 03 A6 */	mtlr r0
/* 802F03A0 002E6120  38 21 00 10 */	addi r1, r1, 0x10
/* 802F03A4 002E6124  4E 80 00 20 */	blr 

.global __sinit_$3hkWorldCinfoClass_cpp
__sinit_$3hkWorldCinfoClass_cpp:
/* 802F03A8 002E6128  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F03AC 002E612C  7C 08 02 A6 */	mflr r0
/* 802F03B0 002E6130  3D 60 80 41 */	lis r11, lbl_80413D78@ha
/* 802F03B4 002E6134  3C 60 80 53 */	lis r3, lbl_80533210@ha
/* 802F03B8 002E6138  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F03BC 002E613C  3C 80 80 41 */	lis r4, lbl_80413E28@ha
/* 802F03C0 002E6140  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 802F03C4 002E6144  3D 20 80 41 */	lis r9, lbl_80413AC0@ha
/* 802F03C8 002E6148  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F03CC 002E614C  3F E0 80 49 */	lis r31, lbl_804883C8@ha
/* 802F03D0 002E6150  3B FF 83 C8 */	addi r31, r31, lbl_804883C8@l
/* 802F03D4 002E6154  38 00 00 1B */	li r0, 0x1b
/* 802F03D8 002E6158  80 CD AB E8 */	lwz r6, lbl_8059F008-_SDA_BASE_(r13)
/* 802F03DC 002E615C  39 6B 3D 78 */	addi r11, r11, lbl_80413D78@l
/* 802F03E0 002E6160  80 ED AB E4 */	lwz r7, lbl_8059F004-_SDA_BASE_(r13)
/* 802F03E4 002E6164  38 63 32 10 */	addi r3, r3, lbl_80533210@l
/* 802F03E8 002E6168  81 8D AB E0 */	lwz r12, lbl_8059F000-_SDA_BASE_(r13)
/* 802F03EC 002E616C  38 84 3E 28 */	addi r4, r4, lbl_80413E28@l
/* 802F03F0 002E6170  90 DF 00 44 */	stw r6, 0x44(r31)
/* 802F03F4 002E6174  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 802F03F8 002E6178  39 29 3A C0 */	addi r9, r9, lbl_80413AC0@l
/* 802F03FC 002E617C  38 C0 00 A0 */	li r6, 0xa0
/* 802F0400 002E6180  93 E1 00 08 */	stw r31, 8(r1)
/* 802F0404 002E6184  39 00 00 00 */	li r8, 0
/* 802F0408 002E6188  39 40 00 04 */	li r10, 4
/* 802F040C 002E618C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F0410 002E6190  90 FF 00 E4 */	stw r7, 0xe4(r31)
/* 802F0414 002E6194  38 E0 00 00 */	li r7, 0
/* 802F0418 002E6198  91 9F 01 D4 */	stw r12, 0x1d4(r31)
/* 802F041C 002E619C  91 61 00 10 */	stw r11, 0x10(r1)
/* 802F0420 002E61A0  4B F8 C3 E9 */	bl hkClass$7__ct
/* 802F0424 002E61A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0428 002E61A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F042C 002E61AC  7C 08 03 A6 */	mtlr r0
/* 802F0430 002E61B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0434 002E61B4  4E 80 00 20 */	blr 

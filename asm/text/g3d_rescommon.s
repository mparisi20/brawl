.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d7ResNameCFQ34nw4r3g3d7ResN$7__eq
nw4r3g3d7ResNameCFQ34nw4r3g3d7ResN$7__eq:
/* 8018CBF4 00182974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018CBF8 00182978  7C 08 02 A6 */	mflr r0
/* 8018CBFC 0018297C  80 84 00 00 */	lwz r4, 0(r4)
/* 8018CC00 00182980  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018CC04 00182984  80 A3 00 00 */	lwz r5, 0(r3)
/* 8018CC08 00182988  80 04 00 00 */	lwz r0, 0(r4)
/* 8018CC0C 0018298C  80 65 00 00 */	lwz r3, 0(r5)
/* 8018CC10 00182990  7C 03 00 40 */	cmplw r3, r0
/* 8018CC14 00182994  40 82 00 1C */	bne lbl_8018CC30
/* 8018CC18 00182998  38 65 00 04 */	addi r3, r5, 4
/* 8018CC1C 0018299C  38 84 00 04 */	addi r4, r4, 4
/* 8018CC20 001829A0  48 26 D7 DD */	bl strcmp
/* 8018CC24 001829A4  7C 60 00 34 */	cntlzw r0, r3
/* 8018CC28 001829A8  54 03 D9 7E */	srwi r3, r0, 5
/* 8018CC2C 001829AC  48 00 00 08 */	b lbl_8018CC34
lbl_8018CC30:
/* 8018CC30 001829B0  38 60 00 00 */	li r3, 0
lbl_8018CC34:
/* 8018CC34 001829B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018CC38 001829B8  7C 08 03 A6 */	mtlr r0
/* 8018CC3C 001829BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8018CC40 001829C0  4E 80 00 20 */	blr 

.global nw4r3g3d6detailFPUcUl$7ResWriteBPCmd
nw4r3g3d6detailFPUcUl$7ResWriteBPCmd:
/* 8018CC44 001829C4  54 86 46 3E */	srwi r6, r4, 0x18
/* 8018CC48 001829C8  54 85 86 3E */	rlwinm r5, r4, 0x10, 0x18, 0x1f
/* 8018CC4C 001829CC  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 8018CC50 001829D0  38 E0 00 61 */	li r7, 0x61
/* 8018CC54 001829D4  98 E3 00 00 */	stb r7, 0(r3)
/* 8018CC58 001829D8  98 C3 00 01 */	stb r6, 1(r3)
/* 8018CC5C 001829DC  98 A3 00 02 */	stb r5, 2(r3)
/* 8018CC60 001829E0  98 03 00 03 */	stb r0, 3(r3)
/* 8018CC64 001829E4  98 83 00 04 */	stb r4, 4(r3)
/* 8018CC68 001829E8  4E 80 00 20 */	blr 

.global nw4r3g3d6detailFPUcUlUl$7ResWriteBPCmd
nw4r3g3d6detailFPUcUlUl$7ResWriteBPCmd:
/* 8018CC6C 001829EC  88 C3 00 02 */	lbz r6, 2(r3)
/* 8018CC70 001829F0  39 00 00 61 */	li r8, 0x61
/* 8018CC74 001829F4  88 03 00 03 */	lbz r0, 3(r3)
/* 8018CC78 001829F8  7C 89 28 38 */	and r9, r4, r5
/* 8018CC7C 001829FC  88 E3 00 01 */	lbz r7, 1(r3)
/* 8018CC80 00182A00  54 C6 80 1E */	slwi r6, r6, 0x10
/* 8018CC84 00182A04  54 04 40 2E */	slwi r4, r0, 8
/* 8018CC88 00182A08  88 03 00 04 */	lbz r0, 4(r3)
/* 8018CC8C 00182A0C  50 E6 C0 0E */	rlwimi r6, r7, 0x18, 0, 7
/* 8018CC90 00182A10  99 03 00 00 */	stb r8, 0(r3)
/* 8018CC94 00182A14  7C C6 23 78 */	or r6, r6, r4
/* 8018CC98 00182A18  7C C6 03 78 */	or r6, r6, r0
/* 8018CC9C 00182A1C  7C C0 28 78 */	andc r0, r6, r5
/* 8018CCA0 00182A20  7D 20 03 78 */	or r0, r9, r0
/* 8018CCA4 00182A24  54 05 46 3E */	srwi r5, r0, 0x18
/* 8018CCA8 00182A28  98 03 00 04 */	stb r0, 4(r3)
/* 8018CCAC 00182A2C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8018CCB0 00182A30  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8018CCB4 00182A34  98 A3 00 01 */	stb r5, 1(r3)
/* 8018CCB8 00182A38  98 83 00 02 */	stb r4, 2(r3)
/* 8018CCBC 00182A3C  98 03 00 03 */	stb r0, 3(r3)
/* 8018CCC0 00182A40  4E 80 00 20 */	blr 

.global nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd:
/* 8018CCC4 00182A44  54 A7 46 3E */	srwi r7, r5, 0x18
/* 8018CCC8 00182A48  54 A6 86 3E */	rlwinm r6, r5, 0x10, 0x18, 0x1f
/* 8018CCCC 00182A4C  54 A0 C6 3E */	rlwinm r0, r5, 0x18, 0x18, 0x1f
/* 8018CCD0 00182A50  39 00 00 08 */	li r8, 8
/* 8018CCD4 00182A54  99 03 00 00 */	stb r8, 0(r3)
/* 8018CCD8 00182A58  98 83 00 01 */	stb r4, 1(r3)
/* 8018CCDC 00182A5C  98 E3 00 02 */	stb r7, 2(r3)
/* 8018CCE0 00182A60  98 C3 00 03 */	stb r6, 3(r3)
/* 8018CCE4 00182A64  98 03 00 04 */	stb r0, 4(r3)
/* 8018CCE8 00182A68  98 A3 00 05 */	stb r5, 5(r3)
/* 8018CCEC 00182A6C  4E 80 00 20 */	blr 

.global nw4r3g3d6detailFPUcUsUl$7ResWriteXFCmd
nw4r3g3d6detailFPUcUsUl$7ResWriteXFCmd:
/* 8018CCF0 00182A70  39 20 00 00 */	li r9, 0
/* 8018CCF4 00182A74  54 88 C6 3E */	rlwinm r8, r4, 0x18, 0x18, 0x1f
/* 8018CCF8 00182A78  54 A7 46 3E */	srwi r7, r5, 0x18
/* 8018CCFC 00182A7C  54 A6 86 3E */	rlwinm r6, r5, 0x10, 0x18, 0x1f
/* 8018CD00 00182A80  54 A0 C6 3E */	rlwinm r0, r5, 0x18, 0x18, 0x1f
/* 8018CD04 00182A84  39 40 00 10 */	li r10, 0x10
/* 8018CD08 00182A88  99 43 00 00 */	stb r10, 0(r3)
/* 8018CD0C 00182A8C  99 23 00 01 */	stb r9, 1(r3)
/* 8018CD10 00182A90  99 23 00 02 */	stb r9, 2(r3)
/* 8018CD14 00182A94  99 03 00 03 */	stb r8, 3(r3)
/* 8018CD18 00182A98  98 83 00 04 */	stb r4, 4(r3)
/* 8018CD1C 00182A9C  98 E3 00 05 */	stb r7, 5(r3)
/* 8018CD20 00182AA0  98 C3 00 06 */	stb r6, 6(r3)
/* 8018CD24 00182AA4  98 03 00 07 */	stb r0, 7(r3)
/* 8018CD28 00182AA8  98 A3 00 08 */	stb r5, 8(r3)
/* 8018CD2C 00182AAC  4E 80 00 20 */	blr 

.global nw4r3g3d6detailFPUcUl$7ResWriteSSMask
nw4r3g3d6detailFPUcUl$7ResWriteSSMask:
/* 8018CD30 00182AB0  88 C3 00 02 */	lbz r6, 2(r3)
/* 8018CD34 00182AB4  38 00 00 61 */	li r0, 0x61
/* 8018CD38 00182AB8  88 A3 00 03 */	lbz r5, 3(r3)
/* 8018CD3C 00182ABC  54 C8 80 1E */	slwi r8, r6, 0x10
/* 8018CD40 00182AC0  88 E3 00 01 */	lbz r7, 1(r3)
/* 8018CD44 00182AC4  54 A6 40 2E */	slwi r6, r5, 8
/* 8018CD48 00182AC8  88 A3 00 04 */	lbz r5, 4(r3)
/* 8018CD4C 00182ACC  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8018CD50 00182AD0  98 03 00 00 */	stb r0, 0(r3)
/* 8018CD54 00182AD4  7D 08 33 78 */	or r8, r8, r6
/* 8018CD58 00182AD8  7D 08 2B 78 */	or r8, r8, r5
/* 8018CD5C 00182ADC  7D 00 23 78 */	or r0, r8, r4
/* 8018CD60 00182AE0  64 00 FE 00 */	oris r0, r0, 0xfe00
/* 8018CD64 00182AE4  54 05 46 3E */	srwi r5, r0, 0x18
/* 8018CD68 00182AE8  98 03 00 04 */	stb r0, 4(r3)
/* 8018CD6C 00182AEC  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8018CD70 00182AF0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8018CD74 00182AF4  98 A3 00 01 */	stb r5, 1(r3)
/* 8018CD78 00182AF8  98 83 00 02 */	stb r4, 2(r3)
/* 8018CD7C 00182AFC  98 03 00 03 */	stb r0, 3(r3)
/* 8018CD80 00182B00  4E 80 00 20 */	blr 


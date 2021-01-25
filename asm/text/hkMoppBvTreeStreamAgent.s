.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMoppBvTreeStreamAgent$7registerAgent
hkMoppBvTreeStreamAgent$7registerAgent:
/* 802AA8C0 002A0640  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802AA8C4 002A0644  7C 08 02 A6 */	mflr r0
/* 802AA8C8 002A0648  3C 80 80 2B */	lis r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@ha
/* 802AA8CC 002A064C  3C A0 80 2B */	lis r5, hkSymmetricAgentLinearCast$011hkMoppAgent$1$7staticGetPenetrations@ha
/* 802AA8D0 002A0650  90 01 00 64 */	stw r0, 0x64(r1)
/* 802AA8D4 002A0654  3D 00 80 2B */	lis r8, hkSymmetricAgentLinearCast$011hkMoppAgent$1$7staticGetClosestPoints@ha
/* 802AA8D8 002A0658  3C E0 80 2B */	lis r7, hkSymmetricAgentLinearCast$011hkMoppAgent$1$7staticLinearCast@ha
/* 802AA8DC 002A065C  38 84 9D 54 */	addi r4, r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@l
/* 802AA8E0 002A0660  BF 41 00 48 */	stmw r26, 0x48(r1)
/* 802AA8E4 002A0664  3B 60 00 01 */	li r27, 1
/* 802AA8E8 002A0668  38 A5 95 28 */	addi r5, r5, hkSymmetricAgentLinearCast$011hkMoppAgent$1$7staticGetPenetrations@l
/* 802AA8EC 002A066C  39 08 95 B8 */	addi r8, r8, hkSymmetricAgentLinearCast$011hkMoppAgent$1$7staticGetClosestPoints@l
/* 802AA8F0 002A0670  38 E7 96 00 */	addi r7, r7, hkSymmetricAgentLinearCast$011hkMoppAgent$1$7staticLinearCast@l
/* 802AA8F4 002A0674  7C 7A 1B 78 */	mr r26, r3
/* 802AA8F8 002A0678  38 C0 00 01 */	li r6, 1
/* 802AA8FC 002A067C  90 81 00 30 */	stw r4, 0x30(r1)
/* 802AA900 002A0680  38 81 00 30 */	addi r4, r1, 0x30
/* 802AA904 002A0684  90 A1 00 34 */	stw r5, 0x34(r1)
/* 802AA908 002A0688  38 A0 00 18 */	li r5, 0x18
/* 802AA90C 002A068C  91 01 00 38 */	stw r8, 0x38(r1)
/* 802AA910 002A0690  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 802AA914 002A0694  9B 61 00 40 */	stb r27, 0x40(r1)
/* 802AA918 002A0698  9B 61 00 41 */	stb r27, 0x41(r1)
/* 802AA91C 002A069C  48 02 17 D1 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802AA920 002A06A0  3C 60 80 2B */	lis r3, hkBvTreeStreamAgent$7createShapeBvAgent@ha
/* 802AA924 002A06A4  3F A0 80 2B */	lis r29, hkBvTreeAgent$7staticGetPenetrations@ha
/* 802AA928 002A06A8  3F C0 80 2A */	lis r30, hkBvTreeAgent$7staticGetClosestPoints@ha
/* 802AA92C 002A06AC  3F E0 80 2B */	lis r31, hkMoppAgent$7staticLinearCast@ha
/* 802AA930 002A06B0  38 63 9E 74 */	addi r3, r3, hkBvTreeStreamAgent$7createShapeBvAgent@l
/* 802AA934 002A06B4  3B BD 83 F8 */	addi r29, r29, hkBvTreeAgent$7staticGetPenetrations@l
/* 802AA938 002A06B8  3B DE 7F 30 */	addi r30, r30, hkBvTreeAgent$7staticGetClosestPoints@l
/* 802AA93C 002A06BC  3B FF 90 C0 */	addi r31, r31, hkMoppAgent$7staticLinearCast@l
/* 802AA940 002A06C0  3B 80 00 00 */	li r28, 0
/* 802AA944 002A06C4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802AA948 002A06C8  7F 43 D3 78 */	mr r3, r26
/* 802AA94C 002A06CC  38 81 00 1C */	addi r4, r1, 0x1c
/* 802AA950 002A06D0  93 A1 00 20 */	stw r29, 0x20(r1)
/* 802AA954 002A06D4  38 A0 00 01 */	li r5, 1
/* 802AA958 002A06D8  38 C0 00 18 */	li r6, 0x18
/* 802AA95C 002A06DC  93 C1 00 24 */	stw r30, 0x24(r1)
/* 802AA960 002A06E0  93 E1 00 28 */	stw r31, 0x28(r1)
/* 802AA964 002A06E4  9B 81 00 2C */	stb r28, 0x2c(r1)
/* 802AA968 002A06E8  9B 61 00 2D */	stb r27, 0x2d(r1)
/* 802AA96C 002A06EC  48 02 17 81 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802AA970 002A06F0  3C 60 80 2B */	lis r3, hkMoppAgent$7createBvBvAgent@ha
/* 802AA974 002A06F4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802AA978 002A06F8  38 63 8F 50 */	addi r3, r3, hkMoppAgent$7createBvBvAgent@l
/* 802AA97C 002A06FC  38 81 00 08 */	addi r4, r1, 8
/* 802AA980 002A0700  90 61 00 08 */	stw r3, 8(r1)
/* 802AA984 002A0704  7F 43 D3 78 */	mr r3, r26
/* 802AA988 002A0708  38 A0 00 18 */	li r5, 0x18
/* 802AA98C 002A070C  38 C0 00 18 */	li r6, 0x18
/* 802AA990 002A0710  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802AA994 002A0714  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802AA998 002A0718  9B 81 00 18 */	stb r28, 0x18(r1)
/* 802AA99C 002A071C  9B 61 00 19 */	stb r27, 0x19(r1)
/* 802AA9A0 002A0720  48 02 17 4D */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802AA9A4 002A0724  BB 41 00 48 */	lmw r26, 0x48(r1)
/* 802AA9A8 002A0728  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802AA9AC 002A072C  7C 08 03 A6 */	mtlr r0
/* 802AA9B0 002A0730  38 21 00 60 */	addi r1, r1, 0x60
/* 802AA9B4 002A0734  4E 80 00 20 */	blr 


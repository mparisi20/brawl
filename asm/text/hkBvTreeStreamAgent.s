.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkBvTreeStreamAgent$7__ct
hkBvTreeStreamAgent$7__ct:
/* 802A99B0 0029F730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A99B4 0029F734  7C 08 02 A6 */	mflr r0
/* 802A99B8 0029F738  3C A0 80 48 */	lis r5, lbl_80486CA8@ha
/* 802A99BC 0029F73C  3D 00 80 48 */	lis r8, lbl_80486924@ha
/* 802A99C0 0029F740  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A99C4 0029F744  3C 80 80 00 */	lis r4, 0x80000001@ha
/* 802A99C8 0029F748  38 04 00 01 */	addi r0, r4, 0x80000001@l
/* 802A99CC 0029F74C  38 A5 6C A8 */	addi r5, r5, lbl_80486CA8@l
/* 802A99D0 0029F750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A99D4 0029F754  39 20 00 01 */	li r9, 1
/* 802A99D8 0029F758  38 80 00 00 */	li r4, 0
/* 802A99DC 0029F75C  39 43 00 30 */	addi r10, r3, 0x30
/* 802A99E0 0029F760  90 A3 00 00 */	stw r5, 0(r3)
/* 802A99E4 0029F764  39 08 69 24 */	addi r8, r8, lbl_80486924@l
/* 802A99E8 0029F768  38 AA 00 0C */	addi r5, r10, 0xc
/* 802A99EC 0029F76C  C0 02 AB E0 */	lfs f0, lbl_805A3F00-_SDA2_BASE_(r2)
/* 802A99F0 0029F770  B1 23 00 06 */	sth r9, 6(r3)
/* 802A99F4 0029F774  7C 7F 1B 78 */	mr r31, r3
/* 802A99F8 0029F778  90 E3 00 08 */	stw r7, 8(r3)
/* 802A99FC 0029F77C  91 03 00 00 */	stw r8, 0(r3)
/* 802A9A00 0029F780  90 A3 00 30 */	stw r5, 0x30(r3)
/* 802A9A04 0029F784  90 83 00 34 */	stw r4, 0x34(r3)
/* 802A9A08 0029F788  90 03 00 38 */	stw r0, 0x38(r3)
/* 802A9A0C 0029F78C  80 06 00 00 */	lwz r0, 0(r6)
/* 802A9A10 0029F790  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A9A14 0029F794  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802A9A18 0029F798  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802A9A1C 0029F79C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802A9A20 0029F7A0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802A9A24 0029F7A4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802A9A28 0029F7A8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802A9A2C 0029F7AC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802A9A30 0029F7B0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802A9A34 0029F7B4  7D 43 53 78 */	mr r3, r10
/* 802A9A38 0029F7B8  48 05 30 DD */	bl hkAgent1nMachine_Create
/* 802A9A3C 0029F7BC  7F E3 FB 78 */	mr r3, r31
/* 802A9A40 0029F7C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9A44 0029F7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9A48 0029F7C8  7C 08 03 A6 */	mtlr r0
/* 802A9A4C 0029F7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9A50 0029F7D0  4E 80 00 20 */	blr 

.global hkMemory$7getInstance
hkMemory$7getInstance:
/* 802A9A54 0029F7D4  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802A9A58 0029F7D8  4E 80 00 20 */	blr 

.global hkAgent1nTrack$7__dt
hkAgent1nTrack$7__dt:
/* 802A9A5C 0029F7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9A60 0029F7E0  7C 08 02 A6 */	mflr r0
/* 802A9A64 0029F7E4  2C 03 00 00 */	cmpwi r3, 0
/* 802A9A68 0029F7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9A6C 0029F7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9A70 0029F7F0  7C 9F 23 78 */	mr r31, r4
/* 802A9A74 0029F7F4  93 C1 00 08 */	stw r30, 8(r1)
/* 802A9A78 0029F7F8  7C 7E 1B 78 */	mr r30, r3
/* 802A9A7C 0029F7FC  41 82 00 58 */	beq lbl_802A9AD4
/* 802A9A80 0029F800  41 82 00 2C */	beq lbl_802A9AAC
/* 802A9A84 0029F804  41 82 00 28 */	beq lbl_802A9AAC
/* 802A9A88 0029F808  80 03 00 08 */	lwz r0, 8(r3)
/* 802A9A8C 0029F80C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 802A9A90 0029F810  40 82 00 1C */	bne lbl_802A9AAC
/* 802A9A94 0029F814  80 1E 00 08 */	lwz r0, 8(r30)
/* 802A9A98 0029F818  38 C0 00 15 */	li r6, 0x15
/* 802A9A9C 0029F81C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802A9AA0 0029F820  80 9E 00 00 */	lwz r4, 0(r30)
/* 802A9AA4 0029F824  54 05 10 3A */	slwi r5, r0, 2
/* 802A9AA8 0029F828  4B FD 50 15 */	bl hkThreadMemory$7deallocateChunk
lbl_802A9AAC:
/* 802A9AAC 0029F82C  2C 1F 00 00 */	cmpwi r31, 0
/* 802A9AB0 0029F830  40 81 00 24 */	ble lbl_802A9AD4
/* 802A9AB4 0029F834  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802A9AB8 0029F838  7F C4 F3 78 */	mr r4, r30
/* 802A9ABC 0029F83C  38 A0 00 10 */	li r5, 0x10
/* 802A9AC0 0029F840  38 C0 00 25 */	li r6, 0x25
/* 802A9AC4 0029F844  81 83 00 00 */	lwz r12, 0(r3)
/* 802A9AC8 0029F848  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A9ACC 0029F84C  7D 89 03 A6 */	mtctr r12
/* 802A9AD0 0029F850  4E 80 04 21 */	bctrl 
lbl_802A9AD4:
/* 802A9AD4 0029F854  7F C3 F3 78 */	mr r3, r30
/* 802A9AD8 0029F858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9ADC 0029F85C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A9AE0 0029F860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9AE4 0029F864  7C 08 03 A6 */	mtlr r0
/* 802A9AE8 0029F868  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9AEC 0029F86C  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7registerAgent
hkBvTreeStreamAgent$7registerAgent:
/* 802A9AF0 0029F870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A9AF4 0029F874  7C 08 02 A6 */	mflr r0
/* 802A9AF8 0029F878  3C 80 80 2B */	lis r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@ha
/* 802A9AFC 0029F87C  3C A0 80 2B */	lis r5, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetPenetrations@ha
/* 802A9B00 0029F880  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A9B04 0029F884  3D 00 80 2B */	lis r8, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetClosestPoints@ha
/* 802A9B08 0029F888  3C E0 80 2B */	lis r7, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticLinearCast@ha
/* 802A9B0C 0029F88C  38 84 9D 54 */	addi r4, r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@l
/* 802A9B10 0029F890  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802A9B14 0029F894  3B E0 00 01 */	li r31, 1
/* 802A9B18 0029F898  38 A5 89 84 */	addi r5, r5, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetPenetrations@l
/* 802A9B1C 0029F89C  39 08 8A 14 */	addi r8, r8, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetClosestPoints@l
/* 802A9B20 0029F8A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802A9B24 0029F8A4  38 E7 8A 5C */	addi r7, r7, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticLinearCast@l
/* 802A9B28 0029F8A8  7C 7E 1B 78 */	mr r30, r3
/* 802A9B2C 0029F8AC  38 C0 00 01 */	li r6, 1
/* 802A9B30 0029F8B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802A9B34 0029F8B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A9B38 0029F8B8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802A9B3C 0029F8BC  38 A0 00 03 */	li r5, 3
/* 802A9B40 0029F8C0  91 01 00 24 */	stw r8, 0x24(r1)
/* 802A9B44 0029F8C4  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802A9B48 0029F8C8  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802A9B4C 0029F8CC  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802A9B50 0029F8D0  48 02 25 9D */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802A9B54 0029F8D4  3C 60 80 2B */	lis r3, hkBvTreeStreamAgent$7createShapeBvAgent@ha
/* 802A9B58 0029F8D8  3C 80 80 2B */	lis r4, hkBvTreeAgent$7staticGetPenetrations@ha
/* 802A9B5C 0029F8DC  3D 00 80 2A */	lis r8, hkBvTreeAgent$7staticGetClosestPoints@ha
/* 802A9B60 0029F8E0  3C E0 80 2A */	lis r7, hkBvTreeAgent$7staticLinearCast@ha
/* 802A9B64 0029F8E4  38 63 9E 74 */	addi r3, r3, hkBvTreeStreamAgent$7createShapeBvAgent@l
/* 802A9B68 0029F8E8  38 84 83 F8 */	addi r4, r4, hkBvTreeAgent$7staticGetPenetrations@l
/* 802A9B6C 0029F8EC  39 08 7F 30 */	addi r8, r8, hkBvTreeAgent$7staticGetClosestPoints@l
/* 802A9B70 0029F8F0  38 E7 78 F8 */	addi r7, r7, hkBvTreeAgent$7staticLinearCast@l
/* 802A9B74 0029F8F4  38 00 00 00 */	li r0, 0
/* 802A9B78 0029F8F8  90 61 00 08 */	stw r3, 8(r1)
/* 802A9B7C 0029F8FC  7F C3 F3 78 */	mr r3, r30
/* 802A9B80 0029F900  38 A0 00 01 */	li r5, 1
/* 802A9B84 0029F904  90 81 00 0C */	stw r4, 0xc(r1)
/* 802A9B88 0029F908  38 81 00 08 */	addi r4, r1, 8
/* 802A9B8C 0029F90C  38 C0 00 03 */	li r6, 3
/* 802A9B90 0029F910  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A9B94 0029F914  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A9B98 0029F918  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A9B9C 0029F91C  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802A9BA0 0029F920  48 02 25 4D */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802A9BA4 0029F924  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A9BA8 0029F928  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802A9BAC 0029F92C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802A9BB0 0029F930  7C 08 03 A6 */	mtlr r0
/* 802A9BB4 0029F934  38 21 00 40 */	addi r1, r1, 0x40
/* 802A9BB8 0029F938  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7registerConvexListAgent
hkBvTreeStreamAgent$7registerConvexListAgent:
/* 802A9BBC 0029F93C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A9BC0 0029F940  7C 08 02 A6 */	mflr r0
/* 802A9BC4 0029F944  3C 80 80 2B */	lis r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@ha
/* 802A9BC8 0029F948  3C A0 80 2B */	lis r5, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetPenetrations@ha
/* 802A9BCC 0029F94C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A9BD0 0029F950  3D 00 80 2B */	lis r8, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetClosestPoints@ha
/* 802A9BD4 0029F954  3C E0 80 2B */	lis r7, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticLinearCast@ha
/* 802A9BD8 0029F958  38 84 9D 54 */	addi r4, r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@l
/* 802A9BDC 0029F95C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802A9BE0 0029F960  3B E0 00 01 */	li r31, 1
/* 802A9BE4 0029F964  38 A5 89 84 */	addi r5, r5, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetPenetrations@l
/* 802A9BE8 0029F968  39 08 8A 14 */	addi r8, r8, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetClosestPoints@l
/* 802A9BEC 0029F96C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802A9BF0 0029F970  38 E7 8A 5C */	addi r7, r7, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticLinearCast@l
/* 802A9BF4 0029F974  7C 7E 1B 78 */	mr r30, r3
/* 802A9BF8 0029F978  38 C0 00 0D */	li r6, 0xd
/* 802A9BFC 0029F97C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802A9C00 0029F980  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A9C04 0029F984  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802A9C08 0029F988  38 A0 00 03 */	li r5, 3
/* 802A9C0C 0029F98C  91 01 00 24 */	stw r8, 0x24(r1)
/* 802A9C10 0029F990  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802A9C14 0029F994  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802A9C18 0029F998  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802A9C1C 0029F99C  48 02 24 D1 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802A9C20 0029F9A0  3C 60 80 2B */	lis r3, hkBvTreeStreamAgent$7createShapeBvAgent@ha
/* 802A9C24 0029F9A4  3C 80 80 2B */	lis r4, hkBvTreeAgent$7staticGetPenetrations@ha
/* 802A9C28 0029F9A8  3D 00 80 2A */	lis r8, hkBvTreeAgent$7staticGetClosestPoints@ha
/* 802A9C2C 0029F9AC  3C E0 80 2A */	lis r7, hkBvTreeAgent$7staticLinearCast@ha
/* 802A9C30 0029F9B0  38 63 9E 74 */	addi r3, r3, hkBvTreeStreamAgent$7createShapeBvAgent@l
/* 802A9C34 0029F9B4  38 84 83 F8 */	addi r4, r4, hkBvTreeAgent$7staticGetPenetrations@l
/* 802A9C38 0029F9B8  39 08 7F 30 */	addi r8, r8, hkBvTreeAgent$7staticGetClosestPoints@l
/* 802A9C3C 0029F9BC  38 E7 78 F8 */	addi r7, r7, hkBvTreeAgent$7staticLinearCast@l
/* 802A9C40 0029F9C0  38 00 00 00 */	li r0, 0
/* 802A9C44 0029F9C4  90 61 00 08 */	stw r3, 8(r1)
/* 802A9C48 0029F9C8  7F C3 F3 78 */	mr r3, r30
/* 802A9C4C 0029F9CC  38 A0 00 0D */	li r5, 0xd
/* 802A9C50 0029F9D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 802A9C54 0029F9D4  38 81 00 08 */	addi r4, r1, 8
/* 802A9C58 0029F9D8  38 C0 00 03 */	li r6, 3
/* 802A9C5C 0029F9DC  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A9C60 0029F9E0  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A9C64 0029F9E4  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A9C68 0029F9E8  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802A9C6C 0029F9EC  48 02 24 81 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802A9C70 0029F9F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A9C74 0029F9F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802A9C78 0029F9F8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802A9C7C 0029F9FC  7C 08 03 A6 */	mtlr r0
/* 802A9C80 0029FA00  38 21 00 40 */	addi r1, r1, 0x40
/* 802A9C84 0029FA04  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7registerMultiRayAgent
hkBvTreeStreamAgent$7registerMultiRayAgent:
/* 802A9C88 0029FA08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A9C8C 0029FA0C  7C 08 02 A6 */	mflr r0
/* 802A9C90 0029FA10  3C 80 80 2B */	lis r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@ha
/* 802A9C94 0029FA14  3C A0 80 2B */	lis r5, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetPenetrations@ha
/* 802A9C98 0029FA18  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A9C9C 0029FA1C  3D 00 80 2B */	lis r8, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetClosestPoints@ha
/* 802A9CA0 0029FA20  3C E0 80 2B */	lis r7, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticLinearCast@ha
/* 802A9CA4 0029FA24  38 84 9D 54 */	addi r4, r4, hkBvTreeStreamAgent$7createBvTreeShapeAgent@l
/* 802A9CA8 0029FA28  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802A9CAC 0029FA2C  3B E0 00 01 */	li r31, 1
/* 802A9CB0 0029FA30  38 A5 89 84 */	addi r5, r5, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetPenetrations@l
/* 802A9CB4 0029FA34  39 08 8A 14 */	addi r8, r8, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticGetClosestPoints@l
/* 802A9CB8 0029FA38  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802A9CBC 0029FA3C  38 E7 8A 5C */	addi r7, r7, hkSymmetricAgentLinearCast$013hkBvTreeAgent$1$7staticLinearCast@l
/* 802A9CC0 0029FA40  7C 7E 1B 78 */	mr r30, r3
/* 802A9CC4 0029FA44  38 C0 00 11 */	li r6, 0x11
/* 802A9CC8 0029FA48  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802A9CCC 0029FA4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A9CD0 0029FA50  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802A9CD4 0029FA54  38 A0 00 03 */	li r5, 3
/* 802A9CD8 0029FA58  91 01 00 24 */	stw r8, 0x24(r1)
/* 802A9CDC 0029FA5C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802A9CE0 0029FA60  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802A9CE4 0029FA64  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802A9CE8 0029FA68  48 02 24 05 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802A9CEC 0029FA6C  3C 60 80 2B */	lis r3, hkBvTreeStreamAgent$7createShapeBvAgent@ha
/* 802A9CF0 0029FA70  3C 80 80 2B */	lis r4, hkBvTreeAgent$7staticGetPenetrations@ha
/* 802A9CF4 0029FA74  3D 00 80 2A */	lis r8, hkBvTreeAgent$7staticGetClosestPoints@ha
/* 802A9CF8 0029FA78  3C E0 80 2A */	lis r7, hkBvTreeAgent$7staticLinearCast@ha
/* 802A9CFC 0029FA7C  38 63 9E 74 */	addi r3, r3, hkBvTreeStreamAgent$7createShapeBvAgent@l
/* 802A9D00 0029FA80  38 84 83 F8 */	addi r4, r4, hkBvTreeAgent$7staticGetPenetrations@l
/* 802A9D04 0029FA84  39 08 7F 30 */	addi r8, r8, hkBvTreeAgent$7staticGetClosestPoints@l
/* 802A9D08 0029FA88  38 E7 78 F8 */	addi r7, r7, hkBvTreeAgent$7staticLinearCast@l
/* 802A9D0C 0029FA8C  38 00 00 00 */	li r0, 0
/* 802A9D10 0029FA90  90 61 00 08 */	stw r3, 8(r1)
/* 802A9D14 0029FA94  7F C3 F3 78 */	mr r3, r30
/* 802A9D18 0029FA98  38 A0 00 11 */	li r5, 0x11
/* 802A9D1C 0029FA9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802A9D20 0029FAA0  38 81 00 08 */	addi r4, r1, 8
/* 802A9D24 0029FAA4  38 C0 00 03 */	li r6, 3
/* 802A9D28 0029FAA8  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A9D2C 0029FAAC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A9D30 0029FAB0  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A9D34 0029FAB4  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802A9D38 0029FAB8  48 02 23 B5 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802A9D3C 0029FABC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A9D40 0029FAC0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802A9D44 0029FAC4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802A9D48 0029FAC8  7C 08 03 A6 */	mtlr r0
/* 802A9D4C 0029FACC  38 21 00 40 */	addi r1, r1, 0x40
/* 802A9D50 0029FAD0  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7createBvTreeShapeAgent
hkBvTreeStreamAgent$7createBvTreeShapeAgent:
/* 802A9D54 0029FAD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9D58 0029FAD8  7C 08 02 A6 */	mflr r0
/* 802A9D5C 0029FADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A9D60 0029FAE0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802A9D64 0029FAE4  7C 7B 1B 78 */	mr r27, r3
/* 802A9D68 0029FAE8  7C 9C 23 78 */	mr r28, r4
/* 802A9D6C 0029FAEC  7C BD 2B 78 */	mr r29, r5
/* 802A9D70 0029FAF0  7C DE 33 78 */	mr r30, r6
/* 802A9D74 0029FAF4  38 80 00 40 */	li r4, 0x40
/* 802A9D78 0029FAF8  38 A0 00 1D */	li r5, 0x1d
/* 802A9D7C 0029FAFC  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802A9D80 0029FB00  81 83 00 00 */	lwz r12, 0(r3)
/* 802A9D84 0029FB04  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A9D88 0029FB08  7D 89 03 A6 */	mtctr r12
/* 802A9D8C 0029FB0C  4E 80 04 21 */	bctrl 
/* 802A9D90 0029FB10  38 00 00 40 */	li r0, 0x40
/* 802A9D94 0029FB14  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A9D98 0029FB18  B0 03 00 04 */	sth r0, 4(r3)
/* 802A9D9C 0029FB1C  41 82 00 24 */	beq lbl_802A9DC0
/* 802A9DA0 0029FB20  7F 84 E3 78 */	mr r4, r28
/* 802A9DA4 0029FB24  7F 65 DB 78 */	mr r5, r27
/* 802A9DA8 0029FB28  7F A6 EB 78 */	mr r6, r29
/* 802A9DAC 0029FB2C  7F C7 F3 78 */	mr r7, r30
/* 802A9DB0 0029FB30  4B FF FC 01 */	bl hkBvTreeStreamAgent$7__ct
/* 802A9DB4 0029FB34  3C 60 80 48 */	lis r3, lbl_804868E8@ha
/* 802A9DB8 0029FB38  38 63 68 E8 */	addi r3, r3, lbl_804868E8@l
/* 802A9DBC 0029FB3C  90 7F 00 00 */	stw r3, 0(r31)
lbl_802A9DC0:
/* 802A9DC0 0029FB40  7F E3 FB 78 */	mr r3, r31
/* 802A9DC4 0029FB44  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802A9DC8 0029FB48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9DCC 0029FB4C  7C 08 03 A6 */	mtlr r0
/* 802A9DD0 0029FB50  38 21 00 20 */	addi r1, r1, 0x20
/* 802A9DD4 0029FB54  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7__dt
hkBvTreeStreamAgent$7__dt:
/* 802A9DD8 0029FB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9DDC 0029FB5C  7C 08 02 A6 */	mflr r0
/* 802A9DE0 0029FB60  2C 03 00 00 */	cmpwi r3, 0
/* 802A9DE4 0029FB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9DE8 0029FB68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9DEC 0029FB6C  7C 9F 23 78 */	mr r31, r4
/* 802A9DF0 0029FB70  93 C1 00 08 */	stw r30, 8(r1)
/* 802A9DF4 0029FB74  7C 7E 1B 78 */	mr r30, r3
/* 802A9DF8 0029FB78  41 82 00 60 */	beq lbl_802A9E58
/* 802A9DFC 0029FB7C  34 03 00 30 */	addic. r0, r3, 0x30
/* 802A9E00 0029FB80  41 82 00 30 */	beq lbl_802A9E30
/* 802A9E04 0029FB84  41 82 00 2C */	beq lbl_802A9E30
/* 802A9E08 0029FB88  41 82 00 28 */	beq lbl_802A9E30
/* 802A9E0C 0029FB8C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 802A9E10 0029FB90  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 802A9E14 0029FB94  40 82 00 1C */	bne lbl_802A9E30
/* 802A9E18 0029FB98  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802A9E1C 0029FB9C  38 C0 00 15 */	li r6, 0x15
/* 802A9E20 0029FBA0  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802A9E24 0029FBA4  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802A9E28 0029FBA8  54 05 10 3A */	slwi r5, r0, 2
/* 802A9E2C 0029FBAC  4B FD 4C 91 */	bl hkThreadMemory$7deallocateChunk
lbl_802A9E30:
/* 802A9E30 0029FBB0  2C 1F 00 00 */	cmpwi r31, 0
/* 802A9E34 0029FBB4  40 81 00 24 */	ble lbl_802A9E58
/* 802A9E38 0029FBB8  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802A9E3C 0029FBBC  7F C4 F3 78 */	mr r4, r30
/* 802A9E40 0029FBC0  A0 BE 00 04 */	lhz r5, 4(r30)
/* 802A9E44 0029FBC4  38 C0 00 1D */	li r6, 0x1d
/* 802A9E48 0029FBC8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A9E4C 0029FBCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A9E50 0029FBD0  7D 89 03 A6 */	mtctr r12
/* 802A9E54 0029FBD4  4E 80 04 21 */	bctrl 
lbl_802A9E58:
/* 802A9E58 0029FBD8  7F C3 F3 78 */	mr r3, r30
/* 802A9E5C 0029FBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9E60 0029FBE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A9E64 0029FBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9E68 0029FBE8  7C 08 03 A6 */	mtlr r0
/* 802A9E6C 0029FBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9E70 0029FBF0  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7createShapeBvAgent
hkBvTreeStreamAgent$7createShapeBvAgent:
/* 802A9E74 0029FBF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9E78 0029FBF8  7C 08 02 A6 */	mflr r0
/* 802A9E7C 0029FBFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A9E80 0029FC00  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802A9E84 0029FC04  7C 7B 1B 78 */	mr r27, r3
/* 802A9E88 0029FC08  7C 9C 23 78 */	mr r28, r4
/* 802A9E8C 0029FC0C  7C BD 2B 78 */	mr r29, r5
/* 802A9E90 0029FC10  7C DE 33 78 */	mr r30, r6
/* 802A9E94 0029FC14  38 80 00 40 */	li r4, 0x40
/* 802A9E98 0029FC18  38 A0 00 1D */	li r5, 0x1d
/* 802A9E9C 0029FC1C  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802A9EA0 0029FC20  81 83 00 00 */	lwz r12, 0(r3)
/* 802A9EA4 0029FC24  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A9EA8 0029FC28  7D 89 03 A6 */	mtctr r12
/* 802A9EAC 0029FC2C  4E 80 04 21 */	bctrl 
/* 802A9EB0 0029FC30  38 00 00 40 */	li r0, 0x40
/* 802A9EB4 0029FC34  2C 03 00 00 */	cmpwi r3, 0
/* 802A9EB8 0029FC38  B0 03 00 04 */	sth r0, 4(r3)
/* 802A9EBC 0029FC3C  7C 7F 1B 78 */	mr r31, r3
/* 802A9EC0 0029FC40  41 82 00 18 */	beq lbl_802A9ED8
/* 802A9EC4 0029FC44  7F 64 DB 78 */	mr r4, r27
/* 802A9EC8 0029FC48  7F 85 E3 78 */	mr r5, r28
/* 802A9ECC 0029FC4C  7F A6 EB 78 */	mr r6, r29
/* 802A9ED0 0029FC50  7F C7 F3 78 */	mr r7, r30
/* 802A9ED4 0029FC54  4B FF FA DD */	bl hkBvTreeStreamAgent$7__ct
lbl_802A9ED8:
/* 802A9ED8 0029FC58  7F E3 FB 78 */	mr r3, r31
/* 802A9EDC 0029FC5C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802A9EE0 0029FC60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9EE4 0029FC64  7C 08 03 A6 */	mtlr r0
/* 802A9EE8 0029FC68  38 21 00 20 */	addi r1, r1, 0x20
/* 802A9EEC 0029FC6C  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7getPenetrations
hkBvTreeStreamAgent$7getPenetrations:
/* 802A9EF0 0029FC70  7C 83 23 78 */	mr r3, r4
/* 802A9EF4 0029FC74  7C A4 2B 78 */	mr r4, r5
/* 802A9EF8 0029FC78  7C C5 33 78 */	mr r5, r6
/* 802A9EFC 0029FC7C  7C E6 3B 78 */	mr r6, r7
/* 802A9F00 0029FC80  4B FF E4 F8 */	b hkBvTreeAgent$7staticGetPenetrations

.global hkBvTreeStreamAgent$7getClosestPoints
hkBvTreeStreamAgent$7getClosestPoints:
/* 802A9F04 0029FC84  7C 83 23 78 */	mr r3, r4
/* 802A9F08 0029FC88  7C A4 2B 78 */	mr r4, r5
/* 802A9F0C 0029FC8C  7C C5 33 78 */	mr r5, r6
/* 802A9F10 0029FC90  7C E6 3B 78 */	mr r6, r7
/* 802A9F14 0029FC94  4B FF E0 1C */	b hkBvTreeAgent$7staticGetClosestPoints

.global hkBvTreeStreamAgent$7linearCast
hkBvTreeStreamAgent$7linearCast:
/* 802A9F18 0029FC98  7C 83 23 78 */	mr r3, r4
/* 802A9F1C 0029FC9C  7C A4 2B 78 */	mr r4, r5
/* 802A9F20 0029FCA0  7C C5 33 78 */	mr r5, r6
/* 802A9F24 0029FCA4  7C E6 3B 78 */	mr r6, r7
/* 802A9F28 0029FCA8  7D 07 43 78 */	mr r7, r8
/* 802A9F2C 0029FCAC  4B FF D9 CC */	b hkBvTreeAgent$7staticLinearCast

.global hkBvTreeStreamAgent$7cleanup
hkBvTreeStreamAgent$7cleanup:
/* 802A9F30 0029FCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9F34 0029FCB4  7C 08 02 A6 */	mflr r0
/* 802A9F38 0029FCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9F3C 0029FCBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9F40 0029FCC0  7C 7F 1B 78 */	mr r31, r3
/* 802A9F44 0029FCC4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802A9F48 0029FCC8  80 A3 00 08 */	lwz r5, 8(r3)
/* 802A9F4C 0029FCCC  38 63 00 30 */	addi r3, r3, 0x30
/* 802A9F50 0029FCD0  48 05 27 5D */	bl hkAgent1nMachine_Destroy
/* 802A9F54 0029FCD4  2C 1F 00 00 */	cmpwi r31, 0
/* 802A9F58 0029FCD8  41 82 00 1C */	beq lbl_802A9F74
/* 802A9F5C 0029FCDC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A9F60 0029FCE0  7F E3 FB 78 */	mr r3, r31
/* 802A9F64 0029FCE4  38 80 00 01 */	li r4, 1
/* 802A9F68 0029FCE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9F6C 0029FCEC  7D 89 03 A6 */	mtctr r12
/* 802A9F70 0029FCF0  4E 80 04 21 */	bctrl 
lbl_802A9F74:
/* 802A9F74 0029FCF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9F78 0029FCF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9F7C 0029FCFC  7C 08 03 A6 */	mtlr r0
/* 802A9F80 0029FD00  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9F84 0029FD04  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7processCollision
hkBvTreeStreamAgent$7processCollision:
/* 802A9F88 0029FD08  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802A9F8C 0029FD0C  7C 2C 0B 78 */	mr r12, r1
/* 802A9F90 0029FD10  21 6B FD 00 */	subfic r11, r11, -768
/* 802A9F94 0029FD14  7C 21 59 6E */	stwux r1, r1, r11
/* 802A9F98 0029FD18  7C 08 02 A6 */	mflr r0
/* 802A9F9C 0029FD1C  7D 8B 63 78 */	mr r11, r12
/* 802A9FA0 0029FD20  90 0C 00 04 */	stw r0, 4(r12)
/* 802A9FA4 0029FD24  48 14 73 75 */	bl _savegpr_25
/* 802A9FA8 0029FD28  7C 7D 1B 78 */	mr r29, r3
/* 802A9FAC 0029FD2C  7C 99 23 78 */	mr r25, r4
/* 802A9FB0 0029FD30  7C BE 2B 78 */	mr r30, r5
/* 802A9FB4 0029FD34  7C DA 33 78 */	mr r26, r6
/* 802A9FB8 0029FD38  7C FF 3B 78 */	mr r31, r7
/* 802A9FBC 0029FD3C  48 00 02 B9 */	bl hkMonitorStream$7getInstance
/* 802A9FC0 0029FD40  7C 7C 1B 78 */	mr r28, r3
/* 802A9FC4 0029FD44  48 00 02 BD */	bl hkMonitorStream$7memoryAvailable
/* 802A9FC8 0029FD48  54 60 46 3E */	srwi r0, r3, 0x18
/* 802A9FCC 0029FD4C  38 61 00 18 */	addi r3, r1, 0x18
/* 802A9FD0 0029FD50  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A9FD4 0029FD54  4B FF 6C 05 */	bl hkBool$7__opb
/* 802A9FD8 0029FD58  2C 03 00 00 */	cmpwi r3, 0
/* 802A9FDC 0029FD5C  41 82 00 34 */	beq lbl_802AA010
/* 802A9FE0 0029FD60  7F 83 E3 78 */	mr r3, r28
/* 802A9FE4 0029FD64  48 00 02 B9 */	bl hkMonitorStream$7getEnd
/* 802A9FE8 0029FD68  3C 80 80 41 */	lis r4, lbl_8040FBE8@ha
/* 802A9FEC 0029FD6C  7C 7B 1B 78 */	mr r27, r3
/* 802A9FF0 0029FD70  38 84 FB E8 */	addi r4, r4, lbl_8040FBE8@l
/* 802A9FF4 0029FD74  90 83 00 00 */	stw r4, 0(r3)
/* 802A9FF8 0029FD78  38 04 00 0A */	addi r0, r4, 0xa
/* 802A9FFC 0029FD7C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802AA000 0029FD80  48 00 02 A5 */	bl hkMonitorStream12TimerCommandFv$7setTime
/* 802AA004 0029FD84  7F 83 E3 78 */	mr r3, r28
/* 802AA008 0029FD88  38 9B 00 10 */	addi r4, r27, 0x10
/* 802AA00C 0029FD8C  48 00 02 A5 */	bl hkMonitorStream$7setEnd
lbl_802AA010:
/* 802AA010 0029FD90  38 61 00 60 */	addi r3, r1, 0x60
/* 802AA014 0029FD94  48 00 02 F1 */	bl hkAgent3ProcessInput$7__ct
/* 802AA018 0029FD98  93 21 00 60 */	stw r25, 0x60(r1)
/* 802AA01C 0029FD9C  7F 23 CB 78 */	mr r3, r25
/* 802AA020 0029FDA0  93 C1 00 64 */	stw r30, 0x64(r1)
/* 802AA024 0029FDA4  80 1D 00 08 */	lwz r0, 8(r29)
/* 802AA028 0029FDA8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802AA02C 0029FDAC  93 41 00 68 */	stw r26, 0x68(r1)
/* 802AA030 0029FDB0  48 00 02 89 */	bl hkCdBody$7getMotionState
/* 802AA034 0029FDB4  7C 7B 1B 78 */	mr r27, r3
/* 802AA038 0029FDB8  7F C3 F3 78 */	mr r3, r30
/* 802AA03C 0029FDBC  48 00 02 7D */	bl hkCdBody$7getMotionState
/* 802AA040 0029FDC0  7C 7C 1B 78 */	mr r28, r3
/* 802AA044 0029FDC4  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 802AA048 0029FDC8  7F 63 DB 78 */	mr r3, r27
/* 802AA04C 0029FDCC  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 802AA050 0029FDD0  7F 84 E3 78 */	mr r4, r28
/* 802AA054 0029FDD4  4B FF C9 E5 */	bl hkSweptTransformUtil$7calcTimInfo
/* 802AA058 0029FDD8  7F 83 E3 78 */	mr r3, r28
/* 802AA05C 0029FDDC  48 00 02 65 */	bl hkMotionState$7getTransform
/* 802AA060 0029FDE0  7C 7C 1B 78 */	mr r28, r3
/* 802AA064 0029FDE4  7F 63 DB 78 */	mr r3, r27
/* 802AA068 0029FDE8  48 00 02 59 */	bl hkMotionState$7getTransform
/* 802AA06C 0029FDEC  7C 64 1B 78 */	mr r4, r3
/* 802AA070 0029FDF0  7F 85 E3 78 */	mr r5, r28
/* 802AA074 0029FDF4  38 61 00 70 */	addi r3, r1, 0x70
/* 802AA078 0029FDF8  4B FD D5 89 */	bl hkTransform$7setMulInverseMul
/* 802AA07C 0029FDFC  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA080 0029FE00  38 80 00 00 */	li r4, 0
/* 802AA084 0029FE04  48 00 02 85 */	bl hkInplaceArray$0Ui$4128$1$7__ct
/* 802AA088 0029FE08  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA08C 0029FE0C  38 8D AB 38 */	addi r4, r13, lbl_8059EF58-_SDA_BASE_
/* 802AA090 0029FE10  48 00 02 95 */	bl hkArray$0Ui$1$7pushBackUnchecked
/* 802AA094 0029FE14  38 61 00 20 */	addi r3, r1, 0x20
/* 802AA098 0029FE18  48 00 02 2D */	bl hkTransform$7__ct_9734
/* 802AA09C 0029FE1C  38 61 00 20 */	addi r3, r1, 0x20
/* 802AA0A0 0029FE20  38 81 00 70 */	addi r4, r1, 0x70
/* 802AA0A4 0029FE24  4B FD D2 51 */	bl hkTransform$7setInverse
/* 802AA0A8 0029FE28  7F 23 CB 78 */	mr r3, r25
/* 802AA0AC 0029FE2C  7F C4 F3 78 */	mr r4, r30
/* 802AA0B0 0029FE30  7F 47 D3 78 */	mr r7, r26
/* 802AA0B4 0029FE34  38 A1 00 20 */	addi r5, r1, 0x20
/* 802AA0B8 0029FE38  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 802AA0BC 0029FE3C  39 1D 00 10 */	addi r8, r29, 0x10
/* 802AA0C0 0029FE40  39 21 00 D0 */	addi r9, r1, 0xd0
/* 802AA0C4 0029FE44  4B FF CA D1 */	bl hkBvTreeAgent$7calcAabbAndQueryTree
/* 802AA0C8 0029FE48  7C 7C 1B 78 */	mr r28, r3
/* 802AA0CC 0029FE4C  48 00 01 A9 */	bl hkMonitorStream$7getInstance
/* 802AA0D0 0029FE50  7C 7B 1B 78 */	mr r27, r3
/* 802AA0D4 0029FE54  48 00 01 AD */	bl hkMonitorStream$7memoryAvailable
/* 802AA0D8 0029FE58  54 60 46 3E */	srwi r0, r3, 0x18
/* 802AA0DC 0029FE5C  38 61 00 14 */	addi r3, r1, 0x14
/* 802AA0E0 0029FE60  98 01 00 14 */	stb r0, 0x14(r1)
/* 802AA0E4 0029FE64  4B FF 6A F5 */	bl hkBool$7__opb
/* 802AA0E8 0029FE68  2C 03 00 00 */	cmpwi r3, 0
/* 802AA0EC 0029FE6C  41 82 00 30 */	beq lbl_802AA11C
/* 802AA0F0 0029FE70  7F 63 DB 78 */	mr r3, r27
/* 802AA0F4 0029FE74  48 00 01 A9 */	bl hkMonitorStream$7getEnd
/* 802AA0F8 0029FE78  3C 80 80 41 */	lis r4, lbl_8040FBE8@ha
/* 802AA0FC 0029FE7C  7C 7A 1B 78 */	mr r26, r3
/* 802AA100 0029FE80  38 84 FB E8 */	addi r4, r4, lbl_8040FBE8@l
/* 802AA104 0029FE84  38 04 00 16 */	addi r0, r4, 0x16
/* 802AA108 0029FE88  90 03 00 00 */	stw r0, 0(r3)
/* 802AA10C 0029FE8C  48 00 01 99 */	bl hkMonitorStream12TimerCommandFv$7setTime
/* 802AA110 0029FE90  7F 63 DB 78 */	mr r3, r27
/* 802AA114 0029FE94  38 9A 00 0C */	addi r4, r26, 0xc
/* 802AA118 0029FE98  48 00 01 99 */	bl hkMonitorStream$7setEnd
lbl_802AA11C:
/* 802AA11C 0029FE9C  2C 1C 00 00 */	cmpwi r28, 0
/* 802AA120 0029FEA0  40 82 00 B4 */	bne lbl_802AA1D4
/* 802AA124 0029FEA4  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA128 0029FEA8  48 00 02 1D */	bl hkArray$0Ui$1$7getSize
/* 802AA12C 0029FEAC  7C 60 16 70 */	srawi r0, r3, 2
/* 802AA130 0029FEB0  38 7D 00 30 */	addi r3, r29, 0x30
/* 802AA134 0029FEB4  7C 80 01 94 */	addze r4, r0
/* 802AA138 0029FEB8  3B 84 00 01 */	addi r28, r4, 1
/* 802AA13C 0029FEBC  48 00 02 11 */	bl hkArray$0Q214hkAgent1nTrack14SectorDirEntry$1$7getSize
/* 802AA140 0029FEC0  7C 03 E0 50 */	subf r0, r3, r28
/* 802AA144 0029FEC4  54 1A 48 2C */	slwi r26, r0, 9
/* 802AA148 0029FEC8  4B FF F9 0D */	bl hkMemory$7getInstance
/* 802AA14C 0029FECC  48 00 01 85 */	bl hkMemory$7getAvailableMemory
/* 802AA150 0029FED0  7C 1A 18 00 */	cmpw r26, r3
/* 802AA154 0029FED4  40 81 00 20 */	ble lbl_802AA174
/* 802AA158 0029FED8  3B 80 00 01 */	li r28, 1
/* 802AA15C 0029FEDC  4B FF F8 F9 */	bl hkMemory$7getInstance
/* 802AA160 0029FEE0  93 83 00 04 */	stw r28, 4(r3)
/* 802AA164 0029FEE4  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA168 0029FEE8  38 80 FF FF */	li r4, -1
/* 802AA16C 0029FEEC  4B FF AC 39 */	bl hkInplaceArray$0Ui$4128$1$7__dt
/* 802AA170 0029FEF0  48 00 00 E8 */	b lbl_802AA258
lbl_802AA174:
/* 802AA174 0029FEF4  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA178 0029FEF8  48 00 01 CD */	bl hkArray$0Ui$1$7getSize
/* 802AA17C 0029FEFC  7C 7C 1B 78 */	mr r28, r3
/* 802AA180 0029FF00  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA184 0029FF04  48 00 01 D1 */	bl hkArray$0Ui$1$7begin
/* 802AA188 0029FF08  7F 84 E3 78 */	mr r4, r28
/* 802AA18C 0029FF0C  4B FF AA 89 */	bl hkAlgorithm$7quickSort$0Ui$1
/* 802AA190 0029FF10  7F C3 F3 78 */	mr r3, r30
/* 802AA194 0029FF14  48 00 01 35 */	bl hkCdBody$7getShape
/* 802AA198 0029FF18  48 00 01 65 */	bl hkBvTreeShape$7getShapeCollection
/* 802AA19C 0029FF1C  7C 7A 1B 78 */	mr r26, r3
/* 802AA1A0 0029FF20  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA1A4 0029FF24  48 00 01 A1 */	bl hkArray$0Ui$1$7getSize
/* 802AA1A8 0029FF28  7C 7E 1B 78 */	mr r30, r3
/* 802AA1AC 0029FF2C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA1B0 0029FF30  48 00 01 A5 */	bl hkArray$0Ui$1$7begin
/* 802AA1B4 0029FF34  7C 66 1B 78 */	mr r6, r3
/* 802AA1B8 0029FF38  7F 45 D3 78 */	mr r5, r26
/* 802AA1BC 0029FF3C  7F C7 F3 78 */	mr r7, r30
/* 802AA1C0 0029FF40  7F E8 FB 78 */	mr r8, r31
/* 802AA1C4 0029FF44  38 7D 00 30 */	addi r3, r29, 0x30
/* 802AA1C8 0029FF48  38 81 00 60 */	addi r4, r1, 0x60
/* 802AA1CC 0029FF4C  48 05 2B 25 */	bl hkAgent1nMachine_Process
/* 802AA1D0 0029FF50  48 00 00 2C */	b lbl_802AA1FC
lbl_802AA1D4:
/* 802AA1D4 0029FF54  7F C3 F3 78 */	mr r3, r30
/* 802AA1D8 0029FF58  48 00 00 F1 */	bl hkCdBody$7getShape
/* 802AA1DC 0029FF5C  48 00 01 21 */	bl hkBvTreeShape$7getShapeCollection
/* 802AA1E0 0029FF60  7C 65 1B 78 */	mr r5, r3
/* 802AA1E4 0029FF64  7F E8 FB 78 */	mr r8, r31
/* 802AA1E8 0029FF68  38 7D 00 30 */	addi r3, r29, 0x30
/* 802AA1EC 0029FF6C  38 81 00 60 */	addi r4, r1, 0x60
/* 802AA1F0 0029FF70  38 C0 00 00 */	li r6, 0
/* 802AA1F4 0029FF74  38 E0 00 00 */	li r7, 0
/* 802AA1F8 0029FF78  48 05 2A F9 */	bl hkAgent1nMachine_Process
lbl_802AA1FC:
/* 802AA1FC 0029FF7C  48 00 00 79 */	bl hkMonitorStream$7getInstance
/* 802AA200 0029FF80  7C 7A 1B 78 */	mr r26, r3
/* 802AA204 0029FF84  48 00 00 7D */	bl hkMonitorStream$7memoryAvailable
/* 802AA208 0029FF88  54 60 46 3E */	srwi r0, r3, 0x18
/* 802AA20C 0029FF8C  38 61 00 10 */	addi r3, r1, 0x10
/* 802AA210 0029FF90  98 01 00 10 */	stb r0, 0x10(r1)
/* 802AA214 0029FF94  4B FF 69 C5 */	bl hkBool$7__opb
/* 802AA218 0029FF98  2C 03 00 00 */	cmpwi r3, 0
/* 802AA21C 0029FF9C  41 82 00 30 */	beq lbl_802AA24C
/* 802AA220 0029FFA0  7F 43 D3 78 */	mr r3, r26
/* 802AA224 0029FFA4  48 00 00 79 */	bl hkMonitorStream$7getEnd
/* 802AA228 0029FFA8  3C 80 80 41 */	lis r4, lbl_8040FBE8@ha
/* 802AA22C 0029FFAC  7C 7B 1B 78 */	mr r27, r3
/* 802AA230 0029FFB0  38 84 FB E8 */	addi r4, r4, lbl_8040FBE8@l
/* 802AA234 0029FFB4  38 04 00 1F */	addi r0, r4, 0x1f
/* 802AA238 0029FFB8  90 03 00 00 */	stw r0, 0(r3)
/* 802AA23C 0029FFBC  48 00 00 69 */	bl hkMonitorStream12TimerCommandFv$7setTime
/* 802AA240 0029FFC0  7F 43 D3 78 */	mr r3, r26
/* 802AA244 0029FFC4  38 9B 00 0C */	addi r4, r27, 0xc
/* 802AA248 0029FFC8  48 00 00 69 */	bl hkMonitorStream$7setEnd
lbl_802AA24C:
/* 802AA24C 0029FFCC  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802AA250 0029FFD0  38 80 FF FF */	li r4, -1
/* 802AA254 0029FFD4  4B FF AB 51 */	bl hkInplaceArray$0Ui$4128$1$7__dt
lbl_802AA258:
/* 802AA258 0029FFD8  81 41 00 00 */	lwz r10, 0(r1)
/* 802AA25C 0029FFDC  7D 4B 53 78 */	mr r11, r10
/* 802AA260 0029FFE0  48 14 71 05 */	bl _restgpr_25
/* 802AA264 0029FFE4  80 0A 00 04 */	lwz r0, 4(r10)
/* 802AA268 0029FFE8  7C 08 03 A6 */	mtlr r0
/* 802AA26C 0029FFEC  7D 41 53 78 */	mr r1, r10
/* 802AA270 0029FFF0  4E 80 00 20 */	blr 

.global hkMonitorStream$7getInstance
hkMonitorStream$7getInstance:
/* 802AA274 0029FFF4  3C 60 80 53 */	lis r3, lbl_80532448@ha
/* 802AA278 0029FFF8  38 63 24 48 */	addi r3, r3, lbl_80532448@l
/* 802AA27C 0029FFFC  4E 80 00 20 */	blr 

.global hkMonitorStream$7memoryAvailable
hkMonitorStream$7memoryAvailable:
/* 802AA280 002A0000  80 03 00 04 */	lwz r0, 4(r3)
/* 802AA284 002A0004  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802AA288 002A0008  7C 60 02 78 */	xor r0, r3, r0
/* 802AA28C 002A000C  7C 00 00 34 */	cntlzw r0, r0
/* 802AA290 002A0010  7C 60 00 30 */	slw r0, r3, r0
/* 802AA294 002A0014  54 03 C9 CE */	rlwinm r3, r0, 0x19, 7, 7
/* 802AA298 002A0018  4E 80 00 20 */	blr 

.global hkMonitorStream$7getEnd
hkMonitorStream$7getEnd:
/* 802AA29C 002A001C  80 63 00 04 */	lwz r3, 4(r3)
/* 802AA2A0 002A0020  4E 80 00 20 */	blr 

.global hkMonitorStream12TimerCommandFv$7setTime
hkMonitorStream12TimerCommandFv$7setTime:
/* 802AA2A4 002A0024  7C 0C 42 E6 */	mftb r0, 0x10c
/* 802AA2A8 002A0028  90 03 00 04 */	stw r0, 4(r3)
/* 802AA2AC 002A002C  4E 80 00 20 */	blr 

.global hkMonitorStream$7setEnd
hkMonitorStream$7setEnd:
/* 802AA2B0 002A0030  90 83 00 04 */	stw r4, 4(r3)
/* 802AA2B4 002A0034  4E 80 00 20 */	blr 

.global hkCdBody$7getMotionState
hkCdBody$7getMotionState:
/* 802AA2B8 002A0038  80 63 00 08 */	lwz r3, 8(r3)
/* 802AA2BC 002A003C  4E 80 00 20 */	blr 

.global hkMotionState$7getTransform
hkMotionState$7getTransform:
/* 802AA2C0 002A0040  4E 80 00 20 */	blr 

.global hkTransform$7__ct_9734
hkTransform$7__ct_9734:
/* 802AA2C4 002A0044  4E 80 00 20 */	blr 

.global hkCdBody$7getShape
hkCdBody$7getShape:
/* 802AA2C8 002A0048  80 63 00 00 */	lwz r3, 0(r3)
/* 802AA2CC 002A004C  4E 80 00 20 */	blr 

.global hkMemory$7getAvailableMemory
hkMemory$7getAvailableMemory:
/* 802AA2D0 002A0050  80 AD CA 98 */	lwz r5, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802AA2D4 002A0054  80 85 00 28 */	lwz r4, 0x28(r5)
/* 802AA2D8 002A0058  80 65 00 14 */	lwz r3, 0x14(r5)
/* 802AA2DC 002A005C  80 05 00 08 */	lwz r0, 8(r5)
/* 802AA2E0 002A0060  7C 64 1A 14 */	add r3, r4, r3
/* 802AA2E4 002A0064  7C 00 18 00 */	cmpw r0, r3
/* 802AA2E8 002A0068  41 81 00 0C */	bgt lbl_802AA2F4
/* 802AA2EC 002A006C  38 60 00 00 */	li r3, 0
/* 802AA2F0 002A0070  4E 80 00 20 */	blr 
lbl_802AA2F4:
/* 802AA2F4 002A0074  7C 63 00 50 */	subf r3, r3, r0
/* 802AA2F8 002A0078  4E 80 00 20 */	blr 

.global hkBvTreeShape$7getShapeCollection
hkBvTreeShape$7getShapeCollection:
/* 802AA2FC 002A007C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802AA300 002A0080  4E 80 00 20 */	blr 

.global hkAgent3ProcessInput$7__ct
hkAgent3ProcessInput$7__ct:
/* 802AA304 002A0084  4E 80 00 20 */	blr 

.global hkInplaceArray$0Ui$4128$1$7__ct
hkInplaceArray$0Ui$4128$1$7__ct:
/* 802AA308 002A0088  3C A0 80 00 */	lis r5, 0x80000080@ha
/* 802AA30C 002A008C  38 C3 00 0C */	addi r6, r3, 0xc
/* 802AA310 002A0090  38 05 00 80 */	addi r0, r5, 0x80000080@l
/* 802AA314 002A0094  90 C3 00 00 */	stw r6, 0(r3)
/* 802AA318 002A0098  90 83 00 04 */	stw r4, 4(r3)
/* 802AA31C 002A009C  90 03 00 08 */	stw r0, 8(r3)
/* 802AA320 002A00A0  4E 80 00 20 */	blr 

.global hkArray$0Ui$1$7pushBackUnchecked
hkArray$0Ui$1$7pushBackUnchecked:
/* 802AA324 002A00A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 802AA328 002A00A8  80 E4 00 00 */	lwz r7, 0(r4)
/* 802AA32C 002A00AC  80 C3 00 00 */	lwz r6, 0(r3)
/* 802AA330 002A00B0  54 A0 10 3A */	slwi r0, r5, 2
/* 802AA334 002A00B4  38 85 00 01 */	addi r4, r5, 1
/* 802AA338 002A00B8  7C E6 01 2E */	stwx r7, r6, r0
/* 802AA33C 002A00BC  90 83 00 04 */	stw r4, 4(r3)
/* 802AA340 002A00C0  4E 80 00 20 */	blr 

.global hkArray$0Ui$1$7getSize
hkArray$0Ui$1$7getSize:
/* 802AA344 002A00C4  80 63 00 04 */	lwz r3, 4(r3)
/* 802AA348 002A00C8  4E 80 00 20 */	blr 

.global hkArray$0Q214hkAgent1nTrack14SectorDirEntry$1$7getSize
hkArray$0Q214hkAgent1nTrack14SectorDirEntry$1$7getSize:
/* 802AA34C 002A00CC  80 63 00 04 */	lwz r3, 4(r3)
/* 802AA350 002A00D0  4E 80 00 20 */	blr 

.global hkArray$0Ui$1$7begin
hkArray$0Ui$1$7begin:
/* 802AA354 002A00D4  80 63 00 00 */	lwz r3, 0(r3)
/* 802AA358 002A00D8  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7updateShapeCollectionFilter
hkBvTreeStreamAgent$7updateShapeCollectionFilter:
/* 802AA35C 002A00DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA360 002A00E0  7C 08 02 A6 */	mflr r0
/* 802AA364 002A00E4  C0 02 AB E0 */	lfs f0, lbl_805A3F00-_SDA2_BASE_(r2)
/* 802AA368 002A00E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA36C 002A00EC  80 E5 00 00 */	lwz r7, 0(r5)
/* 802AA370 002A00F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802AA374 002A00F4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802AA378 002A00F8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802AA37C 002A00FC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802AA380 002A0100  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802AA384 002A0104  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802AA388 002A0108  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802AA38C 002A010C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802AA390 002A0110  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 802AA394 002A0114  90 81 00 08 */	stw r4, 8(r1)
/* 802AA398 002A0118  38 81 00 08 */	addi r4, r1, 8
/* 802AA39C 002A011C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802AA3A0 002A0120  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802AA3A4 002A0124  80 03 00 08 */	lwz r0, 8(r3)
/* 802AA3A8 002A0128  38 63 00 30 */	addi r3, r3, 0x30
/* 802AA3AC 002A012C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AA3B0 002A0130  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AA3B4 002A0134  48 05 46 A1 */	bl hkAgent1nMachine_UpdateShapeCollectionFilter
/* 802AA3B8 002A0138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA3BC 002A013C  7C 08 03 A6 */	mtlr r0
/* 802AA3C0 002A0140  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA3C4 002A0144  4E 80 00 20 */	blr 

.global hkBvTreeStreamAgent$7invalidateTim
hkBvTreeStreamAgent$7invalidateTim:
/* 802AA3C8 002A0148  38 63 00 30 */	addi r3, r3, 0x30
/* 802AA3CC 002A014C  48 05 24 58 */	b hkAgent1nMachine_InvalidateTim

.global hkBvTreeStreamAgent$7warpTime
hkBvTreeStreamAgent$7warpTime:
/* 802AA3D0 002A0150  38 63 00 30 */	addi r3, r3, 0x30
/* 802AA3D4 002A0154  48 05 25 B4 */	b hkAgent1nMachine_WarpTime

.global hkBvTreeStreamAgent$7calcStatistics
hkBvTreeStreamAgent$7calcStatistics:
/* 802AA3D8 002A0158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA3DC 002A015C  7C 08 02 A6 */	mflr r0
/* 802AA3E0 002A0160  38 A0 00 08 */	li r5, 8
/* 802AA3E4 002A0164  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA3E8 002A0168  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AA3EC 002A016C  3F E0 80 41 */	lis r31, lbl_8040FBE8@ha
/* 802AA3F0 002A0170  3B FF FB E8 */	addi r31, r31, lbl_8040FBE8@l
/* 802AA3F4 002A0174  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AA3F8 002A0178  7C 9E 23 78 */	mr r30, r4
/* 802AA3FC 002A017C  38 9F 00 22 */	addi r4, r31, 0x22
/* 802AA400 002A0180  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AA404 002A0184  7C 7D 1B 78 */	mr r29, r3
/* 802AA408 002A0188  7F C3 F3 78 */	mr r3, r30
/* 802AA40C 002A018C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802AA410 002A0190  7F A6 EB 78 */	mr r6, r29
/* 802AA414 002A0194  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802AA418 002A0198  7D 89 03 A6 */	mtctr r12
/* 802AA41C 002A019C  4E 80 04 21 */	bctrl 
/* 802AA420 002A01A0  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 802AA424 002A01A4  38 9F 00 2D */	addi r4, r31, 0x2d
/* 802AA428 002A01A8  54 A0 00 01 */	rlwinm. r0, r5, 0, 0, 0
/* 802AA42C 002A01AC  40 82 00 2C */	bne lbl_802AA458
/* 802AA430 002A01B0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802AA434 002A01B4  54 A8 10 3A */	slwi r8, r5, 2
/* 802AA438 002A01B8  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802AA43C 002A01BC  7F C3 F3 78 */	mr r3, r30
/* 802AA440 002A01C0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AA444 002A01C4  38 A0 00 08 */	li r5, 8
/* 802AA448 002A01C8  54 07 10 3A */	slwi r7, r0, 2
/* 802AA44C 002A01CC  80 DD 00 30 */	lwz r6, 0x30(r29)
/* 802AA450 002A01D0  7D 89 03 A6 */	mtctr r12
/* 802AA454 002A01D4  4E 80 04 21 */	bctrl 
lbl_802AA458:
/* 802AA458 002A01D8  7F C4 F3 78 */	mr r4, r30
/* 802AA45C 002A01DC  38 7D 00 30 */	addi r3, r29, 0x30
/* 802AA460 002A01E0  48 05 46 01 */	bl hkAgentMachineUtil$7calc1nStatistics
/* 802AA464 002A01E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA468 002A01E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AA46C 002A01EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AA470 002A01F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AA474 002A01F4  7C 08 03 A6 */	mtlr r0
/* 802AA478 002A01F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA47C 002A01FC  4E 80 00 20 */	blr 

.global hkSymmetricAgent$019hkBvTreeStreamAgent$1$7linearCast
hkSymmetricAgent$019hkBvTreeStreamAgent$1$7linearCast:
/* 802AA480 002A0200  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802AA484 002A0204  7C 2C 0B 78 */	mr r12, r1
/* 802AA488 002A0208  21 6B FF 60 */	subfic r11, r11, -160
/* 802AA48C 002A020C  7C 21 59 6E */	stwux r1, r1, r11
/* 802AA490 002A0210  7C 08 02 A6 */	mflr r0
/* 802AA494 002A0214  3D 20 80 48 */	lis r9, lbl_80487188@ha
/* 802AA498 002A0218  C0 22 AB E4 */	lfs f1, lbl_805A3F04-_SDA2_BASE_(r2)
/* 802AA49C 002A021C  90 0C 00 04 */	stw r0, 4(r12)
/* 802AA4A0 002A0220  39 29 71 88 */	addi r9, r9, lbl_80487188@l
/* 802AA4A4 002A0224  2C 08 00 00 */	cmpwi r8, 0
/* 802AA4A8 002A0228  7C 8B 23 78 */	mr r11, r4
/* 802AA4AC 002A022C  80 06 00 00 */	lwz r0, 0(r6)
/* 802AA4B0 002A0230  39 41 00 40 */	addi r10, r1, 0x40
/* 802AA4B4 002A0234  90 01 00 70 */	stw r0, 0x70(r1)
/* 802AA4B8 002A0238  80 06 00 04 */	lwz r0, 4(r6)
/* 802AA4BC 002A023C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802AA4C0 002A0240  C0 06 00 08 */	lfs f0, 8(r6)
/* 802AA4C4 002A0244  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 802AA4C8 002A0248  88 06 00 0C */	lbz r0, 0xc(r6)
/* 802AA4CC 002A024C  98 01 00 7C */	stb r0, 0x7c(r1)
/* 802AA4D0 002A0250  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 802AA4D4 002A0254  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 802AA4D8 002A0258  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 802AA4DC 002A025C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 802AA4E0 002A0260  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 802AA4E4 002A0264  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 802AA4E8 002A0268  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 802AA4EC 002A026C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 802AA4F0 002A0270  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 802AA4F4 002A0274  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 802AA4F8 002A0278  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 802AA4FC 002A027C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 802AA500 002A0280  80 06 00 28 */	lwz r0, 0x28(r6)
/* 802AA504 002A0284  90 01 00 98 */	stw r0, 0x98(r1)
/* 802AA508 002A0288  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 802AA50C 002A028C  FC 00 00 50 */	fneg f0, f0
/* 802AA510 002A0290  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 802AA514 002A0294  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 802AA518 002A0298  FC 00 00 50 */	fneg f0, f0
/* 802AA51C 002A029C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 802AA520 002A02A0  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 802AA524 002A02A4  FC 00 00 50 */	fneg f0, f0
/* 802AA528 002A02A8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 802AA52C 002A02AC  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 802AA530 002A02B0  FC 00 00 50 */	fneg f0, f0
/* 802AA534 002A02B4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 802AA538 002A02B8  91 21 00 40 */	stw r9, 0x40(r1)
/* 802AA53C 002A02BC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 802AA540 002A02C0  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 802AA544 002A02C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802AA548 002A02C8  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 802AA54C 002A02CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802AA550 002A02D0  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 802AA554 002A02D4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 802AA558 002A02D8  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 802AA55C 002A02DC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 802AA560 002A02E0  90 E1 00 60 */	stw r7, 0x60(r1)
/* 802AA564 002A02E4  41 82 00 50 */	beq lbl_802AA5B4
/* 802AA568 002A02E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802AA56C 002A02EC  7C A4 2B 78 */	mr r4, r5
/* 802AA570 002A02F0  38 01 00 10 */	addi r0, r1, 0x10
/* 802AA574 002A02F4  7D 65 5B 78 */	mr r5, r11
/* 802AA578 002A02F8  91 21 00 10 */	stw r9, 0x10(r1)
/* 802AA57C 002A02FC  7D 47 53 78 */	mr r7, r10
/* 802AA580 002A0300  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 802AA584 002A0304  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802AA588 002A0308  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 802AA58C 002A030C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802AA590 002A0310  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 802AA594 002A0314  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802AA598 002A0318  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 802AA59C 002A031C  38 C1 00 70 */	addi r6, r1, 0x70
/* 802AA5A0 002A0320  91 01 00 30 */	stw r8, 0x30(r1)
/* 802AA5A4 002A0324  7C 08 03 78 */	mr r8, r0
/* 802AA5A8 002A0328  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802AA5AC 002A032C  4B FF F9 6D */	bl hkBvTreeStreamAgent$7linearCast
/* 802AA5B0 002A0330  48 00 00 1C */	b lbl_802AA5CC
lbl_802AA5B4:
/* 802AA5B4 002A0334  7C A4 2B 78 */	mr r4, r5
/* 802AA5B8 002A0338  7D 65 5B 78 */	mr r5, r11
/* 802AA5BC 002A033C  7D 47 53 78 */	mr r7, r10
/* 802AA5C0 002A0340  38 C1 00 70 */	addi r6, r1, 0x70
/* 802AA5C4 002A0344  39 00 00 00 */	li r8, 0
/* 802AA5C8 002A0348  4B FF F9 51 */	bl hkBvTreeStreamAgent$7linearCast
lbl_802AA5CC:
/* 802AA5CC 002A034C  81 41 00 00 */	lwz r10, 0(r1)
/* 802AA5D0 002A0350  80 0A 00 04 */	lwz r0, 4(r10)
/* 802AA5D4 002A0354  7C 08 03 A6 */	mtlr r0
/* 802AA5D8 002A0358  7D 41 53 78 */	mr r1, r10
/* 802AA5DC 002A035C  4E 80 00 20 */	blr 

.global hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7getPenetrations
hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7getPenetrations:
/* 802AA5E0 002A0360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA5E4 002A0364  7C 08 02 A6 */	mflr r0
/* 802AA5E8 002A0368  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802AA5EC 002A036C  7C 89 23 78 */	mr r9, r4
/* 802AA5F0 002A0370  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA5F4 002A0374  38 00 00 00 */	li r0, 0
/* 802AA5F8 002A0378  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802AA5FC 002A037C  7C A4 2B 78 */	mr r4, r5
/* 802AA600 002A0380  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AA604 002A0384  7D 25 4B 78 */	mr r5, r9
/* 802AA608 002A0388  38 E1 00 08 */	addi r7, r1, 8
/* 802AA60C 002A038C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802AA610 002A0390  91 01 00 08 */	stw r8, 8(r1)
/* 802AA614 002A0394  4B FF F8 DD */	bl hkBvTreeStreamAgent$7getPenetrations
/* 802AA618 002A0398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA61C 002A039C  7C 08 03 A6 */	mtlr r0
/* 802AA620 002A03A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA624 002A03A4  4E 80 00 20 */	blr 

.global hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7getClosestPoints
hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7getClosestPoints:
/* 802AA628 002A03A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA62C 002A03AC  7C 08 02 A6 */	mflr r0
/* 802AA630 002A03B0  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802AA634 002A03B4  C0 02 AB E4 */	lfs f0, lbl_805A3F04-_SDA2_BASE_(r2)
/* 802AA638 002A03B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA63C 002A03BC  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802AA640 002A03C0  7C 80 23 78 */	mr r0, r4
/* 802AA644 002A03C4  7C A4 2B 78 */	mr r4, r5
/* 802AA648 002A03C8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AA64C 002A03CC  7C 05 03 78 */	mr r5, r0
/* 802AA650 002A03D0  38 E1 00 08 */	addi r7, r1, 8
/* 802AA654 002A03D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802AA658 002A03D8  91 01 00 08 */	stw r8, 8(r1)
/* 802AA65C 002A03DC  4B FF F8 A9 */	bl hkBvTreeStreamAgent$7getClosestPoints
/* 802AA660 002A03E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA664 002A03E4  7C 08 03 A6 */	mtlr r0
/* 802AA668 002A03E8  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA66C 002A03EC  4E 80 00 20 */	blr 

.global hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7processCollision
hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7processCollision:
/* 802AA670 002A03F0  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802AA674 002A03F4  7C 2C 0B 78 */	mr r12, r1
/* 802AA678 002A03F8  21 6B FF C0 */	subfic r11, r11, -64
/* 802AA67C 002A03FC  7C 21 59 6E */	stwux r1, r1, r11
/* 802AA680 002A0400  7C 08 02 A6 */	mflr r0
/* 802AA684 002A0404  90 0C 00 04 */	stw r0, 4(r12)
/* 802AA688 002A0408  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802AA68C 002A040C  F3 EC 0F F8 */	psq_st f31, -8(r12), 0, qr0
/* 802AA690 002A0410  7C 80 23 78 */	mr r0, r4
/* 802AA694 002A0414  7C A4 2B 78 */	mr r4, r5
/* 802AA698 002A0418  93 EC FF EC */	stw r31, -0x14(r12)
/* 802AA69C 002A041C  7C FF 3B 78 */	mr r31, r7
/* 802AA6A0 002A0420  7C 05 03 78 */	mr r5, r0
/* 802AA6A4 002A0424  93 CC FF E8 */	stw r30, -0x18(r12)
/* 802AA6A8 002A0428  83 C7 00 00 */	lwz r30, 0(r7)
/* 802AA6AC 002A042C  C3 E7 30 30 */	lfs f31, 0x3030(r7)
/* 802AA6B0 002A0430  4B FF F8 D9 */	bl hkBvTreeStreamAgent$7processCollision
/* 802AA6B4 002A0434  48 00 00 80 */	b lbl_802AA734
lbl_802AA6B8:
/* 802AA6B8 002A0438  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 802AA6BC 002A043C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 802AA6C0 002A0440  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802AA6C4 002A0444  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802AA6C8 002A0448  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 802AA6CC 002A044C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802AA6D0 002A0450  D0 1E 00 00 */	stfs f0, 0(r30)
/* 802AA6D4 002A0454  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 802AA6D8 002A0458  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802AA6DC 002A045C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802AA6E0 002A0460  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 802AA6E4 002A0464  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802AA6E8 002A0468  D0 1E 00 04 */	stfs f0, 4(r30)
/* 802AA6EC 002A046C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 802AA6F0 002A0470  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802AA6F4 002A0474  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 802AA6F8 002A0478  D0 1E 00 08 */	stfs f0, 8(r30)
/* 802AA6FC 002A047C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 802AA700 002A0480  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802AA704 002A0484  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 802AA708 002A0488  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 802AA70C 002A048C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 802AA710 002A0490  FC 00 00 50 */	fneg f0, f0
/* 802AA714 002A0494  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 802AA718 002A0498  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 802AA71C 002A049C  FC 00 00 50 */	fneg f0, f0
/* 802AA720 002A04A0  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 802AA724 002A04A4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 802AA728 002A04A8  FC 00 00 50 */	fneg f0, f0
/* 802AA72C 002A04AC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802AA730 002A04B0  3B DE 00 30 */	addi r30, r30, 0x30
lbl_802AA734:
/* 802AA734 002A04B4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AA738 002A04B8  7C 1E 00 40 */	cmplw r30, r0
/* 802AA73C 002A04BC  41 80 FF 7C */	blt lbl_802AA6B8
/* 802AA740 002A04C0  C0 1F 30 30 */	lfs f0, 0x3030(r31)
/* 802AA744 002A04C4  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 802AA748 002A04C8  41 82 00 9C */	beq lbl_802AA7E4
/* 802AA74C 002A04CC  C0 1F 30 20 */	lfs f0, 0x3020(r31)
/* 802AA750 002A04D0  88 DF 30 42 */	lbz r6, 0x3042(r31)
/* 802AA754 002A04D4  88 BF 30 43 */	lbz r5, 0x3043(r31)
/* 802AA758 002A04D8  FC 60 00 50 */	fneg f3, f0
/* 802AA75C 002A04DC  C0 3F 30 24 */	lfs f1, 0x3024(r31)
/* 802AA760 002A04E0  98 DF 30 43 */	stb r6, 0x3043(r31)
/* 802AA764 002A04E4  88 DF 30 40 */	lbz r6, 0x3040(r31)
/* 802AA768 002A04E8  FC 40 08 50 */	fneg f2, f1
/* 802AA76C 002A04EC  88 9F 30 41 */	lbz r4, 0x3041(r31)
/* 802AA770 002A04F0  C0 1F 30 28 */	lfs f0, 0x3028(r31)
/* 802AA774 002A04F4  7C C0 07 74 */	extsb r0, r6
/* 802AA778 002A04F8  7C 83 07 74 */	extsb r3, r4
/* 802AA77C 002A04FC  D0 7F 30 20 */	stfs f3, 0x3020(r31)
/* 802AA780 002A0500  FC 20 00 50 */	fneg f1, f0
/* 802AA784 002A0504  7C 63 02 14 */	add r3, r3, r0
/* 802AA788 002A0508  38 63 FF FF */	addi r3, r3, -1
/* 802AA78C 002A050C  D0 5F 30 24 */	stfs f2, 0x3024(r31)
/* 802AA790 002A0510  54 60 08 3C */	slwi r0, r3, 1
/* 802AA794 002A0514  A0 FF 30 38 */	lhz r7, 0x3038(r31)
/* 802AA798 002A0518  D0 3F 30 28 */	stfs f1, 0x3028(r31)
/* 802AA79C 002A051C  7C 7F 02 14 */	add r3, r31, r0
/* 802AA7A0 002A0520  98 BF 30 42 */	stb r5, 0x3042(r31)
/* 802AA7A4 002A0524  98 9F 30 40 */	stb r4, 0x3040(r31)
/* 802AA7A8 002A0528  98 DF 30 41 */	stb r6, 0x3041(r31)
/* 802AA7AC 002A052C  A0 03 30 38 */	lhz r0, 0x3038(r3)
/* 802AA7B0 002A0530  B0 1F 30 38 */	sth r0, 0x3038(r31)
/* 802AA7B4 002A0534  B0 E3 30 38 */	sth r7, 0x3038(r3)
/* 802AA7B8 002A0538  88 7F 30 40 */	lbz r3, 0x3040(r31)
/* 802AA7BC 002A053C  88 1F 30 41 */	lbz r0, 0x3041(r31)
/* 802AA7C0 002A0540  7C 63 07 74 */	extsb r3, r3
/* 802AA7C4 002A0544  7C 00 07 74 */	extsb r0, r0
/* 802AA7C8 002A0548  7C 60 00 38 */	and r0, r3, r0
/* 802AA7CC 002A054C  2C 00 00 02 */	cmpwi r0, 2
/* 802AA7D0 002A0550  40 82 00 14 */	bne lbl_802AA7E4
/* 802AA7D4 002A0554  A0 FF 30 3A */	lhz r7, 0x303a(r31)
/* 802AA7D8 002A0558  A0 1F 30 3C */	lhz r0, 0x303c(r31)
/* 802AA7DC 002A055C  B0 1F 30 3A */	sth r0, 0x303a(r31)
/* 802AA7E0 002A0560  B0 FF 30 3C */	sth r7, 0x303c(r31)
lbl_802AA7E4:
/* 802AA7E4 002A0564  81 41 00 00 */	lwz r10, 0(r1)
/* 802AA7E8 002A0568  38 00 FF F8 */	li r0, -8
/* 802AA7EC 002A056C  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802AA7F0 002A0570  80 0A 00 04 */	lwz r0, 4(r10)
/* 802AA7F4 002A0574  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802AA7F8 002A0578  83 EA FF EC */	lwz r31, -0x14(r10)
/* 802AA7FC 002A057C  83 CA FF E8 */	lwz r30, -0x18(r10)
/* 802AA800 002A0580  7C 08 03 A6 */	mtlr r0
/* 802AA804 002A0584  7D 41 53 78 */	mr r1, r10
/* 802AA808 002A0588  4E 80 00 20 */	blr 

.global hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7updateShapeCollectionFilter
hkSymmetricAgentLinearCast$019hkBvTreeStreamAgent$1$7updateShapeCollectionFilter:
/* 802AA80C 002A058C  7C 80 23 78 */	mr r0, r4
/* 802AA810 002A0590  7C A4 2B 78 */	mr r4, r5
/* 802AA814 002A0594  7C 05 03 78 */	mr r5, r0
/* 802AA818 002A0598  4B FF FB 44 */	b hkBvTreeStreamAgent$7updateShapeCollectionFilter

.global hkSymmetricAgent$019hkBvTreeStreamAgent$1$7__dt
hkSymmetricAgent$019hkBvTreeStreamAgent$1$7__dt:
/* 802AA81C 002A059C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AA820 002A05A0  7C 08 02 A6 */	mflr r0
/* 802AA824 002A05A4  2C 03 00 00 */	cmpwi r3, 0
/* 802AA828 002A05A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA82C 002A05AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AA830 002A05B0  7C 9F 23 78 */	mr r31, r4
/* 802AA834 002A05B4  93 C1 00 08 */	stw r30, 8(r1)
/* 802AA838 002A05B8  7C 7E 1B 78 */	mr r30, r3
/* 802AA83C 002A05BC  41 82 00 68 */	beq lbl_802AA8A4
/* 802AA840 002A05C0  41 82 00 3C */	beq lbl_802AA87C
/* 802AA844 002A05C4  41 82 00 38 */	beq lbl_802AA87C
/* 802AA848 002A05C8  34 03 00 30 */	addic. r0, r3, 0x30
/* 802AA84C 002A05CC  41 82 00 30 */	beq lbl_802AA87C
/* 802AA850 002A05D0  41 82 00 2C */	beq lbl_802AA87C
/* 802AA854 002A05D4  41 82 00 28 */	beq lbl_802AA87C
/* 802AA858 002A05D8  80 03 00 38 */	lwz r0, 0x38(r3)
/* 802AA85C 002A05DC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 802AA860 002A05E0  40 82 00 1C */	bne lbl_802AA87C
/* 802AA864 002A05E4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802AA868 002A05E8  38 C0 00 15 */	li r6, 0x15
/* 802AA86C 002A05EC  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802AA870 002A05F0  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802AA874 002A05F4  54 05 10 3A */	slwi r5, r0, 2
/* 802AA878 002A05F8  4B FD 42 45 */	bl hkThreadMemory$7deallocateChunk
lbl_802AA87C:
/* 802AA87C 002A05FC  2C 1F 00 00 */	cmpwi r31, 0
/* 802AA880 002A0600  40 81 00 24 */	ble lbl_802AA8A4
/* 802AA884 002A0604  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802AA888 002A0608  7F C4 F3 78 */	mr r4, r30
/* 802AA88C 002A060C  A0 BE 00 04 */	lhz r5, 4(r30)
/* 802AA890 002A0610  38 C0 00 1D */	li r6, 0x1d
/* 802AA894 002A0614  81 83 00 00 */	lwz r12, 0(r3)
/* 802AA898 002A0618  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AA89C 002A061C  7D 89 03 A6 */	mtctr r12
/* 802AA8A0 002A0620  4E 80 04 21 */	bctrl 
lbl_802AA8A4:
/* 802AA8A4 002A0624  7F C3 F3 78 */	mr r3, r30
/* 802AA8A8 002A0628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AA8AC 002A062C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AA8B0 002A0630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AA8B4 002A0634  7C 08 03 A6 */	mtlr r0
/* 802AA8B8 002A0638  38 21 00 10 */	addi r1, r1, 0x10
/* 802AA8BC 002A063C  4E 80 00 20 */	blr 


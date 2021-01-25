.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r4math5MTX34Fv$7__ct
nw4r4math5MTX34Fv$7__ct:
/* 80096690 0008C410  4E 80 00 20 */	blr 

.global nw4r4math4VEC3Ffff$7__ct
nw4r4math4VEC3Ffff$7__ct:
/* 80096694 0008C414  D0 23 00 00 */	stfs f1, 0(r3)
/* 80096698 0008C418  D0 43 00 04 */	stfs f2, 4(r3)
/* 8009669C 0008C41C  D0 63 00 08 */	stfs f3, 8(r3)
/* 800966A0 0008C420  4E 80 00 20 */	blr 

.global hkVector4$7__cl
hkVector4$7__cl:
/* 800966A4 0008C424  54 80 10 3A */	slwi r0, r4, 2
/* 800966A8 0008C428  7C 63 02 14 */	add r3, r3, r0
/* 800966AC 0008C42C  4E 80 00 20 */	blr 

.global nw4r4mathFPQ34nw4r4math5$7MTX34Mult
nw4r4mathFPQ34nw4r4math5$7MTX34Mult:
/* 800966B0 0008C430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800966B4 0008C434  7C 08 02 A6 */	mflr r0
/* 800966B8 0008C438  90 01 00 14 */	stw r0, 0x14(r1)
/* 800966BC 0008C43C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800966C0 0008C440  7C 7F 1B 78 */	mr r31, r3
/* 800966C4 0008C444  7C 83 23 78 */	mr r3, r4
/* 800966C8 0008C448  7C A4 2B 78 */	mr r4, r5
/* 800966CC 0008C44C  7F E5 FB 78 */	mr r5, r31
/* 800966D0 0008C450  48 15 5A E9 */	bl PSMTXConcat
/* 800966D4 0008C454  7F E3 FB 78 */	mr r3, r31
/* 800966D8 0008C458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800966DC 0008C45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800966E0 0008C460  7C 08 03 A6 */	mtlr r0
/* 800966E4 0008C464  38 21 00 10 */	addi r1, r1, 0x10
/* 800966E8 0008C468  4E 80 00 20 */	blr 


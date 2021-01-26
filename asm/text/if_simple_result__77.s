.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ifSimpleResultTask$7__ct
ifSimpleResultTask$7__ct:
/* 800F19B0 000E7730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F19B4 000E7734  7C 08 02 A6 */	mflr r0
/* 800F19B8 000E7738  3C 80 80 46 */	lis r4, lbl_8045B8A8@ha
/* 800F19BC 000E773C  38 A0 00 12 */	li r5, 0x12
/* 800F19C0 000E7740  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F19C4 000E7744  38 84 B8 A8 */	addi r4, r4, lbl_8045B8A8@l
/* 800F19C8 000E7748  38 C0 00 0E */	li r6, 0xe
/* 800F19CC 000E774C  38 E0 00 06 */	li r7, 6
/* 800F19D0 000E7750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F19D4 000E7754  39 00 00 01 */	li r8, 1
/* 800F19D8 000E7758  93 C1 00 08 */	stw r30, 8(r1)
/* 800F19DC 000E775C  7C 7E 1B 78 */	mr r30, r3
/* 800F19E0 000E7760  4B F3 BE D9 */	bl gfTask$7__ct
/* 800F19E4 000E7764  3C 60 80 46 */	lis r3, lbl_8045B8EC@ha
/* 800F19E8 000E7768  3B E0 00 00 */	li r31, 0
/* 800F19EC 000E776C  38 63 B8 EC */	addi r3, r3, lbl_8045B8EC@l
/* 800F19F0 000E7770  38 00 00 02 */	li r0, 2
/* 800F19F4 000E7774  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 800F19F8 000E7778  38 7E 00 9C */	addi r3, r30, 0x9c
/* 800F19FC 000E777C  93 FE 00 40 */	stw r31, 0x40(r30)
/* 800F1A00 000E7780  93 FE 00 60 */	stw r31, 0x60(r30)
/* 800F1A04 000E7784  90 1E 00 68 */	stw r0, 0x68(r30)
/* 800F1A08 000E7788  93 FE 00 6C */	stw r31, 0x6c(r30)
/* 800F1A0C 000E778C  93 FE 00 84 */	stw r31, 0x84(r30)
/* 800F1A10 000E7790  93 FE 00 88 */	stw r31, 0x88(r30)
/* 800F1A14 000E7794  93 FE 00 90 */	stw r31, 0x90(r30)
/* 800F1A18 000E7798  48 06 1A 71 */	bl nteSection$7__ct
/* 800F1A1C 000E779C  38 00 00 FF */	li r0, 0xff
/* 800F1A20 000E77A0  93 FE 00 A4 */	stw r31, 0xa4(r30)
/* 800F1A24 000E77A4  38 7E 00 64 */	addi r3, r30, 0x64
/* 800F1A28 000E77A8  38 80 00 00 */	li r4, 0
/* 800F1A2C 000E77AC  93 FE 00 A8 */	stw r31, 0xa8(r30)
/* 800F1A30 000E77B0  38 A0 00 04 */	li r5, 4
/* 800F1A34 000E77B4  93 FE 00 AC */	stw r31, 0xac(r30)
/* 800F1A38 000E77B8  9B FE 00 B0 */	stb r31, 0xb0(r30)
/* 800F1A3C 000E77BC  93 FE 00 B4 */	stw r31, 0xb4(r30)
/* 800F1A40 000E77C0  93 FE 00 B8 */	stw r31, 0xb8(r30)
/* 800F1A44 000E77C4  93 FE 00 BC */	stw r31, 0xbc(r30)
/* 800F1A48 000E77C8  93 FE 00 C4 */	stw r31, 0xc4(r30)
/* 800F1A4C 000E77CC  93 FE 00 CC */	stw r31, 0xcc(r30)
/* 800F1A50 000E77D0  93 FE 00 C8 */	stw r31, 0xc8(r30)
/* 800F1A54 000E77D4  93 FE 00 D0 */	stw r31, 0xd0(r30)
/* 800F1A58 000E77D8  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 800F1A5C 000E77DC  9B FE 00 D8 */	stb r31, 0xd8(r30)
/* 800F1A60 000E77E0  9B FE 00 D9 */	stb r31, 0xd9(r30)
/* 800F1A64 000E77E4  93 FE 00 44 */	stw r31, 0x44(r30)
/* 800F1A68 000E77E8  93 FE 00 48 */	stw r31, 0x48(r30)
/* 800F1A6C 000E77EC  93 FE 00 4C */	stw r31, 0x4c(r30)
/* 800F1A70 000E77F0  93 FE 00 50 */	stw r31, 0x50(r30)
/* 800F1A74 000E77F4  93 FE 00 54 */	stw r31, 0x54(r30)
/* 800F1A78 000E77F8  93 FE 00 58 */	stw r31, 0x58(r30)
/* 800F1A7C 000E77FC  93 FE 00 5C */	stw r31, 0x5c(r30)
/* 800F1A80 000E7800  4B F1 29 BD */	bl func_8000443C
/* 800F1A84 000E7804  93 FE 00 74 */	stw r31, 0x74(r30)
/* 800F1A88 000E7808  7F C3 F3 78 */	mr r3, r30
/* 800F1A8C 000E780C  93 FE 00 78 */	stw r31, 0x78(r30)
/* 800F1A90 000E7810  93 FE 00 7C */	stw r31, 0x7c(r30)
/* 800F1A94 000E7814  93 FE 00 80 */	stw r31, 0x80(r30)
/* 800F1A98 000E7818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F1A9C 000E781C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F1AA0 000E7820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F1AA4 000E7824  7C 08 03 A6 */	mtlr r0
/* 800F1AA8 000E7828  38 21 00 10 */	addi r1, r1, 0x10
/* 800F1AAC 000E782C  4E 80 00 20 */	blr 


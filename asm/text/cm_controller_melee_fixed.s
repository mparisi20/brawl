.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global cmMeleeFixedController$7__ct
cmMeleeFixedController$7__ct:
/* 800AA998 000A0718  3C 80 80 45 */	lis r4, lbl_80455000@ha
/* 800AA99C 000A071C  38 00 00 00 */	li r0, 0
/* 800AA9A0 000A0720  38 84 50 00 */	addi r4, r4, lbl_80455000@l
/* 800AA9A4 000A0724  90 03 00 00 */	stw r0, 0(r3)
/* 800AA9A8 000A0728  90 83 00 04 */	stw r4, 4(r3)
/* 800AA9AC 000A072C  4E 80 00 20 */	blr 

.global cmMeleeFixedController$7__dt
cmMeleeFixedController$7__dt:
/* 800AA9B0 000A0730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA9B4 000A0734  7C 08 02 A6 */	mflr r0
/* 800AA9B8 000A0738  2C 03 00 00 */	cmpwi r3, 0
/* 800AA9BC 000A073C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA9C0 000A0740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AA9C4 000A0744  7C 7F 1B 78 */	mr r31, r3
/* 800AA9C8 000A0748  41 82 00 10 */	beq lbl_800AA9D8
/* 800AA9CC 000A074C  2C 04 00 00 */	cmpwi r4, 0
/* 800AA9D0 000A0750  40 81 00 08 */	ble lbl_800AA9D8
/* 800AA9D4 000A0754  4B F6 1E F5 */	bl __dl
lbl_800AA9D8:
/* 800AA9D8 000A0758  7F E3 FB 78 */	mr r3, r31
/* 800AA9DC 000A075C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AA9E0 000A0760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA9E4 000A0764  7C 08 03 A6 */	mtlr r0
/* 800AA9E8 000A0768  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA9EC 000A076C  4E 80 00 20 */	blr 

.global cmMeleeFixedController$7update
cmMeleeFixedController$7update:
/* 800AA9F0 000A0770  80 6D BE 68 */	lwz r3, lbl_805A0288-_SDA_BASE_(r13)
/* 800AA9F4 000A0774  4B FF 63 E0 */	b cmAIController$7updateMeleeFix


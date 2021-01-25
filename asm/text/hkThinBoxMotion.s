.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkThinBoxMotion
finishLoadedObjecthkThinBoxMotion:
/* 802E4724 002DA4A4  2C 03 00 00 */	cmpwi r3, 0
/* 802E4728 002DA4A8  4D 82 00 20 */	beqlr 
/* 802E472C 002DA4AC  3C 80 80 48 */	lis r4, lbl_80487CD0@ha
/* 802E4730 002DA4B0  38 00 00 01 */	li r0, 1
/* 802E4734 002DA4B4  38 84 7C D0 */	addi r4, r4, lbl_80487CD0@l
/* 802E4738 002DA4B8  B0 03 00 06 */	sth r0, 6(r3)
/* 802E473C 002DA4BC  90 83 00 00 */	stw r4, 0(r3)
/* 802E4740 002DA4C0  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkThinBoxMotion
cleanupLoadedObjecthkThinBoxMotion:
/* 802E4744 002DA4C4  81 83 00 00 */	lwz r12, 0(r3)
/* 802E4748 002DA4C8  38 80 FF FF */	li r4, -1
/* 802E474C 002DA4CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E4750 002DA4D0  7D 89 03 A6 */	mtctr r12
/* 802E4754 002DA4D4  4E 80 04 20 */	bctr 

.global getVtablehkThinBoxMotion
getVtablehkThinBoxMotion:
/* 802E4758 002DA4D8  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E475C 002DA4DC  7C 2C 0B 78 */	mr r12, r1
/* 802E4760 002DA4E0  21 6B FE F0 */	subfic r11, r11, -272
/* 802E4764 002DA4E4  7C 21 59 6E */	stwux r1, r1, r11
/* 802E4768 002DA4E8  34 01 00 10 */	addic. r0, r1, 0x10
/* 802E476C 002DA4EC  41 82 00 18 */	beq lbl_802E4784
/* 802E4770 002DA4F0  3C 60 80 48 */	lis r3, lbl_80487CD0@ha
/* 802E4774 002DA4F4  38 00 00 01 */	li r0, 1
/* 802E4778 002DA4F8  38 63 7C D0 */	addi r3, r3, lbl_80487CD0@l
/* 802E477C 002DA4FC  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802E4780 002DA500  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802E4784:
/* 802E4784 002DA504  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E4788 002DA508  81 41 00 00 */	lwz r10, 0(r1)
/* 802E478C 002DA50C  7D 41 53 78 */	mr r1, r10
/* 802E4790 002DA510  4E 80 00 20 */	blr 

.global hkThinBoxMotion$7__ct
hkThinBoxMotion$7__ct:
/* 802E4794 002DA514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4798 002DA518  7C 08 02 A6 */	mflr r0
/* 802E479C 002DA51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E47A0 002DA520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E47A4 002DA524  7C 7F 1B 78 */	mr r31, r3
/* 802E47A8 002DA528  48 00 00 F1 */	bl hkBoxMotion$7__ct
/* 802E47AC 002DA52C  3C 80 80 48 */	lis r4, lbl_80487CD0@ha
/* 802E47B0 002DA530  38 00 00 08 */	li r0, 8
/* 802E47B4 002DA534  38 84 7C D0 */	addi r4, r4, lbl_80487CD0@l
/* 802E47B8 002DA538  98 1F 00 08 */	stb r0, 8(r31)
/* 802E47BC 002DA53C  7F E3 FB 78 */	mr r3, r31
/* 802E47C0 002DA540  90 9F 00 00 */	stw r4, 0(r31)
/* 802E47C4 002DA544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E47C8 002DA548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E47CC 002DA54C  7C 08 03 A6 */	mtlr r0
/* 802E47D0 002DA550  38 21 00 10 */	addi r1, r1, 0x10
/* 802E47D4 002DA554  4E 80 00 20 */	blr 

.global __sinit_$3hkThinBoxMotion_cpp
__sinit_$3hkThinBoxMotion_cpp:
/* 802E47D8 002DA558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E47DC 002DA55C  7C 08 02 A6 */	mflr r0
/* 802E47E0 002DA560  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E47E4 002DA564  4B FF FF 75 */	bl getVtablehkThinBoxMotion
/* 802E47E8 002DA568  3D 00 80 41 */	lis r8, lbl_80413110@ha
/* 802E47EC 002DA56C  3C E0 80 53 */	lis r7, lbl_805330D8@ha
/* 802E47F0 002DA570  3C C0 80 2E */	lis r6, finishLoadedObjecthkThinBoxMotion@ha
/* 802E47F4 002DA574  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkThinBoxMotion@ha
/* 802E47F8 002DA578  39 08 31 10 */	addi r8, r8, lbl_80413110@l
/* 802E47FC 002DA57C  38 A7 30 D8 */	addi r5, r7, lbl_805330D8@l
/* 802E4800 002DA580  38 C6 47 24 */	addi r6, r6, finishLoadedObjecthkThinBoxMotion@l
/* 802E4804 002DA584  38 84 47 44 */	addi r4, r4, cleanupLoadedObjecthkThinBoxMotion@l
/* 802E4808 002DA588  91 07 30 D8 */	stw r8, 0x30d8(r7)
/* 802E480C 002DA58C  90 C5 00 04 */	stw r6, 4(r5)
/* 802E4810 002DA590  90 85 00 08 */	stw r4, 8(r5)
/* 802E4814 002DA594  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E4818 002DA598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E481C 002DA59C  7C 08 03 A6 */	mtlr r0
/* 802E4820 002DA5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4824 002DA5A4  4E 80 00 20 */	blr 


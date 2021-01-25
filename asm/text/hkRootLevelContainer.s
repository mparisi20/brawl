.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkRootLevelContainer$7findObjectByType
hkRootLevelContainer$7findObjectByType:
/* 803335A4 00329324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803335A8 00329328  7C 08 02 A6 */	mflr r0
/* 803335AC 0032932C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803335B0 00329330  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803335B4 00329334  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803335B8 00329338  3B C0 00 00 */	li r30, 0
/* 803335BC 0032933C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803335C0 00329340  7C 9D 23 78 */	mr r29, r4
/* 803335C4 00329344  38 80 00 00 */	li r4, 0
/* 803335C8 00329348  93 81 00 10 */	stw r28, 0x10(r1)
/* 803335CC 0032934C  7C 7C 1B 78 */	mr r28, r3
lbl_803335D0:
/* 803335D0 00329350  2C 05 00 00 */	cmpwi r5, 0
/* 803335D4 00329354  41 82 00 2C */	beq lbl_80333600
/* 803335D8 00329358  80 03 00 04 */	lwz r0, 4(r3)
/* 803335DC 0032935C  7C 1E 00 00 */	cmpw r30, r0
/* 803335E0 00329360  40 80 00 20 */	bge lbl_80333600
/* 803335E4 00329364  80 03 00 00 */	lwz r0, 0(r3)
/* 803335E8 00329368  3B DE 00 01 */	addi r30, r30, 1
/* 803335EC 0032936C  7C C0 22 14 */	add r6, r0, r4
/* 803335F0 00329370  38 84 00 10 */	addi r4, r4, 0x10
/* 803335F4 00329374  80 06 00 08 */	lwz r0, 8(r6)
/* 803335F8 00329378  7C 00 28 40 */	cmplw r0, r5
/* 803335FC 0032937C  40 82 FF D4 */	bne lbl_803335D0
lbl_80333600:
/* 80333600 00329380  57 DF 20 36 */	slwi r31, r30, 4
/* 80333604 00329384  48 00 00 64 */	b lbl_80333668
lbl_80333608:
/* 80333608 00329388  80 1C 00 00 */	lwz r0, 0(r28)
/* 8033360C 0032938C  7C 60 FA 14 */	add r3, r0, r31
/* 80333610 00329390  80 83 00 04 */	lwz r4, 4(r3)
/* 80333614 00329394  2C 04 00 00 */	cmpwi r4, 0
/* 80333618 00329398  41 82 00 08 */	beq lbl_80333620
/* 8033361C 0032939C  48 00 00 20 */	b lbl_8033363C
lbl_80333620:
/* 80333620 003293A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80333624 003293A4  2C 03 00 00 */	cmpwi r3, 0
/* 80333628 003293A8  41 82 00 0C */	beq lbl_80333634
/* 8033362C 003293AC  4B F4 92 11 */	bl hkClass$7getName
/* 80333630 003293B0  48 00 00 08 */	b lbl_80333638
lbl_80333634:
/* 80333634 003293B4  38 60 00 00 */	li r3, 0
lbl_80333638:
/* 80333638 003293B8  7C 64 1B 78 */	mr r4, r3
lbl_8033363C:
/* 8033363C 003293BC  7F A3 EB 78 */	mr r3, r29
/* 80333640 003293C0  4B F4 E4 A9 */	bl hkString$7strCmp
/* 80333644 003293C4  2C 03 00 00 */	cmpwi r3, 0
/* 80333648 003293C8  40 82 00 18 */	bne lbl_80333660
/* 8033364C 003293CC  80 7C 00 00 */	lwz r3, 0(r28)
/* 80333650 003293D0  57 C0 20 36 */	slwi r0, r30, 4
/* 80333654 003293D4  7C 63 02 14 */	add r3, r3, r0
/* 80333658 003293D8  80 63 00 08 */	lwz r3, 8(r3)
/* 8033365C 003293DC  48 00 00 1C */	b lbl_80333678
lbl_80333660:
/* 80333660 003293E0  3B FF 00 10 */	addi r31, r31, 0x10
/* 80333664 003293E4  3B DE 00 01 */	addi r30, r30, 1
lbl_80333668:
/* 80333668 003293E8  80 1C 00 04 */	lwz r0, 4(r28)
/* 8033366C 003293EC  7C 1E 00 00 */	cmpw r30, r0
/* 80333670 003293F0  41 80 FF 98 */	blt lbl_80333608
/* 80333674 003293F4  38 60 00 00 */	li r3, 0
lbl_80333678:
/* 80333678 003293F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033367C 003293FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80333680 00329400  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80333684 00329404  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80333688 00329408  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8033368C 0032940C  7C 08 03 A6 */	mtlr r0
/* 80333690 00329410  38 21 00 20 */	addi r1, r1, 0x20
/* 80333694 00329414  4E 80 00 20 */	blr 

.global __sinit_$3hkRootLevelContainerClass_cpp
__sinit_$3hkRootLevelContainerClass_cpp:
/* 80333698 00329418  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033369C 0032941C  7C 08 02 A6 */	mflr r0
/* 803336A0 00329420  3C 80 80 41 */	lis r4, lbl_804155CC@ha
/* 803336A4 00329424  3C 60 80 53 */	lis r3, lbl_805336C0@ha
/* 803336A8 00329428  90 01 00 24 */	stw r0, 0x24(r1)
/* 803336AC 0032942C  38 84 55 CC */	addi r4, r4, lbl_804155CC@l
/* 803336B0 00329430  38 00 00 03 */	li r0, 3
/* 803336B4 00329434  38 63 36 C0 */	addi r3, r3, lbl_805336C0@l
/* 803336B8 00329438  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803336BC 0032943C  3F E0 80 41 */	lis r31, lbl_8041562C@ha
/* 803336C0 00329440  38 A0 00 00 */	li r5, 0
/* 803336C4 00329444  38 C0 00 10 */	li r6, 0x10
/* 803336C8 00329448  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803336CC 0032944C  3B C0 00 00 */	li r30, 0
/* 803336D0 00329450  38 E0 00 00 */	li r7, 0
/* 803336D4 00329454  39 00 00 00 */	li r8, 0
/* 803336D8 00329458  90 81 00 08 */	stw r4, 8(r1)
/* 803336DC 0032945C  38 9F 56 2C */	addi r4, r31, lbl_8041562C@l
/* 803336E0 00329460  39 20 00 00 */	li r9, 0
/* 803336E4 00329464  39 40 00 00 */	li r10, 0
/* 803336E8 00329468  90 01 00 0C */	stw r0, 0xc(r1)
/* 803336EC 0032946C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803336F0 00329470  4B F4 91 19 */	bl hkClass$7__ct
/* 803336F4 00329474  3C A0 80 41 */	lis r5, lbl_80415618@ha
/* 803336F8 00329478  38 9F 56 2C */	addi r4, r31, 0x562c
/* 803336FC 0032947C  38 A5 56 18 */	addi r5, r5, lbl_80415618@l
/* 80333700 00329480  3C 60 80 53 */	lis r3, lbl_805336E4@ha
/* 80333704 00329484  90 A1 00 08 */	stw r5, 8(r1)
/* 80333708 00329488  38 00 00 01 */	li r0, 1
/* 8033370C 0032948C  38 63 36 E4 */	addi r3, r3, lbl_805336E4@l
/* 80333710 00329490  38 84 00 21 */	addi r4, r4, 0x21
/* 80333714 00329494  90 01 00 0C */	stw r0, 0xc(r1)
/* 80333718 00329498  38 A0 00 00 */	li r5, 0
/* 8033371C 0032949C  38 C0 00 08 */	li r6, 8
/* 80333720 003294A0  38 E0 00 00 */	li r7, 0
/* 80333724 003294A4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80333728 003294A8  39 00 00 00 */	li r8, 0
/* 8033372C 003294AC  39 20 00 00 */	li r9, 0
/* 80333730 003294B0  39 40 00 00 */	li r10, 0
/* 80333734 003294B4  4B F4 90 D5 */	bl hkClass$7__ct
/* 80333738 003294B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033373C 003294BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80333740 003294C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80333744 003294C4  7C 08 03 A6 */	mtlr r0
/* 80333748 003294C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8033374C 003294CC  4E 80 00 20 */	blr 


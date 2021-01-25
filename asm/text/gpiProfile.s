.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gpiProfilesTableHash
gpiProfilesTableHash:
/* 803703DC 0036615C  80 63 00 00 */	lwz r3, 0(r3)
/* 803703E0 00366160  7C 03 23 D6 */	divw r0, r3, r4
/* 803703E4 00366164  7C 00 21 D6 */	mullw r0, r0, r4
/* 803703E8 00366168  7C 60 18 50 */	subf r3, r0, r3
/* 803703EC 0036616C  4E 80 00 20 */	blr 

.global gpiProfilesTableCompare
gpiProfilesTableCompare:
/* 803703F0 00366170  80 84 00 00 */	lwz r4, 0(r4)
/* 803703F4 00366174  80 03 00 00 */	lwz r0, 0(r3)
/* 803703F8 00366178  7C 64 00 50 */	subf r3, r4, r0
/* 803703FC 0036617C  4E 80 00 20 */	blr 

.global gpiProfilesTableFree
gpiProfilesTableFree:
/* 80370400 00366180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370404 00366184  7C 08 02 A6 */	mflr r0
/* 80370408 00366188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037040C 0036618C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80370410 00366190  93 C1 00 08 */	stw r30, 8(r1)
/* 80370414 00366194  7C 7E 1B 78 */	mr r30, r3
/* 80370418 00366198  80 83 00 08 */	lwz r4, 8(r3)
/* 8037041C 0036619C  2C 04 00 00 */	cmpwi r4, 0
/* 80370420 003661A0  41 82 00 38 */	beq lbl_80370458
/* 80370424 003661A4  80 64 00 08 */	lwz r3, 8(r4)
/* 80370428 003661A8  4B FE DB E5 */	bl gsifree
/* 8037042C 003661AC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80370430 003661B0  3B E0 00 00 */	li r31, 0
/* 80370434 003661B4  93 E3 00 08 */	stw r31, 8(r3)
/* 80370438 003661B8  80 7E 00 08 */	lwz r3, 8(r30)
/* 8037043C 003661BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80370440 003661C0  4B FE DB CD */	bl gsifree
/* 80370444 003661C4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80370448 003661C8  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8037044C 003661CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80370450 003661D0  4B FE DB BD */	bl gsifree
/* 80370454 003661D4  93 FE 00 08 */	stw r31, 8(r30)
lbl_80370458:
/* 80370458 003661D8  7F C3 F3 78 */	mr r3, r30
/* 8037045C 003661DC  4B FF E4 BD */	bl gpiFreeInfoCache
/* 80370460 003661E0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80370464 003661E4  4B FE DB A9 */	bl gsifree
/* 80370468 003661E8  3B E0 00 00 */	li r31, 0
/* 8037046C 003661EC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80370470 003661F0  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80370474 003661F4  4B FE DB 99 */	bl gsifree
/* 80370478 003661F8  93 FE 00 18 */	stw r31, 0x18(r30)
/* 8037047C 003661FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80370480 00366200  83 C1 00 08 */	lwz r30, 8(r1)
/* 80370484 00366204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370488 00366208  7C 08 03 A6 */	mtlr r0
/* 8037048C 0036620C  38 21 00 10 */	addi r1, r1, 0x10
/* 80370490 00366210  4E 80 00 20 */	blr 

.global gpiInitProfiles
gpiInitProfiles:
/* 80370494 00366214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370498 00366218  7C 08 02 A6 */	mflr r0
/* 8037049C 0036621C  3C A0 80 37 */	lis r5, gpiProfilesTableHash@ha
/* 803704A0 00366220  3C C0 80 37 */	lis r6, gpiProfilesTableCompare@ha
/* 803704A4 00366224  90 01 00 14 */	stw r0, 0x14(r1)
/* 803704A8 00366228  3C E0 80 37 */	lis r7, gpiProfilesTableFree@ha
/* 803704AC 0036622C  38 00 00 00 */	li r0, 0
/* 803704B0 00366230  38 A5 03 DC */	addi r5, r5, gpiProfilesTableHash@l
/* 803704B4 00366234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803704B8 00366238  38 C6 03 F0 */	addi r6, r6, gpiProfilesTableCompare@l
/* 803704BC 0036623C  38 E7 04 00 */	addi r7, r7, gpiProfilesTableFree@l
/* 803704C0 00366240  38 80 00 20 */	li r4, 0x20
/* 803704C4 00366244  83 E3 00 00 */	lwz r31, 0(r3)
/* 803704C8 00366248  38 60 00 1C */	li r3, 0x1c
/* 803704CC 0036624C  90 1F 04 4C */	stw r0, 0x44c(r31)
/* 803704D0 00366250  90 1F 04 48 */	stw r0, 0x448(r31)
/* 803704D4 00366254  4B FE A9 E1 */	bl TableNew
/* 803704D8 00366258  7C 03 00 D0 */	neg r0, r3
/* 803704DC 0036625C  90 7F 04 44 */	stw r3, 0x444(r31)
/* 803704E0 00366260  7C 00 1B 78 */	or r0, r0, r3
/* 803704E4 00366264  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803704E8 00366268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803704EC 0036626C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803704F0 00366270  7C 08 03 A6 */	mtlr r0
/* 803704F4 00366274  38 21 00 10 */	addi r1, r1, 0x10
/* 803704F8 00366278  4E 80 00 20 */	blr 

.global gpiProcessNewProfile
gpiProcessNewProfile:
/* 803704FC 0036627C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80370500 00366280  7C 08 02 A6 */	mflr r0
/* 80370504 00366284  90 01 00 44 */	stw r0, 0x44(r1)
/* 80370508 00366288  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8037050C 0036628C  7C BF 2B 78 */	mr r31, r5
/* 80370510 00366290  38 A0 00 01 */	li r5, 1
/* 80370514 00366294  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80370518 00366298  3F C0 80 49 */	lis r30, lbl_8048F648@ha
/* 8037051C 0036629C  3B DE F6 48 */	addi r30, r30, lbl_8048F648@l
/* 80370520 003662A0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80370524 003662A4  7C 9D 23 78 */	mr r29, r4
/* 80370528 003662A8  7F E4 FB 78 */	mr r4, r31
/* 8037052C 003662AC  93 81 00 30 */	stw r28, 0x30(r1)
/* 80370530 003662B0  7C 7C 1B 78 */	mr r28, r3
/* 80370534 003662B4  48 00 28 E9 */	bl gpiCheckForError
/* 80370538 003662B8  2C 03 00 00 */	cmpwi r3, 0
/* 8037053C 003662BC  41 82 00 0C */	beq lbl_80370548
/* 80370540 003662C0  38 60 00 04 */	li r3, 4
/* 80370544 003662C4  48 00 01 20 */	b lbl_80370664
lbl_80370548:
/* 80370548 003662C8  7F E3 FB 78 */	mr r3, r31
/* 8037054C 003662CC  38 8D B4 48 */	addi r4, r13, lbl_8059F868-_SDA_BASE_
/* 80370550 003662D0  38 A0 00 05 */	li r5, 5
/* 80370554 003662D4  48 08 9F C5 */	bl strncmp
/* 80370558 003662D8  2C 03 00 00 */	cmpwi r3, 0
/* 8037055C 003662DC  41 82 00 2C */	beq lbl_80370588
/* 80370560 003662E0  7F 83 E3 78 */	mr r3, r28
/* 80370564 003662E4  38 BE 01 04 */	addi r5, r30, 0x104
/* 80370568 003662E8  38 80 00 01 */	li r4, 1
/* 8037056C 003662EC  48 00 2D 25 */	bl gpiSetError
/* 80370570 003662F0  7F 83 E3 78 */	mr r3, r28
/* 80370574 003662F4  38 80 00 03 */	li r4, 3
/* 80370578 003662F8  38 A0 00 01 */	li r5, 1
/* 8037057C 003662FC  4B FF A5 75 */	bl gpiCallErrorCallback
/* 80370580 00366300  38 60 00 03 */	li r3, 3
/* 80370584 00366304  48 00 00 E0 */	b lbl_80370664
lbl_80370588:
/* 80370588 00366308  7F E3 FB 78 */	mr r3, r31
/* 8037058C 0036630C  38 9E 01 34 */	addi r4, r30, 0x134
/* 80370590 00366310  38 A1 00 18 */	addi r5, r1, 0x18
/* 80370594 00366314  38 C0 00 10 */	li r6, 0x10
/* 80370598 00366318  48 00 29 7D */	bl gpiValueForKey
/* 8037059C 0036631C  2C 03 00 00 */	cmpwi r3, 0
/* 803705A0 00366320  40 82 00 2C */	bne lbl_803705CC
/* 803705A4 00366324  7F 83 E3 78 */	mr r3, r28
/* 803705A8 00366328  38 BE 01 04 */	addi r5, r30, 0x104
/* 803705AC 0036632C  38 80 00 01 */	li r4, 1
/* 803705B0 00366330  48 00 2C E1 */	bl gpiSetError
/* 803705B4 00366334  7F 83 E3 78 */	mr r3, r28
/* 803705B8 00366338  38 80 00 03 */	li r4, 3
/* 803705BC 0036633C  38 A0 00 01 */	li r5, 1
/* 803705C0 00366340  4B FF A5 31 */	bl gpiCallErrorCallback
/* 803705C4 00366344  38 60 00 03 */	li r3, 3
/* 803705C8 00366348  48 00 00 9C */	b lbl_80370664
lbl_803705CC:
/* 803705CC 0036634C  38 61 00 18 */	addi r3, r1, 0x18
/* 803705D0 00366350  48 08 C1 35 */	bl atoi
/* 803705D4 00366354  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 803705D8 00366358  7C 7F 1B 78 */	mr r31, r3
/* 803705DC 0036635C  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803705E0 00366360  2C 04 00 00 */	cmpwi r4, 0
/* 803705E4 00366364  90 81 00 10 */	stw r4, 0x10(r1)
/* 803705E8 00366368  90 01 00 14 */	stw r0, 0x14(r1)
/* 803705EC 0036636C  41 82 00 68 */	beq lbl_80370654
/* 803705F0 00366370  38 60 00 08 */	li r3, 8
/* 803705F4 00366374  4B FE D9 F5 */	bl gsimalloc
/* 803705F8 00366378  2C 03 00 00 */	cmpwi r3, 0
/* 803705FC 0036637C  40 82 00 18 */	bne lbl_80370614
/* 80370600 00366380  7F 83 E3 78 */	mr r3, r28
/* 80370604 00366384  38 9E 01 40 */	addi r4, r30, 0x140
/* 80370608 00366388  48 00 2C D9 */	bl gpiSetErrorString
/* 8037060C 0036638C  38 60 00 01 */	li r3, 1
/* 80370610 00366390  48 00 00 54 */	b lbl_80370664
lbl_80370614:
/* 80370614 00366394  93 E3 00 04 */	stw r31, 4(r3)
/* 80370618 00366398  38 00 00 00 */	li r0, 0
/* 8037061C 0036639C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80370620 003663A0  7C 65 1B 78 */	mr r5, r3
/* 80370624 003663A4  90 03 00 00 */	stw r0, 0(r3)
/* 80370628 003663A8  7F 83 E3 78 */	mr r3, r28
/* 8037062C 003663AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370630 003663B0  7F A6 EB 78 */	mr r6, r29
/* 80370634 003663B4  90 81 00 08 */	stw r4, 8(r1)
/* 80370638 003663B8  38 81 00 08 */	addi r4, r1, 8
/* 8037063C 003663BC  38 E0 00 00 */	li r7, 0
/* 80370640 003663C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80370644 003663C4  4B FF A5 6D */	bl gpiAddCallback
/* 80370648 003663C8  2C 03 00 00 */	cmpwi r3, 0
/* 8037064C 003663CC  41 82 00 08 */	beq lbl_80370654
/* 80370650 003663D0  48 00 00 14 */	b lbl_80370664
lbl_80370654:
/* 80370654 003663D4  7F 83 E3 78 */	mr r3, r28
/* 80370658 003663D8  7F A4 EB 78 */	mr r4, r29
/* 8037065C 003663DC  4B FF E8 89 */	bl gpiRemoveOperation
/* 80370660 003663E0  38 60 00 00 */	li r3, 0
lbl_80370664:
/* 80370664 003663E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80370668 003663E8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8037066C 003663EC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80370670 003663F0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80370674 003663F4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80370678 003663F8  7C 08 03 A6 */	mtlr r0
/* 8037067C 003663FC  38 21 00 40 */	addi r1, r1, 0x40
/* 80370680 00366400  4E 80 00 20 */	blr 

.global gpiProfileListAdd
gpiProfileListAdd:
/* 80370684 00366404  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80370688 00366408  7C 08 02 A6 */	mflr r0
/* 8037068C 0036640C  2C 04 00 00 */	cmpwi r4, 0
/* 80370690 00366410  90 01 00 74 */	stw r0, 0x74(r1)
/* 80370694 00366414  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80370698 00366418  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8037069C 0036641C  7C 9E 23 78 */	mr r30, r4
/* 803706A0 00366420  93 A1 00 64 */	stw r29, 0x64(r1)
/* 803706A4 00366424  7C 7D 1B 78 */	mr r29, r3
/* 803706A8 00366428  83 E3 00 00 */	lwz r31, 0(r3)
/* 803706AC 0036642C  41 81 00 0C */	bgt lbl_803706B8
/* 803706B0 00366430  38 60 00 00 */	li r3, 0
/* 803706B4 00366434  48 00 00 88 */	b lbl_8037073C
lbl_803706B8:
/* 803706B8 00366438  90 81 00 24 */	stw r4, 0x24(r1)
/* 803706BC 0036643C  38 81 00 24 */	addi r4, r1, 0x24
/* 803706C0 00366440  80 7F 04 44 */	lwz r3, 0x444(r31)
/* 803706C4 00366444  4B FE AB 01 */	bl TableLookup
/* 803706C8 00366448  2C 03 00 00 */	cmpwi r3, 0
/* 803706CC 0036644C  41 82 00 08 */	beq lbl_803706D4
/* 803706D0 00366450  48 00 00 6C */	b lbl_8037073C
lbl_803706D4:
/* 803706D4 00366454  38 61 00 40 */	addi r3, r1, 0x40
/* 803706D8 00366458  38 80 00 00 */	li r4, 0
/* 803706DC 0036645C  38 A0 00 1C */	li r5, 0x1c
/* 803706E0 00366460  4B C9 3D 5D */	bl func_8000443C
/* 803706E4 00366464  38 00 00 00 */	li r0, 0
/* 803706E8 00366468  93 C1 00 40 */	stw r30, 0x40(r1)
/* 803706EC 0036646C  38 81 00 40 */	addi r4, r1, 0x40
/* 803706F0 00366470  90 01 00 44 */	stw r0, 0x44(r1)
/* 803706F4 00366474  90 01 00 4C */	stw r0, 0x4c(r1)
/* 803706F8 00366478  90 01 00 50 */	stw r0, 0x50(r1)
/* 803706FC 0036647C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80370700 00366480  90 01 00 54 */	stw r0, 0x54(r1)
/* 80370704 00366484  80 7F 04 44 */	lwz r3, 0x444(r31)
/* 80370708 00366488  4B FE A9 71 */	bl TableEnter
/* 8037070C 0036648C  80 7F 04 48 */	lwz r3, 0x448(r31)
/* 80370710 00366490  38 81 00 08 */	addi r4, r1, 8
/* 80370714 00366494  38 03 00 01 */	addi r0, r3, 1
/* 80370718 00366498  90 1F 04 48 */	stw r0, 0x448(r31)
/* 8037071C 0036649C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80370720 003664A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80370724 003664A4  80 63 04 44 */	lwz r3, 0x444(r3)
/* 80370728 003664A8  4B FE AA 9D */	bl TableLookup
/* 8037072C 003664AC  2C 03 00 00 */	cmpwi r3, 0
/* 80370730 003664B0  41 82 00 08 */	beq lbl_80370738
/* 80370734 003664B4  48 00 00 08 */	b lbl_8037073C
lbl_80370738:
/* 80370738 003664B8  38 60 00 00 */	li r3, 0
lbl_8037073C:
/* 8037073C 003664BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80370740 003664C0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80370744 003664C4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80370748 003664C8  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8037074C 003664CC  7C 08 03 A6 */	mtlr r0
/* 80370750 003664D0  38 21 00 70 */	addi r1, r1, 0x70
/* 80370754 003664D4  4E 80 00 20 */	blr 

.global gpiGetProfile
gpiGetProfile:
/* 80370758 003664D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037075C 003664DC  7C 08 02 A6 */	mflr r0
/* 80370760 003664E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80370764 003664E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80370768 003664E8  7C BF 2B 78 */	mr r31, r5
/* 8037076C 003664EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80370770 003664F0  90 81 00 08 */	stw r4, 8(r1)
/* 80370774 003664F4  38 81 00 08 */	addi r4, r1, 8
/* 80370778 003664F8  80 63 04 44 */	lwz r3, 0x444(r3)
/* 8037077C 003664FC  4B FE AA 49 */	bl TableLookup
/* 80370780 00366500  2C 1F 00 00 */	cmpwi r31, 0
/* 80370784 00366504  41 82 00 08 */	beq lbl_8037078C
/* 80370788 00366508  90 7F 00 00 */	stw r3, 0(r31)
lbl_8037078C:
/* 8037078C 0036650C  7C 03 00 D0 */	neg r0, r3
/* 80370790 00366510  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80370794 00366514  7C 00 1B 78 */	or r0, r0, r3
/* 80370798 00366518  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8037079C 0036651C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803707A0 00366520  7C 08 03 A6 */	mtlr r0
/* 803707A4 00366524  38 21 00 30 */	addi r1, r1, 0x30
/* 803707A8 00366528  4E 80 00 20 */	blr 

.global gpiProcessDeleteProfle
gpiProcessDeleteProfle:
/* 803707AC 0036652C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803707B0 00366530  7C 08 02 A6 */	mflr r0
/* 803707B4 00366534  90 01 00 34 */	stw r0, 0x34(r1)
/* 803707B8 00366538  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803707BC 0036653C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803707C0 00366540  7C BE 2B 78 */	mr r30, r5
/* 803707C4 00366544  38 A0 00 01 */	li r5, 1
/* 803707C8 00366548  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803707CC 0036654C  7C 9D 23 78 */	mr r29, r4
/* 803707D0 00366550  7F C4 F3 78 */	mr r4, r30
/* 803707D4 00366554  93 81 00 20 */	stw r28, 0x20(r1)
/* 803707D8 00366558  7C 7C 1B 78 */	mr r28, r3
/* 803707DC 0036655C  83 E3 00 00 */	lwz r31, 0(r3)
/* 803707E0 00366560  48 00 26 3D */	bl gpiCheckForError
/* 803707E4 00366564  2C 03 00 00 */	cmpwi r3, 0
/* 803707E8 00366568  41 82 00 0C */	beq lbl_803707F4
/* 803707EC 0036656C  38 60 00 04 */	li r3, 4
/* 803707F0 00366570  48 00 00 DC */	b lbl_803708CC
lbl_803707F4:
/* 803707F4 00366574  7F C3 F3 78 */	mr r3, r30
/* 803707F8 00366578  38 8D B4 50 */	addi r4, r13, lbl_8059F870-_SDA_BASE_
/* 803707FC 0036657C  38 A0 00 05 */	li r5, 5
/* 80370800 00366580  48 08 9D 19 */	bl strncmp
/* 80370804 00366584  2C 03 00 00 */	cmpwi r3, 0
/* 80370808 00366588  41 82 00 30 */	beq lbl_80370838
/* 8037080C 0036658C  3C A0 80 49 */	lis r5, lbl_8048F74C@ha
/* 80370810 00366590  7F 83 E3 78 */	mr r3, r28
/* 80370814 00366594  38 A5 F7 4C */	addi r5, r5, lbl_8048F74C@l
/* 80370818 00366598  38 80 00 01 */	li r4, 1
/* 8037081C 0036659C  48 00 2A 75 */	bl gpiSetError
/* 80370820 003665A0  7F 83 E3 78 */	mr r3, r28
/* 80370824 003665A4  38 80 00 03 */	li r4, 3
/* 80370828 003665A8  38 A0 00 01 */	li r5, 1
/* 8037082C 003665AC  4B FF A2 C5 */	bl gpiCallErrorCallback
/* 80370830 003665B0  38 60 00 03 */	li r3, 3
/* 80370834 003665B4  48 00 00 98 */	b lbl_803708CC
lbl_80370838:
/* 80370838 003665B8  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8037083C 003665BC  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80370840 003665C0  2C 03 00 00 */	cmpwi r3, 0
/* 80370844 003665C4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80370848 003665C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037084C 003665CC  41 82 00 70 */	beq lbl_803708BC
/* 80370850 003665D0  38 60 00 08 */	li r3, 8
/* 80370854 003665D4  4B FE D7 95 */	bl gsimalloc
/* 80370858 003665D8  2C 03 00 00 */	cmpwi r3, 0
/* 8037085C 003665DC  40 82 00 1C */	bne lbl_80370878
/* 80370860 003665E0  3C 80 80 49 */	lis r4, lbl_8048F788@ha
/* 80370864 003665E4  7F 83 E3 78 */	mr r3, r28
/* 80370868 003665E8  38 84 F7 88 */	addi r4, r4, lbl_8048F788@l
/* 8037086C 003665EC  48 00 2A 75 */	bl gpiSetErrorString
/* 80370870 003665F0  38 60 00 01 */	li r3, 1
/* 80370874 003665F4  48 00 00 58 */	b lbl_803708CC
lbl_80370878:
/* 80370878 003665F8  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 8037087C 003665FC  38 E0 00 00 */	li r7, 0
/* 80370880 00366600  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80370884 00366604  7C 65 1B 78 */	mr r5, r3
/* 80370888 00366608  90 03 00 04 */	stw r0, 4(r3)
/* 8037088C 0036660C  7F A6 EB 78 */	mr r6, r29
/* 80370890 00366610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370894 00366614  38 81 00 08 */	addi r4, r1, 8
/* 80370898 00366618  90 E3 00 00 */	stw r7, 0(r3)
/* 8037089C 0036661C  7F 83 E3 78 */	mr r3, r28
/* 803708A0 00366620  38 E0 00 00 */	li r7, 0
/* 803708A4 00366624  91 01 00 08 */	stw r8, 8(r1)
/* 803708A8 00366628  90 01 00 0C */	stw r0, 0xc(r1)
/* 803708AC 0036662C  4B FF A3 05 */	bl gpiAddCallback
/* 803708B0 00366630  2C 03 00 00 */	cmpwi r3, 0
/* 803708B4 00366634  41 82 00 08 */	beq lbl_803708BC
/* 803708B8 00366638  48 00 00 14 */	b lbl_803708CC
lbl_803708BC:
/* 803708BC 0036663C  7F 83 E3 78 */	mr r3, r28
/* 803708C0 00366640  7F A4 EB 78 */	mr r4, r29
/* 803708C4 00366644  4B FF E6 21 */	bl gpiRemoveOperation
/* 803708C8 00366648  38 60 00 00 */	li r3, 0
lbl_803708CC:
/* 803708CC 0036664C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803708D0 00366650  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803708D4 00366654  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803708D8 00366658  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803708DC 0036665C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803708E0 00366660  7C 08 03 A6 */	mtlr r0
/* 803708E4 00366664  38 21 00 30 */	addi r1, r1, 0x30
/* 803708E8 00366668  4E 80 00 20 */	blr 

.global gpiRemoveProfileByID
gpiRemoveProfileByID:
/* 803708EC 0036666C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803708F0 00366670  7C 08 02 A6 */	mflr r0
/* 803708F4 00366674  90 01 00 34 */	stw r0, 0x34(r1)
/* 803708F8 00366678  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803708FC 0036667C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80370900 00366680  90 81 00 08 */	stw r4, 8(r1)
/* 80370904 00366684  38 81 00 08 */	addi r4, r1, 8
/* 80370908 00366688  80 7F 04 44 */	lwz r3, 0x444(r31)
/* 8037090C 0036668C  4B FE A8 B9 */	bl TableLookup
/* 80370910 00366690  2C 03 00 00 */	cmpwi r3, 0
/* 80370914 00366694  7C 64 1B 78 */	mr r4, r3
/* 80370918 00366698  41 82 00 0C */	beq lbl_80370924
/* 8037091C 0036669C  80 7F 04 44 */	lwz r3, 0x444(r31)
/* 80370920 003666A0  4B FE A8 01 */	bl TableRemove
lbl_80370924:
/* 80370924 003666A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80370928 003666A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037092C 003666AC  7C 08 03 A6 */	mtlr r0
/* 80370930 003666B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80370934 003666B4  4E 80 00 20 */	blr 

.global gpiRemoveProfile
gpiRemoveProfile:
/* 80370938 003666B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8037093C 003666BC  80 63 04 44 */	lwz r3, 0x444(r3)
/* 80370940 003666C0  4B FE A7 E0 */	b TableRemove

.global gpiCheckProfileForUser
gpiCheckProfileForUser:
/* 80370944 003666C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370948 003666C8  7C 08 02 A6 */	mflr r0
/* 8037094C 003666CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370950 003666D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370954 003666D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370958 003666D8  7C BE 2B 78 */	mr r30, r5
/* 8037095C 003666DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80370960 003666E0  7C 9D 23 78 */	mr r29, r4
/* 80370964 003666E4  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 80370968 003666E8  2C 1F 00 00 */	cmpwi r31, 0
/* 8037096C 003666EC  41 82 00 44 */	beq lbl_803709B0
/* 80370970 003666F0  80 65 00 00 */	lwz r3, 0(r5)
/* 80370974 003666F4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80370978 003666F8  48 08 9A 85 */	bl strcmp
/* 8037097C 003666FC  2C 03 00 00 */	cmpwi r3, 0
/* 80370980 00366700  40 82 00 30 */	bne lbl_803709B0
/* 80370984 00366704  80 7E 00 04 */	lwz r3, 4(r30)
/* 80370988 00366708  80 9F 00 08 */	lwz r4, 8(r31)
/* 8037098C 0036670C  48 08 9A 71 */	bl strcmp
/* 80370990 00366710  2C 03 00 00 */	cmpwi r3, 0
/* 80370994 00366714  40 82 00 1C */	bne lbl_803709B0
/* 80370998 00366718  80 9E 00 08 */	lwz r4, 8(r30)
/* 8037099C 0036671C  38 00 00 01 */	li r0, 1
/* 803709A0 00366720  38 60 00 00 */	li r3, 0
/* 803709A4 00366724  93 A4 00 00 */	stw r29, 0(r4)
/* 803709A8 00366728  90 1E 00 0C */	stw r0, 0xc(r30)
/* 803709AC 0036672C  48 00 00 08 */	b lbl_803709B4
lbl_803709B0:
/* 803709B0 00366730  38 60 00 01 */	li r3, 1
lbl_803709B4:
/* 803709B4 00366734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803709B8 00366738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803709BC 0036673C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803709C0 00366740  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803709C4 00366744  7C 08 03 A6 */	mtlr r0
/* 803709C8 00366748  38 21 00 20 */	addi r1, r1, 0x20
/* 803709CC 0036674C  4E 80 00 20 */	blr 

.global gpiFindProfileByUser
gpiFindProfileByUser:
/* 803709D0 00366750  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803709D4 00366754  7C 08 02 A6 */	mflr r0
/* 803709D8 00366758  3C E0 80 37 */	lis r7, gpiCheckProfileForUser@ha
/* 803709DC 0036675C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803709E0 00366760  38 01 00 18 */	addi r0, r1, 0x18
/* 803709E4 00366764  38 E7 09 44 */	addi r7, r7, gpiCheckProfileForUser@l
/* 803709E8 00366768  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803709EC 0036676C  3B E0 00 00 */	li r31, 0
/* 803709F0 00366770  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803709F4 00366774  7C DE 33 78 */	mr r30, r6
/* 803709F8 00366778  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803709FC 0036677C  38 A1 00 08 */	addi r5, r1, 8
/* 80370A00 00366780  90 81 00 18 */	stw r4, 0x18(r1)
/* 80370A04 00366784  3C 80 80 37 */	lis r4, gpiProfileMapCallback@ha
/* 80370A08 00366788  38 84 0A 58 */	addi r4, r4, gpiProfileMapCallback@l
/* 80370A0C 0036678C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80370A10 00366790  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80370A14 00366794  80 C3 00 00 */	lwz r6, 0(r3)
/* 80370A18 00366798  90 61 00 08 */	stw r3, 8(r1)
/* 80370A1C 0036679C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80370A20 003667A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80370A24 003667A4  80 66 04 44 */	lwz r3, 0x444(r6)
/* 80370A28 003667A8  4B FE A8 A9 */	bl TableMapSafe2
/* 80370A2C 003667AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370A30 003667B0  2C 00 00 00 */	cmpwi r0, 0
/* 80370A34 003667B4  40 82 00 08 */	bne lbl_80370A3C
/* 80370A38 003667B8  93 FE 00 00 */	stw r31, 0(r30)
lbl_80370A3C:
/* 80370A3C 003667BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80370A40 003667C0  38 60 00 00 */	li r3, 0
/* 80370A44 003667C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80370A48 003667C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80370A4C 003667CC  7C 08 03 A6 */	mtlr r0
/* 80370A50 003667D0  38 21 00 30 */	addi r1, r1, 0x30
/* 80370A54 003667D4  4E 80 00 20 */	blr 

.global gpiProfileMapCallback
gpiProfileMapCallback:
/* 80370A58 003667D8  81 84 00 04 */	lwz r12, 4(r4)
/* 80370A5C 003667DC  7C 85 23 78 */	mr r5, r4
/* 80370A60 003667E0  7C 60 1B 78 */	mr r0, r3
/* 80370A64 003667E4  80 64 00 00 */	lwz r3, 0(r4)
/* 80370A68 003667E8  7C 04 03 78 */	mr r4, r0
/* 80370A6C 003667EC  80 A5 00 08 */	lwz r5, 8(r5)
/* 80370A70 003667F0  7D 89 03 A6 */	mtctr r12
/* 80370A74 003667F4  4E 80 04 20 */	bctr 

.global gpiProfileMap
gpiProfileMap:
/* 80370A78 003667F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370A7C 003667FC  7C 08 02 A6 */	mflr r0
/* 80370A80 00366800  3C C0 80 37 */	lis r6, gpiProfileMapCallback@ha
/* 80370A84 00366804  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370A88 00366808  80 E3 00 00 */	lwz r7, 0(r3)
/* 80370A8C 0036680C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80370A90 00366810  38 86 0A 58 */	addi r4, r6, gpiProfileMapCallback@l
/* 80370A94 00366814  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80370A98 00366818  38 A1 00 08 */	addi r5, r1, 8
/* 80370A9C 0036681C  90 61 00 08 */	stw r3, 8(r1)
/* 80370AA0 00366820  80 67 04 44 */	lwz r3, 0x444(r7)
/* 80370AA4 00366824  4B FE A8 2D */	bl TableMapSafe2
/* 80370AA8 00366828  7C 60 00 34 */	cntlzw r0, r3
/* 80370AAC 0036682C  54 03 D9 7E */	srwi r3, r0, 5
/* 80370AB0 00366830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370AB4 00366834  7C 08 03 A6 */	mtlr r0
/* 80370AB8 00366838  38 21 00 20 */	addi r1, r1, 0x20
/* 80370ABC 0036683C  4E 80 00 20 */	blr 

.global gpiCheckForBuddy
gpiCheckForBuddy:
/* 80370AC0 00366840  80 C4 00 08 */	lwz r6, 8(r4)
/* 80370AC4 00366844  2C 06 00 00 */	cmpwi r6, 0
/* 80370AC8 00366848  41 82 00 20 */	beq lbl_80370AE8
/* 80370ACC 0036684C  80 65 00 00 */	lwz r3, 0(r5)
/* 80370AD0 00366850  80 06 00 00 */	lwz r0, 0(r6)
/* 80370AD4 00366854  7C 03 00 00 */	cmpw r3, r0
/* 80370AD8 00366858  40 82 00 10 */	bne lbl_80370AE8
/* 80370ADC 0036685C  90 85 00 04 */	stw r4, 4(r5)
/* 80370AE0 00366860  38 60 00 00 */	li r3, 0
/* 80370AE4 00366864  4E 80 00 20 */	blr 
lbl_80370AE8:
/* 80370AE8 00366868  38 60 00 01 */	li r3, 1
/* 80370AEC 0036686C  4E 80 00 20 */	blr 

.global gpiFindBuddy
gpiFindBuddy:
/* 80370AF0 00366870  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370AF4 00366874  7C 08 02 A6 */	mflr r0
/* 80370AF8 00366878  3C C0 80 37 */	lis r6, gpiCheckForBuddy@ha
/* 80370AFC 0036687C  38 A0 00 00 */	li r5, 0
/* 80370B00 00366880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370B04 00366884  38 C6 0A C0 */	addi r6, r6, gpiCheckForBuddy@l
/* 80370B08 00366888  38 01 00 08 */	addi r0, r1, 8
/* 80370B0C 0036688C  90 81 00 08 */	stw r4, 8(r1)
/* 80370B10 00366890  3C 80 80 37 */	lis r4, gpiProfileMapCallback@ha
/* 80370B14 00366894  38 84 0A 58 */	addi r4, r4, gpiProfileMapCallback@l
/* 80370B18 00366898  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80370B1C 0036689C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80370B20 003668A0  80 E3 00 00 */	lwz r7, 0(r3)
/* 80370B24 003668A4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80370B28 003668A8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80370B2C 003668AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80370B30 003668B0  80 67 04 44 */	lwz r3, 0x444(r7)
/* 80370B34 003668B4  4B FE A7 9D */	bl TableMapSafe2
/* 80370B38 003668B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370B3C 003668BC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80370B40 003668C0  7C 08 03 A6 */	mtlr r0
/* 80370B44 003668C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80370B48 003668C8  4E 80 00 20 */	blr 

.global gpiCanFreeProfile
gpiCanFreeProfile:
/* 80370B4C 003668CC  2C 03 00 00 */	cmpwi r3, 0
/* 80370B50 003668D0  38 80 00 00 */	li r4, 0
/* 80370B54 003668D4  41 82 00 38 */	beq lbl_80370B8C
/* 80370B58 003668D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80370B5C 003668DC  2C 00 00 00 */	cmpwi r0, 0
/* 80370B60 003668E0  40 82 00 2C */	bne lbl_80370B8C
/* 80370B64 003668E4  80 03 00 08 */	lwz r0, 8(r3)
/* 80370B68 003668E8  2C 00 00 00 */	cmpwi r0, 0
/* 80370B6C 003668EC  40 82 00 20 */	bne lbl_80370B8C
/* 80370B70 003668F0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80370B74 003668F4  2C 00 00 00 */	cmpwi r0, 0
/* 80370B78 003668F8  40 82 00 14 */	bne lbl_80370B8C
/* 80370B7C 003668FC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80370B80 00366900  2C 00 00 00 */	cmpwi r0, 0
/* 80370B84 00366904  40 82 00 08 */	bne lbl_80370B8C
/* 80370B88 00366908  38 80 00 01 */	li r4, 1
lbl_80370B8C:
/* 80370B8C 0036690C  7C 04 00 D0 */	neg r0, r4
/* 80370B90 00366910  7C 00 23 78 */	or r0, r0, r4
/* 80370B94 00366914  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80370B98 00366918  4E 80 00 20 */	blr 


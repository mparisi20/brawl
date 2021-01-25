.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkConstraintInstance
finishLoadedObjecthkConstraintInstance:
/* 802DE6F4 002D4474  2C 03 00 00 */	cmpwi r3, 0
/* 802DE6F8 002D4478  4D 82 00 20 */	beqlr 
/* 802DE6FC 002D447C  3C 80 80 48 */	lis r4, lbl_80487BB8@ha
/* 802DE700 002D4480  38 00 00 01 */	li r0, 1
/* 802DE704 002D4484  38 84 7B B8 */	addi r4, r4, lbl_80487BB8@l
/* 802DE708 002D4488  B0 03 00 06 */	sth r0, 6(r3)
/* 802DE70C 002D448C  90 83 00 00 */	stw r4, 0(r3)
/* 802DE710 002D4490  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkConstraintInstance
cleanupLoadedObjecthkConstraintInstance:
/* 802DE714 002D4494  81 83 00 00 */	lwz r12, 0(r3)
/* 802DE718 002D4498  38 80 FF FF */	li r4, -1
/* 802DE71C 002D449C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DE720 002D44A0  7D 89 03 A6 */	mtctr r12
/* 802DE724 002D44A4  4E 80 04 20 */	bctr 

.global getVtablehkConstraintInstance
getVtablehkConstraintInstance:
/* 802DE728 002D44A8  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802DE72C 002D44AC  7C 2C 0B 78 */	mr r12, r1
/* 802DE730 002D44B0  21 6B FF C0 */	subfic r11, r11, -64
/* 802DE734 002D44B4  7C 21 59 6E */	stwux r1, r1, r11
/* 802DE738 002D44B8  34 01 00 10 */	addic. r0, r1, 0x10
/* 802DE73C 002D44BC  41 82 00 18 */	beq lbl_802DE754
/* 802DE740 002D44C0  3C 60 80 48 */	lis r3, lbl_80487BB8@ha
/* 802DE744 002D44C4  38 00 00 01 */	li r0, 1
/* 802DE748 002D44C8  38 63 7B B8 */	addi r3, r3, lbl_80487BB8@l
/* 802DE74C 002D44CC  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802DE750 002D44D0  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802DE754:
/* 802DE754 002D44D4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802DE758 002D44D8  81 41 00 00 */	lwz r10, 0(r1)
/* 802DE75C 002D44DC  7D 41 53 78 */	mr r1, r10
/* 802DE760 002D44E0  4E 80 00 20 */	blr 

.global hkConstraintInstance$7__ct
hkConstraintInstance$7__ct:
/* 802DE764 002D44E4  3C A0 80 48 */	lis r5, lbl_80487BB8@ha
/* 802DE768 002D44E8  38 00 00 00 */	li r0, 0
/* 802DE76C 002D44EC  38 A5 7B B8 */	addi r5, r5, lbl_80487BB8@l
/* 802DE770 002D44F0  38 C0 00 01 */	li r6, 1
/* 802DE774 002D44F4  B0 C3 00 06 */	sth r6, 6(r3)
/* 802DE778 002D44F8  90 A3 00 00 */	stw r5, 0(r3)
/* 802DE77C 002D44FC  90 03 00 08 */	stw r0, 8(r3)
/* 802DE780 002D4500  90 03 00 10 */	stw r0, 0x10(r3)
/* 802DE784 002D4504  98 83 00 1C */	stb r4, 0x1c(r3)
/* 802DE788 002D4508  98 03 00 1D */	stb r0, 0x1d(r3)
/* 802DE78C 002D450C  90 03 00 20 */	stw r0, 0x20(r3)
/* 802DE790 002D4510  90 03 00 24 */	stw r0, 0x24(r3)
/* 802DE794 002D4514  90 03 00 28 */	stw r0, 0x28(r3)
/* 802DE798 002D4518  4E 80 00 20 */	blr 

.global hkConstraintInstance$7setPriority
hkConstraintInstance$7setPriority:
/* 802DE79C 002D451C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 802DE7A0 002D4520  98 83 00 1C */	stb r4, 0x1c(r3)
/* 802DE7A4 002D4524  2C 05 00 00 */	cmpwi r5, 0
/* 802DE7A8 002D4528  4D 82 00 20 */	beqlr 
/* 802DE7AC 002D452C  98 85 00 12 */	stb r4, 0x12(r5)
/* 802DE7B0 002D4530  4E 80 00 20 */	blr 

.global hkConstraintInstance$7entityAddedCallback
hkConstraintInstance$7entityAddedCallback:
/* 802DE7B4 002D4534  4E 80 00 20 */	blr 

.global hkConstraintInstance$7entityDeletedCallback
hkConstraintInstance$7entityDeletedCallback:
/* 802DE7B8 002D4538  4E 80 00 20 */	blr 

.global hkConstraintInstance$7entityRemovedCallback
hkConstraintInstance$7entityRemovedCallback:
/* 802DE7BC 002D453C  80 03 00 08 */	lwz r0, 8(r3)
/* 802DE7C0 002D4540  7C 65 1B 78 */	mr r5, r3
/* 802DE7C4 002D4544  2C 00 00 00 */	cmpwi r0, 0
/* 802DE7C8 002D4548  4D 82 00 20 */	beqlr 
/* 802DE7CC 002D454C  80 64 00 08 */	lwz r3, 8(r4)
/* 802DE7D0 002D4550  7C A4 2B 78 */	mr r4, r5
/* 802DE7D4 002D4554  38 A0 00 01 */	li r5, 1
/* 802DE7D8 002D4558  48 01 A7 C0 */	b hkWorldOperationUtil$7removeConstraintImmediately
/* 802DE7DC 002D455C  4E 80 00 20 */	blr 

.global hkConstraintInstance$7__dt
hkConstraintInstance$7__dt:
/* 802DE7E0 002D4560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE7E4 002D4564  7C 08 02 A6 */	mflr r0
/* 802DE7E8 002D4568  2C 03 00 00 */	cmpwi r3, 0
/* 802DE7EC 002D456C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE7F0 002D4570  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE7F4 002D4574  7C 9F 23 78 */	mr r31, r4
/* 802DE7F8 002D4578  93 C1 00 08 */	stw r30, 8(r1)
/* 802DE7FC 002D457C  7C 7E 1B 78 */	mr r30, r3
/* 802DE800 002D4580  41 82 00 A0 */	beq lbl_802DE8A0
/* 802DE804 002D4584  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802DE808 002D4588  3C 80 80 48 */	lis r4, lbl_80487BB8@ha
/* 802DE80C 002D458C  38 84 7B B8 */	addi r4, r4, lbl_80487BB8@l
/* 802DE810 002D4590  2C 00 00 00 */	cmpwi r0, 0
/* 802DE814 002D4594  90 83 00 00 */	stw r4, 0(r3)
/* 802DE818 002D4598  41 82 00 0C */	beq lbl_802DE824
/* 802DE81C 002D459C  7C 03 03 78 */	mr r3, r0
/* 802DE820 002D45A0  48 01 1E 49 */	bl hkWorldObject$7removeReference
lbl_802DE824:
/* 802DE824 002D45A4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802DE828 002D45A8  2C 03 00 00 */	cmpwi r3, 0
/* 802DE82C 002D45AC  41 82 00 08 */	beq lbl_802DE834
/* 802DE830 002D45B0  48 01 1E 39 */	bl hkWorldObject$7removeReference
lbl_802DE834:
/* 802DE834 002D45B4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802DE838 002D45B8  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 802DE83C 002D45BC  41 86 00 3C */	beq cr1, lbl_802DE878
/* 802DE840 002D45C0  A0 03 00 04 */	lhz r0, 4(r3)
/* 802DE844 002D45C4  2C 00 00 00 */	cmpwi r0, 0
/* 802DE848 002D45C8  41 82 00 30 */	beq lbl_802DE878
/* 802DE84C 002D45CC  A8 83 00 06 */	lha r4, 6(r3)
/* 802DE850 002D45D0  38 84 FF FF */	addi r4, r4, -1
/* 802DE854 002D45D4  7C 80 07 35 */	extsh. r0, r4
/* 802DE858 002D45D8  B0 83 00 06 */	sth r4, 6(r3)
/* 802DE85C 002D45DC  40 82 00 1C */	bne lbl_802DE878
/* 802DE860 002D45E0  41 86 00 18 */	beq cr1, lbl_802DE878
/* 802DE864 002D45E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802DE868 002D45E8  38 80 00 01 */	li r4, 1
/* 802DE86C 002D45EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DE870 002D45F0  7D 89 03 A6 */	mtctr r12
/* 802DE874 002D45F4  4E 80 04 21 */	bctrl 
lbl_802DE878:
/* 802DE878 002D45F8  2C 1F 00 00 */	cmpwi r31, 0
/* 802DE87C 002D45FC  40 81 00 24 */	ble lbl_802DE8A0
/* 802DE880 002D4600  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802DE884 002D4604  7F C4 F3 78 */	mr r4, r30
/* 802DE888 002D4608  A0 BE 00 04 */	lhz r5, 4(r30)
/* 802DE88C 002D460C  38 C0 00 2A */	li r6, 0x2a
/* 802DE890 002D4610  81 83 00 00 */	lwz r12, 0(r3)
/* 802DE894 002D4614  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DE898 002D4618  7D 89 03 A6 */	mtctr r12
/* 802DE89C 002D461C  4E 80 04 21 */	bctrl 
lbl_802DE8A0:
/* 802DE8A0 002D4620  7F C3 F3 78 */	mr r3, r30
/* 802DE8A4 002D4624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE8A8 002D4628  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DE8AC 002D462C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE8B0 002D4630  7C 08 03 A6 */	mtlr r0
/* 802DE8B4 002D4634  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE8B8 002D4638  4E 80 00 20 */	blr 

.global hkConstraintInstance$7pointNullsToFixedRigidBody
hkConstraintInstance$7pointNullsToFixedRigidBody:
/* 802DE8BC 002D463C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE8C0 002D4640  7C 08 02 A6 */	mflr r0
/* 802DE8C4 002D4644  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE8C8 002D4648  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE8CC 002D464C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DE8D0 002D4650  3B C0 00 00 */	li r30, 0
/* 802DE8D4 002D4654  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DE8D8 002D4658  7C 7D 1B 78 */	mr r29, r3
/* 802DE8DC 002D465C  7F BF EB 78 */	mr r31, r29
lbl_802DE8E0:
/* 802DE8E0 002D4660  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802DE8E4 002D4664  2C 04 00 00 */	cmpwi r4, 0
/* 802DE8E8 002D4668  40 82 00 30 */	bne lbl_802DE918
/* 802DE8EC 002D466C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 802DE8F0 002D4670  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 802DE8F4 002D4674  7C 80 02 78 */	xor r0, r4, r0
/* 802DE8F8 002D4678  7C 63 02 79 */	xor. r3, r3, r0
/* 802DE8FC 002D467C  41 82 00 1C */	beq lbl_802DE918
/* 802DE900 002D4680  80 63 00 08 */	lwz r3, 8(r3)
/* 802DE904 002D4684  2C 03 00 00 */	cmpwi r3, 0
/* 802DE908 002D4688  41 82 00 10 */	beq lbl_802DE918
/* 802DE90C 002D468C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 802DE910 002D4690  90 7F 00 14 */	stw r3, 0x14(r31)
/* 802DE914 002D4694  48 01 1D 39 */	bl hkWorldObject$7addReference
lbl_802DE918:
/* 802DE918 002D4698  3B DE 00 01 */	addi r30, r30, 1
/* 802DE91C 002D469C  3B FF 00 04 */	addi r31, r31, 4
/* 802DE920 002D46A0  2C 1E 00 02 */	cmpwi r30, 2
/* 802DE924 002D46A4  41 80 FF BC */	blt lbl_802DE8E0
/* 802DE928 002D46A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE92C 002D46AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE930 002D46B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DE934 002D46B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DE938 002D46B8  7C 08 03 A6 */	mtlr r0
/* 802DE93C 002D46BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE940 002D46C0  4E 80 00 20 */	blr 

.global hkConstraintInstance$7getType
hkConstraintInstance$7getType:
/* 802DE944 002D46C4  38 60 00 00 */	li r3, 0
/* 802DE948 002D46C8  4E 80 00 20 */	blr 

.global __sinit_$3hkConstraintInstance_cpp
__sinit_$3hkConstraintInstance_cpp:
/* 802DE94C 002D46CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE950 002D46D0  7C 08 02 A6 */	mflr r0
/* 802DE954 002D46D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE958 002D46D8  4B FF FD D1 */	bl getVtablehkConstraintInstance
/* 802DE95C 002D46DC  3D 00 80 41 */	lis r8, lbl_804126F0@ha
/* 802DE960 002D46E0  3C E0 80 53 */	lis r7, lbl_80532F10@ha
/* 802DE964 002D46E4  3C C0 80 2E */	lis r6, finishLoadedObjecthkConstraintInstance@ha
/* 802DE968 002D46E8  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkConstraintInstance@ha
/* 802DE96C 002D46EC  39 08 26 F0 */	addi r8, r8, lbl_804126F0@l
/* 802DE970 002D46F0  38 A7 2F 10 */	addi r5, r7, lbl_80532F10@l
/* 802DE974 002D46F4  38 C6 E6 F4 */	addi r6, r6, finishLoadedObjecthkConstraintInstance@l
/* 802DE978 002D46F8  38 84 E7 14 */	addi r4, r4, cleanupLoadedObjecthkConstraintInstance@l
/* 802DE97C 002D46FC  91 07 2F 10 */	stw r8, 0x2f10(r7)
/* 802DE980 002D4700  90 C5 00 04 */	stw r6, 4(r5)
/* 802DE984 002D4704  90 85 00 08 */	stw r4, 8(r5)
/* 802DE988 002D4708  90 65 00 0C */	stw r3, 0xc(r5)
/* 802DE98C 002D470C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE990 002D4710  7C 08 03 A6 */	mtlr r0
/* 802DE994 002D4714  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE998 002D4718  4E 80 00 20 */	blr 

.global __sinit_$3hkConstraintInstanceClass_cpp
__sinit_$3hkConstraintInstanceClass_cpp:
/* 802DE99C 002D471C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE9A0 002D4720  7C 08 02 A6 */	mflr r0
/* 802DE9A4 002D4724  3C C0 80 48 */	lis r6, lbl_80487BD8@ha
/* 802DE9A8 002D4728  3C 60 80 53 */	lis r3, lbl_80532F20@ha
/* 802DE9AC 002D472C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE9B0 002D4730  3C 80 80 41 */	lis r4, lbl_804128A0@ha
/* 802DE9B4 002D4734  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 802DE9B8 002D4738  3D 20 80 41 */	lis r9, lbl_8041282C@ha
/* 802DE9BC 002D473C  80 ED AB C0 */	lwz r7, lbl_8059EFE0-_SDA_BASE_(r13)
/* 802DE9C0 002D4740  38 C6 7B D8 */	addi r6, r6, lbl_80487BD8@l
/* 802DE9C4 002D4744  38 00 00 09 */	li r0, 9
/* 802DE9C8 002D4748  38 63 2F 20 */	addi r3, r3, lbl_80532F20@l
/* 802DE9CC 002D474C  90 C1 00 08 */	stw r6, 8(r1)
/* 802DE9D0 002D4750  38 84 28 A0 */	addi r4, r4, lbl_804128A0@l
/* 802DE9D4 002D4754  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 802DE9D8 002D4758  39 29 28 2C */	addi r9, r9, lbl_8041282C@l
/* 802DE9DC 002D475C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DE9E0 002D4760  38 00 00 00 */	li r0, 0
/* 802DE9E4 002D4764  39 00 00 00 */	li r8, 0
/* 802DE9E8 002D4768  39 40 00 03 */	li r10, 3
/* 802DE9EC 002D476C  90 E6 00 58 */	stw r7, 0x58(r6)
/* 802DE9F0 002D4770  38 C0 00 2C */	li r6, 0x2c
/* 802DE9F4 002D4774  38 E0 00 00 */	li r7, 0
/* 802DE9F8 002D4778  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DE9FC 002D477C  4B F9 DE 0D */	bl hkClass$7__ct
/* 802DEA00 002D4780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DEA04 002D4784  7C 08 03 A6 */	mtlr r0
/* 802DEA08 002D4788  38 21 00 20 */	addi r1, r1, 0x20
/* 802DEA0C 002D478C  4E 80 00 20 */	blr 

.global __sinit_$3hkConstraintMotorClass_cpp
__sinit_$3hkConstraintMotorClass_cpp:
/* 802DEA10 002D4790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DEA14 002D4794  7C 08 02 A6 */	mflr r0
/* 802DEA18 002D4798  3C C0 80 48 */	lis r6, lbl_80487C90@ha
/* 802DEA1C 002D479C  3C 60 80 53 */	lis r3, lbl_80532F48@ha
/* 802DEA20 002D47A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEA24 002D47A4  3C 80 80 41 */	lis r4, lbl_80412948@ha
/* 802DEA28 002D47A8  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 802DEA2C 002D47AC  3D 20 80 41 */	lis r9, lbl_8041293C@ha
/* 802DEA30 002D47B0  80 ED AB C8 */	lwz r7, lbl_8059EFE8-_SDA_BASE_(r13)
/* 802DEA34 002D47B4  38 C6 7C 90 */	addi r6, r6, lbl_80487C90@l
/* 802DEA38 002D47B8  38 00 00 01 */	li r0, 1
/* 802DEA3C 002D47BC  38 63 2F 48 */	addi r3, r3, lbl_80532F48@l
/* 802DEA40 002D47C0  90 C1 00 08 */	stw r6, 8(r1)
/* 802DEA44 002D47C4  38 84 29 48 */	addi r4, r4, lbl_80412948@l
/* 802DEA48 002D47C8  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 802DEA4C 002D47CC  39 29 29 3C */	addi r9, r9, lbl_8041293C@l
/* 802DEA50 002D47D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DEA54 002D47D4  38 00 00 00 */	li r0, 0
/* 802DEA58 002D47D8  39 00 00 00 */	li r8, 0
/* 802DEA5C 002D47DC  39 40 00 01 */	li r10, 1
/* 802DEA60 002D47E0  90 E6 00 08 */	stw r7, 8(r6)
/* 802DEA64 002D47E4  38 C0 00 0C */	li r6, 0xc
/* 802DEA68 002D47E8  38 E0 00 00 */	li r7, 0
/* 802DEA6C 002D47EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DEA70 002D47F0  4B F9 DD 99 */	bl hkClass$7__ct
/* 802DEA74 002D47F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DEA78 002D47F8  7C 08 03 A6 */	mtlr r0
/* 802DEA7C 002D47FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802DEA80 002D4800  4E 80 00 20 */	blr 


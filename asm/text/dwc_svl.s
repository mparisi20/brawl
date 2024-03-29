.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global DWC_SvlInit
DWC_SvlInit:
/* 80358730 0034E4B0  38 00 00 00 */	li r0, 0
/* 80358734 0034E4B4  38 60 00 01 */	li r3, 1
/* 80358738 0034E4B8  90 0D CC 10 */	stw r0, lbl_805A1030-_SDA_BASE_(r13)
/* 8035873C 0034E4BC  4E 80 00 20 */	blr 

.global DWC_SvlCleanup
DWC_SvlCleanup:
/* 80358740 0034E4C0  38 00 00 00 */	li r0, 0
/* 80358744 0034E4C4  90 0D CC 10 */	stw r0, lbl_805A1030-_SDA_BASE_(r13)
/* 80358748 0034E4C8  4E 80 00 20 */	blr 

.global DWC_SvlGetTokenAsync
DWC_SvlGetTokenAsync:
/* 8035874C 0034E4CC  3C A0 80 33 */	lis r5, DWC_Free@ha
/* 80358750 0034E4D0  90 8D CC 10 */	stw r4, lbl_805A1030-_SDA_BASE_(r13)
/* 80358754 0034E4D4  3C 80 80 33 */	lis r4, DWC_Alloc@ha
/* 80358758 0034E4D8  38 84 53 90 */	addi r4, r4, DWC_Alloc@l
/* 8035875C 0034E4DC  38 A5 54 50 */	addi r5, r5, DWC_Free@l
/* 80358760 0034E4E0  4B FF 9B 00 */	b DWCi_Auth_Svl_StartAuthentication

.global DWC_SvlProcess
DWC_SvlProcess:
/* 80358764 0034E4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358768 0034E4E8  7C 08 02 A6 */	mflr r0
/* 8035876C 0034E4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358770 0034E4F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358774 0034E4F4  4B FF A3 45 */	bl DWCi_Auth_IsFinished
/* 80358778 0034E4F8  2C 03 00 00 */	cmpwi r3, 0
/* 8035877C 0034E4FC  41 82 00 F8 */	beq lbl_80358874
/* 80358780 0034E500  4B FF A3 75 */	bl DWCi_Auth_IsSucceeded
/* 80358784 0034E504  2C 03 00 00 */	cmpwi r3, 0
/* 80358788 0034E508  41 82 00 6C */	beq lbl_803587F4
/* 8035878C 0034E50C  83 ED CC 10 */	lwz r31, lbl_805A1030-_SDA_BASE_(r13)
/* 80358790 0034E510  2C 1F 00 00 */	cmpwi r31, 0
/* 80358794 0034E514  41 82 00 34 */	beq lbl_803587C8
/* 80358798 0034E518  4B FF A4 49 */	bl DWCi_Auth_GetSvlResult
/* 8035879C 0034E51C  38 00 00 2E */	li r0, 0x2e
/* 803587A0 0034E520  38 BF FF FC */	addi r5, r31, -4
/* 803587A4 0034E524  38 83 FF FC */	addi r4, r3, -4
/* 803587A8 0034E528  7C 09 03 A6 */	mtctr r0
lbl_803587AC:
/* 803587AC 0034E52C  80 64 00 04 */	lwz r3, 4(r4)
/* 803587B0 0034E530  84 04 00 08 */	lwzu r0, 8(r4)
/* 803587B4 0034E534  90 65 00 04 */	stw r3, 4(r5)
/* 803587B8 0034E538  94 05 00 08 */	stwu r0, 8(r5)
/* 803587BC 0034E53C  42 00 FF F0 */	bdnz lbl_803587AC
/* 803587C0 0034E540  80 04 00 04 */	lwz r0, 4(r4)
/* 803587C4 0034E544  90 05 00 04 */	stw r0, 4(r5)
lbl_803587C8:
/* 803587C8 0034E548  38 7F 00 45 */	addi r3, r31, 0x45
/* 803587CC 0034E54C  48 09 7E 75 */	bl strlen
/* 803587D0 0034E550  2C 03 00 00 */	cmpwi r3, 0
/* 803587D4 0034E554  40 82 00 18 */	bne lbl_803587EC
/* 803587D8 0034E558  38 60 00 10 */	li r3, 0x10
/* 803587DC 0034E55C  38 80 A1 DB */	li r4, -24101
/* 803587E0 0034E560  4B FD CA 6D */	bl DWCi_SetError
/* 803587E4 0034E564  38 60 00 04 */	li r3, 4
/* 803587E8 0034E568  48 00 00 94 */	b lbl_8035887C
lbl_803587EC:
/* 803587EC 0034E56C  38 60 00 03 */	li r3, 3
/* 803587F0 0034E570  48 00 00 8C */	b lbl_8035887C
lbl_803587F4:
/* 803587F4 0034E574  4B FF A3 19 */	bl DWCi_Auth_GetErrorCode
/* 803587F8 0034E578  2C 03 B1 7D */	cmpwi r3, -20099
/* 803587FC 0034E57C  7C 7F 1B 78 */	mr r31, r3
/* 80358800 0034E580  40 80 00 18 */	bge lbl_80358818
/* 80358804 0034E584  2C 03 B1 72 */	cmpwi r3, -20110
/* 80358808 0034E588  40 80 00 08 */	bge lbl_80358810
/* 8035880C 0034E58C  48 00 00 0C */	b lbl_80358818
lbl_80358810:
/* 80358810 0034E590  3B E3 F0 60 */	addi r31, r3, -4000
/* 80358814 0034E594  48 00 00 4C */	b lbl_80358860
lbl_80358818:
/* 80358818 0034E598  2C 03 B1 71 */	cmpwi r3, -20111
/* 8035881C 0034E59C  41 81 00 14 */	bgt lbl_80358830
/* 80358820 0034E5A0  2C 03 AD F9 */	cmpwi r3, -20999
/* 80358824 0034E5A4  41 80 00 0C */	blt lbl_80358830
/* 80358828 0034E5A8  3B E3 F0 60 */	addi r31, r3, -4000
/* 8035882C 0034E5AC  48 00 00 34 */	b lbl_80358860
lbl_80358830:
/* 80358830 0034E5B0  2C 03 A6 28 */	cmpwi r3, -23000
/* 80358834 0034E5B4  41 81 00 14 */	bgt lbl_80358848
/* 80358838 0034E5B8  2C 03 A2 41 */	cmpwi r3, -23999
/* 8035883C 0034E5BC  41 80 00 0C */	blt lbl_80358848
/* 80358840 0034E5C0  3B E3 F8 30 */	addi r31, r3, -2000
/* 80358844 0034E5C4  48 00 00 1C */	b lbl_80358860
lbl_80358848:
/* 80358848 0034E5C8  3C 80 80 49 */	lis r4, lbl_8048E660@ha
/* 8035884C 0034E5CC  7F E5 FB 78 */	mr r5, r31
/* 80358850 0034E5D0  38 84 E6 60 */	addi r4, r4, lbl_8048E660@l
/* 80358854 0034E5D4  3C 60 01 00 */	lis r3, 0x100
/* 80358858 0034E5D8  4C C6 31 82 */	crclr 6
/* 8035885C 0034E5DC  4B FD CD DD */	bl DWC_Printf
lbl_80358860:
/* 80358860 0034E5E0  7F E4 FB 78 */	mr r4, r31
/* 80358864 0034E5E4  38 60 00 10 */	li r3, 0x10
/* 80358868 0034E5E8  4B FD C9 E5 */	bl DWCi_SetError
/* 8035886C 0034E5EC  38 60 00 04 */	li r3, 4
/* 80358870 0034E5F0  48 00 00 0C */	b lbl_8035887C
lbl_80358874:
/* 80358874 0034E5F4  4B FF 9B A5 */	bl DWCi_Auth_ProcessAuthentication
/* 80358878 0034E5F8  38 60 00 02 */	li r3, 2
lbl_8035887C:
/* 8035887C 0034E5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358880 0034E600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358884 0034E604  7C 08 03 A6 */	mtlr r0
/* 80358888 0034E608  38 21 00 10 */	addi r1, r1, 0x10
/* 8035888C 0034E60C  4E 80 00 20 */	blr 


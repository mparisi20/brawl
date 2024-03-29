.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkPhantomAgent$7registerAgent
hkPhantomAgent$7registerAgent:
/* 802C068C 002B640C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C0690 002B6410  7C 08 02 A6 */	mflr r0
/* 802C0694 002B6414  3C C0 80 2C */	lis r6, hkPhantomAgent$7createPhantomAgent@ha
/* 802C0698 002B6418  3D 20 80 2C */	lis r9, hkPhantomAgent$7staticGetPenetrations@ha
/* 802C069C 002B641C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C06A0 002B6420  3D 00 80 2C */	lis r8, hkPhantomAgent$7staticGetClosestPoints@ha
/* 802C06A4 002B6424  3C E0 80 2C */	lis r7, hkPhantomAgent$7staticLinearCast@ha
/* 802C06A8 002B6428  38 C6 07 D0 */	addi r6, r6, hkPhantomAgent$7createPhantomAgent@l
/* 802C06AC 002B642C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C06B0 002B6430  39 29 0A 08 */	addi r9, r9, hkPhantomAgent$7staticGetPenetrations@l
/* 802C06B4 002B6434  39 08 0A 2C */	addi r8, r8, hkPhantomAgent$7staticGetClosestPoints@l
/* 802C06B8 002B6438  38 E7 0A 34 */	addi r7, r7, hkPhantomAgent$7staticLinearCast@l
/* 802C06BC 002B643C  38 80 00 00 */	li r4, 0
/* 802C06C0 002B6440  38 00 00 01 */	li r0, 1
/* 802C06C4 002B6444  98 81 00 18 */	stb r4, 0x18(r1)
/* 802C06C8 002B6448  7C 7F 1B 78 */	mr r31, r3
/* 802C06CC 002B644C  38 81 00 08 */	addi r4, r1, 8
/* 802C06D0 002B6450  38 A0 00 1A */	li r5, 0x1a
/* 802C06D4 002B6454  90 C1 00 08 */	stw r6, 8(r1)
/* 802C06D8 002B6458  38 C0 FF FF */	li r6, -1
/* 802C06DC 002B645C  91 21 00 0C */	stw r9, 0xc(r1)
/* 802C06E0 002B6460  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C06E4 002B6464  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C06E8 002B6468  98 01 00 19 */	stb r0, 0x19(r1)
/* 802C06EC 002B646C  48 00 BA 01 */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802C06F0 002B6470  7F E3 FB 78 */	mr r3, r31
/* 802C06F4 002B6474  38 81 00 08 */	addi r4, r1, 8
/* 802C06F8 002B6478  38 A0 FF FF */	li r5, -1
/* 802C06FC 002B647C  38 C0 00 1A */	li r6, 0x1a
/* 802C0700 002B6480  48 00 B9 ED */	bl hkCollisionDispatcher$7registerCollisionAgent
/* 802C0704 002B6484  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C0708 002B6488  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C070C 002B648C  7C 08 03 A6 */	mtlr r0
/* 802C0710 002B6490  38 21 00 30 */	addi r1, r1, 0x30
/* 802C0714 002B6494  4E 80 00 20 */	blr 

.global hkPhantomAgent$7__ct
hkPhantomAgent$7__ct:
/* 802C0718 002B6498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C071C 002B649C  7C 08 02 A6 */	mflr r0
/* 802C0720 002B64A0  3C E0 80 48 */	lis r7, lbl_80486EF8@ha
/* 802C0724 002B64A4  7C 88 23 78 */	mr r8, r4
/* 802C0728 002B64A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C072C 002B64AC  38 00 00 01 */	li r0, 1
/* 802C0730 002B64B0  38 E7 6E F8 */	addi r7, r7, lbl_80486EF8@l
/* 802C0734 002B64B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0738 002B64B8  7C BF 2B 78 */	mr r31, r5
/* 802C073C 002B64BC  93 C1 00 08 */	stw r30, 8(r1)
/* 802C0740 002B64C0  7C 7E 1B 78 */	mr r30, r3
/* 802C0744 002B64C4  B0 03 00 06 */	sth r0, 6(r3)
/* 802C0748 002B64C8  90 C3 00 08 */	stw r6, 8(r3)
/* 802C074C 002B64CC  90 E3 00 00 */	stw r7, 0(r3)
/* 802C0750 002B64D0  48 00 00 08 */	b lbl_802C0758
lbl_802C0754:
/* 802C0754 002B64D4  7C 08 03 78 */	mr r8, r0
lbl_802C0758:
/* 802C0758 002B64D8  80 08 00 0C */	lwz r0, 0xc(r8)
/* 802C075C 002B64DC  2C 00 00 00 */	cmpwi r0, 0
/* 802C0760 002B64E0  40 82 FF F4 */	bne lbl_802C0754
/* 802C0764 002B64E4  91 03 00 0C */	stw r8, 0xc(r3)
/* 802C0768 002B64E8  7F E5 FB 78 */	mr r5, r31
/* 802C076C 002B64EC  48 00 00 08 */	b lbl_802C0774
lbl_802C0770:
/* 802C0770 002B64F0  7C 05 03 78 */	mr r5, r0
lbl_802C0774:
/* 802C0774 002B64F4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802C0778 002B64F8  2C 00 00 00 */	cmpwi r0, 0
/* 802C077C 002B64FC  40 82 FF F4 */	bne lbl_802C0770
/* 802C0780 002B6500  90 A3 00 10 */	stw r5, 0x10(r3)
/* 802C0784 002B6504  80 64 00 00 */	lwz r3, 0(r4)
/* 802C0788 002B6508  81 83 00 00 */	lwz r12, 0(r3)
/* 802C078C 002B650C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802C0790 002B6510  7D 89 03 A6 */	mtctr r12
/* 802C0794 002B6514  4E 80 04 21 */	bctrl 
/* 802C0798 002B6518  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802C079C 002B651C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C07A0 002B6520  81 83 00 00 */	lwz r12, 0(r3)
/* 802C07A4 002B6524  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802C07A8 002B6528  7D 89 03 A6 */	mtctr r12
/* 802C07AC 002B652C  4E 80 04 21 */	bctrl 
/* 802C07B0 002B6530  90 7E 00 20 */	stw r3, 0x20(r30)
/* 802C07B4 002B6534  7F C3 F3 78 */	mr r3, r30
/* 802C07B8 002B6538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C07BC 002B653C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C07C0 002B6540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C07C4 002B6544  7C 08 03 A6 */	mtlr r0
/* 802C07C8 002B6548  38 21 00 10 */	addi r1, r1, 0x10
/* 802C07CC 002B654C  4E 80 00 20 */	blr 

.global hkPhantomAgent$7createPhantomAgent
hkPhantomAgent$7createPhantomAgent:
/* 802C07D0 002B6550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C07D4 002B6554  7C 08 02 A6 */	mflr r0
/* 802C07D8 002B6558  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C07DC 002B655C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802C07E0 002B6560  7C 7B 1B 78 */	mr r27, r3
/* 802C07E4 002B6564  7C 9C 23 78 */	mr r28, r4
/* 802C07E8 002B6568  7C BD 2B 78 */	mr r29, r5
/* 802C07EC 002B656C  7C DE 33 78 */	mr r30, r6
/* 802C07F0 002B6570  38 80 00 24 */	li r4, 0x24
/* 802C07F4 002B6574  38 A0 00 1D */	li r5, 0x1d
/* 802C07F8 002B6578  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802C07FC 002B657C  81 83 00 00 */	lwz r12, 0(r3)
/* 802C0800 002B6580  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C0804 002B6584  7D 89 03 A6 */	mtctr r12
/* 802C0808 002B6588  4E 80 04 21 */	bctrl 
/* 802C080C 002B658C  38 00 00 24 */	li r0, 0x24
/* 802C0810 002B6590  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C0814 002B6594  B0 03 00 04 */	sth r0, 4(r3)
/* 802C0818 002B6598  41 82 00 14 */	beq lbl_802C082C
/* 802C081C 002B659C  7F 64 DB 78 */	mr r4, r27
/* 802C0820 002B65A0  7F 85 E3 78 */	mr r5, r28
/* 802C0824 002B65A4  7F C6 F3 78 */	mr r6, r30
/* 802C0828 002B65A8  4B FF FE F1 */	bl hkPhantomAgent$7__ct
lbl_802C082C:
/* 802C082C 002B65AC  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 802C0830 002B65B0  2C 00 00 1A */	cmpwi r0, 0x1a
/* 802C0834 002B65B4  40 82 00 54 */	bne lbl_802C0888
/* 802C0838 002B65B8  83 DB 00 00 */	lwz r30, 0(r27)
/* 802C083C 002B65BC  7F 64 DB 78 */	mr r4, r27
/* 802C0840 002B65C0  48 00 00 08 */	b lbl_802C0848
lbl_802C0844:
/* 802C0844 002B65C4  7C 04 03 78 */	mr r4, r0
lbl_802C0848:
/* 802C0848 002B65C8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802C084C 002B65CC  2C 00 00 00 */	cmpwi r0, 0
/* 802C0850 002B65D0  40 82 FF F4 */	bne lbl_802C0844
/* 802C0854 002B65D4  7F 85 E3 78 */	mr r5, r28
/* 802C0858 002B65D8  48 00 00 08 */	b lbl_802C0860
lbl_802C085C:
/* 802C085C 002B65DC  7C 05 03 78 */	mr r5, r0
lbl_802C0860:
/* 802C0860 002B65E0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802C0864 002B65E4  2C 00 00 00 */	cmpwi r0, 0
/* 802C0868 002B65E8  40 82 FF F4 */	bne lbl_802C085C
/* 802C086C 002B65EC  81 9E 00 00 */	lwz r12, 0(r30)
/* 802C0870 002B65F0  7F C3 F3 78 */	mr r3, r30
/* 802C0874 002B65F4  7F A6 EB 78 */	mr r6, r29
/* 802C0878 002B65F8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802C087C 002B65FC  7D 89 03 A6 */	mtctr r12
/* 802C0880 002B6600  4E 80 04 21 */	bctrl 
/* 802C0884 002B6604  93 DF 00 14 */	stw r30, 0x14(r31)
lbl_802C0888:
/* 802C0888 002B6608  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802C088C 002B660C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 802C0890 002B6610  40 82 00 54 */	bne lbl_802C08E4
/* 802C0894 002B6614  83 DC 00 00 */	lwz r30, 0(r28)
/* 802C0898 002B6618  48 00 00 08 */	b lbl_802C08A0
lbl_802C089C:
/* 802C089C 002B661C  7C 1C 03 78 */	mr r28, r0
lbl_802C08A0:
/* 802C08A0 002B6620  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802C08A4 002B6624  2C 00 00 00 */	cmpwi r0, 0
/* 802C08A8 002B6628  40 82 FF F4 */	bne lbl_802C089C
/* 802C08AC 002B662C  48 00 00 08 */	b lbl_802C08B4
lbl_802C08B0:
/* 802C08B0 002B6630  7C 1B 03 78 */	mr r27, r0
lbl_802C08B4:
/* 802C08B4 002B6634  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 802C08B8 002B6638  2C 00 00 00 */	cmpwi r0, 0
/* 802C08BC 002B663C  40 82 FF F4 */	bne lbl_802C08B0
/* 802C08C0 002B6640  81 9E 00 00 */	lwz r12, 0(r30)
/* 802C08C4 002B6644  7F C3 F3 78 */	mr r3, r30
/* 802C08C8 002B6648  7F 84 E3 78 */	mr r4, r28
/* 802C08CC 002B664C  7F 65 DB 78 */	mr r5, r27
/* 802C08D0 002B6650  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802C08D4 002B6654  7F A6 EB 78 */	mr r6, r29
/* 802C08D8 002B6658  7D 89 03 A6 */	mtctr r12
/* 802C08DC 002B665C  4E 80 04 21 */	bctrl 
/* 802C08E0 002B6660  93 DF 00 18 */	stw r30, 0x18(r31)
lbl_802C08E4:
/* 802C08E4 002B6664  7F E3 FB 78 */	mr r3, r31
/* 802C08E8 002B6668  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802C08EC 002B666C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C08F0 002B6670  7C 08 03 A6 */	mtlr r0
/* 802C08F4 002B6674  38 21 00 20 */	addi r1, r1, 0x20
/* 802C08F8 002B6678  4E 80 00 20 */	blr 

.global hkPhantomAgent$7cleanup
hkPhantomAgent$7cleanup:
/* 802C08FC 002B667C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0900 002B6680  7C 08 02 A6 */	mflr r0
/* 802C0904 002B6684  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0908 002B6688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C090C 002B668C  7C 7F 1B 78 */	mr r31, r3
/* 802C0910 002B6690  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802C0914 002B6694  2C 00 00 1A */	cmpwi r0, 0x1a
/* 802C0918 002B6698  40 82 00 20 */	bne lbl_802C0938
/* 802C091C 002B669C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802C0920 002B66A0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802C0924 002B66A4  81 83 00 00 */	lwz r12, 0(r3)
/* 802C0928 002B66A8  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 802C092C 002B66AC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802C0930 002B66B0  7D 89 03 A6 */	mtctr r12
/* 802C0934 002B66B4  4E 80 04 21 */	bctrl 
lbl_802C0938:
/* 802C0938 002B66B8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802C093C 002B66BC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 802C0940 002B66C0  40 82 00 20 */	bne lbl_802C0960
/* 802C0944 002B66C4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802C0948 002B66C8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802C094C 002B66CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802C0950 002B66D0  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802C0954 002B66D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802C0958 002B66D8  7D 89 03 A6 */	mtctr r12
/* 802C095C 002B66DC  4E 80 04 21 */	bctrl 
lbl_802C0960:
/* 802C0960 002B66E0  2C 1F 00 00 */	cmpwi r31, 0
/* 802C0964 002B66E4  41 82 00 1C */	beq lbl_802C0980
/* 802C0968 002B66E8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802C096C 002B66EC  7F E3 FB 78 */	mr r3, r31
/* 802C0970 002B66F0  38 80 00 01 */	li r4, 1
/* 802C0974 002B66F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C0978 002B66F8  7D 89 03 A6 */	mtctr r12
/* 802C097C 002B66FC  4E 80 04 21 */	bctrl 
lbl_802C0980:
/* 802C0980 002B6700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0984 002B6704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0988 002B6708  7C 08 03 A6 */	mtlr r0
/* 802C098C 002B670C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0990 002B6710  4E 80 00 20 */	blr 

.global hkPhantomAgent$7__dt
hkPhantomAgent$7__dt:
/* 802C0994 002B6714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0998 002B6718  7C 08 02 A6 */	mflr r0
/* 802C099C 002B671C  2C 03 00 00 */	cmpwi r3, 0
/* 802C09A0 002B6720  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C09A4 002B6724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C09A8 002B6728  7C 7F 1B 78 */	mr r31, r3
/* 802C09AC 002B672C  41 82 00 2C */	beq lbl_802C09D8
/* 802C09B0 002B6730  2C 04 00 00 */	cmpwi r4, 0
/* 802C09B4 002B6734  40 81 00 24 */	ble lbl_802C09D8
/* 802C09B8 002B6738  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802C09BC 002B673C  7F E4 FB 78 */	mr r4, r31
/* 802C09C0 002B6740  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802C09C4 002B6744  38 C0 00 1D */	li r6, 0x1d
/* 802C09C8 002B6748  81 83 00 00 */	lwz r12, 0(r3)
/* 802C09CC 002B674C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C09D0 002B6750  7D 89 03 A6 */	mtctr r12
/* 802C09D4 002B6754  4E 80 04 21 */	bctrl 
lbl_802C09D8:
/* 802C09D8 002B6758  7F E3 FB 78 */	mr r3, r31
/* 802C09DC 002B675C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C09E0 002B6760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C09E4 002B6764  7C 08 03 A6 */	mtlr r0
/* 802C09E8 002B6768  38 21 00 10 */	addi r1, r1, 0x10
/* 802C09EC 002B676C  4E 80 00 20 */	blr 

.global hkPhantomAgent$7processCollision
hkPhantomAgent$7processCollision:
/* 802C09F0 002B6770  4E 80 00 20 */	blr 

.global hkPhantomAgent$7getPenetrations
hkPhantomAgent$7getPenetrations:
/* 802C09F4 002B6774  81 87 00 00 */	lwz r12, 0(r7)
/* 802C09F8 002B6778  7C E3 3B 78 */	mr r3, r7
/* 802C09FC 002B677C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C0A00 002B6780  7D 89 03 A6 */	mtctr r12
/* 802C0A04 002B6784  4E 80 04 20 */	bctr 

.global hkPhantomAgent$7staticGetPenetrations
hkPhantomAgent$7staticGetPenetrations:
/* 802C0A08 002B6788  81 86 00 00 */	lwz r12, 0(r6)
/* 802C0A0C 002B678C  7C 60 1B 78 */	mr r0, r3
/* 802C0A10 002B6790  7C 85 23 78 */	mr r5, r4
/* 802C0A14 002B6794  7C C3 33 78 */	mr r3, r6
/* 802C0A18 002B6798  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C0A1C 002B679C  7C 04 03 78 */	mr r4, r0
/* 802C0A20 002B67A0  7D 89 03 A6 */	mtctr r12
/* 802C0A24 002B67A4  4E 80 04 20 */	bctr 

.global hkPhantomAgent$7getClosestPoints
hkPhantomAgent$7getClosestPoints:
/* 802C0A28 002B67A8  4E 80 00 20 */	blr 

.global hkPhantomAgent$7staticGetClosestPoints
hkPhantomAgent$7staticGetClosestPoints:
/* 802C0A2C 002B67AC  4E 80 00 20 */	blr 

.global hkPhantomAgent$7linearCast
hkPhantomAgent$7linearCast:
/* 802C0A30 002B67B0  4E 80 00 20 */	blr 

.global hkPhantomAgent$7staticLinearCast
hkPhantomAgent$7staticLinearCast:
/* 802C0A34 002B67B4  4E 80 00 20 */	blr 


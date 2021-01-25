.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail8PoolImplFPvUlUl$7CreateImpl
nw4r3snd6detail8PoolImplFPvUlUl$7CreateImpl:
/* 801C07F8 001B6578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C07FC 001B657C  7C 08 02 A6 */	mflr r0
/* 801C0800 001B6580  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0804 001B6584  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C0808 001B6588  7C 7F 1B 78 */	mr r31, r3
/* 801C080C 001B658C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C0810 001B6590  7C DE 33 78 */	mr r30, r6
/* 801C0814 001B6594  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C0818 001B6598  7C BD 2B 78 */	mr r29, r5
/* 801C081C 001B659C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801C0820 001B65A0  7C 9C 23 78 */	mr r28, r4
/* 801C0824 001B65A4  48 01 C6 ED */	bl OSDisableInterrupts
/* 801C0828 001B65A8  38 1C 00 03 */	addi r0, r28, 3
/* 801C082C 001B65AC  38 9E 00 03 */	addi r4, r30, 3
/* 801C0830 001B65B0  54 06 00 3A */	rlwinm r6, r0, 0, 0, 0x1d
/* 801C0834 001B65B4  38 E0 00 00 */	li r7, 0
/* 801C0838 001B65B8  7C 1C 30 50 */	subf r0, r28, r6
/* 801C083C 001B65BC  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 801C0840 001B65C0  7C 00 E8 50 */	subf r0, r0, r29
/* 801C0844 001B65C4  7F C0 23 97 */	divwu. r30, r0, r4
/* 801C0848 001B65C8  41 82 00 CC */	beq lbl_801C0914
/* 801C084C 001B65CC  28 1E 00 08 */	cmplwi r30, 8
/* 801C0850 001B65D0  38 BE FF F8 */	addi r5, r30, -8
/* 801C0854 001B65D4  40 81 00 9C */	ble lbl_801C08F0
/* 801C0858 001B65D8  38 05 00 07 */	addi r0, r5, 7
/* 801C085C 001B65DC  54 00 E8 FE */	srwi r0, r0, 3
/* 801C0860 001B65E0  7C 09 03 A6 */	mtctr r0
/* 801C0864 001B65E4  28 05 00 00 */	cmplwi r5, 0
/* 801C0868 001B65E8  40 81 00 88 */	ble lbl_801C08F0
lbl_801C086C:
/* 801C086C 001B65EC  80 1F 00 00 */	lwz r0, 0(r31)
/* 801C0870 001B65F0  7C C8 33 78 */	mr r8, r6
/* 801C0874 001B65F4  38 E7 00 08 */	addi r7, r7, 8
/* 801C0878 001B65F8  90 06 00 00 */	stw r0, 0(r6)
/* 801C087C 001B65FC  90 DF 00 00 */	stw r6, 0(r31)
/* 801C0880 001B6600  7C C6 22 14 */	add r6, r6, r4
/* 801C0884 001B6604  7C C5 33 78 */	mr r5, r6
/* 801C0888 001B6608  91 06 00 00 */	stw r8, 0(r6)
/* 801C088C 001B660C  90 DF 00 00 */	stw r6, 0(r31)
/* 801C0890 001B6610  7C C6 22 14 */	add r6, r6, r4
/* 801C0894 001B6614  7C C0 33 78 */	mr r0, r6
/* 801C0898 001B6618  90 A6 00 00 */	stw r5, 0(r6)
/* 801C089C 001B661C  90 DF 00 00 */	stw r6, 0(r31)
/* 801C08A0 001B6620  7C C6 22 14 */	add r6, r6, r4
/* 801C08A4 001B6624  7C C5 33 78 */	mr r5, r6
/* 801C08A8 001B6628  90 06 00 00 */	stw r0, 0(r6)
/* 801C08AC 001B662C  90 DF 00 00 */	stw r6, 0(r31)
/* 801C08B0 001B6630  7C C6 22 14 */	add r6, r6, r4
/* 801C08B4 001B6634  7C C0 33 78 */	mr r0, r6
/* 801C08B8 001B6638  90 A6 00 00 */	stw r5, 0(r6)
/* 801C08BC 001B663C  90 DF 00 00 */	stw r6, 0(r31)
/* 801C08C0 001B6640  7C C6 22 14 */	add r6, r6, r4
/* 801C08C4 001B6644  7C C5 33 78 */	mr r5, r6
/* 801C08C8 001B6648  90 06 00 00 */	stw r0, 0(r6)
/* 801C08CC 001B664C  90 DF 00 00 */	stw r6, 0(r31)
/* 801C08D0 001B6650  7C C6 22 14 */	add r6, r6, r4
/* 801C08D4 001B6654  7C C0 33 78 */	mr r0, r6
/* 801C08D8 001B6658  90 A6 00 00 */	stw r5, 0(r6)
/* 801C08DC 001B665C  90 DF 00 00 */	stw r6, 0(r31)
/* 801C08E0 001B6660  7C 06 21 6E */	stwux r0, r6, r4
/* 801C08E4 001B6664  90 DF 00 00 */	stw r6, 0(r31)
/* 801C08E8 001B6668  7C C6 22 14 */	add r6, r6, r4
/* 801C08EC 001B666C  42 00 FF 80 */	bdnz lbl_801C086C
lbl_801C08F0:
/* 801C08F0 001B6670  7C 07 F0 50 */	subf r0, r7, r30
/* 801C08F4 001B6674  7C 09 03 A6 */	mtctr r0
/* 801C08F8 001B6678  7C 07 F0 40 */	cmplw r7, r30
/* 801C08FC 001B667C  40 80 00 18 */	bge lbl_801C0914
lbl_801C0900:
/* 801C0900 001B6680  80 1F 00 00 */	lwz r0, 0(r31)
/* 801C0904 001B6684  90 06 00 00 */	stw r0, 0(r6)
/* 801C0908 001B6688  90 DF 00 00 */	stw r6, 0(r31)
/* 801C090C 001B668C  7C C6 22 14 */	add r6, r6, r4
/* 801C0910 001B6690  42 00 FF F0 */	bdnz lbl_801C0900
lbl_801C0914:
/* 801C0914 001B6694  48 01 C6 25 */	bl OSRestoreInterrupts
/* 801C0918 001B6698  7F C3 F3 78 */	mr r3, r30
/* 801C091C 001B669C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C0920 001B66A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C0924 001B66A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C0928 001B66A8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801C092C 001B66AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0930 001B66B0  7C 08 03 A6 */	mtlr r0
/* 801C0934 001B66B4  38 21 00 20 */	addi r1, r1, 0x20
/* 801C0938 001B66B8  4E 80 00 20 */	blr 

.global nw4r3snd6detail8PoolImplFPvUl$7DestroyImpl
nw4r3snd6detail8PoolImplFPvUl$7DestroyImpl:
/* 801C093C 001B66BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C0940 001B66C0  7C 08 02 A6 */	mflr r0
/* 801C0944 001B66C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0948 001B66C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C094C 001B66CC  7C BF 2B 78 */	mr r31, r5
/* 801C0950 001B66D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C0954 001B66D4  7C 9E 23 78 */	mr r30, r4
/* 801C0958 001B66D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C095C 001B66DC  7C 7D 1B 78 */	mr r29, r3
/* 801C0960 001B66E0  48 01 C5 B1 */	bl OSDisableInterrupts
/* 801C0964 001B66E4  80 BD 00 00 */	lwz r5, 0(r29)
/* 801C0968 001B66E8  7C 9E FA 14 */	add r4, r30, r31
/* 801C096C 001B66EC  48 00 00 28 */	b lbl_801C0994
lbl_801C0970:
/* 801C0970 001B66F0  7C 1E 28 40 */	cmplw r30, r5
/* 801C0974 001B66F4  41 81 00 18 */	bgt lbl_801C098C
/* 801C0978 001B66F8  7C 05 20 40 */	cmplw r5, r4
/* 801C097C 001B66FC  40 80 00 10 */	bge lbl_801C098C
/* 801C0980 001B6700  80 05 00 00 */	lwz r0, 0(r5)
/* 801C0984 001B6704  90 1D 00 00 */	stw r0, 0(r29)
/* 801C0988 001B6708  48 00 00 08 */	b lbl_801C0990
lbl_801C098C:
/* 801C098C 001B670C  7C BD 2B 78 */	mr r29, r5
lbl_801C0990:
/* 801C0990 001B6710  80 A5 00 00 */	lwz r5, 0(r5)
lbl_801C0994:
/* 801C0994 001B6714  2C 05 00 00 */	cmpwi r5, 0
/* 801C0998 001B6718  40 82 FF D8 */	bne lbl_801C0970
/* 801C099C 001B671C  48 01 C5 9D */	bl OSRestoreInterrupts
/* 801C09A0 001B6720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C09A4 001B6724  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C09A8 001B6728  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C09AC 001B672C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C09B0 001B6730  7C 08 03 A6 */	mtlr r0
/* 801C09B4 001B6734  38 21 00 20 */	addi r1, r1, 0x20
/* 801C09B8 001B6738  4E 80 00 20 */	blr 

.global nw4r3snd6detail8PoolImplCFv$7CountImpl
nw4r3snd6detail8PoolImplCFv$7CountImpl:
/* 801C09BC 001B673C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C09C0 001B6740  7C 08 02 A6 */	mflr r0
/* 801C09C4 001B6744  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C09C8 001B6748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C09CC 001B674C  7C 7F 1B 78 */	mr r31, r3
/* 801C09D0 001B6750  48 01 C5 41 */	bl OSDisableInterrupts
/* 801C09D4 001B6754  80 9F 00 00 */	lwz r4, 0(r31)
/* 801C09D8 001B6758  3B E0 00 00 */	li r31, 0
/* 801C09DC 001B675C  48 00 00 0C */	b lbl_801C09E8
lbl_801C09E0:
/* 801C09E0 001B6760  80 84 00 00 */	lwz r4, 0(r4)
/* 801C09E4 001B6764  3B FF 00 01 */	addi r31, r31, 1
lbl_801C09E8:
/* 801C09E8 001B6768  2C 04 00 00 */	cmpwi r4, 0
/* 801C09EC 001B676C  40 82 FF F4 */	bne lbl_801C09E0
/* 801C09F0 001B6770  48 01 C5 49 */	bl OSRestoreInterrupts
/* 801C09F4 001B6774  7F E3 FB 78 */	mr r3, r31
/* 801C09F8 001B6778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C09FC 001B677C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0A00 001B6780  7C 08 03 A6 */	mtlr r0
/* 801C0A04 001B6784  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0A08 001B6788  4E 80 00 20 */	blr 

.global nw4r3snd6detail8PoolImplFv$7AllocImpl
nw4r3snd6detail8PoolImplFv$7AllocImpl:
/* 801C0A0C 001B678C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0A10 001B6790  7C 08 02 A6 */	mflr r0
/* 801C0A14 001B6794  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0A18 001B6798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0A1C 001B679C  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0A20 001B67A0  7C 7E 1B 78 */	mr r30, r3
/* 801C0A24 001B67A4  48 01 C4 ED */	bl OSDisableInterrupts
/* 801C0A28 001B67A8  83 FE 00 00 */	lwz r31, 0(r30)
/* 801C0A2C 001B67AC  2C 1F 00 00 */	cmpwi r31, 0
/* 801C0A30 001B67B0  40 82 00 10 */	bne lbl_801C0A40
/* 801C0A34 001B67B4  48 01 C5 05 */	bl OSRestoreInterrupts
/* 801C0A38 001B67B8  38 60 00 00 */	li r3, 0
/* 801C0A3C 001B67BC  48 00 00 14 */	b lbl_801C0A50
lbl_801C0A40:
/* 801C0A40 001B67C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 801C0A44 001B67C4  90 1E 00 00 */	stw r0, 0(r30)
/* 801C0A48 001B67C8  48 01 C4 F1 */	bl OSRestoreInterrupts
/* 801C0A4C 001B67CC  7F E3 FB 78 */	mr r3, r31
lbl_801C0A50:
/* 801C0A50 001B67D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0A54 001B67D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0A58 001B67D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0A5C 001B67DC  7C 08 03 A6 */	mtlr r0
/* 801C0A60 001B67E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0A64 001B67E4  4E 80 00 20 */	blr 

.global nw4r3snd6detail8PoolImplFPv$7FreeImpl
nw4r3snd6detail8PoolImplFPv$7FreeImpl:
/* 801C0A68 001B67E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0A6C 001B67EC  7C 08 02 A6 */	mflr r0
/* 801C0A70 001B67F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0A74 001B67F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0A78 001B67F8  7C 9F 23 78 */	mr r31, r4
/* 801C0A7C 001B67FC  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0A80 001B6800  7C 7E 1B 78 */	mr r30, r3
/* 801C0A84 001B6804  48 01 C4 8D */	bl OSDisableInterrupts
/* 801C0A88 001B6808  80 1E 00 00 */	lwz r0, 0(r30)
/* 801C0A8C 001B680C  90 1F 00 00 */	stw r0, 0(r31)
/* 801C0A90 001B6810  93 FE 00 00 */	stw r31, 0(r30)
/* 801C0A94 001B6814  48 01 C4 A5 */	bl OSRestoreInterrupts
/* 801C0A98 001B6818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0A9C 001B681C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0AA0 001B6820  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0AA4 001B6824  7C 08 03 A6 */	mtlr r0
/* 801C0AA8 001B6828  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0AAC 001B682C  4E 80 00 20 */	blr 

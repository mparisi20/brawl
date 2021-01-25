.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TMCC_JPEGENC_init_comp
TMCC_JPEGENC_init_comp:
/* 8026B6FC 0026147C  2C 04 00 01 */	cmpwi r4, 1
/* 8026B700 00261480  41 82 00 40 */	beq lbl_8026B740
/* 8026B704 00261484  40 80 00 10 */	bge lbl_8026B714
/* 8026B708 00261488  2C 04 00 00 */	cmpwi r4, 0
/* 8026B70C 0026148C  40 80 00 14 */	bge lbl_8026B720
/* 8026B710 00261490  4E 80 00 20 */	blr 
lbl_8026B714:
/* 8026B714 00261494  2C 04 00 03 */	cmpwi r4, 3
/* 8026B718 00261498  4C 80 00 20 */	bgelr 
/* 8026B71C 0026149C  48 00 00 14 */	b lbl_8026B730
lbl_8026B720:
/* 8026B720 002614A0  3C 80 80 27 */	lis r4, TMCC_JPEGENC_encoder_y411@ha
/* 8026B724 002614A4  38 84 B7 50 */	addi r4, r4, TMCC_JPEGENC_encoder_y411@l
/* 8026B728 002614A8  90 83 00 24 */	stw r4, 0x24(r3)
/* 8026B72C 002614AC  4E 80 00 20 */	blr 
lbl_8026B730:
/* 8026B730 002614B0  3C 80 80 27 */	lis r4, TMCC_JPEGENC_encoder_y420@ha
/* 8026B734 002614B4  38 84 B8 B4 */	addi r4, r4, TMCC_JPEGENC_encoder_y420@l
/* 8026B738 002614B8  90 83 00 24 */	stw r4, 0x24(r3)
/* 8026B73C 002614BC  4E 80 00 20 */	blr 
lbl_8026B740:
/* 8026B740 002614C0  3C 80 80 27 */	lis r4, TMCC_JPEGENC_encoder_y422@ha
/* 8026B744 002614C4  38 84 BA 18 */	addi r4, r4, TMCC_JPEGENC_encoder_y422@l
/* 8026B748 002614C8  90 83 00 24 */	stw r4, 0x24(r3)
/* 8026B74C 002614CC  4E 80 00 20 */	blr 

.global TMCC_JPEGENC_encoder_y411
TMCC_JPEGENC_encoder_y411:
/* 8026B750 002614D0  94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 8026B754 002614D4  7C 08 02 A6 */	mflr r0
/* 8026B758 002614D8  7C 66 1B 78 */	mr r6, r3
/* 8026B75C 002614DC  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 8026B760 002614E0  7C 80 23 78 */	mr r0, r4
/* 8026B764 002614E4  38 61 01 08 */	addi r3, r1, 0x108
/* 8026B768 002614E8  93 E1 02 9C */	stw r31, 0x29c(r1)
/* 8026B76C 002614EC  93 C1 02 98 */	stw r30, 0x298(r1)
/* 8026B770 002614F0  93 A1 02 94 */	stw r29, 0x294(r1)
/* 8026B774 002614F4  7C BD 2B 78 */	mr r29, r5
/* 8026B778 002614F8  81 85 00 AC */	lwz r12, 0xac(r5)
/* 8026B77C 002614FC  80 85 00 A8 */	lwz r4, 0xa8(r5)
/* 8026B780 00261500  54 C5 28 34 */	slwi r5, r6, 5
/* 8026B784 00261504  54 06 18 38 */	slwi r6, r0, 3
/* 8026B788 00261508  7D 89 03 A6 */	mtctr r12
/* 8026B78C 0026150C  4E 80 04 21 */	bctrl 
/* 8026B790 00261510  2C 03 00 00 */	cmpwi r3, 0
/* 8026B794 00261514  40 80 00 08 */	bge lbl_8026B79C
/* 8026B798 00261518  48 00 01 00 */	b lbl_8026B898
lbl_8026B79C:
/* 8026B79C 0026151C  3B E1 01 0C */	addi r31, r1, 0x10c
/* 8026B7A0 00261520  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8026B7A4 00261524  3B DD 00 1C */	addi r30, r29, 0x1c
/* 8026B7A8 00261528  38 81 00 08 */	addi r4, r1, 8
/* 8026B7AC 0026152C  7F E3 FB 78 */	mr r3, r31
/* 8026B7B0 00261530  48 00 04 41 */	bl TMCC_JPEGENC_FdctBlock
/* 8026B7B4 00261534  7F C4 F3 78 */	mr r4, r30
/* 8026B7B8 00261538  38 61 00 08 */	addi r3, r1, 8
/* 8026B7BC 0026153C  4B FF E0 F1 */	bl TMCC_JPEGENC_enc_block
/* 8026B7C0 00261540  2C 03 00 00 */	cmpwi r3, 0
/* 8026B7C4 00261544  40 80 00 08 */	bge lbl_8026B7CC
/* 8026B7C8 00261548  48 00 00 D0 */	b lbl_8026B898
lbl_8026B7CC:
/* 8026B7CC 0026154C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8026B7D0 00261550  38 7F 00 08 */	addi r3, r31, 8
/* 8026B7D4 00261554  38 81 00 08 */	addi r4, r1, 8
/* 8026B7D8 00261558  48 00 04 19 */	bl TMCC_JPEGENC_FdctBlock
/* 8026B7DC 0026155C  7F C4 F3 78 */	mr r4, r30
/* 8026B7E0 00261560  38 61 00 08 */	addi r3, r1, 8
/* 8026B7E4 00261564  4B FF E0 C9 */	bl TMCC_JPEGENC_enc_block
/* 8026B7E8 00261568  2C 03 00 00 */	cmpwi r3, 0
/* 8026B7EC 0026156C  40 80 00 08 */	bge lbl_8026B7F4
/* 8026B7F0 00261570  48 00 00 A8 */	b lbl_8026B898
lbl_8026B7F4:
/* 8026B7F4 00261574  80 BE 00 04 */	lwz r5, 4(r30)
/* 8026B7F8 00261578  38 7F 00 10 */	addi r3, r31, 0x10
/* 8026B7FC 0026157C  38 81 00 08 */	addi r4, r1, 8
/* 8026B800 00261580  48 00 03 F1 */	bl TMCC_JPEGENC_FdctBlock
/* 8026B804 00261584  7F C4 F3 78 */	mr r4, r30
/* 8026B808 00261588  38 61 00 08 */	addi r3, r1, 8
/* 8026B80C 0026158C  4B FF E0 A1 */	bl TMCC_JPEGENC_enc_block
/* 8026B810 00261590  2C 03 00 00 */	cmpwi r3, 0
/* 8026B814 00261594  40 80 00 08 */	bge lbl_8026B81C
/* 8026B818 00261598  48 00 00 80 */	b lbl_8026B898
lbl_8026B81C:
/* 8026B81C 0026159C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8026B820 002615A0  38 7F 00 18 */	addi r3, r31, 0x18
/* 8026B824 002615A4  38 81 00 08 */	addi r4, r1, 8
/* 8026B828 002615A8  48 00 03 C9 */	bl TMCC_JPEGENC_FdctBlock
/* 8026B82C 002615AC  7F C4 F3 78 */	mr r4, r30
/* 8026B830 002615B0  38 61 00 08 */	addi r3, r1, 8
/* 8026B834 002615B4  4B FF E0 79 */	bl TMCC_JPEGENC_enc_block
/* 8026B838 002615B8  2C 03 00 00 */	cmpwi r3, 0
/* 8026B83C 002615BC  40 80 00 08 */	bge lbl_8026B844
/* 8026B840 002615C0  48 00 00 58 */	b lbl_8026B898
lbl_8026B844:
/* 8026B844 002615C4  80 BD 00 54 */	lwz r5, 0x54(r29)
/* 8026B848 002615C8  3B FD 00 50 */	addi r31, r29, 0x50
/* 8026B84C 002615CC  38 61 02 0C */	addi r3, r1, 0x20c
/* 8026B850 002615D0  38 81 00 08 */	addi r4, r1, 8
/* 8026B854 002615D4  48 00 05 95 */	bl TMCC_JPEGENC_FdctBlock_Col
/* 8026B858 002615D8  7F E4 FB 78 */	mr r4, r31
/* 8026B85C 002615DC  38 61 00 08 */	addi r3, r1, 8
/* 8026B860 002615E0  4B FF E0 4D */	bl TMCC_JPEGENC_enc_block
/* 8026B864 002615E4  2C 03 00 00 */	cmpwi r3, 0
/* 8026B868 002615E8  40 80 00 08 */	bge lbl_8026B870
/* 8026B86C 002615EC  48 00 00 2C */	b lbl_8026B898
lbl_8026B870:
/* 8026B870 002615F0  80 BD 00 88 */	lwz r5, 0x88(r29)
/* 8026B874 002615F4  3B FD 00 84 */	addi r31, r29, 0x84
/* 8026B878 002615F8  38 61 02 4C */	addi r3, r1, 0x24c
/* 8026B87C 002615FC  38 81 00 08 */	addi r4, r1, 8
/* 8026B880 00261600  48 00 05 69 */	bl TMCC_JPEGENC_FdctBlock_Col
/* 8026B884 00261604  7F E4 FB 78 */	mr r4, r31
/* 8026B888 00261608  38 61 00 08 */	addi r3, r1, 8
/* 8026B88C 0026160C  4B FF E0 21 */	bl TMCC_JPEGENC_enc_block
/* 8026B890 00261610  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8026B894 00261614  7C 63 00 38 */	and r3, r3, r0
lbl_8026B898:
/* 8026B898 00261618  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 8026B89C 0026161C  83 E1 02 9C */	lwz r31, 0x29c(r1)
/* 8026B8A0 00261620  83 C1 02 98 */	lwz r30, 0x298(r1)
/* 8026B8A4 00261624  83 A1 02 94 */	lwz r29, 0x294(r1)
/* 8026B8A8 00261628  7C 08 03 A6 */	mtlr r0
/* 8026B8AC 0026162C  38 21 02 A0 */	addi r1, r1, 0x2a0
/* 8026B8B0 00261630  4E 80 00 20 */	blr 

.global TMCC_JPEGENC_encoder_y420
TMCC_JPEGENC_encoder_y420:
/* 8026B8B4 00261634  94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 8026B8B8 00261638  7C 08 02 A6 */	mflr r0
/* 8026B8BC 0026163C  7C 66 1B 78 */	mr r6, r3
/* 8026B8C0 00261640  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 8026B8C4 00261644  7C 80 23 78 */	mr r0, r4
/* 8026B8C8 00261648  38 61 01 08 */	addi r3, r1, 0x108
/* 8026B8CC 0026164C  93 E1 02 9C */	stw r31, 0x29c(r1)
/* 8026B8D0 00261650  93 C1 02 98 */	stw r30, 0x298(r1)
/* 8026B8D4 00261654  93 A1 02 94 */	stw r29, 0x294(r1)
/* 8026B8D8 00261658  7C BD 2B 78 */	mr r29, r5
/* 8026B8DC 0026165C  81 85 00 AC */	lwz r12, 0xac(r5)
/* 8026B8E0 00261660  80 85 00 A8 */	lwz r4, 0xa8(r5)
/* 8026B8E4 00261664  54 C5 20 36 */	slwi r5, r6, 4
/* 8026B8E8 00261668  54 06 20 36 */	slwi r6, r0, 4
/* 8026B8EC 0026166C  7D 89 03 A6 */	mtctr r12
/* 8026B8F0 00261670  4E 80 04 21 */	bctrl 
/* 8026B8F4 00261674  2C 03 00 00 */	cmpwi r3, 0
/* 8026B8F8 00261678  40 80 00 08 */	bge lbl_8026B900
/* 8026B8FC 0026167C  48 00 01 00 */	b lbl_8026B9FC
lbl_8026B900:
/* 8026B900 00261680  3B E1 01 0C */	addi r31, r1, 0x10c
/* 8026B904 00261684  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8026B908 00261688  3B DD 00 1C */	addi r30, r29, 0x1c
/* 8026B90C 0026168C  38 81 00 08 */	addi r4, r1, 8
/* 8026B910 00261690  7F E3 FB 78 */	mr r3, r31
/* 8026B914 00261694  48 00 02 DD */	bl TMCC_JPEGENC_FdctBlock
/* 8026B918 00261698  7F C4 F3 78 */	mr r4, r30
/* 8026B91C 0026169C  38 61 00 08 */	addi r3, r1, 8
/* 8026B920 002616A0  4B FF DF 8D */	bl TMCC_JPEGENC_enc_block
/* 8026B924 002616A4  2C 03 00 00 */	cmpwi r3, 0
/* 8026B928 002616A8  40 80 00 08 */	bge lbl_8026B930
/* 8026B92C 002616AC  48 00 00 D0 */	b lbl_8026B9FC
lbl_8026B930:
/* 8026B930 002616B0  80 BE 00 04 */	lwz r5, 4(r30)
/* 8026B934 002616B4  38 7F 00 08 */	addi r3, r31, 8
/* 8026B938 002616B8  38 81 00 08 */	addi r4, r1, 8
/* 8026B93C 002616BC  48 00 02 B5 */	bl TMCC_JPEGENC_FdctBlock
/* 8026B940 002616C0  7F C4 F3 78 */	mr r4, r30
/* 8026B944 002616C4  38 61 00 08 */	addi r3, r1, 8
/* 8026B948 002616C8  4B FF DF 65 */	bl TMCC_JPEGENC_enc_block
/* 8026B94C 002616CC  2C 03 00 00 */	cmpwi r3, 0
/* 8026B950 002616D0  40 80 00 08 */	bge lbl_8026B958
/* 8026B954 002616D4  48 00 00 A8 */	b lbl_8026B9FC
lbl_8026B958:
/* 8026B958 002616D8  80 BE 00 04 */	lwz r5, 4(r30)
/* 8026B95C 002616DC  38 7F 00 80 */	addi r3, r31, 0x80
/* 8026B960 002616E0  38 81 00 08 */	addi r4, r1, 8
/* 8026B964 002616E4  48 00 02 8D */	bl TMCC_JPEGENC_FdctBlock
/* 8026B968 002616E8  7F C4 F3 78 */	mr r4, r30
/* 8026B96C 002616EC  38 61 00 08 */	addi r3, r1, 8
/* 8026B970 002616F0  4B FF DF 3D */	bl TMCC_JPEGENC_enc_block
/* 8026B974 002616F4  2C 03 00 00 */	cmpwi r3, 0
/* 8026B978 002616F8  40 80 00 08 */	bge lbl_8026B980
/* 8026B97C 002616FC  48 00 00 80 */	b lbl_8026B9FC
lbl_8026B980:
/* 8026B980 00261700  80 BE 00 04 */	lwz r5, 4(r30)
/* 8026B984 00261704  38 7F 00 88 */	addi r3, r31, 0x88
/* 8026B988 00261708  38 81 00 08 */	addi r4, r1, 8
/* 8026B98C 0026170C  48 00 02 65 */	bl TMCC_JPEGENC_FdctBlock
/* 8026B990 00261710  7F C4 F3 78 */	mr r4, r30
/* 8026B994 00261714  38 61 00 08 */	addi r3, r1, 8
/* 8026B998 00261718  4B FF DF 15 */	bl TMCC_JPEGENC_enc_block
/* 8026B99C 0026171C  2C 03 00 00 */	cmpwi r3, 0
/* 8026B9A0 00261720  40 80 00 08 */	bge lbl_8026B9A8
/* 8026B9A4 00261724  48 00 00 58 */	b lbl_8026B9FC
lbl_8026B9A8:
/* 8026B9A8 00261728  80 BD 00 54 */	lwz r5, 0x54(r29)
/* 8026B9AC 0026172C  3B FD 00 50 */	addi r31, r29, 0x50
/* 8026B9B0 00261730  38 61 02 0C */	addi r3, r1, 0x20c
/* 8026B9B4 00261734  38 81 00 08 */	addi r4, r1, 8
/* 8026B9B8 00261738  48 00 04 31 */	bl TMCC_JPEGENC_FdctBlock_Col
/* 8026B9BC 0026173C  7F E4 FB 78 */	mr r4, r31
/* 8026B9C0 00261740  38 61 00 08 */	addi r3, r1, 8
/* 8026B9C4 00261744  4B FF DE E9 */	bl TMCC_JPEGENC_enc_block
/* 8026B9C8 00261748  2C 03 00 00 */	cmpwi r3, 0
/* 8026B9CC 0026174C  40 80 00 08 */	bge lbl_8026B9D4
/* 8026B9D0 00261750  48 00 00 2C */	b lbl_8026B9FC
lbl_8026B9D4:
/* 8026B9D4 00261754  80 BD 00 88 */	lwz r5, 0x88(r29)
/* 8026B9D8 00261758  3B FD 00 84 */	addi r31, r29, 0x84
/* 8026B9DC 0026175C  38 61 02 4C */	addi r3, r1, 0x24c
/* 8026B9E0 00261760  38 81 00 08 */	addi r4, r1, 8
/* 8026B9E4 00261764  48 00 04 05 */	bl TMCC_JPEGENC_FdctBlock_Col
/* 8026B9E8 00261768  7F E4 FB 78 */	mr r4, r31
/* 8026B9EC 0026176C  38 61 00 08 */	addi r3, r1, 8
/* 8026B9F0 00261770  4B FF DE BD */	bl TMCC_JPEGENC_enc_block
/* 8026B9F4 00261774  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8026B9F8 00261778  7C 63 00 38 */	and r3, r3, r0
lbl_8026B9FC:
/* 8026B9FC 0026177C  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 8026BA00 00261780  83 E1 02 9C */	lwz r31, 0x29c(r1)
/* 8026BA04 00261784  83 C1 02 98 */	lwz r30, 0x298(r1)
/* 8026BA08 00261788  83 A1 02 94 */	lwz r29, 0x294(r1)
/* 8026BA0C 0026178C  7C 08 03 A6 */	mtlr r0
/* 8026BA10 00261790  38 21 02 A0 */	addi r1, r1, 0x2a0
/* 8026BA14 00261794  4E 80 00 20 */	blr 

.global TMCC_JPEGENC_encoder_y422
TMCC_JPEGENC_encoder_y422:
/* 8026BA18 00261798  94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 8026BA1C 0026179C  7C 08 02 A6 */	mflr r0
/* 8026BA20 002617A0  7C 66 1B 78 */	mr r6, r3
/* 8026BA24 002617A4  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 8026BA28 002617A8  7C 80 23 78 */	mr r0, r4
/* 8026BA2C 002617AC  38 61 01 08 */	addi r3, r1, 0x108
/* 8026BA30 002617B0  93 E1 02 9C */	stw r31, 0x29c(r1)
/* 8026BA34 002617B4  93 C1 02 98 */	stw r30, 0x298(r1)
/* 8026BA38 002617B8  93 A1 02 94 */	stw r29, 0x294(r1)
/* 8026BA3C 002617BC  7C BD 2B 78 */	mr r29, r5
/* 8026BA40 002617C0  81 85 00 AC */	lwz r12, 0xac(r5)
/* 8026BA44 002617C4  80 85 00 A8 */	lwz r4, 0xa8(r5)
/* 8026BA48 002617C8  54 C5 20 36 */	slwi r5, r6, 4
/* 8026BA4C 002617CC  54 06 18 38 */	slwi r6, r0, 3
/* 8026BA50 002617D0  7D 89 03 A6 */	mtctr r12
/* 8026BA54 002617D4  4E 80 04 21 */	bctrl 
/* 8026BA58 002617D8  2C 03 00 00 */	cmpwi r3, 0
/* 8026BA5C 002617DC  40 80 00 08 */	bge lbl_8026BA64
/* 8026BA60 002617E0  48 00 00 B0 */	b lbl_8026BB10
lbl_8026BA64:
/* 8026BA64 002617E4  3B E1 01 0C */	addi r31, r1, 0x10c
/* 8026BA68 002617E8  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8026BA6C 002617EC  3B DD 00 1C */	addi r30, r29, 0x1c
/* 8026BA70 002617F0  38 81 00 08 */	addi r4, r1, 8
/* 8026BA74 002617F4  7F E3 FB 78 */	mr r3, r31
/* 8026BA78 002617F8  48 00 01 79 */	bl TMCC_JPEGENC_FdctBlock
/* 8026BA7C 002617FC  7F C4 F3 78 */	mr r4, r30
/* 8026BA80 00261800  38 61 00 08 */	addi r3, r1, 8
/* 8026BA84 00261804  4B FF DE 29 */	bl TMCC_JPEGENC_enc_block
/* 8026BA88 00261808  2C 03 00 00 */	cmpwi r3, 0
/* 8026BA8C 0026180C  40 80 00 08 */	bge lbl_8026BA94
/* 8026BA90 00261810  48 00 00 80 */	b lbl_8026BB10
lbl_8026BA94:
/* 8026BA94 00261814  80 BE 00 04 */	lwz r5, 4(r30)
/* 8026BA98 00261818  38 7F 00 08 */	addi r3, r31, 8
/* 8026BA9C 0026181C  38 81 00 08 */	addi r4, r1, 8
/* 8026BAA0 00261820  48 00 01 51 */	bl TMCC_JPEGENC_FdctBlock
/* 8026BAA4 00261824  7F C4 F3 78 */	mr r4, r30
/* 8026BAA8 00261828  38 61 00 08 */	addi r3, r1, 8
/* 8026BAAC 0026182C  4B FF DE 01 */	bl TMCC_JPEGENC_enc_block
/* 8026BAB0 00261830  2C 03 00 00 */	cmpwi r3, 0
/* 8026BAB4 00261834  40 80 00 08 */	bge lbl_8026BABC
/* 8026BAB8 00261838  48 00 00 58 */	b lbl_8026BB10
lbl_8026BABC:
/* 8026BABC 0026183C  80 BD 00 54 */	lwz r5, 0x54(r29)
/* 8026BAC0 00261840  3B FD 00 50 */	addi r31, r29, 0x50
/* 8026BAC4 00261844  38 61 01 8C */	addi r3, r1, 0x18c
/* 8026BAC8 00261848  38 81 00 08 */	addi r4, r1, 8
/* 8026BACC 0026184C  48 00 03 1D */	bl TMCC_JPEGENC_FdctBlock_Col
/* 8026BAD0 00261850  7F E4 FB 78 */	mr r4, r31
/* 8026BAD4 00261854  38 61 00 08 */	addi r3, r1, 8
/* 8026BAD8 00261858  4B FF DD D5 */	bl TMCC_JPEGENC_enc_block
/* 8026BADC 0026185C  2C 03 00 00 */	cmpwi r3, 0
/* 8026BAE0 00261860  40 80 00 08 */	bge lbl_8026BAE8
/* 8026BAE4 00261864  48 00 00 2C */	b lbl_8026BB10
lbl_8026BAE8:
/* 8026BAE8 00261868  80 BD 00 88 */	lwz r5, 0x88(r29)
/* 8026BAEC 0026186C  3B FD 00 84 */	addi r31, r29, 0x84
/* 8026BAF0 00261870  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8026BAF4 00261874  38 81 00 08 */	addi r4, r1, 8
/* 8026BAF8 00261878  48 00 02 F1 */	bl TMCC_JPEGENC_FdctBlock_Col
/* 8026BAFC 0026187C  7F E4 FB 78 */	mr r4, r31
/* 8026BB00 00261880  38 61 00 08 */	addi r3, r1, 8
/* 8026BB04 00261884  4B FF DD A9 */	bl TMCC_JPEGENC_enc_block
/* 8026BB08 00261888  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8026BB0C 0026188C  7C 63 00 38 */	and r3, r3, r0
lbl_8026BB10:
/* 8026BB10 00261890  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 8026BB14 00261894  83 E1 02 9C */	lwz r31, 0x29c(r1)
/* 8026BB18 00261898  83 C1 02 98 */	lwz r30, 0x298(r1)
/* 8026BB1C 0026189C  83 A1 02 94 */	lwz r29, 0x294(r1)
/* 8026BB20 002618A0  7C 08 03 A6 */	mtlr r0
/* 8026BB24 002618A4  38 21 02 A0 */	addi r1, r1, 0x2a0
/* 8026BB28 002618A8  4E 80 00 20 */	blr 

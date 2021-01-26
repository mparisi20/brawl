.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfApplication$7setFrameRate
gfApplication$7setFrameRate:
/* 8001A818 00010598  38 80 00 00 */	li r4, 0
/* 8001A81C 0001059C  48 1D 93 81 */	bl GXSetTevOp
/* 8001A820 000105A0  38 60 00 01 */	li r3, 1
/* 8001A824 000105A4  48 1D 99 D5 */	bl GXSetNumTevStages
/* 8001A828 000105A8  38 60 00 00 */	li r3, 0
/* 8001A82C 000105AC  48 1D 92 D1 */	bl GXSetTevDirect
/* 8001A830 000105B0  38 60 00 00 */	li r3, 0
/* 8001A834 000105B4  48 1D 92 A9 */	bl GXSetNumIndStages
/* 8001A838 000105B8  38 60 00 01 */	li r3, 1
/* 8001A83C 000105BC  48 1D 7E 09 */	bl GXSetNumChans
/* 8001A840 000105C0  38 60 00 04 */	li r3, 4
/* 8001A844 000105C4  38 80 00 00 */	li r4, 0
/* 8001A848 000105C8  38 A0 00 00 */	li r5, 0
/* 8001A84C 000105CC  38 C0 00 01 */	li r6, 1
/* 8001A850 000105D0  38 E0 00 00 */	li r7, 0
/* 8001A854 000105D4  39 00 00 00 */	li r8, 0
/* 8001A858 000105D8  39 20 00 02 */	li r9, 2
/* 8001A85C 000105DC  48 1D 7E 0D */	bl GXSetChanCtrl
/* 8001A860 000105E0  38 60 00 05 */	li r3, 5
/* 8001A864 000105E4  38 80 00 00 */	li r4, 0
/* 8001A868 000105E8  38 A0 00 00 */	li r5, 0
/* 8001A86C 000105EC  38 C0 00 01 */	li r6, 1
/* 8001A870 000105F0  38 E0 00 00 */	li r7, 0
/* 8001A874 000105F4  39 00 00 00 */	li r8, 0
/* 8001A878 000105F8  39 20 00 02 */	li r9, 2
/* 8001A87C 000105FC  48 1D 7D ED */	bl GXSetChanCtrl
/* 8001A880 00010600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A884 00010604  38 81 00 10 */	addi r4, r1, 0x10
/* 8001A888 00010608  38 60 00 04 */	li r3, 4
/* 8001A88C 0001060C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001A890 00010610  48 1D 7C DD */	bl GXSetChanMatColor
/* 8001A894 00010614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A898 00010618  38 81 00 0C */	addi r4, r1, 0xc
/* 8001A89C 0001061C  38 60 00 04 */	li r3, 4
/* 8001A8A0 00010620  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001A8A4 00010624  48 1D 7B F1 */	bl GXSetChanAmbColor
/* 8001A8A8 00010628  38 60 00 01 */	li r3, 1
/* 8001A8AC 0001062C  38 80 00 07 */	li r4, 7
/* 8001A8B0 00010630  38 A0 00 00 */	li r5, 0
/* 8001A8B4 00010634  48 1D 9E C1 */	bl GXSetZMode
/* 8001A8B8 00010638  38 60 00 01 */	li r3, 1
/* 8001A8BC 0001063C  38 80 00 04 */	li r4, 4
/* 8001A8C0 00010640  38 A0 00 05 */	li r5, 5
/* 8001A8C4 00010644  38 C0 00 00 */	li r6, 0
/* 8001A8C8 00010648  48 1D 9E 05 */	bl GXSetBlendMode
/* 8001A8CC 0001064C  48 1D 52 45 */	bl GXClearVtxDesc
/* 8001A8D0 00010650  38 60 00 09 */	li r3, 9
/* 8001A8D4 00010654  38 80 00 01 */	li r4, 1
/* 8001A8D8 00010658  48 1D 49 A9 */	bl GXSetVtxDesc
/* 8001A8DC 0001065C  38 60 00 0B */	li r3, 0xb
/* 8001A8E0 00010660  38 80 00 01 */	li r4, 1
/* 8001A8E4 00010664  48 1D 49 9D */	bl GXSetVtxDesc
/* 8001A8E8 00010668  38 60 00 0D */	li r3, 0xd
/* 8001A8EC 0001066C  38 80 00 01 */	li r4, 1
/* 8001A8F0 00010670  48 1D 49 91 */	bl GXSetVtxDesc
/* 8001A8F4 00010674  38 60 00 01 */	li r3, 1
/* 8001A8F8 00010678  38 80 00 09 */	li r4, 9
/* 8001A8FC 0001067C  38 A0 00 01 */	li r5, 1
/* 8001A900 00010680  38 C0 00 04 */	li r6, 4
/* 8001A904 00010684  38 E0 00 00 */	li r7, 0
/* 8001A908 00010688  48 1D 52 3D */	bl GXSetVtxAttrFmt
/* 8001A90C 0001068C  38 60 00 01 */	li r3, 1
/* 8001A910 00010690  38 80 00 0B */	li r4, 0xb
/* 8001A914 00010694  38 A0 00 01 */	li r5, 1
/* 8001A918 00010698  38 C0 00 05 */	li r6, 5
/* 8001A91C 0001069C  38 E0 00 00 */	li r7, 0
/* 8001A920 000106A0  48 1D 52 25 */	bl GXSetVtxAttrFmt
/* 8001A924 000106A4  38 60 00 01 */	li r3, 1
/* 8001A928 000106A8  38 80 00 0D */	li r4, 0xd
/* 8001A92C 000106AC  38 A0 00 01 */	li r5, 1
/* 8001A930 000106B0  38 C0 00 04 */	li r6, 4
/* 8001A934 000106B4  38 E0 00 00 */	li r7, 0
/* 8001A938 000106B8  48 1D 52 0D */	bl GXSetVtxAttrFmt
/* 8001A93C 000106BC  38 00 00 00 */	li r0, 0
/* 8001A940 000106C0  C0 42 81 44 */	lfs f2, lbl_805A1464-_SDA2_BASE_(r2)
/* 8001A944 000106C4  98 01 00 16 */	stb r0, 0x16(r1)
/* 8001A948 000106C8  38 81 00 08 */	addi r4, r1, 8
/* 8001A94C 000106CC  FC 80 10 90 */	fmr f4, f2
/* 8001A950 000106D0  C0 22 81 40 */	lfs f1, lbl_805A1460-_SDA2_BASE_(r2)
/* 8001A954 000106D4  98 01 00 15 */	stb r0, 0x15(r1)
/* 8001A958 000106D8  38 60 00 00 */	li r3, 0
/* 8001A95C 000106DC  C0 62 81 48 */	lfs f3, lbl_805A1468-_SDA2_BASE_(r2)
/* 8001A960 000106E0  98 01 00 14 */	stb r0, 0x14(r1)
/* 8001A964 000106E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A968 000106E8  90 01 00 08 */	stw r0, 8(r1)
/* 8001A96C 000106EC  48 1D 98 B1 */	bl GXSetFog
/* 8001A970 000106F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001A974 000106F4  7C 08 03 A6 */	mtlr r0
/* 8001A978 000106F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001A97C 000106FC  4E 80 00 20 */	blr 

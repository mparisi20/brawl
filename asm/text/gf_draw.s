.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfDrawSetVtxPosColorPrimEnviroment
gfDrawSetVtxPosColorPrimEnviroment:
/* 8001A5C0 00010340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001A5C4 00010344  7C 08 02 A6 */	mflr r0
/* 8001A5C8 00010348  38 60 00 00 */	li r3, 0
/* 8001A5CC 0001034C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001A5D0 00010350  48 1D AD 15 */	bl GXSetCurrentMtx
/* 8001A5D4 00010354  38 60 00 00 */	li r3, 0
/* 8001A5D8 00010358  48 1D B0 15 */	bl GXSetClipMode
/* 8001A5DC 0001035C  38 00 00 FF */	li r0, 0xff
/* 8001A5E0 00010360  38 60 00 00 */	li r3, 0
/* 8001A5E4 00010364  98 01 00 14 */	stb r0, 0x14(r1)
/* 8001A5E8 00010368  98 01 00 15 */	stb r0, 0x15(r1)
/* 8001A5EC 0001036C  98 01 00 16 */	stb r0, 0x16(r1)
/* 8001A5F0 00010370  98 01 00 17 */	stb r0, 0x17(r1)
/* 8001A5F4 00010374  48 1D 5E 8D */	bl GXSetNumTexGens
/* 8001A5F8 00010378  38 60 00 00 */	li r3, 0
/* 8001A5FC 0001037C  38 80 00 FF */	li r4, 0xff
/* 8001A600 00010380  38 A0 00 FF */	li r5, 0xff
/* 8001A604 00010384  38 C0 00 04 */	li r6, 4
/* 8001A608 00010388  48 1D 9A 95 */	bl GXSetTevOrder
/* 8001A60C 0001038C  38 60 00 00 */	li r3, 0
/* 8001A610 00010390  38 80 00 04 */	li r4, 4
/* 8001A614 00010394  48 1D 95 89 */	bl GXSetTevOp
/* 8001A618 00010398  38 60 00 01 */	li r3, 1
/* 8001A61C 0001039C  48 1D 9B DD */	bl GXSetNumTevStages
/* 8001A620 000103A0  38 60 00 00 */	li r3, 0
/* 8001A624 000103A4  48 1D 94 D9 */	bl GXSetTevDirect
/* 8001A628 000103A8  38 60 00 00 */	li r3, 0
/* 8001A62C 000103AC  48 1D 94 B1 */	bl GXSetNumIndStages
/* 8001A630 000103B0  38 60 00 01 */	li r3, 1
/* 8001A634 000103B4  48 1D 80 11 */	bl GXSetNumChans
/* 8001A638 000103B8  38 60 00 04 */	li r3, 4
/* 8001A63C 000103BC  38 80 00 00 */	li r4, 0
/* 8001A640 000103C0  38 A0 00 00 */	li r5, 0
/* 8001A644 000103C4  38 C0 00 01 */	li r6, 1
/* 8001A648 000103C8  38 E0 00 00 */	li r7, 0
/* 8001A64C 000103CC  39 00 00 00 */	li r8, 0
/* 8001A650 000103D0  39 20 00 02 */	li r9, 2
/* 8001A654 000103D4  48 1D 80 15 */	bl GXSetChanCtrl
/* 8001A658 000103D8  38 60 00 05 */	li r3, 5
/* 8001A65C 000103DC  38 80 00 00 */	li r4, 0
/* 8001A660 000103E0  38 A0 00 00 */	li r5, 0
/* 8001A664 000103E4  38 C0 00 01 */	li r6, 1
/* 8001A668 000103E8  38 E0 00 00 */	li r7, 0
/* 8001A66C 000103EC  39 00 00 00 */	li r8, 0
/* 8001A670 000103F0  39 20 00 02 */	li r9, 2
/* 8001A674 000103F4  48 1D 7F F5 */	bl GXSetChanCtrl
/* 8001A678 000103F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A67C 000103FC  38 81 00 10 */	addi r4, r1, 0x10
/* 8001A680 00010400  38 60 00 04 */	li r3, 4
/* 8001A684 00010404  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001A688 00010408  48 1D 7E E5 */	bl GXSetChanMatColor
/* 8001A68C 0001040C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A690 00010410  38 81 00 0C */	addi r4, r1, 0xc
/* 8001A694 00010414  38 60 00 04 */	li r3, 4
/* 8001A698 00010418  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001A69C 0001041C  48 1D 7D F9 */	bl GXSetChanAmbColor
/* 8001A6A0 00010420  38 60 00 01 */	li r3, 1
/* 8001A6A4 00010424  38 80 00 07 */	li r4, 7
/* 8001A6A8 00010428  38 A0 00 00 */	li r5, 0
/* 8001A6AC 0001042C  48 1D A0 C9 */	bl GXSetZMode
/* 8001A6B0 00010430  38 60 00 01 */	li r3, 1
/* 8001A6B4 00010434  38 80 00 04 */	li r4, 4
/* 8001A6B8 00010438  38 A0 00 05 */	li r5, 5
/* 8001A6BC 0001043C  38 C0 00 00 */	li r6, 0
/* 8001A6C0 00010440  48 1D A0 0D */	bl GXSetBlendMode
/* 8001A6C4 00010444  38 60 00 00 */	li r3, 0
/* 8001A6C8 00010448  38 80 00 07 */	li r4, 7
/* 8001A6CC 0001044C  38 A0 00 00 */	li r5, 0
/* 8001A6D0 00010450  48 1D A0 A5 */	bl GXSetZMode
/* 8001A6D4 00010454  38 60 00 00 */	li r3, 0
/* 8001A6D8 00010458  48 1D A0 D1 */	bl GXSetZCompLoc
/* 8001A6DC 0001045C  38 60 00 04 */	li r3, 4
/* 8001A6E0 00010460  38 80 00 00 */	li r4, 0
/* 8001A6E4 00010464  38 A0 00 00 */	li r5, 0
/* 8001A6E8 00010468  38 C0 00 04 */	li r6, 4
/* 8001A6EC 0001046C  38 E0 00 00 */	li r7, 0
/* 8001A6F0 00010470  48 1D 98 E9 */	bl GXSetAlphaCompare
/* 8001A6F4 00010474  48 1D 54 1D */	bl GXClearVtxDesc
/* 8001A6F8 00010478  38 60 00 09 */	li r3, 9
/* 8001A6FC 0001047C  38 80 00 01 */	li r4, 1
/* 8001A700 00010480  48 1D 4B 81 */	bl GXSetVtxDesc
/* 8001A704 00010484  38 60 00 0B */	li r3, 0xb
/* 8001A708 00010488  38 80 00 01 */	li r4, 1
/* 8001A70C 0001048C  48 1D 4B 75 */	bl GXSetVtxDesc
/* 8001A710 00010490  38 60 00 01 */	li r3, 1
/* 8001A714 00010494  38 80 00 09 */	li r4, 9
/* 8001A718 00010498  38 A0 00 01 */	li r5, 1
/* 8001A71C 0001049C  38 C0 00 04 */	li r6, 4
/* 8001A720 000104A0  38 E0 00 00 */	li r7, 0
/* 8001A724 000104A4  48 1D 54 21 */	bl GXSetVtxAttrFmt
/* 8001A728 000104A8  38 60 00 01 */	li r3, 1
/* 8001A72C 000104AC  38 80 00 0B */	li r4, 0xb
/* 8001A730 000104B0  38 A0 00 01 */	li r5, 1
/* 8001A734 000104B4  38 C0 00 05 */	li r6, 5
/* 8001A738 000104B8  38 E0 00 00 */	li r7, 0
/* 8001A73C 000104BC  48 1D 54 09 */	bl GXSetVtxAttrFmt
/* 8001A740 000104C0  38 00 00 00 */	li r0, 0
/* 8001A744 000104C4  C0 42 81 44 */	lfs f2, lbl_805A1464-_SDA2_BASE_(r2)
/* 8001A748 000104C8  98 01 00 16 */	stb r0, 0x16(r1)
/* 8001A74C 000104CC  38 81 00 08 */	addi r4, r1, 8
/* 8001A750 000104D0  FC 80 10 90 */	fmr f4, f2
/* 8001A754 000104D4  C0 22 81 40 */	lfs f1, lbl_805A1460-_SDA2_BASE_(r2)
/* 8001A758 000104D8  98 01 00 15 */	stb r0, 0x15(r1)
/* 8001A75C 000104DC  38 60 00 00 */	li r3, 0
/* 8001A760 000104E0  C0 62 81 48 */	lfs f3, lbl_805A1468-_SDA2_BASE_(r2)
/* 8001A764 000104E4  98 01 00 14 */	stb r0, 0x14(r1)
/* 8001A768 000104E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A76C 000104EC  90 01 00 08 */	stw r0, 8(r1)
/* 8001A770 000104F0  48 1D 9A AD */	bl GXSetFog
/* 8001A774 000104F4  38 60 00 00 */	li r3, 0
/* 8001A778 000104F8  38 80 00 00 */	li r4, 0
/* 8001A77C 000104FC  38 A0 00 00 */	li r5, 0
/* 8001A780 00010500  48 1D 97 A1 */	bl GXSetTevSwapMode
/* 8001A784 00010504  38 60 00 00 */	li r3, 0
/* 8001A788 00010508  38 80 00 00 */	li r4, 0
/* 8001A78C 0001050C  38 A0 00 01 */	li r5, 1
/* 8001A790 00010510  38 C0 00 02 */	li r6, 2
/* 8001A794 00010514  38 E0 00 03 */	li r7, 3
/* 8001A798 00010518  48 1D 97 C5 */	bl GXSetTevSwapModeTable
/* 8001A79C 0001051C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001A7A0 00010520  7C 08 03 A6 */	mtlr r0
/* 8001A7A4 00010524  38 21 00 20 */	addi r1, r1, 0x20
/* 8001A7A8 00010528  4E 80 00 20 */	blr 

.global gfDrawSetVtxPosColorTexPrimEnviroment
gfDrawSetVtxPosColorTexPrimEnviroment:
/* 8001A7AC 0001052C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001A7B0 00010530  7C 08 02 A6 */	mflr r0
/* 8001A7B4 00010534  38 60 00 00 */	li r3, 0
/* 8001A7B8 00010538  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001A7BC 0001053C  48 1D AB 29 */	bl GXSetCurrentMtx
/* 8001A7C0 00010540  38 60 00 00 */	li r3, 0
/* 8001A7C4 00010544  48 1D AE 29 */	bl GXSetClipMode
/* 8001A7C8 00010548  38 00 00 FF */	li r0, 0xff
/* 8001A7CC 0001054C  38 60 00 00 */	li r3, 0
/* 8001A7D0 00010550  98 01 00 14 */	stb r0, 0x14(r1)
/* 8001A7D4 00010554  38 80 00 01 */	li r4, 1
/* 8001A7D8 00010558  38 A0 00 04 */	li r5, 4
/* 8001A7DC 0001055C  38 C0 00 3C */	li r6, 0x3c
/* 8001A7E0 00010560  98 01 00 15 */	stb r0, 0x15(r1)
/* 8001A7E4 00010564  38 E0 00 00 */	li r7, 0
/* 8001A7E8 00010568  39 00 00 7D */	li r8, 0x7d
/* 8001A7EC 0001056C  98 01 00 16 */	stb r0, 0x16(r1)
/* 8001A7F0 00010570  98 01 00 17 */	stb r0, 0x17(r1)
/* 8001A7F4 00010574  48 1D 5A 65 */	bl GXSetTexCoordGen2
/* 8001A7F8 00010578  38 60 00 01 */	li r3, 1
/* 8001A7FC 0001057C  48 1D 5C 85 */	bl GXSetNumTexGens
/* 8001A800 00010580  38 60 00 00 */	li r3, 0
/* 8001A804 00010584  38 80 00 00 */	li r4, 0
/* 8001A808 00010588  38 A0 00 00 */	li r5, 0
/* 8001A80C 0001058C  38 C0 00 04 */	li r6, 4
/* 8001A810 00010590  48 1D 98 8D */	bl GXSetTevOrder
/* 8001A814 00010594  38 60 00 00 */	li r3, 0


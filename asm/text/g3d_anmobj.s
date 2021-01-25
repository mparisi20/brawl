.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3dFfff$7PlayPolicy_Onetime
nw4r3g3dFfff$7PlayPolicy_Onetime:
/* 8019D9E4 00193764  FC 20 18 90 */	fmr f1, f3
/* 8019D9E8 00193768  4E 80 00 20 */	blr 

.global nw4r3g3dFfff$7PlayPolicy_Loop
nw4r3g3dFfff$7PlayPolicy_Loop:
/* 8019D9EC 0019376C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019D9F0 00193770  7C 08 02 A6 */	mflr r0
/* 8019D9F4 00193774  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019D9F8 00193778  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8019D9FC 0019377C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8019DA00 00193780  C0 02 9F D0 */	lfs f0, lbl_805A32F0-_SDA2_BASE_(r2)
/* 8019DA04 00193784  EF E2 08 28 */	fsubs f31, f2, f1
/* 8019DA08 00193788  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8019DA0C 0019378C  4C 41 13 82 */	cror 2, 1, 2
/* 8019DA10 00193790  40 82 00 18 */	bne lbl_8019DA28
/* 8019DA14 00193794  FC 20 18 90 */	fmr f1, f3
/* 8019DA18 00193798  FC 40 F8 90 */	fmr f2, f31
/* 8019DA1C 0019379C  48 26 31 21 */	bl fmod
/* 8019DA20 001937A0  FC 20 08 18 */	frsp f1, f1
/* 8019DA24 001937A4  48 00 00 20 */	b lbl_8019DA44
lbl_8019DA28:
/* 8019DA28 001937A8  FC 40 F8 90 */	fmr f2, f31
/* 8019DA2C 001937AC  EC 23 F8 2A */	fadds f1, f3, f31
/* 8019DA30 001937B0  48 26 31 0D */	bl fmod
/* 8019DA34 001937B4  FC 20 08 18 */	frsp f1, f1
/* 8019DA38 001937B8  C0 02 9F D0 */	lfs f0, lbl_805A32F0-_SDA2_BASE_(r2)
/* 8019DA3C 001937BC  FC 01 F8 2E */	fsel f0, f1, f0, f31
/* 8019DA40 001937C0  EC 21 00 2A */	fadds f1, f1, f0
lbl_8019DA44:
/* 8019DA44 001937C4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8019DA48 001937C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019DA4C 001937CC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8019DA50 001937D0  7C 08 03 A6 */	mtlr r0
/* 8019DA54 001937D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8019DA58 001937D8  4E 80 00 20 */	blr 

.global nw4r3g3d6AnmObjFQ44nw4r3g3d6AnmObj$7SetAnmFlag
nw4r3g3d6AnmObjFQ44nw4r3g3d6AnmObj$7SetAnmFlag:
/* 8019DA5C 001937DC  2C 05 00 00 */	cmpwi r5, 0
/* 8019DA60 001937E0  41 82 00 14 */	beq lbl_8019DA74
/* 8019DA64 001937E4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8019DA68 001937E8  7C 00 23 78 */	or r0, r0, r4
/* 8019DA6C 001937EC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8019DA70 001937F0  4E 80 00 20 */	blr 
lbl_8019DA74:
/* 8019DA74 001937F4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8019DA78 001937F8  7C 00 20 78 */	andc r0, r0, r4
/* 8019DA7C 001937FC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8019DA80 00193800  4E 80 00 20 */	blr 

.global nw4r3g3d6AnmObjCFQ44nw4r3g3d6AnmOb$7TestAnmFlag
nw4r3g3d6AnmObjCFQ44nw4r3g3d6AnmOb$7TestAnmFlag:
/* 8019DA84 00193804  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8019DA88 00193808  7C 03 20 38 */	and r3, r0, r4
/* 8019DA8C 0019380C  7C 03 00 D0 */	neg r0, r3
/* 8019DA90 00193810  7C 00 1B 78 */	or r0, r0, r3
/* 8019DA94 00193814  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8019DA98 00193818  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd14SoundStartableFPQ34nw4r3$7detail_StartSound
nw4r3snd14SoundStartableFPQ34nw4r3$7detail_StartSound:
/* 801CBFB0 001C1D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CBFB4 001C1D34  7C 08 02 A6 */	mflr r0
/* 801CBFB8 001C1D38  7D 09 43 78 */	mr r9, r8
/* 801CBFBC 001C1D3C  39 00 00 00 */	li r8, 0
/* 801CBFC0 001C1D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CBFC4 001C1D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CBFC8 001C1D48  7C 9F 23 78 */	mr r31, r4
/* 801CBFCC 001C1D4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801CBFD0 001C1D50  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801CBFD4 001C1D54  7D 89 03 A6 */	mtctr r12
/* 801CBFD8 001C1D58  4E 80 04 21 */	bctrl 
/* 801CBFDC 001C1D5C  2C 03 00 00 */	cmpwi r3, 0
/* 801CBFE0 001C1D60  41 82 00 08 */	beq lbl_801CBFE8
/* 801CBFE4 001C1D64  48 00 00 24 */	b lbl_801CC008
lbl_801CBFE8:
/* 801CBFE8 001C1D68  80 7F 00 00 */	lwz r3, 0(r31)
/* 801CBFEC 001C1D6C  2C 03 00 00 */	cmpwi r3, 0
/* 801CBFF0 001C1D70  41 82 00 14 */	beq lbl_801CC004
/* 801CBFF4 001C1D74  81 83 00 00 */	lwz r12, 0(r3)
/* 801CBFF8 001C1D78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CBFFC 001C1D7C  7D 89 03 A6 */	mtctr r12
/* 801CC000 001C1D80  4E 80 04 21 */	bctrl 
lbl_801CC004:
/* 801CC004 001C1D84  38 60 00 00 */	li r3, 0
lbl_801CC008:
/* 801CC008 001C1D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC00C 001C1D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC010 001C1D90  7C 08 03 A6 */	mtlr r0
/* 801CC014 001C1D94  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC018 001C1D98  4E 80 00 20 */	blr 

.global nw4r3snd14SoundStartableFPQ34nw4r3$7detail_PrepareSound
nw4r3snd14SoundStartableFPQ34nw4r3$7detail_PrepareSound:
/* 801CC01C 001C1D9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801CC020 001C1DA0  7D 09 43 78 */	mr r9, r8
/* 801CC024 001C1DA4  39 00 00 00 */	li r8, 0
/* 801CC028 001C1DA8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801CC02C 001C1DAC  7D 89 03 A6 */	mtctr r12
/* 801CC030 001C1DB0  4E 80 04 20 */	bctr 


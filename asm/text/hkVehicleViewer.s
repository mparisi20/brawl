.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkClassNameRegistry$7getClassByName
hkClassNameRegistry$7getClassByName:
/* 8032D494 00323214  38 A0 00 00 */	li r5, 0
/* 8032D498 00323218  38 63 00 08 */	addi r3, r3, 8
/* 8032D49C 0032321C  4B F5 0B D8 */	b hkStringMapBase$7getWithDefault

.global hkVtableClassRegistry$7getClassFromVirtualInstance
hkVtableClassRegistry$7getClassFromVirtualInstance:
/* 8032D4A0 00323220  80 84 00 00 */	lwz r4, 0(r4)
/* 8032D4A4 00323224  38 A0 00 00 */	li r5, 0
/* 8032D4A8 00323228  38 63 00 08 */	addi r3, r3, 8
/* 8032D4AC 0032322C  4B F4 FD 44 */	b hkPointerMapBase$0Ul$1$7getWithDefault

.global __sinit_$3hkAnimationBindingClass_cpp
__sinit_$3hkAnimationBindingClass_cpp:
/* 8032D4B0 00323230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D4B4 00323234  7C 08 02 A6 */	mflr r0
/* 8032D4B8 00323238  3C A0 80 49 */	lis r5, lbl_80488DD8@ha
/* 8032D4BC 0032323C  3C C0 80 41 */	lis r6, lbl_80414798@ha
/* 8032D4C0 00323240  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D4C4 00323244  3C 60 80 53 */	lis r3, lbl_80533338@ha
/* 8032D4C8 00323248  3C 80 80 41 */	lis r4, lbl_804147A8@ha
/* 8032D4CC 0032324C  3D 20 80 41 */	lis r9, lbl_80414754@ha
/* 8032D4D0 00323250  80 ED AC 18 */	lwz r7, lbl_8059F038-_SDA_BASE_(r13)
/* 8032D4D4 00323254  38 A5 8D D8 */	addi r5, r5, lbl_80488DD8@l
/* 8032D4D8 00323258  38 00 00 03 */	li r0, 3
/* 8032D4DC 0032325C  38 C6 47 98 */	addi r6, r6, lbl_80414798@l
/* 8032D4E0 00323260  90 A1 00 08 */	stw r5, 8(r1)
/* 8032D4E4 00323264  38 63 33 38 */	addi r3, r3, lbl_80533338@l
/* 8032D4E8 00323268  38 84 47 A8 */	addi r4, r4, lbl_804147A8@l
/* 8032D4EC 0032326C  39 29 47 54 */	addi r9, r9, lbl_80414754@l
/* 8032D4F0 00323270  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032D4F4 00323274  39 00 00 00 */	li r8, 0
/* 8032D4F8 00323278  39 40 00 01 */	li r10, 1
/* 8032D4FC 0032327C  90 E5 00 30 */	stw r7, 0x30(r5)
/* 8032D500 00323280  38 A0 00 00 */	li r5, 0
/* 8032D504 00323284  38 E0 00 00 */	li r7, 0
/* 8032D508 00323288  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8032D50C 0032328C  38 C0 00 10 */	li r6, 0x10
/* 8032D510 00323290  4B F4 F2 F9 */	bl hkClass$7__ct
/* 8032D514 00323294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D518 00323298  7C 08 03 A6 */	mtlr r0
/* 8032D51C 0032329C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D520 003232A0  4E 80 00 20 */	blr 

.global __sinit_$3hkAnnotationTrackClass_cpp
__sinit_$3hkAnnotationTrackClass_cpp:
/* 8032D524 003232A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032D528 003232A8  7C 08 02 A6 */	mflr r0
/* 8032D52C 003232AC  3C 80 80 41 */	lis r4, lbl_804147C0@ha
/* 8032D530 003232B0  3C 60 80 53 */	lis r3, lbl_80533360@ha
/* 8032D534 003232B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032D538 003232B8  38 84 47 C0 */	addi r4, r4, lbl_804147C0@l
/* 8032D53C 003232BC  38 63 33 60 */	addi r3, r3, lbl_80533360@l
/* 8032D540 003232C0  38 A0 00 00 */	li r5, 0
/* 8032D544 003232C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8032D548 003232C8  3F E0 80 41 */	lis r31, lbl_80414820@ha
/* 8032D54C 003232CC  38 C0 00 08 */	li r6, 8
/* 8032D550 003232D0  38 E0 00 00 */	li r7, 0
/* 8032D554 003232D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8032D558 003232D8  3B C0 00 00 */	li r30, 0
/* 8032D55C 003232DC  39 00 00 00 */	li r8, 0
/* 8032D560 003232E0  39 20 00 00 */	li r9, 0
/* 8032D564 003232E4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8032D568 003232E8  3B A0 00 02 */	li r29, 2
/* 8032D56C 003232EC  39 40 00 00 */	li r10, 0
/* 8032D570 003232F0  90 81 00 08 */	stw r4, 8(r1)
/* 8032D574 003232F4  38 9F 48 20 */	addi r4, r31, lbl_80414820@l
/* 8032D578 003232F8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8032D57C 003232FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D580 00323300  4B F4 F2 89 */	bl hkClass$7__ct
/* 8032D584 00323304  3C A0 80 41 */	lis r5, lbl_804147F8@ha
/* 8032D588 00323308  38 9F 48 20 */	addi r4, r31, 0x4820
/* 8032D58C 0032330C  38 A5 47 F8 */	addi r5, r5, lbl_804147F8@l
/* 8032D590 00323310  3C 60 80 53 */	lis r3, lbl_80533384@ha
/* 8032D594 00323314  90 A1 00 08 */	stw r5, 8(r1)
/* 8032D598 00323318  38 63 33 84 */	addi r3, r3, lbl_80533384@l
/* 8032D59C 0032331C  38 84 00 1C */	addi r4, r4, 0x1c
/* 8032D5A0 00323320  38 A0 00 00 */	li r5, 0
/* 8032D5A4 00323324  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8032D5A8 00323328  38 C0 00 0C */	li r6, 0xc
/* 8032D5AC 0032332C  38 E0 00 00 */	li r7, 0
/* 8032D5B0 00323330  39 00 00 00 */	li r8, 0
/* 8032D5B4 00323334  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D5B8 00323338  39 20 00 00 */	li r9, 0
/* 8032D5BC 0032333C  39 40 00 00 */	li r10, 0
/* 8032D5C0 00323340  4B F4 F2 49 */	bl hkClass$7__ct
/* 8032D5C4 00323344  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032D5C8 00323348  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8032D5CC 0032334C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8032D5D0 00323350  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8032D5D4 00323354  7C 08 03 A6 */	mtlr r0
/* 8032D5D8 00323358  38 21 00 30 */	addi r1, r1, 0x30
/* 8032D5DC 0032335C  4E 80 00 20 */	blr 

.global __sinit_$3hkSkeletalAnimationClass_cpp
__sinit_$3hkSkeletalAnimationClass_cpp:
/* 8032D5E0 00323360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D5E4 00323364  7C 08 02 A6 */	mflr r0
/* 8032D5E8 00323368  3C A0 80 41 */	lis r5, lbl_80414898@ha
/* 8032D5EC 0032336C  3C 60 80 53 */	lis r3, lbl_805333A8@ha
/* 8032D5F0 00323370  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D5F4 00323374  38 A5 48 98 */	addi r5, r5, lbl_80414898@l
/* 8032D5F8 00323378  3C 80 80 41 */	lis r4, lbl_804148E8@ha
/* 8032D5FC 0032337C  38 C0 00 04 */	li r6, 4
/* 8032D600 00323380  90 A1 00 08 */	stw r5, 8(r1)
/* 8032D604 00323384  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 8032D608 00323388  38 00 00 00 */	li r0, 0
/* 8032D60C 0032338C  38 63 33 A8 */	addi r3, r3, lbl_805333A8@l
/* 8032D610 00323390  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8032D614 00323394  38 84 48 E8 */	addi r4, r4, lbl_804148E8@l
/* 8032D618 00323398  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 8032D61C 0032339C  38 C0 00 1C */	li r6, 0x1c
/* 8032D620 003233A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032D624 003233A4  38 E0 00 00 */	li r7, 0
/* 8032D628 003233A8  39 00 00 00 */	li r8, 0
/* 8032D62C 003233AC  39 20 00 00 */	li r9, 0
/* 8032D630 003233B0  39 40 00 00 */	li r10, 0
/* 8032D634 003233B4  4B F4 F1 D5 */	bl hkClass$7__ct
/* 8032D638 003233B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D63C 003233BC  7C 08 03 A6 */	mtlr r0
/* 8032D640 003233C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D644 003233C4  4E 80 00 20 */	blr 

.global __sinit_$3hkMeshBindingClass_cpp
__sinit_$3hkMeshBindingClass_cpp:
/* 8032D648 003233C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D64C 003233CC  7C 08 02 A6 */	mflr r0
/* 8032D650 003233D0  3C 80 80 41 */	lis r4, lbl_80414900@ha
/* 8032D654 003233D4  3C 60 80 53 */	lis r3, lbl_805333D0@ha
/* 8032D658 003233D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D65C 003233DC  38 84 49 00 */	addi r4, r4, lbl_80414900@l
/* 8032D660 003233E0  38 00 00 01 */	li r0, 1
/* 8032D664 003233E4  38 63 33 D0 */	addi r3, r3, lbl_805333D0@l
/* 8032D668 003233E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8032D66C 003233EC  3F E0 80 41 */	lis r31, lbl_80414998@ha
/* 8032D670 003233F0  38 A0 00 00 */	li r5, 0
/* 8032D674 003233F4  38 C0 00 08 */	li r6, 8
/* 8032D678 003233F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8032D67C 003233FC  3B C0 00 00 */	li r30, 0
/* 8032D680 00323400  38 E0 00 00 */	li r7, 0
/* 8032D684 00323404  39 00 00 00 */	li r8, 0
/* 8032D688 00323408  90 81 00 08 */	stw r4, 8(r1)
/* 8032D68C 0032340C  38 9F 49 98 */	addi r4, r31, lbl_80414998@l
/* 8032D690 00323410  39 20 00 00 */	li r9, 0
/* 8032D694 00323414  39 40 00 00 */	li r10, 0
/* 8032D698 00323418  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032D69C 0032341C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D6A0 00323420  4B F4 F1 69 */	bl hkClass$7__ct
/* 8032D6A4 00323424  3C A0 80 41 */	lis r5, lbl_80414948@ha
/* 8032D6A8 00323428  38 9F 49 98 */	addi r4, r31, 0x4998
/* 8032D6AC 0032342C  38 A5 49 48 */	addi r5, r5, lbl_80414948@l
/* 8032D6B0 00323430  3C 60 80 53 */	lis r3, lbl_805333F4@ha
/* 8032D6B4 00323434  90 A1 00 08 */	stw r5, 8(r1)
/* 8032D6B8 00323438  38 00 00 04 */	li r0, 4
/* 8032D6BC 0032343C  38 63 33 F4 */	addi r3, r3, lbl_805333F4@l
/* 8032D6C0 00323440  38 84 00 15 */	addi r4, r4, 0x15
/* 8032D6C4 00323444  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032D6C8 00323448  38 A0 00 00 */	li r5, 0
/* 8032D6CC 0032344C  38 C0 00 18 */	li r6, 0x18
/* 8032D6D0 00323450  38 E0 00 00 */	li r7, 0
/* 8032D6D4 00323454  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D6D8 00323458  39 00 00 00 */	li r8, 0
/* 8032D6DC 0032345C  39 20 00 00 */	li r9, 0
/* 8032D6E0 00323460  39 40 00 00 */	li r10, 0
/* 8032D6E4 00323464  4B F4 F1 25 */	bl hkClass$7__ct
/* 8032D6E8 00323468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D6EC 0032346C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8032D6F0 00323470  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8032D6F4 00323474  7C 08 03 A6 */	mtlr r0
/* 8032D6F8 00323478  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D6FC 0032347C  4E 80 00 20 */	blr 

.global __sinit_$3hkAnimationContainerClass_cpp
__sinit_$3hkAnimationContainerClass_cpp:
/* 8032D700 00323480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D704 00323484  7C 08 02 A6 */	mflr r0
/* 8032D708 00323488  3C A0 80 41 */	lis r5, lbl_804149F0@ha
/* 8032D70C 0032348C  3C 60 80 53 */	lis r3, lbl_80533418@ha
/* 8032D710 00323490  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D714 00323494  38 A5 49 F0 */	addi r5, r5, lbl_804149F0@l
/* 8032D718 00323498  3C 80 80 41 */	lis r4, lbl_80414A54@ha
/* 8032D71C 0032349C  38 00 00 00 */	li r0, 0
/* 8032D720 003234A0  90 A1 00 08 */	stw r5, 8(r1)
/* 8032D724 003234A4  38 A0 00 05 */	li r5, 5
/* 8032D728 003234A8  38 63 34 18 */	addi r3, r3, lbl_80533418@l
/* 8032D72C 003234AC  38 84 4A 54 */	addi r4, r4, lbl_80414A54@l
/* 8032D730 003234B0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032D734 003234B4  38 A0 00 00 */	li r5, 0
/* 8032D738 003234B8  38 C0 00 28 */	li r6, 0x28
/* 8032D73C 003234BC  38 E0 00 00 */	li r7, 0
/* 8032D740 003234C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032D744 003234C4  39 00 00 00 */	li r8, 0
/* 8032D748 003234C8  39 20 00 00 */	li r9, 0
/* 8032D74C 003234CC  39 40 00 00 */	li r10, 0
/* 8032D750 003234D0  4B F4 F0 B9 */	bl hkClass$7__ct
/* 8032D754 003234D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D758 003234D8  7C 08 03 A6 */	mtlr r0
/* 8032D75C 003234DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D760 003234E0  4E 80 00 20 */	blr 

.global hkVector4$7setRotatedDir_11414
hkVector4$7setRotatedDir_11414:
/* 8032D764 003234E4  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 8032D768 003234E8  7C 2C 0B 78 */	mr r12, r1
/* 8032D76C 003234EC  21 6B FE F0 */	subfic r11, r11, -272
/* 8032D770 003234F0  7C 21 59 6E */	stwux r1, r1, r11
/* 8032D774 003234F4  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8032D778 003234F8  F3 EC 0F F8 */	psq_st f31, -8(r12), 0, qr0
/* 8032D77C 003234FC  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 8032D780 00323500  F3 CC 0F E8 */	psq_st f30, -24(r12), 0, qr0
/* 8032D784 00323504  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 8032D788 00323508  F3 AC 0F D8 */	psq_st f29, -40(r12), 0, qr0
/* 8032D78C 0032350C  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 8032D790 00323510  F3 8C 0F C8 */	psq_st f28, -56(r12), 0, qr0
/* 8032D794 00323514  DB 6C FF B0 */	stfd f27, -0x50(r12)
/* 8032D798 00323518  F3 6C 0F B8 */	psq_st f27, -72(r12), 0, qr0
/* 8032D79C 0032351C  DB 4C FF A0 */	stfd f26, -0x60(r12)
/* 8032D7A0 00323520  F3 4C 0F A8 */	psq_st f26, -88(r12), 0, qr0
/* 8032D7A4 00323524  DB 2C FF 90 */	stfd f25, -0x70(r12)
/* 8032D7A8 00323528  F3 2C 0F 98 */	psq_st f25, -104(r12), 0, qr0
/* 8032D7AC 0032352C  DB 0C FF 80 */	stfd f24, -0x80(r12)
/* 8032D7B0 00323530  F3 0C 0F 88 */	psq_st f24, -120(r12), 0, qr0
/* 8032D7B4 00323534  DA EC FF 70 */	stfd f23, -0x90(r12)
/* 8032D7B8 00323538  F2 EC 0F 78 */	psq_st f23, -136(r12), 0, qr0
/* 8032D7BC 0032353C  DA CC FF 60 */	stfd f22, -0xa0(r12)
/* 8032D7C0 00323540  F2 CC 0F 68 */	psq_st f22, -152(r12), 0, qr0
/* 8032D7C4 00323544  DA AC FF 50 */	stfd f21, -0xb0(r12)
/* 8032D7C8 00323548  F2 AC 0F 58 */	psq_st f21, -168(r12), 0, qr0
/* 8032D7CC 0032354C  C3 45 00 04 */	lfs f26, 4(r5)
/* 8032D7D0 00323550  3C E0 80 41 */	lis r7, lbl_8040F870@ha
/* 8032D7D4 00323554  C3 A4 00 04 */	lfs f29, 4(r4)
/* 8032D7D8 00323558  38 C7 F8 70 */	addi r6, r7, lbl_8040F870@l
/* 8032D7DC 0032355C  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 8032D7E0 00323560  C2 C7 F8 70 */	lfs f22, -0x790(r7)
/* 8032D7E4 00323564  EC BD 06 B2 */	fmuls f5, f29, f26
/* 8032D7E8 00323568  C2 E6 00 04 */	lfs f23, 4(r6)
/* 8032D7EC 0032356C  C3 06 00 08 */	lfs f24, 8(r6)
/* 8032D7F0 00323570  EC 64 B1 3A */	fmadds f3, f4, f4, f22
/* 8032D7F4 00323574  C3 26 00 0C */	lfs f25, 0xc(r6)
/* 8032D7F8 00323578  EC 44 B9 3A */	fmadds f2, f4, f4, f23
/* 8032D7FC 0032357C  C1 A5 00 00 */	lfs f13, 0(r5)
/* 8032D800 00323580  EC 24 C1 3A */	fmadds f1, f4, f4, f24
/* 8032D804 00323584  C3 C4 00 00 */	lfs f30, 0(r4)
/* 8032D808 00323588  C1 45 00 08 */	lfs f10, 8(r5)
/* 8032D80C 0032358C  EC 04 C9 3A */	fmadds f0, f4, f4, f25
/* 8032D810 00323590  C0 E5 00 0C */	lfs f7, 0xc(r5)
/* 8032D814 00323594  EC BE 2B 7A */	fmadds f5, f30, f13, f5
/* 8032D818 00323598  C1 84 00 08 */	lfs f12, 8(r4)
/* 8032D81C 0032359C  ED 1E 02 B2 */	fmuls f8, f30, f10
/* 8032D820 003235A0  ED 27 00 32 */	fmuls f9, f7, f0
/* 8032D824 003235A4  EC CC 2A BA */	fmadds f6, f12, f10, f5
/* 8032D828 003235A8  C3 E2 B5 98 */	lfs f31, lbl_805A48B8-_SDA2_BASE_(r2)
/* 8032D82C 003235AC  ED 6D 00 F2 */	fmuls f11, f13, f3
/* 8032D830 003235B0  D2 C1 00 50 */	stfs f22, 0x50(r1)
/* 8032D834 003235B4  EC AC 06 B2 */	fmuls f5, f12, f26
/* 8032D838 003235B8  EC FD 03 72 */	fmuls f7, f29, f13
/* 8032D83C 003235BC  EE AC 43 78 */	fmsubs f21, f12, f13, f8
/* 8032D840 003235C0  D2 E1 00 54 */	stfs f23, 0x54(r1)
/* 8032D844 003235C4  EF 7A 00 B2 */	fmuls f27, f26, f2
/* 8032D848 003235C8  EC BD 2A B8 */	fmsubs f5, f29, f10, f5
/* 8032D84C 003235CC  D3 01 00 58 */	stfs f24, 0x58(r1)
/* 8032D850 003235D0  ED 66 5F BA */	fmadds f11, f6, f30, f11
/* 8032D854 003235D4  EE DE 3E B8 */	fmsubs f22, f30, f26, f7
/* 8032D858 003235D8  D3 21 00 5C */	stfs f25, 0x5c(r1)
/* 8032D85C 003235DC  EF 8A 00 72 */	fmuls f28, f10, f1
/* 8032D860 003235E0  ED 26 49 3A */	fmadds f9, f6, f4, f9
/* 8032D864 003235E4  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8032D868 003235E8  ED 06 DF 7A */	fmadds f8, f6, f29, f27
/* 8032D86C 003235EC  EC C6 E3 3A */	fmadds f6, f6, f12, f28
/* 8032D870 003235F0  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8032D874 003235F4  ED A5 59 3A */	fmadds f13, f5, f4, f11
/* 8032D878 003235F8  ED 5F 49 3A */	fmadds f10, f31, f4, f9
/* 8032D87C 003235FC  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8032D880 00323600  ED 76 31 3A */	fmadds f11, f22, f4, f6
/* 8032D884 00323604  ED 95 41 3A */	fmadds f12, f21, f4, f8
/* 8032D888 00323608  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 8032D88C 0032360C  ED 2D 68 2A */	fadds f9, f13, f13
/* 8032D890 00323610  EC CA 50 2A */	fadds f6, f10, f10
/* 8032D894 00323614  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8032D898 00323618  ED 0C 60 2A */	fadds f8, f12, f12
/* 8032D89C 0032361C  EC EB 58 2A */	fadds f7, f11, f11
/* 8032D8A0 00323620  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8032D8A4 00323624  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8032D8A8 00323628  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8032D8AC 0032362C  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8032D8B0 00323630  D2 A1 00 14 */	stfs f21, 0x14(r1)
/* 8032D8B4 00323634  D2 C1 00 18 */	stfs f22, 0x18(r1)
/* 8032D8B8 00323638  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8032D8BC 0032363C  D1 A1 00 20 */	stfs f13, 0x20(r1)
/* 8032D8C0 00323640  D1 81 00 24 */	stfs f12, 0x24(r1)
/* 8032D8C4 00323644  D1 61 00 28 */	stfs f11, 0x28(r1)
/* 8032D8C8 00323648  D1 41 00 2C */	stfs f10, 0x2c(r1)
/* 8032D8CC 0032364C  D1 23 00 00 */	stfs f9, 0(r3)
/* 8032D8D0 00323650  D1 03 00 04 */	stfs f8, 4(r3)
/* 8032D8D4 00323654  D0 E3 00 08 */	stfs f7, 8(r3)
/* 8032D8D8 00323658  D0 C3 00 0C */	stfs f6, 0xc(r3)
/* 8032D8DC 0032365C  81 41 00 00 */	lwz r10, 0(r1)
/* 8032D8E0 00323660  38 00 FF F8 */	li r0, -8
/* 8032D8E4 00323664  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 8032D8E8 00323668  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 8032D8EC 0032366C  38 00 FF E8 */	li r0, -24
/* 8032D8F0 00323670  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 8032D8F4 00323674  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 8032D8F8 00323678  38 00 FF D8 */	li r0, -40
/* 8032D8FC 0032367C  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 8032D900 00323680  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 8032D904 00323684  38 00 FF C8 */	li r0, -56
/* 8032D908 00323688  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 8032D90C 0032368C  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 8032D910 00323690  38 00 FF B8 */	li r0, -72
/* 8032D914 00323694  13 6A 00 0C */	psq_lx f27, r10, r0, 0, qr0
/* 8032D918 00323698  CB 6A FF B0 */	lfd f27, -0x50(r10)
/* 8032D91C 0032369C  38 00 FF A8 */	li r0, -88
/* 8032D920 003236A0  13 4A 00 0C */	psq_lx f26, r10, r0, 0, qr0
/* 8032D924 003236A4  CB 4A FF A0 */	lfd f26, -0x60(r10)
/* 8032D928 003236A8  38 00 FF 98 */	li r0, -104
/* 8032D92C 003236AC  13 2A 00 0C */	psq_lx f25, r10, r0, 0, qr0
/* 8032D930 003236B0  CB 2A FF 90 */	lfd f25, -0x70(r10)
/* 8032D934 003236B4  38 00 FF 88 */	li r0, -120
/* 8032D938 003236B8  13 0A 00 0C */	psq_lx f24, r10, r0, 0, qr0
/* 8032D93C 003236BC  CB 0A FF 80 */	lfd f24, -0x80(r10)
/* 8032D940 003236C0  38 00 FF 78 */	li r0, -136
/* 8032D944 003236C4  12 EA 00 0C */	psq_lx f23, r10, r0, 0, qr0
/* 8032D948 003236C8  CA EA FF 70 */	lfd f23, -0x90(r10)
/* 8032D94C 003236CC  38 00 FF 68 */	li r0, -152
/* 8032D950 003236D0  12 CA 00 0C */	psq_lx f22, r10, r0, 0, qr0
/* 8032D954 003236D4  CA CA FF 60 */	lfd f22, -0xa0(r10)
/* 8032D958 003236D8  38 00 FF 58 */	li r0, -168
/* 8032D95C 003236DC  12 AA 00 0C */	psq_lx f21, r10, r0, 0, qr0
/* 8032D960 003236E0  CA AA FF 50 */	lfd f21, -0xb0(r10)
/* 8032D964 003236E4  7D 41 53 78 */	mr r1, r10
/* 8032D968 003236E8  4E 80 00 20 */	blr 


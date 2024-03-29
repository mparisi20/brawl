.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkClassMember$7getSizeInBytes
hkClassMember$7getSizeInBytes:
/* 8027CA38 002727B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027CA3C 002727BC  7C 08 02 A6 */	mflr r0
/* 8027CA40 002727C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027CA44 002727C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027CA48 002727C8  8B E3 00 0C */	lbz r31, 0xc(r3)
/* 8027CA4C 002727CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8027CA50 002727D0  7C 7E 1B 78 */	mr r30, r3
/* 8027CA54 002727D4  2C 1F 00 13 */	cmpwi r31, 0x13
/* 8027CA58 002727D8  41 82 00 08 */	beq lbl_8027CA60
/* 8027CA5C 002727DC  48 00 00 08 */	b lbl_8027CA64
lbl_8027CA60:
/* 8027CA60 002727E0  8B E3 00 0D */	lbz r31, 0xd(r3)
lbl_8027CA64:
/* 8027CA64 002727E4  28 1F 00 1E */	cmplwi r31, 0x1e
/* 8027CA68 002727E8  38 60 FF FF */	li r3, -1
/* 8027CA6C 002727EC  41 81 00 C0 */	bgt lbl_8027CB2C
/* 8027CA70 002727F0  3C 80 80 48 */	lis r4, lbl_804861D0@ha
/* 8027CA74 002727F4  57 E0 10 3A */	slwi r0, r31, 2
/* 8027CA78 002727F8  38 84 61 D0 */	addi r4, r4, lbl_804861D0@l
/* 8027CA7C 002727FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8027CA80 00272800  7C 89 03 A6 */	mtctr r4
/* 8027CA84 00272804  4E 80 04 20 */	bctr 
/* 8027CA88 00272808  7F C3 F3 78 */	mr r3, r30
/* 8027CA8C 0027280C  48 00 01 99 */	bl hkClassMember$7getCstyleArraySize
/* 8027CA90 00272810  2C 03 00 00 */	cmpwi r3, 0
/* 8027CA94 00272814  41 82 00 10 */	beq lbl_8027CAA4
/* 8027CA98 00272818  7F C3 F3 78 */	mr r3, r30
/* 8027CA9C 0027281C  48 00 01 89 */	bl hkClassMember$7getCstyleArraySize
/* 8027CAA0 00272820  48 00 00 08 */	b lbl_8027CAA8
lbl_8027CAA4:
/* 8027CAA4 00272824  38 60 00 01 */	li r3, 1
lbl_8027CAA8:
/* 8027CAA8 00272828  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8027CAAC 0027282C  3C 80 80 41 */	lis r4, lbl_8040ECD8@ha
/* 8027CAB0 00272830  38 84 EC D8 */	addi r4, r4, lbl_8040ECD8@l
/* 8027CAB4 00272834  7C 84 02 14 */	add r4, r4, r0
/* 8027CAB8 00272838  A8 04 00 08 */	lha r0, 8(r4)
/* 8027CABC 0027283C  7C 63 01 D6 */	mullw r3, r3, r0
/* 8027CAC0 00272840  48 00 00 6C */	b lbl_8027CB2C
/* 8027CAC4 00272844  7F C3 F3 78 */	mr r3, r30
/* 8027CAC8 00272848  48 00 01 5D */	bl hkClassMember$7getCstyleArraySize
/* 8027CACC 0027284C  2C 03 00 00 */	cmpwi r3, 0
/* 8027CAD0 00272850  41 82 00 10 */	beq lbl_8027CAE0
/* 8027CAD4 00272854  7F C3 F3 78 */	mr r3, r30
/* 8027CAD8 00272858  48 00 01 4D */	bl hkClassMember$7getCstyleArraySize
/* 8027CADC 0027285C  48 00 00 08 */	b lbl_8027CAE4
lbl_8027CAE0:
/* 8027CAE0 00272860  38 60 00 01 */	li r3, 1
lbl_8027CAE4:
/* 8027CAE4 00272864  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 8027CAE8 00272868  7C 03 01 D6 */	mullw r0, r3, r0
/* 8027CAEC 0027286C  7C 00 1E 70 */	srawi r0, r0, 3
/* 8027CAF0 00272870  7C 60 01 94 */	addze r3, r0
/* 8027CAF4 00272874  48 00 00 38 */	b lbl_8027CB2C
/* 8027CAF8 00272878  7F C3 F3 78 */	mr r3, r30
/* 8027CAFC 0027287C  48 00 01 29 */	bl hkClassMember$7getCstyleArraySize
/* 8027CB00 00272880  2C 03 00 00 */	cmpwi r3, 0
/* 8027CB04 00272884  41 82 00 14 */	beq lbl_8027CB18
/* 8027CB08 00272888  7F C3 F3 78 */	mr r3, r30
/* 8027CB0C 0027288C  48 00 01 19 */	bl hkClassMember$7getCstyleArraySize
/* 8027CB10 00272890  7C 7F 1B 78 */	mr r31, r3
/* 8027CB14 00272894  48 00 00 08 */	b lbl_8027CB1C
lbl_8027CB18:
/* 8027CB18 00272898  3B E0 00 01 */	li r31, 1
lbl_8027CB1C:
/* 8027CB1C 0027289C  7F C3 F3 78 */	mr r3, r30
/* 8027CB20 002728A0  48 00 00 FD */	bl hkClassMember$7getStructClass
/* 8027CB24 002728A4  4B FF FD E1 */	bl hkClass$7getObjectSize
/* 8027CB28 002728A8  7C 7F 19 D6 */	mullw r3, r31, r3
lbl_8027CB2C:
/* 8027CB2C 002728AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027CB30 002728B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027CB34 002728B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027CB38 002728B8  7C 08 03 A6 */	mtlr r0
/* 8027CB3C 002728BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8027CB40 002728C0  4E 80 00 20 */	blr 

.global hkClassMember$7getAlignment
hkClassMember$7getAlignment:
/* 8027CB44 002728C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027CB48 002728C8  7C 08 02 A6 */	mflr r0
/* 8027CB4C 002728CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027CB50 002728D0  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8027CB54 002728D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027CB58 002728D8  2C 00 00 13 */	cmpwi r0, 0x13
/* 8027CB5C 002728DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027CB60 002728E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8027CB64 002728E4  7C 7D 1B 78 */	mr r29, r3
/* 8027CB68 002728E8  41 82 00 08 */	beq lbl_8027CB70
/* 8027CB6C 002728EC  48 00 00 08 */	b lbl_8027CB74
lbl_8027CB70:
/* 8027CB70 002728F0  88 03 00 0D */	lbz r0, 0xd(r3)
lbl_8027CB74:
/* 8027CB74 002728F4  2C 00 00 18 */	cmpwi r0, 0x18
/* 8027CB78 002728F8  40 82 00 10 */	bne lbl_8027CB88
/* 8027CB7C 002728FC  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8027CB80 00272900  54 1F E8 FE */	srwi r31, r0, 3
/* 8027CB84 00272904  48 00 00 70 */	b lbl_8027CBF4
lbl_8027CB88:
/* 8027CB88 00272908  2C 00 00 19 */	cmpwi r0, 0x19
/* 8027CB8C 0027290C  40 82 00 54 */	bne lbl_8027CBE0
/* 8027CB90 00272910  3B E0 00 01 */	li r31, 1
/* 8027CB94 00272914  3B C0 00 00 */	li r30, 0
/* 8027CB98 00272918  48 00 00 34 */	b lbl_8027CBCC
lbl_8027CB9C:
/* 8027CB9C 0027291C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8027CBA0 00272920  7F C4 F3 78 */	mr r4, r30
/* 8027CBA4 00272924  4B FF FC D5 */	bl hkClass$7getMember
/* 8027CBA8 00272928  4B FF FF 9D */	bl hkClassMember$7getAlignment
/* 8027CBAC 0027292C  7C 03 F8 00 */	cmpw r3, r31
/* 8027CBB0 00272930  40 81 00 18 */	ble lbl_8027CBC8
/* 8027CBB4 00272934  80 7D 00 04 */	lwz r3, 4(r29)
/* 8027CBB8 00272938  7F C4 F3 78 */	mr r4, r30
/* 8027CBBC 0027293C  4B FF FC BD */	bl hkClass$7getMember
/* 8027CBC0 00272940  4B FF FF 85 */	bl hkClassMember$7getAlignment
/* 8027CBC4 00272944  7C 7F 1B 78 */	mr r31, r3
lbl_8027CBC8:
/* 8027CBC8 00272948  3B DE 00 01 */	addi r30, r30, 1
lbl_8027CBCC:
/* 8027CBCC 0027294C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8027CBD0 00272950  4B FF FC 85 */	bl hkClass$7getNumMembers
/* 8027CBD4 00272954  7C 1E 18 00 */	cmpw r30, r3
/* 8027CBD8 00272958  41 80 FF C4 */	blt lbl_8027CB9C
/* 8027CBDC 0027295C  48 00 00 18 */	b lbl_8027CBF4
lbl_8027CBE0:
/* 8027CBE0 00272960  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8027CBE4 00272964  3C 60 80 41 */	lis r3, lbl_8040ECD8@ha
/* 8027CBE8 00272968  38 63 EC D8 */	addi r3, r3, lbl_8040ECD8@l
/* 8027CBEC 0027296C  7C 63 02 14 */	add r3, r3, r0
/* 8027CBF0 00272970  AB E3 00 0A */	lha r31, 0xa(r3)
lbl_8027CBF4:
/* 8027CBF4 00272974  7F E3 FB 78 */	mr r3, r31
/* 8027CBF8 00272978  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027CBFC 0027297C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027CC00 00272980  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8027CC04 00272984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027CC08 00272988  7C 08 03 A6 */	mtlr r0
/* 8027CC0C 0027298C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027CC10 00272990  4E 80 00 20 */	blr 

.global hkClassMember$7getArrayType
hkClassMember$7getArrayType:
/* 8027CC14 00272994  88 63 00 0D */	lbz r3, 0xd(r3)
/* 8027CC18 00272998  4E 80 00 20 */	blr 

.global hkClassMember$7getStructClass
hkClassMember$7getStructClass:
/* 8027CC1C 0027299C  80 63 00 04 */	lwz r3, 4(r3)
/* 8027CC20 002729A0  4E 80 00 20 */	blr 

.global hkClassMember$7getCstyleArraySize
hkClassMember$7getCstyleArraySize:
/* 8027CC24 002729A4  A8 63 00 0E */	lha r3, 0xe(r3)
/* 8027CC28 002729A8  4E 80 00 20 */	blr 

.global __sinit_$3hkClassMemberClass_cpp
__sinit_$3hkClassMemberClass_cpp:
/* 8027CC2C 002729AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027CC30 002729B0  7C 08 02 A6 */	mflr r0
/* 8027CC34 002729B4  3C E0 80 48 */	lis r7, lbl_80486250@ha
/* 8027CC38 002729B8  3C 60 80 53 */	lis r3, lbl_805323E8@ha
/* 8027CC3C 002729BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027CC40 002729C0  3C 80 80 41 */	lis r4, lbl_8040F208@ha
/* 8027CC44 002729C4  3D 20 80 41 */	lis r9, lbl_8040F1D8@ha
/* 8027CC48 002729C8  38 E7 62 50 */	addi r7, r7, lbl_80486250@l
/* 8027CC4C 002729CC  81 0D AB 18 */	lwz r8, lbl_8059EF38-_SDA_BASE_(r13)
/* 8027CC50 002729D0  38 00 00 08 */	li r0, 8
/* 8027CC54 002729D4  38 63 23 E8 */	addi r3, r3, lbl_805323E8@l
/* 8027CC58 002729D8  38 84 F2 08 */	addi r4, r4, lbl_8040F208@l
/* 8027CC5C 002729DC  90 E1 00 08 */	stw r7, 8(r1)
/* 8027CC60 002729E0  39 29 F1 D8 */	addi r9, r9, lbl_8040F1D8@l
/* 8027CC64 002729E4  38 A0 00 00 */	li r5, 0
/* 8027CC68 002729E8  38 C0 00 14 */	li r6, 0x14
/* 8027CC6C 002729EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027CC70 002729F0  38 00 00 00 */	li r0, 0
/* 8027CC74 002729F4  39 40 00 03 */	li r10, 3
/* 8027CC78 002729F8  91 07 00 44 */	stw r8, 0x44(r7)
/* 8027CC7C 002729FC  91 07 00 58 */	stw r8, 0x58(r7)
/* 8027CC80 00272A00  38 E0 00 00 */	li r7, 0
/* 8027CC84 00272A04  39 00 00 00 */	li r8, 0
/* 8027CC88 00272A08  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027CC8C 00272A0C  4B FF FB 7D */	bl hkClass$7__ct
/* 8027CC90 00272A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027CC94 00272A14  7C 08 03 A6 */	mtlr r0
/* 8027CC98 00272A18  38 21 00 20 */	addi r1, r1, 0x20
/* 8027CC9C 00272A1C  4E 80 00 20 */	blr 

.global __sinit_$3hkClassVersion1Class_cpp
__sinit_$3hkClassVersion1Class_cpp:
/* 8027CCA0 00272A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027CCA4 00272A24  7C 08 02 A6 */	mflr r0
/* 8027CCA8 00272A28  3C A0 80 41 */	lis r5, lbl_8040F26C@ha
/* 8027CCAC 00272A2C  3C 60 80 53 */	lis r3, lbl_80532410@ha
/* 8027CCB0 00272A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027CCB4 00272A34  38 A5 F2 6C */	addi r5, r5, lbl_8040F26C@l
/* 8027CCB8 00272A38  3C 80 80 41 */	lis r4, lbl_8040F2F8@ha
/* 8027CCBC 00272A3C  38 00 00 00 */	li r0, 0
/* 8027CCC0 00272A40  90 A1 00 08 */	stw r5, 8(r1)
/* 8027CCC4 00272A44  38 A0 00 07 */	li r5, 7
/* 8027CCC8 00272A48  38 63 24 10 */	addi r3, r3, lbl_80532410@l
/* 8027CCCC 00272A4C  38 84 F2 F8 */	addi r4, r4, lbl_8040F2F8@l
/* 8027CCD0 00272A50  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8027CCD4 00272A54  38 A0 00 00 */	li r5, 0
/* 8027CCD8 00272A58  38 C0 00 24 */	li r6, 0x24
/* 8027CCDC 00272A5C  38 E0 00 00 */	li r7, 0
/* 8027CCE0 00272A60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027CCE4 00272A64  39 00 00 00 */	li r8, 0
/* 8027CCE8 00272A68  39 20 00 00 */	li r9, 0
/* 8027CCEC 00272A6C  39 40 00 00 */	li r10, 0
/* 8027CCF0 00272A70  4B FF FB 19 */	bl hkClass$7__ct
/* 8027CCF4 00272A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027CCF8 00272A78  7C 08 03 A6 */	mtlr r0
/* 8027CCFC 00272A7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027CD00 00272A80  4E 80 00 20 */	blr 


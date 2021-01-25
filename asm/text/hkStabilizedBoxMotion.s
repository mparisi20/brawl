.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkStabilizedBoxMotion
finishLoadedObjecthkStabilizedBoxMotion:
/* 802E60EC 002DBE6C  2C 03 00 00 */	cmpwi r3, 0
/* 802E60F0 002DBE70  4D 82 00 20 */	beqlr 
/* 802E60F4 002DBE74  3C 80 80 48 */	lis r4, lbl_80487D38@ha
/* 802E60F8 002DBE78  38 00 00 01 */	li r0, 1
/* 802E60FC 002DBE7C  38 84 7D 38 */	addi r4, r4, lbl_80487D38@l
/* 802E6100 002DBE80  B0 03 00 06 */	sth r0, 6(r3)
/* 802E6104 002DBE84  90 83 00 00 */	stw r4, 0(r3)
/* 802E6108 002DBE88  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkStabilizedBoxMotion
cleanupLoadedObjecthkStabilizedBoxMotion:
/* 802E610C 002DBE8C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E6110 002DBE90  38 80 FF FF */	li r4, -1
/* 802E6114 002DBE94  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E6118 002DBE98  7D 89 03 A6 */	mtctr r12
/* 802E611C 002DBE9C  4E 80 04 20 */	bctr 

.global getVtablehkStabilizedBoxMotion
getVtablehkStabilizedBoxMotion:
/* 802E6120 002DBEA0  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E6124 002DBEA4  7C 2C 0B 78 */	mr r12, r1
/* 802E6128 002DBEA8  21 6B FE F0 */	subfic r11, r11, -272
/* 802E612C 002DBEAC  7C 21 59 6E */	stwux r1, r1, r11
/* 802E6130 002DBEB0  34 01 00 10 */	addic. r0, r1, 0x10
/* 802E6134 002DBEB4  41 82 00 18 */	beq lbl_802E614C
/* 802E6138 002DBEB8  3C 60 80 48 */	lis r3, lbl_80487D38@ha
/* 802E613C 002DBEBC  38 00 00 01 */	li r0, 1
/* 802E6140 002DBEC0  38 63 7D 38 */	addi r3, r3, lbl_80487D38@l
/* 802E6144 002DBEC4  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802E6148 002DBEC8  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802E614C:
/* 802E614C 002DBECC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E6150 002DBED0  81 41 00 00 */	lwz r10, 0(r1)
/* 802E6154 002DBED4  7D 41 53 78 */	mr r1, r10
/* 802E6158 002DBED8  4E 80 00 20 */	blr 

.global hkStabilizedBoxMotion$7__ct
hkStabilizedBoxMotion$7__ct:
/* 802E615C 002DBEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E6160 002DBEE0  7C 08 02 A6 */	mflr r0
/* 802E6164 002DBEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E6168 002DBEE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E616C 002DBEEC  7C 7F 1B 78 */	mr r31, r3
/* 802E6170 002DBEF0  4B FF E7 29 */	bl hkBoxMotion$7__ct
/* 802E6174 002DBEF4  3C 80 80 48 */	lis r4, lbl_80487D38@ha
/* 802E6178 002DBEF8  38 00 00 05 */	li r0, 5
/* 802E617C 002DBEFC  38 84 7D 38 */	addi r4, r4, lbl_80487D38@l
/* 802E6180 002DBF00  98 1F 00 08 */	stb r0, 8(r31)
/* 802E6184 002DBF04  7F E3 FB 78 */	mr r3, r31
/* 802E6188 002DBF08  90 9F 00 00 */	stw r4, 0(r31)
/* 802E618C 002DBF0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E6190 002DBF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E6194 002DBF14  7C 08 03 A6 */	mtlr r0
/* 802E6198 002DBF18  38 21 00 10 */	addi r1, r1, 0x10
/* 802E619C 002DBF1C  4E 80 00 20 */	blr 

.global __sinit_$3hkStabilizedBoxMotion_cpp
__sinit_$3hkStabilizedBoxMotion_cpp:
/* 802E61A0 002DBF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E61A4 002DBF24  7C 08 02 A6 */	mflr r0
/* 802E61A8 002DBF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E61AC 002DBF2C  4B FF FF 75 */	bl getVtablehkStabilizedBoxMotion
/* 802E61B0 002DBF30  3D 00 80 41 */	lis r8, lbl_804131F8@ha
/* 802E61B4 002DBF34  3C E0 80 53 */	lis r7, lbl_80533180@ha
/* 802E61B8 002DBF38  3C C0 80 2E */	lis r6, finishLoadedObjecthkStabilizedBoxMotion@ha
/* 802E61BC 002DBF3C  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkStabilizedBoxMotion@ha
/* 802E61C0 002DBF40  39 08 31 F8 */	addi r8, r8, lbl_804131F8@l
/* 802E61C4 002DBF44  38 A7 31 80 */	addi r5, r7, lbl_80533180@l
/* 802E61C8 002DBF48  38 C6 60 EC */	addi r6, r6, finishLoadedObjecthkStabilizedBoxMotion@l
/* 802E61CC 002DBF4C  38 84 61 0C */	addi r4, r4, cleanupLoadedObjecthkStabilizedBoxMotion@l
/* 802E61D0 002DBF50  91 07 31 80 */	stw r8, 0x3180(r7)
/* 802E61D4 002DBF54  90 C5 00 04 */	stw r6, 4(r5)
/* 802E61D8 002DBF58  90 85 00 08 */	stw r4, 8(r5)
/* 802E61DC 002DBF5C  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E61E0 002DBF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E61E4 002DBF64  7C 08 03 A6 */	mtlr r0
/* 802E61E8 002DBF68  38 21 00 10 */	addi r1, r1, 0x10
/* 802E61EC 002DBF6C  4E 80 00 20 */	blr 


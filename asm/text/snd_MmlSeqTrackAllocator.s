.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw$7AllocTrack
nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw$7AllocTrack:
/* 801C20CC 001B7E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C20D0 001B7E50  7C 08 02 A6 */	mflr r0
/* 801C20D4 001B7E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C20D8 001B7E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C20DC 001B7E5C  7C 9F 23 78 */	mr r31, r4
/* 801C20E0 001B7E60  93 C1 00 08 */	stw r30, 8(r1)
/* 801C20E4 001B7E64  7C 7E 1B 78 */	mr r30, r3
/* 801C20E8 001B7E68  38 63 00 08 */	addi r3, r3, 8
/* 801C20EC 001B7E6C  4B FF E9 21 */	bl nw4r3snd6detail8PoolImplFv$7AllocImpl
/* 801C20F0 001B7E70  2C 03 00 00 */	cmpwi r3, 0
/* 801C20F4 001B7E74  40 82 00 0C */	bne lbl_801C2100
/* 801C20F8 001B7E78  38 60 00 00 */	li r3, 0
/* 801C20FC 001B7E7C  48 00 00 0C */	b lbl_801C2108
lbl_801C2100:
/* 801C2100 001B7E80  41 82 00 08 */	beq lbl_801C2108
/* 801C2104 001B7E84  4B FF FF 09 */	bl nw4r3snd6detail11MmlSeqTrackFv$7__ct
lbl_801C2108:
/* 801C2108 001B7E88  2C 03 00 00 */	cmpwi r3, 0
/* 801C210C 001B7E8C  41 82 00 10 */	beq lbl_801C211C
/* 801C2110 001B7E90  93 E3 00 B8 */	stw r31, 0xb8(r3)
/* 801C2114 001B7E94  80 1E 00 04 */	lwz r0, 4(r30)
/* 801C2118 001B7E98  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_801C211C:
/* 801C211C 001B7E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C2120 001B7EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2124 001B7EA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C2128 001B7EA8  7C 08 03 A6 */	mtlr r0
/* 801C212C 001B7EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2130 001B7EB0  4E 80 00 20 */	blr 

.global nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw$7FreeTrack
nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw$7FreeTrack:
/* 801C2134 001B7EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2138 001B7EB8  7C 08 02 A6 */	mflr r0
/* 801C213C 001B7EBC  2C 04 00 00 */	cmpwi r4, 0
/* 801C2140 001B7EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2144 001B7EC4  38 00 00 00 */	li r0, 0
/* 801C2148 001B7EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C214C 001B7ECC  7C 9F 23 78 */	mr r31, r4
/* 801C2150 001B7ED0  93 C1 00 08 */	stw r30, 8(r1)
/* 801C2154 001B7ED4  7C 7E 1B 78 */	mr r30, r3
/* 801C2158 001B7ED8  90 04 00 B8 */	stw r0, 0xb8(r4)
/* 801C215C 001B7EDC  41 82 00 28 */	beq lbl_801C2184
/* 801C2160 001B7EE0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C2164 001B7EE4  7F E3 FB 78 */	mr r3, r31
/* 801C2168 001B7EE8  38 80 FF FF */	li r4, -1
/* 801C216C 001B7EEC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C2170 001B7EF0  7D 89 03 A6 */	mtctr r12
/* 801C2174 001B7EF4  4E 80 04 21 */	bctrl 
/* 801C2178 001B7EF8  7F E4 FB 78 */	mr r4, r31
/* 801C217C 001B7EFC  38 7E 00 08 */	addi r3, r30, 8
/* 801C2180 001B7F00  4B FF E8 E9 */	bl nw4r3snd6detail8PoolImplFPv$7FreeImpl
lbl_801C2184:
/* 801C2184 001B7F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C2188 001B7F08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C218C 001B7F0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C2190 001B7F10  7C 08 03 A6 */	mtlr r0
/* 801C2194 001B7F14  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2198 001B7F18  4E 80 00 20 */	blr 

.global nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl$7Create
nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl$7Create:
/* 801C219C 001B7F1C  38 C0 00 D8 */	li r6, 0xd8
/* 801C21A0 001B7F20  38 63 00 08 */	addi r3, r3, 8
/* 801C21A4 001B7F24  4B FF E6 54 */	b nw4r3snd6detail8PoolImplFPvUlUl$7CreateImpl

.global nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl$7Destroy
nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl$7Destroy:
/* 801C21A8 001B7F28  38 63 00 08 */	addi r3, r3, 8
/* 801C21AC 001B7F2C  4B FF E7 90 */	b nw4r3snd6detail8PoolImplFPvUl$7DestroyImpl

.global nw4r3snd6detail20MmlSeqTrackAllocatorCFv$7GetAllocatableTrackCount
nw4r3snd6detail20MmlSeqTrackAllocatorCFv$7GetAllocatableTrackCount:
/* 801C21B0 001B7F30  38 63 00 08 */	addi r3, r3, 8
/* 801C21B4 001B7F34  4B FF E8 08 */	b nw4r3snd6detail8PoolImplCFv$7CountImpl

.global nw4r3snd6detail20MmlSeqTrackAllocatorFv$7__dt
nw4r3snd6detail20MmlSeqTrackAllocatorFv$7__dt:
/* 801C21B8 001B7F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C21BC 001B7F3C  7C 08 02 A6 */	mflr r0
/* 801C21C0 001B7F40  2C 03 00 00 */	cmpwi r3, 0
/* 801C21C4 001B7F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C21C8 001B7F48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C21CC 001B7F4C  7C 7F 1B 78 */	mr r31, r3
/* 801C21D0 001B7F50  41 82 00 10 */	beq lbl_801C21E0
/* 801C21D4 001B7F54  2C 04 00 00 */	cmpwi r4, 0
/* 801C21D8 001B7F58  40 81 00 08 */	ble lbl_801C21E0
/* 801C21DC 001B7F5C  4B E4 A6 ED */	bl __dl
lbl_801C21E0:
/* 801C21E0 001B7F60  7F E3 FB 78 */	mr r3, r31
/* 801C21E4 001B7F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C21E8 001B7F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C21EC 001B7F6C  7C 08 03 A6 */	mtlr r0
/* 801C21F0 001B7F70  38 21 00 10 */	addi r1, r1, 0x10
/* 801C21F4 001B7F74  4E 80 00 20 */	blr 


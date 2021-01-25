.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkFakeRigidBodyDeactivator
finishLoadedObjecthkFakeRigidBodyDeactivator:
/* 802E2094 002D7E14  2C 03 00 00 */	cmpwi r3, 0
/* 802E2098 002D7E18  4D 82 00 20 */	beqlr 
/* 802E209C 002D7E1C  3C 80 80 48 */	lis r4, lbl_80487E98@ha
/* 802E20A0 002D7E20  38 00 00 01 */	li r0, 1
/* 802E20A4 002D7E24  38 84 7E 98 */	addi r4, r4, lbl_80487E98@l
/* 802E20A8 002D7E28  B0 03 00 06 */	sth r0, 6(r3)
/* 802E20AC 002D7E2C  90 83 00 00 */	stw r4, 0(r3)
/* 802E20B0 002D7E30  4E 80 00 20 */	blr 

.global hkEntityDeactivator$7__dt
hkEntityDeactivator$7__dt:
/* 802E20B4 002D7E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E20B8 002D7E38  7C 08 02 A6 */	mflr r0
/* 802E20BC 002D7E3C  2C 03 00 00 */	cmpwi r3, 0
/* 802E20C0 002D7E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E20C4 002D7E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E20C8 002D7E48  7C 7F 1B 78 */	mr r31, r3
/* 802E20CC 002D7E4C  41 82 00 2C */	beq lbl_802E20F8
/* 802E20D0 002D7E50  2C 04 00 00 */	cmpwi r4, 0
/* 802E20D4 002D7E54  40 81 00 24 */	ble lbl_802E20F8
/* 802E20D8 002D7E58  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802E20DC 002D7E5C  7F E4 FB 78 */	mr r4, r31
/* 802E20E0 002D7E60  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802E20E4 002D7E64  38 C0 00 29 */	li r6, 0x29
/* 802E20E8 002D7E68  81 83 00 00 */	lwz r12, 0(r3)
/* 802E20EC 002D7E6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E20F0 002D7E70  7D 89 03 A6 */	mtctr r12
/* 802E20F4 002D7E74  4E 80 04 21 */	bctrl 
lbl_802E20F8:
/* 802E20F8 002D7E78  7F E3 FB 78 */	mr r3, r31
/* 802E20FC 002D7E7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E2100 002D7E80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2104 002D7E84  7C 08 03 A6 */	mtlr r0
/* 802E2108 002D7E88  38 21 00 10 */	addi r1, r1, 0x10
/* 802E210C 002D7E8C  4E 80 00 20 */	blr 

.global hkRigidBodyDeactivator$7__dt
hkRigidBodyDeactivator$7__dt:
/* 802E2110 002D7E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2114 002D7E94  7C 08 02 A6 */	mflr r0
/* 802E2118 002D7E98  2C 03 00 00 */	cmpwi r3, 0
/* 802E211C 002D7E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2120 002D7EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E2124 002D7EA4  7C 7F 1B 78 */	mr r31, r3
/* 802E2128 002D7EA8  41 82 00 2C */	beq lbl_802E2154
/* 802E212C 002D7EAC  2C 04 00 00 */	cmpwi r4, 0
/* 802E2130 002D7EB0  40 81 00 24 */	ble lbl_802E2154
/* 802E2134 002D7EB4  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802E2138 002D7EB8  7F E4 FB 78 */	mr r4, r31
/* 802E213C 002D7EBC  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802E2140 002D7EC0  38 C0 00 29 */	li r6, 0x29
/* 802E2144 002D7EC4  81 83 00 00 */	lwz r12, 0(r3)
/* 802E2148 002D7EC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E214C 002D7ECC  7D 89 03 A6 */	mtctr r12
/* 802E2150 002D7ED0  4E 80 04 21 */	bctrl 
lbl_802E2154:
/* 802E2154 002D7ED4  7F E3 FB 78 */	mr r3, r31
/* 802E2158 002D7ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E215C 002D7EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2160 002D7EE0  7C 08 03 A6 */	mtlr r0
/* 802E2164 002D7EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2168 002D7EE8  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkFakeRigidBodyDeactivator
cleanupLoadedObjecthkFakeRigidBodyDeactivator:
/* 802E216C 002D7EEC  81 83 00 00 */	lwz r12, 0(r3)
/* 802E2170 002D7EF0  38 80 FF FF */	li r4, -1
/* 802E2174 002D7EF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E2178 002D7EF8  7D 89 03 A6 */	mtctr r12
/* 802E217C 002D7EFC  4E 80 04 20 */	bctr 

.global hkFakeRigidBodyDeactivator$7__dt
hkFakeRigidBodyDeactivator$7__dt:
/* 802E2180 002D7F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2184 002D7F04  7C 08 02 A6 */	mflr r0
/* 802E2188 002D7F08  2C 03 00 00 */	cmpwi r3, 0
/* 802E218C 002D7F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2190 002D7F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E2194 002D7F14  7C 7F 1B 78 */	mr r31, r3
/* 802E2198 002D7F18  41 82 00 2C */	beq lbl_802E21C4
/* 802E219C 002D7F1C  2C 04 00 00 */	cmpwi r4, 0
/* 802E21A0 002D7F20  40 81 00 24 */	ble lbl_802E21C4
/* 802E21A4 002D7F24  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802E21A8 002D7F28  7F E4 FB 78 */	mr r4, r31
/* 802E21AC 002D7F2C  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802E21B0 002D7F30  38 C0 00 29 */	li r6, 0x29
/* 802E21B4 002D7F34  81 83 00 00 */	lwz r12, 0(r3)
/* 802E21B8 002D7F38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E21BC 002D7F3C  7D 89 03 A6 */	mtctr r12
/* 802E21C0 002D7F40  4E 80 04 21 */	bctrl 
lbl_802E21C4:
/* 802E21C4 002D7F44  7F E3 FB 78 */	mr r3, r31
/* 802E21C8 002D7F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E21CC 002D7F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E21D0 002D7F50  7C 08 03 A6 */	mtlr r0
/* 802E21D4 002D7F54  38 21 00 10 */	addi r1, r1, 0x10
/* 802E21D8 002D7F58  4E 80 00 20 */	blr 

.global getVtablehkFakeRigidBodyDeactivator
getVtablehkFakeRigidBodyDeactivator:
/* 802E21DC 002D7F5C  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E21E0 002D7F60  7C 2C 0B 78 */	mr r12, r1
/* 802E21E4 002D7F64  21 6B FF E0 */	subfic r11, r11, -32
/* 802E21E8 002D7F68  7C 21 59 6E */	stwux r1, r1, r11
/* 802E21EC 002D7F6C  34 01 00 10 */	addic. r0, r1, 0x10
/* 802E21F0 002D7F70  41 82 00 18 */	beq lbl_802E2208
/* 802E21F4 002D7F74  3C 60 80 48 */	lis r3, lbl_80487E98@ha
/* 802E21F8 002D7F78  38 00 00 01 */	li r0, 1
/* 802E21FC 002D7F7C  38 63 7E 98 */	addi r3, r3, lbl_80487E98@l
/* 802E2200 002D7F80  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802E2204 002D7F84  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802E2208:
/* 802E2208 002D7F88  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E220C 002D7F8C  81 41 00 00 */	lwz r10, 0(r1)
/* 802E2210 002D7F90  7D 41 53 78 */	mr r1, r10
/* 802E2214 002D7F94  4E 80 00 20 */	blr 

.global hkFakeRigidBodyDeactivator$7getRigidBodyDeactivatorType
hkFakeRigidBodyDeactivator$7getRigidBodyDeactivatorType:
/* 802E2218 002D7F98  38 60 00 01 */	li r3, 1
/* 802E221C 002D7F9C  4E 80 00 20 */	blr 

.global hkFakeRigidBodyDeactivator$7shouldDeactivateHighFrequency
hkFakeRigidBodyDeactivator$7shouldDeactivateHighFrequency:
/* 802E2220 002D7FA0  38 60 00 00 */	li r3, 0
/* 802E2224 002D7FA4  4E 80 00 20 */	blr 

.global hkFakeRigidBodyDeactivator$7shouldDeactivateLowFrequency
hkFakeRigidBodyDeactivator$7shouldDeactivateLowFrequency:
/* 802E2228 002D7FA8  38 60 00 00 */	li r3, 0
/* 802E222C 002D7FAC  4E 80 00 20 */	blr 

.global __sinit_$3hkFakeRigidBodyDeactivator_cpp
__sinit_$3hkFakeRigidBodyDeactivator_cpp:
/* 802E2230 002D7FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2234 002D7FB4  7C 08 02 A6 */	mflr r0
/* 802E2238 002D7FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E223C 002D7FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E2240 002D7FC0  3F E0 80 53 */	lis r31, lbl_80532FD0@ha
/* 802E2244 002D7FC4  3B FF 2F D0 */	addi r31, r31, lbl_80532FD0@l
/* 802E2248 002D7FC8  4B FF FF 95 */	bl getVtablehkFakeRigidBodyDeactivator
/* 802E224C 002D7FCC  3C A0 80 45 */	lis r5, lbl_80454890@ha
/* 802E2250 002D7FD0  3D 60 80 41 */	lis r11, lbl_80412CC0@ha
/* 802E2254 002D7FD4  38 A5 48 90 */	addi r5, r5, lbl_80454890@l
/* 802E2258 002D7FD8  3D 40 80 2E */	lis r10, finishLoadedObjecthkFakeRigidBodyDeactivator@ha
/* 802E225C 002D7FDC  3D 00 80 2E */	lis r8, cleanupLoadedObjecthkFakeRigidBodyDeactivator@ha
/* 802E2260 002D7FE0  3C C0 80 48 */	lis r6, lbl_80487E98@ha
/* 802E2264 002D7FE4  90 BF 00 20 */	stw r5, 0x20(r31)
/* 802E2268 002D7FE8  39 6B 2C C0 */	addi r11, r11, lbl_80412CC0@l
/* 802E226C 002D7FEC  39 3F 00 00 */	addi r9, r31, 0
/* 802E2270 002D7FF0  39 4A 20 94 */	addi r10, r10, finishLoadedObjecthkFakeRigidBodyDeactivator@l
/* 802E2274 002D7FF4  39 08 21 6C */	addi r8, r8, cleanupLoadedObjecthkFakeRigidBodyDeactivator@l
/* 802E2278 002D7FF8  38 C6 7E 98 */	addi r6, r6, lbl_80487E98@l
/* 802E227C 002D7FFC  3C 80 80 2E */	lis r4, hkFakeRigidBodyDeactivator$7__dt@ha
/* 802E2280 002D8000  38 FF 00 20 */	addi r7, r31, 0x20
/* 802E2284 002D8004  38 00 00 01 */	li r0, 1
/* 802E2288 002D8008  90 69 00 0C */	stw r3, 0xc(r9)
/* 802E228C 002D800C  7C E3 3B 78 */	mr r3, r7
/* 802E2290 002D8010  38 84 21 80 */	addi r4, r4, hkFakeRigidBodyDeactivator$7__dt@l
/* 802E2294 002D8014  91 7F 00 00 */	stw r11, 0(r31)
/* 802E2298 002D8018  38 BF 00 10 */	addi r5, r31, 0x10
/* 802E229C 002D801C  91 49 00 04 */	stw r10, 4(r9)
/* 802E22A0 002D8020  91 09 00 08 */	stw r8, 8(r9)
/* 802E22A4 002D8024  B0 07 00 06 */	sth r0, 6(r7)
/* 802E22A8 002D8028  90 DF 00 20 */	stw r6, 0x20(r31)
/* 802E22AC 002D802C  48 10 E4 79 */	bl __register_global_object
/* 802E22B0 002D8030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E22B4 002D8034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E22B8 002D8038  7C 08 03 A6 */	mtlr r0
/* 802E22BC 002D803C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E22C0 002D8040  4E 80 00 20 */	blr 


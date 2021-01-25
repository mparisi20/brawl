.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkAgentRegisterUtil$7registerAllAgents
hkAgentRegisterUtil$7registerAllAgents:
/* 802CB484 002C1204  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CB488 002C1208  7C 08 02 A6 */	mflr r0
/* 802CB48C 002C120C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CB490 002C1210  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802CB494 002C1214  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802CB498 002C1218  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802CB49C 002C121C  7C 7D 1B 78 */	mr r29, r3
/* 802CB4A0 002C1220  48 00 9A 21 */	bl hkCollisionDispatcher$7hkRegisterAlternateShapeTypes
/* 802CB4A4 002C1224  7F A3 EB 78 */	mr r3, r29
/* 802CB4A8 002C1228  4B FD 6B 4D */	bl hkBvAgent$7registerAgent
/* 802CB4AC 002C122C  7F A3 EB 78 */	mr r3, r29
/* 802CB4B0 002C1230  4B FE F7 15 */	bl hkMultiSphereAgent$7registerAgent
/* 802CB4B4 002C1234  3B C0 00 00 */	li r30, 0
/* 802CB4B8 002C1238  7F A3 EB 78 */	mr r3, r29
/* 802CB4BC 002C123C  9B C1 00 1C */	stb r30, 0x1c(r1)
/* 802CB4C0 002C1240  38 81 00 1C */	addi r4, r1, 0x1c
/* 802CB4C4 002C1244  48 00 0A 69 */	bl hkCollisionDispatcher$7setEnableChecks
/* 802CB4C8 002C1248  7F A3 EB 78 */	mr r3, r29
/* 802CB4CC 002C124C  4B FD 86 65 */	bl hkBvTreeAgent$7registerAgent
/* 802CB4D0 002C1250  7F A3 EB 78 */	mr r3, r29
/* 802CB4D4 002C1254  4B FD D9 85 */	bl hkMoppAgent$7registerAgent
/* 802CB4D8 002C1258  7F A3 EB 78 */	mr r3, r29
/* 802CB4DC 002C125C  4B FD E6 15 */	bl hkBvTreeStreamAgent$7registerAgent
/* 802CB4E0 002C1260  7F A3 EB 78 */	mr r3, r29
/* 802CB4E4 002C1264  4B FD F3 DD */	bl hkMoppBvTreeStreamAgent$7registerAgent
/* 802CB4E8 002C1268  3B E0 00 01 */	li r31, 1
/* 802CB4EC 002C126C  7F A3 EB 78 */	mr r3, r29
/* 802CB4F0 002C1270  9B E1 00 18 */	stb r31, 0x18(r1)
/* 802CB4F4 002C1274  38 81 00 18 */	addi r4, r1, 0x18
/* 802CB4F8 002C1278  48 00 0A 35 */	bl hkCollisionDispatcher$7setEnableChecks
/* 802CB4FC 002C127C  9B C1 00 14 */	stb r30, 0x14(r1)
/* 802CB500 002C1280  7F A3 EB 78 */	mr r3, r29
/* 802CB504 002C1284  38 81 00 14 */	addi r4, r1, 0x14
/* 802CB508 002C1288  48 00 0A 25 */	bl hkCollisionDispatcher$7setEnableChecks
/* 802CB50C 002C128C  7F A3 EB 78 */	mr r3, r29
/* 802CB510 002C1290  4B FF 55 29 */	bl hkShapeCollectionAgent$7registerAgent
/* 802CB514 002C1294  9B E1 00 10 */	stb r31, 0x10(r1)
/* 802CB518 002C1298  7F A3 EB 78 */	mr r3, r29
/* 802CB51C 002C129C  38 81 00 10 */	addi r4, r1, 0x10
/* 802CB520 002C12A0  48 00 0A 0D */	bl hkCollisionDispatcher$7setEnableChecks
/* 802CB524 002C12A4  7F A3 EB 78 */	mr r3, r29
/* 802CB528 002C12A8  4B FF D9 75 */	bl hkTransformAgent$7registerAgent
/* 802CB52C 002C12AC  7F A3 EB 78 */	mr r3, r29
/* 802CB530 002C12B0  4B FF 51 5D */	bl hkPhantomAgent$7registerAgent
/* 802CB534 002C12B4  9B C1 00 0C */	stb r30, 0xc(r1)
/* 802CB538 002C12B8  7F A3 EB 78 */	mr r3, r29
/* 802CB53C 002C12BC  38 81 00 0C */	addi r4, r1, 0xc
/* 802CB540 002C12C0  48 00 09 ED */	bl hkCollisionDispatcher$7setEnableChecks
/* 802CB544 002C12C4  7F A3 EB 78 */	mr r3, r29
/* 802CB548 002C12C8  4B FE D0 A5 */	bl hkListAgent$7registerAgent
/* 802CB54C 002C12CC  9B E1 00 08 */	stb r31, 8(r1)
/* 802CB550 002C12D0  7F A3 EB 78 */	mr r3, r29
/* 802CB554 002C12D4  38 81 00 08 */	addi r4, r1, 8
/* 802CB558 002C12D8  48 00 09 D5 */	bl hkCollisionDispatcher$7setEnableChecks
/* 802CB55C 002C12DC  7F A3 EB 78 */	mr r3, r29
/* 802CB560 002C12E0  4B FE 41 39 */	bl hkConvexListAgent$7registerAgent
/* 802CB564 002C12E4  7F A3 EB 78 */	mr r3, r29
/* 802CB568 002C12E8  4B FD E6 55 */	bl hkBvTreeStreamAgent$7registerConvexListAgent
/* 802CB56C 002C12EC  7F A3 EB 78 */	mr r3, r29
/* 802CB570 002C12F0  4B FE 92 91 */	bl hkHeightFieldAgent$7registerAgent
/* 802CB574 002C12F4  7F A3 EB 78 */	mr r3, r29
/* 802CB578 002C12F8  4B FE 81 1D */	bl hkPredGskfAgent$7registerAgent
/* 802CB57C 002C12FC  7F A3 EB 78 */	mr r3, r29
/* 802CB580 002C1300  38 80 00 01 */	li r4, 1
/* 802CB584 002C1304  38 A0 00 01 */	li r5, 1
/* 802CB588 002C1308  48 03 52 75 */	bl hkPredGskAgent3$7registerAgent3
/* 802CB58C 002C130C  7F A3 EB 78 */	mr r3, r29
/* 802CB590 002C1310  48 03 6B 51 */	bl hkPredGskCylinderAgent3$7registerAgent3
/* 802CB594 002C1314  7F A3 EB 78 */	mr r3, r29
/* 802CB598 002C1318  4B FD 56 D1 */	bl hkBoxBoxAgent$7registerAgent
/* 802CB59C 002C131C  7F A3 EB 78 */	mr r3, r29
/* 802CB5A0 002C1320  48 02 FC A5 */	bl hkBoxBoxAgent3$7registerAgent3
/* 802CB5A4 002C1324  7F A3 EB 78 */	mr r3, r29
/* 802CB5A8 002C1328  4B FF AE E9 */	bl hkSphereSphereAgent$7registerAgent
/* 802CB5AC 002C132C  7F A3 EB 78 */	mr r3, r29
/* 802CB5B0 002C1330  4B FF 89 35 */	bl hkSphereCapsuleAgent$7registerAgent
/* 802CB5B4 002C1334  7F A3 EB 78 */	mr r3, r29
/* 802CB5B8 002C1338  4B FF B9 E1 */	bl hkSphereTriangleAgent$7registerAgent
/* 802CB5BC 002C133C  7F A3 EB 78 */	mr r3, r29
/* 802CB5C0 002C1340  38 80 00 06 */	li r4, 6
/* 802CB5C4 002C1344  38 A0 00 04 */	li r5, 4
/* 802CB5C8 002C1348  48 03 52 35 */	bl hkPredGskAgent3$7registerAgent3
/* 802CB5CC 002C134C  7F A3 EB 78 */	mr r3, r29
/* 802CB5D0 002C1350  38 80 00 04 */	li r4, 4
/* 802CB5D4 002C1354  38 A0 00 06 */	li r5, 6
/* 802CB5D8 002C1358  48 03 52 25 */	bl hkPredGskAgent3$7registerAgent3
/* 802CB5DC 002C135C  7F A3 EB 78 */	mr r3, r29
/* 802CB5E0 002C1360  4B FF 6D D9 */	bl hkSphereBoxAgent$7registerAgent
/* 802CB5E4 002C1364  7F A3 EB 78 */	mr r3, r29
/* 802CB5E8 002C1368  4B FD F4 51 */	bl hkCapsuleCapsuleAgent$7registerAgent
/* 802CB5EC 002C136C  7F A3 EB 78 */	mr r3, r29
/* 802CB5F0 002C1370  4B FE 0D 1D */	bl hkCapsuleTriangleAgent$7registerAgent
/* 802CB5F4 002C1374  7F A3 EB 78 */	mr r3, r29
/* 802CB5F8 002C1378  48 03 02 9D */	bl hkCapsuleTriangleAgent3$7registerAgent3
/* 802CB5FC 002C137C  7F A3 EB 78 */	mr r3, r29
/* 802CB600 002C1380  4B FF 21 39 */	bl hkMultiSphereTriangleAgent$7registerAgent
/* 802CB604 002C1384  7F A3 EB 78 */	mr r3, r29
/* 802CB608 002C1388  4B FE D8 71 */	bl hkMultiRayConvexAgent$7registerAgent
/* 802CB60C 002C138C  7F A3 EB 78 */	mr r3, r29
/* 802CB610 002C1390  4B FD E6 79 */	bl hkBvTreeStreamAgent$7registerMultiRayAgent
/* 802CB614 002C1394  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CB618 002C1398  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802CB61C 002C139C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802CB620 002C13A0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802CB624 002C13A4  7C 08 03 A6 */	mtlr r0
/* 802CB628 002C13A8  38 21 00 30 */	addi r1, r1, 0x30
/* 802CB62C 002C13AC  4E 80 00 20 */	blr 


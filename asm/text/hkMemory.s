.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkMemory$7__ct
hkMemory$7__ct:
/* 8027E1C4 00273F44  3C E0 80 48 */	lis r7, lbl_804862F0@ha
/* 8027E1C8 00273F48  3C 80 80 00 */	lis r4, 0x7FFFFFFF@ha
/* 8027E1CC 00273F4C  38 A0 00 00 */	li r5, 0
/* 8027E1D0 00273F50  38 C0 00 01 */	li r6, 1
/* 8027E1D4 00273F54  38 E7 62 F0 */	addi r7, r7, lbl_804862F0@l
/* 8027E1D8 00273F58  38 04 FF FF */	addi r0, r4, 0x7FFFFFFF@l
/* 8027E1DC 00273F5C  90 E3 00 00 */	stw r7, 0(r3)
/* 8027E1E0 00273F60  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8027E1E4 00273F64  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8027E1E8 00273F68  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8027E1EC 00273F6C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8027E1F0 00273F70  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8027E1F4 00273F74  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8027E1F8 00273F78  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8027E1FC 00273F7C  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8027E200 00273F80  90 A3 00 04 */	stw r5, 4(r3)
/* 8027E204 00273F84  90 03 00 08 */	stw r0, 8(r3)
/* 8027E208 00273F88  4E 80 00 20 */	blr 

.global hkRevolutionMalloc
hkRevolutionMalloc:
/* 8027E20C 00273F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E210 00273F90  7C 08 02 A6 */	mflr r0
/* 8027E214 00273F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E218 00273F98  7C 60 1B 78 */	mr r0, r3
/* 8027E21C 00273F9C  3C 60 80 4E */	lis r3, lbl_804E4840@ha
/* 8027E220 00273FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027E224 00273FA4  7C 9F 23 78 */	mr r31, r4
/* 8027E228 00273FA8  38 63 48 40 */	addi r3, r3, lbl_804E4840@l
/* 8027E22C 00273FAC  7C 80 22 14 */	add r4, r0, r4
/* 8027E230 00273FB0  4B F8 6C 2D */	bl MEMAllocFromAllocator
/* 8027E234 00273FB4  38 9F FF FF */	addi r4, r31, -1
/* 8027E238 00273FB8  7C 1F 1A 14 */	add r0, r31, r3
/* 8027E23C 00273FBC  7C 84 20 F8 */	nor r4, r4, r4
/* 8027E240 00273FC0  7C 84 00 38 */	and r4, r4, r0
/* 8027E244 00273FC4  7C 03 20 50 */	subf r0, r3, r4
/* 8027E248 00273FC8  90 04 FF FC */	stw r0, -4(r4)
/* 8027E24C 00273FCC  7C 83 23 78 */	mr r3, r4
/* 8027E250 00273FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027E254 00273FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E258 00273FD8  7C 08 03 A6 */	mtlr r0
/* 8027E25C 00273FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E260 00273FE0  4E 80 00 20 */	blr 

.global hkRevolutionFree
hkRevolutionFree:
/* 8027E264 00273FE4  7C 64 1B 78 */	mr r4, r3
/* 8027E268 00273FE8  3C 60 80 4E */	lis r3, lbl_804E4840@ha
/* 8027E26C 00273FEC  80 04 FF FC */	lwz r0, -4(r4)
/* 8027E270 00273FF0  38 63 48 40 */	addi r3, r3, lbl_804E4840@l
/* 8027E274 00273FF4  7C 80 20 50 */	subf r4, r0, r4
/* 8027E278 00273FF8  4B F8 6B F4 */	b MEMFreeToAllocator

.global hkMemory$7replaceInstance
hkMemory$7replaceInstance:
/* 8027E27C 00273FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E280 00274000  7C 08 02 A6 */	mflr r0
/* 8027E284 00274004  2C 03 00 00 */	cmpwi r3, 0
/* 8027E288 00274008  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E28C 0027400C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027E290 00274010  7C 7F 1B 78 */	mr r31, r3
/* 8027E294 00274014  41 82 00 10 */	beq lbl_8027E2A4
/* 8027E298 00274018  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8027E29C 0027401C  38 04 00 01 */	addi r0, r4, 1
/* 8027E2A0 00274020  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8027E2A4:
/* 8027E2A4 00274024  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 8027E2A8 00274028  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 8027E2AC 0027402C  41 86 00 2C */	beq cr1, lbl_8027E2D8
/* 8027E2B0 00274030  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8027E2B4 00274034  34 00 FF FF */	addic. r0, r0, -1
/* 8027E2B8 00274038  90 03 00 0C */	stw r0, 0xc(r3)
/* 8027E2BC 0027403C  40 82 00 1C */	bne lbl_8027E2D8
/* 8027E2C0 00274040  41 86 00 18 */	beq cr1, lbl_8027E2D8
/* 8027E2C4 00274044  81 83 00 00 */	lwz r12, 0(r3)
/* 8027E2C8 00274048  38 80 00 01 */	li r4, 1
/* 8027E2CC 0027404C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8027E2D0 00274050  7D 89 03 A6 */	mtctr r12
/* 8027E2D4 00274054  4E 80 04 21 */	bctrl 
lbl_8027E2D8:
/* 8027E2D8 00274058  93 ED CA 98 */	stw r31, lbl_805A0EB8-_SDA_BASE_(r13)
/* 8027E2DC 0027405C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027E2E0 00274060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E2E4 00274064  7C 08 03 A6 */	mtlr r0
/* 8027E2E8 00274068  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E2EC 0027406C  4E 80 00 20 */	blr 

.global hkMemory$7getAllocatedSize
hkMemory$7getAllocatedSize:
/* 8027E2F0 00274070  2C 04 00 10 */	cmpwi r4, 0x10
/* 8027E2F4 00274074  40 81 00 14 */	ble lbl_8027E308
/* 8027E2F8 00274078  38 04 00 0F */	addi r0, r4, 0xf
/* 8027E2FC 0027407C  54 03 00 36 */	rlwinm r3, r0, 0, 0, 0x1b
/* 8027E300 00274080  38 63 00 10 */	addi r3, r3, 0x10
/* 8027E304 00274084  4E 80 00 20 */	blr 
lbl_8027E308:
/* 8027E308 00274088  38 64 00 08 */	addi r3, r4, 8
/* 8027E30C 0027408C  4E 80 00 20 */	blr 

.global hkMemory$7isOk
hkMemory$7isOk:
/* 8027E310 00274090  3C 60 01 00 */	lis r3, 0x01000000@ha
/* 8027E314 00274094  4E 80 00 20 */	blr 

.global hkMemory$7allocateChunkByRow
hkMemory$7allocateChunkByRow:
/* 8027E318 00274098  81 83 00 00 */	lwz r12, 0x01000000@l(r3)
/* 8027E31C 0027409C  54 80 10 3A */	slwi r0, r4, 2
/* 8027E320 002740A0  80 8D CA A8 */	lwz r4, lbl_805A0EC8-_SDA_BASE_(r13)
/* 8027E324 002740A4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8027E328 002740A8  7C 84 02 14 */	add r4, r4, r0
/* 8027E32C 002740AC  80 84 00 B0 */	lwz r4, 0xb0(r4)
/* 8027E330 002740B0  7D 89 03 A6 */	mtctr r12
/* 8027E334 002740B4  4E 80 04 20 */	bctr 

.global hkMemory$7deallocateChunkByRow
hkMemory$7deallocateChunkByRow:
/* 8027E338 002740B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8027E33C 002740BC  54 A0 10 3A */	slwi r0, r5, 2
/* 8027E340 002740C0  80 AD CA A8 */	lwz r5, lbl_805A0EC8-_SDA_BASE_(r13)
/* 8027E344 002740C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8027E348 002740C8  7C A5 02 14 */	add r5, r5, r0
/* 8027E34C 002740CC  80 A5 00 B0 */	lwz r5, 0xb0(r5)
/* 8027E350 002740D0  7D 89 03 A6 */	mtctr r12
/* 8027E354 002740D4  4E 80 04 20 */	bctr 

.global hkMemory$7isAllocateChunkByRowSupported
hkMemory$7isAllocateChunkByRowSupported:
/* 8027E358 002740D8  38 60 00 00 */	li r3, 0
/* 8027E35C 002740DC  4E 80 00 20 */	blr 


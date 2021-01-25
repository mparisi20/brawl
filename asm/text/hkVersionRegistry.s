.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkVersionRegistry7Updater$7getNumElements
hkVersionRegistry7Updater$7getNumElements:
/* 8033413C 00329EBC  38 80 00 00 */	li r4, 0
/* 80334140 00329EC0  48 00 00 0C */	b lbl_8033414C
lbl_80334144:
/* 80334144 00329EC4  38 84 00 01 */	addi r4, r4, 1
/* 80334148 00329EC8  38 63 00 04 */	addi r3, r3, 4
lbl_8033414C:
/* 8033414C 00329ECC  80 03 00 00 */	lwz r0, 0(r3)
/* 80334150 00329ED0  2C 00 00 00 */	cmpwi r0, 0
/* 80334154 00329ED4  40 82 FF F0 */	bne lbl_80334144
/* 80334158 00329ED8  7C 83 23 78 */	mr r3, r4
/* 8033415C 00329EDC  4E 80 00 20 */	blr 

.global hkVersionRegistry$7__ct
hkVersionRegistry$7__ct:
/* 80334160 00329EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80334164 00329EE4  7C 08 02 A6 */	mflr r0
/* 80334168 00329EE8  3C 80 80 49 */	lis r4, lbl_80489098@ha
/* 8033416C 00329EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80334170 00329EF0  38 00 00 01 */	li r0, 1
/* 80334174 00329EF4  38 84 90 98 */	addi r4, r4, lbl_80489098@l
/* 80334178 00329EF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033417C 00329EFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80334180 00329F00  3F C0 80 5A */	lis r30, lbl_8059FFA8@ha
/* 80334184 00329F04  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80334188 00329F08  7C 7D 1B 78 */	mr r29, r3
/* 8033418C 00329F0C  B0 03 00 06 */	sth r0, 6(r3)
/* 80334190 00329F10  90 83 00 00 */	stw r4, 0(r3)
/* 80334194 00329F14  38 7E FF A8 */	addi r3, r30, lbl_8059FFA8@l
/* 80334198 00329F18  4B FF FF A5 */	bl hkVersionRegistry7Updater$7getNumElements
/* 8033419C 00329F1C  7C 7F 1B 78 */	mr r31, r3
/* 803341A0 00329F20  38 7E FF A8 */	addi r3, r30, -88
/* 803341A4 00329F24  4B FF FF 99 */	bl hkVersionRegistry7Updater$7getNumElements
/* 803341A8 00329F28  38 9E FF A8 */	addi r4, r30, -88
/* 803341AC 00329F2C  67 E0 80 00 */	oris r0, r31, 0x8000
/* 803341B0 00329F30  90 7D 00 0C */	stw r3, 0xc(r29)
/* 803341B4 00329F34  38 7D 00 14 */	addi r3, r29, 0x14
/* 803341B8 00329F38  90 9D 00 08 */	stw r4, 8(r29)
/* 803341BC 00329F3C  90 1D 00 10 */	stw r0, 0x10(r29)
/* 803341C0 00329F40  4B F4 9A 59 */	bl hkStringMapBase$7__ct
/* 803341C4 00329F44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803341C8 00329F48  7F A3 EB 78 */	mr r3, r29
/* 803341CC 00329F4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803341D0 00329F50  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803341D4 00329F54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803341D8 00329F58  7C 08 03 A6 */	mtlr r0
/* 803341DC 00329F5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803341E0 00329F60  4E 80 00 20 */	blr 

.global hkVersionRegistry$7__dt
hkVersionRegistry$7__dt:
/* 803341E4 00329F64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803341E8 00329F68  7C 08 02 A6 */	mflr r0
/* 803341EC 00329F6C  2C 03 00 00 */	cmpwi r3, 0
/* 803341F0 00329F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 803341F4 00329F74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803341F8 00329F78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803341FC 00329F7C  7C 9E 23 78 */	mr r30, r4
/* 80334200 00329F80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80334204 00329F84  7C 7D 1B 78 */	mr r29, r3
/* 80334208 00329F88  41 82 00 FC */	beq lbl_80334304
/* 8033420C 00329F8C  3C 80 80 49 */	lis r4, lbl_80489098@ha
/* 80334210 00329F90  38 84 90 98 */	addi r4, r4, lbl_80489098@l
/* 80334214 00329F94  90 83 00 00 */	stw r4, 0(r3)
/* 80334218 00329F98  38 63 00 14 */	addi r3, r3, 0x14
/* 8033421C 00329F9C  4B F4 9A FD */	bl hkStringMapBase$7getIterator
/* 80334220 00329FA0  7C 7F 1B 78 */	mr r31, r3
/* 80334224 00329FA4  48 00 00 5C */	b lbl_80334280
lbl_80334228:
/* 80334228 00329FA8  7F E4 FB 78 */	mr r4, r31
/* 8033422C 00329FAC  38 7D 00 14 */	addi r3, r29, 0x14
/* 80334230 00329FB0  4B F4 9B 49 */	bl hkStringMapBase$7getValue
/* 80334234 00329FB4  A0 03 00 04 */	lhz r0, 4(r3)
/* 80334238 00329FB8  2C 00 00 00 */	cmpwi r0, 0
/* 8033423C 00329FBC  41 82 00 34 */	beq lbl_80334270
/* 80334240 00329FC0  A8 83 00 06 */	lha r4, 6(r3)
/* 80334244 00329FC4  38 84 FF FF */	addi r4, r4, -1
/* 80334248 00329FC8  7C 80 07 35 */	extsh. r0, r4
/* 8033424C 00329FCC  B0 83 00 06 */	sth r4, 6(r3)
/* 80334250 00329FD0  40 82 00 20 */	bne lbl_80334270
/* 80334254 00329FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80334258 00329FD8  41 82 00 18 */	beq lbl_80334270
/* 8033425C 00329FDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80334260 00329FE0  38 80 00 01 */	li r4, 1
/* 80334264 00329FE4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80334268 00329FE8  7D 89 03 A6 */	mtctr r12
/* 8033426C 00329FEC  4E 80 04 21 */	bctrl 
lbl_80334270:
/* 80334270 00329FF0  7F E4 FB 78 */	mr r4, r31
/* 80334274 00329FF4  38 7D 00 14 */	addi r3, r29, 0x14
/* 80334278 00329FF8  4B F4 9B 21 */	bl hkStringMapBase$7getNext
/* 8033427C 00329FFC  7C 7F 1B 78 */	mr r31, r3
lbl_80334280:
/* 80334280 0032A000  7F E4 FB 78 */	mr r4, r31
/* 80334284 0032A004  38 7D 00 14 */	addi r3, r29, 0x14
/* 80334288 0032A008  4B F4 9B 59 */	bl hkStringMapBase$7isValid
/* 8033428C 0032A00C  54 60 46 3E */	srwi r0, r3, 0x18
/* 80334290 0032A010  7C 00 07 75 */	extsb. r0, r0
/* 80334294 0032A014  40 82 FF 94 */	bne lbl_80334228
/* 80334298 0032A018  38 7D 00 14 */	addi r3, r29, 0x14
/* 8033429C 0032A01C  4B F4 9E ED */	bl hkStringMapBase$7clear
/* 803342A0 0032A020  34 7D 00 14 */	addic. r3, r29, 0x14
/* 803342A4 0032A024  41 82 00 0C */	beq lbl_803342B0
/* 803342A8 0032A028  38 80 FF FF */	li r4, -1
/* 803342AC 0032A02C  4B F4 99 D5 */	bl hkStringMapBase$7__dt
lbl_803342B0:
/* 803342B0 0032A030  34 1D 00 08 */	addic. r0, r29, 8
/* 803342B4 0032A034  41 82 00 28 */	beq lbl_803342DC
/* 803342B8 0032A038  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803342BC 0032A03C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803342C0 0032A040  40 82 00 1C */	bne lbl_803342DC
/* 803342C4 0032A044  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803342C8 0032A048  38 C0 00 15 */	li r6, 0x15
/* 803342CC 0032A04C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 803342D0 0032A050  80 9D 00 08 */	lwz r4, 8(r29)
/* 803342D4 0032A054  54 05 10 3A */	slwi r5, r0, 2
/* 803342D8 0032A058  4B F4 A7 E5 */	bl hkThreadMemory$7deallocateChunk
lbl_803342DC:
/* 803342DC 0032A05C  2C 1E 00 00 */	cmpwi r30, 0
/* 803342E0 0032A060  40 81 00 24 */	ble lbl_80334304
/* 803342E4 0032A064  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 803342E8 0032A068  7F A4 EB 78 */	mr r4, r29
/* 803342EC 0032A06C  A0 BD 00 04 */	lhz r5, 4(r29)
/* 803342F0 0032A070  38 C0 00 16 */	li r6, 0x16
/* 803342F4 0032A074  81 83 00 00 */	lwz r12, 0(r3)
/* 803342F8 0032A078  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 803342FC 0032A07C  7D 89 03 A6 */	mtctr r12
/* 80334300 0032A080  4E 80 04 21 */	bctrl 
lbl_80334304:
/* 80334304 0032A084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80334308 0032A088  7F A3 EB 78 */	mr r3, r29
/* 8033430C 0032A08C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80334310 0032A090  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80334314 0032A094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80334318 0032A098  7C 08 03 A6 */	mtlr r0
/* 8033431C 0032A09C  38 21 00 20 */	addi r1, r1, 0x20
/* 80334320 0032A0A0  4E 80 00 20 */	blr 

.global hkVersionRegistry$7getVersionPath
hkVersionRegistry$7getVersionPath:
/* 80334324 0032A0A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80334328 0032A0A8  7C 08 02 A6 */	mflr r0
/* 8033432C 0032A0AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80334330 0032A0B0  BE 81 00 40 */	stmw r20, 0x40(r1)
/* 80334334 0032A0B4  7C 9E 23 78 */	mr r30, r4
/* 80334338 0032A0B8  7C B4 2B 78 */	mr r20, r5
/* 8033433C 0032A0BC  7C 7D 1B 78 */	mr r29, r3
/* 80334340 0032A0C0  7C DF 33 78 */	mr r31, r6
/* 80334344 0032A0C4  7F C3 F3 78 */	mr r3, r30
/* 80334348 0032A0C8  7E 84 A3 78 */	mr r4, r20
/* 8033434C 0032A0CC  4B F4 D7 9D */	bl hkString$7strCmp
/* 80334350 0032A0D0  2C 03 00 00 */	cmpwi r3, 0
/* 80334354 0032A0D4  40 82 00 0C */	bne lbl_80334360
/* 80334358 0032A0D8  38 60 00 00 */	li r3, 0
/* 8033435C 0032A0DC  48 00 06 2C */	b lbl_80334988
lbl_80334360:
/* 80334360 0032A0E0  38 60 00 00 */	li r3, 0
/* 80334364 0032A0E4  3C 00 80 00 */	lis r0, 0x8000
/* 80334368 0032A0E8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8033436C 0032A0EC  3B 00 00 00 */	li r24, 0
/* 80334370 0032A0F0  90 61 00 30 */	stw r3, 0x30(r1)
/* 80334374 0032A0F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80334378 0032A0F8  83 7D 00 0C */	lwz r27, 0xc(r29)
/* 8033437C 0032A0FC  7C 1B 18 00 */	cmpw r27, r3
/* 80334380 0032A100  40 81 01 AC */	ble lbl_8033452C
/* 80334384 0032A104  54 00 00 BE */	clrlwi r0, r0, 2
/* 80334388 0032A108  7C 00 D8 00 */	cmpw r0, r27
/* 8033438C 0032A10C  40 80 00 24 */	bge lbl_803343B0
/* 80334390 0032A110  54 00 08 3C */	slwi r0, r0, 1
/* 80334394 0032A114  7F 64 DB 78 */	mr r4, r27
/* 80334398 0032A118  7C 1B 00 00 */	cmpw r27, r0
/* 8033439C 0032A11C  38 61 00 2C */	addi r3, r1, 0x2c
/* 803343A0 0032A120  40 80 00 08 */	bge lbl_803343A8
/* 803343A4 0032A124  7C 04 03 78 */	mr r4, r0
lbl_803343A8:
/* 803343A8 0032A128  38 A0 00 04 */	li r5, 4
/* 803343AC 0032A12C  4B F4 89 E9 */	bl hkArrayUtil$7_reserve
lbl_803343B0:
/* 803343B0 0032A130  7C 98 D8 00 */	cmpw cr1, r24, r27
/* 803343B4 0032A134  38 60 00 00 */	li r3, 0
/* 803343B8 0032A138  40 84 01 74 */	bge cr1, lbl_8033452C
/* 803343BC 0032A13C  2C 1B 00 08 */	cmpwi r27, 8
/* 803343C0 0032A140  38 BB FF F8 */	addi r5, r27, -8
/* 803343C4 0032A144  40 81 01 40 */	ble lbl_80334504
/* 803343C8 0032A148  38 C0 00 00 */	li r6, 0
/* 803343CC 0032A14C  38 E0 00 00 */	li r7, 0
/* 803343D0 0032A150  39 00 00 00 */	li r8, 0
/* 803343D4 0032A154  39 20 00 00 */	li r9, 0
/* 803343D8 0032A158  41 85 00 18 */	bgt cr1, lbl_803343F0
/* 803343DC 0032A15C  3C 80 80 00 */	lis r4, 0x7FFFFFFE@ha
/* 803343E0 0032A160  38 04 FF FE */	addi r0, r4, 0x7FFFFFFE@l
/* 803343E4 0032A164  7C 1B 00 00 */	cmpw r27, r0
/* 803343E8 0032A168  41 81 00 08 */	bgt lbl_803343F0
/* 803343EC 0032A16C  39 20 00 01 */	li r9, 1
lbl_803343F0:
/* 803343F0 0032A170  2C 09 00 00 */	cmpwi r9, 0
/* 803343F4 0032A174  41 82 00 18 */	beq lbl_8033440C
/* 803343F8 0032A178  3C 80 80 00 */	lis r4, 0x7FFFFFFE@ha
/* 803343FC 0032A17C  38 04 FF FE */	addi r0, r4, 0x7FFFFFFE@l
/* 80334400 0032A180  7C 18 00 00 */	cmpw r24, r0
/* 80334404 0032A184  41 81 00 08 */	bgt lbl_8033440C
/* 80334408 0032A188  39 00 00 01 */	li r8, 1
lbl_8033440C:
/* 8033440C 0032A18C  2C 08 00 00 */	cmpwi r8, 0
/* 80334410 0032A190  41 82 00 14 */	beq lbl_80334424
/* 80334414 0032A194  3C 18 80 00 */	addis r0, r24, 0x8000
/* 80334418 0032A198  28 00 00 00 */	cmplwi r0, 0
/* 8033441C 0032A19C  41 82 00 08 */	beq lbl_80334424
/* 80334420 0032A1A0  38 E0 00 01 */	li r7, 1
lbl_80334424:
/* 80334424 0032A1A4  2C 07 00 00 */	cmpwi r7, 0
/* 80334428 0032A1A8  41 82 00 34 */	beq lbl_8033445C
/* 8033442C 0032A1AC  7C 18 00 D0 */	neg r0, r24
/* 80334430 0032A1B0  57 67 00 00 */	rlwinm r7, r27, 0, 0, 0
/* 80334434 0032A1B4  54 00 00 00 */	rlwinm r0, r0, 0, 0, 0
/* 80334438 0032A1B8  38 80 00 01 */	li r4, 1
/* 8033443C 0032A1BC  7C 07 00 00 */	cmpw r7, r0
/* 80334440 0032A1C0  40 82 00 10 */	bne lbl_80334450
/* 80334444 0032A1C4  7C 07 38 00 */	cmpw r7, r7
/* 80334448 0032A1C8  41 82 00 08 */	beq lbl_80334450
/* 8033444C 0032A1CC  38 80 00 00 */	li r4, 0
lbl_80334450:
/* 80334450 0032A1D0  2C 04 00 00 */	cmpwi r4, 0
/* 80334454 0032A1D4  41 82 00 08 */	beq lbl_8033445C
/* 80334458 0032A1D8  38 C0 00 01 */	li r6, 1
lbl_8033445C:
/* 8033445C 0032A1DC  2C 06 00 00 */	cmpwi r6, 0
/* 80334460 0032A1E0  41 82 00 A4 */	beq lbl_80334504
/* 80334464 0032A1E4  38 05 00 07 */	addi r0, r5, 7
/* 80334468 0032A1E8  38 80 00 00 */	li r4, 0
/* 8033446C 0032A1EC  54 00 E8 FE */	srwi r0, r0, 3
/* 80334470 0032A1F0  7C 09 03 A6 */	mtctr r0
/* 80334474 0032A1F4  2C 05 00 00 */	cmpwi r5, 0
/* 80334478 0032A1F8  40 81 00 8C */	ble lbl_80334504
lbl_8033447C:
/* 8033447C 0032A1FC  80 0D AC 30 */	lwz r0, lbl_8059F050-_SDA_BASE_(r13)
/* 80334480 0032A200  38 63 00 08 */	addi r3, r3, 8
/* 80334484 0032A204  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80334488 0032A208  7C 05 21 2E */	stwx r0, r5, r4
/* 8033448C 0032A20C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80334490 0032A210  80 CD AC 30 */	lwz r6, lbl_8059F050-_SDA_BASE_(r13)
/* 80334494 0032A214  7C A0 22 14 */	add r5, r0, r4
/* 80334498 0032A218  90 C5 00 04 */	stw r6, 4(r5)
/* 8033449C 0032A21C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803344A0 0032A220  80 CD AC 30 */	lwz r6, lbl_8059F050-_SDA_BASE_(r13)
/* 803344A4 0032A224  7C A0 22 14 */	add r5, r0, r4
/* 803344A8 0032A228  90 C5 00 08 */	stw r6, 8(r5)
/* 803344AC 0032A22C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803344B0 0032A230  80 CD AC 30 */	lwz r6, lbl_8059F050-_SDA_BASE_(r13)
/* 803344B4 0032A234  7C A0 22 14 */	add r5, r0, r4
/* 803344B8 0032A238  90 C5 00 0C */	stw r6, 0xc(r5)
/* 803344BC 0032A23C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803344C0 0032A240  80 CD AC 30 */	lwz r6, lbl_8059F050-_SDA_BASE_(r13)
/* 803344C4 0032A244  7C A0 22 14 */	add r5, r0, r4
/* 803344C8 0032A248  90 C5 00 10 */	stw r6, 0x10(r5)
/* 803344CC 0032A24C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803344D0 0032A250  80 CD AC 30 */	lwz r6, lbl_8059F050-_SDA_BASE_(r13)
/* 803344D4 0032A254  7C A0 22 14 */	add r5, r0, r4
/* 803344D8 0032A258  90 C5 00 14 */	stw r6, 0x14(r5)
/* 803344DC 0032A25C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803344E0 0032A260  80 CD AC 30 */	lwz r6, lbl_8059F050-_SDA_BASE_(r13)
/* 803344E4 0032A264  7C A0 22 14 */	add r5, r0, r4
/* 803344E8 0032A268  90 C5 00 18 */	stw r6, 0x18(r5)
/* 803344EC 0032A26C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803344F0 0032A270  80 CD AC 30 */	lwz r6, lbl_8059F050-_SDA_BASE_(r13)
/* 803344F4 0032A274  7C A0 22 14 */	add r5, r0, r4
/* 803344F8 0032A278  38 84 00 20 */	addi r4, r4, 0x20
/* 803344FC 0032A27C  90 C5 00 1C */	stw r6, 0x1c(r5)
/* 80334500 0032A280  42 00 FF 7C */	bdnz lbl_8033447C
lbl_80334504:
/* 80334504 0032A284  7C 03 D8 50 */	subf r0, r3, r27
/* 80334508 0032A288  54 64 10 3A */	slwi r4, r3, 2
/* 8033450C 0032A28C  7C 09 03 A6 */	mtctr r0
/* 80334510 0032A290  7C 03 D8 00 */	cmpw r3, r27
/* 80334514 0032A294  40 80 00 18 */	bge lbl_8033452C
lbl_80334518:
/* 80334518 0032A298  80 0D AC 30 */	lwz r0, lbl_8059F050-_SDA_BASE_(r13)
/* 8033451C 0032A29C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80334520 0032A2A0  7C 03 21 2E */	stwx r0, r3, r4
/* 80334524 0032A2A4  38 84 00 04 */	addi r4, r4, 4
/* 80334528 0032A2A8  42 00 FF F0 */	bdnz lbl_80334518
lbl_8033452C:
/* 8033452C 0032A2AC  38 60 00 00 */	li r3, 0
/* 80334530 0032A2B0  3C 00 80 00 */	lis r0, 0x8000
/* 80334534 0032A2B4  93 61 00 30 */	stw r27, 0x30(r1)
/* 80334538 0032A2B8  3B 20 00 00 */	li r25, 0
/* 8033453C 0032A2BC  3B 00 00 00 */	li r24, 0
/* 80334540 0032A2C0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80334544 0032A2C4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80334548 0032A2C8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8033454C 0032A2CC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80334550 0032A2D0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80334554 0032A2D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80334558 0032A2D8  48 00 01 78 */	b lbl_803346D0
lbl_8033455C:
/* 8033455C 0032A2DC  80 9D 00 08 */	lwz r4, 8(r29)
/* 80334560 0032A2E0  7E 83 A3 78 */	mr r3, r20
/* 80334564 0032A2E4  7C 84 C0 2E */	lwzx r4, r4, r24
/* 80334568 0032A2E8  80 84 00 04 */	lwz r4, 4(r4)
/* 8033456C 0032A2EC  4B F4 D5 7D */	bl hkString$7strCmp
/* 80334570 0032A2F0  7C 60 00 34 */	cntlzw r0, r3
/* 80334574 0032A2F4  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80334578 0032A2F8  41 82 01 18 */	beq lbl_80334690
/* 8033457C 0032A2FC  80 9D 00 08 */	lwz r4, 8(r29)
/* 80334580 0032A300  7F C3 F3 78 */	mr r3, r30
/* 80334584 0032A304  7C 84 C0 2E */	lwzx r4, r4, r24
/* 80334588 0032A308  80 84 00 00 */	lwz r4, 0(r4)
/* 8033458C 0032A30C  4B F4 D5 5D */	bl hkString$7strCmp
/* 80334590 0032A310  7C 60 00 34 */	cntlzw r0, r3
/* 80334594 0032A314  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80334598 0032A318  41 82 00 BC */	beq lbl_80334654
/* 8033459C 0032A31C  80 1F 00 08 */	lwz r0, 8(r31)
/* 803345A0 0032A320  57 34 10 3A */	slwi r20, r25, 2
/* 803345A4 0032A324  80 7F 00 04 */	lwz r3, 4(r31)
/* 803345A8 0032A328  54 00 00 BE */	clrlwi r0, r0, 2
/* 803345AC 0032A32C  82 BD 00 08 */	lwz r21, 8(r29)
/* 803345B0 0032A330  7C 03 00 00 */	cmpw r3, r0
/* 803345B4 0032A334  40 82 00 10 */	bne lbl_803345C4
/* 803345B8 0032A338  7F E3 FB 78 */	mr r3, r31
/* 803345BC 0032A33C  38 80 00 04 */	li r4, 4
/* 803345C0 0032A340  4B F4 88 7D */	bl hkArrayUtil$7_reserveMore
lbl_803345C4:
/* 803345C4 0032A344  80 7F 00 04 */	lwz r3, 4(r31)
/* 803345C8 0032A348  7C B5 A0 2E */	lwzx r5, r21, r20
/* 803345CC 0032A34C  54 60 10 3A */	slwi r0, r3, 2
/* 803345D0 0032A350  80 9F 00 00 */	lwz r4, 0(r31)
/* 803345D4 0032A354  38 63 00 01 */	addi r3, r3, 1
/* 803345D8 0032A358  7C A4 01 2E */	stwx r5, r4, r0
/* 803345DC 0032A35C  90 7F 00 04 */	stw r3, 4(r31)
/* 803345E0 0032A360  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803345E4 0032A364  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803345E8 0032A368  40 82 00 1C */	bne lbl_80334604
/* 803345EC 0032A36C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803345F0 0032A370  38 C0 00 15 */	li r6, 0x15
/* 803345F4 0032A374  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 803345F8 0032A378  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803345FC 0032A37C  54 05 10 3A */	slwi r5, r0, 2
/* 80334600 0032A380  4B F4 A4 BD */	bl hkThreadMemory$7deallocateChunk
lbl_80334604:
/* 80334604 0032A384  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80334608 0032A388  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8033460C 0032A38C  40 82 00 1C */	bne lbl_80334628
/* 80334610 0032A390  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80334614 0032A394  38 C0 00 15 */	li r6, 0x15
/* 80334618 0032A398  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 8033461C 0032A39C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80334620 0032A3A0  54 05 10 3A */	slwi r5, r0, 2
/* 80334624 0032A3A4  4B F4 A4 99 */	bl hkThreadMemory$7deallocateChunk
lbl_80334628:
/* 80334628 0032A3A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033462C 0032A3AC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80334630 0032A3B0  40 82 00 1C */	bne lbl_8033464C
/* 80334634 0032A3B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334638 0032A3B8  38 C0 00 15 */	li r6, 0x15
/* 8033463C 0032A3BC  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80334640 0032A3C0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80334644 0032A3C4  54 05 10 3A */	slwi r5, r0, 2
/* 80334648 0032A3C8  4B F4 A4 75 */	bl hkThreadMemory$7deallocateChunk
lbl_8033464C:
/* 8033464C 0032A3CC  38 60 00 00 */	li r3, 0
/* 80334650 0032A3D0  48 00 03 38 */	b lbl_80334988
lbl_80334654:
/* 80334654 0032A3D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80334658 0032A3D8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8033465C 0032A3DC  54 00 00 BE */	clrlwi r0, r0, 2
/* 80334660 0032A3E0  7C 03 00 00 */	cmpw r3, r0
/* 80334664 0032A3E4  40 82 00 10 */	bne lbl_80334674
/* 80334668 0032A3E8  38 61 00 14 */	addi r3, r1, 0x14
/* 8033466C 0032A3EC  38 80 00 04 */	li r4, 4
/* 80334670 0032A3F0  4B F4 87 CD */	bl hkArrayUtil$7_reserveMore
lbl_80334674:
/* 80334674 0032A3F4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80334678 0032A3F8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8033467C 0032A3FC  54 60 10 3A */	slwi r0, r3, 2
/* 80334680 0032A400  38 63 00 01 */	addi r3, r3, 1
/* 80334684 0032A404  7F 24 01 2E */	stwx r25, r4, r0
/* 80334688 0032A408  90 61 00 18 */	stw r3, 0x18(r1)
/* 8033468C 0032A40C  48 00 00 3C */	b lbl_803346C8
lbl_80334690:
/* 80334690 0032A410  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80334694 0032A414  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80334698 0032A418  54 00 00 BE */	clrlwi r0, r0, 2
/* 8033469C 0032A41C  7C 03 00 00 */	cmpw r3, r0
/* 803346A0 0032A420  40 82 00 10 */	bne lbl_803346B0
/* 803346A4 0032A424  38 61 00 20 */	addi r3, r1, 0x20
/* 803346A8 0032A428  38 80 00 04 */	li r4, 4
/* 803346AC 0032A42C  4B F4 87 91 */	bl hkArrayUtil$7_reserveMore
lbl_803346B0:
/* 803346B0 0032A430  80 61 00 24 */	lwz r3, 0x24(r1)
/* 803346B4 0032A434  80 81 00 20 */	lwz r4, 0x20(r1)
/* 803346B8 0032A438  54 60 10 3A */	slwi r0, r3, 2
/* 803346BC 0032A43C  38 63 00 01 */	addi r3, r3, 1
/* 803346C0 0032A440  7F 24 01 2E */	stwx r25, r4, r0
/* 803346C4 0032A444  90 61 00 24 */	stw r3, 0x24(r1)
lbl_803346C8:
/* 803346C8 0032A448  3B 18 00 04 */	addi r24, r24, 4
/* 803346CC 0032A44C  3B 39 00 01 */	addi r25, r25, 1
lbl_803346D0:
/* 803346D0 0032A450  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803346D4 0032A454  7C 19 00 00 */	cmpw r25, r0
/* 803346D8 0032A458  41 80 FE 84 */	blt lbl_8033455C
/* 803346DC 0032A45C  3B 60 00 00 */	li r27, 0
/* 803346E0 0032A460  3F 80 80 00 */	lis r28, 0x8000
/* 803346E4 0032A464  48 00 02 28 */	b lbl_8033490C
lbl_803346E8:
/* 803346E8 0032A468  80 61 00 24 */	lwz r3, 0x24(r1)
/* 803346EC 0032A46C  93 61 00 08 */	stw r27, 8(r1)
/* 803346F0 0032A470  3A E3 FF FF */	addi r23, r3, -1
/* 803346F4 0032A474  93 61 00 0C */	stw r27, 0xc(r1)
/* 803346F8 0032A478  56 FA 10 3A */	slwi r26, r23, 2
/* 803346FC 0032A47C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80334700 0032A480  48 00 01 D4 */	b lbl_803348D4
lbl_80334704:
/* 80334704 0032A484  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80334708 0032A488  3A C0 00 00 */	li r22, 0
/* 8033470C 0032A48C  3B 20 00 00 */	li r25, 0
/* 80334710 0032A490  7E 83 D0 2E */	lwzx r20, r3, r26
/* 80334714 0032A494  56 98 10 3A */	slwi r24, r20, 2
/* 80334718 0032A498  48 00 01 A8 */	b lbl_803348C0
lbl_8033471C:
/* 8033471C 0032A49C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80334720 0032A4A0  80 9D 00 08 */	lwz r4, 8(r29)
/* 80334724 0032A4A4  7E A3 C8 2E */	lwzx r21, r3, r25
/* 80334728 0032A4A8  7C 64 C0 2E */	lwzx r3, r4, r24
/* 8033472C 0032A4AC  56 A0 10 3A */	slwi r0, r21, 2
/* 80334730 0032A4B0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80334734 0032A4B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80334738 0032A4B8  80 84 00 00 */	lwz r4, 0(r4)
/* 8033473C 0032A4BC  4B F4 D3 AD */	bl hkString$7strCmp
/* 80334740 0032A4C0  7C 60 00 34 */	cntlzw r0, r3
/* 80334744 0032A4C4  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80334748 0032A4C8  41 82 01 70 */	beq lbl_803348B8
/* 8033474C 0032A4CC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80334750 0032A4D0  7F C4 F3 78 */	mr r4, r30
/* 80334754 0032A4D4  7E A3 C1 2E */	stwx r21, r3, r24
/* 80334758 0032A4D8  80 7D 00 08 */	lwz r3, 8(r29)
/* 8033475C 0032A4DC  7C 63 C0 2E */	lwzx r3, r3, r24
/* 80334760 0032A4E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80334764 0032A4E4  4B F4 D3 85 */	bl hkString$7strCmp
/* 80334768 0032A4E8  7C 60 00 34 */	cntlzw r0, r3
/* 8033476C 0032A4EC  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80334770 0032A4F0  41 82 00 F4 */	beq lbl_80334864
/* 80334774 0032A4F4  48 00 00 50 */	b lbl_803347C4
lbl_80334778:
/* 80334778 0032A4F8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033477C 0032A4FC  56 95 10 3A */	slwi r21, r20, 2
/* 80334780 0032A500  80 7F 00 04 */	lwz r3, 4(r31)
/* 80334784 0032A504  54 00 00 BE */	clrlwi r0, r0, 2
/* 80334788 0032A508  82 9D 00 08 */	lwz r20, 8(r29)
/* 8033478C 0032A50C  7C 03 00 00 */	cmpw r3, r0
/* 80334790 0032A510  40 82 00 10 */	bne lbl_803347A0
/* 80334794 0032A514  7F E3 FB 78 */	mr r3, r31
/* 80334798 0032A518  38 80 00 04 */	li r4, 4
/* 8033479C 0032A51C  4B F4 86 A1 */	bl hkArrayUtil$7_reserveMore
lbl_803347A0:
/* 803347A0 0032A520  80 7F 00 04 */	lwz r3, 4(r31)
/* 803347A4 0032A524  7C B4 A8 2E */	lwzx r5, r20, r21
/* 803347A8 0032A528  54 60 10 3A */	slwi r0, r3, 2
/* 803347AC 0032A52C  80 9F 00 00 */	lwz r4, 0(r31)
/* 803347B0 0032A530  38 63 00 01 */	addi r3, r3, 1
/* 803347B4 0032A534  7C A4 01 2E */	stwx r5, r4, r0
/* 803347B8 0032A538  90 7F 00 04 */	stw r3, 4(r31)
/* 803347BC 0032A53C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 803347C0 0032A540  7E 83 A8 2E */	lwzx r20, r3, r21
lbl_803347C4:
/* 803347C4 0032A544  2C 14 FF FF */	cmpwi r20, -1
/* 803347C8 0032A548  40 82 FF B0 */	bne lbl_80334778
/* 803347CC 0032A54C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803347D0 0032A550  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803347D4 0032A554  40 82 00 1C */	bne lbl_803347F0
/* 803347D8 0032A558  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803347DC 0032A55C  38 C0 00 15 */	li r6, 0x15
/* 803347E0 0032A560  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 803347E4 0032A564  80 81 00 08 */	lwz r4, 8(r1)
/* 803347E8 0032A568  54 05 10 3A */	slwi r5, r0, 2
/* 803347EC 0032A56C  4B F4 A2 D1 */	bl hkThreadMemory$7deallocateChunk
lbl_803347F0:
/* 803347F0 0032A570  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803347F4 0032A574  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803347F8 0032A578  40 82 00 1C */	bne lbl_80334814
/* 803347FC 0032A57C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80334800 0032A580  38 C0 00 15 */	li r6, 0x15
/* 80334804 0032A584  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80334808 0032A588  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8033480C 0032A58C  54 05 10 3A */	slwi r5, r0, 2
/* 80334810 0032A590  4B F4 A2 AD */	bl hkThreadMemory$7deallocateChunk
lbl_80334814:
/* 80334814 0032A594  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80334818 0032A598  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8033481C 0032A59C  40 82 00 1C */	bne lbl_80334838
/* 80334820 0032A5A0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80334824 0032A5A4  38 C0 00 15 */	li r6, 0x15
/* 80334828 0032A5A8  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 8033482C 0032A5AC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80334830 0032A5B0  54 05 10 3A */	slwi r5, r0, 2
/* 80334834 0032A5B4  4B F4 A2 89 */	bl hkThreadMemory$7deallocateChunk
lbl_80334838:
/* 80334838 0032A5B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033483C 0032A5BC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80334840 0032A5C0  40 82 00 1C */	bne lbl_8033485C
/* 80334844 0032A5C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334848 0032A5C8  38 C0 00 15 */	li r6, 0x15
/* 8033484C 0032A5CC  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80334850 0032A5D0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80334854 0032A5D4  54 05 10 3A */	slwi r5, r0, 2
/* 80334858 0032A5D8  4B F4 A2 65 */	bl hkThreadMemory$7deallocateChunk
lbl_8033485C:
/* 8033485C 0032A5DC  38 60 00 00 */	li r3, 0
/* 80334860 0032A5E0  48 00 01 28 */	b lbl_80334988
lbl_80334864:
/* 80334864 0032A5E4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80334868 0032A5E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8033486C 0032A5EC  54 00 00 BE */	clrlwi r0, r0, 2
/* 80334870 0032A5F0  7C 03 00 00 */	cmpw r3, r0
/* 80334874 0032A5F4  40 82 00 10 */	bne lbl_80334884
/* 80334878 0032A5F8  38 61 00 08 */	addi r3, r1, 8
/* 8033487C 0032A5FC  38 80 00 04 */	li r4, 4
/* 80334880 0032A600  4B F4 85 BD */	bl hkArrayUtil$7_reserveMore
lbl_80334884:
/* 80334884 0032A604  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80334888 0032A608  80 A1 00 08 */	lwz r5, 8(r1)
/* 8033488C 0032A60C  54 60 10 3A */	slwi r0, r3, 2
/* 80334890 0032A610  38 83 00 01 */	addi r4, r3, 1
/* 80334894 0032A614  7E 85 01 2E */	stwx r20, r5, r0
/* 80334898 0032A618  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8033489C 0032A61C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803348A0 0032A620  38 03 FF FF */	addi r0, r3, -1
/* 803348A4 0032A624  80 61 00 20 */	lwz r3, 0x20(r1)
/* 803348A8 0032A628  90 01 00 24 */	stw r0, 0x24(r1)
/* 803348AC 0032A62C  54 00 10 3A */	slwi r0, r0, 2
/* 803348B0 0032A630  7C 03 00 2E */	lwzx r0, r3, r0
/* 803348B4 0032A634  7C 1A 19 2E */	stwx r0, r26, r3
lbl_803348B8:
/* 803348B8 0032A638  3B 39 00 04 */	addi r25, r25, 4
/* 803348BC 0032A63C  3A D6 00 01 */	addi r22, r22, 1
lbl_803348C0:
/* 803348C0 0032A640  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803348C4 0032A644  7C 16 00 00 */	cmpw r22, r0
/* 803348C8 0032A648  41 80 FE 54 */	blt lbl_8033471C
/* 803348CC 0032A64C  3B 5A FF FC */	addi r26, r26, -4
/* 803348D0 0032A650  3A F7 FF FF */	addi r23, r23, -1
lbl_803348D4:
/* 803348D4 0032A654  2C 17 00 00 */	cmpwi r23, 0
/* 803348D8 0032A658  40 80 FE 2C */	bge lbl_80334704
/* 803348DC 0032A65C  38 61 00 14 */	addi r3, r1, 0x14
/* 803348E0 0032A660  38 81 00 08 */	addi r4, r1, 8
/* 803348E4 0032A664  48 00 02 B5 */	bl hkArray$0i$1$7swap
/* 803348E8 0032A668  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803348EC 0032A66C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803348F0 0032A670  40 82 00 1C */	bne lbl_8033490C
/* 803348F4 0032A674  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803348F8 0032A678  38 C0 00 15 */	li r6, 0x15
/* 803348FC 0032A67C  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80334900 0032A680  80 81 00 08 */	lwz r4, 8(r1)
/* 80334904 0032A684  54 05 10 3A */	slwi r5, r0, 2
/* 80334908 0032A688  4B F4 A1 B5 */	bl hkThreadMemory$7deallocateChunk
lbl_8033490C:
/* 8033490C 0032A68C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80334910 0032A690  2C 00 00 00 */	cmpwi r0, 0
/* 80334914 0032A694  40 82 FD D4 */	bne lbl_803346E8
/* 80334918 0032A698  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033491C 0032A69C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80334920 0032A6A0  40 82 00 1C */	bne lbl_8033493C
/* 80334924 0032A6A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80334928 0032A6A8  38 C0 00 15 */	li r6, 0x15
/* 8033492C 0032A6AC  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80334930 0032A6B0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80334934 0032A6B4  54 05 10 3A */	slwi r5, r0, 2
/* 80334938 0032A6B8  4B F4 A1 85 */	bl hkThreadMemory$7deallocateChunk
lbl_8033493C:
/* 8033493C 0032A6BC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80334940 0032A6C0  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80334944 0032A6C4  40 82 00 1C */	bne lbl_80334960
/* 80334948 0032A6C8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8033494C 0032A6CC  38 C0 00 15 */	li r6, 0x15
/* 80334950 0032A6D0  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80334954 0032A6D4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80334958 0032A6D8  54 05 10 3A */	slwi r5, r0, 2
/* 8033495C 0032A6DC  4B F4 A1 61 */	bl hkThreadMemory$7deallocateChunk
lbl_80334960:
/* 80334960 0032A6E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334964 0032A6E4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80334968 0032A6E8  40 82 00 1C */	bne lbl_80334984
/* 8033496C 0032A6EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334970 0032A6F0  38 C0 00 15 */	li r6, 0x15
/* 80334974 0032A6F4  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 80334978 0032A6F8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8033497C 0032A6FC  54 05 10 3A */	slwi r5, r0, 2
/* 80334980 0032A700  4B F4 A1 3D */	bl hkThreadMemory$7deallocateChunk
lbl_80334984:
/* 80334984 0032A704  38 60 00 01 */	li r3, 1
lbl_80334988:
/* 80334988 0032A708  BA 81 00 40 */	lmw r20, 0x40(r1)
/* 8033498C 0032A70C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80334990 0032A710  7C 08 03 A6 */	mtlr r0
/* 80334994 0032A714  38 21 00 70 */	addi r1, r1, 0x70
/* 80334998 0032A718  4E 80 00 20 */	blr 

.global hkVersionRegistry$7getClassNameRegistry
hkVersionRegistry$7getClassNameRegistry:
/* 8033499C 0032A71C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803349A0 0032A720  7C 08 02 A6 */	mflr r0
/* 803349A4 0032A724  90 01 00 34 */	stw r0, 0x34(r1)
/* 803349A8 0032A728  38 A1 00 0C */	addi r5, r1, 0xc
/* 803349AC 0032A72C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803349B0 0032A730  7C 9F 23 78 */	mr r31, r4
/* 803349B4 0032A734  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803349B8 0032A738  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803349BC 0032A73C  93 81 00 20 */	stw r28, 0x20(r1)
/* 803349C0 0032A740  7C 7C 1B 78 */	mr r28, r3
/* 803349C4 0032A744  38 63 00 14 */	addi r3, r3, 0x14
/* 803349C8 0032A748  4B F4 96 35 */	bl hkStringMapBase$7get
/* 803349CC 0032A74C  2C 03 00 00 */	cmpwi r3, 0
/* 803349D0 0032A750  40 82 00 10 */	bne lbl_803349E0
/* 803349D4 0032A754  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 803349D8 0032A758  38 00 00 00 */	li r0, 0
/* 803349DC 0032A75C  48 00 00 08 */	b lbl_803349E4
lbl_803349E0:
/* 803349E0 0032A760  38 00 00 01 */	li r0, 1
lbl_803349E4:
/* 803349E4 0032A764  2C 00 00 00 */	cmpwi r0, 0
/* 803349E8 0032A768  40 82 00 0C */	bne lbl_803349F4
/* 803349EC 0032A76C  7F C3 F3 78 */	mr r3, r30
/* 803349F0 0032A770  48 00 01 3C */	b lbl_80334B2C
lbl_803349F4:
/* 803349F4 0032A774  3F A0 80 5A */	lis r29, lbl_805A5120@ha
/* 803349F8 0032A778  3B C0 00 00 */	li r30, 0
/* 803349FC 0032A77C  3B BD 51 20 */	addi r29, r29, lbl_805A5120@l
/* 80334A00 0032A780  48 00 01 1C */	b lbl_80334B1C
lbl_80334A04:
/* 80334A04 0032A784  7F E3 FB 78 */	mr r3, r31
/* 80334A08 0032A788  4B F4 D0 E1 */	bl hkString$7strCmp
/* 80334A0C 0032A78C  2C 03 00 00 */	cmpwi r3, 0
/* 80334A10 0032A790  40 82 01 08 */	bne lbl_80334B18
/* 80334A14 0032A794  3C 80 80 41 */	lis r4, lbl_804156C0@ha
/* 80334A18 0032A798  7F E3 FB 78 */	mr r3, r31
/* 80334A1C 0032A79C  38 84 56 C0 */	addi r4, r4, lbl_804156C0@l
/* 80334A20 0032A7A0  4B F4 D0 C9 */	bl hkString$7strCmp
/* 80334A24 0032A7A4  2C 03 00 00 */	cmpwi r3, 0
/* 80334A28 0032A7A8  40 82 00 38 */	bne lbl_80334A60
/* 80334A2C 0032A7AC  80 6D CB 18 */	lwz r3, lbl_805A0F38-_SDA_BASE_(r13)
/* 80334A30 0032A7B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80334A34 0032A7B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80334A38 0032A7B8  7D 89 03 A6 */	mtctr r12
/* 80334A3C 0032A7BC  4E 80 04 21 */	bctrl 
/* 80334A40 0032A7C0  A0 03 00 04 */	lhz r0, 4(r3)
/* 80334A44 0032A7C4  7C 7E 1B 78 */	mr r30, r3
/* 80334A48 0032A7C8  2C 00 00 00 */	cmpwi r0, 0
/* 80334A4C 0032A7CC  41 82 00 B8 */	beq lbl_80334B04
/* 80334A50 0032A7D0  A8 83 00 06 */	lha r4, 6(r3)
/* 80334A54 0032A7D4  38 04 00 01 */	addi r0, r4, 1
/* 80334A58 0032A7D8  B0 03 00 06 */	sth r0, 6(r3)
/* 80334A5C 0032A7DC  48 00 00 A8 */	b lbl_80334B04
lbl_80334A60:
/* 80334A60 0032A7E0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80334A64 0032A7E4  38 80 00 14 */	li r4, 0x14
/* 80334A68 0032A7E8  38 A0 00 13 */	li r5, 0x13
/* 80334A6C 0032A7EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80334A70 0032A7F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80334A74 0032A7F4  7D 89 03 A6 */	mtctr r12
/* 80334A78 0032A7F8  4E 80 04 21 */	bctrl 
/* 80334A7C 0032A7FC  38 00 00 14 */	li r0, 0x14
/* 80334A80 0032A800  2C 03 00 00 */	cmpwi r3, 0
/* 80334A84 0032A804  B0 03 00 04 */	sth r0, 4(r3)
/* 80334A88 0032A808  7C 7E 1B 78 */	mr r30, r3
/* 80334A8C 0032A80C  41 82 00 20 */	beq lbl_80334AAC
/* 80334A90 0032A810  38 00 00 01 */	li r0, 1
/* 80334A94 0032A814  3C 80 80 49 */	lis r4, lbl_80488EB8@ha
/* 80334A98 0032A818  B0 03 00 06 */	sth r0, 6(r3)
/* 80334A9C 0032A81C  38 84 8E B8 */	addi r4, r4, lbl_80488EB8@l
/* 80334AA0 0032A820  90 83 00 00 */	stw r4, 0(r3)
/* 80334AA4 0032A824  38 63 00 08 */	addi r3, r3, 8
/* 80334AA8 0032A828  4B F4 91 71 */	bl hkStringMapBase$7__ct
lbl_80334AAC:
/* 80334AAC 0032A82C  83 FD 00 04 */	lwz r31, 4(r29)
/* 80334AB0 0032A830  38 61 00 08 */	addi r3, r1, 8
/* 80334AB4 0032A834  4B FF EC 9D */	bl hkStructureLayout$7__ct
/* 80334AB8 0032A838  38 61 00 10 */	addi r3, r1, 0x10
/* 80334ABC 0032A83C  4B F4 84 FD */	bl hkPointerMapBase$0Ul$1$7__ct
/* 80334AC0 0032A840  48 00 00 14 */	b lbl_80334AD4
lbl_80334AC4:
/* 80334AC4 0032A844  38 61 00 08 */	addi r3, r1, 8
/* 80334AC8 0032A848  38 A1 00 10 */	addi r5, r1, 0x10
/* 80334ACC 0032A84C  4B FF F2 59 */	bl hkStructureLayout$7computeMemberOffsetsInplace
/* 80334AD0 0032A850  3B FF 00 04 */	addi r31, r31, 4
lbl_80334AD4:
/* 80334AD4 0032A854  80 9F 00 00 */	lwz r4, 0(r31)
/* 80334AD8 0032A858  2C 04 00 00 */	cmpwi r4, 0
/* 80334ADC 0032A85C  40 82 FF E8 */	bne lbl_80334AC4
/* 80334AE0 0032A860  38 61 00 10 */	addi r3, r1, 0x10
/* 80334AE4 0032A864  38 80 FF FF */	li r4, -1
/* 80334AE8 0032A868  4B F4 85 35 */	bl hkPointerMapBase$0Ul$1$7__dt
/* 80334AEC 0032A86C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80334AF0 0032A870  7F C3 F3 78 */	mr r3, r30
/* 80334AF4 0032A874  80 9D 00 04 */	lwz r4, 4(r29)
/* 80334AF8 0032A878  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80334AFC 0032A87C  7D 89 03 A6 */	mtctr r12
/* 80334B00 0032A880  4E 80 04 21 */	bctrl 
lbl_80334B04:
/* 80334B04 0032A884  80 9D 00 00 */	lwz r4, 0(r29)
/* 80334B08 0032A888  7F C5 F3 78 */	mr r5, r30
/* 80334B0C 0032A88C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80334B10 0032A890  4B F4 92 ED */	bl hkStringMapBase$7insert
/* 80334B14 0032A894  48 00 00 14 */	b lbl_80334B28
lbl_80334B18:
/* 80334B18 0032A898  3B BD 00 08 */	addi r29, r29, 8
lbl_80334B1C:
/* 80334B1C 0032A89C  80 9D 00 00 */	lwz r4, 0(r29)
/* 80334B20 0032A8A0  2C 04 00 00 */	cmpwi r4, 0
/* 80334B24 0032A8A4  40 82 FE E0 */	bne lbl_80334A04
lbl_80334B28:
/* 80334B28 0032A8A8  7F C3 F3 78 */	mr r3, r30
lbl_80334B2C:
/* 80334B2C 0032A8AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334B30 0032A8B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80334B34 0032A8B4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80334B38 0032A8B8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80334B3C 0032A8BC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80334B40 0032A8C0  7C 08 03 A6 */	mtlr r0
/* 80334B44 0032A8C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80334B48 0032A8C8  4E 80 00 20 */	blr 

.global hkVersionRegistrycreate
hkVersionRegistrycreate:
/* 80334B4C 0032A8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80334B50 0032A8D0  7C 08 02 A6 */	mflr r0
/* 80334B54 0032A8D4  38 80 00 20 */	li r4, 0x20
/* 80334B58 0032A8D8  38 A0 00 16 */	li r5, 0x16
/* 80334B5C 0032A8DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80334B60 0032A8E0  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80334B64 0032A8E4  81 83 00 00 */	lwz r12, 0(r3)
/* 80334B68 0032A8E8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80334B6C 0032A8EC  7D 89 03 A6 */	mtctr r12
/* 80334B70 0032A8F0  4E 80 04 21 */	bctrl 
/* 80334B74 0032A8F4  38 00 00 20 */	li r0, 0x20
/* 80334B78 0032A8F8  2C 03 00 00 */	cmpwi r3, 0
/* 80334B7C 0032A8FC  B0 03 00 04 */	sth r0, 4(r3)
/* 80334B80 0032A900  41 82 00 08 */	beq lbl_80334B88
/* 80334B84 0032A904  4B FF F5 DD */	bl hkVersionRegistry$7__ct
lbl_80334B88:
/* 80334B88 0032A908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80334B8C 0032A90C  7C 08 03 A6 */	mtlr r0
/* 80334B90 0032A910  38 21 00 10 */	addi r1, r1, 0x10
/* 80334B94 0032A914  4E 80 00 20 */	blr 

.global hkArray$0i$1$7swap
hkArray$0i$1$7swap:
/* 80334B98 0032A918  80 A3 00 00 */	lwz r5, 0(r3)
/* 80334B9C 0032A91C  80 04 00 00 */	lwz r0, 0(r4)
/* 80334BA0 0032A920  90 03 00 00 */	stw r0, 0(r3)
/* 80334BA4 0032A924  90 A4 00 00 */	stw r5, 0(r4)
/* 80334BA8 0032A928  80 04 00 04 */	lwz r0, 4(r4)
/* 80334BAC 0032A92C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80334BB0 0032A930  90 03 00 04 */	stw r0, 4(r3)
/* 80334BB4 0032A934  90 A4 00 04 */	stw r5, 4(r4)
/* 80334BB8 0032A938  80 04 00 08 */	lwz r0, 8(r4)
/* 80334BBC 0032A93C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80334BC0 0032A940  90 03 00 08 */	stw r0, 8(r3)
/* 80334BC4 0032A944  90 A4 00 08 */	stw r5, 8(r4)
/* 80334BC8 0032A948  4E 80 00 20 */	blr 

.global __sinit_$3hkVersionRegistry_cpp
__sinit_$3hkVersionRegistry_cpp:
/* 80334BCC 0032A94C  3C C0 80 33 */	lis r6, hkVersionRegistrycreate@ha
/* 80334BD0 0032A950  3C A0 80 53 */	lis r5, lbl_80533708@ha
/* 80334BD4 0032A954  38 C6 4B 4C */	addi r6, r6, hkVersionRegistrycreate@l
/* 80334BD8 0032A958  80 0D CA B0 */	lwz r0, lbl_805A0ED0-_SDA_BASE_(r13)
/* 80334BDC 0032A95C  38 65 37 08 */	addi r3, r5, lbl_80533708@l
/* 80334BE0 0032A960  38 8D CB 20 */	addi r4, r13, lbl_805A0F40-_SDA_BASE_
/* 80334BE4 0032A964  90 C5 37 08 */	stw r6, 0x3708(r5)
/* 80334BE8 0032A968  90 83 00 08 */	stw r4, 8(r3)
/* 80334BEC 0032A96C  90 03 00 04 */	stw r0, 4(r3)
/* 80334BF0 0032A970  90 6D CA B0 */	stw r3, lbl_805A0ED0-_SDA_BASE_(r13)
/* 80334BF4 0032A974  4E 80 00 20 */	blr 

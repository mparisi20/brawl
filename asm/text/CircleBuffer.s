.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global CircleBufferReadBytes
CircleBufferReadBytes:
/* 80406210 003FBF90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80406214 003FBF94  7C 08 02 A6 */	mflr r0
/* 80406218 003FBF98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040621C 003FBF9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80406220 003FBFA0  7C BF 2B 78 */	mr r31, r5
/* 80406224 003FBFA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80406228 003FBFA8  7C 7E 1B 78 */	mr r30, r3
/* 8040622C 003FBFAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80406230 003FBFB0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80406234 003FBFB4  7C 9C 23 78 */	mr r28, r4
/* 80406238 003FBFB8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8040623C 003FBFBC  7C 1F 00 40 */	cmplw r31, r0
/* 80406240 003FBFC0  40 81 00 0C */	ble lbl_8040624C
/* 80406244 003FBFC4  38 60 FF FF */	li r3, -1
/* 80406248 003FBFC8  48 00 00 B0 */	b lbl_804062F8
lbl_8040624C:
/* 8040624C 003FBFCC  38 7E 00 18 */	addi r3, r30, 0x18
/* 80406250 003FBFD0  48 00 02 4D */	bl MWEnterCriticalSection
/* 80406254 003FBFD4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80406258 003FBFD8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8040625C 003FBFDC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80406260 003FBFE0  7C 63 20 50 */	subf r3, r3, r4
/* 80406264 003FBFE4  7F A3 00 50 */	subf r29, r3, r0
/* 80406268 003FBFE8  7C 1F E8 40 */	cmplw r31, r29
/* 8040626C 003FBFEC  40 80 00 20 */	bge lbl_8040628C
/* 80406270 003FBFF0  7F 83 E3 78 */	mr r3, r28
/* 80406274 003FBFF4  7F E5 FB 78 */	mr r5, r31
/* 80406278 003FBFF8  4B BF E0 C1 */	bl func_80004338
/* 8040627C 003FBFFC  80 1E 00 00 */	lwz r0, 0(r30)
/* 80406280 003FC000  7C 00 FA 14 */	add r0, r0, r31
/* 80406284 003FC004  90 1E 00 00 */	stw r0, 0(r30)
/* 80406288 003FC008  48 00 00 30 */	b lbl_804062B8
lbl_8040628C:
/* 8040628C 003FC00C  7F 83 E3 78 */	mr r3, r28
/* 80406290 003FC010  7F A5 EB 78 */	mr r5, r29
/* 80406294 003FC014  4B BF E0 A5 */	bl func_80004338
/* 80406298 003FC018  80 9E 00 08 */	lwz r4, 8(r30)
/* 8040629C 003FC01C  7C 7C EA 14 */	add r3, r28, r29
/* 804062A0 003FC020  7C BD F8 50 */	subf r5, r29, r31
/* 804062A4 003FC024  4B BF E0 95 */	bl func_80004338
/* 804062A8 003FC028  80 1E 00 08 */	lwz r0, 8(r30)
/* 804062AC 003FC02C  7C 00 FA 14 */	add r0, r0, r31
/* 804062B0 003FC030  7C 1D 00 50 */	subf r0, r29, r0
/* 804062B4 003FC034  90 1E 00 00 */	stw r0, 0(r30)
lbl_804062B8:
/* 804062B8 003FC038  80 9E 00 08 */	lwz r4, 8(r30)
/* 804062BC 003FC03C  80 1E 00 00 */	lwz r0, 0(r30)
/* 804062C0 003FC040  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 804062C4 003FC044  7C 04 00 50 */	subf r0, r4, r0
/* 804062C8 003FC048  7C 03 00 40 */	cmplw r3, r0
/* 804062CC 003FC04C  40 82 00 08 */	bne lbl_804062D4
/* 804062D0 003FC050  90 9E 00 00 */	stw r4, 0(r30)
lbl_804062D4:
/* 804062D4 003FC054  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 804062D8 003FC058  38 7E 00 18 */	addi r3, r30, 0x18
/* 804062DC 003FC05C  7C 00 FA 14 */	add r0, r0, r31
/* 804062E0 003FC060  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804062E4 003FC064  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 804062E8 003FC068  7C 1F 00 50 */	subf r0, r31, r0
/* 804062EC 003FC06C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 804062F0 003FC070  48 00 01 89 */	bl MWExitCriticalSection
/* 804062F4 003FC074  38 60 00 00 */	li r3, 0
lbl_804062F8:
/* 804062F8 003FC078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804062FC 003FC07C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80406300 003FC080  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80406304 003FC084  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80406308 003FC088  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8040630C 003FC08C  7C 08 03 A6 */	mtlr r0
/* 80406310 003FC090  38 21 00 20 */	addi r1, r1, 0x20
/* 80406314 003FC094  4E 80 00 20 */	blr 

.global CircleBufferWriteBytes
CircleBufferWriteBytes:
/* 80406318 003FC098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040631C 003FC09C  7C 08 02 A6 */	mflr r0
/* 80406320 003FC0A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80406324 003FC0A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80406328 003FC0A8  7C BF 2B 78 */	mr r31, r5
/* 8040632C 003FC0AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80406330 003FC0B0  7C 7E 1B 78 */	mr r30, r3
/* 80406334 003FC0B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80406338 003FC0B8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8040633C 003FC0BC  7C 9C 23 78 */	mr r28, r4
/* 80406340 003FC0C0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80406344 003FC0C4  7C 1F 00 40 */	cmplw r31, r0
/* 80406348 003FC0C8  40 81 00 0C */	ble lbl_80406354
/* 8040634C 003FC0CC  38 60 FF FF */	li r3, -1
/* 80406350 003FC0D0  48 00 00 B0 */	b lbl_80406400
lbl_80406354:
/* 80406354 003FC0D4  38 7E 00 18 */	addi r3, r30, 0x18
/* 80406358 003FC0D8  48 00 01 45 */	bl MWEnterCriticalSection
/* 8040635C 003FC0DC  80 9E 00 08 */	lwz r4, 8(r30)
/* 80406360 003FC0E0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80406364 003FC0E4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80406368 003FC0E8  7C 84 18 50 */	subf r4, r4, r3
/* 8040636C 003FC0EC  7F A4 00 50 */	subf r29, r4, r0
/* 80406370 003FC0F0  7C 1D F8 40 */	cmplw r29, r31
/* 80406374 003FC0F4  41 80 00 20 */	blt lbl_80406394
/* 80406378 003FC0F8  7F 84 E3 78 */	mr r4, r28
/* 8040637C 003FC0FC  7F E5 FB 78 */	mr r5, r31
/* 80406380 003FC100  4B BF DF B9 */	bl func_80004338
/* 80406384 003FC104  80 1E 00 04 */	lwz r0, 4(r30)
/* 80406388 003FC108  7C 00 FA 14 */	add r0, r0, r31
/* 8040638C 003FC10C  90 1E 00 04 */	stw r0, 4(r30)
/* 80406390 003FC110  48 00 00 30 */	b lbl_804063C0
lbl_80406394:
/* 80406394 003FC114  7F 84 E3 78 */	mr r4, r28
/* 80406398 003FC118  7F A5 EB 78 */	mr r5, r29
/* 8040639C 003FC11C  4B BF DF 9D */	bl func_80004338
/* 804063A0 003FC120  80 7E 00 08 */	lwz r3, 8(r30)
/* 804063A4 003FC124  7C 9C EA 14 */	add r4, r28, r29
/* 804063A8 003FC128  7C BD F8 50 */	subf r5, r29, r31
/* 804063AC 003FC12C  4B BF DF 8D */	bl func_80004338
/* 804063B0 003FC130  80 1E 00 08 */	lwz r0, 8(r30)
/* 804063B4 003FC134  7C 00 FA 14 */	add r0, r0, r31
/* 804063B8 003FC138  7C 1D 00 50 */	subf r0, r29, r0
/* 804063BC 003FC13C  90 1E 00 04 */	stw r0, 4(r30)
lbl_804063C0:
/* 804063C0 003FC140  80 9E 00 08 */	lwz r4, 8(r30)
/* 804063C4 003FC144  80 1E 00 04 */	lwz r0, 4(r30)
/* 804063C8 003FC148  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 804063CC 003FC14C  7C 04 00 50 */	subf r0, r4, r0
/* 804063D0 003FC150  7C 03 00 40 */	cmplw r3, r0
/* 804063D4 003FC154  40 82 00 08 */	bne lbl_804063DC
/* 804063D8 003FC158  90 9E 00 04 */	stw r4, 4(r30)
lbl_804063DC:
/* 804063DC 003FC15C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 804063E0 003FC160  38 7E 00 18 */	addi r3, r30, 0x18
/* 804063E4 003FC164  7C 1F 00 50 */	subf r0, r31, r0
/* 804063E8 003FC168  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804063EC 003FC16C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 804063F0 003FC170  7C 00 FA 14 */	add r0, r0, r31
/* 804063F4 003FC174  90 1E 00 10 */	stw r0, 0x10(r30)
/* 804063F8 003FC178  48 00 00 81 */	bl MWExitCriticalSection
/* 804063FC 003FC17C  38 60 00 00 */	li r3, 0
lbl_80406400:
/* 80406400 003FC180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80406404 003FC184  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80406408 003FC188  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8040640C 003FC18C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80406410 003FC190  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80406414 003FC194  7C 08 03 A6 */	mtlr r0
/* 80406418 003FC198  38 21 00 20 */	addi r1, r1, 0x20
/* 8040641C 003FC19C  4E 80 00 20 */	blr 

.global CircleBufferInitialize
CircleBufferInitialize:
/* 80406420 003FC1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406424 003FC1A4  7C 08 02 A6 */	mflr r0
/* 80406428 003FC1A8  7C 66 1B 78 */	mr r6, r3
/* 8040642C 003FC1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80406430 003FC1B0  38 00 00 00 */	li r0, 0
/* 80406434 003FC1B4  90 83 00 08 */	stw r4, 8(r3)
/* 80406438 003FC1B8  38 66 00 18 */	addi r3, r6, 0x18
/* 8040643C 003FC1BC  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80406440 003FC1C0  80 86 00 08 */	lwz r4, 8(r6)
/* 80406444 003FC1C4  90 86 00 00 */	stw r4, 0(r6)
/* 80406448 003FC1C8  80 86 00 08 */	lwz r4, 8(r6)
/* 8040644C 003FC1CC  90 86 00 04 */	stw r4, 4(r6)
/* 80406450 003FC1D0  90 06 00 10 */	stw r0, 0x10(r6)
/* 80406454 003FC1D4  80 06 00 0C */	lwz r0, 0xc(r6)
/* 80406458 003FC1D8  90 06 00 14 */	stw r0, 0x14(r6)
/* 8040645C 003FC1DC  48 00 00 71 */	bl MWInitializeCriticalSection
/* 80406460 003FC1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406464 003FC1E4  7C 08 03 A6 */	mtlr r0
/* 80406468 003FC1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8040646C 003FC1EC  4E 80 00 20 */	blr 

.global CBGetBytesAvailableForRead
CBGetBytesAvailableForRead:
/* 80406470 003FC1F0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80406474 003FC1F4  4E 80 00 20 */	blr 


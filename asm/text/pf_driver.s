.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global VFiPFDRV_GetBPBInformation
VFiPFDRV_GetBPBInformation:
/* 803AA08C 0039FE0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803AA090 0039FE10  7C 08 02 A6 */	mflr r0
/* 803AA094 0039FE14  90 01 00 84 */	stw r0, 0x84(r1)
/* 803AA098 0039FE18  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 803AA09C 0039FE1C  7C 9F 23 78 */	mr r31, r4
/* 803AA0A0 0039FE20  38 81 00 08 */	addi r4, r1, 8
/* 803AA0A4 0039FE24  48 00 0A B5 */	bl VFipdm_bpb_get_bpb_information
/* 803AA0A8 0039FE28  2C 03 00 00 */	cmpwi r3, 0
/* 803AA0AC 0039FE2C  41 82 00 0C */	beq lbl_803AA0B8
/* 803AA0B0 0039FE30  38 60 00 07 */	li r3, 7
/* 803AA0B4 0039FE34  48 00 00 B0 */	b lbl_803AA164
lbl_803AA0B8:
/* 803AA0B8 0039FE38  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 803AA0BC 0039FE3C  38 60 00 00 */	li r3, 0
/* 803AA0C0 0039FE40  B0 1F 00 00 */	sth r0, 0(r31)
/* 803AA0C4 0039FE44  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 803AA0C8 0039FE48  B0 1F 00 02 */	sth r0, 2(r31)
/* 803AA0CC 0039FE4C  A0 01 00 16 */	lhz r0, 0x16(r1)
/* 803AA0D0 0039FE50  B0 1F 00 04 */	sth r0, 4(r31)
/* 803AA0D4 0039FE54  88 01 00 12 */	lbz r0, 0x12(r1)
/* 803AA0D8 0039FE58  98 1F 00 06 */	stb r0, 6(r31)
/* 803AA0DC 0039FE5C  88 01 00 13 */	lbz r0, 0x13(r1)
/* 803AA0E0 0039FE60  98 1F 00 07 */	stb r0, 7(r31)
/* 803AA0E4 0039FE64  80 01 00 70 */	lwz r0, 0x70(r1)
/* 803AA0E8 0039FE68  90 1F 00 08 */	stw r0, 8(r31)
/* 803AA0EC 0039FE6C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803AA0F0 0039FE70  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803AA0F4 0039FE74  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 803AA0F8 0039FE78  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803AA0FC 0039FE7C  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 803AA100 0039FE80  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 803AA104 0039FE84  A0 01 00 52 */	lhz r0, 0x52(r1)
/* 803AA108 0039FE88  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 803AA10C 0039FE8C  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 803AA110 0039FE90  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 803AA114 0039FE94  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 803AA118 0039FE98  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 803AA11C 0039FE9C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 803AA120 0039FEA0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803AA124 0039FEA4  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 803AA128 0039FEA8  98 1F 00 20 */	stb r0, 0x20(r31)
/* 803AA12C 0039FEAC  88 01 00 5D */	lbz r0, 0x5d(r1)
/* 803AA130 0039FEB0  98 1F 00 21 */	stb r0, 0x21(r31)
/* 803AA134 0039FEB4  88 01 00 57 */	lbz r0, 0x57(r1)
/* 803AA138 0039FEB8  98 1F 00 22 */	stb r0, 0x22(r31)
/* 803AA13C 0039FEBC  A0 01 00 5E */	lhz r0, 0x5e(r1)
/* 803AA140 0039FEC0  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 803AA144 0039FEC4  80 01 00 60 */	lwz r0, 0x60(r1)
/* 803AA148 0039FEC8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 803AA14C 0039FECC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803AA150 0039FED0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803AA154 0039FED4  80 01 00 68 */	lwz r0, 0x68(r1)
/* 803AA158 0039FED8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 803AA15C 0039FEDC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 803AA160 0039FEE0  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_803AA164:
/* 803AA164 0039FEE4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803AA168 0039FEE8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803AA16C 0039FEEC  7C 08 03 A6 */	mtlr r0
/* 803AA170 0039FEF0  38 21 00 80 */	addi r1, r1, 0x80
/* 803AA174 0039FEF4  4E 80 00 20 */	blr 

.global VFiPFDRV_GetFSINFOInformation
VFiPFDRV_GetFSINFOInformation:
/* 803AA178 0039FEF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AA17C 0039FEFC  7C 08 02 A6 */	mflr r0
/* 803AA180 0039FF00  38 80 FF FF */	li r4, -1
/* 803AA184 0039FF04  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AA188 0039FF08  38 A1 00 10 */	addi r5, r1, 0x10
/* 803AA18C 0039FF0C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803AA190 0039FF10  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803AA194 0039FF14  7C 7E 1B 78 */	mr r30, r3
/* 803AA198 0039FF18  48 00 5B B1 */	bl VFiPFCACHE_AllocateDataPage
/* 803AA19C 0039FF1C  2C 03 00 00 */	cmpwi r3, 0
/* 803AA1A0 0039FF20  41 82 00 08 */	beq lbl_803AA1A8
/* 803AA1A4 0039FF24  48 00 01 78 */	b lbl_803AA31C
lbl_803AA1A8:
/* 803AA1A8 0039FF28  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA1AC 0039FF2C  39 01 00 0C */	addi r8, r1, 0xc
/* 803AA1B0 0039FF30  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA1B4 0039FF34  38 C0 00 01 */	li r6, 1
/* 803AA1B8 0039FF38  80 84 00 04 */	lwz r4, 4(r4)
/* 803AA1BC 0039FF3C  A0 BE 00 14 */	lhz r5, 0x14(r30)
/* 803AA1C0 0039FF40  A0 FE 00 00 */	lhz r7, 0(r30)
/* 803AA1C4 0039FF44  48 00 32 B9 */	bl VFipdm_part_logical_read
/* 803AA1C8 0039FF48  2C 03 00 00 */	cmpwi r3, 0
/* 803AA1CC 0039FF4C  41 82 00 50 */	beq lbl_803AA21C
/* 803AA1D0 0039FF50  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA1D4 0039FF54  40 82 00 24 */	bne lbl_803AA1F8
/* 803AA1D8 0039FF58  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA1DC 0039FF5C  48 00 3B 59 */	bl VFipdm_part_get_driver_error_code
/* 803AA1E0 0039FF60  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA1E4 0039FF64  3B E0 10 00 */	li r31, 0x1000
/* 803AA1E8 0039FF68  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA1EC 0039FF6C  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA1F0 0039FF70  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 803AA1F4 0039FF74  48 00 00 08 */	b lbl_803AA1FC
lbl_803AA1F8:
/* 803AA1F8 0039FF78  3B E0 FF FF */	li r31, -1
lbl_803AA1FC:
/* 803AA1FC 0039FF7C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA200 0039FF80  7F C3 F3 78 */	mr r3, r30
/* 803AA204 0039FF84  48 00 5C 49 */	bl VFiPFCACHE_FreeDataPage
/* 803AA208 0039FF88  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA20C 0039FF8C  38 80 00 01 */	li r4, 1
/* 803AA210 0039FF90  48 00 2F 95 */	bl VFipdm_part_release_permission
/* 803AA214 0039FF94  7F E3 FB 78 */	mr r3, r31
/* 803AA218 0039FF98  48 00 01 04 */	b lbl_803AA31C
lbl_803AA21C:
/* 803AA21C 0039FF9C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803AA220 0039FFA0  38 81 00 08 */	addi r4, r1, 8
/* 803AA224 0039FFA4  80 63 00 04 */	lwz r3, 4(r3)
/* 803AA228 0039FFA8  48 00 10 D5 */	bl VFipdm_bpb_check_fsinfo_sector
/* 803AA22C 0039FFAC  2C 03 00 00 */	cmpwi r3, 0
/* 803AA230 0039FFB0  41 82 00 24 */	beq lbl_803AA254
/* 803AA234 0039FFB4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA238 0039FFB8  7F C3 F3 78 */	mr r3, r30
/* 803AA23C 0039FFBC  48 00 5C 11 */	bl VFiPFCACHE_FreeDataPage
/* 803AA240 0039FFC0  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA244 0039FFC4  38 80 00 01 */	li r4, 1
/* 803AA248 0039FFC8  48 00 2F 5D */	bl VFipdm_part_release_permission
/* 803AA24C 0039FFCC  38 60 FF FF */	li r3, -1
/* 803AA250 0039FFD0  48 00 00 CC */	b lbl_803AA31C
lbl_803AA254:
/* 803AA254 0039FFD4  80 01 00 08 */	lwz r0, 8(r1)
/* 803AA258 0039FFD8  2C 00 00 00 */	cmpwi r0, 0
/* 803AA25C 0039FFDC  40 82 00 24 */	bne lbl_803AA280
/* 803AA260 0039FFE0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA264 0039FFE4  7F C3 F3 78 */	mr r3, r30
/* 803AA268 0039FFE8  48 00 5B E5 */	bl VFiPFCACHE_FreeDataPage
/* 803AA26C 0039FFEC  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA270 0039FFF0  38 80 00 01 */	li r4, 1
/* 803AA274 0039FFF4  48 00 2F 31 */	bl VFipdm_part_release_permission
/* 803AA278 0039FFF8  38 60 00 07 */	li r3, 7
/* 803AA27C 0039FFFC  48 00 00 A0 */	b lbl_803AA31C
lbl_803AA280:
/* 803AA280 003A0000  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803AA284 003A0004  38 81 00 18 */	addi r4, r1, 0x18
/* 803AA288 003A0008  80 63 00 04 */	lwz r3, 4(r3)
/* 803AA28C 003A000C  48 00 0E 05 */	bl VFipdm_bpb_get_fsinfo_information
/* 803AA290 003A0010  2C 03 00 00 */	cmpwi r3, 0
/* 803AA294 003A0014  41 82 00 0C */	beq lbl_803AA2A0
/* 803AA298 003A0018  38 00 00 07 */	li r0, 7
/* 803AA29C 003A001C  48 00 00 48 */	b lbl_803AA2E4
lbl_803AA2A0:
/* 803AA2A0 003A0020  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803AA2A4 003A0024  28 04 00 02 */	cmplwi r4, 2
/* 803AA2A8 003A0028  41 80 00 18 */	blt lbl_803AA2C0
/* 803AA2AC 003A002C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 803AA2B0 003A0030  38 03 00 02 */	addi r0, r3, 2
/* 803AA2B4 003A0034  7C 04 00 40 */	cmplw r4, r0
/* 803AA2B8 003A0038  40 80 00 08 */	bge lbl_803AA2C0
/* 803AA2BC 003A003C  90 9E 00 38 */	stw r4, 0x38(r30)
lbl_803AA2C0:
/* 803AA2C0 003A0040  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803AA2C4 003A0044  28 04 00 02 */	cmplwi r4, 2
/* 803AA2C8 003A0048  41 80 00 18 */	blt lbl_803AA2E0
/* 803AA2CC 003A004C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 803AA2D0 003A0050  38 03 00 02 */	addi r0, r3, 2
/* 803AA2D4 003A0054  7C 04 00 40 */	cmplw r4, r0
/* 803AA2D8 003A0058  40 80 00 08 */	bge lbl_803AA2E0
/* 803AA2DC 003A005C  90 9E 00 3C */	stw r4, 0x3c(r30)
lbl_803AA2E0:
/* 803AA2E0 003A0060  38 00 00 00 */	li r0, 0
lbl_803AA2E4:
/* 803AA2E4 003A0064  2C 00 00 00 */	cmpwi r0, 0
/* 803AA2E8 003A0068  41 82 00 24 */	beq lbl_803AA30C
/* 803AA2EC 003A006C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA2F0 003A0070  7F C3 F3 78 */	mr r3, r30
/* 803AA2F4 003A0074  48 00 5B 59 */	bl VFiPFCACHE_FreeDataPage
/* 803AA2F8 003A0078  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA2FC 003A007C  38 80 00 01 */	li r4, 1
/* 803AA300 003A0080  48 00 2E A5 */	bl VFipdm_part_release_permission
/* 803AA304 003A0084  38 60 FF FF */	li r3, -1
/* 803AA308 003A0088  48 00 00 14 */	b lbl_803AA31C
lbl_803AA30C:
/* 803AA30C 003A008C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA310 003A0090  7F C3 F3 78 */	mr r3, r30
/* 803AA314 003A0094  48 00 5B 39 */	bl VFiPFCACHE_FreeDataPage
/* 803AA318 003A0098  38 60 00 00 */	li r3, 0
lbl_803AA31C:
/* 803AA31C 003A009C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AA320 003A00A0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803AA324 003A00A4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803AA328 003A00A8  7C 08 03 A6 */	mtlr r0
/* 803AA32C 003A00AC  38 21 00 30 */	addi r1, r1, 0x30
/* 803AA330 003A00B0  4E 80 00 20 */	blr 

.global VFiPFDRV_StoreFreeCountToFSINFO
VFiPFDRV_StoreFreeCountToFSINFO:
/* 803AA334 003A00B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AA338 003A00B8  7C 08 02 A6 */	mflr r0
/* 803AA33C 003A00BC  38 80 FF FF */	li r4, -1
/* 803AA340 003A00C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AA344 003A00C4  38 A1 00 0C */	addi r5, r1, 0xc
/* 803AA348 003A00C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803AA34C 003A00CC  7C 7F 1B 78 */	mr r31, r3
/* 803AA350 003A00D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803AA354 003A00D4  48 00 59 F5 */	bl VFiPFCACHE_AllocateDataPage
/* 803AA358 003A00D8  2C 03 00 00 */	cmpwi r3, 0
/* 803AA35C 003A00DC  41 82 00 08 */	beq lbl_803AA364
/* 803AA360 003A00E0  48 00 01 70 */	b lbl_803AA4D0
lbl_803AA364:
/* 803AA364 003A00E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AA368 003A00E8  2C 1F 00 00 */	cmpwi r31, 0
/* 803AA36C 003A00EC  A0 BF 00 14 */	lhz r5, 0x14(r31)
/* 803AA370 003A00F0  80 83 00 08 */	lwz r4, 8(r3)
/* 803AA374 003A00F4  40 82 00 0C */	bne lbl_803AA380
/* 803AA378 003A00F8  3B C0 00 0A */	li r30, 0xa
/* 803AA37C 003A00FC  48 00 00 54 */	b lbl_803AA3D0
lbl_803AA380:
/* 803AA380 003A0100  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA384 003A0104  39 01 00 08 */	addi r8, r1, 8
/* 803AA388 003A0108  A0 FF 00 00 */	lhz r7, 0(r31)
/* 803AA38C 003A010C  38 C0 00 01 */	li r6, 1
/* 803AA390 003A0110  48 00 30 ED */	bl VFipdm_part_logical_read
/* 803AA394 003A0114  2C 03 00 00 */	cmpwi r3, 0
/* 803AA398 003A0118  41 82 00 34 */	beq lbl_803AA3CC
/* 803AA39C 003A011C  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA3A0 003A0120  40 82 00 24 */	bne lbl_803AA3C4
/* 803AA3A4 003A0124  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA3A8 003A0128  48 00 39 8D */	bl VFipdm_part_get_driver_error_code
/* 803AA3AC 003A012C  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA3B0 003A0130  3B C0 10 00 */	li r30, 0x1000
/* 803AA3B4 003A0134  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA3B8 003A0138  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA3BC 003A013C  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 803AA3C0 003A0140  48 00 00 10 */	b lbl_803AA3D0
lbl_803AA3C4:
/* 803AA3C4 003A0144  3B C0 FF FF */	li r30, -1
/* 803AA3C8 003A0148  48 00 00 08 */	b lbl_803AA3D0
lbl_803AA3CC:
/* 803AA3CC 003A014C  3B C0 00 00 */	li r30, 0
lbl_803AA3D0:
/* 803AA3D0 003A0150  2C 1E 00 00 */	cmpwi r30, 0
/* 803AA3D4 003A0154  40 82 00 10 */	bne lbl_803AA3E4
/* 803AA3D8 003A0158  80 01 00 08 */	lwz r0, 8(r1)
/* 803AA3DC 003A015C  28 00 00 01 */	cmplwi r0, 1
/* 803AA3E0 003A0160  41 82 00 08 */	beq lbl_803AA3E8
lbl_803AA3E4:
/* 803AA3E4 003A0164  3B C0 00 11 */	li r30, 0x11
lbl_803AA3E8:
/* 803AA3E8 003A0168  2C 1E 00 00 */	cmpwi r30, 0
/* 803AA3EC 003A016C  40 82 00 D4 */	bne lbl_803AA4C0
/* 803AA3F0 003A0170  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AA3F4 003A0174  2C 1F 00 00 */	cmpwi r31, 0
/* 803AA3F8 003A0178  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803AA3FC 003A017C  80 63 00 08 */	lwz r3, 8(r3)
/* 803AA400 003A0180  98 03 01 E8 */	stb r0, 0x1e8(r3)
/* 803AA404 003A0184  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AA408 003A0188  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803AA40C 003A018C  80 63 00 08 */	lwz r3, 8(r3)
/* 803AA410 003A0190  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 803AA414 003A0194  98 03 01 E9 */	stb r0, 0x1e9(r3)
/* 803AA418 003A0198  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AA41C 003A019C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803AA420 003A01A0  80 63 00 08 */	lwz r3, 8(r3)
/* 803AA424 003A01A4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 803AA428 003A01A8  98 03 01 EA */	stb r0, 0x1ea(r3)
/* 803AA42C 003A01AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AA430 003A01B0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803AA434 003A01B4  80 63 00 08 */	lwz r3, 8(r3)
/* 803AA438 003A01B8  54 00 46 3E */	srwi r0, r0, 0x18
/* 803AA43C 003A01BC  98 03 01 EB */	stb r0, 0x1eb(r3)
/* 803AA440 003A01C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AA444 003A01C4  A0 BF 00 14 */	lhz r5, 0x14(r31)
/* 803AA448 003A01C8  80 83 00 08 */	lwz r4, 8(r3)
/* 803AA44C 003A01CC  40 82 00 0C */	bne lbl_803AA458
/* 803AA450 003A01D0  3B C0 00 0A */	li r30, 0xa
/* 803AA454 003A01D4  48 00 00 54 */	b lbl_803AA4A8
lbl_803AA458:
/* 803AA458 003A01D8  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA45C 003A01DC  39 01 00 08 */	addi r8, r1, 8
/* 803AA460 003A01E0  A0 FF 00 00 */	lhz r7, 0(r31)
/* 803AA464 003A01E4  38 C0 00 01 */	li r6, 1
/* 803AA468 003A01E8  48 00 31 DD */	bl VFipdm_part_logical_write
/* 803AA46C 003A01EC  2C 03 00 00 */	cmpwi r3, 0
/* 803AA470 003A01F0  41 82 00 34 */	beq lbl_803AA4A4
/* 803AA474 003A01F4  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA478 003A01F8  40 82 00 24 */	bne lbl_803AA49C
/* 803AA47C 003A01FC  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA480 003A0200  48 00 38 B5 */	bl VFipdm_part_get_driver_error_code
/* 803AA484 003A0204  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA488 003A0208  3B C0 10 00 */	li r30, 0x1000
/* 803AA48C 003A020C  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA490 003A0210  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA494 003A0214  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 803AA498 003A0218  48 00 00 10 */	b lbl_803AA4A8
lbl_803AA49C:
/* 803AA49C 003A021C  3B C0 FF FF */	li r30, -1
/* 803AA4A0 003A0220  48 00 00 08 */	b lbl_803AA4A8
lbl_803AA4A4:
/* 803AA4A4 003A0224  3B C0 00 00 */	li r30, 0
lbl_803AA4A8:
/* 803AA4A8 003A0228  2C 1E 00 00 */	cmpwi r30, 0
/* 803AA4AC 003A022C  40 82 00 10 */	bne lbl_803AA4BC
/* 803AA4B0 003A0230  80 01 00 08 */	lwz r0, 8(r1)
/* 803AA4B4 003A0234  28 00 00 01 */	cmplwi r0, 1
/* 803AA4B8 003A0238  41 82 00 08 */	beq lbl_803AA4C0
lbl_803AA4BC:
/* 803AA4BC 003A023C  3B C0 00 11 */	li r30, 0x11
lbl_803AA4C0:
/* 803AA4C0 003A0240  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803AA4C4 003A0244  7F E3 FB 78 */	mr r3, r31
/* 803AA4C8 003A0248  48 00 59 85 */	bl VFiPFCACHE_FreeDataPage
/* 803AA4CC 003A024C  7F C3 F3 78 */	mr r3, r30
lbl_803AA4D0:
/* 803AA4D0 003A0250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AA4D4 003A0254  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803AA4D8 003A0258  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803AA4DC 003A025C  7C 08 03 A6 */	mtlr r0
/* 803AA4E0 003A0260  38 21 00 20 */	addi r1, r1, 0x20
/* 803AA4E4 003A0264  4E 80 00 20 */	blr 

.global VFiPFDRV_IsInserted
VFiPFDRV_IsInserted:
/* 803AA4E8 003A0268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AA4EC 003A026C  7C 08 02 A6 */	mflr r0
/* 803AA4F0 003A0270  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AA4F4 003A0274  38 81 00 08 */	addi r4, r1, 8
/* 803AA4F8 003A0278  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AA4FC 003A027C  48 00 35 41 */	bl VFipdm_part_check_media_insert
/* 803AA500 003A0280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AA504 003A0284  80 61 00 08 */	lwz r3, 8(r1)
/* 803AA508 003A0288  7C 08 03 A6 */	mtlr r0
/* 803AA50C 003A028C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AA510 003A0290  4E 80 00 20 */	blr 

.global VFiPFDRV_IsDetected
VFiPFDRV_IsDetected:
/* 803AA514 003A0294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AA518 003A0298  7C 08 02 A6 */	mflr r0
/* 803AA51C 003A029C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AA520 003A02A0  38 81 00 08 */	addi r4, r1, 8
/* 803AA524 003A02A4  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AA528 003A02A8  48 00 36 25 */	bl VFipdm_part_check_media_detect
/* 803AA52C 003A02AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AA530 003A02B0  80 61 00 08 */	lwz r3, 8(r1)
/* 803AA534 003A02B4  7C 08 03 A6 */	mtlr r0
/* 803AA538 003A02B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AA53C 003A02BC  4E 80 00 20 */	blr 

.global VFiPFDRV_IsWProtected
VFiPFDRV_IsWProtected:
/* 803AA540 003A02C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AA544 003A02C4  7C 08 02 A6 */	mflr r0
/* 803AA548 003A02C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AA54C 003A02CC  38 81 00 08 */	addi r4, r1, 8
/* 803AA550 003A02D0  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AA554 003A02D4  48 00 33 D9 */	bl VFipdm_part_check_media_write_protect
/* 803AA558 003A02D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AA55C 003A02DC  80 61 00 08 */	lwz r3, 8(r1)
/* 803AA560 003A02E0  7C 08 03 A6 */	mtlr r0
/* 803AA564 003A02E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803AA568 003A02E8  4E 80 00 20 */	blr 

.global VFiPFDRV_init
VFiPFDRV_init:
/* 803AA56C 003A02EC  7C 60 00 34 */	cntlzw r0, r3
/* 803AA570 003A02F0  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 803AA574 003A02F4  7C 00 00 D0 */	neg r0, r0
/* 803AA578 003A02F8  70 03 00 0A */	andi. r3, r0, 0xa
/* 803AA57C 003A02FC  4E 80 00 20 */	blr 

.global VFiPFDRV_finalize
VFiPFDRV_finalize:
/* 803AA580 003A0300  7C 83 00 D0 */	neg r4, r3
/* 803AA584 003A0304  38 00 00 0A */	li r0, 0xa
/* 803AA588 003A0308  7C 83 1B 78 */	or r3, r4, r3
/* 803AA58C 003A030C  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 803AA590 003A0310  7C 03 18 78 */	andc r3, r0, r3
/* 803AA594 003A0314  4E 80 00 20 */	blr 

.global VFiPFDRV_mount
VFiPFDRV_mount:
/* 803AA598 003A0318  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AA59C 003A031C  7C 08 02 A6 */	mflr r0
/* 803AA5A0 003A0320  2C 03 00 00 */	cmpwi r3, 0
/* 803AA5A4 003A0324  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AA5A8 003A0328  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803AA5AC 003A032C  7C 7F 1B 78 */	mr r31, r3
/* 803AA5B0 003A0330  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803AA5B4 003A0334  40 82 00 0C */	bne lbl_803AA5C0
/* 803AA5B8 003A0338  38 60 00 0A */	li r3, 0xa
/* 803AA5BC 003A033C  48 00 01 FC */	b lbl_803AA7B8
lbl_803AA5C0:
/* 803AA5C0 003A0340  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AA5C4 003A0344  48 00 29 FD */	bl VFipdm_part_get_permission
/* 803AA5C8 003A0348  2C 03 00 00 */	cmpwi r3, 0
/* 803AA5CC 003A034C  41 82 00 34 */	beq lbl_803AA600
/* 803AA5D0 003A0350  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA5D4 003A0354  40 82 00 24 */	bne lbl_803AA5F8
/* 803AA5D8 003A0358  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA5DC 003A035C  48 00 37 59 */	bl VFipdm_part_get_driver_error_code
/* 803AA5E0 003A0360  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA5E4 003A0364  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA5E8 003A0368  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA5EC 003A036C  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 803AA5F0 003A0370  38 60 10 00 */	li r3, 0x1000
/* 803AA5F4 003A0374  48 00 01 C4 */	b lbl_803AA7B8
lbl_803AA5F8:
/* 803AA5F8 003A0378  38 60 FF FF */	li r3, -1
/* 803AA5FC 003A037C  48 00 01 BC */	b lbl_803AA7B8
lbl_803AA600:
/* 803AA600 003A0380  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA604 003A0384  38 81 00 14 */	addi r4, r1, 0x14
/* 803AA608 003A0388  48 00 32 05 */	bl VFipdm_part_get_media_information
/* 803AA60C 003A038C  2C 03 00 00 */	cmpwi r3, 0
/* 803AA610 003A0390  41 82 00 18 */	beq lbl_803AA628
/* 803AA614 003A0394  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA618 003A0398  38 80 00 01 */	li r4, 1
/* 803AA61C 003A039C  48 00 2B 89 */	bl VFipdm_part_release_permission
/* 803AA620 003A03A0  38 60 FF FF */	li r3, -1
/* 803AA624 003A03A4  48 00 01 94 */	b lbl_803AA7B8
lbl_803AA628:
/* 803AA628 003A03A8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 803AA62C 003A03AC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803AA630 003A03B0  41 82 00 18 */	beq lbl_803AA648
/* 803AA634 003A03B4  A0 1F 18 78 */	lhz r0, 0x1878(r31)
/* 803AA638 003A03B8  80 61 00 24 */	lwz r3, 0x24(r1)
/* 803AA63C 003A03BC  60 00 00 10 */	ori r0, r0, 0x10
/* 803AA640 003A03C0  B0 1F 18 78 */	sth r0, 0x1878(r31)
/* 803AA644 003A03C4  90 7F 18 94 */	stw r3, 0x1894(r31)
lbl_803AA648:
/* 803AA648 003A03C8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 803AA64C 003A03CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 803AA650 003A03D0  41 82 00 10 */	beq lbl_803AA660
/* 803AA654 003A03D4  A0 1F 18 78 */	lhz r0, 0x1878(r31)
/* 803AA658 003A03D8  60 00 00 20 */	ori r0, r0, 0x20
/* 803AA65C 003A03DC  B0 1F 18 78 */	sth r0, 0x1878(r31)
lbl_803AA660:
/* 803AA660 003A03E0  7F E3 FB 78 */	mr r3, r31
/* 803AA664 003A03E4  38 A1 00 10 */	addi r5, r1, 0x10
/* 803AA668 003A03E8  38 80 FF FF */	li r4, -1
/* 803AA66C 003A03EC  48 00 56 DD */	bl VFiPFCACHE_AllocateDataPage
/* 803AA670 003A03F0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA674 003A03F4  39 01 00 0C */	addi r8, r1, 0xc
/* 803AA678 003A03F8  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA67C 003A03FC  38 A0 00 00 */	li r5, 0
/* 803AA680 003A0400  80 84 00 04 */	lwz r4, 4(r4)
/* 803AA684 003A0404  38 C0 00 01 */	li r6, 1
/* 803AA688 003A0408  38 E0 02 00 */	li r7, 0x200
/* 803AA68C 003A040C  48 00 2D F1 */	bl VFipdm_part_logical_read
/* 803AA690 003A0410  2C 03 00 00 */	cmpwi r3, 0
/* 803AA694 003A0414  41 82 00 50 */	beq lbl_803AA6E4
/* 803AA698 003A0418  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA69C 003A041C  40 82 00 24 */	bne lbl_803AA6C0
/* 803AA6A0 003A0420  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA6A4 003A0424  48 00 36 91 */	bl VFipdm_part_get_driver_error_code
/* 803AA6A8 003A0428  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA6AC 003A042C  3B C0 10 00 */	li r30, 0x1000
/* 803AA6B0 003A0430  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA6B4 003A0434  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA6B8 003A0438  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 803AA6BC 003A043C  48 00 00 08 */	b lbl_803AA6C4
lbl_803AA6C0:
/* 803AA6C0 003A0440  3B C0 FF FF */	li r30, -1
lbl_803AA6C4:
/* 803AA6C4 003A0444  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA6C8 003A0448  7F E3 FB 78 */	mr r3, r31
/* 803AA6CC 003A044C  48 00 57 81 */	bl VFiPFCACHE_FreeDataPage
/* 803AA6D0 003A0450  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA6D4 003A0454  38 80 00 01 */	li r4, 1
/* 803AA6D8 003A0458  48 00 2A CD */	bl VFipdm_part_release_permission
/* 803AA6DC 003A045C  7F C3 F3 78 */	mr r3, r30
/* 803AA6E0 003A0460  48 00 00 D8 */	b lbl_803AA7B8
lbl_803AA6E4:
/* 803AA6E4 003A0464  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803AA6E8 003A0468  38 81 00 08 */	addi r4, r1, 8
/* 803AA6EC 003A046C  80 63 00 04 */	lwz r3, 4(r3)
/* 803AA6F0 003A0470  48 00 0A C5 */	bl VFipdm_bpb_check_boot_sector
/* 803AA6F4 003A0474  2C 03 00 00 */	cmpwi r3, 0
/* 803AA6F8 003A0478  41 82 00 24 */	beq lbl_803AA71C
/* 803AA6FC 003A047C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA700 003A0480  7F E3 FB 78 */	mr r3, r31
/* 803AA704 003A0484  48 00 57 49 */	bl VFiPFCACHE_FreeDataPage
/* 803AA708 003A0488  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA70C 003A048C  38 80 00 01 */	li r4, 1
/* 803AA710 003A0490  48 00 2A 95 */	bl VFipdm_part_release_permission
/* 803AA714 003A0494  38 60 FF FF */	li r3, -1
/* 803AA718 003A0498  48 00 00 A0 */	b lbl_803AA7B8
lbl_803AA71C:
/* 803AA71C 003A049C  80 01 00 08 */	lwz r0, 8(r1)
/* 803AA720 003A04A0  2C 00 00 00 */	cmpwi r0, 0
/* 803AA724 003A04A4  40 82 00 24 */	bne lbl_803AA748
/* 803AA728 003A04A8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA72C 003A04AC  7F E3 FB 78 */	mr r3, r31
/* 803AA730 003A04B0  48 00 57 1D */	bl VFiPFCACHE_FreeDataPage
/* 803AA734 003A04B4  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA738 003A04B8  38 80 00 01 */	li r4, 1
/* 803AA73C 003A04BC  48 00 2A 69 */	bl VFipdm_part_release_permission
/* 803AA740 003A04C0  38 60 00 07 */	li r3, 7
/* 803AA744 003A04C4  48 00 00 74 */	b lbl_803AA7B8
lbl_803AA748:
/* 803AA748 003A04C8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803AA74C 003A04CC  7F E4 FB 78 */	mr r4, r31
/* 803AA750 003A04D0  80 63 00 04 */	lwz r3, 4(r3)
/* 803AA754 003A04D4  4B FF F9 39 */	bl VFiPFDRV_GetBPBInformation
/* 803AA758 003A04D8  2C 03 00 00 */	cmpwi r3, 0
/* 803AA75C 003A04DC  7C 7E 1B 78 */	mr r30, r3
/* 803AA760 003A04E0  41 82 00 24 */	beq lbl_803AA784
/* 803AA764 003A04E4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA768 003A04E8  7F E3 FB 78 */	mr r3, r31
/* 803AA76C 003A04EC  48 00 56 E1 */	bl VFiPFCACHE_FreeDataPage
/* 803AA770 003A04F0  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA774 003A04F4  38 80 00 01 */	li r4, 1
/* 803AA778 003A04F8  48 00 2A 2D */	bl VFipdm_part_release_permission
/* 803AA77C 003A04FC  7F C3 F3 78 */	mr r3, r30
/* 803AA780 003A0500  48 00 00 38 */	b lbl_803AA7B8
lbl_803AA784:
/* 803AA784 003A0504  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803AA788 003A0508  7F E3 FB 78 */	mr r3, r31
/* 803AA78C 003A050C  48 00 56 C1 */	bl VFiPFCACHE_FreeDataPage
/* 803AA790 003A0510  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 803AA794 003A0514  38 60 FF FF */	li r3, -1
/* 803AA798 003A0518  90 7F 00 38 */	stw r3, 0x38(r31)
/* 803AA79C 003A051C  2C 00 00 02 */	cmpwi r0, 2
/* 803AA7A0 003A0520  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 803AA7A4 003A0524  40 82 00 10 */	bne lbl_803AA7B4
/* 803AA7A8 003A0528  7F E3 FB 78 */	mr r3, r31
/* 803AA7AC 003A052C  4B FF F9 CD */	bl VFiPFDRV_GetFSINFOInformation
/* 803AA7B0 003A0530  7C 7E 1B 78 */	mr r30, r3
lbl_803AA7B4:
/* 803AA7B4 003A0534  7F C3 F3 78 */	mr r3, r30
lbl_803AA7B8:
/* 803AA7B8 003A0538  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AA7BC 003A053C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803AA7C0 003A0540  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803AA7C4 003A0544  7C 08 03 A6 */	mtlr r0
/* 803AA7C8 003A0548  38 21 00 30 */	addi r1, r1, 0x30
/* 803AA7CC 003A054C  4E 80 00 20 */	blr 

.global VFiPFDRV_unmount
VFiPFDRV_unmount:
/* 803AA7D0 003A0550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AA7D4 003A0554  7C 08 02 A6 */	mflr r0
/* 803AA7D8 003A0558  2C 03 00 00 */	cmpwi r3, 0
/* 803AA7DC 003A055C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AA7E0 003A0560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AA7E4 003A0564  7C 7F 1B 78 */	mr r31, r3
/* 803AA7E8 003A0568  40 82 00 0C */	bne lbl_803AA7F4
/* 803AA7EC 003A056C  38 60 00 0A */	li r3, 0xa
/* 803AA7F0 003A0570  48 00 00 54 */	b lbl_803AA844
lbl_803AA7F4:
/* 803AA7F4 003A0574  38 04 FF FF */	addi r0, r4, -1
/* 803AA7F8 003A0578  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AA7FC 003A057C  7C 00 00 34 */	cntlzw r0, r0
/* 803AA800 003A0580  54 04 D9 7E */	srwi r4, r0, 5
/* 803AA804 003A0584  48 00 29 A1 */	bl VFipdm_part_release_permission
/* 803AA808 003A0588  2C 03 00 00 */	cmpwi r3, 0
/* 803AA80C 003A058C  41 82 00 34 */	beq lbl_803AA840
/* 803AA810 003A0590  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA814 003A0594  40 82 00 24 */	bne lbl_803AA838
/* 803AA818 003A0598  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA81C 003A059C  48 00 35 19 */	bl VFipdm_part_get_driver_error_code
/* 803AA820 003A05A0  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA824 003A05A4  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA828 003A05A8  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA82C 003A05AC  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 803AA830 003A05B0  38 60 10 00 */	li r3, 0x1000
/* 803AA834 003A05B4  48 00 00 10 */	b lbl_803AA844
lbl_803AA838:
/* 803AA838 003A05B8  38 60 FF FF */	li r3, -1
/* 803AA83C 003A05BC  48 00 00 08 */	b lbl_803AA844
lbl_803AA840:
/* 803AA840 003A05C0  38 60 00 00 */	li r3, 0
lbl_803AA844:
/* 803AA844 003A05C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AA848 003A05C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AA84C 003A05CC  7C 08 03 A6 */	mtlr r0
/* 803AA850 003A05D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803AA854 003A05D4  4E 80 00 20 */	blr 

.global VFiPFDRV_format
VFiPFDRV_format:
/* 803AA858 003A05D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AA85C 003A05DC  7C 08 02 A6 */	mflr r0
/* 803AA860 003A05E0  2C 03 00 00 */	cmpwi r3, 0
/* 803AA864 003A05E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AA868 003A05E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AA86C 003A05EC  7C 9F 23 78 */	mr r31, r4
/* 803AA870 003A05F0  93 C1 00 08 */	stw r30, 8(r1)
/* 803AA874 003A05F4  7C 7E 1B 78 */	mr r30, r3
/* 803AA878 003A05F8  40 82 00 0C */	bne lbl_803AA884
/* 803AA87C 003A05FC  38 60 00 0A */	li r3, 0xa
/* 803AA880 003A0600  48 00 00 E8 */	b lbl_803AA968
lbl_803AA884:
/* 803AA884 003A0604  A0 03 18 78 */	lhz r0, 0x1878(r3)
/* 803AA888 003A0608  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803AA88C 003A060C  40 82 00 44 */	bne lbl_803AA8D0
/* 803AA890 003A0610  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AA894 003A0614  48 00 27 2D */	bl VFipdm_part_get_permission
/* 803AA898 003A0618  2C 03 00 00 */	cmpwi r3, 0
/* 803AA89C 003A061C  41 82 00 34 */	beq lbl_803AA8D0
/* 803AA8A0 003A0620  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA8A4 003A0624  40 82 00 24 */	bne lbl_803AA8C8
/* 803AA8A8 003A0628  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA8AC 003A062C  48 00 34 89 */	bl VFipdm_part_get_driver_error_code
/* 803AA8B0 003A0630  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA8B4 003A0634  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA8B8 003A0638  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA8BC 003A063C  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 803AA8C0 003A0640  38 60 10 00 */	li r3, 0x1000
/* 803AA8C4 003A0644  48 00 00 A4 */	b lbl_803AA968
lbl_803AA8C8:
/* 803AA8C8 003A0648  38 60 FF FF */	li r3, -1
/* 803AA8CC 003A064C  48 00 00 9C */	b lbl_803AA968
lbl_803AA8D0:
/* 803AA8D0 003A0650  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA8D4 003A0654  7F E4 FB 78 */	mr r4, r31
/* 803AA8D8 003A0658  48 00 2A 59 */	bl VFipdm_part_format
/* 803AA8DC 003A065C  2C 03 00 00 */	cmpwi r3, 0
/* 803AA8E0 003A0660  41 82 00 34 */	beq lbl_803AA914
/* 803AA8E4 003A0664  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA8E8 003A0668  40 82 00 24 */	bne lbl_803AA90C
/* 803AA8EC 003A066C  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA8F0 003A0670  48 00 34 45 */	bl VFipdm_part_get_driver_error_code
/* 803AA8F4 003A0674  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA8F8 003A0678  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA8FC 003A067C  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA900 003A0680  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 803AA904 003A0684  38 60 10 00 */	li r3, 0x1000
/* 803AA908 003A0688  48 00 00 60 */	b lbl_803AA968
lbl_803AA90C:
/* 803AA90C 003A068C  38 60 FF FF */	li r3, -1
/* 803AA910 003A0690  48 00 00 58 */	b lbl_803AA968
lbl_803AA914:
/* 803AA914 003A0694  A0 1E 18 78 */	lhz r0, 0x1878(r30)
/* 803AA918 003A0698  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803AA91C 003A069C  40 82 00 48 */	bne lbl_803AA964
/* 803AA920 003A06A0  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA924 003A06A4  38 80 00 01 */	li r4, 1
/* 803AA928 003A06A8  48 00 28 7D */	bl VFipdm_part_release_permission
/* 803AA92C 003A06AC  2C 03 00 00 */	cmpwi r3, 0
/* 803AA930 003A06B0  41 82 00 34 */	beq lbl_803AA964
/* 803AA934 003A06B4  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA938 003A06B8  40 82 00 24 */	bne lbl_803AA95C
/* 803AA93C 003A06BC  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803AA940 003A06C0  48 00 33 F5 */	bl VFipdm_part_get_driver_error_code
/* 803AA944 003A06C4  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA948 003A06C8  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA94C 003A06CC  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA950 003A06D0  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 803AA954 003A06D4  38 60 10 00 */	li r3, 0x1000
/* 803AA958 003A06D8  48 00 00 10 */	b lbl_803AA968
lbl_803AA95C:
/* 803AA95C 003A06DC  38 60 FF FF */	li r3, -1
/* 803AA960 003A06E0  48 00 00 08 */	b lbl_803AA968
lbl_803AA964:
/* 803AA964 003A06E4  38 60 00 00 */	li r3, 0
lbl_803AA968:
/* 803AA968 003A06E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AA96C 003A06EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AA970 003A06F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AA974 003A06F4  7C 08 03 A6 */	mtlr r0
/* 803AA978 003A06F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AA97C 003A06FC  4E 80 00 20 */	blr 

.global VFiPFDRV_lread
VFiPFDRV_lread:
/* 803AA980 003A0700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AA984 003A0704  7C 08 02 A6 */	mflr r0
/* 803AA988 003A0708  2C 03 00 00 */	cmpwi r3, 0
/* 803AA98C 003A070C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AA990 003A0710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AA994 003A0714  7C 7F 1B 78 */	mr r31, r3
/* 803AA998 003A0718  40 82 00 0C */	bne lbl_803AA9A4
/* 803AA99C 003A071C  38 60 00 0A */	li r3, 0xa
/* 803AA9A0 003A0720  48 00 00 50 */	b lbl_803AA9F0
lbl_803AA9A4:
/* 803AA9A4 003A0724  7C E8 3B 78 */	mr r8, r7
/* 803AA9A8 003A0728  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AA9AC 003A072C  A0 FF 00 00 */	lhz r7, 0(r31)
/* 803AA9B0 003A0730  48 00 2A CD */	bl VFipdm_part_logical_read
/* 803AA9B4 003A0734  2C 03 00 00 */	cmpwi r3, 0
/* 803AA9B8 003A0738  41 82 00 34 */	beq lbl_803AA9EC
/* 803AA9BC 003A073C  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AA9C0 003A0740  40 82 00 24 */	bne lbl_803AA9E4
/* 803AA9C4 003A0744  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AA9C8 003A0748  48 00 33 6D */	bl VFipdm_part_get_driver_error_code
/* 803AA9CC 003A074C  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AA9D0 003A0750  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AA9D4 003A0754  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AA9D8 003A0758  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 803AA9DC 003A075C  38 60 10 00 */	li r3, 0x1000
/* 803AA9E0 003A0760  48 00 00 10 */	b lbl_803AA9F0
lbl_803AA9E4:
/* 803AA9E4 003A0764  38 60 FF FF */	li r3, -1
/* 803AA9E8 003A0768  48 00 00 08 */	b lbl_803AA9F0
lbl_803AA9EC:
/* 803AA9EC 003A076C  38 60 00 00 */	li r3, 0
lbl_803AA9F0:
/* 803AA9F0 003A0770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AA9F4 003A0774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AA9F8 003A0778  7C 08 03 A6 */	mtlr r0
/* 803AA9FC 003A077C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AAA00 003A0780  4E 80 00 20 */	blr 

.global VFiPFDRV_lwrite
VFiPFDRV_lwrite:
/* 803AAA04 003A0784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AAA08 003A0788  7C 08 02 A6 */	mflr r0
/* 803AAA0C 003A078C  2C 03 00 00 */	cmpwi r3, 0
/* 803AAA10 003A0790  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AAA14 003A0794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AAA18 003A0798  7C 7F 1B 78 */	mr r31, r3
/* 803AAA1C 003A079C  40 82 00 0C */	bne lbl_803AAA28
/* 803AAA20 003A07A0  38 60 00 0A */	li r3, 0xa
/* 803AAA24 003A07A4  48 00 00 50 */	b lbl_803AAA74
lbl_803AAA28:
/* 803AAA28 003A07A8  7C E8 3B 78 */	mr r8, r7
/* 803AAA2C 003A07AC  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803AAA30 003A07B0  A0 FF 00 00 */	lhz r7, 0(r31)
/* 803AAA34 003A07B4  48 00 2C 11 */	bl VFipdm_part_logical_write
/* 803AAA38 003A07B8  2C 03 00 00 */	cmpwi r3, 0
/* 803AAA3C 003A07BC  41 82 00 34 */	beq lbl_803AAA70
/* 803AAA40 003A07C0  2C 03 00 15 */	cmpwi r3, 0x15
/* 803AAA44 003A07C4  40 82 00 24 */	bne lbl_803AAA68
/* 803AAA48 003A07C8  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 803AAA4C 003A07CC  48 00 32 E9 */	bl VFipdm_part_get_driver_error_code
/* 803AAA50 003A07D0  3C 80 80 54 */	lis r4, lbl_8053B248@ha
/* 803AAA54 003A07D4  38 84 B2 48 */	addi r4, r4, lbl_8053B248@l
/* 803AAA58 003A07D8  90 64 00 20 */	stw r3, 0x20(r4)
/* 803AAA5C 003A07DC  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 803AAA60 003A07E0  38 60 10 00 */	li r3, 0x1000
/* 803AAA64 003A07E4  48 00 00 10 */	b lbl_803AAA74
lbl_803AAA68:
/* 803AAA68 003A07E8  38 60 FF FF */	li r3, -1
/* 803AAA6C 003A07EC  48 00 00 08 */	b lbl_803AAA74
lbl_803AAA70:
/* 803AAA70 003A07F0  38 60 00 00 */	li r3, 0
lbl_803AAA74:
/* 803AAA74 003A07F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AAA78 003A07F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AAA7C 003A07FC  7C 08 03 A6 */	mtlr r0
/* 803AAA80 003A0800  38 21 00 10 */	addi r1, r1, 0x10
/* 803AAA84 003A0804  4E 80 00 20 */	blr 


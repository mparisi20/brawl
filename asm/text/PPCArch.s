.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global PPCMfmsr
PPCMfmsr:
/* 801D5068 001CADE8  7C 60 00 A6 */	mfmsr r3
/* 801D506C 001CADEC  4E 80 00 20 */	blr 

.global PPCMtmsr
PPCMtmsr:
/* 801D5070 001CADF0  7C 60 01 24 */	mtmsr r3
/* 801D5074 001CADF4  4E 80 00 20 */	blr 

.global PPCMfhid0
PPCMfhid0:
/* 801D5078 001CADF8  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 801D507C 001CADFC  4E 80 00 20 */	blr 

.global PPCMthid0
PPCMthid0:
/* 801D5080 001CAE00  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 801D5084 001CAE04  4E 80 00 20 */	blr 

.global PPCMfl2cr
PPCMfl2cr:
/* 801D5088 001CAE08  7C 79 FA A6 */	mfspr r3, 0x3f9
/* 801D508C 001CAE0C  4E 80 00 20 */	blr 

.global PPCMtl2cr
PPCMtl2cr:
/* 801D5090 001CAE10  7C 79 FB A6 */	mtspr 0x3f9, r3
/* 801D5094 001CAE14  4E 80 00 20 */	blr 

.global PPCMtdec
PPCMtdec:
/* 801D5098 001CAE18  7C 76 03 A6 */	mtspr 0x16, r3
/* 801D509C 001CAE1C  4E 80 00 20 */	blr 

.global PPCSync
PPCSync:
/* 801D50A0 001CAE20  44 00 00 02 */	sc 
/* 801D50A4 001CAE24  4E 80 00 20 */	blr 

.global PPCHalt
PPCHalt:
/* 801D50A8 001CAE28  7C 00 04 AC */	sync 0
lbl_801D50AC:
/* 801D50AC 001CAE2C  60 00 00 00 */	nop 
/* 801D50B0 001CAE30  38 60 00 00 */	li r3, 0
/* 801D50B4 001CAE34  60 00 00 00 */	nop 
/* 801D50B8 001CAE38  4B FF FF F4 */	b lbl_801D50AC

.global PPCMtmmcr0
PPCMtmmcr0:
/* 801D50BC 001CAE3C  7C 78 EB A6 */	mtspr 0x3b8, r3
/* 801D50C0 001CAE40  4E 80 00 20 */	blr 

.global PPCMtmmcr1
PPCMtmmcr1:
/* 801D50C4 001CAE44  7C 7C EB A6 */	mtspr 0x3bc, r3
/* 801D50C8 001CAE48  4E 80 00 20 */	blr 

.global PPCMtpmc1
PPCMtpmc1:
/* 801D50CC 001CAE4C  7C 79 EB A6 */	mtspr 0x3b9, r3
/* 801D50D0 001CAE50  4E 80 00 20 */	blr 

.global PPCMtpmc2
PPCMtpmc2:
/* 801D50D4 001CAE54  7C 7A EB A6 */	mtspr 0x3ba, r3
/* 801D50D8 001CAE58  4E 80 00 20 */	blr 

.global PPCMtpmc3
PPCMtpmc3:
/* 801D50DC 001CAE5C  7C 7D EB A6 */	mtspr 0x3bd, r3
/* 801D50E0 001CAE60  4E 80 00 20 */	blr 

.global PPCMtpmc4
PPCMtpmc4:
/* 801D50E4 001CAE64  7C 7E EB A6 */	mtspr 0x3be, r3
/* 801D50E8 001CAE68  4E 80 00 20 */	blr 

.global PPCMffpscr
PPCMffpscr:
/* 801D50EC 001CAE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D50F0 001CAE70  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801D50F4 001CAE74  FF E0 04 8E */	mffs f31
/* 801D50F8 001CAE78  DB E1 00 08 */	stfd f31, 8(r1)
/* 801D50FC 001CAE7C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801D5100 001CAE80  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801D5104 001CAE84  38 21 00 20 */	addi r1, r1, 0x20
/* 801D5108 001CAE88  4E 80 00 20 */	blr 

.global PPCMtfpscr
PPCMtfpscr:
/* 801D510C 001CAE8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D5110 001CAE90  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801D5114 001CAE94  38 80 00 00 */	li r4, 0
/* 801D5118 001CAE98  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D511C 001CAE9C  90 81 00 08 */	stw r4, 8(r1)
/* 801D5120 001CAEA0  CB E1 00 08 */	lfd f31, 8(r1)
/* 801D5124 001CAEA4  FD FE FD 8E */	mtfsf 0xff, f31
/* 801D5128 001CAEA8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801D512C 001CAEAC  38 21 00 20 */	addi r1, r1, 0x20
/* 801D5130 001CAEB0  4E 80 00 20 */	blr 

.global PPCMfhid2
PPCMfhid2:
/* 801D5134 001CAEB4  7C 78 E2 A6 */	mfspr r3, 0x398
/* 801D5138 001CAEB8  4E 80 00 20 */	blr 

.global PPCMthid2
PPCMthid2:
/* 801D513C 001CAEBC  7C 78 E3 A6 */	mtspr 0x398, r3
/* 801D5140 001CAEC0  4E 80 00 20 */	blr 

.global PPCMfwpar
PPCMfwpar:
/* 801D5144 001CAEC4  7C 00 04 AC */	sync 0
/* 801D5148 001CAEC8  7C 79 E2 A6 */	mfspr r3, 0x399
/* 801D514C 001CAECC  4E 80 00 20 */	blr 

.global PPCMtwpar
PPCMtwpar:
/* 801D5150 001CAED0  7C 79 E3 A6 */	mtspr 0x399, r3
/* 801D5154 001CAED4  4E 80 00 20 */	blr 

.global PPCDisableSpeculation
PPCDisableSpeculation:
/* 801D5158 001CAED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D515C 001CAEDC  7C 08 02 A6 */	mflr r0
/* 801D5160 001CAEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D5164 001CAEE4  4B FF FF 15 */	bl PPCMfhid0
/* 801D5168 001CAEE8  60 63 02 00 */	ori r3, r3, 0x200
/* 801D516C 001CAEEC  4B FF FF 15 */	bl PPCMthid0
/* 801D5170 001CAEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D5174 001CAEF4  7C 08 03 A6 */	mtlr r0
/* 801D5178 001CAEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D517C 001CAEFC  4E 80 00 20 */	blr 

.global PPCSetFpNonIEEEMode
PPCSetFpNonIEEEMode:
/* 801D5180 001CAF00  FF A0 00 4C */	mtfsb1 0x1d
/* 801D5184 001CAF04  4E 80 00 20 */	blr 

.global PPCMthid4
PPCMthid4:
/* 801D5188 001CAF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D518C 001CAF0C  7C 08 02 A6 */	mflr r0
/* 801D5190 001CAF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D5194 001CAF14  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 801D5198 001CAF18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D519C 001CAF1C  7C 7F 1B 78 */	mr r31, r3
/* 801D51A0 001CAF20  41 82 00 0C */	beq lbl_801D51AC
/* 801D51A4 001CAF24  7C 73 FB A6 */	mtspr 0x3f3, r3
/* 801D51A8 001CAF28  48 00 00 1C */	b lbl_801D51C4
lbl_801D51AC:
/* 801D51AC 001CAF2C  3C 60 80 46 */	lis r3, lbl_80466E30@ha
/* 801D51B0 001CAF30  38 63 6E 30 */	addi r3, r3, lbl_80466E30@l
/* 801D51B4 001CAF34  4C C6 31 82 */	crclr 6
/* 801D51B8 001CAF38  48 00 34 49 */	bl OSReport
/* 801D51BC 001CAF3C  67 FF 80 00 */	oris r31, r31, 0x8000
/* 801D51C0 001CAF40  7F F3 FB A6 */	mtspr 0x3f3, r31
lbl_801D51C4:
/* 801D51C4 001CAF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D51C8 001CAF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D51CC 001CAF4C  7C 08 03 A6 */	mtlr r0
/* 801D51D0 001CAF50  38 21 00 10 */	addi r1, r1, 0x10
/* 801D51D4 001CAF54  4E 80 00 20 */	blr 


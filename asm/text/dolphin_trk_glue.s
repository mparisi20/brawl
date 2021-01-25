.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global TRKLoadContext
TRKLoadContext:
/* 804059F8 003FB778  80 03 00 00 */	lwz r0, 0(r3)
/* 804059FC 003FB77C  80 23 00 04 */	lwz r1, 4(r3)
/* 80405A00 003FB780  80 43 00 08 */	lwz r2, 8(r3)
/* 80405A04 003FB784  A0 A3 01 A2 */	lhz r5, 0x1a2(r3)
/* 80405A08 003FB788  54 A6 07 BD */	rlwinm. r6, r5, 0, 0x1e, 0x1e
/* 80405A0C 003FB78C  41 82 00 14 */	beq lbl_80405A20
/* 80405A10 003FB790  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 80405A14 003FB794  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 80405A18 003FB798  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 80405A1C 003FB79C  48 00 00 08 */	b lbl_80405A24
lbl_80405A20:
/* 80405A20 003FB7A0  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_80405A24:
/* 80405A24 003FB7A4  7C 7F 1B 78 */	mr r31, r3
/* 80405A28 003FB7A8  7C 83 23 78 */	mr r3, r4
/* 80405A2C 003FB7AC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80405A30 003FB7B0  7C 8F F1 20 */	mtcrf 0xff, r4
/* 80405A34 003FB7B4  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80405A38 003FB7B8  7C 88 03 A6 */	mtlr r4
/* 80405A3C 003FB7BC  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 80405A40 003FB7C0  7C 89 03 A6 */	mtctr r4
/* 80405A44 003FB7C4  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 80405A48 003FB7C8  7C 81 03 A6 */	mtxer r4
/* 80405A4C 003FB7CC  7C 80 00 A6 */	mfmsr r4
/* 80405A50 003FB7D0  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 80405A54 003FB7D4  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80405A58 003FB7D8  7C 80 01 24 */	mtmsr r4
/* 80405A5C 003FB7DC  7C 51 43 A6 */	mtspr 0x111, r2
/* 80405A60 003FB7E0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80405A64 003FB7E4  7C 92 43 A6 */	mtspr 0x112, r4
/* 80405A68 003FB7E8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80405A6C 003FB7EC  7C 93 43 A6 */	mtspr 0x113, r4
/* 80405A70 003FB7F0  80 5F 01 98 */	lwz r2, 0x198(r31)
/* 80405A74 003FB7F4  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 80405A78 003FB7F8  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 80405A7C 003FB7FC  4B FF DD 40 */	b TRKInterruptHandler

.global TRKUARTInterruptHandler
TRKUARTInterruptHandler:
/* 80405A80 003FB800  4E 80 00 20 */	blr 

.global InitializeProgramEndTrap
InitializeProgramEndTrap:
/* 80405A84 003FB804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405A88 003FB808  7C 08 02 A6 */	mflr r0
/* 80405A8C 003FB80C  3C 80 80 1D */	lis r4, PPCHalt@ha
/* 80405A90 003FB810  3C 60 80 42 */	lis r3, lbl_80420568@ha
/* 80405A94 003FB814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405A98 003FB818  38 A0 00 04 */	li r5, 4
/* 80405A9C 003FB81C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80405AA0 003FB820  3B E4 50 A8 */	addi r31, r4, PPCHalt@l
/* 80405AA4 003FB824  38 83 05 68 */	addi r4, r3, lbl_80420568@l
/* 80405AA8 003FB828  38 7F 00 04 */	addi r3, r31, 4
/* 80405AAC 003FB82C  4B BF E9 F1 */	bl func_8000449C
/* 80405AB0 003FB830  38 7F 00 04 */	addi r3, r31, 4
/* 80405AB4 003FB834  38 80 00 04 */	li r4, 4
/* 80405AB8 003FB838  4B DD 1D 15 */	bl ICInvalidateRange
/* 80405ABC 003FB83C  38 7F 00 04 */	addi r3, r31, 4
/* 80405AC0 003FB840  38 80 00 04 */	li r4, 4
/* 80405AC4 003FB844  4B DD 1C 25 */	bl DCFlushRange
/* 80405AC8 003FB848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405ACC 003FB84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405AD0 003FB850  7C 08 03 A6 */	mtlr r0
/* 80405AD4 003FB854  38 21 00 10 */	addi r1, r1, 0x10
/* 80405AD8 003FB858  4E 80 00 20 */	blr 

.global TRK_board_display
TRK_board_display:
/* 80405ADC 003FB85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405AE0 003FB860  7C 08 02 A6 */	mflr r0
/* 80405AE4 003FB864  3C A0 80 42 */	lis r5, lbl_8042056C@ha
/* 80405AE8 003FB868  7C 64 1B 78 */	mr r4, r3
/* 80405AEC 003FB86C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405AF0 003FB870  38 65 05 6C */	addi r3, r5, lbl_8042056C@l
/* 80405AF4 003FB874  4C C6 31 82 */	crclr 6
/* 80405AF8 003FB878  4B DD 2B 09 */	bl OSReport
/* 80405AFC 003FB87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405B00 003FB880  7C 08 03 A6 */	mtlr r0
/* 80405B04 003FB884  38 21 00 10 */	addi r1, r1, 0x10
/* 80405B08 003FB888  4E 80 00 20 */	blr 

.global UnreserveEXI2Port
UnreserveEXI2Port:
/* 80405B0C 003FB88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405B10 003FB890  7C 08 02 A6 */	mflr r0
/* 80405B14 003FB894  3C 60 80 49 */	lis r3, lbl_80494810@ha
/* 80405B18 003FB898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405B1C 003FB89C  38 63 48 10 */	addi r3, r3, lbl_80494810@l
/* 80405B20 003FB8A0  81 83 00 20 */	lwz r12, 0x20(r3)
/* 80405B24 003FB8A4  7D 89 03 A6 */	mtctr r12
/* 80405B28 003FB8A8  4E 80 04 21 */	bctrl 
/* 80405B2C 003FB8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405B30 003FB8B0  7C 08 03 A6 */	mtlr r0
/* 80405B34 003FB8B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80405B38 003FB8B8  4E 80 00 20 */	blr 

.global ReserveEXI2Port
ReserveEXI2Port:
/* 80405B3C 003FB8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405B40 003FB8C0  7C 08 02 A6 */	mflr r0
/* 80405B44 003FB8C4  3C 60 80 49 */	lis r3, lbl_80494810@ha
/* 80405B48 003FB8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405B4C 003FB8CC  38 63 48 10 */	addi r3, r3, lbl_80494810@l
/* 80405B50 003FB8D0  81 83 00 24 */	lwz r12, 0x24(r3)
/* 80405B54 003FB8D4  7D 89 03 A6 */	mtctr r12
/* 80405B58 003FB8D8  4E 80 04 21 */	bctrl 
/* 80405B5C 003FB8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405B60 003FB8E0  7C 08 03 A6 */	mtlr r0
/* 80405B64 003FB8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80405B68 003FB8E8  4E 80 00 20 */	blr 

.global TRKWriteUARTN
TRKWriteUARTN:
/* 80405B6C 003FB8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405B70 003FB8F0  7C 08 02 A6 */	mflr r0
/* 80405B74 003FB8F4  3C A0 80 49 */	lis r5, lbl_80494810@ha
/* 80405B78 003FB8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405B7C 003FB8FC  38 A5 48 10 */	addi r5, r5, lbl_80494810@l
/* 80405B80 003FB900  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80405B84 003FB904  7D 89 03 A6 */	mtctr r12
/* 80405B88 003FB908  4E 80 04 21 */	bctrl 
/* 80405B8C 003FB90C  7C 03 00 D0 */	neg r0, r3
/* 80405B90 003FB910  7C 00 1B 78 */	or r0, r0, r3
/* 80405B94 003FB914  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80405B98 003FB918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405B9C 003FB91C  7C 08 03 A6 */	mtlr r0
/* 80405BA0 003FB920  38 21 00 10 */	addi r1, r1, 0x10
/* 80405BA4 003FB924  4E 80 00 20 */	blr 

.global TRKReadUARTN
TRKReadUARTN:
/* 80405BA8 003FB928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405BAC 003FB92C  7C 08 02 A6 */	mflr r0
/* 80405BB0 003FB930  3C A0 80 49 */	lis r5, lbl_80494810@ha
/* 80405BB4 003FB934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405BB8 003FB938  38 A5 48 10 */	addi r5, r5, lbl_80494810@l
/* 80405BBC 003FB93C  81 85 00 10 */	lwz r12, 0x10(r5)
/* 80405BC0 003FB940  7D 89 03 A6 */	mtctr r12
/* 80405BC4 003FB944  4E 80 04 21 */	bctrl 
/* 80405BC8 003FB948  7C 03 00 D0 */	neg r0, r3
/* 80405BCC 003FB94C  7C 00 1B 78 */	or r0, r0, r3
/* 80405BD0 003FB950  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80405BD4 003FB954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405BD8 003FB958  7C 08 03 A6 */	mtlr r0
/* 80405BDC 003FB95C  38 21 00 10 */	addi r1, r1, 0x10
/* 80405BE0 003FB960  4E 80 00 20 */	blr 

.global TRKPollUART
TRKPollUART:
/* 80405BE4 003FB964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405BE8 003FB968  7C 08 02 A6 */	mflr r0
/* 80405BEC 003FB96C  3C 60 80 49 */	lis r3, lbl_80494810@ha
/* 80405BF0 003FB970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405BF4 003FB974  38 63 48 10 */	addi r3, r3, lbl_80494810@l
/* 80405BF8 003FB978  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80405BFC 003FB97C  7D 89 03 A6 */	mtctr r12
/* 80405C00 003FB980  4E 80 04 21 */	bctrl 
/* 80405C04 003FB984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405C08 003FB988  7C 08 03 A6 */	mtlr r0
/* 80405C0C 003FB98C  38 21 00 10 */	addi r1, r1, 0x10
/* 80405C10 003FB990  4E 80 00 20 */	blr 

.global EnableEXI2Interrupts
EnableEXI2Interrupts:
/* 80405C14 003FB994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405C18 003FB998  7C 08 02 A6 */	mflr r0
/* 80405C1C 003FB99C  3C 60 80 5A */	lis r3, lbl_8059BED8@ha
/* 80405C20 003FB9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405C24 003FB9A4  88 03 BE D8 */	lbz r0, lbl_8059BED8@l(r3)
/* 80405C28 003FB9A8  28 00 00 00 */	cmplwi r0, 0
/* 80405C2C 003FB9AC  40 82 00 20 */	bne lbl_80405C4C
/* 80405C30 003FB9B0  3C 60 80 49 */	lis r3, lbl_80494810@ha
/* 80405C34 003FB9B4  38 63 48 10 */	addi r3, r3, lbl_80494810@l
/* 80405C38 003FB9B8  81 83 00 04 */	lwz r12, 4(r3)
/* 80405C3C 003FB9BC  28 0C 00 00 */	cmplwi r12, 0
/* 80405C40 003FB9C0  41 82 00 0C */	beq lbl_80405C4C
/* 80405C44 003FB9C4  7D 89 03 A6 */	mtctr r12
/* 80405C48 003FB9C8  4E 80 04 21 */	bctrl 
lbl_80405C4C:
/* 80405C4C 003FB9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405C50 003FB9D0  7C 08 03 A6 */	mtlr r0
/* 80405C54 003FB9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80405C58 003FB9D8  4E 80 00 20 */	blr 

.global TRKInitializeIntDrivenUART
TRKInitializeIntDrivenUART:
/* 80405C5C 003FB9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405C60 003FB9E0  7C 08 02 A6 */	mflr r0
/* 80405C64 003FB9E4  3C 80 80 40 */	lis r4, TRKEXICallBack@ha
/* 80405C68 003FB9E8  3C 60 80 49 */	lis r3, lbl_80494810@ha
/* 80405C6C 003FB9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405C70 003FB9F0  38 84 5E 80 */	addi r4, r4, TRKEXICallBack@l
/* 80405C74 003FB9F4  81 83 48 10 */	lwz r12, lbl_80494810@l(r3)
/* 80405C78 003FB9F8  7C C3 33 78 */	mr r3, r6
/* 80405C7C 003FB9FC  7D 89 03 A6 */	mtctr r12
/* 80405C80 003FBA00  4E 80 04 21 */	bctrl 
/* 80405C84 003FBA04  3C 60 80 49 */	lis r3, lbl_80494810@ha
/* 80405C88 003FBA08  38 63 48 10 */	addi r3, r3, lbl_80494810@l
/* 80405C8C 003FBA0C  81 83 00 18 */	lwz r12, 0x18(r3)
/* 80405C90 003FBA10  7D 89 03 A6 */	mtctr r12
/* 80405C94 003FBA14  4E 80 04 21 */	bctrl 
/* 80405C98 003FBA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405C9C 003FBA1C  38 60 00 00 */	li r3, 0
/* 80405CA0 003FBA20  7C 08 03 A6 */	mtlr r0
/* 80405CA4 003FBA24  38 21 00 10 */	addi r1, r1, 0x10
/* 80405CA8 003FBA28  4E 80 00 20 */	blr 

.global InitMetroTRKCommTable
InitMetroTRKCommTable:
/* 80405CAC 003FBA2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80405CB0 003FBA30  7C 08 02 A6 */	mflr r0
/* 80405CB4 003FBA34  3C 80 80 42 */	lis r4, lbl_80420568@ha
/* 80405CB8 003FBA38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80405CBC 003FBA3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80405CC0 003FBA40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80405CC4 003FBA44  7C 7E 1B 78 */	mr r30, r3
/* 80405CC8 003FBA48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80405CCC 003FBA4C  3B A4 05 68 */	addi r29, r4, lbl_80420568@l
/* 80405CD0 003FBA50  7F C4 F3 78 */	mr r4, r30
/* 80405CD4 003FBA54  38 7D 00 08 */	addi r3, r29, 8
/* 80405CD8 003FBA58  4C C6 31 82 */	crclr 6
/* 80405CDC 003FBA5C  4B DD 29 25 */	bl OSReport
/* 80405CE0 003FBA60  38 7D 00 20 */	addi r3, r29, 0x20
/* 80405CE4 003FBA64  38 80 00 40 */	li r4, 0x40
/* 80405CE8 003FBA68  4C C6 31 82 */	crclr 6
/* 80405CEC 003FBA6C  4B DD 29 15 */	bl OSReport
/* 80405CF0 003FBA70  3C 60 80 5A */	lis r3, lbl_8059BED8@ha
/* 80405CF4 003FBA74  38 00 00 00 */	li r0, 0
/* 80405CF8 003FBA78  2C 1E 00 02 */	cmpwi r30, 2
/* 80405CFC 003FBA7C  98 03 BE D8 */	stb r0, lbl_8059BED8@l(r3)
/* 80405D00 003FBA80  40 82 00 A0 */	bne lbl_80405DA0
/* 80405D04 003FBA84  38 7D 00 48 */	addi r3, r29, 0x48
/* 80405D08 003FBA88  4C C6 31 82 */	crclr 6
/* 80405D0C 003FBA8C  4B DD 28 F5 */	bl OSReport
/* 80405D10 003FBA90  3D 80 80 40 */	lis r12, udp_cc_initialize@ha
/* 80405D14 003FBA94  3D 60 80 49 */	lis r11, lbl_80494810@ha
/* 80405D18 003FBA98  3B EC 5F 48 */	addi r31, r12, udp_cc_initialize@l
/* 80405D1C 003FBA9C  3D 40 80 40 */	lis r10, udp_cc_open@ha
/* 80405D20 003FBAA0  39 8B 48 10 */	addi r12, r11, lbl_80494810@l
/* 80405D24 003FBAA4  38 00 00 00 */	li r0, 0
/* 80405D28 003FBAA8  39 6A 5F 38 */	addi r11, r10, udp_cc_open@l
/* 80405D2C 003FBAAC  3D 20 80 40 */	lis r9, udp_cc_close@ha
/* 80405D30 003FBAB0  39 49 5F 30 */	addi r10, r9, udp_cc_close@l
/* 80405D34 003FBAB4  3D 00 80 40 */	lis r8, udp_cc_read@ha
/* 80405D38 003FBAB8  39 28 5F 28 */	addi r9, r8, udp_cc_read@l
/* 80405D3C 003FBABC  3C E0 80 40 */	lis r7, udp_cc_write@ha
/* 80405D40 003FBAC0  39 07 5F 20 */	addi r8, r7, udp_cc_write@l
/* 80405D44 003FBAC4  3C C0 80 40 */	lis r6, udp_cc_shutdown@ha
/* 80405D48 003FBAC8  38 E6 5F 40 */	addi r7, r6, udp_cc_shutdown@l
/* 80405D4C 003FBACC  3C A0 80 40 */	lis r5, udp_cc_peek@ha
/* 80405D50 003FBAD0  38 C5 5F 18 */	addi r6, r5, udp_cc_peek@l
/* 80405D54 003FBAD4  3C 80 80 40 */	lis r4, udp_cc_pre_continue@ha
/* 80405D58 003FBAD8  38 A4 5F 10 */	addi r5, r4, udp_cc_pre_continue@l
/* 80405D5C 003FBADC  3C 60 80 40 */	lis r3, udp_cc_post_stop@ha
/* 80405D60 003FBAE0  38 83 5F 08 */	addi r4, r3, udp_cc_post_stop@l
/* 80405D64 003FBAE4  3F C0 80 5A */	lis r30, lbl_8059BED8@ha
/* 80405D68 003FBAE8  3B A0 00 01 */	li r29, 1
/* 80405D6C 003FBAEC  93 EC 00 00 */	stw r31, 0(r12)
/* 80405D70 003FBAF0  38 60 00 00 */	li r3, 0
/* 80405D74 003FBAF4  9B BE BE D8 */	stb r29, lbl_8059BED8@l(r30)
/* 80405D78 003FBAF8  91 6C 00 18 */	stw r11, 0x18(r12)
/* 80405D7C 003FBAFC  91 4C 00 1C */	stw r10, 0x1c(r12)
/* 80405D80 003FBB00  91 2C 00 10 */	stw r9, 0x10(r12)
/* 80405D84 003FBB04  91 0C 00 14 */	stw r8, 0x14(r12)
/* 80405D88 003FBB08  90 EC 00 08 */	stw r7, 8(r12)
/* 80405D8C 003FBB0C  90 CC 00 0C */	stw r6, 0xc(r12)
/* 80405D90 003FBB10  90 AC 00 20 */	stw r5, 0x20(r12)
/* 80405D94 003FBB14  90 8C 00 24 */	stw r4, 0x24(r12)
/* 80405D98 003FBB18  90 0C 00 04 */	stw r0, 4(r12)
/* 80405D9C 003FBB1C  48 00 00 C8 */	b lbl_80405E64
lbl_80405DA0:
/* 80405DA0 003FBB20  2C 1E 00 01 */	cmpwi r30, 1
/* 80405DA4 003FBB24  40 82 00 94 */	bne lbl_80405E38
/* 80405DA8 003FBB28  38 7D 00 60 */	addi r3, r29, 0x60
/* 80405DAC 003FBB2C  4C C6 31 82 */	crclr 6
/* 80405DB0 003FBB30  4B DD 28 51 */	bl OSReport
/* 80405DB4 003FBB34  3F E0 80 40 */	lis r31, gdev_cc_initialize@ha
/* 80405DB8 003FBB38  3D 60 80 40 */	lis r11, gdev_cc_open@ha
/* 80405DBC 003FBB3C  3B FF 61 88 */	addi r31, r31, gdev_cc_initialize@l
/* 80405DC0 003FBB40  3D 80 80 49 */	lis r12, lbl_80494810@ha
/* 80405DC4 003FBB44  3D 40 80 40 */	lis r10, gdev_cc_close@ha
/* 80405DC8 003FBB48  3D 20 80 40 */	lis r9, gdev_cc_read@ha
/* 80405DCC 003FBB4C  3D 00 80 40 */	lis r8, gdev_cc_write@ha
/* 80405DD0 003FBB50  3C E0 80 40 */	lis r7, gdev_cc_shutdown@ha
/* 80405DD4 003FBB54  3C C0 80 40 */	lis r6, gdev_cc_peek@ha
/* 80405DD8 003FBB58  3C A0 80 40 */	lis r5, gdev_cc_pre_continue@ha
/* 80405DDC 003FBB5C  3C 80 80 40 */	lis r4, gdev_cc_post_stop@ha
/* 80405DE0 003FBB60  3C 60 80 40 */	lis r3, gdev_cc_initinterrupts@ha
/* 80405DE4 003FBB64  38 03 5F 50 */	addi r0, r3, gdev_cc_initinterrupts@l
/* 80405DE8 003FBB68  97 EC 48 10 */	stwu r31, lbl_80494810@l(r12)
/* 80405DEC 003FBB6C  39 6B 61 5C */	addi r11, r11, gdev_cc_open@l
/* 80405DF0 003FBB70  39 4A 61 54 */	addi r10, r10, gdev_cc_close@l
/* 80405DF4 003FBB74  39 29 60 A0 */	addi r9, r9, gdev_cc_read@l
/* 80405DF8 003FBB78  39 08 60 2C */	addi r8, r8, gdev_cc_write@l
/* 80405DFC 003FBB7C  38 E7 61 80 */	addi r7, r7, gdev_cc_shutdown@l
/* 80405E00 003FBB80  38 C6 5F 74 */	addi r6, r6, gdev_cc_peek@l
/* 80405E04 003FBB84  38 A5 60 08 */	addi r5, r5, gdev_cc_pre_continue@l
/* 80405E08 003FBB88  38 84 5F E4 */	addi r4, r4, gdev_cc_post_stop@l
/* 80405E0C 003FBB8C  91 6C 00 18 */	stw r11, 0x18(r12)
/* 80405E10 003FBB90  38 60 00 00 */	li r3, 0
/* 80405E14 003FBB94  91 4C 00 1C */	stw r10, 0x1c(r12)
/* 80405E18 003FBB98  91 2C 00 10 */	stw r9, 0x10(r12)
/* 80405E1C 003FBB9C  91 0C 00 14 */	stw r8, 0x14(r12)
/* 80405E20 003FBBA0  90 EC 00 08 */	stw r7, 8(r12)
/* 80405E24 003FBBA4  90 CC 00 0C */	stw r6, 0xc(r12)
/* 80405E28 003FBBA8  90 AC 00 20 */	stw r5, 0x20(r12)
/* 80405E2C 003FBBAC  90 8C 00 24 */	stw r4, 0x24(r12)
/* 80405E30 003FBBB0  90 0C 00 04 */	stw r0, 4(r12)
/* 80405E34 003FBBB4  48 00 00 30 */	b lbl_80405E64
lbl_80405E38:
/* 80405E38 003FBBB8  7F C4 F3 78 */	mr r4, r30
/* 80405E3C 003FBBBC  38 7D 00 84 */	addi r3, r29, 0x84
/* 80405E40 003FBBC0  4C C6 31 82 */	crclr 6
/* 80405E44 003FBBC4  4B DD 27 BD */	bl OSReport
/* 80405E48 003FBBC8  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80405E4C 003FBBCC  4C C6 31 82 */	crclr 6
/* 80405E50 003FBBD0  4B DD 27 B1 */	bl OSReport
/* 80405E54 003FBBD4  38 7D 00 E0 */	addi r3, r29, 0xe0
/* 80405E58 003FBBD8  4C C6 31 82 */	crclr 6
/* 80405E5C 003FBBDC  4B DD 27 A5 */	bl OSReport
/* 80405E60 003FBBE0  38 60 00 01 */	li r3, 1
lbl_80405E64:
/* 80405E64 003FBBE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80405E68 003FBBE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80405E6C 003FBBEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80405E70 003FBBF0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80405E74 003FBBF4  7C 08 03 A6 */	mtlr r0
/* 80405E78 003FBBF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80405E7C 003FBBFC  4E 80 00 20 */	blr 

.global TRKEXICallBack
TRKEXICallBack:
/* 80405E80 003FBC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405E84 003FBC04  7C 08 02 A6 */	mflr r0
/* 80405E88 003FBC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405E8C 003FBC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80405E90 003FBC10  7C 9F 23 78 */	mr r31, r4
/* 80405E94 003FBC14  4B DD A9 09 */	bl OSEnableScheduler
/* 80405E98 003FBC18  7F E3 FB 78 */	mr r3, r31
/* 80405E9C 003FBC1C  38 80 05 00 */	li r4, 0x500
/* 80405EA0 003FBC20  4B FF FB 59 */	bl TRKLoadContext
/* 80405EA4 003FBC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405EA8 003FBC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405EAC 003FBC2C  7C 08 03 A6 */	mtlr r0
/* 80405EB0 003FBC30  38 21 00 10 */	addi r1, r1, 0x10
/* 80405EB4 003FBC34  4E 80 00 20 */	blr 


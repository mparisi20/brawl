.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NWC24ReadMsgSubject
NWC24ReadMsgSubject:
/* 8039FD68 00395AE8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8039FD6C 00395AEC  7C 08 02 A6 */	mflr r0
/* 8039FD70 00395AF0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8039FD74 00395AF4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8039FD78 00395AF8  48 05 15 A9 */	bl _savegpr_27
/* 8039FD7C 00395AFC  7C 7B 1B 78 */	mr r27, r3
/* 8039FD80 00395B00  7C 9C 23 78 */	mr r28, r4
/* 8039FD84 00395B04  7C BD 2B 78 */	mr r29, r5
/* 8039FD88 00395B08  4B FF A4 D9 */	bl NWC24IsMsgLibOpened
/* 8039FD8C 00395B0C  2C 03 00 00 */	cmpwi r3, 0
/* 8039FD90 00395B10  40 82 00 18 */	bne lbl_8039FDA8
/* 8039FD94 00395B14  4B FF A4 E1 */	bl NWC24IsMsgLibOpenedByTool
/* 8039FD98 00395B18  2C 03 00 00 */	cmpwi r3, 0
/* 8039FD9C 00395B1C  40 82 00 0C */	bne lbl_8039FDA8
/* 8039FDA0 00395B20  38 60 FF F7 */	li r3, -9
/* 8039FDA4 00395B24  48 00 00 F4 */	b lbl_8039FE98
lbl_8039FDA8:
/* 8039FDA8 00395B28  80 1B 00 04 */	lwz r0, 4(r27)
/* 8039FDAC 00395B2C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8039FDB0 00395B30  40 82 00 0C */	bne lbl_8039FDBC
/* 8039FDB4 00395B34  38 60 FF F9 */	li r3, -7
/* 8039FDB8 00395B38  48 00 00 E0 */	b lbl_8039FE98
lbl_8039FDBC:
/* 8039FDBC 00395B3C  80 7B 00 04 */	lwz r3, 4(r27)
/* 8039FDC0 00395B40  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8039FDC4 00395B44  41 82 00 0C */	beq lbl_8039FDD0
/* 8039FDC8 00395B48  38 A0 00 00 */	li r5, 0
/* 8039FDCC 00395B4C  48 00 00 1C */	b lbl_8039FDE8
lbl_8039FDD0:
/* 8039FDD0 00395B50  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8039FDD4 00395B54  41 82 00 0C */	beq lbl_8039FDE0
/* 8039FDD8 00395B58  38 A0 00 01 */	li r5, 1
/* 8039FDDC 00395B5C  48 00 00 0C */	b lbl_8039FDE8
lbl_8039FDE0:
/* 8039FDE0 00395B60  38 60 FF FD */	li r3, -3
/* 8039FDE4 00395B64  48 00 00 08 */	b lbl_8039FDEC
lbl_8039FDE8:
/* 8039FDE8 00395B68  38 60 00 00 */	li r3, 0
lbl_8039FDEC:
/* 8039FDEC 00395B6C  2C 03 00 00 */	cmpwi r3, 0
/* 8039FDF0 00395B70  41 82 00 08 */	beq lbl_8039FDF8
/* 8039FDF4 00395B74  48 00 00 A4 */	b lbl_8039FE98
lbl_8039FDF8:
/* 8039FDF8 00395B78  83 DB 00 44 */	lwz r30, 0x44(r27)
/* 8039FDFC 00395B7C  2C 1E 00 00 */	cmpwi r30, 0
/* 8039FE00 00395B80  40 82 00 0C */	bne lbl_8039FE0C
/* 8039FE04 00395B84  38 60 FF FB */	li r3, -5
/* 8039FE08 00395B88  48 00 00 90 */	b lbl_8039FE98
lbl_8039FE0C:
/* 8039FE0C 00395B8C  80 9B 00 00 */	lwz r4, 0(r27)
/* 8039FE10 00395B90  7C A3 2B 78 */	mr r3, r5
/* 8039FE14 00395B94  38 A1 00 08 */	addi r5, r1, 8
/* 8039FE18 00395B98  4B FF BB 99 */	bl NWC24iMBoxOpenStoredMsg
/* 8039FE1C 00395B9C  2C 03 00 00 */	cmpwi r3, 0
/* 8039FE20 00395BA0  41 82 00 08 */	beq lbl_8039FE28
/* 8039FE24 00395BA4  48 00 00 74 */	b lbl_8039FE98
lbl_8039FE28:
/* 8039FE28 00395BA8  38 1D FF FF */	addi r0, r29, -1
/* 8039FE2C 00395BAC  7C 1E 00 40 */	cmplw r30, r0
/* 8039FE30 00395BB0  40 81 00 08 */	ble lbl_8039FE38
/* 8039FE34 00395BB4  7C 1E 03 78 */	mr r30, r0
lbl_8039FE38:
/* 8039FE38 00395BB8  80 9B 00 40 */	lwz r4, 0x40(r27)
/* 8039FE3C 00395BBC  38 61 00 08 */	addi r3, r1, 8
/* 8039FE40 00395BC0  38 A0 00 00 */	li r5, 0
/* 8039FE44 00395BC4  4B FF 89 D5 */	bl NWC24FSeek
/* 8039FE48 00395BC8  7F 83 E3 78 */	mr r3, r28
/* 8039FE4C 00395BCC  7F C4 F3 78 */	mr r4, r30
/* 8039FE50 00395BD0  38 A1 00 08 */	addi r5, r1, 8
/* 8039FE54 00395BD4  4B FF 8B B5 */	bl NWC24FRead
/* 8039FE58 00395BD8  2C 03 00 00 */	cmpwi r3, 0
/* 8039FE5C 00395BDC  7C 7F 1B 78 */	mr r31, r3
/* 8039FE60 00395BE0  40 82 00 20 */	bne lbl_8039FE80
/* 8039FE64 00395BE4  80 7B 00 44 */	lwz r3, 0x44(r27)
/* 8039FE68 00395BE8  38 1D FF FF */	addi r0, r29, -1
/* 8039FE6C 00395BEC  38 80 00 00 */	li r4, 0
/* 8039FE70 00395BF0  7C 03 00 40 */	cmplw r3, r0
/* 8039FE74 00395BF4  7C 9C F1 AE */	stbx r4, r28, r30
/* 8039FE78 00395BF8  40 81 00 08 */	ble lbl_8039FE80
/* 8039FE7C 00395BFC  3B E0 FF F8 */	li r31, -8
lbl_8039FE80:
/* 8039FE80 00395C00  38 61 00 08 */	addi r3, r1, 8
/* 8039FE84 00395C04  4B FF BC 05 */	bl NWC24iMBoxCloseMsg
/* 8039FE88 00395C08  2C 1F 00 00 */	cmpwi r31, 0
/* 8039FE8C 00395C0C  40 82 00 08 */	bne lbl_8039FE94
/* 8039FE90 00395C10  7C 7F 1B 78 */	mr r31, r3
lbl_8039FE94:
/* 8039FE94 00395C14  7F E3 FB 78 */	mr r3, r31
lbl_8039FE98:
/* 8039FE98 00395C18  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8039FE9C 00395C1C  48 05 14 D1 */	bl _restgpr_27
/* 8039FEA0 00395C20  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8039FEA4 00395C24  7C 08 03 A6 */	mtlr r0
/* 8039FEA8 00395C28  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8039FEAC 00395C2C  4E 80 00 20 */	blr 

.global NWC24ReadMsgAttached
NWC24ReadMsgAttached:
/* 8039FEB0 00395C30  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8039FEB4 00395C34  7C 08 02 A6 */	mflr r0
/* 8039FEB8 00395C38  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8039FEBC 00395C3C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8039FEC0 00395C40  48 05 14 61 */	bl _savegpr_27
/* 8039FEC4 00395C44  7C 7D 1B 78 */	mr r29, r3
/* 8039FEC8 00395C48  7C 9B 23 78 */	mr r27, r4
/* 8039FECC 00395C4C  7C BE 2B 78 */	mr r30, r5
/* 8039FED0 00395C50  7C DF 33 78 */	mr r31, r6
/* 8039FED4 00395C54  4B FF A3 8D */	bl NWC24IsMsgLibOpened
/* 8039FED8 00395C58  2C 03 00 00 */	cmpwi r3, 0
/* 8039FEDC 00395C5C  40 82 00 18 */	bne lbl_8039FEF4
/* 8039FEE0 00395C60  4B FF A3 95 */	bl NWC24IsMsgLibOpenedByTool
/* 8039FEE4 00395C64  2C 03 00 00 */	cmpwi r3, 0
/* 8039FEE8 00395C68  40 82 00 0C */	bne lbl_8039FEF4
/* 8039FEEC 00395C6C  38 60 FF F7 */	li r3, -9
/* 8039FEF0 00395C70  48 00 01 14 */	b lbl_803A0004
lbl_8039FEF4:
/* 8039FEF4 00395C74  80 1D 00 04 */	lwz r0, 4(r29)
/* 8039FEF8 00395C78  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8039FEFC 00395C7C  40 82 00 0C */	bne lbl_8039FF08
/* 8039FF00 00395C80  38 60 FF F9 */	li r3, -7
/* 8039FF04 00395C84  48 00 01 00 */	b lbl_803A0004
lbl_8039FF08:
/* 8039FF08 00395C88  88 1D 00 C9 */	lbz r0, 0xc9(r29)
/* 8039FF0C 00395C8C  7C 1B 00 40 */	cmplw r27, r0
/* 8039FF10 00395C90  41 80 00 0C */	blt lbl_8039FF1C
/* 8039FF14 00395C94  38 60 FF F3 */	li r3, -13
/* 8039FF18 00395C98  48 00 00 EC */	b lbl_803A0004
lbl_8039FF1C:
/* 8039FF1C 00395C9C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8039FF20 00395CA0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8039FF24 00395CA4  41 82 00 0C */	beq lbl_8039FF30
/* 8039FF28 00395CA8  38 A0 00 00 */	li r5, 0
/* 8039FF2C 00395CAC  48 00 00 1C */	b lbl_8039FF48
lbl_8039FF30:
/* 8039FF30 00395CB0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8039FF34 00395CB4  41 82 00 0C */	beq lbl_8039FF40
/* 8039FF38 00395CB8  38 A0 00 01 */	li r5, 1
/* 8039FF3C 00395CBC  48 00 00 0C */	b lbl_8039FF48
lbl_8039FF40:
/* 8039FF40 00395CC0  38 60 FF FD */	li r3, -3
/* 8039FF44 00395CC4  48 00 00 08 */	b lbl_8039FF4C
lbl_8039FF48:
/* 8039FF48 00395CC8  38 60 00 00 */	li r3, 0
lbl_8039FF4C:
/* 8039FF4C 00395CCC  2C 03 00 00 */	cmpwi r3, 0
/* 8039FF50 00395CD0  41 82 00 08 */	beq lbl_8039FF58
/* 8039FF54 00395CD4  48 00 00 B0 */	b lbl_803A0004
lbl_8039FF58:
/* 8039FF58 00395CD8  57 7C 18 38 */	slwi r28, r27, 3
/* 8039FF5C 00395CDC  7C 7D E2 14 */	add r3, r29, r28
/* 8039FF60 00395CE0  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8039FF64 00395CE4  2C 00 00 00 */	cmpwi r0, 0
/* 8039FF68 00395CE8  41 82 00 18 */	beq lbl_8039FF80
/* 8039FF6C 00395CEC  57 7B 10 3A */	slwi r27, r27, 2
/* 8039FF70 00395CF0  7C 7D DA 14 */	add r3, r29, r27
/* 8039FF74 00395CF4  80 03 00 78 */	lwz r0, 0x78(r3)
/* 8039FF78 00395CF8  2C 00 00 00 */	cmpwi r0, 0
/* 8039FF7C 00395CFC  40 82 00 0C */	bne lbl_8039FF88
lbl_8039FF80:
/* 8039FF80 00395D00  38 60 FF FB */	li r3, -5
/* 8039FF84 00395D04  48 00 00 80 */	b lbl_803A0004
lbl_8039FF88:
/* 8039FF88 00395D08  80 9D 00 00 */	lwz r4, 0(r29)
/* 8039FF8C 00395D0C  7C A3 2B 78 */	mr r3, r5
/* 8039FF90 00395D10  38 A1 00 0C */	addi r5, r1, 0xc
/* 8039FF94 00395D14  4B FF BA 1D */	bl NWC24iMBoxOpenStoredMsg
/* 8039FF98 00395D18  2C 03 00 00 */	cmpwi r3, 0
/* 8039FF9C 00395D1C  41 82 00 08 */	beq lbl_8039FFA4
/* 8039FFA0 00395D20  48 00 00 64 */	b lbl_803A0004
lbl_8039FFA4:
/* 8039FFA4 00395D24  38 00 00 00 */	li r0, 0
/* 8039FFA8 00395D28  7C 9D E2 14 */	add r4, r29, r28
/* 8039FFAC 00395D2C  90 01 00 08 */	stw r0, 8(r1)
/* 8039FFB0 00395D30  7F C5 F3 78 */	mr r5, r30
/* 8039FFB4 00395D34  7F E6 FB 78 */	mr r6, r31
/* 8039FFB8 00395D38  38 61 00 0C */	addi r3, r1, 0xc
/* 8039FFBC 00395D3C  38 84 00 68 */	addi r4, r4, 0x68
/* 8039FFC0 00395D40  38 E1 00 08 */	addi r7, r1, 8
/* 8039FFC4 00395D44  48 00 00 59 */	bl ReadBase64Data
/* 8039FFC8 00395D48  2C 03 00 00 */	cmpwi r3, 0
/* 8039FFCC 00395D4C  7C 7C 1B 78 */	mr r28, r3
/* 8039FFD0 00395D50  40 82 00 1C */	bne lbl_8039FFEC
/* 8039FFD4 00395D54  7C 7D DA 14 */	add r3, r29, r27
/* 8039FFD8 00395D58  80 81 00 08 */	lwz r4, 8(r1)
/* 8039FFDC 00395D5C  80 03 00 78 */	lwz r0, 0x78(r3)
/* 8039FFE0 00395D60  7C 04 00 40 */	cmplw r4, r0
/* 8039FFE4 00395D64  41 82 00 08 */	beq lbl_8039FFEC
/* 8039FFE8 00395D68  3B 80 FF E8 */	li r28, -24
lbl_8039FFEC:
/* 8039FFEC 00395D6C  38 61 00 0C */	addi r3, r1, 0xc
/* 8039FFF0 00395D70  4B FF BA 99 */	bl NWC24iMBoxCloseMsg
/* 8039FFF4 00395D74  2C 1C 00 00 */	cmpwi r28, 0
/* 8039FFF8 00395D78  40 82 00 08 */	bne lbl_803A0000
/* 8039FFFC 00395D7C  7C 7C 1B 78 */	mr r28, r3
lbl_803A0000:
/* 803A0000 00395D80  7F 83 E3 78 */	mr r3, r28
lbl_803A0004:
/* 803A0004 00395D84  39 61 00 C0 */	addi r11, r1, 0xc0
/* 803A0008 00395D88  48 05 13 65 */	bl _restgpr_27
/* 803A000C 00395D8C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 803A0010 00395D90  7C 08 03 A6 */	mtlr r0
/* 803A0014 00395D94  38 21 00 C0 */	addi r1, r1, 0xc0
/* 803A0018 00395D98  4E 80 00 20 */	blr 

.global ReadBase64Data
ReadBase64Data:
/* 803A001C 00395D9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A0020 00395DA0  7C 08 02 A6 */	mflr r0
/* 803A0024 00395DA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A0028 00395DA8  39 61 00 40 */	addi r11, r1, 0x40
/* 803A002C 00395DAC  48 05 12 DD */	bl _savegpr_21
/* 803A0030 00395DB0  81 0D CD 50 */	lwz r8, lbl_805A1170-_SDA_BASE_(r13)
/* 803A0034 00395DB4  7C 7D 1B 78 */	mr r29, r3
/* 803A0038 00395DB8  83 64 00 04 */	lwz r27, 4(r4)
/* 803A003C 00395DBC  7C B8 2B 78 */	mr r24, r5
/* 803A0040 00395DC0  83 44 00 00 */	lwz r26, 0(r4)
/* 803A0044 00395DC4  7C DE 33 78 */	mr r30, r6
/* 803A0048 00395DC8  7C FF 3B 78 */	mr r31, r7
/* 803A004C 00395DCC  3B 28 04 00 */	addi r25, r8, 0x400
/* 803A0050 00395DD0  3A E0 00 00 */	li r23, 0
/* 803A0054 00395DD4  38 60 00 00 */	li r3, 0
/* 803A0058 00395DD8  3A A0 00 00 */	li r21, 0
/* 803A005C 00395DDC  48 00 00 C8 */	b lbl_803A0124
lbl_803A0060:
/* 803A0060 00395DE0  2C 1B 04 00 */	cmpwi r27, 0x400
/* 803A0064 00395DE4  3B 80 04 00 */	li r28, 0x400
/* 803A0068 00395DE8  41 81 00 08 */	bgt lbl_803A0070
/* 803A006C 00395DEC  7F 7C DB 78 */	mr r28, r27
lbl_803A0070:
/* 803A0070 00395DF0  7F A3 EB 78 */	mr r3, r29
/* 803A0074 00395DF4  7F 44 D3 78 */	mr r4, r26
/* 803A0078 00395DF8  38 A0 00 00 */	li r5, 0
/* 803A007C 00395DFC  4B FF 87 9D */	bl NWC24FSeek
/* 803A0080 00395E00  7F 23 CB 78 */	mr r3, r25
/* 803A0084 00395E04  7F 84 E3 78 */	mr r4, r28
/* 803A0088 00395E08  7F A5 EB 78 */	mr r5, r29
/* 803A008C 00395E0C  4B FF 89 7D */	bl NWC24FRead
/* 803A0090 00395E10  2C 03 00 00 */	cmpwi r3, 0
/* 803A0094 00395E14  40 82 00 A0 */	bne lbl_803A0134
/* 803A0098 00395E18  7F 25 CB 78 */	mr r5, r25
/* 803A009C 00395E1C  3A C0 00 00 */	li r22, 0
/* 803A00A0 00395E20  38 C0 00 00 */	li r6, 0
/* 803A00A4 00395E24  7F 89 03 A6 */	mtctr r28
/* 803A00A8 00395E28  2C 1C 00 00 */	cmpwi r28, 0
/* 803A00AC 00395E2C  40 81 00 3C */	ble lbl_803A00E8
lbl_803A00B0:
/* 803A00B0 00395E30  88 85 00 00 */	lbz r4, 0(r5)
/* 803A00B4 00395E34  2C 04 00 0D */	cmpwi r4, 0xd
/* 803A00B8 00395E38  40 82 00 08 */	bne lbl_803A00C0
/* 803A00BC 00395E3C  7C D6 33 78 */	mr r22, r6
lbl_803A00C0:
/* 803A00C0 00395E40  7C 80 07 74 */	extsb r0, r4
/* 803A00C4 00395E44  2C 00 00 3D */	cmpwi r0, 0x3d
/* 803A00C8 00395E48  40 82 00 14 */	bne lbl_803A00DC
/* 803A00CC 00395E4C  3A C6 00 01 */	addi r22, r6, 1
/* 803A00D0 00395E50  3A A0 00 01 */	li r21, 1
/* 803A00D4 00395E54  38 60 00 00 */	li r3, 0
/* 803A00D8 00395E58  48 00 00 10 */	b lbl_803A00E8
lbl_803A00DC:
/* 803A00DC 00395E5C  38 A5 00 01 */	addi r5, r5, 1
/* 803A00E0 00395E60  38 C6 00 01 */	addi r6, r6, 1
/* 803A00E4 00395E64  42 00 FF CC */	bdnz lbl_803A00B0
lbl_803A00E8:
/* 803A00E8 00395E68  2C 16 00 00 */	cmpwi r22, 0
/* 803A00EC 00395E6C  41 82 00 48 */	beq lbl_803A0134
/* 803A00F0 00395E70  7F 23 CB 78 */	mr r3, r25
/* 803A00F4 00395E74  7E C4 B3 78 */	mr r4, r22
/* 803A00F8 00395E78  7F 05 C3 78 */	mr r5, r24
/* 803A00FC 00395E7C  7C D7 F0 50 */	subf r6, r23, r30
/* 803A0100 00395E80  38 E1 00 08 */	addi r7, r1, 8
/* 803A0104 00395E84  4B FF D3 59 */	bl NWC24Base64Decode
/* 803A0108 00395E88  2C 03 00 00 */	cmpwi r3, 0
/* 803A010C 00395E8C  40 82 00 28 */	bne lbl_803A0134
/* 803A0110 00395E90  80 01 00 08 */	lwz r0, 8(r1)
/* 803A0114 00395E94  7F 5A B2 14 */	add r26, r26, r22
/* 803A0118 00395E98  7F 76 D8 50 */	subf r27, r22, r27
/* 803A011C 00395E9C  7E F7 02 14 */	add r23, r23, r0
/* 803A0120 00395EA0  7F 18 02 14 */	add r24, r24, r0
lbl_803A0124:
/* 803A0124 00395EA4  2C 1B 00 00 */	cmpwi r27, 0
/* 803A0128 00395EA8  40 81 00 0C */	ble lbl_803A0134
/* 803A012C 00395EAC  2C 15 00 00 */	cmpwi r21, 0
/* 803A0130 00395EB0  41 82 FF 30 */	beq lbl_803A0060
lbl_803A0134:
/* 803A0134 00395EB4  2C 03 00 00 */	cmpwi r3, 0
/* 803A0138 00395EB8  40 82 00 08 */	bne lbl_803A0140
/* 803A013C 00395EBC  92 FF 00 00 */	stw r23, 0(r31)
lbl_803A0140:
/* 803A0140 00395EC0  39 61 00 40 */	addi r11, r1, 0x40
/* 803A0144 00395EC4  48 05 12 11 */	bl _restgpr_21
/* 803A0148 00395EC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A014C 00395ECC  7C 08 03 A6 */	mtlr r0
/* 803A0150 00395ED0  38 21 00 40 */	addi r1, r1, 0x40
/* 803A0154 00395ED4  4E 80 00 20 */	blr 


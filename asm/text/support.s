.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global HandlePositionFileSupportRequest
HandlePositionFileSupportRequest:
/* 80402F00 003F8C80  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80402F04 003F8C84  7C 08 02 A6 */	mflr r0
/* 80402F08 003F8C88  90 01 00 74 */	stw r0, 0x74(r1)
/* 80402F0C 003F8C8C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80402F10 003F8C90  7C BF 2B 78 */	mr r31, r5
/* 80402F14 003F8C94  38 A0 00 40 */	li r5, 0x40
/* 80402F18 003F8C98  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80402F1C 003F8C9C  7C DE 33 78 */	mr r30, r6
/* 80402F20 003F8CA0  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80402F24 003F8CA4  7C 9D 23 78 */	mr r29, r4
/* 80402F28 003F8CA8  38 80 00 00 */	li r4, 0
/* 80402F2C 003F8CAC  93 81 00 60 */	stw r28, 0x60(r1)
/* 80402F30 003F8CB0  7C 7C 1B 78 */	mr r28, r3
/* 80402F34 003F8CB4  38 61 00 14 */	addi r3, r1, 0x14
/* 80402F38 003F8CB8  4B C0 15 35 */	bl func_8000446C
/* 80402F3C 003F8CBC  38 60 00 D4 */	li r3, 0xd4
/* 80402F40 003F8CC0  38 00 00 40 */	li r0, 0x40
/* 80402F44 003F8CC4  98 61 00 18 */	stb r3, 0x18(r1)
/* 80402F48 003F8CC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80402F4C 003F8CCC  38 81 00 08 */	addi r4, r1, 8
/* 80402F50 003F8CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80402F54 003F8CD4  93 81 00 1C */	stw r28, 0x1c(r1)
/* 80402F58 003F8CD8  80 1D 00 00 */	lwz r0, 0(r29)
/* 80402F5C 003F8CDC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80402F60 003F8CE0  9B E1 00 24 */	stb r31, 0x24(r1)
/* 80402F64 003F8CE4  4B FF EA 05 */	bl TRKGetFreeBuffer
/* 80402F68 003F8CE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80402F6C 003F8CEC  40 82 00 18 */	bne lbl_80402F84
/* 80402F70 003F8CF0  80 61 00 08 */	lwz r3, 8(r1)
/* 80402F74 003F8CF4  38 81 00 14 */	addi r4, r1, 0x14
/* 80402F78 003F8CF8  38 A0 00 40 */	li r5, 0x40
/* 80402F7C 003F8CFC  4B FF E6 59 */	bl TRKAppendBuffer_ui8
/* 80402F80 003F8D00  7C 7F 1B 78 */	mr r31, r3
lbl_80402F84:
/* 80402F84 003F8D04  2C 1F 00 00 */	cmpwi r31, 0
/* 80402F88 003F8D08  40 82 00 5C */	bne lbl_80402FE4
/* 80402F8C 003F8D0C  38 60 00 00 */	li r3, 0
/* 80402F90 003F8D10  38 00 FF FF */	li r0, -1
/* 80402F94 003F8D14  90 7E 00 00 */	stw r3, 0(r30)
/* 80402F98 003F8D18  38 81 00 10 */	addi r4, r1, 0x10
/* 80402F9C 003F8D1C  38 A0 00 03 */	li r5, 3
/* 80402FA0 003F8D20  38 C0 00 03 */	li r6, 3
/* 80402FA4 003F8D24  90 1D 00 00 */	stw r0, 0(r29)
/* 80402FA8 003F8D28  38 E0 00 00 */	li r7, 0
/* 80402FAC 003F8D2C  80 61 00 08 */	lwz r3, 8(r1)
/* 80402FB0 003F8D30  48 00 02 65 */	bl TRKRequestSend
/* 80402FB4 003F8D34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80402FB8 003F8D38  40 82 00 24 */	bne lbl_80402FDC
/* 80402FBC 003F8D3C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80402FC0 003F8D40  4B FF E9 7D */	bl TRKGetBuffer
/* 80402FC4 003F8D44  28 03 00 00 */	cmplwi r3, 0
/* 80402FC8 003F8D48  41 82 00 14 */	beq lbl_80402FDC
/* 80402FCC 003F8D4C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80402FD0 003F8D50  90 1E 00 00 */	stw r0, 0(r30)
/* 80402FD4 003F8D54  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80402FD8 003F8D58  90 1D 00 00 */	stw r0, 0(r29)
lbl_80402FDC:
/* 80402FDC 003F8D5C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80402FE0 003F8D60  4B FF E8 F9 */	bl TRKReleaseBuffer
lbl_80402FE4:
/* 80402FE4 003F8D64  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80402FE8 003F8D68  4B FF E8 F1 */	bl TRKReleaseBuffer
/* 80402FEC 003F8D6C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80402FF0 003F8D70  7F E3 FB 78 */	mr r3, r31
/* 80402FF4 003F8D74  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80402FF8 003F8D78  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80402FFC 003F8D7C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80403000 003F8D80  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80403004 003F8D84  7C 08 03 A6 */	mtlr r0
/* 80403008 003F8D88  38 21 00 70 */	addi r1, r1, 0x70
/* 8040300C 003F8D8C  4E 80 00 20 */	blr 

.global HandleCloseFileSupportRequest
HandleCloseFileSupportRequest:
/* 80403010 003F8D90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80403014 003F8D94  7C 08 02 A6 */	mflr r0
/* 80403018 003F8D98  38 A0 00 40 */	li r5, 0x40
/* 8040301C 003F8D9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80403020 003F8DA0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80403024 003F8DA4  7C 7F 1B 78 */	mr r31, r3
/* 80403028 003F8DA8  38 61 00 14 */	addi r3, r1, 0x14
/* 8040302C 003F8DAC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80403030 003F8DB0  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80403034 003F8DB4  7C 9D 23 78 */	mr r29, r4
/* 80403038 003F8DB8  38 80 00 00 */	li r4, 0
/* 8040303C 003F8DBC  4B C0 14 31 */	bl func_8000446C
/* 80403040 003F8DC0  38 60 00 D3 */	li r3, 0xd3
/* 80403044 003F8DC4  38 00 00 40 */	li r0, 0x40
/* 80403048 003F8DC8  98 61 00 18 */	stb r3, 0x18(r1)
/* 8040304C 003F8DCC  38 61 00 0C */	addi r3, r1, 0xc
/* 80403050 003F8DD0  38 81 00 08 */	addi r4, r1, 8
/* 80403054 003F8DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403058 003F8DD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040305C 003F8DDC  4B FF E9 0D */	bl TRKGetFreeBuffer
/* 80403060 003F8DE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80403064 003F8DE4  40 82 00 18 */	bne lbl_8040307C
/* 80403068 003F8DE8  80 61 00 08 */	lwz r3, 8(r1)
/* 8040306C 003F8DEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80403070 003F8DF0  38 A0 00 40 */	li r5, 0x40
/* 80403074 003F8DF4  4B FF E5 61 */	bl TRKAppendBuffer_ui8
/* 80403078 003F8DF8  7C 7F 1B 78 */	mr r31, r3
lbl_8040307C:
/* 8040307C 003F8DFC  2C 1F 00 00 */	cmpwi r31, 0
/* 80403080 003F8E00  40 82 00 50 */	bne lbl_804030D0
/* 80403084 003F8E04  38 00 00 00 */	li r0, 0
/* 80403088 003F8E08  38 81 00 10 */	addi r4, r1, 0x10
/* 8040308C 003F8E0C  90 1D 00 00 */	stw r0, 0(r29)
/* 80403090 003F8E10  38 A0 00 03 */	li r5, 3
/* 80403094 003F8E14  38 C0 00 03 */	li r6, 3
/* 80403098 003F8E18  38 E0 00 00 */	li r7, 0
/* 8040309C 003F8E1C  80 61 00 08 */	lwz r3, 8(r1)
/* 804030A0 003F8E20  48 00 01 75 */	bl TRKRequestSend
/* 804030A4 003F8E24  7C 7F 1B 79 */	or. r31, r3, r3
/* 804030A8 003F8E28  40 82 00 10 */	bne lbl_804030B8
/* 804030AC 003F8E2C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804030B0 003F8E30  4B FF E8 8D */	bl TRKGetBuffer
/* 804030B4 003F8E34  7C 7E 1B 78 */	mr r30, r3
lbl_804030B8:
/* 804030B8 003F8E38  2C 1F 00 00 */	cmpwi r31, 0
/* 804030BC 003F8E3C  40 82 00 0C */	bne lbl_804030C8
/* 804030C0 003F8E40  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 804030C4 003F8E44  90 1D 00 00 */	stw r0, 0(r29)
lbl_804030C8:
/* 804030C8 003F8E48  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804030CC 003F8E4C  4B FF E8 0D */	bl TRKReleaseBuffer
lbl_804030D0:
/* 804030D0 003F8E50  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804030D4 003F8E54  4B FF E8 05 */	bl TRKReleaseBuffer
/* 804030D8 003F8E58  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804030DC 003F8E5C  7F E3 FB 78 */	mr r3, r31
/* 804030E0 003F8E60  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804030E4 003F8E64  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804030E8 003F8E68  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 804030EC 003F8E6C  7C 08 03 A6 */	mtlr r0
/* 804030F0 003F8E70  38 21 00 70 */	addi r1, r1, 0x70
/* 804030F4 003F8E74  4E 80 00 20 */	blr 

.global HandleOpenFileSupportRequest
HandleOpenFileSupportRequest:
/* 804030F8 003F8E78  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804030FC 003F8E7C  7C 08 02 A6 */	mflr r0
/* 80403100 003F8E80  90 01 00 74 */	stw r0, 0x74(r1)
/* 80403104 003F8E84  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 80403108 003F8E88  7C 7B 1B 78 */	mr r27, r3
/* 8040310C 003F8E8C  7C 9F 23 78 */	mr r31, r4
/* 80403110 003F8E90  7C BC 2B 78 */	mr r28, r5
/* 80403114 003F8E94  7C DD 33 78 */	mr r29, r6
/* 80403118 003F8E98  38 61 00 14 */	addi r3, r1, 0x14
/* 8040311C 003F8E9C  38 80 00 00 */	li r4, 0
/* 80403120 003F8EA0  38 A0 00 40 */	li r5, 0x40
/* 80403124 003F8EA4  4B C0 13 49 */	bl func_8000446C
/* 80403128 003F8EA8  38 60 00 00 */	li r3, 0
/* 8040312C 003F8EAC  38 00 00 D2 */	li r0, 0xd2
/* 80403130 003F8EB0  90 7C 00 00 */	stw r3, 0(r28)
/* 80403134 003F8EB4  7F 63 DB 78 */	mr r3, r27
/* 80403138 003F8EB8  98 01 00 18 */	stb r0, 0x18(r1)
/* 8040313C 003F8EBC  48 00 06 19 */	bl TRK_strlen
/* 80403140 003F8EC0  38 03 00 41 */	addi r0, r3, 0x41
/* 80403144 003F8EC4  9B E1 00 1C */	stb r31, 0x1c(r1)
/* 80403148 003F8EC8  7F 63 DB 78 */	mr r3, r27
/* 8040314C 003F8ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403150 003F8ED0  48 00 06 05 */	bl TRK_strlen
/* 80403154 003F8ED4  38 03 00 01 */	addi r0, r3, 1
/* 80403158 003F8ED8  38 61 00 0C */	addi r3, r1, 0xc
/* 8040315C 003F8EDC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80403160 003F8EE0  38 81 00 08 */	addi r4, r1, 8
/* 80403164 003F8EE4  4B FF E8 05 */	bl TRKGetFreeBuffer
/* 80403168 003F8EE8  80 61 00 08 */	lwz r3, 8(r1)
/* 8040316C 003F8EEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80403170 003F8EF0  38 A0 00 40 */	li r5, 0x40
/* 80403174 003F8EF4  4B FF E4 61 */	bl TRKAppendBuffer_ui8
/* 80403178 003F8EF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8040317C 003F8EFC  40 82 00 24 */	bne lbl_804031A0
/* 80403180 003F8F00  7F 63 DB 78 */	mr r3, r27
/* 80403184 003F8F04  48 00 05 D1 */	bl TRK_strlen
/* 80403188 003F8F08  7C 65 1B 78 */	mr r5, r3
/* 8040318C 003F8F0C  80 61 00 08 */	lwz r3, 8(r1)
/* 80403190 003F8F10  7F 64 DB 78 */	mr r4, r27
/* 80403194 003F8F14  38 A5 00 01 */	addi r5, r5, 1
/* 80403198 003F8F18  4B FF E4 3D */	bl TRKAppendBuffer_ui8
/* 8040319C 003F8F1C  7C 7F 1B 78 */	mr r31, r3
lbl_804031A0:
/* 804031A0 003F8F20  2C 1F 00 00 */	cmpwi r31, 0
/* 804031A4 003F8F24  40 82 00 50 */	bne lbl_804031F4
/* 804031A8 003F8F28  38 00 00 00 */	li r0, 0
/* 804031AC 003F8F2C  38 81 00 10 */	addi r4, r1, 0x10
/* 804031B0 003F8F30  90 1D 00 00 */	stw r0, 0(r29)
/* 804031B4 003F8F34  38 A0 00 07 */	li r5, 7
/* 804031B8 003F8F38  38 C0 00 03 */	li r6, 3
/* 804031BC 003F8F3C  38 E0 00 00 */	li r7, 0
/* 804031C0 003F8F40  80 61 00 08 */	lwz r3, 8(r1)
/* 804031C4 003F8F44  48 00 00 51 */	bl TRKRequestSend
/* 804031C8 003F8F48  7C 7F 1B 79 */	or. r31, r3, r3
/* 804031CC 003F8F4C  40 82 00 10 */	bne lbl_804031DC
/* 804031D0 003F8F50  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804031D4 003F8F54  4B FF E7 69 */	bl TRKGetBuffer
/* 804031D8 003F8F58  7C 7E 1B 78 */	mr r30, r3
lbl_804031DC:
/* 804031DC 003F8F5C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 804031E0 003F8F60  90 1D 00 00 */	stw r0, 0(r29)
/* 804031E4 003F8F64  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 804031E8 003F8F68  90 1C 00 00 */	stw r0, 0(r28)
/* 804031EC 003F8F6C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804031F0 003F8F70  4B FF E6 E9 */	bl TRKReleaseBuffer
lbl_804031F4:
/* 804031F4 003F8F74  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804031F8 003F8F78  4B FF E6 E1 */	bl TRKReleaseBuffer
/* 804031FC 003F8F7C  7F E3 FB 78 */	mr r3, r31
/* 80403200 003F8F80  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 80403204 003F8F84  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80403208 003F8F88  7C 08 03 A6 */	mtlr r0
/* 8040320C 003F8F8C  38 21 00 70 */	addi r1, r1, 0x70
/* 80403210 003F8F90  4E 80 00 20 */	blr 

.global TRKRequestSend
TRKRequestSend:
/* 80403214 003F8F94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80403218 003F8F98  7C 08 02 A6 */	mflr r0
/* 8040321C 003F8F9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80403220 003F8FA0  38 00 FF FF */	li r0, -1
/* 80403224 003F8FA4  BE C1 00 08 */	stmw r22, 8(r1)
/* 80403228 003F8FA8  7C 97 23 78 */	mr r23, r4
/* 8040322C 003F8FAC  7C 76 1B 78 */	mr r22, r3
/* 80403230 003F8FB0  7C F8 3B 78 */	mr r24, r7
/* 80403234 003F8FB4  3B 86 00 01 */	addi r28, r6, 1
/* 80403238 003F8FB8  3B E0 00 00 */	li r31, 0
/* 8040323C 003F8FBC  3B 20 00 01 */	li r25, 1
/* 80403240 003F8FC0  90 04 00 00 */	stw r0, 0(r4)
/* 80403244 003F8FC4  48 00 01 0C */	b lbl_80403350
lbl_80403248:
/* 80403248 003F8FC8  7E C3 B3 78 */	mr r3, r22
/* 8040324C 003F8FCC  4B FF DF F1 */	bl TRKMessageSend
/* 80403250 003F8FD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80403254 003F8FD4  40 82 00 F8 */	bne lbl_8040334C
/* 80403258 003F8FD8  2C 18 00 00 */	cmpwi r24, 0
/* 8040325C 003F8FDC  41 82 00 08 */	beq lbl_80403264
/* 80403260 003F8FE0  3B A0 00 00 */	li r29, 0
lbl_80403264:
/* 80403264 003F8FE4  4B FF E9 1D */	bl TRKTestForPacket
/* 80403268 003F8FE8  90 77 00 00 */	stw r3, 0(r23)
/* 8040326C 003F8FEC  80 77 00 00 */	lwz r3, 0(r23)
/* 80403270 003F8FF0  2C 03 FF FF */	cmpwi r3, -1
/* 80403274 003F8FF4  40 82 00 20 */	bne lbl_80403294
/* 80403278 003F8FF8  2C 18 00 00 */	cmpwi r24, 0
/* 8040327C 003F8FFC  41 82 FF E8 */	beq lbl_80403264
/* 80403280 003F9000  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 80403284 003F9004  3B BD 00 01 */	addi r29, r29, 1
/* 80403288 003F9008  38 04 B3 EC */	addi r0, r4, 0x04C4B3EC@l
/* 8040328C 003F900C  7C 1D 00 40 */	cmplw r29, r0
/* 80403290 003F9010  41 80 FF D4 */	blt lbl_80403264
lbl_80403294:
/* 80403294 003F9014  2C 03 FF FF */	cmpwi r3, -1
/* 80403298 003F9018  41 82 00 44 */	beq lbl_804032DC
/* 8040329C 003F901C  3B 20 00 00 */	li r25, 0
/* 804032A0 003F9020  4B FF E6 9D */	bl TRKGetBuffer
/* 804032A4 003F9024  38 80 00 00 */	li r4, 0
/* 804032A8 003F9028  7C 7E 1B 78 */	mr r30, r3
/* 804032AC 003F902C  4B FF E5 BD */	bl TRKSetBufferPosition
/* 804032B0 003F9030  80 9E 00 08 */	lwz r4, 8(r30)
/* 804032B4 003F9034  38 7E 00 10 */	addi r3, r30, 0x10
/* 804032B8 003F9038  48 00 2F 0D */	bl OutputData
/* 804032BC 003F903C  8B 7E 00 14 */	lbz r27, 0x14(r30)
/* 804032C0 003F9040  28 1B 00 80 */	cmplwi r27, 0x80
/* 804032C4 003F9044  40 80 00 18 */	bge lbl_804032DC
/* 804032C8 003F9048  80 77 00 00 */	lwz r3, 0(r23)
/* 804032CC 003F904C  4B FF E8 05 */	bl TRKProcessInput
/* 804032D0 003F9050  38 00 FF FF */	li r0, -1
/* 804032D4 003F9054  90 17 00 00 */	stw r0, 0(r23)
/* 804032D8 003F9058  4B FF FF 8C */	b lbl_80403264
lbl_804032DC:
/* 804032DC 003F905C  80 77 00 00 */	lwz r3, 0(r23)
/* 804032E0 003F9060  2C 03 FF FF */	cmpwi r3, -1
/* 804032E4 003F9064  41 82 00 68 */	beq lbl_8040334C
/* 804032E8 003F9068  80 1E 00 08 */	lwz r0, 8(r30)
/* 804032EC 003F906C  28 00 00 40 */	cmplwi r0, 0x40
/* 804032F0 003F9070  40 80 00 08 */	bge lbl_804032F8
/* 804032F4 003F9074  3B 20 00 01 */	li r25, 1
lbl_804032F8:
/* 804032F8 003F9078  2C 1F 00 00 */	cmpwi r31, 0
/* 804032FC 003F907C  40 82 00 10 */	bne lbl_8040330C
/* 80403300 003F9080  2C 19 00 00 */	cmpwi r25, 0
/* 80403304 003F9084  40 82 00 08 */	bne lbl_8040330C
/* 80403308 003F9088  8B 5E 00 18 */	lbz r26, 0x18(r30)
lbl_8040330C:
/* 8040330C 003F908C  2C 1F 00 00 */	cmpwi r31, 0
/* 80403310 003F9090  40 82 00 20 */	bne lbl_80403330
/* 80403314 003F9094  2C 19 00 00 */	cmpwi r25, 0
/* 80403318 003F9098  40 82 00 18 */	bne lbl_80403330
/* 8040331C 003F909C  2C 1B 00 80 */	cmpwi r27, 0x80
/* 80403320 003F90A0  40 82 00 0C */	bne lbl_8040332C
/* 80403324 003F90A4  2C 1A 00 00 */	cmpwi r26, 0
/* 80403328 003F90A8  41 82 00 08 */	beq lbl_80403330
lbl_8040332C:
/* 8040332C 003F90AC  3B 20 00 01 */	li r25, 1
lbl_80403330:
/* 80403330 003F90B0  2C 1F 00 00 */	cmpwi r31, 0
/* 80403334 003F90B4  40 82 00 0C */	bne lbl_80403340
/* 80403338 003F90B8  2C 19 00 00 */	cmpwi r25, 0
/* 8040333C 003F90BC  41 82 00 10 */	beq lbl_8040334C
lbl_80403340:
/* 80403340 003F90C0  4B FF E5 99 */	bl TRKReleaseBuffer
/* 80403344 003F90C4  38 00 FF FF */	li r0, -1
/* 80403348 003F90C8  90 17 00 00 */	stw r0, 0(r23)
lbl_8040334C:
/* 8040334C 003F90CC  3B 9C FF FF */	addi r28, r28, -1
lbl_80403350:
/* 80403350 003F90D0  2C 1C 00 00 */	cmpwi r28, 0
/* 80403354 003F90D4  41 82 00 18 */	beq lbl_8040336C
/* 80403358 003F90D8  80 17 00 00 */	lwz r0, 0(r23)
/* 8040335C 003F90DC  2C 00 FF FF */	cmpwi r0, -1
/* 80403360 003F90E0  40 82 00 0C */	bne lbl_8040336C
/* 80403364 003F90E4  2C 1F 00 00 */	cmpwi r31, 0
/* 80403368 003F90E8  41 82 FE E0 */	beq lbl_80403248
lbl_8040336C:
/* 8040336C 003F90EC  80 17 00 00 */	lwz r0, 0(r23)
/* 80403370 003F90F0  2C 00 FF FF */	cmpwi r0, -1
/* 80403374 003F90F4  40 82 00 08 */	bne lbl_8040337C
/* 80403378 003F90F8  3B E0 08 00 */	li r31, 0x800
lbl_8040337C:
/* 8040337C 003F90FC  7F E3 FB 78 */	mr r3, r31
/* 80403380 003F9100  BA C1 00 08 */	lmw r22, 8(r1)
/* 80403384 003F9104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80403388 003F9108  7C 08 03 A6 */	mtlr r0
/* 8040338C 003F910C  38 21 00 30 */	addi r1, r1, 0x30
/* 80403390 003F9110  4E 80 00 20 */	blr 

.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 80403394 003F9114  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80403398 003F9118  7C 08 02 A6 */	mflr r0
/* 8040339C 003F911C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804033A0 003F9120  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 804033A4 003F9124  7C 98 23 79 */	or. r24, r4, r4
/* 804033A8 003F9128  7C 77 1B 78 */	mr r23, r3
/* 804033AC 003F912C  7C B9 2B 78 */	mr r25, r5
/* 804033B0 003F9130  7C DA 33 78 */	mr r26, r6
/* 804033B4 003F9134  7C FB 3B 78 */	mr r27, r7
/* 804033B8 003F9138  7D 1C 43 78 */	mr r28, r8
/* 804033BC 003F913C  41 82 00 10 */	beq lbl_804033CC
/* 804033C0 003F9140  80 19 00 00 */	lwz r0, 0(r25)
/* 804033C4 003F9144  28 00 00 00 */	cmplwi r0, 0
/* 804033C8 003F9148  40 82 00 0C */	bne lbl_804033D4
lbl_804033CC:
/* 804033CC 003F914C  38 60 00 02 */	li r3, 2
/* 804033D0 003F9150  48 00 01 D0 */	b lbl_804035A0
lbl_804033D4:
/* 804033D4 003F9154  38 00 00 00 */	li r0, 0
/* 804033D8 003F9158  3B A0 00 00 */	li r29, 0
/* 804033DC 003F915C  90 1A 00 00 */	stw r0, 0(r26)
/* 804033E0 003F9160  3B C0 00 00 */	li r30, 0
/* 804033E4 003F9164  3A A0 00 00 */	li r21, 0
/* 804033E8 003F9168  48 00 01 88 */	b lbl_80403570
lbl_804033EC:
/* 804033EC 003F916C  38 61 00 14 */	addi r3, r1, 0x14
/* 804033F0 003F9170  38 80 00 00 */	li r4, 0
/* 804033F4 003F9174  38 A0 00 40 */	li r5, 0x40
/* 804033F8 003F9178  4B C0 10 75 */	bl func_8000446C
/* 804033FC 003F917C  80 19 00 00 */	lwz r0, 0(r25)
/* 80403400 003F9180  38 60 08 00 */	li r3, 0x800
/* 80403404 003F9184  7C 1E 00 50 */	subf r0, r30, r0
/* 80403408 003F9188  28 00 08 00 */	cmplwi r0, 0x800
/* 8040340C 003F918C  41 81 00 08 */	bgt lbl_80403414
/* 80403410 003F9190  7C 03 03 78 */	mr r3, r0
lbl_80403414:
/* 80403414 003F9194  2C 1C 00 00 */	cmpwi r28, 0
/* 80403418 003F9198  7C 7F 1B 78 */	mr r31, r3
/* 8040341C 003F919C  38 00 00 D0 */	li r0, 0xd0
/* 80403420 003F91A0  41 82 00 08 */	beq lbl_80403428
/* 80403424 003F91A4  38 00 00 D1 */	li r0, 0xd1
lbl_80403428:
/* 80403428 003F91A8  2C 1C 00 00 */	cmpwi r28, 0
/* 8040342C 003F91AC  98 01 00 18 */	stb r0, 0x18(r1)
/* 80403430 003F91B0  38 00 00 40 */	li r0, 0x40
/* 80403434 003F91B4  40 82 00 08 */	bne lbl_8040343C
/* 80403438 003F91B8  38 1F 00 40 */	addi r0, r31, 0x40
lbl_8040343C:
/* 8040343C 003F91BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403440 003F91C0  38 61 00 0C */	addi r3, r1, 0xc
/* 80403444 003F91C4  38 81 00 08 */	addi r4, r1, 8
/* 80403448 003F91C8  92 E1 00 1C */	stw r23, 0x1c(r1)
/* 8040344C 003F91CC  B3 E1 00 20 */	sth r31, 0x20(r1)
/* 80403450 003F91D0  4B FF E5 19 */	bl TRKGetFreeBuffer
/* 80403454 003F91D4  80 61 00 08 */	lwz r3, 8(r1)
/* 80403458 003F91D8  38 81 00 14 */	addi r4, r1, 0x14
/* 8040345C 003F91DC  38 A0 00 40 */	li r5, 0x40
/* 80403460 003F91E0  4B FF E1 75 */	bl TRKAppendBuffer_ui8
/* 80403464 003F91E4  2C 1C 00 00 */	cmpwi r28, 0
/* 80403468 003F91E8  7C 75 1B 78 */	mr r21, r3
/* 8040346C 003F91EC  40 82 00 20 */	bne lbl_8040348C
/* 80403470 003F91F0  2C 15 00 00 */	cmpwi r21, 0
/* 80403474 003F91F4  40 82 00 18 */	bne lbl_8040348C
/* 80403478 003F91F8  80 61 00 08 */	lwz r3, 8(r1)
/* 8040347C 003F91FC  7F E5 FB 78 */	mr r5, r31
/* 80403480 003F9200  7C 98 F2 14 */	add r4, r24, r30
/* 80403484 003F9204  4B FF E1 51 */	bl TRKAppendBuffer_ui8
/* 80403488 003F9208  7C 75 1B 78 */	mr r21, r3
lbl_8040348C:
/* 8040348C 003F920C  2C 15 00 00 */	cmpwi r21, 0
/* 80403490 003F9210  40 82 00 D4 */	bne lbl_80403564
/* 80403494 003F9214  2C 1B 00 00 */	cmpwi r27, 0
/* 80403498 003F9218  41 82 00 C0 */	beq lbl_80403558
/* 8040349C 003F921C  2C 1C 00 00 */	cmpwi r28, 0
/* 804034A0 003F9220  38 00 00 00 */	li r0, 0
/* 804034A4 003F9224  41 82 00 10 */	beq lbl_804034B4
/* 804034A8 003F9228  28 17 00 00 */	cmplwi r23, 0
/* 804034AC 003F922C  40 82 00 08 */	bne lbl_804034B4
/* 804034B0 003F9230  38 00 00 01 */	li r0, 1
lbl_804034B4:
/* 804034B4 003F9234  2C 1C 00 00 */	cmpwi r28, 0
/* 804034B8 003F9238  80 61 00 08 */	lwz r3, 8(r1)
/* 804034BC 003F923C  38 81 00 10 */	addi r4, r1, 0x10
/* 804034C0 003F9240  38 A0 00 05 */	li r5, 5
/* 804034C4 003F9244  7C 00 00 34 */	cntlzw r0, r0
/* 804034C8 003F9248  38 C0 00 03 */	li r6, 3
/* 804034CC 003F924C  54 07 D9 7E */	srwi r7, r0, 5
/* 804034D0 003F9250  4B FF FD 45 */	bl TRKRequestSend
/* 804034D4 003F9254  7C 75 1B 79 */	or. r21, r3, r3
/* 804034D8 003F9258  40 82 00 10 */	bne lbl_804034E8
/* 804034DC 003F925C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804034E0 003F9260  4B FF E4 5D */	bl TRKGetBuffer
/* 804034E4 003F9264  7C 76 1B 78 */	mr r22, r3
lbl_804034E8:
/* 804034E8 003F9268  80 16 00 20 */	lwz r0, 0x20(r22)
/* 804034EC 003F926C  2C 1C 00 00 */	cmpwi r28, 0
/* 804034F0 003F9270  A2 76 00 24 */	lhz r19, 0x24(r22)
/* 804034F4 003F9274  54 14 06 3E */	clrlwi r20, r0, 0x18
/* 804034F8 003F9278  41 82 00 40 */	beq lbl_80403538
/* 804034FC 003F927C  2C 15 00 00 */	cmpwi r21, 0
/* 80403500 003F9280  40 82 00 38 */	bne lbl_80403538
/* 80403504 003F9284  7C 13 F8 40 */	cmplw r19, r31
/* 80403508 003F9288  41 81 00 30 */	bgt lbl_80403538
/* 8040350C 003F928C  7E C3 B3 78 */	mr r3, r22
/* 80403510 003F9290  38 80 00 40 */	li r4, 0x40
/* 80403514 003F9294  4B FF E3 55 */	bl TRKSetBufferPosition
/* 80403518 003F9298  7E C3 B3 78 */	mr r3, r22
/* 8040351C 003F929C  7E 65 9B 78 */	mr r5, r19
/* 80403520 003F92A0  7C 98 F2 14 */	add r4, r24, r30
/* 80403524 003F92A4  4B FF DE 35 */	bl TRKReadBuffer_ui8
/* 80403528 003F92A8  7C 75 1B 78 */	mr r21, r3
/* 8040352C 003F92AC  2C 15 03 02 */	cmpwi r21, 0x302
/* 80403530 003F92B0  40 82 00 08 */	bne lbl_80403538
/* 80403534 003F92B4  3A A0 00 00 */	li r21, 0
lbl_80403538:
/* 80403538 003F92B8  7C 13 F8 40 */	cmplw r19, r31
/* 8040353C 003F92BC  41 82 00 0C */	beq lbl_80403548
/* 80403540 003F92C0  7E 7F 9B 78 */	mr r31, r19
/* 80403544 003F92C4  3B A0 00 01 */	li r29, 1
lbl_80403548:
/* 80403548 003F92C8  92 9A 00 00 */	stw r20, 0(r26)
/* 8040354C 003F92CC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80403550 003F92D0  4B FF E3 89 */	bl TRKReleaseBuffer
/* 80403554 003F92D4  48 00 00 10 */	b lbl_80403564
lbl_80403558:
/* 80403558 003F92D8  80 61 00 08 */	lwz r3, 8(r1)
/* 8040355C 003F92DC  4B FF DC E1 */	bl TRKMessageSend
/* 80403560 003F92E0  7C 75 1B 78 */	mr r21, r3
lbl_80403564:
/* 80403564 003F92E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80403568 003F92E8  4B FF E3 71 */	bl TRKReleaseBuffer
/* 8040356C 003F92EC  7F DE FA 14 */	add r30, r30, r31
lbl_80403570:
/* 80403570 003F92F0  2C 1D 00 00 */	cmpwi r29, 0
/* 80403574 003F92F4  40 82 00 24 */	bne lbl_80403598
/* 80403578 003F92F8  80 19 00 00 */	lwz r0, 0(r25)
/* 8040357C 003F92FC  7C 1E 00 40 */	cmplw r30, r0
/* 80403580 003F9300  40 80 00 18 */	bge lbl_80403598
/* 80403584 003F9304  2C 15 00 00 */	cmpwi r21, 0
/* 80403588 003F9308  40 82 00 10 */	bne lbl_80403598
/* 8040358C 003F930C  80 1A 00 00 */	lwz r0, 0(r26)
/* 80403590 003F9310  2C 00 00 00 */	cmpwi r0, 0
/* 80403594 003F9314  41 82 FE 58 */	beq lbl_804033EC
lbl_80403598:
/* 80403598 003F9318  93 D9 00 00 */	stw r30, 0(r25)
/* 8040359C 003F931C  7E A3 AB 78 */	mr r3, r21
lbl_804035A0:
/* 804035A0 003F9320  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 804035A4 003F9324  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804035A8 003F9328  7C 08 03 A6 */	mtlr r0
/* 804035AC 003F932C  38 21 00 90 */	addi r1, r1, 0x90
/* 804035B0 003F9330  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfFileIORequestQueue$7__ct
gfFileIORequestQueue$7__ct:
/* 80022054 00017DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022058 00017DD8  7C 08 02 A6 */	mflr r0
/* 8002205C 00017DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022060 00017DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022064 00017DE4  7C 7F 1B 78 */	mr r31, r3
/* 80022068 00017DE8  48 1B CB 15 */	bl OSInitMutex
/* 8002206C 00017DEC  38 60 02 04 */	li r3, 0x204
/* 80022070 00017DF0  38 80 00 01 */	li r4, 1
/* 80022074 00017DF4  4B FE A8 45 */	bl srHeapType$7__nw
/* 80022078 00017DF8  2C 03 00 00 */	cmpwi r3, 0
/* 8002207C 00017DFC  41 82 01 28 */	beq lbl_800221A4
/* 80022080 00017E00  38 80 00 80 */	li r4, 0x80
/* 80022084 00017E04  38 00 00 00 */	li r0, 0
/* 80022088 00017E08  B0 83 00 00 */	sth r4, 0(r3)
/* 8002208C 00017E0C  38 C3 00 08 */	addi r6, r3, 8
/* 80022090 00017E10  38 83 02 04 */	addi r4, r3, 0x204
/* 80022094 00017E14  B0 03 00 02 */	sth r0, 2(r3)
/* 80022098 00017E18  7C 06 20 40 */	cmplw r6, r4
/* 8002209C 00017E1C  90 03 00 04 */	stw r0, 4(r3)
/* 800220A0 00017E20  40 80 01 04 */	bge lbl_800221A4
/* 800220A4 00017E24  38 E3 00 08 */	addi r7, r3, 8
/* 800220A8 00017E28  38 A3 01 E4 */	addi r5, r3, 0x1e4
/* 800220AC 00017E2C  7D 07 20 50 */	subf r8, r7, r4
/* 800220B0 00017E30  39 28 00 03 */	addi r9, r8, 3
/* 800220B4 00017E34  7D 20 16 70 */	srawi r0, r9, 2
/* 800220B8 00017E38  7D 40 01 94 */	addze r10, r0
/* 800220BC 00017E3C  39 6A 00 01 */	addi r11, r10, 1
/* 800220C0 00017E40  2C 0B 00 08 */	cmpwi r11, 8
/* 800220C4 00017E44  40 81 00 B4 */	ble lbl_80022178
/* 800220C8 00017E48  7C 07 20 40 */	cmplw r7, r4
/* 800220CC 00017E4C  38 80 00 00 */	li r4, 0
/* 800220D0 00017E50  38 E0 00 00 */	li r7, 0
/* 800220D4 00017E54  41 81 00 28 */	bgt lbl_800220FC
/* 800220D8 00017E58  55 00 00 01 */	rlwinm. r0, r8, 0, 0, 0
/* 800220DC 00017E5C  39 00 00 01 */	li r8, 1
/* 800220E0 00017E60  40 82 00 10 */	bne lbl_800220F0
/* 800220E4 00017E64  55 20 00 01 */	rlwinm. r0, r9, 0, 0, 0
/* 800220E8 00017E68  41 82 00 08 */	beq lbl_800220F0
/* 800220EC 00017E6C  39 00 00 00 */	li r8, 0
lbl_800220F0:
/* 800220F0 00017E70  2C 08 00 00 */	cmpwi r8, 0
/* 800220F4 00017E74  41 82 00 08 */	beq lbl_800220FC
/* 800220F8 00017E78  38 E0 00 01 */	li r7, 1
lbl_800220FC:
/* 800220FC 00017E7C  2C 07 00 00 */	cmpwi r7, 0
/* 80022100 00017E80  41 82 00 2C */	beq lbl_8002212C
/* 80022104 00017E84  55 48 00 01 */	rlwinm. r8, r10, 0, 0, 0
/* 80022108 00017E88  38 E0 00 01 */	li r7, 1
/* 8002210C 00017E8C  40 82 00 14 */	bne lbl_80022120
/* 80022110 00017E90  55 60 00 00 */	rlwinm r0, r11, 0, 0, 0
/* 80022114 00017E94  7C 08 00 00 */	cmpw r8, r0
/* 80022118 00017E98  41 82 00 08 */	beq lbl_80022120
/* 8002211C 00017E9C  38 E0 00 00 */	li r7, 0
lbl_80022120:
/* 80022120 00017EA0  2C 07 00 00 */	cmpwi r7, 0
/* 80022124 00017EA4  41 82 00 08 */	beq lbl_8002212C
/* 80022128 00017EA8  38 80 00 01 */	li r4, 1
lbl_8002212C:
/* 8002212C 00017EAC  2C 04 00 00 */	cmpwi r4, 0
/* 80022130 00017EB0  41 82 00 48 */	beq lbl_80022178
/* 80022134 00017EB4  38 05 00 1F */	addi r0, r5, 0x1f
/* 80022138 00017EB8  38 80 00 00 */	li r4, 0
/* 8002213C 00017EBC  7C 06 00 50 */	subf r0, r6, r0
/* 80022140 00017EC0  54 00 D9 7E */	srwi r0, r0, 5
/* 80022144 00017EC4  7C 09 03 A6 */	mtctr r0
/* 80022148 00017EC8  7C 06 28 40 */	cmplw r6, r5
/* 8002214C 00017ECC  40 80 00 2C */	bge lbl_80022178
lbl_80022150:
/* 80022150 00017ED0  90 86 00 00 */	stw r4, 0(r6)
/* 80022154 00017ED4  90 86 00 04 */	stw r4, 4(r6)
/* 80022158 00017ED8  90 86 00 08 */	stw r4, 8(r6)
/* 8002215C 00017EDC  90 86 00 0C */	stw r4, 0xc(r6)
/* 80022160 00017EE0  90 86 00 10 */	stw r4, 0x10(r6)
/* 80022164 00017EE4  90 86 00 14 */	stw r4, 0x14(r6)
/* 80022168 00017EE8  90 86 00 18 */	stw r4, 0x18(r6)
/* 8002216C 00017EEC  90 86 00 1C */	stw r4, 0x1c(r6)
/* 80022170 00017EF0  38 C6 00 20 */	addi r6, r6, 0x20
/* 80022174 00017EF4  42 00 FF DC */	bdnz lbl_80022150
lbl_80022178:
/* 80022178 00017EF8  38 83 02 04 */	addi r4, r3, 0x204
/* 8002217C 00017EFC  38 A0 00 00 */	li r5, 0
/* 80022180 00017F00  38 04 00 03 */	addi r0, r4, 3
/* 80022184 00017F04  7C 06 00 50 */	subf r0, r6, r0
/* 80022188 00017F08  54 00 F0 BE */	srwi r0, r0, 2
/* 8002218C 00017F0C  7C 09 03 A6 */	mtctr r0
/* 80022190 00017F10  7C 06 20 40 */	cmplw r6, r4
/* 80022194 00017F14  40 80 00 10 */	bge lbl_800221A4
lbl_80022198:
/* 80022198 00017F18  90 A6 00 00 */	stw r5, 0(r6)
/* 8002219C 00017F1C  38 C6 00 04 */	addi r6, r6, 4
/* 800221A0 00017F20  42 00 FF F8 */	bdnz lbl_80022198
lbl_800221A4:
/* 800221A4 00017F24  90 7F 00 18 */	stw r3, 0x18(r31)
/* 800221A8 00017F28  7F E3 FB 78 */	mr r3, r31
/* 800221AC 00017F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800221B0 00017F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800221B4 00017F34  7C 08 03 A6 */	mtlr r0
/* 800221B8 00017F38  38 21 00 10 */	addi r1, r1, 0x10
/* 800221BC 00017F3C  4E 80 00 20 */	blr 

.global gfFileIORequest$7__dt
gfFileIORequest$7__dt:
/* 800221C0 00017F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800221C4 00017F44  7C 08 02 A6 */	mflr r0
/* 800221C8 00017F48  2C 03 00 00 */	cmpwi r3, 0
/* 800221CC 00017F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800221D0 00017F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800221D4 00017F54  7C 7F 1B 78 */	mr r31, r3
/* 800221D8 00017F58  41 82 00 48 */	beq lbl_80022220
/* 800221DC 00017F5C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800221E0 00017F60  38 A0 00 01 */	li r5, 1
/* 800221E4 00017F64  50 A0 63 26 */	rlwimi r0, r5, 0xc, 0xc, 0x13
/* 800221E8 00017F68  2C 04 00 00 */	cmpwi r4, 0
/* 800221EC 00017F6C  90 03 00 18 */	stw r0, 0x18(r3)
/* 800221F0 00017F70  38 A0 00 00 */	li r5, 0
/* 800221F4 00017F74  88 83 00 17 */	lbz r4, 0x17(r3)
/* 800221F8 00017F78  88 03 00 18 */	lbz r0, 0x18(r3)
/* 800221FC 00017F7C  54 84 00 30 */	rlwinm r4, r4, 0, 0, 0x18
/* 80022200 00017F80  90 A3 00 20 */	stw r5, 0x20(r3)
/* 80022204 00017F84  54 00 07 2E */	rlwinm r0, r0, 0, 0x1c, 0x17
/* 80022208 00017F88  98 83 00 17 */	stb r4, 0x17(r3)
/* 8002220C 00017F8C  98 03 00 18 */	stb r0, 0x18(r3)
/* 80022210 00017F90  90 A3 00 00 */	stw r5, 0(r3)
/* 80022214 00017F94  98 A3 00 24 */	stb r5, 0x24(r3)
/* 80022218 00017F98  40 81 00 08 */	ble lbl_80022220
/* 8002221C 00017F9C  4B FE A6 AD */	bl __dl__FPv
lbl_80022220:
/* 80022220 00017FA0  7F E3 FB 78 */	mr r3, r31
/* 80022224 00017FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022228 00017FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002222C 00017FAC  7C 08 03 A6 */	mtlr r0
/* 80022230 00017FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80022234 00017FB4  4E 80 00 20 */	blr 

.global gfFileIORequest$7setParam
gfFileIORequest$7setParam:
/* 80022238 00017FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002223C 00017FBC  7C 08 02 A6 */	mflr r0
/* 80022240 00017FC0  38 E0 00 00 */	li r7, 0
/* 80022244 00017FC4  2C 04 00 00 */	cmpwi r4, 0
/* 80022248 00017FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002224C 00017FCC  38 00 00 01 */	li r0, 1
/* 80022250 00017FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022254 00017FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80022258 00017FD8  7C 7E 1B 78 */	mr r30, r3
/* 8002225C 00017FDC  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80022260 00017FE0  50 05 63 26 */	rlwimi r5, r0, 0xc, 0xc, 0x13
/* 80022264 00017FE4  88 03 00 17 */	lbz r0, 0x17(r3)
/* 80022268 00017FE8  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8002226C 00017FEC  54 05 00 30 */	rlwinm r5, r0, 0, 0, 0x18
/* 80022270 00017FF0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80022274 00017FF4  98 A3 00 17 */	stb r5, 0x17(r3)
/* 80022278 00017FF8  54 00 07 2E */	rlwinm r0, r0, 0, 0x1c, 0x17
/* 8002227C 00017FFC  98 03 00 18 */	stb r0, 0x18(r3)
/* 80022280 00018000  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80022284 00018004  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80022288 00018008  54 A5 02 3E */	clrlwi r5, r5, 8
/* 8002228C 0001800C  90 E3 00 00 */	stw r7, 0(r3)
/* 80022290 00018010  54 00 05 16 */	rlwinm r0, r0, 0, 0x14, 0xb
/* 80022294 00018014  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80022298 00018018  90 03 00 18 */	stw r0, 0x18(r3)
/* 8002229C 0001801C  88 A3 00 17 */	lbz r5, 0x17(r3)
/* 800222A0 00018020  80 CD BB D4 */	lwz r6, lbl_8059FFF4-_SDA_BASE_(r13)
/* 800222A4 00018024  88 03 00 18 */	lbz r0, 0x18(r3)
/* 800222A8 00018028  88 C6 00 98 */	lbz r6, 0x98(r6)
/* 800222AC 0001802C  54 00 07 32 */	rlwinm r0, r0, 0, 0x1c, 0x19
/* 800222B0 00018030  50 C5 D7 BC */	rlwimi r5, r6, 0x1a, 0x1e, 0x1e
/* 800222B4 00018034  90 E3 00 0C */	stw r7, 0xc(r3)
/* 800222B8 00018038  54 A5 06 F2 */	rlwinm r5, r5, 0, 0x1b, 0x19
/* 800222BC 0001803C  98 A3 00 17 */	stb r5, 0x17(r3)
/* 800222C0 00018040  90 E3 00 10 */	stw r7, 0x10(r3)
/* 800222C4 00018044  98 03 00 18 */	stb r0, 0x18(r3)
/* 800222C8 00018048  98 E3 00 24 */	stb r7, 0x24(r3)
/* 800222CC 0001804C  B0 E3 00 1C */	sth r7, 0x1c(r3)
/* 800222D0 00018050  41 82 00 34 */	beq lbl_80022304
/* 800222D4 00018054  38 03 00 24 */	addi r0, r3, 0x24
/* 800222D8 00018058  38 A0 00 7F */	li r5, 0x7f
/* 800222DC 0001805C  90 03 00 00 */	stw r0, 0(r3)
/* 800222E0 00018060  7C 03 03 78 */	mr r3, r0
/* 800222E4 00018064  48 3D 80 5D */	bl strncpy
/* 800222E8 00018068  83 FE 00 00 */	lwz r31, 0(r30)
/* 800222EC 0001806C  7F E3 FB 78 */	mr r3, r31
/* 800222F0 00018070  48 3C E3 51 */	bl strlen
/* 800222F4 00018074  7C 64 1B 78 */	mr r4, r3
/* 800222F8 00018078  7F E3 FB 78 */	mr r3, r31
/* 800222FC 0001807C  48 36 CA 55 */	bl NETCalcCRC16
/* 80022300 00018080  B0 7E 00 1C */	sth r3, 0x1c(r30)
lbl_80022304:
/* 80022304 00018084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022308 00018088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002230C 0001808C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80022310 00018090  7C 08 03 A6 */	mtlr r0
/* 80022314 00018094  38 21 00 10 */	addi r1, r1, 0x10
/* 80022318 00018098  4E 80 00 20 */	blr 

.global gfFileIORequest$7setReadParam
gfFileIORequest$7setReadParam:
/* 8002231C 0001809C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022320 000180A0  7C 08 02 A6 */	mflr r0
/* 80022324 000180A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022328 000180A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8002232C 000180AC  48 3C EF F5 */	bl _savegpr_27
/* 80022330 000180B0  7C 7B 1B 78 */	mr r27, r3
/* 80022334 000180B4  7C 9C 23 78 */	mr r28, r4
/* 80022338 000180B8  7C BD 2B 78 */	mr r29, r5
/* 8002233C 000180BC  7C DE 33 78 */	mr r30, r6
/* 80022340 000180C0  7C FF 3B 78 */	mr r31, r7
/* 80022344 000180C4  4B FF FE F5 */	bl gfFileIORequest$7setParam
/* 80022348 000180C8  88 1C 00 00 */	lbz r0, 0(r28)
/* 8002234C 000180CC  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 80022350 000180D0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80022354 000180D4  93 BB 00 10 */	stw r29, 0x10(r27)
/* 80022358 000180D8  54 63 03 06 */	rlwinm r3, r3, 0, 0xc, 3
/* 8002235C 000180DC  90 7B 00 18 */	stw r3, 0x18(r27)
/* 80022360 000180E0  93 DB 00 08 */	stw r30, 8(r27)
/* 80022364 000180E4  93 FB 00 04 */	stw r31, 4(r27)
/* 80022368 000180E8  40 82 00 1C */	bne lbl_80022384
/* 8002236C 000180EC  88 1C 00 01 */	lbz r0, 1(r28)
/* 80022370 000180F0  2C 00 00 66 */	cmpwi r0, 0x66
/* 80022374 000180F4  40 82 00 10 */	bne lbl_80022384
/* 80022378 000180F8  88 1B 00 18 */	lbz r0, 0x18(r27)
/* 8002237C 000180FC  60 00 00 10 */	ori r0, r0, 0x10
/* 80022380 00018100  98 1B 00 18 */	stb r0, 0x18(r27)
lbl_80022384:
/* 80022384 00018104  39 61 00 20 */	addi r11, r1, 0x20
/* 80022388 00018108  48 3C EF E5 */	bl _restgpr_27
/* 8002238C 0001810C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022390 00018110  7C 08 03 A6 */	mtlr r0
/* 80022394 00018114  38 21 00 20 */	addi r1, r1, 0x20
/* 80022398 00018118  4E 80 00 20 */	blr 

.global gfFileIORequest$7setReadParam_335
gfFileIORequest$7setReadParam_335:
/* 8002239C 0001811C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800223A0 00018120  7C 08 02 A6 */	mflr r0
/* 800223A4 00018124  90 01 00 24 */	stw r0, 0x24(r1)
/* 800223A8 00018128  39 61 00 20 */	addi r11, r1, 0x20
/* 800223AC 0001812C  48 3C EF 75 */	bl _savegpr_27
/* 800223B0 00018130  7C 7B 1B 78 */	mr r27, r3
/* 800223B4 00018134  7C 9C 23 78 */	mr r28, r4
/* 800223B8 00018138  7C BD 2B 78 */	mr r29, r5
/* 800223BC 0001813C  7C DE 33 78 */	mr r30, r6
/* 800223C0 00018140  7C FF 3B 78 */	mr r31, r7
/* 800223C4 00018144  4B FF FE 75 */	bl gfFileIORequest$7setParam
/* 800223C8 00018148  88 1C 00 00 */	lbz r0, 0(r28)
/* 800223CC 0001814C  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 800223D0 00018150  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800223D4 00018154  93 BB 00 0C */	stw r29, 0xc(r27)
/* 800223D8 00018158  54 63 03 06 */	rlwinm r3, r3, 0, 0xc, 3
/* 800223DC 0001815C  90 7B 00 18 */	stw r3, 0x18(r27)
/* 800223E0 00018160  93 DB 00 08 */	stw r30, 8(r27)
/* 800223E4 00018164  93 FB 00 04 */	stw r31, 4(r27)
/* 800223E8 00018168  40 82 00 1C */	bne lbl_80022404
/* 800223EC 0001816C  88 1C 00 01 */	lbz r0, 1(r28)
/* 800223F0 00018170  2C 00 00 66 */	cmpwi r0, 0x66
/* 800223F4 00018174  40 82 00 10 */	bne lbl_80022404
/* 800223F8 00018178  88 1B 00 18 */	lbz r0, 0x18(r27)
/* 800223FC 0001817C  60 00 00 10 */	ori r0, r0, 0x10
/* 80022400 00018180  98 1B 00 18 */	stb r0, 0x18(r27)
lbl_80022404:
/* 80022404 00018184  39 61 00 20 */	addi r11, r1, 0x20
/* 80022408 00018188  48 3C EF 65 */	bl _restgpr_27
/* 8002240C 0001818C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022410 00018190  7C 08 03 A6 */	mtlr r0
/* 80022414 00018194  38 21 00 20 */	addi r1, r1, 0x20
/* 80022418 00018198  4E 80 00 20 */	blr 

.global gfFileIORequest$7setWriteParam
gfFileIORequest$7setWriteParam:
/* 8002241C 0001819C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022420 000181A0  7C 08 02 A6 */	mflr r0
/* 80022424 000181A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022428 000181A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002242C 000181AC  7C FF 3B 78 */	mr r31, r7
/* 80022430 000181B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80022434 000181B4  7C DE 33 78 */	mr r30, r6
/* 80022438 000181B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8002243C 000181BC  7C BD 2B 78 */	mr r29, r5
/* 80022440 000181C0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80022444 000181C4  7C 7C 1B 78 */	mr r28, r3
/* 80022448 000181C8  4B FF FD F1 */	bl gfFileIORequest$7setParam
/* 8002244C 000181CC  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80022450 000181D0  38 00 00 01 */	li r0, 1
/* 80022454 000181D4  50 03 A1 16 */	rlwimi r3, r0, 0x14, 4, 0xb
/* 80022458 000181D8  93 BC 00 0C */	stw r29, 0xc(r28)
/* 8002245C 000181DC  38 00 00 00 */	li r0, 0
/* 80022460 000181E0  90 7C 00 18 */	stw r3, 0x18(r28)
/* 80022464 000181E4  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80022468 000181E8  93 DC 00 08 */	stw r30, 8(r28)
/* 8002246C 000181EC  93 FC 00 04 */	stw r31, 4(r28)
/* 80022470 000181F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80022474 000181F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80022478 000181F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8002247C 000181FC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80022480 00018200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022484 00018204  7C 08 03 A6 */	mtlr r0
/* 80022488 00018208  38 21 00 20 */	addi r1, r1, 0x20
/* 8002248C 0001820C  4E 80 00 20 */	blr 


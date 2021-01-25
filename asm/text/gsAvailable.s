.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global GSIStartAvailableCheckA
GSIStartAvailableCheckA:
/* 8035E02C 00353DAC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8035E030 00353DB0  7C 08 02 A6 */	mflr r0
/* 8035E034 00353DB4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8035E038 00353DB8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8035E03C 00353DBC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8035E040 00353DC0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8035E044 00353DC4  3F A0 80 53 */	lis r29, lbl_80534808@ha
/* 8035E048 00353DC8  3B BD 48 08 */	addi r29, r29, lbl_80534808@l
/* 8035E04C 00353DCC  93 81 00 50 */	stw r28, 0x50(r1)
/* 8035E050 00353DD0  7C 7C 1B 78 */	mr r28, r3
/* 8035E054 00353DD4  7F 84 E3 78 */	mr r4, r28
/* 8035E058 00353DD8  38 7D 00 00 */	addi r3, r29, 0
/* 8035E05C 00353DDC  48 09 C2 25 */	bl strcpy
/* 8035E060 00353DE0  38 00 FF FF */	li r0, -1
/* 8035E064 00353DE4  90 1D 00 80 */	stw r0, 0x80(r29)
/* 8035E068 00353DE8  4B FF F6 B9 */	bl SocketStartUp
/* 8035E06C 00353DEC  8B FD 00 40 */	lbz r31, 0x40(r29)
/* 8035E070 00353DF0  7F FF 07 75 */	extsb. r31, r31
/* 8035E074 00353DF4  40 82 00 1C */	bne lbl_8035E090
/* 8035E078 00353DF8  3C 80 80 49 */	lis r4, lbl_8048E870@ha
/* 8035E07C 00353DFC  7F 85 E3 78 */	mr r5, r28
/* 8035E080 00353E00  38 61 00 08 */	addi r3, r1, 8
/* 8035E084 00353E04  38 84 E8 70 */	addi r4, r4, lbl_8048E870@l
/* 8035E088 00353E08  4C C6 31 82 */	crclr 6
/* 8035E08C 00353E0C  48 09 A9 71 */	bl sprintf
lbl_8035E090:
/* 8035E090 00353E10  3B DD 00 80 */	addi r30, r29, 0x80
/* 8035E094 00353E14  38 00 00 02 */	li r0, 2
/* 8035E098 00353E18  98 1E 00 05 */	stb r0, 5(r30)
/* 8035E09C 00353E1C  38 60 6C FC */	li r3, 0x6cfc
/* 8035E0A0 00353E20  48 04 9A 65 */	bl SOHtoNs
/* 8035E0A4 00353E24  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E0A8 00353E28  B0 7E 00 06 */	sth r3, 6(r30)
/* 8035E0AC 00353E2C  38 61 00 08 */	addi r3, r1, 8
/* 8035E0B0 00353E30  41 82 00 08 */	beq lbl_8035E0B8
/* 8035E0B4 00353E34  38 7D 00 40 */	addi r3, r29, 0x40
lbl_8035E0B8:
/* 8035E0B8 00353E38  4B FF E5 69 */	bl inet_addr
/* 8035E0BC 00353E3C  3C 03 00 01 */	addis r0, r3, 1
/* 8035E0C0 00353E40  38 9D 00 80 */	addi r4, r29, 0x80
/* 8035E0C4 00353E44  28 00 FF FF */	cmplwi r0, 0xffff
/* 8035E0C8 00353E48  90 64 00 08 */	stw r3, 8(r4)
/* 8035E0CC 00353E4C  40 82 00 3C */	bne lbl_8035E108
/* 8035E0D0 00353E50  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E0D4 00353E54  38 61 00 08 */	addi r3, r1, 8
/* 8035E0D8 00353E58  41 82 00 08 */	beq lbl_8035E0E0
/* 8035E0DC 00353E5C  38 7D 00 40 */	addi r3, r29, 0x40
lbl_8035E0E0:
/* 8035E0E0 00353E60  4B FF E6 A9 */	bl gethostbyname
/* 8035E0E4 00353E64  2C 03 00 00 */	cmpwi r3, 0
/* 8035E0E8 00353E68  40 82 00 0C */	bne lbl_8035E0F4
/* 8035E0EC 00353E6C  38 00 00 00 */	li r0, 0
/* 8035E0F0 00353E70  48 00 00 1C */	b lbl_8035E10C
lbl_8035E0F4:
/* 8035E0F4 00353E74  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8035E0F8 00353E78  38 7D 00 80 */	addi r3, r29, 0x80
/* 8035E0FC 00353E7C  80 84 00 00 */	lwz r4, 0(r4)
/* 8035E100 00353E80  80 04 00 00 */	lwz r0, 0(r4)
/* 8035E104 00353E84  90 03 00 08 */	stw r0, 8(r3)
lbl_8035E108:
/* 8035E108 00353E88  38 00 00 01 */	li r0, 1
lbl_8035E10C:
/* 8035E10C 00353E8C  2C 00 00 00 */	cmpwi r0, 0
/* 8035E110 00353E90  41 82 00 78 */	beq lbl_8035E188
/* 8035E114 00353E94  38 60 00 02 */	li r3, 2
/* 8035E118 00353E98  38 80 00 02 */	li r4, 2
/* 8035E11C 00353E9C  38 A0 00 11 */	li r5, 0x11
/* 8035E120 00353EA0  4B FF E1 4D */	bl socket
/* 8035E124 00353EA4  2C 03 FF FF */	cmpwi r3, -1
/* 8035E128 00353EA8  90 7D 00 80 */	stw r3, 0x80(r29)
/* 8035E12C 00353EAC  41 82 00 5C */	beq lbl_8035E188
/* 8035E130 00353EB0  3B DD 00 80 */	addi r30, r29, 0x80
/* 8035E134 00353EB4  38 00 00 09 */	li r0, 9
/* 8035E138 00353EB8  98 1E 00 0C */	stb r0, 0xc(r30)
/* 8035E13C 00353EBC  7F 83 E3 78 */	mr r3, r28
/* 8035E140 00353EC0  48 09 25 01 */	bl strlen
/* 8035E144 00353EC4  7C 7F 1B 78 */	mr r31, r3
/* 8035E148 00353EC8  7F 84 E3 78 */	mr r4, r28
/* 8035E14C 00353ECC  38 7E 00 11 */	addi r3, r30, 0x11
/* 8035E150 00353ED0  38 BF 00 01 */	addi r5, r31, 1
/* 8035E154 00353ED4  4B CA 61 E5 */	bl func_80004338
/* 8035E158 00353ED8  38 BF 00 06 */	addi r5, r31, 6
/* 8035E15C 00353EDC  80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8035E160 00353EE0  90 BE 00 4C */	stw r5, 0x4c(r30)
/* 8035E164 00353EE4  38 9E 00 0C */	addi r4, r30, 0xc
/* 8035E168 00353EE8  38 FE 00 04 */	addi r7, r30, 4
/* 8035E16C 00353EEC  38 C0 00 00 */	li r6, 0
/* 8035E170 00353EF0  39 00 00 08 */	li r8, 8
/* 8035E174 00353EF4  4B FF E3 D1 */	bl sendto
/* 8035E178 00353EF8  4B FF F5 B1 */	bl current_time
/* 8035E17C 00353EFC  38 00 00 00 */	li r0, 0
/* 8035E180 00353F00  90 7E 00 50 */	stw r3, 0x50(r30)
/* 8035E184 00353F04  90 1E 00 54 */	stw r0, 0x54(r30)
lbl_8035E188:
/* 8035E188 00353F08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8035E18C 00353F0C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8035E190 00353F10  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8035E194 00353F14  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8035E198 00353F18  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8035E19C 00353F1C  7C 08 03 A6 */	mtlr r0
/* 8035E1A0 00353F20  38 21 00 60 */	addi r1, r1, 0x60
/* 8035E1A4 00353F24  4E 80 00 20 */	blr 

.global GSIAvailableCheckThink
GSIAvailableCheckThink:
/* 8035E1A8 00353F28  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8035E1AC 00353F2C  7C 2C 0B 78 */	mr r12, r1
/* 8035E1B0 00353F30  21 6B FF 60 */	subfic r11, r11, -160
/* 8035E1B4 00353F34  7C 21 59 6E */	stwux r1, r1, r11
/* 8035E1B8 00353F38  7C 08 02 A6 */	mflr r0
/* 8035E1BC 00353F3C  90 0C 00 04 */	stw r0, 4(r12)
/* 8035E1C0 00353F40  38 00 00 08 */	li r0, 8
/* 8035E1C4 00353F44  93 EC FF FC */	stw r31, -4(r12)
/* 8035E1C8 00353F48  3F E0 80 53 */	lis r31, lbl_80534888@ha
/* 8035E1CC 00353F4C  80 7F 48 88 */	lwz r3, lbl_80534888@l(r31)
/* 8035E1D0 00353F50  90 01 00 20 */	stw r0, 0x20(r1)
/* 8035E1D4 00353F54  2C 03 FF FF */	cmpwi r3, -1
/* 8035E1D8 00353F58  40 82 00 14 */	bne lbl_8035E1EC
/* 8035E1DC 00353F5C  38 00 00 01 */	li r0, 1
/* 8035E1E0 00353F60  38 60 00 01 */	li r3, 1
/* 8035E1E4 00353F64  90 0D CC 28 */	stw r0, lbl_805A1048-_SDA_BASE_(r13)
/* 8035E1E8 00353F68  48 00 01 80 */	b lbl_8035E368
lbl_8035E1EC:
/* 8035E1EC 00353F6C  4B FF ED 11 */	bl DWC_NdProcess
/* 8035E1F0 00353F70  2C 03 00 00 */	cmpwi r3, 0
/* 8035E1F4 00353F74  41 82 01 00 */	beq lbl_8035E2F4
/* 8035E1F8 00353F78  80 7F 48 88 */	lwz r3, 0x4888(r31)
/* 8035E1FC 00353F7C  38 81 00 40 */	addi r4, r1, 0x40
/* 8035E200 00353F80  38 E1 00 28 */	addi r7, r1, 0x28
/* 8035E204 00353F84  39 01 00 20 */	addi r8, r1, 0x20
/* 8035E208 00353F88  38 A0 00 40 */	li r5, 0x40
/* 8035E20C 00353F8C  38 C0 00 00 */	li r6, 0
/* 8035E210 00353F90  4B FF E2 A1 */	bl recvfrom
/* 8035E214 00353F94  2C 03 00 07 */	cmpwi r3, 7
/* 8035E218 00353F98  40 80 00 0C */	bge lbl_8035E224
/* 8035E21C 00353F9C  38 A0 00 01 */	li r5, 1
/* 8035E220 00353FA0  48 00 00 88 */	b lbl_8035E2A8
lbl_8035E224:
/* 8035E224 00353FA4  3B FF 48 88 */	addi r31, r31, 0x4888
/* 8035E228 00353FA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8035E22C 00353FAC  38 9F 00 08 */	addi r4, r31, 8
/* 8035E230 00353FB0  38 A0 00 04 */	li r5, 4
/* 8035E234 00353FB4  48 09 7F 1D */	bl memcmp
/* 8035E238 00353FB8  2C 03 00 00 */	cmpwi r3, 0
/* 8035E23C 00353FBC  41 82 00 0C */	beq lbl_8035E248
/* 8035E240 00353FC0  38 A0 00 01 */	li r5, 1
/* 8035E244 00353FC4  48 00 00 64 */	b lbl_8035E2A8
lbl_8035E248:
/* 8035E248 00353FC8  A0 61 00 2A */	lhz r3, 0x2a(r1)
/* 8035E24C 00353FCC  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8035E250 00353FD0  7C 03 00 40 */	cmplw r3, r0
/* 8035E254 00353FD4  41 82 00 0C */	beq lbl_8035E260
/* 8035E258 00353FD8  38 A0 00 01 */	li r5, 1
/* 8035E25C 00353FDC  48 00 00 4C */	b lbl_8035E2A8
lbl_8035E260:
/* 8035E260 00353FE0  38 61 00 40 */	addi r3, r1, 0x40
/* 8035E264 00353FE4  38 8D B1 80 */	addi r4, r13, lbl_8059F5A0-_SDA_BASE_
/* 8035E268 00353FE8  38 A0 00 03 */	li r5, 3
/* 8035E26C 00353FEC  48 09 7E E5 */	bl memcmp
/* 8035E270 00353FF0  2C 03 00 00 */	cmpwi r3, 0
/* 8035E274 00353FF4  41 82 00 0C */	beq lbl_8035E280
/* 8035E278 00353FF8  38 A0 00 01 */	li r5, 1
/* 8035E27C 00353FFC  48 00 00 2C */	b lbl_8035E2A8
lbl_8035E280:
/* 8035E280 00354000  88 01 00 44 */	lbz r0, 0x44(r1)
/* 8035E284 00354004  38 A0 00 00 */	li r5, 0
/* 8035E288 00354008  88 61 00 45 */	lbz r3, 0x45(r1)
/* 8035E28C 0035400C  54 06 82 1E */	rlwinm r6, r0, 0x10, 8, 0xf
/* 8035E290 00354010  88 81 00 43 */	lbz r4, 0x43(r1)
/* 8035E294 00354014  88 01 00 46 */	lbz r0, 0x46(r1)
/* 8035E298 00354018  54 63 44 2E */	rlwinm r3, r3, 8, 0x10, 0x17
/* 8035E29C 0035401C  50 86 C0 0E */	rlwimi r6, r4, 0x18, 0, 7
/* 8035E2A0 00354020  7C C6 1B 78 */	or r6, r6, r3
/* 8035E2A4 00354024  7C DF 03 78 */	or r31, r6, r0
lbl_8035E2A8:
/* 8035E2A8 00354028  2C 05 00 00 */	cmpwi r5, 0
/* 8035E2AC 0035402C  40 82 00 48 */	bne lbl_8035E2F4
/* 8035E2B0 00354030  3C 60 80 53 */	lis r3, lbl_80534888@ha
/* 8035E2B4 00354034  80 63 48 88 */	lwz r3, lbl_80534888@l(r3)
/* 8035E2B8 00354038  4B FF DF ED */	bl closesocket
/* 8035E2BC 0035403C  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8035E2C0 00354040  41 82 00 10 */	beq lbl_8035E2D0
/* 8035E2C4 00354044  38 00 00 02 */	li r0, 2
/* 8035E2C8 00354048  90 0D CC 28 */	stw r0, lbl_805A1048-_SDA_BASE_(r13)
/* 8035E2CC 0035404C  48 00 00 20 */	b lbl_8035E2EC
lbl_8035E2D0:
/* 8035E2D0 00354050  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 8035E2D4 00354054  41 82 00 10 */	beq lbl_8035E2E4
/* 8035E2D8 00354058  38 00 00 03 */	li r0, 3
/* 8035E2DC 0035405C  90 0D CC 28 */	stw r0, lbl_805A1048-_SDA_BASE_(r13)
/* 8035E2E0 00354060  48 00 00 0C */	b lbl_8035E2EC
lbl_8035E2E4:
/* 8035E2E4 00354064  38 00 00 01 */	li r0, 1
/* 8035E2E8 00354068  90 0D CC 28 */	stw r0, lbl_805A1048-_SDA_BASE_(r13)
lbl_8035E2EC:
/* 8035E2EC 0035406C  7C 03 03 78 */	mr r3, r0
/* 8035E2F0 00354070  48 00 00 78 */	b lbl_8035E368
lbl_8035E2F4:
/* 8035E2F4 00354074  4B FF F4 35 */	bl current_time
/* 8035E2F8 00354078  3C A0 80 53 */	lis r5, lbl_80534888@ha
/* 8035E2FC 0035407C  3B E5 48 88 */	addi r31, r5, lbl_80534888@l
/* 8035E300 00354080  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 8035E304 00354084  38 04 07 D0 */	addi r0, r4, 0x7d0
/* 8035E308 00354088  7C 03 00 40 */	cmplw r3, r0
/* 8035E30C 0035408C  40 81 00 58 */	ble lbl_8035E364
/* 8035E310 00354090  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8035E314 00354094  2C 00 00 01 */	cmpwi r0, 1
/* 8035E318 00354098  40 82 00 1C */	bne lbl_8035E334
/* 8035E31C 0035409C  80 65 48 88 */	lwz r3, 0x4888(r5)
/* 8035E320 003540A0  4B FF DF 85 */	bl closesocket
/* 8035E324 003540A4  38 00 00 01 */	li r0, 1
/* 8035E328 003540A8  38 60 00 01 */	li r3, 1
/* 8035E32C 003540AC  90 0D CC 28 */	stw r0, lbl_805A1048-_SDA_BASE_(r13)
/* 8035E330 003540B0  48 00 00 38 */	b lbl_8035E368
lbl_8035E334:
/* 8035E334 003540B4  80 65 48 88 */	lwz r3, 0x4888(r5)
/* 8035E338 003540B8  38 9F 00 0C */	addi r4, r31, 0xc
/* 8035E33C 003540BC  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 8035E340 003540C0  38 FF 00 04 */	addi r7, r31, 4
/* 8035E344 003540C4  38 C0 00 00 */	li r6, 0
/* 8035E348 003540C8  39 00 00 08 */	li r8, 8
/* 8035E34C 003540CC  4B FF E1 F9 */	bl sendto
/* 8035E350 003540D0  4B FF F3 D9 */	bl current_time
/* 8035E354 003540D4  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 8035E358 003540D8  90 7F 00 50 */	stw r3, 0x50(r31)
/* 8035E35C 003540DC  38 04 00 01 */	addi r0, r4, 1
/* 8035E360 003540E0  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_8035E364:
/* 8035E364 003540E4  38 60 00 00 */	li r3, 0
lbl_8035E368:
/* 8035E368 003540E8  81 41 00 00 */	lwz r10, 0(r1)
/* 8035E36C 003540EC  80 0A 00 04 */	lwz r0, 4(r10)
/* 8035E370 003540F0  83 EA FF FC */	lwz r31, -4(r10)
/* 8035E374 003540F4  7C 08 03 A6 */	mtlr r0
/* 8035E378 003540F8  7D 41 53 78 */	mr r1, r10
/* 8035E37C 003540FC  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail11MmlSeqTrackFv$7__ct
nw4r3snd6detail11MmlSeqTrackFv$7__ct:
/* 801C200C 001B7D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2010 001B7D90  7C 08 02 A6 */	mflr r0
/* 801C2014 001B7D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2018 001B7D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C201C 001B7D9C  7C 7F 1B 78 */	mr r31, r3
/* 801C2020 001B7DA0  48 00 2A E9 */	bl nw4r3snd6detail8SeqTrackFv$7__ct
/* 801C2024 001B7DA4  3C A0 80 46 */	lis r5, lbl_804669C8@ha
/* 801C2028 001B7DA8  38 80 00 01 */	li r4, 1
/* 801C202C 001B7DAC  38 00 00 00 */	li r0, 0
/* 801C2030 001B7DB0  98 9F 00 C5 */	stb r4, 0xc5(r31)
/* 801C2034 001B7DB4  38 A5 69 C8 */	addi r5, r5, lbl_804669C8@l
/* 801C2038 001B7DB8  7F E3 FB 78 */	mr r3, r31
/* 801C203C 001B7DBC  90 BF 00 00 */	stw r5, 0(r31)
/* 801C2040 001B7DC0  98 1F 00 C6 */	stb r0, 0xc6(r31)
/* 801C2044 001B7DC4  98 9F 00 C4 */	stb r4, 0xc4(r31)
/* 801C2048 001B7DC8  98 1F 00 CA */	stb r0, 0xca(r31)
/* 801C204C 001B7DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2050 001B7DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C2054 001B7DD4  7C 08 03 A6 */	mtlr r0
/* 801C2058 001B7DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 801C205C 001B7DDC  4E 80 00 20 */	blr 

.global nw4r3snd6detail11MmlSeqTrackFb$7Parse
nw4r3snd6detail11MmlSeqTrackFb$7Parse:
/* 801C2060 001B7DE0  7C 60 1B 78 */	mr r0, r3
/* 801C2064 001B7DE4  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801C2068 001B7DE8  7C 85 23 78 */	mr r5, r4
/* 801C206C 001B7DEC  7C 04 03 78 */	mr r4, r0
/* 801C2070 001B7DF0  4B FF F0 B0 */	b nw4r3snd6detail9MmlParserCFPQ44nw4r3snd6deta$7Parse

.global nw4r3snd6detail11MmlSeqTrackFv$7__dt
nw4r3snd6detail11MmlSeqTrackFv$7__dt:
/* 801C2074 001B7DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2078 001B7DF8  7C 08 02 A6 */	mflr r0
/* 801C207C 001B7DFC  2C 03 00 00 */	cmpwi r3, 0
/* 801C2080 001B7E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2084 001B7E04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C2088 001B7E08  7C 9F 23 78 */	mr r31, r4
/* 801C208C 001B7E0C  93 C1 00 08 */	stw r30, 8(r1)
/* 801C2090 001B7E10  7C 7E 1B 78 */	mr r30, r3
/* 801C2094 001B7E14  41 82 00 1C */	beq lbl_801C20B0
/* 801C2098 001B7E18  38 80 00 00 */	li r4, 0
/* 801C209C 001B7E1C  48 00 2A CD */	bl nw4r3snd6detail8SeqTrackFv$7__dt
/* 801C20A0 001B7E20  2C 1F 00 00 */	cmpwi r31, 0
/* 801C20A4 001B7E24  40 81 00 0C */	ble lbl_801C20B0
/* 801C20A8 001B7E28  7F C3 F3 78 */	mr r3, r30
/* 801C20AC 001B7E2C  4B E4 A8 1D */	bl __dl__FPv
lbl_801C20B0:
/* 801C20B0 001B7E30  7F C3 F3 78 */	mr r3, r30
/* 801C20B4 001B7E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C20B8 001B7E38  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C20BC 001B7E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C20C0 001B7E40  7C 08 03 A6 */	mtlr r0
/* 801C20C4 001B7E44  38 21 00 10 */	addi r1, r1, 0x10
/* 801C20C8 001B7E48  4E 80 00 20 */	blr 


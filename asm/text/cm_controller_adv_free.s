.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global cmAdventureFreeController$7__ct
cmAdventureFreeController$7__ct:
/* 800A5F70 0009BCF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5F74 0009BCF4  7C 08 02 A6 */	mflr r0
/* 800A5F78 0009BCF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A5F7C 0009BCFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A5F80 0009BD00  7C 7F 1B 78 */	mr r31, r3
/* 800A5F84 0009BD04  4B FF DF ED */	bl cmAdventureController$7__ct
/* 800A5F88 0009BD08  88 1F 00 0B */	lbz r0, 0xb(r31)
/* 800A5F8C 0009BD0C  3C 80 80 45 */	lis r4, lbl_80454E30@ha
/* 800A5F90 0009BD10  38 84 4E 30 */	addi r4, r4, lbl_80454E30@l
/* 800A5F94 0009BD14  7F E3 FB 78 */	mr r3, r31
/* 800A5F98 0009BD18  60 00 00 10 */	ori r0, r0, 0x10
/* 800A5F9C 0009BD1C  90 9F 00 04 */	stw r4, 4(r31)
/* 800A5FA0 0009BD20  98 1F 00 0B */	stb r0, 0xb(r31)
/* 800A5FA4 0009BD24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A5FA8 0009BD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A5FAC 0009BD2C  7C 08 03 A6 */	mtlr r0
/* 800A5FB0 0009BD30  38 21 00 10 */	addi r1, r1, 0x10
/* 800A5FB4 0009BD34  4E 80 00 20 */	blr 

.global __sinit_$3cm_controller_adv_free_cpp
__sinit_$3cm_controller_adv_free_cpp:
/* 800A5FB8 0009BD38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800A5FBC 0009BD3C  7C 08 02 A6 */	mflr r0
/* 800A5FC0 0009BD40  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A5FC4 0009BD44  39 61 00 50 */	addi r11, r1, 0x50
/* 800A5FC8 0009BD48  48 34 B3 2D */	bl _savegpr_16
/* 800A5FCC 0009BD4C  3E 40 80 4A */	lis r18, lbl_8049DEE8@ha
/* 800A5FD0 0009BD50  82 2D 98 30 */	lwz r17, lbl_8059DC50-_SDA_BASE_(r13)
/* 800A5FD4 0009BD54  83 AD 98 38 */	lwz r29, lbl_8059DC58-_SDA_BASE_(r13)
/* 800A5FD8 0009BD58  38 72 DE E8 */	addi r3, r18, lbl_8049DEE8@l
/* 800A5FDC 0009BD5C  83 8D 98 40 */	lwz r28, lbl_8059DC60-_SDA_BASE_(r13)
/* 800A5FE0 0009BD60  83 6D 98 48 */	lwz r27, lbl_8059DC68-_SDA_BASE_(r13)
/* 800A5FE4 0009BD64  83 4D 98 50 */	lwz r26, lbl_8059DC70-_SDA_BASE_(r13)
/* 800A5FE8 0009BD68  83 2D 98 58 */	lwz r25, lbl_8059DC78-_SDA_BASE_(r13)
/* 800A5FEC 0009BD6C  83 0D 98 60 */	lwz r24, lbl_8059DC80-_SDA_BASE_(r13)
/* 800A5FF0 0009BD70  82 ED 98 68 */	lwz r23, lbl_8059DC88-_SDA_BASE_(r13)
/* 800A5FF4 0009BD74  82 CD 98 70 */	lwz r22, lbl_8059DC90-_SDA_BASE_(r13)
/* 800A5FF8 0009BD78  82 AD 98 78 */	lwz r21, lbl_8059DC98-_SDA_BASE_(r13)
/* 800A5FFC 0009BD7C  82 8D 98 80 */	lwz r20, lbl_8059DCA0-_SDA_BASE_(r13)
/* 800A6000 0009BD80  82 6D 98 88 */	lwz r19, lbl_8059DCA8-_SDA_BASE_(r13)
/* 800A6004 0009BD84  80 AD 98 90 */	lwz r5, lbl_8059DCB0-_SDA_BASE_(r13)
/* 800A6008 0009BD88  80 8D 98 98 */	lwz r4, lbl_8059DCB8-_SDA_BASE_(r13)
/* 800A600C 0009BD8C  80 0D 98 A0 */	lwz r0, lbl_8059DCC0-_SDA_BASE_(r13)
/* 800A6010 0009BD90  82 0D 98 A8 */	lwz r16, lbl_8059DCC8-_SDA_BASE_(r13)
/* 800A6014 0009BD94  81 4D 98 B0 */	lwz r10, lbl_8059DCD0-_SDA_BASE_(r13)
/* 800A6018 0009BD98  81 2D 98 B8 */	lwz r9, lbl_8059DCD8-_SDA_BASE_(r13)
/* 800A601C 0009BD9C  81 0D 98 C0 */	lwz r8, lbl_8059DCE0-_SDA_BASE_(r13)
/* 800A6020 0009BDA0  80 ED 98 C8 */	lwz r7, lbl_8059DCE8-_SDA_BASE_(r13)
/* 800A6024 0009BDA4  80 CD 98 D0 */	lwz r6, lbl_8059DCF0-_SDA_BASE_(r13)
/* 800A6028 0009BDA8  92 32 DE E8 */	stw r17, -0x2118(r18)
/* 800A602C 0009BDAC  93 A3 00 04 */	stw r29, 4(r3)
/* 800A6030 0009BDB0  93 83 00 08 */	stw r28, 8(r3)
/* 800A6034 0009BDB4  93 63 00 0C */	stw r27, 0xc(r3)
/* 800A6038 0009BDB8  93 43 00 10 */	stw r26, 0x10(r3)
/* 800A603C 0009BDBC  93 23 00 14 */	stw r25, 0x14(r3)
/* 800A6040 0009BDC0  93 03 00 18 */	stw r24, 0x18(r3)
/* 800A6044 0009BDC4  92 E3 00 1C */	stw r23, 0x1c(r3)
/* 800A6048 0009BDC8  92 C3 00 20 */	stw r22, 0x20(r3)
/* 800A604C 0009BDCC  92 A3 00 24 */	stw r21, 0x24(r3)
/* 800A6050 0009BDD0  92 83 00 28 */	stw r20, 0x28(r3)
/* 800A6054 0009BDD4  92 63 00 2C */	stw r19, 0x2c(r3)
/* 800A6058 0009BDD8  90 A3 00 30 */	stw r5, 0x30(r3)
/* 800A605C 0009BDDC  90 83 00 34 */	stw r4, 0x34(r3)
/* 800A6060 0009BDE0  90 03 00 38 */	stw r0, 0x38(r3)
/* 800A6064 0009BDE4  92 03 00 3C */	stw r16, 0x3c(r3)
/* 800A6068 0009BDE8  91 43 00 40 */	stw r10, 0x40(r3)
/* 800A606C 0009BDEC  91 23 00 44 */	stw r9, 0x44(r3)
/* 800A6070 0009BDF0  91 03 00 48 */	stw r8, 0x48(r3)
/* 800A6074 0009BDF4  90 E3 00 4C */	stw r7, 0x4c(r3)
/* 800A6078 0009BDF8  90 C3 00 50 */	stw r6, 0x50(r3)
/* 800A607C 0009BDFC  83 CD 98 D8 */	lwz r30, lbl_8059DCF8-_SDA_BASE_(r13)
/* 800A6080 0009BE00  39 8D 99 78 */	addi r12, r13, lbl_8059DD98-_SDA_BASE_
/* 800A6084 0009BE04  83 AD 98 E0 */	lwz r29, lbl_8059DD00-_SDA_BASE_(r13)
/* 800A6088 0009BE08  83 8D 98 E8 */	lwz r28, lbl_8059DD08-_SDA_BASE_(r13)
/* 800A608C 0009BE0C  83 6D 98 F0 */	lwz r27, lbl_8059DD10-_SDA_BASE_(r13)
/* 800A6090 0009BE10  83 4D 98 F8 */	lwz r26, lbl_8059DD18-_SDA_BASE_(r13)
/* 800A6094 0009BE14  83 2D 99 00 */	lwz r25, lbl_8059DD20-_SDA_BASE_(r13)
/* 800A6098 0009BE18  83 0D 99 08 */	lwz r24, lbl_8059DD28-_SDA_BASE_(r13)
/* 800A609C 0009BE1C  82 ED 99 10 */	lwz r23, lbl_8059DD30-_SDA_BASE_(r13)
/* 800A60A0 0009BE20  82 CD 99 18 */	lwz r22, lbl_8059DD38-_SDA_BASE_(r13)
/* 800A60A4 0009BE24  82 AD 99 20 */	lwz r21, lbl_8059DD40-_SDA_BASE_(r13)
/* 800A60A8 0009BE28  82 8D 99 28 */	lwz r20, lbl_8059DD48-_SDA_BASE_(r13)
/* 800A60AC 0009BE2C  82 6D 99 30 */	lwz r19, lbl_8059DD50-_SDA_BASE_(r13)
/* 800A60B0 0009BE30  80 0D 99 38 */	lwz r0, lbl_8059DD58-_SDA_BASE_(r13)
/* 800A60B4 0009BE34  82 4D 99 40 */	lwz r18, lbl_8059DD60-_SDA_BASE_(r13)
/* 800A60B8 0009BE38  82 2D 99 48 */	lwz r17, lbl_8059DD68-_SDA_BASE_(r13)
/* 800A60BC 0009BE3C  82 0D 99 50 */	lwz r16, lbl_8059DD70-_SDA_BASE_(r13)
/* 800A60C0 0009BE40  80 ED 99 58 */	lwz r7, lbl_8059DD78-_SDA_BASE_(r13)
/* 800A60C4 0009BE44  80 CD 99 60 */	lwz r6, lbl_8059DD80-_SDA_BASE_(r13)
/* 800A60C8 0009BE48  80 AD 99 68 */	lwz r5, lbl_8059DD88-_SDA_BASE_(r13)
/* 800A60CC 0009BE4C  80 8D 99 70 */	lwz r4, lbl_8059DD90-_SDA_BASE_(r13)
/* 800A60D0 0009BE50  93 C3 00 54 */	stw r30, 0x54(r3)
/* 800A60D4 0009BE54  93 A3 00 58 */	stw r29, 0x58(r3)
/* 800A60D8 0009BE58  93 83 00 5C */	stw r28, 0x5c(r3)
/* 800A60DC 0009BE5C  93 63 00 60 */	stw r27, 0x60(r3)
/* 800A60E0 0009BE60  93 43 00 64 */	stw r26, 0x64(r3)
/* 800A60E4 0009BE64  93 23 00 68 */	stw r25, 0x68(r3)
/* 800A60E8 0009BE68  93 03 00 6C */	stw r24, 0x6c(r3)
/* 800A60EC 0009BE6C  92 E3 00 70 */	stw r23, 0x70(r3)
/* 800A60F0 0009BE70  92 C3 00 74 */	stw r22, 0x74(r3)
/* 800A60F4 0009BE74  92 A3 00 78 */	stw r21, 0x78(r3)
/* 800A60F8 0009BE78  92 83 00 7C */	stw r20, 0x7c(r3)
/* 800A60FC 0009BE7C  92 63 00 80 */	stw r19, 0x80(r3)
/* 800A6100 0009BE80  90 03 00 84 */	stw r0, 0x84(r3)
/* 800A6104 0009BE84  92 43 00 88 */	stw r18, 0x88(r3)
/* 800A6108 0009BE88  92 23 00 8C */	stw r17, 0x8c(r3)
/* 800A610C 0009BE8C  92 03 00 90 */	stw r16, 0x90(r3)
/* 800A6110 0009BE90  90 E3 00 94 */	stw r7, 0x94(r3)
/* 800A6114 0009BE94  90 C3 00 98 */	stw r6, 0x98(r3)
/* 800A6118 0009BE98  90 A3 00 9C */	stw r5, 0x9c(r3)
/* 800A611C 0009BE9C  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 800A6120 0009BEA0  82 6C 00 00 */	lwz r19, 0(r12)
/* 800A6124 0009BEA4  82 8D 99 80 */	lwz r20, lbl_8059DDA0-_SDA_BASE_(r13)
/* 800A6128 0009BEA8  82 AD 99 88 */	lwz r21, lbl_8059DDA8-_SDA_BASE_(r13)
/* 800A612C 0009BEAC  82 CD 99 90 */	lwz r22, lbl_8059DDB0-_SDA_BASE_(r13)
/* 800A6130 0009BEB0  82 ED 99 98 */	lwz r23, lbl_8059DDB8-_SDA_BASE_(r13)
/* 800A6134 0009BEB4  83 0D 99 A0 */	lwz r24, lbl_8059DDC0-_SDA_BASE_(r13)
/* 800A6138 0009BEB8  83 2D 99 A8 */	lwz r25, lbl_8059DDC8-_SDA_BASE_(r13)
/* 800A613C 0009BEBC  83 4D 99 B0 */	lwz r26, lbl_8059DDD0-_SDA_BASE_(r13)
/* 800A6140 0009BEC0  83 6D 99 B8 */	lwz r27, lbl_8059DDD8-_SDA_BASE_(r13)
/* 800A6144 0009BEC4  83 8D 99 C0 */	lwz r28, lbl_8059DDE0-_SDA_BASE_(r13)
/* 800A6148 0009BEC8  83 AD 99 C8 */	lwz r29, lbl_8059DDE8-_SDA_BASE_(r13)
/* 800A614C 0009BECC  81 8D 99 D0 */	lwz r12, lbl_8059DDF0-_SDA_BASE_(r13)
/* 800A6150 0009BED0  80 8D 99 D8 */	lwz r4, lbl_8059DDF8-_SDA_BASE_(r13)
/* 800A6154 0009BED4  80 0D 99 E0 */	lwz r0, lbl_8059DE00-_SDA_BASE_(r13)
/* 800A6158 0009BED8  82 2D 99 E8 */	lwz r17, lbl_8059DE08-_SDA_BASE_(r13)
/* 800A615C 0009BEDC  82 0D 99 F0 */	lwz r16, lbl_8059DE10-_SDA_BASE_(r13)
/* 800A6160 0009BEE0  81 2D 99 F8 */	lwz r9, lbl_8059DE18-_SDA_BASE_(r13)
/* 800A6164 0009BEE4  81 0D 9A 00 */	lwz r8, lbl_8059DE20-_SDA_BASE_(r13)
/* 800A6168 0009BEE8  80 ED 9A 08 */	lwz r7, lbl_8059DE28-_SDA_BASE_(r13)
/* 800A616C 0009BEEC  80 CD 9A 10 */	lwz r6, lbl_8059DE30-_SDA_BASE_(r13)
/* 800A6170 0009BEF0  80 AD 9A 18 */	lwz r5, lbl_8059DE38-_SDA_BASE_(r13)
/* 800A6174 0009BEF4  92 63 00 A4 */	stw r19, 0xa4(r3)
/* 800A6178 0009BEF8  92 83 00 A8 */	stw r20, 0xa8(r3)
/* 800A617C 0009BEFC  92 A3 00 AC */	stw r21, 0xac(r3)
/* 800A6180 0009BF00  92 C3 00 B0 */	stw r22, 0xb0(r3)
/* 800A6184 0009BF04  92 E3 00 B4 */	stw r23, 0xb4(r3)
/* 800A6188 0009BF08  93 03 00 B8 */	stw r24, 0xb8(r3)
/* 800A618C 0009BF0C  93 23 00 BC */	stw r25, 0xbc(r3)
/* 800A6190 0009BF10  93 43 00 C0 */	stw r26, 0xc0(r3)
/* 800A6194 0009BF14  93 63 00 C4 */	stw r27, 0xc4(r3)
/* 800A6198 0009BF18  93 83 00 C8 */	stw r28, 0xc8(r3)
/* 800A619C 0009BF1C  93 A3 00 CC */	stw r29, 0xcc(r3)
/* 800A61A0 0009BF20  91 83 00 D0 */	stw r12, 0xd0(r3)
/* 800A61A4 0009BF24  90 83 00 D4 */	stw r4, 0xd4(r3)
/* 800A61A8 0009BF28  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 800A61AC 0009BF2C  92 23 00 DC */	stw r17, 0xdc(r3)
/* 800A61B0 0009BF30  92 03 00 E0 */	stw r16, 0xe0(r3)
/* 800A61B4 0009BF34  91 23 00 E4 */	stw r9, 0xe4(r3)
/* 800A61B8 0009BF38  91 03 00 E8 */	stw r8, 0xe8(r3)
/* 800A61BC 0009BF3C  90 E3 00 EC */	stw r7, 0xec(r3)
/* 800A61C0 0009BF40  90 C3 00 F0 */	stw r6, 0xf0(r3)
/* 800A61C4 0009BF44  90 A3 00 F4 */	stw r5, 0xf4(r3)
/* 800A61C8 0009BF48  82 6D 9A 20 */	lwz r19, lbl_8059DE40-_SDA_BASE_(r13)
/* 800A61CC 0009BF4C  38 8D BE 70 */	addi r4, r13, lbl_805A0290-_SDA_BASE_
/* 800A61D0 0009BF50  82 4D 9A 28 */	lwz r18, lbl_8059DE48-_SDA_BASE_(r13)
/* 800A61D4 0009BF54  82 2D 9A 30 */	lwz r17, lbl_8059DE50-_SDA_BASE_(r13)
/* 800A61D8 0009BF58  82 0D 9A 38 */	lwz r16, lbl_8059DE58-_SDA_BASE_(r13)
/* 800A61DC 0009BF5C  81 8D 9A 40 */	lwz r12, lbl_8059DE60-_SDA_BASE_(r13)
/* 800A61E0 0009BF60  81 6D 9A 48 */	lwz r11, lbl_8059DE68-_SDA_BASE_(r13)
/* 800A61E4 0009BF64  81 4D 9A 50 */	lwz r10, lbl_8059DE70-_SDA_BASE_(r13)
/* 800A61E8 0009BF68  81 2D 9A 58 */	lwz r9, lbl_8059DE78-_SDA_BASE_(r13)
/* 800A61EC 0009BF6C  81 0D 9A 60 */	lwz r8, lbl_8059DE80-_SDA_BASE_(r13)
/* 800A61F0 0009BF70  80 ED 9A 68 */	lwz r7, lbl_8059DE88-_SDA_BASE_(r13)
/* 800A61F4 0009BF74  80 CD 9A 70 */	lwz r6, lbl_8059DE90-_SDA_BASE_(r13)
/* 800A61F8 0009BF78  80 AD 9A 78 */	lwz r5, lbl_8059DE98-_SDA_BASE_(r13)
/* 800A61FC 0009BF7C  80 0D 9A 80 */	lwz r0, lbl_8059DEA0-_SDA_BASE_(r13)
/* 800A6200 0009BF80  91 63 01 0C */	stw r11, 0x10c(r3)
/* 800A6204 0009BF84  39 61 00 50 */	addi r11, r1, 0x50
/* 800A6208 0009BF88  92 63 00 F8 */	stw r19, 0xf8(r3)
/* 800A620C 0009BF8C  92 43 00 FC */	stw r18, 0xfc(r3)
/* 800A6210 0009BF90  92 23 01 00 */	stw r17, 0x100(r3)
/* 800A6214 0009BF94  92 03 01 04 */	stw r16, 0x104(r3)
/* 800A6218 0009BF98  91 83 01 08 */	stw r12, 0x108(r3)
/* 800A621C 0009BF9C  91 43 01 10 */	stw r10, 0x110(r3)
/* 800A6220 0009BFA0  91 23 01 14 */	stw r9, 0x114(r3)
/* 800A6224 0009BFA4  91 03 01 18 */	stw r8, 0x118(r3)
/* 800A6228 0009BFA8  90 E3 01 1C */	stw r7, 0x11c(r3)
/* 800A622C 0009BFAC  90 C3 01 20 */	stw r6, 0x120(r3)
/* 800A6230 0009BFB0  90 AD BE 70 */	stw r5, lbl_805A0290-_SDA_BASE_(r13)
/* 800A6234 0009BFB4  90 04 00 04 */	stw r0, 4(r4)
/* 800A6238 0009BFB8  48 34 B1 09 */	bl _restgpr_16
/* 800A623C 0009BFBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A6240 0009BFC0  7C 08 03 A6 */	mtlr r0
/* 800A6244 0009BFC4  38 21 00 50 */	addi r1, r1, 0x50
/* 800A6248 0009BFC8  4E 80 00 20 */	blr 


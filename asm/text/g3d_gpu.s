.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3g3d4fifoFUcUcUcUc11_GXCullMod$7GDSetGenMode2
nw4r3g3d4fifoFUcUcUcUc11_GXCullMod$7GDSetGenMode2:
/* 8019DA9C 0019381C  3D 40 CC 01 */	lis r10, 0xCC008000@ha
/* 8019DAA0 00193820  39 60 00 61 */	li r11, 0x61
/* 8019DAA4 00193824  3D 20 FE 08 */	lis r9, 0xFE07FC3F@ha
/* 8019DAA8 00193828  39 02 9F D8 */	addi r8, r2, lbl_805A32F8-_SDA2_BASE_
/* 8019DAAC 0019382C  7C E8 38 AE */	lbzx r7, r8, r7
/* 8019DAB0 00193830  39 29 FC 3F */	addi r9, r9, 0xFE07FC3F@l
/* 8019DAB4 00193834  99 6A 80 00 */	stb r11, 0xCC008000@l(r10)
/* 8019DAB8 00193838  38 A5 FF FF */	addi r5, r5, -1
/* 8019DABC 0019383C  54 80 25 36 */	rlwinm r0, r4, 4, 0x14, 0x1b
/* 8019DAC0 00193840  54 C8 82 1E */	rlwinm r8, r6, 0x10, 8, 0xf
/* 8019DAC4 00193844  54 E6 70 22 */	slwi r6, r7, 0xe
/* 8019DAC8 00193848  91 2A 80 00 */	stw r9, -0x8000(r10)
/* 8019DACC 0019384C  54 A5 50 2A */	slwi r5, r5, 0xa
/* 8019DAD0 00193850  7C 60 03 78 */	or r0, r3, r0
/* 8019DAD4 00193854  7C A0 03 78 */	or r0, r5, r0
/* 8019DAD8 00193858  7D 06 33 78 */	or r6, r8, r6
/* 8019DADC 0019385C  7C C0 03 78 */	or r0, r6, r0
/* 8019DAE0 00193860  99 6A 80 00 */	stb r11, -0x8000(r10)
/* 8019DAE4 00193864  38 E0 00 10 */	li r7, 0x10
/* 8019DAE8 00193868  38 C0 00 00 */	li r6, 0
/* 8019DAEC 0019386C  90 0A 80 00 */	stw r0, -0x8000(r10)
/* 8019DAF0 00193870  38 A0 10 09 */	li r5, 0x1009
/* 8019DAF4 00193874  38 00 10 3F */	li r0, 0x103f
/* 8019DAF8 00193878  98 EA 80 00 */	stb r7, -0x8000(r10)
/* 8019DAFC 0019387C  B0 CA 80 00 */	sth r6, -0x8000(r10)
/* 8019DB00 00193880  B0 AA 80 00 */	sth r5, -0x8000(r10)
/* 8019DB04 00193884  90 8A 80 00 */	stw r4, -0x8000(r10)
/* 8019DB08 00193888  98 EA 80 00 */	stb r7, -0x8000(r10)
/* 8019DB0C 0019388C  B0 CA 80 00 */	sth r6, -0x8000(r10)
/* 8019DB10 00193890  B0 0A 80 00 */	sth r0, -0x8000(r10)
/* 8019DB14 00193894  90 6A 80 00 */	stw r3, -0x8000(r10)
/* 8019DB18 00193898  4E 80 00 20 */	blr 

.global nw4r3g3d4fifoF11_GXCullMode$7GDSetCullMode
nw4r3g3d4fifoF11_GXCullMode$7GDSetCullMode:
/* 8019DB1C 0019389C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8019DB20 001938A0  38 C0 00 61 */	li r6, 0x61
/* 8019DB24 001938A4  3C 80 FE 01 */	lis r4, 0xFE00C000@ha
/* 8019DB28 001938A8  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 8019DB2C 001938AC  38 04 C0 00 */	addi r0, r4, 0xFE00C000@l
/* 8019DB30 001938B0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8019DB34 001938B4  38 82 9F D8 */	addi r4, r2, lbl_805A32F8-_SDA2_BASE_
/* 8019DB38 001938B8  7C 04 18 AE */	lbzx r0, r4, r3
/* 8019DB3C 001938BC  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 8019DB40 001938C0  54 00 70 22 */	slwi r0, r0, 0xe
/* 8019DB44 001938C4  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8019DB48 001938C8  4E 80 00 20 */	blr 

.global nw4r3g3d4fifoF13_GXTexCoordIDUsUcU$7GDSetTexCoordScale2
nw4r3g3d4fifoF13_GXTexCoordIDUsUcU$7GDSetTexCoordScale2:
/* 8019DB4C 001938CC  3D 60 CC 01 */	lis r11, 0xCC008000@ha
/* 8019DB50 001938D0  39 80 00 61 */	li r12, 0x61
/* 8019DB54 001938D4  3D 40 FE 04 */	lis r10, 0xFE03FFFF@ha
/* 8019DB58 001938D8  99 8B 80 00 */	stb r12, 0xCC008000@l(r11)
/* 8019DB5C 001938DC  38 0A FF FF */	addi r0, r10, 0xFE03FFFF@l
/* 8019DB60 001938E0  38 84 FF FF */	addi r4, r4, -1
/* 8019DB64 001938E4  54 6A 08 3C */	slwi r10, r3, 1
/* 8019DB68 001938E8  90 0B 80 00 */	stw r0, -0x8000(r11)
/* 8019DB6C 001938EC  54 A3 82 1E */	rlwinm r3, r5, 0x10, 8, 0xf
/* 8019DB70 001938F0  54 C5 89 DC */	rlwinm r5, r6, 0x11, 7, 0xe
/* 8019DB74 001938F4  7C 83 1B 78 */	or r3, r4, r3
/* 8019DB78 001938F8  38 0A 00 30 */	addi r0, r10, 0x30
/* 8019DB7C 001938FC  7C A3 1B 78 */	or r3, r5, r3
/* 8019DB80 00193900  99 8B 80 00 */	stb r12, -0x8000(r11)
/* 8019DB84 00193904  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8019DB88 00193908  38 87 FF FF */	addi r4, r7, -1
/* 8019DB8C 0019390C  7C 60 03 78 */	or r0, r3, r0
/* 8019DB90 00193910  55 03 82 1E */	rlwinm r3, r8, 0x10, 8, 0xf
/* 8019DB94 00193914  90 0B 80 00 */	stw r0, -0x8000(r11)
/* 8019DB98 00193918  38 0A 00 31 */	addi r0, r10, 0x31
/* 8019DB9C 0019391C  55 25 89 DC */	rlwinm r5, r9, 0x11, 7, 0xe
/* 8019DBA0 00193920  7C 83 1B 78 */	or r3, r4, r3
/* 8019DBA4 00193924  99 8B 80 00 */	stb r12, -0x8000(r11)
/* 8019DBA8 00193928  7C A3 1B 78 */	or r3, r5, r3
/* 8019DBAC 0019392C  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8019DBB0 00193930  7C 60 03 78 */	or r0, r3, r0
/* 8019DBB4 00193934  90 0B 80 00 */	stw r0, -0x8000(r11)
/* 8019DBB8 00193938  4E 80 00 20 */	blr 

.global nw4r3g3d4fifoFUlRCQ34nw4r4math5MTX$7GDSetIndTexMtx
nw4r3g3d4fifoFUlRCQ34nw4r4math5MTX$7GDSetIndTexMtx:
/* 8019DBBC 0019393C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8019DBC0 00193940  38 A0 00 00 */	li r5, 0
/* 8019DBC4 00193944  C0 64 00 04 */	lfs f3, 4(r4)
/* 8019DBC8 00193948  FC A0 12 10 */	fabs f5, f2
/* 8019DBCC 0019394C  C0 02 9F DC */	lfs f0, lbl_805A32FC-_SDA2_BASE_(r2)
/* 8019DBD0 00193950  C0 C4 00 08 */	lfs f6, 8(r4)
/* 8019DBD4 00193954  FD 20 1A 10 */	fabs f9, f3
/* 8019DBD8 00193958  C0 84 00 10 */	lfs f4, 0x10(r4)
/* 8019DBDC 0019395C  C0 E4 00 14 */	lfs f7, 0x14(r4)
/* 8019DBE0 00193960  C1 04 00 18 */	lfs f8, 0x18(r4)
/* 8019DBE4 00193964  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8019DBE8 00193968  FD 40 32 10 */	fabs f10, f6
/* 8019DBEC 0019396C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8019DBF0 00193970  FD 60 22 10 */	fabs f11, f4
/* 8019DBF4 00193974  FD 80 3A 10 */	fabs f12, f7
/* 8019DBF8 00193978  FD A0 42 10 */	fabs f13, f8
/* 8019DBFC 0019397C  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC00 00193980  41 82 00 40 */	beq lbl_8019DC40
/* 8019DC04 00193984  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 8019DC08 00193988  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC0C 0019398C  41 82 00 34 */	beq lbl_8019DC40
/* 8019DC10 00193990  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 8019DC14 00193994  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC18 00193998  41 82 00 28 */	beq lbl_8019DC40
/* 8019DC1C 0019399C  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 8019DC20 001939A0  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC24 001939A4  41 82 00 1C */	beq lbl_8019DC40
/* 8019DC28 001939A8  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 8019DC2C 001939AC  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC30 001939B0  41 82 00 10 */	beq lbl_8019DC40
/* 8019DC34 001939B4  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 8019DC38 001939B8  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC3C 001939BC  40 82 00 98 */	bne lbl_8019DCD4
lbl_8019DC40:
/* 8019DC40 001939C0  C0 22 9F E0 */	lfs f1, lbl_805A3300-_SDA2_BASE_(r2)
/* 8019DC44 001939C4  C0 02 9F DC */	lfs f0, lbl_805A32FC-_SDA2_BASE_(r2)
lbl_8019DC48:
/* 8019DC48 001939C8  7C A0 07 74 */	extsb r0, r5
/* 8019DC4C 001939CC  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8019DC50 001939D0  40 80 01 2C */	bge lbl_8019DD7C
/* 8019DC54 001939D4  EC A5 00 72 */	fmuls f5, f5, f1
/* 8019DC58 001939D8  EC 42 00 72 */	fmuls f2, f2, f1
/* 8019DC5C 001939DC  EC 63 00 72 */	fmuls f3, f3, f1
/* 8019DC60 001939E0  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8019DC64 001939E4  EC C6 00 72 */	fmuls f6, f6, f1
/* 8019DC68 001939E8  EC 84 00 72 */	fmuls f4, f4, f1
/* 8019DC6C 001939EC  EC E7 00 72 */	fmuls f7, f7, f1
/* 8019DC70 001939F0  ED 08 00 72 */	fmuls f8, f8, f1
/* 8019DC74 001939F4  ED 29 00 72 */	fmuls f9, f9, f1
/* 8019DC78 001939F8  ED 4A 00 72 */	fmuls f10, f10, f1
/* 8019DC7C 001939FC  ED 6B 00 72 */	fmuls f11, f11, f1
/* 8019DC80 00193A00  ED 8C 00 72 */	fmuls f12, f12, f1
/* 8019DC84 00193A04  ED AD 00 72 */	fmuls f13, f13, f1
/* 8019DC88 00193A08  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC8C 00193A0C  38 A5 00 01 */	addi r5, r5, 1
/* 8019DC90 00193A10  41 82 FF B8 */	beq lbl_8019DC48
/* 8019DC94 00193A14  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 8019DC98 00193A18  4C 41 13 82 */	cror 2, 1, 2
/* 8019DC9C 00193A1C  41 82 FF AC */	beq lbl_8019DC48
/* 8019DCA0 00193A20  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 8019DCA4 00193A24  4C 41 13 82 */	cror 2, 1, 2
/* 8019DCA8 00193A28  41 82 FF A0 */	beq lbl_8019DC48
/* 8019DCAC 00193A2C  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 8019DCB0 00193A30  4C 41 13 82 */	cror 2, 1, 2
/* 8019DCB4 00193A34  41 82 FF 94 */	beq lbl_8019DC48
/* 8019DCB8 00193A38  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 8019DCBC 00193A3C  4C 41 13 82 */	cror 2, 1, 2
/* 8019DCC0 00193A40  41 82 FF 88 */	beq lbl_8019DC48
/* 8019DCC4 00193A44  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 8019DCC8 00193A48  4C 41 13 82 */	cror 2, 1, 2
/* 8019DCCC 00193A4C  41 82 FF 7C */	beq lbl_8019DC48
/* 8019DCD0 00193A50  48 00 00 AC */	b lbl_8019DD7C
lbl_8019DCD4:
/* 8019DCD4 00193A54  C0 22 9F E0 */	lfs f1, lbl_805A3300-_SDA2_BASE_(r2)
/* 8019DCD8 00193A58  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 8019DCDC 00193A5C  40 80 00 A0 */	bge lbl_8019DD7C
/* 8019DCE0 00193A60  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 8019DCE4 00193A64  40 80 00 98 */	bge lbl_8019DD7C
/* 8019DCE8 00193A68  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 8019DCEC 00193A6C  40 80 00 90 */	bge lbl_8019DD7C
/* 8019DCF0 00193A70  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 8019DCF4 00193A74  40 80 00 88 */	bge lbl_8019DD7C
/* 8019DCF8 00193A78  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 8019DCFC 00193A7C  40 80 00 80 */	bge lbl_8019DD7C
/* 8019DD00 00193A80  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 8019DD04 00193A84  40 80 00 78 */	bge lbl_8019DD7C
/* 8019DD08 00193A88  C0 02 9F E4 */	lfs f0, lbl_805A3304-_SDA2_BASE_(r2)
lbl_8019DD0C:
/* 8019DD0C 00193A8C  EC A5 00 32 */	fmuls f5, f5, f0
/* 8019DD10 00193A90  38 A5 FF FF */	addi r5, r5, -1
/* 8019DD14 00193A94  EC 42 00 32 */	fmuls f2, f2, f0
/* 8019DD18 00193A98  EC 63 00 32 */	fmuls f3, f3, f0
/* 8019DD1C 00193A9C  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 8019DD20 00193AA0  EC C6 00 32 */	fmuls f6, f6, f0
/* 8019DD24 00193AA4  EC 84 00 32 */	fmuls f4, f4, f0
/* 8019DD28 00193AA8  EC E7 00 32 */	fmuls f7, f7, f0
/* 8019DD2C 00193AAC  ED 08 00 32 */	fmuls f8, f8, f0
/* 8019DD30 00193AB0  ED 29 00 32 */	fmuls f9, f9, f0
/* 8019DD34 00193AB4  ED 4A 00 32 */	fmuls f10, f10, f0
/* 8019DD38 00193AB8  ED 6B 00 32 */	fmuls f11, f11, f0
/* 8019DD3C 00193ABC  ED 8C 00 32 */	fmuls f12, f12, f0
/* 8019DD40 00193AC0  ED AD 00 32 */	fmuls f13, f13, f0
/* 8019DD44 00193AC4  40 80 00 38 */	bge lbl_8019DD7C
/* 8019DD48 00193AC8  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 8019DD4C 00193ACC  40 80 00 30 */	bge lbl_8019DD7C
/* 8019DD50 00193AD0  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 8019DD54 00193AD4  40 80 00 28 */	bge lbl_8019DD7C
/* 8019DD58 00193AD8  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 8019DD5C 00193ADC  40 80 00 20 */	bge lbl_8019DD7C
/* 8019DD60 00193AE0  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 8019DD64 00193AE4  40 80 00 18 */	bge lbl_8019DD7C
/* 8019DD68 00193AE8  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 8019DD6C 00193AEC  40 80 00 10 */	bge lbl_8019DD7C
/* 8019DD70 00193AF0  7C A0 07 74 */	extsb r0, r5
/* 8019DD74 00193AF4  2C 00 FF EF */	cmpwi r0, -17
/* 8019DD78 00193AF8  41 81 FF 94 */	bgt lbl_8019DD0C
lbl_8019DD7C:
/* 8019DD7C 00193AFC  C0 A2 9F E8 */	lfs f5, lbl_805A3308-_SDA2_BASE_(r2)
/* 8019DD80 00193B00  39 25 00 11 */	addi r9, r5, 0x11
/* 8019DD84 00193B04  38 03 00 06 */	addi r0, r3, 6
/* 8019DD88 00193B08  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 8019DD8C 00193B0C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8019DD90 00193B10  55 25 B2 12 */	rlwinm r5, r9, 0x16, 8, 9
/* 8019DD94 00193B14  EC 05 01 32 */	fmuls f0, f5, f4
/* 8019DD98 00193B18  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 8019DD9C 00193B1C  EC 25 00 F2 */	fmuls f1, f5, f3
/* 8019DDA0 00193B20  39 00 00 61 */	li r8, 0x61
/* 8019DDA4 00193B24  FC 80 00 1E */	fctiwz f4, f0
/* 8019DDA8 00193B28  38 03 00 07 */	addi r0, r3, 7
/* 8019DDAC 00193B2C  FC 40 10 1E */	fctiwz f2, f2
/* 8019DDB0 00193B30  55 26 A2 12 */	rlwinm r6, r9, 0x14, 8, 9
/* 8019DDB4 00193B34  EC 05 01 F2 */	fmuls f0, f5, f7
/* 8019DDB8 00193B38  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 8019DDBC 00193B3C  D8 41 00 08 */	stfd f2, 8(r1)
/* 8019DDC0 00193B40  FC 60 08 1E */	fctiwz f3, f1
/* 8019DDC4 00193B44  FC 40 00 1E */	fctiwz f2, f0
/* 8019DDC8 00193B48  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 8019DDCC 00193B4C  EC 25 01 B2 */	fmuls f1, f5, f6
/* 8019DDD0 00193B50  EC 05 02 32 */	fmuls f0, f5, f8
/* 8019DDD4 00193B54  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8019DDD8 00193B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019DDDC 00193B5C  FC 20 08 1E */	fctiwz f1, f1
/* 8019DDE0 00193B60  99 07 80 00 */	stb r8, 0xCC008000@l(r7)
/* 8019DDE4 00193B64  54 00 5A A8 */	rlwinm r0, r0, 0xb, 0xa, 0x14
/* 8019DDE8 00193B68  50 80 05 7E */	rlwimi r0, r4, 0, 0x15, 0x1f
/* 8019DDEC 00193B6C  FC 00 00 1E */	fctiwz f0, f0
/* 8019DDF0 00193B70  7C A0 03 78 */	or r0, r5, r0
/* 8019DDF4 00193B74  90 07 80 00 */	stw r0, -0x8000(r7)
/* 8019DDF8 00193B78  38 03 00 08 */	addi r0, r3, 8
/* 8019DDFC 00193B7C  55 24 92 12 */	rlwinm r4, r9, 0x12, 8, 9
/* 8019DE00 00193B80  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 8019DE04 00193B84  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 8019DE08 00193B88  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 8019DE0C 00193B8C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8019DE10 00193B90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8019DE14 00193B94  54 65 5A A8 */	rlwinm r5, r3, 0xb, 0xa, 0x14
/* 8019DE18 00193B98  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8019DE1C 00193B9C  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 8019DE20 00193BA0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8019DE24 00193BA4  7C C5 2B 78 */	or r5, r6, r5
/* 8019DE28 00193BA8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8019DE2C 00193BAC  99 07 80 00 */	stb r8, -0x8000(r7)
/* 8019DE30 00193BB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019DE34 00193BB4  90 A7 80 00 */	stw r5, -0x8000(r7)
/* 8019DE38 00193BB8  54 00 5A A8 */	rlwinm r0, r0, 0xb, 0xa, 0x14
/* 8019DE3C 00193BBC  50 60 05 7E */	rlwimi r0, r3, 0, 0x15, 0x1f
/* 8019DE40 00193BC0  99 07 80 00 */	stb r8, -0x8000(r7)
/* 8019DE44 00193BC4  7C 80 03 78 */	or r0, r4, r0
/* 8019DE48 00193BC8  90 07 80 00 */	stw r0, -0x8000(r7)
/* 8019DE4C 00193BCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8019DE50 00193BD0  4E 80 00 20 */	blr 

.global nw4r3g3d4fifoFv$7GDResetCurrentMtx
nw4r3g3d4fifoFv$7GDResetCurrentMtx:
/* 8019DE54 00193BD4  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 8019DE58 00193BD8  39 20 00 08 */	li r9, 8
/* 8019DE5C 00193BDC  99 28 80 00 */	stb r9, 0xCC008000@l(r8)
/* 8019DE60 00193BE0  38 00 00 30 */	li r0, 0x30
/* 8019DE64 00193BE4  3C 80 3C F4 */	lis r4, 0x3CF3CF00@ha
/* 8019DE68 00193BE8  3C 60 00 F4 */	lis r3, 0x00F3CF3C@ha
/* 8019DE6C 00193BEC  98 08 80 00 */	stb r0, -0x8000(r8)
/* 8019DE70 00193BF0  38 E4 CF 00 */	addi r7, r4, 0x3CF3CF00@l
/* 8019DE74 00193BF4  38 A3 CF 3C */	addi r5, r3, 0x00F3CF3C@l
/* 8019DE78 00193BF8  38 C0 00 40 */	li r6, 0x40
/* 8019DE7C 00193BFC  90 E8 80 00 */	stw r7, -0x8000(r8)
/* 8019DE80 00193C00  38 80 00 10 */	li r4, 0x10
/* 8019DE84 00193C04  38 60 00 01 */	li r3, 1
/* 8019DE88 00193C08  38 00 10 18 */	li r0, 0x1018
/* 8019DE8C 00193C0C  99 28 80 00 */	stb r9, -0x8000(r8)
/* 8019DE90 00193C10  98 C8 80 00 */	stb r6, -0x8000(r8)
/* 8019DE94 00193C14  90 A8 80 00 */	stw r5, -0x8000(r8)
/* 8019DE98 00193C18  98 88 80 00 */	stb r4, -0x8000(r8)
/* 8019DE9C 00193C1C  B0 68 80 00 */	sth r3, -0x8000(r8)
/* 8019DEA0 00193C20  B0 08 80 00 */	sth r0, -0x8000(r8)
/* 8019DEA4 00193C24  90 E8 80 00 */	stw r7, -0x8000(r8)
/* 8019DEA8 00193C28  90 A8 80 00 */	stw r5, -0x8000(r8)
/* 8019DEAC 00193C2C  4E 80 00 20 */	blr 

.global nw4r3g3d4fifoFPCUl$7GDSetCurrentMtx
nw4r3g3d4fifoFPCUl$7GDSetCurrentMtx:
/* 8019DEB0 00193C30  80 E3 00 00 */	lwz r7, 0(r3)
/* 8019DEB4 00193C34  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8019DEB8 00193C38  38 00 00 10 */	li r0, 0x10
/* 8019DEBC 00193C3C  80 C3 00 04 */	lwz r6, 4(r3)
/* 8019DEC0 00193C40  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8019DEC4 00193C44  38 80 00 01 */	li r4, 1
/* 8019DEC8 00193C48  81 03 00 08 */	lwz r8, 8(r3)
/* 8019DECC 00193C4C  54 E7 30 32 */	slwi r7, r7, 6
/* 8019DED0 00193C50  54 C6 60 26 */	slwi r6, r6, 0xc
/* 8019DED4 00193C54  81 23 00 0C */	lwz r9, 0xc(r3)
/* 8019DED8 00193C58  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 8019DEDC 00193C5C  7C E6 33 78 */	or r6, r7, r6
/* 8019DEE0 00193C60  38 00 10 18 */	li r0, 0x1018
/* 8019DEE4 00193C64  55 08 90 1A */	slwi r8, r8, 0x12
/* 8019DEE8 00193C68  55 2A C0 0E */	slwi r10, r9, 0x18
/* 8019DEEC 00193C6C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8019DEF0 00193C70  7D 09 33 78 */	or r9, r8, r6
/* 8019DEF4 00193C74  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 8019DEF8 00193C78  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8019DEFC 00193C7C  7D 49 4B 78 */	or r9, r10, r9
/* 8019DF00 00193C80  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 8019DF04 00193C84  54 83 30 32 */	slwi r3, r4, 6
/* 8019DF08 00193C88  B0 05 80 00 */	sth r0, -0x8000(r5)
/* 8019DF0C 00193C8C  7C C0 1B 78 */	or r0, r6, r3
/* 8019DF10 00193C90  54 E4 60 26 */	slwi r4, r7, 0xc
/* 8019DF14 00193C94  55 03 90 1A */	slwi r3, r8, 0x12
/* 8019DF18 00193C98  7C 80 03 78 */	or r0, r4, r0
/* 8019DF1C 00193C9C  91 25 80 00 */	stw r9, -0x8000(r5)
/* 8019DF20 00193CA0  7C 60 03 78 */	or r0, r3, r0
/* 8019DF24 00193CA4  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8019DF28 00193CA8  4E 80 00 20 */	blr 

.global nw4r3g3d4fifoFRCQ34nw4r4math5MTX33$7GDLoadTexMtxImm3x3
nw4r3g3d4fifoFRCQ34nw4r4math5MTX33$7GDLoadTexMtxImm3x3:
/* 8019DF2C 00193CAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8019DF30 00193CB0  7C 08 02 A6 */	mflr r0
/* 8019DF34 00193CB4  C0 C2 9F EC */	lfs f6, lbl_805A330C-_SDA2_BASE_(r2)
/* 8019DF38 00193CB8  38 A0 00 00 */	li r5, 0
/* 8019DF3C 00193CBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8019DF40 00193CC0  C1 23 00 00 */	lfs f9, 0(r3)
/* 8019DF44 00193CC4  C1 03 00 04 */	lfs f8, 4(r3)
/* 8019DF48 00193CC8  C0 E3 00 08 */	lfs f7, 8(r3)
/* 8019DF4C 00193CCC  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 8019DF50 00193CD0  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 8019DF54 00193CD4  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 8019DF58 00193CD8  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8019DF5C 00193CDC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8019DF60 00193CE0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8019DF64 00193CE4  38 61 00 08 */	addi r3, r1, 8
/* 8019DF68 00193CE8  D1 21 00 08 */	stfs f9, 8(r1)
/* 8019DF6C 00193CEC  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 8019DF70 00193CF0  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 8019DF74 00193CF4  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8019DF78 00193CF8  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8019DF7C 00193CFC  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8019DF80 00193D00  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8019DF84 00193D04  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 8019DF88 00193D08  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8019DF8C 00193D0C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8019DF90 00193D10  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8019DF94 00193D14  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8019DF98 00193D18  48 05 73 6D */	bl GXLoadTexMtxImm
/* 8019DF9C 00193D1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8019DFA0 00193D20  7C 08 03 A6 */	mtlr r0
/* 8019DFA4 00193D24  38 21 00 40 */	addi r1, r1, 0x40
/* 8019DFA8 00193D28  4E 80 00 20 */	blr 


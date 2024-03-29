.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ut7RomFontFv$7__ct
nw4r2ut7RomFontFv$7__ct:
/* 8015D984 00153704  3C 80 80 46 */	lis r4, lbl_80464710@ha
/* 8015D988 00153708  3C A0 80 46 */	lis r5, lbl_804646B8@ha
/* 8015D98C 0015370C  38 84 47 10 */	addi r4, r4, lbl_80464710@l
/* 8015D990 00153710  3D 00 80 46 */	lis r8, lbl_80460004@ha
/* 8015D994 00153714  90 83 00 00 */	stw r4, 0(r3)
/* 8015D998 00153718  38 A5 46 B8 */	addi r5, r5, lbl_804646B8@l
/* 8015D99C 0015371C  38 80 00 00 */	li r4, 0
/* 8015D9A0 00153720  38 00 00 3F */	li r0, 0x3f
/* 8015D9A4 00153724  84 E8 46 A8 */	lwzu r7, 0x46a8(r8)
/* 8015D9A8 00153728  80 C8 00 04 */	lwz r6, lbl_80460004@l(r8)
/* 8015D9AC 0015372C  90 E3 00 04 */	stw r7, 4(r3)
/* 8015D9B0 00153730  90 C3 00 08 */	stw r6, 8(r3)
/* 8015D9B4 00153734  80 C8 00 08 */	lwz r6, 8(r8)
/* 8015D9B8 00153738  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8015D9BC 0015373C  90 A3 00 00 */	stw r5, 0(r3)
/* 8015D9C0 00153740  90 83 00 10 */	stw r4, 0x10(r3)
/* 8015D9C4 00153744  B0 03 00 18 */	sth r0, 0x18(r3)
/* 8015D9C8 00153748  98 83 00 14 */	stb r4, 0x14(r3)
/* 8015D9CC 0015374C  98 83 00 15 */	stb r4, 0x15(r3)
/* 8015D9D0 00153750  98 83 00 16 */	stb r4, 0x16(r3)
/* 8015D9D4 00153754  4E 80 00 20 */	blr 

.global nw4r2ut4FontFv$7__dt
nw4r2ut4FontFv$7__dt:
/* 8015D9D8 00153758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D9DC 0015375C  7C 08 02 A6 */	mflr r0
/* 8015D9E0 00153760  2C 03 00 00 */	cmpwi r3, 0
/* 8015D9E4 00153764  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D9E8 00153768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D9EC 0015376C  7C 7F 1B 78 */	mr r31, r3
/* 8015D9F0 00153770  41 82 00 10 */	beq lbl_8015DA00
/* 8015D9F4 00153774  2C 04 00 00 */	cmpwi r4, 0
/* 8015D9F8 00153778  40 81 00 08 */	ble lbl_8015DA00
/* 8015D9FC 0015377C  4B EA EE CD */	bl __dl__FPv
lbl_8015DA00:
/* 8015DA00 00153780  7F E3 FB 78 */	mr r3, r31
/* 8015DA04 00153784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015DA08 00153788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DA0C 0015378C  7C 08 03 A6 */	mtlr r0
/* 8015DA10 00153790  38 21 00 10 */	addi r1, r1, 0x10
/* 8015DA14 00153794  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontFv$7__dt
nw4r2ut7RomFontFv$7__dt:
/* 8015DA18 00153798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015DA1C 0015379C  7C 08 02 A6 */	mflr r0
/* 8015DA20 001537A0  2C 03 00 00 */	cmpwi r3, 0
/* 8015DA24 001537A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015DA28 001537A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015DA2C 001537AC  7C 7F 1B 78 */	mr r31, r3
/* 8015DA30 001537B0  41 82 00 10 */	beq lbl_8015DA40
/* 8015DA34 001537B4  2C 04 00 00 */	cmpwi r4, 0
/* 8015DA38 001537B8  40 81 00 08 */	ble lbl_8015DA40
/* 8015DA3C 001537BC  4B EA EE 8D */	bl __dl__FPv
lbl_8015DA40:
/* 8015DA40 001537C0  7F E3 FB 78 */	mr r3, r31
/* 8015DA44 001537C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015DA48 001537C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DA4C 001537CC  7C 08 03 A6 */	mtlr r0
/* 8015DA50 001537D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015DA54 001537D4  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetWidth
nw4r2ut7RomFontCFv$7GetWidth:
/* 8015DA58 001537D8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DA5C 001537DC  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 8015DA60 001537E0  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetHeight
nw4r2ut7RomFontCFv$7GetHeight:
/* 8015DA64 001537E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015DA68 001537E8  7C 08 02 A6 */	mflr r0
/* 8015DA6C 001537EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015DA70 001537F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015DA74 001537F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8015DA78 001537F8  7C 7E 1B 78 */	mr r30, r3
/* 8015DA7C 001537FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8015DA80 00153800  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8015DA84 00153804  7D 89 03 A6 */	mtctr r12
/* 8015DA88 00153808  4E 80 04 21 */	bctrl 
/* 8015DA8C 0015380C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8015DA90 00153810  7C 7F 1B 78 */	mr r31, r3
/* 8015DA94 00153814  7F C3 F3 78 */	mr r3, r30
/* 8015DA98 00153818  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8015DA9C 0015381C  7D 89 03 A6 */	mtctr r12
/* 8015DAA0 00153820  4E 80 04 21 */	bctrl 
/* 8015DAA4 00153824  7C 63 FA 14 */	add r3, r3, r31
/* 8015DAA8 00153828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015DAAC 0015382C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015DAB0 00153830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DAB4 00153834  7C 08 03 A6 */	mtlr r0
/* 8015DAB8 00153838  38 21 00 10 */	addi r1, r1, 0x10
/* 8015DABC 0015383C  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetAscent
nw4r2ut7RomFontCFv$7GetAscent:
/* 8015DAC0 00153840  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DAC4 00153844  A0 63 00 08 */	lhz r3, 8(r3)
/* 8015DAC8 00153848  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetDescent
nw4r2ut7RomFontCFv$7GetDescent:
/* 8015DACC 0015384C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DAD0 00153850  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 8015DAD4 00153854  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetBaselinePos
nw4r2ut7RomFontCFv$7GetBaselinePos:
/* 8015DAD8 00153858  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DADC 0015385C  A0 63 00 08 */	lhz r3, 8(r3)
/* 8015DAE0 00153860  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetCellHeight
nw4r2ut7RomFontCFv$7GetCellHeight:
/* 8015DAE4 00153864  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DAE8 00153868  A0 63 00 12 */	lhz r3, 0x12(r3)
/* 8015DAEC 0015386C  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetCellWidth
nw4r2ut7RomFontCFv$7GetCellWidth:
/* 8015DAF0 00153870  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DAF4 00153874  A0 63 00 10 */	lhz r3, 0x10(r3)
/* 8015DAF8 00153878  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetMaxCharWidth
nw4r2ut7RomFontCFv$7GetMaxCharWidth:
/* 8015DAFC 0015387C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DB00 00153880  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 8015DB04 00153884  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetType
nw4r2ut7RomFontCFv$7GetType:
/* 8015DB08 00153888  38 60 00 01 */	li r3, 1
/* 8015DB0C 0015388C  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetTextureFormat
nw4r2ut7RomFontCFv$7GetTextureFormat:
/* 8015DB10 00153890  38 60 00 00 */	li r3, 0
/* 8015DB14 00153894  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetLineFeed
nw4r2ut7RomFontCFv$7GetLineFeed:
/* 8015DB18 00153898  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DB1C 0015389C  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 8015DB20 001538A0  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetDefaultCharWidths
nw4r2ut7RomFontCFv$7GetDefaultCharWidths:
/* 8015DB24 001538A4  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8015DB28 001538A8  7C 64 1B 78 */	mr r4, r3
/* 8015DB2C 001538AC  54 03 80 1E */	slwi r3, r0, 0x10
/* 8015DB30 001538B0  88 04 00 16 */	lbz r0, 0x16(r4)
/* 8015DB34 001538B4  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 8015DB38 001538B8  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontFRCQ34nw4r2ut10Char$7SetDefaultCharWidths
nw4r2ut7RomFontFRCQ34nw4r2ut10Char$7SetDefaultCharWidths:
/* 8015DB3C 001538BC  88 C4 00 00 */	lbz r6, 0(r4)
/* 8015DB40 001538C0  88 A4 00 01 */	lbz r5, 1(r4)
/* 8015DB44 001538C4  88 04 00 02 */	lbz r0, 2(r4)
/* 8015DB48 001538C8  98 C3 00 14 */	stb r6, 0x14(r3)
/* 8015DB4C 001538CC  98 A3 00 15 */	stb r5, 0x15(r3)
/* 8015DB50 001538D0  98 03 00 16 */	stb r0, 0x16(r3)
/* 8015DB54 001538D4  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontFUs$7SetAlternateChar
nw4r2ut7RomFontFUs$7SetAlternateChar:
/* 8015DB58 001538D8  3C A0 00 01 */	lis r5, 0x0000FFFF@ha
/* 8015DB5C 001538DC  A0 C3 00 18 */	lhz r6, 0x18(r3)
/* 8015DB60 001538E0  38 05 FF FF */	addi r0, r5, 0x0000FFFF@l
/* 8015DB64 001538E4  B0 03 00 18 */	sth r0, 0x18(r3)
/* 8015DB68 001538E8  A0 0D A4 48 */	lhz r0, lbl_8059E868-_SDA_BASE_(r13)
/* 8015DB6C 001538EC  2C 00 00 01 */	cmpwi r0, 1
/* 8015DB70 001538F0  41 82 00 30 */	beq lbl_8015DBA0
/* 8015DB74 001538F4  40 80 00 AC */	bge lbl_8015DC20
/* 8015DB78 001538F8  2C 00 00 00 */	cmpwi r0, 0
/* 8015DB7C 001538FC  40 80 00 08 */	bge lbl_8015DB84
/* 8015DB80 00153900  48 00 00 A0 */	b lbl_8015DC20
lbl_8015DB84:
/* 8015DB84 00153904  28 04 00 20 */	cmplwi r4, 0x20
/* 8015DB88 00153908  39 00 00 00 */	li r8, 0
/* 8015DB8C 0015390C  41 80 00 94 */	blt lbl_8015DC20
/* 8015DB90 00153910  28 04 00 FF */	cmplwi r4, 0xff
/* 8015DB94 00153914  41 81 00 8C */	bgt lbl_8015DC20
/* 8015DB98 00153918  39 00 00 01 */	li r8, 1
/* 8015DB9C 0015391C  48 00 00 84 */	b lbl_8015DC20
lbl_8015DBA0:
/* 8015DBA0 00153920  28 04 00 FF */	cmplwi r4, 0xff
/* 8015DBA4 00153924  40 81 00 0C */	ble lbl_8015DBB0
/* 8015DBA8 00153928  38 00 00 00 */	li r0, 0
/* 8015DBAC 0015392C  48 00 00 2C */	b lbl_8015DBD8
lbl_8015DBB0:
/* 8015DBB0 00153930  28 04 00 20 */	cmplwi r4, 0x20
/* 8015DBB4 00153934  38 00 00 00 */	li r0, 0
/* 8015DBB8 00153938  41 80 00 0C */	blt lbl_8015DBC4
/* 8015DBBC 0015393C  28 04 00 7E */	cmplwi r4, 0x7e
/* 8015DBC0 00153940  40 81 00 14 */	ble lbl_8015DBD4
lbl_8015DBC4:
/* 8015DBC4 00153944  28 04 00 A1 */	cmplwi r4, 0xa1
/* 8015DBC8 00153948  41 80 00 10 */	blt lbl_8015DBD8
/* 8015DBCC 0015394C  28 04 00 DF */	cmplwi r4, 0xdf
/* 8015DBD0 00153950  41 81 00 08 */	bgt lbl_8015DBD8
lbl_8015DBD4:
/* 8015DBD4 00153954  38 00 00 01 */	li r0, 1
lbl_8015DBD8:
/* 8015DBD8 00153958  2C 00 00 00 */	cmpwi r0, 0
/* 8015DBDC 0015395C  39 00 00 01 */	li r8, 1
/* 8015DBE0 00153960  40 82 00 40 */	bne lbl_8015DC20
/* 8015DBE4 00153964  54 87 C6 3E */	rlwinm r7, r4, 0x18, 0x18, 0x1f
/* 8015DBE8 00153968  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8015DBEC 0015396C  28 07 00 81 */	cmplwi r7, 0x81
/* 8015DBF0 00153970  38 00 00 00 */	li r0, 0
/* 8015DBF4 00153974  41 80 00 20 */	blt lbl_8015DC14
/* 8015DBF8 00153978  28 07 00 98 */	cmplwi r7, 0x98
/* 8015DBFC 0015397C  41 81 00 18 */	bgt lbl_8015DC14
/* 8015DC00 00153980  28 05 00 40 */	cmplwi r5, 0x40
/* 8015DC04 00153984  41 80 00 10 */	blt lbl_8015DC14
/* 8015DC08 00153988  28 05 00 FC */	cmplwi r5, 0xfc
/* 8015DC0C 0015398C  41 81 00 08 */	bgt lbl_8015DC14
/* 8015DC10 00153990  38 00 00 01 */	li r0, 1
lbl_8015DC14:
/* 8015DC14 00153994  2C 00 00 00 */	cmpwi r0, 0
/* 8015DC18 00153998  40 82 00 08 */	bne lbl_8015DC20
/* 8015DC1C 0015399C  39 00 00 00 */	li r8, 0
lbl_8015DC20:
/* 8015DC20 001539A0  2C 08 00 00 */	cmpwi r8, 0
/* 8015DC24 001539A4  41 82 00 0C */	beq lbl_8015DC30
/* 8015DC28 001539A8  7C 80 23 78 */	mr r0, r4
/* 8015DC2C 001539AC  48 00 00 08 */	b lbl_8015DC34
lbl_8015DC30:
/* 8015DC30 001539B0  A0 03 00 18 */	lhz r0, 0x18(r3)
lbl_8015DC34:
/* 8015DC34 001539B4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8015DC38 001539B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8015DC3C 001539BC  41 82 00 10 */	beq lbl_8015DC4C
/* 8015DC40 001539C0  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8015DC44 001539C4  38 60 00 01 */	li r3, 1
/* 8015DC48 001539C8  4E 80 00 20 */	blr 
lbl_8015DC4C:
/* 8015DC4C 001539CC  B0 C3 00 18 */	sth r6, 0x18(r3)
/* 8015DC50 001539D0  38 60 00 00 */	li r3, 0
/* 8015DC54 001539D4  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontFi$7SetLineFeed
nw4r2ut7RomFontFi$7SetLineFeed:
/* 8015DC58 001539D8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015DC5C 001539DC  B0 83 00 0E */	sth r4, 0xe(r3)
/* 8015DC60 001539E0  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFUs$7GetCharWidth
nw4r2ut7RomFontCFUs$7GetCharWidth:
/* 8015DC64 001539E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015DC68 001539E8  7C 08 02 A6 */	mflr r0
/* 8015DC6C 001539EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015DC70 001539F0  A0 0D A4 48 */	lhz r0, lbl_8059E868-_SDA_BASE_(r13)
/* 8015DC74 001539F4  2C 00 00 01 */	cmpwi r0, 1
/* 8015DC78 001539F8  41 82 00 30 */	beq lbl_8015DCA8
/* 8015DC7C 001539FC  40 80 00 AC */	bge lbl_8015DD28
/* 8015DC80 00153A00  2C 00 00 00 */	cmpwi r0, 0
/* 8015DC84 00153A04  40 80 00 08 */	bge lbl_8015DC8C
/* 8015DC88 00153A08  48 00 00 A0 */	b lbl_8015DD28
lbl_8015DC8C:
/* 8015DC8C 00153A0C  28 04 00 20 */	cmplwi r4, 0x20
/* 8015DC90 00153A10  38 E0 00 00 */	li r7, 0
/* 8015DC94 00153A14  41 80 00 94 */	blt lbl_8015DD28
/* 8015DC98 00153A18  28 04 00 FF */	cmplwi r4, 0xff
/* 8015DC9C 00153A1C  41 81 00 8C */	bgt lbl_8015DD28
/* 8015DCA0 00153A20  38 E0 00 01 */	li r7, 1
/* 8015DCA4 00153A24  48 00 00 84 */	b lbl_8015DD28
lbl_8015DCA8:
/* 8015DCA8 00153A28  28 04 00 FF */	cmplwi r4, 0xff
/* 8015DCAC 00153A2C  40 81 00 0C */	ble lbl_8015DCB8
/* 8015DCB0 00153A30  38 00 00 00 */	li r0, 0
/* 8015DCB4 00153A34  48 00 00 2C */	b lbl_8015DCE0
lbl_8015DCB8:
/* 8015DCB8 00153A38  28 04 00 20 */	cmplwi r4, 0x20
/* 8015DCBC 00153A3C  38 00 00 00 */	li r0, 0
/* 8015DCC0 00153A40  41 80 00 0C */	blt lbl_8015DCCC
/* 8015DCC4 00153A44  28 04 00 7E */	cmplwi r4, 0x7e
/* 8015DCC8 00153A48  40 81 00 14 */	ble lbl_8015DCDC
lbl_8015DCCC:
/* 8015DCCC 00153A4C  28 04 00 A1 */	cmplwi r4, 0xa1
/* 8015DCD0 00153A50  41 80 00 10 */	blt lbl_8015DCE0
/* 8015DCD4 00153A54  28 04 00 DF */	cmplwi r4, 0xdf
/* 8015DCD8 00153A58  41 81 00 08 */	bgt lbl_8015DCE0
lbl_8015DCDC:
/* 8015DCDC 00153A5C  38 00 00 01 */	li r0, 1
lbl_8015DCE0:
/* 8015DCE0 00153A60  2C 00 00 00 */	cmpwi r0, 0
/* 8015DCE4 00153A64  38 E0 00 01 */	li r7, 1
/* 8015DCE8 00153A68  40 82 00 40 */	bne lbl_8015DD28
/* 8015DCEC 00153A6C  54 86 C6 3E */	rlwinm r6, r4, 0x18, 0x18, 0x1f
/* 8015DCF0 00153A70  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8015DCF4 00153A74  28 06 00 81 */	cmplwi r6, 0x81
/* 8015DCF8 00153A78  38 00 00 00 */	li r0, 0
/* 8015DCFC 00153A7C  41 80 00 20 */	blt lbl_8015DD1C
/* 8015DD00 00153A80  28 06 00 98 */	cmplwi r6, 0x98
/* 8015DD04 00153A84  41 81 00 18 */	bgt lbl_8015DD1C
/* 8015DD08 00153A88  28 05 00 40 */	cmplwi r5, 0x40
/* 8015DD0C 00153A8C  41 80 00 10 */	blt lbl_8015DD1C
/* 8015DD10 00153A90  28 05 00 FC */	cmplwi r5, 0xfc
/* 8015DD14 00153A94  41 81 00 08 */	bgt lbl_8015DD1C
/* 8015DD18 00153A98  38 00 00 01 */	li r0, 1
lbl_8015DD1C:
/* 8015DD1C 00153A9C  2C 00 00 00 */	cmpwi r0, 0
/* 8015DD20 00153AA0  40 82 00 08 */	bne lbl_8015DD28
/* 8015DD24 00153AA4  38 E0 00 00 */	li r7, 0
lbl_8015DD28:
/* 8015DD28 00153AA8  2C 07 00 00 */	cmpwi r7, 0
/* 8015DD2C 00153AAC  41 82 00 08 */	beq lbl_8015DD34
/* 8015DD30 00153AB0  48 00 00 08 */	b lbl_8015DD38
lbl_8015DD34:
/* 8015DD34 00153AB4  A0 83 00 18 */	lhz r4, 0x18(r3)
lbl_8015DD38:
/* 8015DD38 00153AB8  54 83 C6 3F */	rlwinm. r3, r4, 0x18, 0x18, 0x1f
/* 8015DD3C 00153ABC  40 82 00 14 */	bne lbl_8015DD50
/* 8015DD40 00153AC0  38 00 00 00 */	li r0, 0
/* 8015DD44 00153AC4  98 81 00 08 */	stb r4, 8(r1)
/* 8015DD48 00153AC8  98 01 00 09 */	stb r0, 9(r1)
/* 8015DD4C 00153ACC  48 00 00 14 */	b lbl_8015DD60
lbl_8015DD50:
/* 8015DD50 00153AD0  38 00 00 00 */	li r0, 0
/* 8015DD54 00153AD4  98 61 00 08 */	stb r3, 8(r1)
/* 8015DD58 00153AD8  98 81 00 09 */	stb r4, 9(r1)
/* 8015DD5C 00153ADC  98 01 00 0A */	stb r0, 0xa(r1)
lbl_8015DD60:
/* 8015DD60 00153AE0  38 61 00 08 */	addi r3, r1, 8
/* 8015DD64 00153AE4  38 81 00 0C */	addi r4, r1, 0xc
/* 8015DD68 00153AE8  48 07 F0 F1 */	bl OSGetFontWidth
/* 8015DD6C 00153AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DD70 00153AF0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8015DD74 00153AF4  7C 08 03 A6 */	mtlr r0
/* 8015DD78 00153AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015DD7C 00153AFC  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFUs$7GetCharWidths
nw4r2ut7RomFontCFUs$7GetCharWidths:
/* 8015DD80 00153B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015DD84 00153B04  7C 08 02 A6 */	mflr r0
/* 8015DD88 00153B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015DD8C 00153B0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8015DD90 00153B10  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8015DD94 00153B14  7D 89 03 A6 */	mtctr r12
/* 8015DD98 00153B18  4E 80 04 21 */	bctrl 
/* 8015DD9C 00153B1C  38 00 00 00 */	li r0, 0
/* 8015DDA0 00153B20  98 61 00 09 */	stb r3, 9(r1)
/* 8015DDA4 00153B24  7C 64 1B 78 */	mr r4, r3
/* 8015DDA8 00153B28  98 01 00 08 */	stb r0, 8(r1)
/* 8015DDAC 00153B2C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8015DDB0 00153B30  98 61 00 0A */	stb r3, 0xa(r1)
/* 8015DDB4 00153B34  54 03 80 1E */	slwi r3, r0, 0x10
/* 8015DDB8 00153B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DDBC 00153B3C  50 83 44 2E */	rlwimi r3, r4, 8, 0x10, 0x17
/* 8015DDC0 00153B40  7C 08 03 A6 */	mtlr r0
/* 8015DDC4 00153B44  38 21 00 10 */	addi r1, r1, 0x10
/* 8015DDC8 00153B48  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFPQ34nw4r2ut5Glyph$7GetGlyph
nw4r2ut7RomFontCFPQ34nw4r2ut5Glyph$7GetGlyph:
/* 8015DDCC 00153B4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015DDD0 00153B50  7C 08 02 A6 */	mflr r0
/* 8015DDD4 00153B54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015DDD8 00153B58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015DDDC 00153B5C  7C 9F 23 78 */	mr r31, r4
/* 8015DDE0 00153B60  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8015DDE4 00153B64  7C 7E 1B 78 */	mr r30, r3
/* 8015DDE8 00153B68  A0 0D A4 48 */	lhz r0, lbl_8059E868-_SDA_BASE_(r13)
/* 8015DDEC 00153B6C  2C 00 00 01 */	cmpwi r0, 1
/* 8015DDF0 00153B70  41 82 00 30 */	beq lbl_8015DE20
/* 8015DDF4 00153B74  40 80 00 AC */	bge lbl_8015DEA0
/* 8015DDF8 00153B78  2C 00 00 00 */	cmpwi r0, 0
/* 8015DDFC 00153B7C  40 80 00 08 */	bge lbl_8015DE04
/* 8015DE00 00153B80  48 00 00 A0 */	b lbl_8015DEA0
lbl_8015DE04:
/* 8015DE04 00153B84  28 05 00 20 */	cmplwi r5, 0x20
/* 8015DE08 00153B88  38 E0 00 00 */	li r7, 0
/* 8015DE0C 00153B8C  41 80 00 94 */	blt lbl_8015DEA0
/* 8015DE10 00153B90  28 05 00 FF */	cmplwi r5, 0xff
/* 8015DE14 00153B94  41 81 00 8C */	bgt lbl_8015DEA0
/* 8015DE18 00153B98  38 E0 00 01 */	li r7, 1
/* 8015DE1C 00153B9C  48 00 00 84 */	b lbl_8015DEA0
lbl_8015DE20:
/* 8015DE20 00153BA0  28 05 00 FF */	cmplwi r5, 0xff
/* 8015DE24 00153BA4  40 81 00 0C */	ble lbl_8015DE30
/* 8015DE28 00153BA8  38 00 00 00 */	li r0, 0
/* 8015DE2C 00153BAC  48 00 00 2C */	b lbl_8015DE58
lbl_8015DE30:
/* 8015DE30 00153BB0  28 05 00 20 */	cmplwi r5, 0x20
/* 8015DE34 00153BB4  38 00 00 00 */	li r0, 0
/* 8015DE38 00153BB8  41 80 00 0C */	blt lbl_8015DE44
/* 8015DE3C 00153BBC  28 05 00 7E */	cmplwi r5, 0x7e
/* 8015DE40 00153BC0  40 81 00 14 */	ble lbl_8015DE54
lbl_8015DE44:
/* 8015DE44 00153BC4  28 05 00 A1 */	cmplwi r5, 0xa1
/* 8015DE48 00153BC8  41 80 00 10 */	blt lbl_8015DE58
/* 8015DE4C 00153BCC  28 05 00 DF */	cmplwi r5, 0xdf
/* 8015DE50 00153BD0  41 81 00 08 */	bgt lbl_8015DE58
lbl_8015DE54:
/* 8015DE54 00153BD4  38 00 00 01 */	li r0, 1
lbl_8015DE58:
/* 8015DE58 00153BD8  2C 00 00 00 */	cmpwi r0, 0
/* 8015DE5C 00153BDC  38 E0 00 01 */	li r7, 1
/* 8015DE60 00153BE0  40 82 00 40 */	bne lbl_8015DEA0
/* 8015DE64 00153BE4  54 A6 C6 3E */	rlwinm r6, r5, 0x18, 0x18, 0x1f
/* 8015DE68 00153BE8  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 8015DE6C 00153BEC  28 06 00 81 */	cmplwi r6, 0x81
/* 8015DE70 00153BF0  38 00 00 00 */	li r0, 0
/* 8015DE74 00153BF4  41 80 00 20 */	blt lbl_8015DE94
/* 8015DE78 00153BF8  28 06 00 98 */	cmplwi r6, 0x98
/* 8015DE7C 00153BFC  41 81 00 18 */	bgt lbl_8015DE94
/* 8015DE80 00153C00  28 04 00 40 */	cmplwi r4, 0x40
/* 8015DE84 00153C04  41 80 00 10 */	blt lbl_8015DE94
/* 8015DE88 00153C08  28 04 00 FC */	cmplwi r4, 0xfc
/* 8015DE8C 00153C0C  41 81 00 08 */	bgt lbl_8015DE94
/* 8015DE90 00153C10  38 00 00 01 */	li r0, 1
lbl_8015DE94:
/* 8015DE94 00153C14  2C 00 00 00 */	cmpwi r0, 0
/* 8015DE98 00153C18  40 82 00 08 */	bne lbl_8015DEA0
/* 8015DE9C 00153C1C  38 E0 00 00 */	li r7, 0
lbl_8015DEA0:
/* 8015DEA0 00153C20  2C 07 00 00 */	cmpwi r7, 0
/* 8015DEA4 00153C24  41 82 00 08 */	beq lbl_8015DEAC
/* 8015DEA8 00153C28  48 00 00 08 */	b lbl_8015DEB0
lbl_8015DEAC:
/* 8015DEAC 00153C2C  A0 A3 00 18 */	lhz r5, 0x18(r3)
lbl_8015DEB0:
/* 8015DEB0 00153C30  54 A3 C6 3F */	rlwinm. r3, r5, 0x18, 0x18, 0x1f
/* 8015DEB4 00153C34  40 82 00 14 */	bne lbl_8015DEC8
/* 8015DEB8 00153C38  38 00 00 00 */	li r0, 0
/* 8015DEBC 00153C3C  98 A1 00 08 */	stb r5, 8(r1)
/* 8015DEC0 00153C40  98 01 00 09 */	stb r0, 9(r1)
/* 8015DEC4 00153C44  48 00 00 14 */	b lbl_8015DED8
lbl_8015DEC8:
/* 8015DEC8 00153C48  38 00 00 00 */	li r0, 0
/* 8015DECC 00153C4C  98 61 00 08 */	stb r3, 8(r1)
/* 8015DED0 00153C50  98 A1 00 09 */	stb r5, 9(r1)
/* 8015DED4 00153C54  98 01 00 0A */	stb r0, 0xa(r1)
lbl_8015DED8:
/* 8015DED8 00153C58  38 61 00 08 */	addi r3, r1, 8
/* 8015DEDC 00153C5C  38 81 00 18 */	addi r4, r1, 0x18
/* 8015DEE0 00153C60  38 A1 00 14 */	addi r5, r1, 0x14
/* 8015DEE4 00153C64  38 C1 00 10 */	addi r6, r1, 0x10
/* 8015DEE8 00153C68  38 E1 00 0C */	addi r7, r1, 0xc
/* 8015DEEC 00153C6C  48 07 EE 1D */	bl OSGetFontTexture
/* 8015DEF0 00153C70  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8015DEF4 00153C74  38 80 00 00 */	li r4, 0
/* 8015DEF8 00153C78  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8015DEFC 00153C7C  90 1F 00 00 */	stw r0, 0(r31)
/* 8015DF00 00153C80  98 9F 00 04 */	stb r4, 4(r31)
/* 8015DF04 00153C84  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8015DF08 00153C88  98 1F 00 05 */	stb r0, 5(r31)
/* 8015DF0C 00153C8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8015DF10 00153C90  98 1F 00 06 */	stb r0, 6(r31)
/* 8015DF14 00153C94  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 8015DF18 00153C98  98 1F 00 07 */	stb r0, 7(r31)
/* 8015DF1C 00153C9C  90 9F 00 08 */	stw r4, 8(r31)
/* 8015DF20 00153CA0  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 8015DF24 00153CA4  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8015DF28 00153CA8  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 8015DF2C 00153CAC  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8015DF30 00153CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DF34 00153CB4  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 8015DF38 00153CB8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8015DF3C 00153CBC  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8015DF40 00153CC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8015DF44 00153CC4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8015DF48 00153CC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015DF4C 00153CCC  7C 08 03 A6 */	mtlr r0
/* 8015DF50 00153CD0  38 21 00 30 */	addi r1, r1, 0x30
/* 8015DF54 00153CD4  4E 80 00 20 */	blr 

.global nw4r2ut7RomFontCFv$7GetEncoding
nw4r2ut7RomFontCFv$7GetEncoding:
/* 8015DF58 00153CD8  A0 0D A4 48 */	lhz r0, lbl_8059E868-_SDA_BASE_(r13)
/* 8015DF5C 00153CDC  2C 00 00 01 */	cmpwi r0, 1
/* 8015DF60 00153CE0  41 82 00 1C */	beq lbl_8015DF7C
/* 8015DF64 00153CE4  40 80 00 20 */	bge lbl_8015DF84
/* 8015DF68 00153CE8  2C 00 00 00 */	cmpwi r0, 0
/* 8015DF6C 00153CEC  40 80 00 08 */	bge lbl_8015DF74
/* 8015DF70 00153CF0  48 00 00 14 */	b lbl_8015DF84
lbl_8015DF74:
/* 8015DF74 00153CF4  38 60 00 03 */	li r3, 3
/* 8015DF78 00153CF8  4E 80 00 20 */	blr 
lbl_8015DF7C:
/* 8015DF7C 00153CFC  38 60 00 02 */	li r3, 2
/* 8015DF80 00153D00  4E 80 00 20 */	blr 
lbl_8015DF84:
/* 8015DF84 00153D04  38 60 00 03 */	li r3, 3
/* 8015DF88 00153D08  4E 80 00 20 */	blr 


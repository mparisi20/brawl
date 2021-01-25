.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global ipNetworkProducer$7getInstance
ipNetworkProducer$7getInstance:
/* 8004AE14 00040B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004AE18 00040B98  7C 08 02 A6 */	mflr r0
/* 8004AE1C 00040B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004AE20 00040BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004AE24 00040BA4  80 0D BC B8 */	lwz r0, lbl_805A00D8-_SDA_BASE_(r13)
/* 8004AE28 00040BA8  2C 00 00 00 */	cmpwi r0, 0
/* 8004AE2C 00040BAC  40 82 00 3C */	bne lbl_8004AE68
/* 8004AE30 00040BB0  38 60 00 12 */	li r3, 0x12
/* 8004AE34 00040BB4  38 80 00 01 */	li r4, 1
/* 8004AE38 00040BB8  4B FC 1A 81 */	bl srHeapType$7__nw
/* 8004AE3C 00040BBC  2C 03 00 00 */	cmpwi r3, 0
/* 8004AE40 00040BC0  7C 7F 1B 78 */	mr r31, r3
/* 8004AE44 00040BC4  41 82 00 20 */	beq lbl_8004AE64
/* 8004AE48 00040BC8  3C 60 80 05 */	lis r3, ipNetworkProducer$7networkInCallback@ha
/* 8004AE4C 00040BCC  38 63 AE 88 */	addi r3, r3, ipNetworkProducer$7networkInCallback@l
/* 8004AE50 00040BD0  48 00 00 31 */	bl NtShared$7ntSetConsumedDataCallback
/* 8004AE54 00040BD4  38 60 00 00 */	li r3, 0
/* 8004AE58 00040BD8  38 00 00 FF */	li r0, 0xff
/* 8004AE5C 00040BDC  98 7F 00 00 */	stb r3, 0(r31)
/* 8004AE60 00040BE0  98 1F 00 01 */	stb r0, 1(r31)
lbl_8004AE64:
/* 8004AE64 00040BE4  93 ED BC B8 */	stw r31, lbl_805A00D8-_SDA_BASE_(r13)
lbl_8004AE68:
/* 8004AE68 00040BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004AE6C 00040BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004AE70 00040BF0  80 6D BC B8 */	lwz r3, lbl_805A00D8-_SDA_BASE_(r13)
/* 8004AE74 00040BF4  7C 08 03 A6 */	mtlr r0
/* 8004AE78 00040BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004AE7C 00040BFC  4E 80 00 20 */	blr 

.global NtShared$7ntSetConsumedDataCallback
NtShared$7ntSetConsumedDataCallback:
/* 8004AE80 00040C00  90 6D BF 74 */	stw r3, lbl_805A0394-_SDA_BASE_(r13)
/* 8004AE84 00040C04  4E 80 00 20 */	blr 

.global ipNetworkProducer$7networkInCallback
ipNetworkProducer$7networkInCallback:
/* 8004AE88 00040C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004AE8C 00040C0C  7C 08 02 A6 */	mflr r0
/* 8004AE90 00040C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004AE94 00040C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004AE98 00040C18  7C 7F 1B 78 */	mr r31, r3
/* 8004AE9C 00040C1C  80 0D BC B8 */	lwz r0, lbl_805A00D8-_SDA_BASE_(r13)
/* 8004AEA0 00040C20  2C 00 00 00 */	cmpwi r0, 0
/* 8004AEA4 00040C24  40 82 00 38 */	bne lbl_8004AEDC
/* 8004AEA8 00040C28  38 60 00 12 */	li r3, 0x12
/* 8004AEAC 00040C2C  38 80 00 01 */	li r4, 1
/* 8004AEB0 00040C30  4B FC 1A 09 */	bl srHeapType$7__nw
/* 8004AEB4 00040C34  2C 03 00 00 */	cmpwi r3, 0
/* 8004AEB8 00040C38  41 82 00 20 */	beq lbl_8004AED8
/* 8004AEBC 00040C3C  3C A0 80 05 */	lis r5, ipNetworkProducer$7networkInCallback@ha
/* 8004AEC0 00040C40  38 80 00 00 */	li r4, 0
/* 8004AEC4 00040C44  38 A5 AE 88 */	addi r5, r5, ipNetworkProducer$7networkInCallback@l
/* 8004AEC8 00040C48  38 00 00 FF */	li r0, 0xff
/* 8004AECC 00040C4C  90 AD BF 74 */	stw r5, lbl_805A0394-_SDA_BASE_(r13)
/* 8004AED0 00040C50  98 83 00 00 */	stb r4, 0(r3)
/* 8004AED4 00040C54  98 03 00 01 */	stb r0, 1(r3)
lbl_8004AED8:
/* 8004AED8 00040C58  90 6D BC B8 */	stw r3, lbl_805A00D8-_SDA_BASE_(r13)
lbl_8004AEDC:
/* 8004AEDC 00040C5C  80 ED BC B8 */	lwz r7, lbl_805A00D8-_SDA_BASE_(r13)
/* 8004AEE0 00040C60  38 C0 00 00 */	li r6, 0
/* 8004AEE4 00040C64  88 67 00 00 */	lbz r3, 0(r7)
/* 8004AEE8 00040C68  2C 03 00 00 */	cmpwi r3, 0
/* 8004AEEC 00040C6C  41 82 00 10 */	beq lbl_8004AEFC
/* 8004AEF0 00040C70  7C 63 38 AE */	lbzx r3, r3, r7
/* 8004AEF4 00040C74  38 03 00 01 */	addi r0, r3, 1
/* 8004AEF8 00040C78  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_8004AEFC:
/* 8004AEFC 00040C7C  28 06 00 01 */	cmplwi r6, 1
/* 8004AF00 00040C80  41 80 00 08 */	blt lbl_8004AF08
/* 8004AF04 00040C84  38 C0 00 00 */	li r6, 0
lbl_8004AF08:
/* 8004AF08 00040C88  88 87 00 00 */	lbz r4, 0(r7)
/* 8004AF0C 00040C8C  54 C0 25 36 */	rlwinm r0, r6, 4, 0x14, 0x1b
/* 8004AF10 00040C90  7C A7 02 14 */	add r5, r7, r0
/* 8004AF14 00040C94  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8004AF18 00040C98  7C 87 22 14 */	add r4, r7, r4
/* 8004AF1C 00040C9C  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8004AF20 00040CA0  98 C4 00 01 */	stb r6, 1(r4)
/* 8004AF24 00040CA4  A0 9F 00 04 */	lhz r4, 4(r31)
/* 8004AF28 00040CA8  B0 65 00 02 */	sth r3, 2(r5)
/* 8004AF2C 00040CAC  A0 7F 00 06 */	lhz r3, 6(r31)
/* 8004AF30 00040CB0  B0 05 00 04 */	sth r0, 4(r5)
/* 8004AF34 00040CB4  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8004AF38 00040CB8  B0 85 00 06 */	sth r4, 6(r5)
/* 8004AF3C 00040CBC  A0 9F 00 0A */	lhz r4, 0xa(r31)
/* 8004AF40 00040CC0  B0 65 00 08 */	sth r3, 8(r5)
/* 8004AF44 00040CC4  A0 7F 00 0C */	lhz r3, 0xc(r31)
/* 8004AF48 00040CC8  B0 05 00 0A */	sth r0, 0xa(r5)
/* 8004AF4C 00040CCC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8004AF50 00040CD0  B0 85 00 0C */	sth r4, 0xc(r5)
/* 8004AF54 00040CD4  B0 65 00 0E */	sth r3, 0xe(r5)
/* 8004AF58 00040CD8  B0 05 00 10 */	sth r0, 0x10(r5)
/* 8004AF5C 00040CDC  88 67 00 00 */	lbz r3, 0(r7)
/* 8004AF60 00040CE0  38 03 00 01 */	addi r0, r3, 1
/* 8004AF64 00040CE4  98 07 00 00 */	stb r0, 0(r7)
/* 8004AF68 00040CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004AF6C 00040CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004AF70 00040CF0  7C 08 03 A6 */	mtlr r0
/* 8004AF74 00040CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004AF78 00040CF8  4E 80 00 20 */	blr 

.global ipNetworkProducer$7front
ipNetworkProducer$7front:
/* 8004AF7C 00040CFC  88 03 00 01 */	lbz r0, 1(r3)
/* 8004AF80 00040D00  54 00 20 36 */	slwi r0, r0, 4
/* 8004AF84 00040D04  7C 63 02 14 */	add r3, r3, r0
/* 8004AF88 00040D08  38 63 00 02 */	addi r3, r3, 2
/* 8004AF8C 00040D0C  4E 80 00 20 */	blr 

.global ipNetworkProducer$7pop
ipNetworkProducer$7pop:
/* 8004AF90 00040D10  88 83 00 00 */	lbz r4, 0(r3)
/* 8004AF94 00040D14  38 04 FF FF */	addi r0, r4, -1
/* 8004AF98 00040D18  98 03 00 00 */	stb r0, 0(r3)
/* 8004AF9C 00040D1C  4E 80 00 20 */	blr 

.global ipNetworkProducer$7clear
ipNetworkProducer$7clear:
/* 8004AFA0 00040D20  38 80 00 00 */	li r4, 0
/* 8004AFA4 00040D24  38 00 00 FF */	li r0, 0xff
/* 8004AFA8 00040D28  98 83 00 00 */	stb r4, 0(r3)
/* 8004AFAC 00040D2C  98 03 00 01 */	stb r0, 1(r3)
/* 8004AFB0 00040D30  4E 80 00 20 */	blr 


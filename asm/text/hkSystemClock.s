.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkSystemClockcreate
hkSystemClockcreate:
/* 8028059C 0027631C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802805A0 00276320  7C 08 02 A6 */	mflr r0
/* 802805A4 00276324  38 80 00 08 */	li r4, 8
/* 802805A8 00276328  38 A0 00 16 */	li r5, 0x16
/* 802805AC 0027632C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802805B0 00276330  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802805B4 00276334  81 83 00 00 */	lwz r12, 0(r3)
/* 802805B8 00276338  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802805BC 0027633C  7D 89 03 A6 */	mtctr r12
/* 802805C0 00276340  4E 80 04 21 */	bctrl 
/* 802805C4 00276344  38 00 00 08 */	li r0, 8
/* 802805C8 00276348  2C 03 00 00 */	cmpwi r3, 0
/* 802805CC 0027634C  B0 03 00 04 */	sth r0, 4(r3)
/* 802805D0 00276350  41 82 00 18 */	beq lbl_802805E8
/* 802805D4 00276354  38 00 00 01 */	li r0, 1
/* 802805D8 00276358  3C 80 80 48 */	lis r4, lbl_80486400@ha
/* 802805DC 0027635C  B0 03 00 06 */	sth r0, 6(r3)
/* 802805E0 00276360  38 84 64 00 */	addi r4, r4, lbl_80486400@l
/* 802805E4 00276364  90 83 00 00 */	stw r4, 0(r3)
lbl_802805E8:
/* 802805E8 00276368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802805EC 0027636C  7C 08 03 A6 */	mtlr r0
/* 802805F0 00276370  38 21 00 10 */	addi r1, r1, 0x10
/* 802805F4 00276374  4E 80 00 20 */	blr 

.global hkSingleton$013hkSystemClock$1$7__dt
hkSingleton$013hkSystemClock$1$7__dt:
/* 802805F8 00276378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802805FC 0027637C  7C 08 02 A6 */	mflr r0
/* 80280600 00276380  2C 03 00 00 */	cmpwi r3, 0
/* 80280604 00276384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280608 00276388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028060C 0027638C  7C 7F 1B 78 */	mr r31, r3
/* 80280610 00276390  41 82 00 2C */	beq lbl_8028063C
/* 80280614 00276394  2C 04 00 00 */	cmpwi r4, 0
/* 80280618 00276398  40 81 00 24 */	ble lbl_8028063C
/* 8028061C 0027639C  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 80280620 002763A0  7F E4 FB 78 */	mr r4, r31
/* 80280624 002763A4  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80280628 002763A8  38 C0 00 16 */	li r6, 0x16
/* 8028062C 002763AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80280630 002763B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80280634 002763B4  7D 89 03 A6 */	mtctr r12
/* 80280638 002763B8  4E 80 04 21 */	bctrl 
lbl_8028063C:
/* 8028063C 002763BC  7F E3 FB 78 */	mr r3, r31
/* 80280640 002763C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280644 002763C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280648 002763C8  7C 08 03 A6 */	mtlr r0
/* 8028064C 002763CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80280650 002763D0  4E 80 00 20 */	blr 

.global hkSystemClock$7__dt
hkSystemClock$7__dt:
/* 80280654 002763D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280658 002763D8  7C 08 02 A6 */	mflr r0
/* 8028065C 002763DC  2C 03 00 00 */	cmpwi r3, 0
/* 80280660 002763E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280664 002763E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280668 002763E8  7C 7F 1B 78 */	mr r31, r3
/* 8028066C 002763EC  41 82 00 2C */	beq lbl_80280698
/* 80280670 002763F0  2C 04 00 00 */	cmpwi r4, 0
/* 80280674 002763F4  40 81 00 24 */	ble lbl_80280698
/* 80280678 002763F8  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 8028067C 002763FC  7F E4 FB 78 */	mr r4, r31
/* 80280680 00276400  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80280684 00276404  38 C0 00 16 */	li r6, 0x16
/* 80280688 00276408  81 83 00 00 */	lwz r12, 0(r3)
/* 8028068C 0027640C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80280690 00276410  7D 89 03 A6 */	mtctr r12
/* 80280694 00276414  4E 80 04 21 */	bctrl 
lbl_80280698:
/* 80280698 00276418  7F E3 FB 78 */	mr r3, r31
/* 8028069C 0027641C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802806A0 00276420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802806A4 00276424  7C 08 03 A6 */	mtlr r0
/* 802806A8 00276428  38 21 00 10 */	addi r1, r1, 0x10
/* 802806AC 0027642C  4E 80 00 20 */	blr 

.global hkNgcSystemClock$7getTicksPerSecond
hkNgcSystemClock$7getTicksPerSecond:
/* 802806B0 00276430  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 802806B4 00276434  38 60 00 00 */	li r3, 0
/* 802806B8 00276438  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 802806BC 0027643C  54 04 F0 BE */	srwi r4, r0, 2
/* 802806C0 00276440  4E 80 00 20 */	blr 

.global hkNgcSystemClock$7getTickCounter
hkNgcSystemClock$7getTickCounter:
/* 802806C4 00276444  4B F6 14 70 */	b OSGetTime

.global hkNgcSystemClock$7__dt
hkNgcSystemClock$7__dt:
/* 802806C8 00276448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802806CC 0027644C  7C 08 02 A6 */	mflr r0
/* 802806D0 00276450  2C 03 00 00 */	cmpwi r3, 0
/* 802806D4 00276454  90 01 00 14 */	stw r0, 0x14(r1)
/* 802806D8 00276458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802806DC 0027645C  7C 7F 1B 78 */	mr r31, r3
/* 802806E0 00276460  41 82 00 2C */	beq lbl_8028070C
/* 802806E4 00276464  2C 04 00 00 */	cmpwi r4, 0
/* 802806E8 00276468  40 81 00 24 */	ble lbl_8028070C
/* 802806EC 0027646C  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802806F0 00276470  7F E4 FB 78 */	mr r4, r31
/* 802806F4 00276474  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802806F8 00276478  38 C0 00 16 */	li r6, 0x16
/* 802806FC 0027647C  81 83 00 00 */	lwz r12, 0(r3)
/* 80280700 00276480  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80280704 00276484  7D 89 03 A6 */	mtctr r12
/* 80280708 00276488  4E 80 04 21 */	bctrl 
lbl_8028070C:
/* 8028070C 0027648C  7F E3 FB 78 */	mr r3, r31
/* 80280710 00276490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280714 00276494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280718 00276498  7C 08 03 A6 */	mtlr r0
/* 8028071C 0027649C  38 21 00 10 */	addi r1, r1, 0x10
/* 80280720 002764A0  4E 80 00 20 */	blr 

.global __sinit_$3hkSystemClock_cpp
__sinit_$3hkSystemClock_cpp:
/* 80280724 002764A4  3C C0 80 28 */	lis r6, hkSystemClockcreate@ha
/* 80280728 002764A8  3C A0 80 53 */	lis r5, lbl_80532460@ha
/* 8028072C 002764AC  38 C6 05 9C */	addi r6, r6, hkSystemClockcreate@l
/* 80280730 002764B0  80 0D CA B0 */	lwz r0, lbl_805A0ED0-_SDA_BASE_(r13)
/* 80280734 002764B4  38 65 24 60 */	addi r3, r5, lbl_80532460@l
/* 80280738 002764B8  38 8D CA B8 */	addi r4, r13, lbl_805A0ED8-_SDA_BASE_
/* 8028073C 002764BC  90 C5 24 60 */	stw r6, 0x2460(r5)
/* 80280740 002764C0  90 83 00 08 */	stw r4, 8(r3)
/* 80280744 002764C4  90 03 00 04 */	stw r0, 4(r3)
/* 80280748 002764C8  90 6D CA B0 */	stw r3, lbl_805A0ED0-_SDA_BASE_(r13)
/* 8028074C 002764CC  4E 80 00 20 */	blr 


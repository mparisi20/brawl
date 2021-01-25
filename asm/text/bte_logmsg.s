.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global LogMsg
LogMsg:
/* 80231928 002276A8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8023192C 002276AC  7C 08 02 A6 */	mflr r0
/* 80231930 002276B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80231934 002276B4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80231938 002276B8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8023193C 002276BC  40 86 00 24 */	bne cr1, lbl_80231960
/* 80231940 002276C0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80231944 002276C4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80231948 002276C8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8023194C 002276CC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80231950 002276D0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80231954 002276D4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80231958 002276D8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8023195C 002276DC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80231960:
/* 80231960 002276E0  39 61 00 88 */	addi r11, r1, 0x88
/* 80231964 002276E4  38 01 00 08 */	addi r0, r1, 8
/* 80231968 002276E8  3D 80 02 00 */	lis r12, 0x200
/* 8023196C 002276EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80231970 002276F0  3B C1 00 68 */	addi r30, r1, 0x68
/* 80231974 002276F4  3F E0 80 52 */	lis r31, lbl_80527FC0@ha
/* 80231978 002276F8  90 61 00 08 */	stw r3, 8(r1)
/* 8023197C 002276FC  38 7F 7F C0 */	addi r3, r31, lbl_80527FC0@l
/* 80231980 00227700  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80231984 00227704  7F C5 F3 78 */	mr r5, r30
/* 80231988 00227708  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8023198C 0022770C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80231990 00227710  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80231994 00227714  91 21 00 20 */	stw r9, 0x20(r1)
/* 80231998 00227718  91 41 00 24 */	stw r10, 0x24(r1)
/* 8023199C 0022771C  91 81 00 68 */	stw r12, 0x68(r1)
/* 802319A0 00227720  91 61 00 6C */	stw r11, 0x6c(r1)
/* 802319A4 00227724  90 01 00 70 */	stw r0, 0x70(r1)
/* 802319A8 00227728  48 1C 6E FD */	bl vsprintf
/* 802319AC 0022772C  38 7F 7F C0 */	addi r3, r31, 0x7fc0
/* 802319B0 00227730  38 8D A9 B8 */	addi r4, r13, lbl_8059EDD8-_SDA_BASE_
/* 802319B4 00227734  7C 65 1B 78 */	mr r5, r3
/* 802319B8 00227738  4C C6 31 82 */	crclr 6
/* 802319BC 0022773C  48 1C 70 41 */	bl sprintf
/* 802319C0 00227740  38 7F 7F C0 */	addi r3, r31, 0x7fc0
/* 802319C4 00227744  4C C6 31 82 */	crclr 6
/* 802319C8 00227748  4B FA 6C 39 */	bl OSReport
/* 802319CC 0022774C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802319D0 00227750  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802319D4 00227754  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 802319D8 00227758  7C 08 03 A6 */	mtlr r0
/* 802319DC 0022775C  38 21 00 80 */	addi r1, r1, 0x80
/* 802319E0 00227760  4E 80 00 20 */	blr 

.global LogMsg_0
LogMsg_0:
/* 802319E4 00227764  88 0D C9 00 */	lbz r0, lbl_805A0D20-_SDA_BASE_(r13)
/* 802319E8 00227768  2C 00 00 00 */	cmpwi r0, 0
/* 802319EC 0022776C  4C 82 00 20 */	bnelr 
/* 802319F0 00227770  4C C6 31 82 */	crclr 6
/* 802319F4 00227774  4B FF FF 34 */	b LogMsg
/* 802319F8 00227778  4E 80 00 20 */	blr 

.global LogMsg_1
LogMsg_1:
/* 802319FC 0022777C  88 0D C9 00 */	lbz r0, lbl_805A0D20-_SDA_BASE_(r13)
/* 80231A00 00227780  2C 00 00 00 */	cmpwi r0, 0
/* 80231A04 00227784  4C 82 00 20 */	bnelr 
/* 80231A08 00227788  4C C6 31 82 */	crclr 6
/* 80231A0C 0022778C  4B FF FF 1C */	b LogMsg
/* 80231A10 00227790  4E 80 00 20 */	blr 

.global LogMsg_2
LogMsg_2:
/* 80231A14 00227794  88 0D C9 00 */	lbz r0, lbl_805A0D20-_SDA_BASE_(r13)
/* 80231A18 00227798  2C 00 00 00 */	cmpwi r0, 0
/* 80231A1C 0022779C  4C 82 00 20 */	bnelr 
/* 80231A20 002277A0  4C C6 31 82 */	crclr 6
/* 80231A24 002277A4  4B FF FF 04 */	b LogMsg
/* 80231A28 002277A8  4E 80 00 20 */	blr 

.global LogMsg_3
LogMsg_3:
/* 80231A2C 002277AC  88 0D C9 00 */	lbz r0, lbl_805A0D20-_SDA_BASE_(r13)
/* 80231A30 002277B0  2C 00 00 00 */	cmpwi r0, 0
/* 80231A34 002277B4  4C 82 00 20 */	bnelr 
/* 80231A38 002277B8  4C C6 31 82 */	crclr 6
/* 80231A3C 002277BC  4B FF FE EC */	b LogMsg
/* 80231A40 002277C0  4E 80 00 20 */	blr 

.global LogMsg_4
LogMsg_4:
/* 80231A44 002277C4  88 0D C9 00 */	lbz r0, lbl_805A0D20-_SDA_BASE_(r13)
/* 80231A48 002277C8  2C 00 00 00 */	cmpwi r0, 0
/* 80231A4C 002277CC  4C 82 00 20 */	bnelr 
/* 80231A50 002277D0  4C C6 31 82 */	crclr 6
/* 80231A54 002277D4  4B FF FE D4 */	b LogMsg
/* 80231A58 002277D8  4E 80 00 20 */	blr 

.global LogMsg_5
LogMsg_5:
/* 80231A5C 002277DC  88 0D C9 00 */	lbz r0, lbl_805A0D20-_SDA_BASE_(r13)
/* 80231A60 002277E0  2C 00 00 00 */	cmpwi r0, 0
/* 80231A64 002277E4  4C 82 00 20 */	bnelr 
/* 80231A68 002277E8  4C C6 31 82 */	crclr 6
/* 80231A6C 002277EC  4B FF FE BC */	b LogMsg
/* 80231A70 002277F0  4E 80 00 20 */	blr 

.global LogMsg_6
LogMsg_6:
/* 80231A74 002277F4  88 0D C9 00 */	lbz r0, lbl_805A0D20-_SDA_BASE_(r13)
/* 80231A78 002277F8  2C 00 00 00 */	cmpwi r0, 0
/* 80231A7C 002277FC  4C 82 00 20 */	bnelr 
/* 80231A80 00227800  4C C6 31 82 */	crclr 6
/* 80231A84 00227804  4B FF FE A4 */	b LogMsg
/* 80231A88 00227808  4E 80 00 20 */	blr 


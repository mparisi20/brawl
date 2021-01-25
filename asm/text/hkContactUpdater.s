.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkDynamicsContactMgr$7getContactPointProperties
hkDynamicsContactMgr$7getContactPointProperties:
/* 802D766C 002CD3EC  38 60 00 00 */	li r3, 0
/* 802D7670 002CD3F0  4E 80 00 20 */	blr 

.global hkInplaceArray$0Us$4256$1$7__dt
hkInplaceArray$0Us$4256$1$7__dt:
/* 802D7674 002CD3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7678 002CD3F8  7C 08 02 A6 */	mflr r0
/* 802D767C 002CD3FC  2C 03 00 00 */	cmpwi r3, 0
/* 802D7680 002CD400  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7684 002CD404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D7688 002CD408  7C 9F 23 78 */	mr r31, r4
/* 802D768C 002CD40C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D7690 002CD410  7C 7E 1B 78 */	mr r30, r3
/* 802D7694 002CD414  41 82 00 54 */	beq lbl_802D76E8
/* 802D7698 002CD418  41 82 00 28 */	beq lbl_802D76C0
/* 802D769C 002CD41C  80 03 00 08 */	lwz r0, 8(r3)
/* 802D76A0 002CD420  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 802D76A4 002CD424  40 82 00 1C */	bne lbl_802D76C0
/* 802D76A8 002CD428  80 1E 00 08 */	lwz r0, 8(r30)
/* 802D76AC 002CD42C  38 C0 00 15 */	li r6, 0x15
/* 802D76B0 002CD430  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802D76B4 002CD434  80 9E 00 00 */	lwz r4, 0(r30)
/* 802D76B8 002CD438  54 05 08 7C */	rlwinm r5, r0, 1, 1, 0x1e
/* 802D76BC 002CD43C  4B FA 74 01 */	bl hkThreadMemory$7deallocateChunk
lbl_802D76C0:
/* 802D76C0 002CD440  2C 1F 00 00 */	cmpwi r31, 0
/* 802D76C4 002CD444  40 81 00 24 */	ble lbl_802D76E8
/* 802D76C8 002CD448  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802D76CC 002CD44C  7F C4 F3 78 */	mr r4, r30
/* 802D76D0 002CD450  38 A0 02 0C */	li r5, 0x20c
/* 802D76D4 002CD454  38 C0 00 15 */	li r6, 0x15
/* 802D76D8 002CD458  81 83 00 00 */	lwz r12, 0(r3)
/* 802D76DC 002CD45C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D76E0 002CD460  7D 89 03 A6 */	mtctr r12
/* 802D76E4 002CD464  4E 80 04 21 */	bctrl 
lbl_802D76E8:
/* 802D76E8 002CD468  7F C3 F3 78 */	mr r3, r30
/* 802D76EC 002CD46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D76F0 002CD470  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D76F4 002CD474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D76F8 002CD478  7C 08 03 A6 */	mtlr r0
/* 802D76FC 002CD47C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7700 002CD480  4E 80 00 20 */	blr 

.global hkDynamicsContactMgr$7getAllContactPointIds
hkDynamicsContactMgr$7getAllContactPointIds:
/* 802D7704 002CD484  4E 80 00 20 */	blr 


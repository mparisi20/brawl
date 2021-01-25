.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global finishLoadedObjecthkKeyframedRigidMotion
finishLoadedObjecthkKeyframedRigidMotion:
/* 802E5564 002DB2E4  2C 03 00 00 */	cmpwi r3, 0
/* 802E5568 002DB2E8  4D 82 00 20 */	beqlr 
/* 802E556C 002DB2EC  3C 80 80 49 */	lis r4, lbl_80488100@ha
/* 802E5570 002DB2F0  38 00 00 01 */	li r0, 1
/* 802E5574 002DB2F4  38 84 81 00 */	addi r4, r4, lbl_80488100@l
/* 802E5578 002DB2F8  B0 03 00 06 */	sth r0, 6(r3)
/* 802E557C 002DB2FC  90 83 00 00 */	stw r4, 0(r3)
/* 802E5580 002DB300  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkKeyframedRigidMotion
cleanupLoadedObjecthkKeyframedRigidMotion:
/* 802E5584 002DB304  81 83 00 00 */	lwz r12, 0(r3)
/* 802E5588 002DB308  38 80 FF FF */	li r4, -1
/* 802E558C 002DB30C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E5590 002DB310  7D 89 03 A6 */	mtctr r12
/* 802E5594 002DB314  4E 80 04 20 */	bctr 

.global getVtablehkKeyframedRigidMotion
getVtablehkKeyframedRigidMotion:
/* 802E5598 002DB318  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E559C 002DB31C  7C 2C 0B 78 */	mr r12, r1
/* 802E55A0 002DB320  21 6B FE E0 */	subfic r11, r11, -288
/* 802E55A4 002DB324  7C 21 59 6E */	stwux r1, r1, r11
/* 802E55A8 002DB328  34 01 00 10 */	addic. r0, r1, 0x10
/* 802E55AC 002DB32C  41 82 00 18 */	beq lbl_802E55C4
/* 802E55B0 002DB330  3C 60 80 49 */	lis r3, lbl_80488100@ha
/* 802E55B4 002DB334  38 00 00 01 */	li r0, 1
/* 802E55B8 002DB338  38 63 81 00 */	addi r3, r3, lbl_80488100@l
/* 802E55BC 002DB33C  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802E55C0 002DB340  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802E55C4:
/* 802E55C4 002DB344  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E55C8 002DB348  81 41 00 00 */	lwz r10, 0(r1)
/* 802E55CC 002DB34C  7D 41 53 78 */	mr r1, r10
/* 802E55D0 002DB350  4E 80 00 20 */	blr 

.global finishLoadedObjecthkMaxSizeMotion
finishLoadedObjecthkMaxSizeMotion:
/* 802E55D4 002DB354  2C 03 00 00 */	cmpwi r3, 0
/* 802E55D8 002DB358  4D 82 00 20 */	beqlr 
/* 802E55DC 002DB35C  3C 80 80 48 */	lis r4, lbl_80487E28@ha
/* 802E55E0 002DB360  38 00 00 01 */	li r0, 1
/* 802E55E4 002DB364  38 84 7E 28 */	addi r4, r4, lbl_80487E28@l
/* 802E55E8 002DB368  B0 03 00 06 */	sth r0, 6(r3)
/* 802E55EC 002DB36C  90 83 00 00 */	stw r4, 0(r3)
/* 802E55F0 002DB370  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkMaxSizeMotion
cleanupLoadedObjecthkMaxSizeMotion:
/* 802E55F4 002DB374  81 83 00 00 */	lwz r12, 0(r3)
/* 802E55F8 002DB378  38 80 FF FF */	li r4, -1
/* 802E55FC 002DB37C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E5600 002DB380  7D 89 03 A6 */	mtctr r12
/* 802E5604 002DB384  4E 80 04 20 */	bctr 

.global getVtablehkMaxSizeMotion
getVtablehkMaxSizeMotion:
/* 802E5608 002DB388  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E560C 002DB38C  7C 2C 0B 78 */	mr r12, r1
/* 802E5610 002DB390  21 6B FE E0 */	subfic r11, r11, -288
/* 802E5614 002DB394  7C 21 59 6E */	stwux r1, r1, r11
/* 802E5618 002DB398  34 01 00 10 */	addic. r0, r1, 0x10
/* 802E561C 002DB39C  41 82 00 18 */	beq lbl_802E5634
/* 802E5620 002DB3A0  3C 60 80 48 */	lis r3, lbl_80487E28@ha
/* 802E5624 002DB3A4  38 00 00 01 */	li r0, 1
/* 802E5628 002DB3A8  38 63 7E 28 */	addi r3, r3, lbl_80487E28@l
/* 802E562C 002DB3AC  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802E5630 002DB3B0  90 61 00 10 */	stw r3, 0x10(r1)
lbl_802E5634:
/* 802E5634 002DB3B4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E5638 002DB3B8  81 41 00 00 */	lwz r10, 0(r1)
/* 802E563C 002DB3BC  7D 41 53 78 */	mr r1, r10
/* 802E5640 002DB3C0  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7__ct
hkKeyframedRigidMotion$7__ct:
/* 802E5644 002DB3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5648 002DB3C8  7C 08 02 A6 */	mflr r0
/* 802E564C 002DB3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5650 002DB3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E5654 002DB3D4  7C 7F 1B 78 */	mr r31, r3
/* 802E5658 002DB3D8  4B FF EC E1 */	bl hkMotion$7__ct
/* 802E565C 002DB3DC  C0 02 B0 B0 */	lfs f0, lbl_805A43D0-_SDA2_BASE_(r2)
/* 802E5660 002DB3E0  3C A0 80 49 */	lis r5, lbl_80488100@ha
/* 802E5664 002DB3E4  38 80 00 00 */	li r4, 0
/* 802E5668 002DB3E8  38 00 00 06 */	li r0, 6
/* 802E566C 002DB3EC  38 A5 81 00 */	addi r5, r5, lbl_80488100@l
/* 802E5670 002DB3F0  90 9F 01 00 */	stw r4, 0x100(r31)
/* 802E5674 002DB3F4  7F E3 FB 78 */	mr r3, r31
/* 802E5678 002DB3F8  90 BF 00 00 */	stw r5, 0(r31)
/* 802E567C 002DB3FC  90 9F 01 04 */	stw r4, 0x104(r31)
/* 802E5680 002DB400  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 802E5684 002DB404  D0 1F 00 D8 */	stfs f0, 0xd8(r31)
/* 802E5688 002DB408  D0 1F 00 D4 */	stfs f0, 0xd4(r31)
/* 802E568C 002DB40C  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 802E5690 002DB410  98 1F 00 08 */	stb r0, 8(r31)
/* 802E5694 002DB414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5698 002DB418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E569C 002DB41C  7C 08 03 A6 */	mtlr r0
/* 802E56A0 002DB420  38 21 00 10 */	addi r1, r1, 0x10
/* 802E56A4 002DB424  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7__dt
hkKeyframedRigidMotion$7__dt:
/* 802E56A8 002DB428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E56AC 002DB42C  7C 08 02 A6 */	mflr r0
/* 802E56B0 002DB430  2C 03 00 00 */	cmpwi r3, 0
/* 802E56B4 002DB434  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E56B8 002DB438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E56BC 002DB43C  7C 9F 23 78 */	mr r31, r4
/* 802E56C0 002DB440  93 C1 00 08 */	stw r30, 8(r1)
/* 802E56C4 002DB444  7C 7E 1B 78 */	mr r30, r3
/* 802E56C8 002DB448  41 82 00 74 */	beq lbl_802E573C
/* 802E56CC 002DB44C  80 A3 01 00 */	lwz r5, 0x100(r3)
/* 802E56D0 002DB450  3C 80 80 49 */	lis r4, lbl_80488100@ha
/* 802E56D4 002DB454  38 84 81 00 */	addi r4, r4, lbl_80488100@l
/* 802E56D8 002DB458  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 802E56DC 002DB45C  90 83 00 00 */	stw r4, 0(r3)
/* 802E56E0 002DB460  41 86 00 40 */	beq cr1, lbl_802E5720
/* 802E56E4 002DB464  A0 05 00 04 */	lhz r0, 4(r5)
/* 802E56E8 002DB468  2C 00 00 00 */	cmpwi r0, 0
/* 802E56EC 002DB46C  41 82 00 34 */	beq lbl_802E5720
/* 802E56F0 002DB470  A8 65 00 06 */	lha r3, 6(r5)
/* 802E56F4 002DB474  38 63 FF FF */	addi r3, r3, -1
/* 802E56F8 002DB478  7C 60 07 35 */	extsh. r0, r3
/* 802E56FC 002DB47C  B0 65 00 06 */	sth r3, 6(r5)
/* 802E5700 002DB480  40 82 00 20 */	bne lbl_802E5720
/* 802E5704 002DB484  41 86 00 1C */	beq cr1, lbl_802E5720
/* 802E5708 002DB488  81 85 00 00 */	lwz r12, 0(r5)
/* 802E570C 002DB48C  7C A3 2B 78 */	mr r3, r5
/* 802E5710 002DB490  38 80 00 01 */	li r4, 1
/* 802E5714 002DB494  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E5718 002DB498  7D 89 03 A6 */	mtctr r12
/* 802E571C 002DB49C  4E 80 04 21 */	bctrl 
lbl_802E5720:
/* 802E5720 002DB4A0  2C 1F 00 00 */	cmpwi r31, 0
/* 802E5724 002DB4A4  40 81 00 18 */	ble lbl_802E573C
/* 802E5728 002DB4A8  80 6D CA A8 */	lwz r3, lbl_805A0EC8-_SDA_BASE_(r13)
/* 802E572C 002DB4AC  7F C4 F3 78 */	mr r4, r30
/* 802E5730 002DB4B0  A0 BE 00 04 */	lhz r5, 4(r30)
/* 802E5734 002DB4B4  38 C0 00 2C */	li r6, 0x2c
/* 802E5738 002DB4B8  4B F9 93 85 */	bl hkThreadMemory$7deallocateChunk
lbl_802E573C:
/* 802E573C 002DB4BC  7F C3 F3 78 */	mr r3, r30
/* 802E5740 002DB4C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5744 002DB4C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E5748 002DB4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E574C 002DB4CC  7C 08 03 A6 */	mtlr r0
/* 802E5750 002DB4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5754 002DB4D4  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7setMass
hkKeyframedRigidMotion$7setMass:
/* 802E5758 002DB4D8  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7setMassInv
hkKeyframedRigidMotion$7setMassInv:
/* 802E575C 002DB4DC  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7getInertiaLocal
hkKeyframedRigidMotion$7getInertiaLocal:
/* 802E5760 002DB4E0  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E5764 002DB4E4  7C 2C 0B 78 */	mr r12, r1
/* 802E5768 002DB4E8  21 6B FF E0 */	subfic r11, r11, -32
/* 802E576C 002DB4EC  C0 02 B0 B0 */	lfs f0, lbl_805A43D0-_SDA2_BASE_(r2)
/* 802E5770 002DB4F0  7C 21 59 6E */	stwux r1, r1, r11
/* 802E5774 002DB4F4  D0 04 00 00 */	stfs f0, 0(r4)
/* 802E5778 002DB4F8  D0 04 00 04 */	stfs f0, 4(r4)
/* 802E577C 002DB4FC  D0 04 00 08 */	stfs f0, 8(r4)
/* 802E5780 002DB500  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802E5784 002DB504  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 802E5788 002DB508  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 802E578C 002DB50C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 802E5790 002DB510  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 802E5794 002DB514  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 802E5798 002DB518  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 802E579C 002DB51C  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 802E57A0 002DB520  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 802E57A4 002DB524  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802E57A8 002DB528  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802E57AC 002DB52C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802E57B0 002DB530  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802E57B4 002DB534  81 41 00 00 */	lwz r10, 0(r1)
/* 802E57B8 002DB538  7D 41 53 78 */	mr r1, r10
/* 802E57BC 002DB53C  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7getInertiaWorld
hkKeyframedRigidMotion$7getInertiaWorld:
/* 802E57C0 002DB540  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E57C4 002DB544  7C 2C 0B 78 */	mr r12, r1
/* 802E57C8 002DB548  21 6B FF E0 */	subfic r11, r11, -32
/* 802E57CC 002DB54C  C0 02 B0 B0 */	lfs f0, lbl_805A43D0-_SDA2_BASE_(r2)
/* 802E57D0 002DB550  7C 21 59 6E */	stwux r1, r1, r11
/* 802E57D4 002DB554  D0 04 00 00 */	stfs f0, 0(r4)
/* 802E57D8 002DB558  D0 04 00 04 */	stfs f0, 4(r4)
/* 802E57DC 002DB55C  D0 04 00 08 */	stfs f0, 8(r4)
/* 802E57E0 002DB560  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802E57E4 002DB564  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 802E57E8 002DB568  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 802E57EC 002DB56C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 802E57F0 002DB570  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 802E57F4 002DB574  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 802E57F8 002DB578  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 802E57FC 002DB57C  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 802E5800 002DB580  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 802E5804 002DB584  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802E5808 002DB588  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802E580C 002DB58C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802E5810 002DB590  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802E5814 002DB594  81 41 00 00 */	lwz r10, 0(r1)
/* 802E5818 002DB598  7D 41 53 78 */	mr r1, r10
/* 802E581C 002DB59C  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7setInertiaLocal
hkKeyframedRigidMotion$7setInertiaLocal:
/* 802E5820 002DB5A0  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7setInertiaInvLocal
hkKeyframedRigidMotion$7setInertiaInvLocal:
/* 802E5824 002DB5A4  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7getInertiaInvLocal
hkKeyframedRigidMotion$7getInertiaInvLocal:
/* 802E5828 002DB5A8  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E582C 002DB5AC  7C 2C 0B 78 */	mr r12, r1
/* 802E5830 002DB5B0  21 6B FF E0 */	subfic r11, r11, -32
/* 802E5834 002DB5B4  C0 02 B0 B0 */	lfs f0, lbl_805A43D0-_SDA2_BASE_(r2)
/* 802E5838 002DB5B8  7C 21 59 6E */	stwux r1, r1, r11
/* 802E583C 002DB5BC  D0 04 00 00 */	stfs f0, 0(r4)
/* 802E5840 002DB5C0  D0 04 00 04 */	stfs f0, 4(r4)
/* 802E5844 002DB5C4  D0 04 00 08 */	stfs f0, 8(r4)
/* 802E5848 002DB5C8  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802E584C 002DB5CC  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 802E5850 002DB5D0  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 802E5854 002DB5D4  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 802E5858 002DB5D8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 802E585C 002DB5DC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 802E5860 002DB5E0  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 802E5864 002DB5E4  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 802E5868 002DB5E8  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 802E586C 002DB5EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802E5870 002DB5F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802E5874 002DB5F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802E5878 002DB5F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802E587C 002DB5FC  81 41 00 00 */	lwz r10, 0(r1)
/* 802E5880 002DB600  7D 41 53 78 */	mr r1, r10
/* 802E5884 002DB604  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7getInertiaInvWorld
hkKeyframedRigidMotion$7getInertiaInvWorld:
/* 802E5888 002DB608  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802E588C 002DB60C  7C 2C 0B 78 */	mr r12, r1
/* 802E5890 002DB610  21 6B FF E0 */	subfic r11, r11, -32
/* 802E5894 002DB614  C0 02 B0 B0 */	lfs f0, lbl_805A43D0-_SDA2_BASE_(r2)
/* 802E5898 002DB618  7C 21 59 6E */	stwux r1, r1, r11
/* 802E589C 002DB61C  D0 04 00 00 */	stfs f0, 0(r4)
/* 802E58A0 002DB620  D0 04 00 04 */	stfs f0, 4(r4)
/* 802E58A4 002DB624  D0 04 00 08 */	stfs f0, 8(r4)
/* 802E58A8 002DB628  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802E58AC 002DB62C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 802E58B0 002DB630  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 802E58B4 002DB634  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 802E58B8 002DB638  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 802E58BC 002DB63C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 802E58C0 002DB640  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 802E58C4 002DB644  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 802E58C8 002DB648  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 802E58CC 002DB64C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802E58D0 002DB650  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802E58D4 002DB654  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802E58D8 002DB658  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802E58DC 002DB65C  81 41 00 00 */	lwz r10, 0(r1)
/* 802E58E0 002DB660  7D 41 53 78 */	mr r1, r10
/* 802E58E4 002DB664  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7applyLinearImpulse
hkKeyframedRigidMotion$7applyLinearImpulse:
/* 802E58E8 002DB668  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7applyPointImpulse
hkKeyframedRigidMotion$7applyPointImpulse:
/* 802E58EC 002DB66C  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7applyAngularImpulse
hkKeyframedRigidMotion$7applyAngularImpulse:
/* 802E58F0 002DB670  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7applyForce
hkKeyframedRigidMotion$7applyForce:
/* 802E58F4 002DB674  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7applyForce_10742
hkKeyframedRigidMotion$7applyForce_10742:
/* 802E58F8 002DB678  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7applyTorque
hkKeyframedRigidMotion$7applyTorque:
/* 802E58FC 002DB67C  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7setStepPosition
hkKeyframedRigidMotion$7setStepPosition:
/* 802E5900 002DB680  4E 80 00 20 */	blr 

.global hkKeyframedRigidMotion$7setStoredMotion
hkKeyframedRigidMotion$7setStoredMotion:
/* 802E5904 002DB684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5908 002DB688  7C 08 02 A6 */	mflr r0
/* 802E590C 002DB68C  2C 04 00 00 */	cmpwi r4, 0
/* 802E5910 002DB690  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5914 002DB694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E5918 002DB698  7C 9F 23 78 */	mr r31, r4
/* 802E591C 002DB69C  93 C1 00 08 */	stw r30, 8(r1)
/* 802E5920 002DB6A0  7C 7E 1B 78 */	mr r30, r3
/* 802E5924 002DB6A4  41 82 00 1C */	beq lbl_802E5940
/* 802E5928 002DB6A8  A0 04 00 04 */	lhz r0, 4(r4)
/* 802E592C 002DB6AC  2C 00 00 00 */	cmpwi r0, 0
/* 802E5930 002DB6B0  41 82 00 10 */	beq lbl_802E5940
/* 802E5934 002DB6B4  A8 A4 00 06 */	lha r5, 6(r4)
/* 802E5938 002DB6B8  38 05 00 01 */	addi r0, r5, 1
/* 802E593C 002DB6BC  B0 04 00 06 */	sth r0, 6(r4)
lbl_802E5940:
/* 802E5940 002DB6C0  80 63 01 00 */	lwz r3, 0x100(r3)
/* 802E5944 002DB6C4  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 802E5948 002DB6C8  41 86 00 3C */	beq cr1, lbl_802E5984
/* 802E594C 002DB6CC  A0 03 00 04 */	lhz r0, 4(r3)
/* 802E5950 002DB6D0  2C 00 00 00 */	cmpwi r0, 0
/* 802E5954 002DB6D4  41 82 00 30 */	beq lbl_802E5984
/* 802E5958 002DB6D8  A8 83 00 06 */	lha r4, 6(r3)
/* 802E595C 002DB6DC  38 84 FF FF */	addi r4, r4, -1
/* 802E5960 002DB6E0  7C 80 07 35 */	extsh. r0, r4
/* 802E5964 002DB6E4  B0 83 00 06 */	sth r4, 6(r3)
/* 802E5968 002DB6E8  40 82 00 1C */	bne lbl_802E5984
/* 802E596C 002DB6EC  41 86 00 18 */	beq cr1, lbl_802E5984
/* 802E5970 002DB6F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802E5974 002DB6F4  38 80 00 01 */	li r4, 1
/* 802E5978 002DB6F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E597C 002DB6FC  7D 89 03 A6 */	mtctr r12
/* 802E5980 002DB700  4E 80 04 21 */	bctrl 
lbl_802E5984:
/* 802E5984 002DB704  93 FE 01 00 */	stw r31, 0x100(r30)
/* 802E5988 002DB708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E598C 002DB70C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E5990 002DB710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5994 002DB714  7C 08 03 A6 */	mtlr r0
/* 802E5998 002DB718  38 21 00 10 */	addi r1, r1, 0x10
/* 802E599C 002DB71C  4E 80 00 20 */	blr 

.global __sinit_$3hkKeyframedRigidMotion_cpp
__sinit_$3hkKeyframedRigidMotion_cpp:
/* 802E59A0 002DB720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E59A4 002DB724  7C 08 02 A6 */	mflr r0
/* 802E59A8 002DB728  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E59AC 002DB72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E59B0 002DB730  4B FF FB E9 */	bl getVtablehkKeyframedRigidMotion
/* 802E59B4 002DB734  3F E0 80 41 */	lis r31, lbl_80413148@ha
/* 802E59B8 002DB738  3C E0 80 53 */	lis r7, lbl_80533108@ha
/* 802E59BC 002DB73C  3C C0 80 2E */	lis r6, finishLoadedObjecthkKeyframedRigidMotion@ha
/* 802E59C0 002DB740  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkKeyframedRigidMotion@ha
/* 802E59C4 002DB744  3B FF 31 48 */	addi r31, r31, lbl_80413148@l
/* 802E59C8 002DB748  38 A7 31 08 */	addi r5, r7, lbl_80533108@l
/* 802E59CC 002DB74C  38 C6 55 64 */	addi r6, r6, finishLoadedObjecthkKeyframedRigidMotion@l
/* 802E59D0 002DB750  38 84 55 84 */	addi r4, r4, cleanupLoadedObjecthkKeyframedRigidMotion@l
/* 802E59D4 002DB754  93 E7 31 08 */	stw r31, 0x3108(r7)
/* 802E59D8 002DB758  90 C5 00 04 */	stw r6, 4(r5)
/* 802E59DC 002DB75C  90 85 00 08 */	stw r4, 8(r5)
/* 802E59E0 002DB760  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E59E4 002DB764  4B FF FC 25 */	bl getVtablehkMaxSizeMotion
/* 802E59E8 002DB768  3C E0 80 53 */	lis r7, lbl_80533118@ha
/* 802E59EC 002DB76C  3C C0 80 2E */	lis r6, finishLoadedObjecthkMaxSizeMotion@ha
/* 802E59F0 002DB770  3C 80 80 2E */	lis r4, cleanupLoadedObjecthkMaxSizeMotion@ha
/* 802E59F4 002DB774  38 1F 00 17 */	addi r0, r31, 0x17
/* 802E59F8 002DB778  38 A7 31 18 */	addi r5, r7, lbl_80533118@l
/* 802E59FC 002DB77C  38 C6 55 D4 */	addi r6, r6, finishLoadedObjecthkMaxSizeMotion@l
/* 802E5A00 002DB780  38 84 55 F4 */	addi r4, r4, cleanupLoadedObjecthkMaxSizeMotion@l
/* 802E5A04 002DB784  90 07 31 18 */	stw r0, 0x3118(r7)
/* 802E5A08 002DB788  90 C5 00 04 */	stw r6, 4(r5)
/* 802E5A0C 002DB78C  90 85 00 08 */	stw r4, 8(r5)
/* 802E5A10 002DB790  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E5A14 002DB794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5A18 002DB798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5A1C 002DB79C  7C 08 03 A6 */	mtlr r0
/* 802E5A20 002DB7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5A24 002DB7A4  4E 80 00 20 */	blr 

.global __sinit_$3hkKeyframedRigidMotionClass_cpp
__sinit_$3hkKeyframedRigidMotionClass_cpp:
/* 802E5A28 002DB7A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E5A2C 002DB7AC  7C 08 02 A6 */	mflr r0
/* 802E5A30 002DB7B0  3C 60 80 41 */	lis r3, lbl_80413198@ha
/* 802E5A34 002DB7B4  3C A0 80 53 */	lis r5, lbl_805330B0@ha
/* 802E5A38 002DB7B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E5A3C 002DB7BC  38 63 31 98 */	addi r3, r3, lbl_80413198@l
/* 802E5A40 002DB7C0  38 00 00 02 */	li r0, 2
/* 802E5A44 002DB7C4  38 A5 30 B0 */	addi r5, r5, lbl_805330B0@l
/* 802E5A48 002DB7C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E5A4C 002DB7CC  3F E0 80 41 */	lis r31, lbl_804131C0@ha
/* 802E5A50 002DB7D0  38 9F 31 C0 */	addi r4, r31, lbl_804131C0@l
/* 802E5A54 002DB7D4  38 C0 01 10 */	li r6, 0x110
/* 802E5A58 002DB7D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E5A5C 002DB7DC  3F C0 80 53 */	lis r30, lbl_80533128@ha
/* 802E5A60 002DB7E0  38 E0 00 00 */	li r7, 0
/* 802E5A64 002DB7E4  39 00 00 00 */	li r8, 0
/* 802E5A68 002DB7E8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802E5A6C 002DB7EC  3B A0 00 00 */	li r29, 0
/* 802E5A70 002DB7F0  39 20 00 00 */	li r9, 0
/* 802E5A74 002DB7F4  39 40 00 00 */	li r10, 0
/* 802E5A78 002DB7F8  90 61 00 08 */	stw r3, 8(r1)
/* 802E5A7C 002DB7FC  38 7E 31 28 */	addi r3, r30, lbl_80533128@l
/* 802E5A80 002DB800  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E5A84 002DB804  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802E5A88 002DB808  4B F9 6D 81 */	bl hkClass$7__ct
/* 802E5A8C 002DB80C  93 A1 00 08 */	stw r29, 8(r1)
/* 802E5A90 002DB810  38 9F 31 C0 */	addi r4, r31, 0x31c0
/* 802E5A94 002DB814  3C 60 80 53 */	lis r3, lbl_8053314C@ha
/* 802E5A98 002DB818  38 BE 31 28 */	addi r5, r30, 0x3128
/* 802E5A9C 002DB81C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802E5AA0 002DB820  38 63 31 4C */	addi r3, r3, lbl_8053314C@l
/* 802E5AA4 002DB824  38 84 00 17 */	addi r4, r4, 0x17
/* 802E5AA8 002DB828  38 C0 01 10 */	li r6, 0x110
/* 802E5AAC 002DB82C  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802E5AB0 002DB830  38 E0 00 00 */	li r7, 0
/* 802E5AB4 002DB834  39 00 00 00 */	li r8, 0
/* 802E5AB8 002DB838  39 20 00 00 */	li r9, 0
/* 802E5ABC 002DB83C  39 40 00 00 */	li r10, 0
/* 802E5AC0 002DB840  4B F9 6D 49 */	bl hkClass$7__ct
/* 802E5AC4 002DB844  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E5AC8 002DB848  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E5ACC 002DB84C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E5AD0 002DB850  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802E5AD4 002DB854  7C 08 03 A6 */	mtlr r0
/* 802E5AD8 002DB858  38 21 00 30 */	addi r1, r1, 0x30
/* 802E5ADC 002DB85C  4E 80 00 20 */	blr 


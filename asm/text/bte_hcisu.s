.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global bte_hcisu_send
bte_hcisu_send:
/* 80231844 002275C4  B0 83 00 00 */	sth r4, 0(r3)
/* 80231848 002275C8  80 8D C8 F8 */	lwz r4, lbl_805A0D18-_SDA_BASE_(r13)
/* 8023184C 002275CC  2C 04 00 00 */	cmpwi r4, 0
/* 80231850 002275D0  41 82 00 10 */	beq lbl_80231860
/* 80231854 002275D4  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80231858 002275D8  7D 89 03 A6 */	mtctr r12
/* 8023185C 002275DC  4E 80 04 20 */	bctr 
lbl_80231860:
/* 80231860 002275E0  4B FF D8 80 */	b GKI_freebuf

.global bte_hcisu_task
bte_hcisu_task:
/* 80231864 002275E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80231868 002275E8  7C 08 02 A6 */	mflr r0
/* 8023186C 002275EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80231870 002275F0  80 6D C8 F8 */	lwz r3, lbl_805A0D18-_SDA_BASE_(r13)
/* 80231874 002275F4  2C 03 00 00 */	cmpwi r3, 0
/* 80231878 002275F8  41 82 00 40 */	beq lbl_802318B8
/* 8023187C 002275FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80231880 00227600  2C 0C 00 00 */	cmpwi r12, 0
/* 80231884 00227604  41 82 00 18 */	beq lbl_8023189C
/* 80231888 00227608  38 60 00 02 */	li r3, 2
/* 8023188C 0022760C  38 80 00 01 */	li r4, 1
/* 80231890 00227610  38 A0 08 00 */	li r5, 0x800
/* 80231894 00227614  7D 89 03 A6 */	mtctr r12
/* 80231898 00227618  4E 80 04 21 */	bctrl 
lbl_8023189C:
/* 8023189C 0022761C  80 6D C8 F8 */	lwz r3, lbl_805A0D18-_SDA_BASE_(r13)
/* 802318A0 00227620  81 83 00 04 */	lwz r12, 4(r3)
/* 802318A4 00227624  2C 0C 00 00 */	cmpwi r12, 0
/* 802318A8 00227628  41 82 00 10 */	beq lbl_802318B8
/* 802318AC 0022762C  80 6D C8 FC */	lwz r3, lbl_805A0D1C-_SDA_BASE_(r13)
/* 802318B0 00227630  7D 89 03 A6 */	mtctr r12
/* 802318B4 00227634  4E 80 04 21 */	bctrl 
lbl_802318B8:
/* 802318B8 00227638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802318BC 0022763C  7C 08 03 A6 */	mtlr r0
/* 802318C0 00227640  38 21 00 10 */	addi r1, r1, 0x10
/* 802318C4 00227644  4E 80 00 20 */	blr 

.global bte_hcisu_close
bte_hcisu_close:
/* 802318C8 00227648  80 6D C8 F8 */	lwz r3, lbl_805A0D18-_SDA_BASE_(r13)
/* 802318CC 0022764C  2C 03 00 00 */	cmpwi r3, 0
/* 802318D0 00227650  4D 82 00 20 */	beqlr 
/* 802318D4 00227654  81 83 00 08 */	lwz r12, 8(r3)
/* 802318D8 00227658  2C 0C 00 00 */	cmpwi r12, 0
/* 802318DC 0022765C  4D 82 00 20 */	beqlr 
/* 802318E0 00227660  7D 89 03 A6 */	mtctr r12
/* 802318E4 00227664  4E 80 04 20 */	bctr 
/* 802318E8 00227668  4E 80 00 20 */	blr 

.global bta_ci_hci_msg_handler
bta_ci_hci_msg_handler:
/* 802318EC 0022766C  7C 65 1B 78 */	mr r5, r3
/* 802318F0 00227670  38 60 00 02 */	li r3, 2
/* 802318F4 00227674  38 80 00 00 */	li r4, 0
/* 802318F8 00227678  4B FF D9 9C */	b GKI_send_msg


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global gfReturnStatusCallbackList$7add
gfReturnStatusCallbackList$7add:
/* 80038684 0002E404  80 A3 00 00 */	lwz r5, 0(r3)
/* 80038688 0002E408  2C 05 00 00 */	cmpwi r5, 0
/* 8003868C 0002E40C  40 82 00 14 */	bne lbl_800386A0
/* 80038690 0002E410  90 83 00 00 */	stw r4, 0(r3)
/* 80038694 0002E414  4E 80 00 20 */	blr 
/* 80038698 0002E418  48 00 00 08 */	b lbl_800386A0
lbl_8003869C:
/* 8003869C 0002E41C  7C 05 03 78 */	mr r5, r0
lbl_800386A0:
/* 800386A0 0002E420  80 05 00 00 */	lwz r0, 0(r5)
/* 800386A4 0002E424  2C 00 00 00 */	cmpwi r0, 0
/* 800386A8 0002E428  40 82 FF F4 */	bne lbl_8003869C
/* 800386AC 0002E42C  90 85 00 00 */	stw r4, 0(r5)
/* 800386B0 0002E430  4E 80 00 20 */	blr 

.global gfReturnStatusCallbackList$7remove
gfReturnStatusCallbackList$7remove:
/* 800386B4 0002E434  80 A3 00 00 */	lwz r5, 0(r3)
/* 800386B8 0002E438  38 C0 00 01 */	li r6, 1
/* 800386BC 0002E43C  7C 05 20 40 */	cmplw r5, r4
/* 800386C0 0002E440  40 82 00 10 */	bne lbl_800386D0
/* 800386C4 0002E444  80 04 00 00 */	lwz r0, 0(r4)
/* 800386C8 0002E448  90 03 00 00 */	stw r0, 0(r3)
/* 800386CC 0002E44C  48 00 00 48 */	b lbl_80038714
lbl_800386D0:
/* 800386D0 0002E450  38 C0 00 00 */	li r6, 0
/* 800386D4 0002E454  40 82 00 1C */	bne lbl_800386F0
/* 800386D8 0002E458  38 A0 00 00 */	li r5, 0
/* 800386DC 0002E45C  48 00 00 14 */	b lbl_800386F0
lbl_800386E0:
/* 800386E0 0002E460  80 05 00 00 */	lwz r0, 0(r5)
/* 800386E4 0002E464  7C 00 20 40 */	cmplw r0, r4
/* 800386E8 0002E468  41 82 00 10 */	beq lbl_800386F8
/* 800386EC 0002E46C  7C 05 03 78 */	mr r5, r0
lbl_800386F0:
/* 800386F0 0002E470  2C 05 00 00 */	cmpwi r5, 0
/* 800386F4 0002E474  40 82 FF EC */	bne lbl_800386E0
lbl_800386F8:
/* 800386F8 0002E478  2C 05 00 00 */	cmpwi r5, 0
/* 800386FC 0002E47C  41 82 00 18 */	beq lbl_80038714
/* 80038700 0002E480  80 64 00 00 */	lwz r3, 0(r4)
/* 80038704 0002E484  38 00 00 00 */	li r0, 0
/* 80038708 0002E488  38 C0 00 01 */	li r6, 1
/* 8003870C 0002E48C  90 65 00 00 */	stw r3, 0(r5)
/* 80038710 0002E490  90 04 00 00 */	stw r0, 0(r4)
lbl_80038714:
/* 80038714 0002E494  7C C3 33 78 */	mr r3, r6
/* 80038718 0002E498  4E 80 00 20 */	blr 

.global gfReturnStatusCallbackList$7process
gfReturnStatusCallbackList$7process:
/* 8003871C 0002E49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80038720 0002E4A0  7C 08 02 A6 */	mflr r0
/* 80038724 0002E4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80038728 0002E4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003872C 0002E4AC  3B E0 00 01 */	li r31, 1
/* 80038730 0002E4B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80038734 0002E4B4  83 C3 00 00 */	lwz r30, 0(r3)
/* 80038738 0002E4B8  48 00 00 34 */	b lbl_8003876C
lbl_8003873C:
/* 8003873C 0002E4BC  81 9E 00 04 */	lwz r12, 4(r30)
/* 80038740 0002E4C0  7F C3 F3 78 */	mr r3, r30
/* 80038744 0002E4C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80038748 0002E4C8  7D 89 03 A6 */	mtctr r12
/* 8003874C 0002E4CC  4E 80 04 21 */	bctrl 
/* 80038750 0002E4D0  2C 1F 00 00 */	cmpwi r31, 0
/* 80038754 0002E4D4  83 DE 00 00 */	lwz r30, 0(r30)
/* 80038758 0002E4D8  3B E0 00 00 */	li r31, 0
/* 8003875C 0002E4DC  41 82 00 10 */	beq lbl_8003876C
/* 80038760 0002E4E0  2C 03 00 00 */	cmpwi r3, 0
/* 80038764 0002E4E4  41 82 00 08 */	beq lbl_8003876C
/* 80038768 0002E4E8  3B E0 00 01 */	li r31, 1
lbl_8003876C:
/* 8003876C 0002E4EC  2C 1E 00 00 */	cmpwi r30, 0
/* 80038770 0002E4F0  40 82 FF CC */	bne lbl_8003873C
/* 80038774 0002E4F4  7F E3 FB 78 */	mr r3, r31
/* 80038778 0002E4F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003877C 0002E4FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80038780 0002E500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80038784 0002E504  7C 08 03 A6 */	mtlr r0
/* 80038788 0002E508  38 21 00 10 */	addi r1, r1, 0x10
/* 8003878C 0002E50C  4E 80 00 20 */	blr 

.global __sinit_$3gf_system_callback_cpp
__sinit_$3gf_system_callback_cpp:
/* 80038790 0002E510  80 0D BC 80 */	lwz r0, lbl_805A00A0-_SDA_BASE_(r13)
/* 80038794 0002E514  38 80 00 00 */	li r4, 0
/* 80038798 0002E518  38 6D BC 80 */	addi r3, r13, lbl_805A00A0-_SDA_BASE_
/* 8003879C 0002E51C  54 00 04 0E */	rlwinm r0, r0, 0, 0x10, 7
/* 800387A0 0002E520  90 83 00 04 */	stw r4, 4(r3)
/* 800387A4 0002E524  90 0D BC 80 */	stw r0, lbl_805A00A0-_SDA_BASE_(r13)
/* 800387A8 0002E528  4E 80 00 20 */	blr 
/* 800387AC 0002E52C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800387B0 0002E530  7C 08 02 A6 */	mflr r0
/* 800387B4 0002E534  38 80 1C 00 */	li r4, 0x1c00
/* 800387B8 0002E538  90 01 00 24 */	stw r0, 0x24(r1)
/* 800387BC 0002E53C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800387C0 0002E540  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800387C4 0002E544  7C 7E 1B 78 */	mr r30, r3
/* 800387C8 0002E548  80 03 03 40 */	lwz r0, 0x340(r3)
/* 800387CC 0002E54C  54 00 40 10 */	rlwinm r0, r0, 8, 0, 8
/* 800387D0 0002E550  7C 03 C6 70 */	srawi r3, r0, 0x18
/* 800387D4 0002E554  4B FE C2 11 */	bl gfHeapManager$7alloc
/* 800387D8 0002E558  80 1E 03 40 */	lwz r0, 0x340(r30)
/* 800387DC 0002E55C  38 80 00 01 */	li r4, 1
/* 800387E0 0002E560  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 800387E4 0002E564  7C 7F 1B 78 */	mr r31, r3
/* 800387E8 0002E568  90 1E 03 40 */	stw r0, 0x340(r30)
lbl_800387EC:
/* 800387EC 0002E56C  80 9E 03 50 */	lwz r4, 0x350(r30)
/* 800387F0 0002E570  7F E3 FB 78 */	mr r3, r31
/* 800387F4 0002E574  A0 BE 03 42 */	lhz r5, 0x342(r30)
/* 800387F8 0002E578  39 3E 03 54 */	addi r9, r30, 0x354
/* 800387FC 0002E57C  A0 DE 03 44 */	lhz r6, 0x344(r30)
/* 80038800 0002E580  39 41 00 10 */	addi r10, r1, 0x10
/* 80038804 0002E584  80 FE 03 48 */	lwz r7, 0x348(r30)
/* 80038808 0002E588  81 1E 03 4C */	lwz r8, 0x34c(r30)
/* 8003880C 0002E58C  48 22 7C 51 */	bl TMCCJPEGEncGetQFactor
/* 80038810 0002E590  80 1E 03 54 */	lwz r0, 0x354(r30)
/* 80038814 0002E594  80 7E 03 4C */	lwz r3, 0x34c(r30)
/* 80038818 0002E598  7C 00 18 40 */	cmplw r0, r3
/* 8003881C 0002E59C  40 81 00 0C */	ble lbl_80038828
/* 80038820 0002E5A0  38 03 D8 00 */	addi r0, r3, -10240
/* 80038824 0002E5A4  90 1E 03 4C */	stw r0, 0x34c(r30)
lbl_80038828:
/* 80038828 0002E5A8  81 5E 03 4C */	lwz r10, 0x34c(r30)
/* 8003882C 0002E5AC  80 1E 03 54 */	lwz r0, 0x354(r30)
/* 80038830 0002E5B0  7C 00 50 40 */	cmplw r0, r10
/* 80038834 0002E5B4  41 81 FF B8 */	bgt lbl_800387EC
/* 80038838 0002E5B8  38 1E 03 54 */	addi r0, r30, 0x354
/* 8003883C 0002E5BC  7F E3 FB 78 */	mr r3, r31
/* 80038840 0002E5C0  90 01 00 08 */	stw r0, 8(r1)
/* 80038844 0002E5C4  80 9E 03 50 */	lwz r4, 0x350(r30)
/* 80038848 0002E5C8  A0 BE 03 42 */	lhz r5, 0x342(r30)
/* 8003884C 0002E5CC  A0 DE 03 44 */	lhz r6, 0x344(r30)
/* 80038850 0002E5D0  80 FE 03 48 */	lwz r7, 0x348(r30)
/* 80038854 0002E5D4  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80038858 0002E5D8  81 3E 03 58 */	lwz r9, 0x358(r30)
/* 8003885C 0002E5DC  48 22 7D 85 */	bl TMCCJPEGEncEncode
/* 80038860 0002E5E0  7F E3 FB 78 */	mr r3, r31
/* 80038864 0002E5E4  4B FE C1 E9 */	bl gfHeapManager$7free
/* 80038868 0002E5E8  80 1E 03 40 */	lwz r0, 0x340(r30)
/* 8003886C 0002E5EC  38 60 00 02 */	li r3, 2
/* 80038870 0002E5F0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 80038874 0002E5F4  90 1E 03 40 */	stw r0, 0x340(r30)
/* 80038878 0002E5F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003887C 0002E5FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80038880 0002E600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80038884 0002E604  7C 08 03 A6 */	mtlr r0
/* 80038888 0002E608  38 21 00 20 */	addi r1, r1, 0x20
/* 8003888C 0002E60C  4E 80 00 20 */	blr 

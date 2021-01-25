.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global hkNullCollisionFilter$7__dt
hkNullCollisionFilter$7__dt:
/* 802CD66C 002C33EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD670 002C33F0  7C 08 02 A6 */	mflr r0
/* 802CD674 002C33F4  2C 03 00 00 */	cmpwi r3, 0
/* 802CD678 002C33F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD67C 002C33FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD680 002C3400  7C 7F 1B 78 */	mr r31, r3
/* 802CD684 002C3404  41 82 00 2C */	beq lbl_802CD6B0
/* 802CD688 002C3408  2C 04 00 00 */	cmpwi r4, 0
/* 802CD68C 002C340C  40 81 00 24 */	ble lbl_802CD6B0
/* 802CD690 002C3410  80 6D CA 98 */	lwz r3, lbl_805A0EB8-_SDA_BASE_(r13)
/* 802CD694 002C3414  7F E4 FB 78 */	mr r4, r31
/* 802CD698 002C3418  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802CD69C 002C341C  38 C0 00 25 */	li r6, 0x25
/* 802CD6A0 002C3420  81 83 00 00 */	lwz r12, 0(r3)
/* 802CD6A4 002C3424  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CD6A8 002C3428  7D 89 03 A6 */	mtctr r12
/* 802CD6AC 002C342C  4E 80 04 21 */	bctrl 
lbl_802CD6B0:
/* 802CD6B0 002C3430  7F E3 FB 78 */	mr r3, r31
/* 802CD6B4 002C3434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD6B8 002C3438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD6BC 002C343C  7C 08 03 A6 */	mtlr r0
/* 802CD6C0 002C3440  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD6C4 002C3444  4E 80 00 20 */	blr 

.global finishLoadedObjecthkNullCollisionFilter
finishLoadedObjecthkNullCollisionFilter:
/* 802CD6C8 002C3448  2C 03 00 00 */	cmpwi r3, 0
/* 802CD6CC 002C344C  4D 82 00 20 */	beqlr 
/* 802CD6D0 002C3450  3C E0 80 48 */	lis r7, lbl_80487320@ha
/* 802CD6D4 002C3454  38 00 00 01 */	li r0, 1
/* 802CD6D8 002C3458  38 E7 73 20 */	addi r7, r7, lbl_80487320@l
/* 802CD6DC 002C345C  B0 03 00 06 */	sth r0, 6(r3)
/* 802CD6E0 002C3460  38 C7 00 10 */	addi r6, r7, 0x10
/* 802CD6E4 002C3464  38 A7 00 20 */	addi r5, r7, 0x20
/* 802CD6E8 002C3468  38 87 00 30 */	addi r4, r7, 0x30
/* 802CD6EC 002C346C  38 07 00 40 */	addi r0, r7, 0x40
/* 802CD6F0 002C3470  90 E3 00 00 */	stw r7, 0(r3)
/* 802CD6F4 002C3474  90 C3 00 08 */	stw r6, 8(r3)
/* 802CD6F8 002C3478  90 A3 00 0C */	stw r5, 0xc(r3)
/* 802CD6FC 002C347C  90 83 00 10 */	stw r4, 0x10(r3)
/* 802CD700 002C3480  90 03 00 14 */	stw r0, 0x14(r3)
/* 802CD704 002C3484  4E 80 00 20 */	blr 

.global cleanupLoadedObjecthkNullCollisionFilter
cleanupLoadedObjecthkNullCollisionFilter:
/* 802CD708 002C3488  81 83 00 00 */	lwz r12, 0(r3)
/* 802CD70C 002C348C  38 80 FF FF */	li r4, -1
/* 802CD710 002C3490  81 8C 00 08 */	lwz r12, 8(r12)
/* 802CD714 002C3494  7D 89 03 A6 */	mtctr r12
/* 802CD718 002C3498  4E 80 04 20 */	bctr 

.global getVtablehkNullCollisionFilter
getVtablehkNullCollisionFilter:
/* 802CD71C 002C349C  54 2B 07 3E */	clrlwi r11, r1, 0x1c
/* 802CD720 002C34A0  7C 2C 0B 78 */	mr r12, r1
/* 802CD724 002C34A4  21 6B FF D0 */	subfic r11, r11, -48
/* 802CD728 002C34A8  7C 21 59 6E */	stwux r1, r1, r11
/* 802CD72C 002C34AC  34 01 00 10 */	addic. r0, r1, 0x10
/* 802CD730 002C34B0  41 82 00 38 */	beq lbl_802CD768
/* 802CD734 002C34B4  3C C0 80 48 */	lis r6, lbl_80487320@ha
/* 802CD738 002C34B8  38 00 00 01 */	li r0, 1
/* 802CD73C 002C34BC  38 C6 73 20 */	addi r6, r6, lbl_80487320@l
/* 802CD740 002C34C0  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802CD744 002C34C4  38 A6 00 10 */	addi r5, r6, 0x10
/* 802CD748 002C34C8  38 86 00 20 */	addi r4, r6, 0x20
/* 802CD74C 002C34CC  38 66 00 30 */	addi r3, r6, 0x30
/* 802CD750 002C34D0  38 06 00 40 */	addi r0, r6, 0x40
/* 802CD754 002C34D4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802CD758 002C34D8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802CD75C 002C34DC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802CD760 002C34E0  90 61 00 20 */	stw r3, 0x20(r1)
/* 802CD764 002C34E4  90 01 00 24 */	stw r0, 0x24(r1)
lbl_802CD768:
/* 802CD768 002C34E8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CD76C 002C34EC  81 41 00 00 */	lwz r10, 0(r1)
/* 802CD770 002C34F0  7D 41 53 78 */	mr r1, r10
/* 802CD774 002C34F4  4E 80 00 20 */	blr 

.global hkNullCollisionFilter$7isCollisionEnabled
hkNullCollisionFilter$7isCollisionEnabled:
/* 802CD778 002C34F8  3C 60 01 00 */	lis r3, 0x100
/* 802CD77C 002C34FC  4E 80 00 20 */	blr 

.global hkNullCollisionFilter$7isCollisionEnabled_10181
hkNullCollisionFilter$7isCollisionEnabled_10181:
/* 802CD780 002C3500  3C 60 01 00 */	lis r3, 0x100
/* 802CD784 002C3504  4E 80 00 20 */	blr 

.global hkNullCollisionFilter$7isCollisionEnabled_10182
hkNullCollisionFilter$7isCollisionEnabled_10182:
/* 802CD788 002C3508  3C 60 01 00 */	lis r3, 0x100
/* 802CD78C 002C350C  4E 80 00 20 */	blr 

.global hkNullCollisionFilter$7isCollisionEnabled_10183
hkNullCollisionFilter$7isCollisionEnabled_10183:
/* 802CD790 002C3510  3C 60 01 00 */	lis r3, 0x100
/* 802CD794 002C3514  4E 80 00 20 */	blr 

.global __sinit_$3hkNullCollisionFilter_cpp
__sinit_$3hkNullCollisionFilter_cpp:
/* 802CD798 002C3518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD79C 002C351C  7C 08 02 A6 */	mflr r0
/* 802CD7A0 002C3520  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD7A4 002C3524  4B FF FF 79 */	bl getVtablehkNullCollisionFilter
/* 802CD7A8 002C3528  3D 00 80 41 */	lis r8, lbl_80410238@ha
/* 802CD7AC 002C352C  3C E0 80 53 */	lis r7, lbl_80532650@ha
/* 802CD7B0 002C3530  3C C0 80 2D */	lis r6, finishLoadedObjecthkNullCollisionFilter@ha
/* 802CD7B4 002C3534  3C 80 80 2D */	lis r4, cleanupLoadedObjecthkNullCollisionFilter@ha
/* 802CD7B8 002C3538  39 08 02 38 */	addi r8, r8, lbl_80410238@l
/* 802CD7BC 002C353C  38 A7 26 50 */	addi r5, r7, lbl_80532650@l
/* 802CD7C0 002C3540  38 C6 D6 C8 */	addi r6, r6, finishLoadedObjecthkNullCollisionFilter@l
/* 802CD7C4 002C3544  38 84 D7 08 */	addi r4, r4, cleanupLoadedObjecthkNullCollisionFilter@l
/* 802CD7C8 002C3548  91 07 26 50 */	stw r8, 0x2650(r7)
/* 802CD7CC 002C354C  90 C5 00 04 */	stw r6, 4(r5)
/* 802CD7D0 002C3550  90 85 00 08 */	stw r4, 8(r5)
/* 802CD7D4 002C3554  90 65 00 0C */	stw r3, 0xc(r5)
/* 802CD7D8 002C3558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD7DC 002C355C  7C 08 03 A6 */	mtlr r0
/* 802CD7E0 002C3560  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD7E4 002C3564  4E 80 00 20 */	blr 

.global hkNullCollisionFilter$7$28$2isCollisionEnabled
hkNullCollisionFilter$7$28$2isCollisionEnabled:
/* 802CD7E8 002C3568  38 63 FF F8 */	addi r3, r3, -8
/* 802CD7EC 002C356C  4B FF FF A4 */	b hkNullCollisionFilter$7isCollisionEnabled_10183

.global hkNullCollisionFilter$7$28$2
hkNullCollisionFilter$7$28$2:
/* 802CD7F0 002C3570  38 63 FF F8 */	addi r3, r3, -8
/* 802CD7F4 002C3574  4B FF FE 78 */	b hkNullCollisionFilter$7__dt

.global hkNullCollisionFilter$7$212$2
hkNullCollisionFilter$7$212$2:
/* 802CD7F8 002C3578  38 63 FF F4 */	addi r3, r3, -12
/* 802CD7FC 002C357C  4B FF FE 70 */	b hkNullCollisionFilter$7__dt

.global hkNullCollisionFilter$7$212$2isCollisionEnabled
hkNullCollisionFilter$7$212$2isCollisionEnabled:
/* 802CD800 002C3580  38 63 FF F4 */	addi r3, r3, -12
/* 802CD804 002C3584  4B FF FF 84 */	b hkNullCollisionFilter$7isCollisionEnabled_10182

.global hkNullCollisionFilter$7$216$2
hkNullCollisionFilter$7$216$2:
/* 802CD808 002C3588  38 63 FF F0 */	addi r3, r3, -16
/* 802CD80C 002C358C  4B FF FE 60 */	b hkNullCollisionFilter$7__dt

.global hkNullCollisionFilter$7$216$2isCollisionEnabled
hkNullCollisionFilter$7$216$2isCollisionEnabled:
/* 802CD810 002C3590  38 63 FF F0 */	addi r3, r3, -16
/* 802CD814 002C3594  4B FF FF 6C */	b hkNullCollisionFilter$7isCollisionEnabled_10181

.global hkNullCollisionFilter$7$220$2isCollisionEnabled
hkNullCollisionFilter$7$220$2isCollisionEnabled:
/* 802CD818 002C3598  38 63 FF EC */	addi r3, r3, -20
/* 802CD81C 002C359C  4B FF FF 5C */	b hkNullCollisionFilter$7isCollisionEnabled

.global hkNullCollisionFilter$7$220$2
hkNullCollisionFilter$7$220$2:
/* 802CD820 002C35A0  38 63 FF EC */	addi r3, r3, -20
/* 802CD824 002C35A4  4B FF FE 48 */	b hkNullCollisionFilter$7__dt

.global __sinit_$3hkNullCollisionFilterClass_cpp
__sinit_$3hkNullCollisionFilterClass_cpp:
/* 802CD828 002C35A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CD82C 002C35AC  7C 08 02 A6 */	mflr r0
/* 802CD830 002C35B0  3C 60 80 53 */	lis r3, lbl_80532660@ha
/* 802CD834 002C35B4  3C 80 80 41 */	lis r4, lbl_80410250@ha
/* 802CD838 002C35B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CD83C 002C35BC  38 00 00 00 */	li r0, 0
/* 802CD840 002C35C0  3C A0 80 53 */	lis r5, lbl_80532628@ha
/* 802CD844 002C35C4  38 63 26 60 */	addi r3, r3, lbl_80532660@l
/* 802CD848 002C35C8  90 01 00 08 */	stw r0, 8(r1)
/* 802CD84C 002C35CC  38 84 02 50 */	addi r4, r4, lbl_80410250@l
/* 802CD850 002C35D0  38 A5 26 28 */	addi r5, r5, lbl_80532628@l
/* 802CD854 002C35D4  38 C0 00 18 */	li r6, 0x18
/* 802CD858 002C35D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CD85C 002C35DC  38 E0 00 00 */	li r7, 0
/* 802CD860 002C35E0  39 00 00 00 */	li r8, 0
/* 802CD864 002C35E4  39 20 00 00 */	li r9, 0
/* 802CD868 002C35E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CD86C 002C35EC  39 40 00 00 */	li r10, 0
/* 802CD870 002C35F0  4B FA EF 99 */	bl hkClass$7__ct
/* 802CD874 002C35F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CD878 002C35F8  7C 08 03 A6 */	mtlr r0
/* 802CD87C 002C35FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802CD880 002C3600  4E 80 00 20 */	blr 


.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3lyt6LayoutFv$7__ct
nw4r3lyt6LayoutFv$7__ct:
/* 80183AF4 00179874  38 00 00 00 */	li r0, 0
/* 80183AF8 00179878  C0 02 9D B0 */	lfs f0, lbl_805A30D0-_SDA2_BASE_(r2)
/* 80183AFC 0017987C  3C 80 80 46 */	lis r4, lbl_80465700@ha
/* 80183B00 00179880  90 03 00 08 */	stw r0, 8(r3)
/* 80183B04 00179884  38 A3 00 08 */	addi r5, r3, 8
/* 80183B08 00179888  90 03 00 0C */	stw r0, 0xc(r3)
/* 80183B0C 0017988C  38 84 57 00 */	addi r4, r4, lbl_80465700@l
/* 80183B10 00179890  90 83 00 00 */	stw r4, 0(r3)
/* 80183B14 00179894  90 03 00 04 */	stw r0, 4(r3)
/* 80183B18 00179898  90 A3 00 08 */	stw r5, 8(r3)
/* 80183B1C 0017989C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80183B20 001798A0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80183B24 001798A4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80183B28 001798A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80183B2C 001798AC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80183B30 001798B0  98 03 00 20 */	stb r0, 0x20(r3)
/* 80183B34 001798B4  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFv$7__dt
nw4r3lyt6LayoutFv$7__dt:
/* 80183B38 001798B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80183B3C 001798BC  7C 08 02 A6 */	mflr r0
/* 80183B40 001798C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80183B44 001798C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80183B48 001798C8  48 26 D7 D9 */	bl _savegpr_27
/* 80183B4C 001798CC  2C 03 00 00 */	cmpwi r3, 0
/* 80183B50 001798D0  7C 7B 1B 78 */	mr r27, r3
/* 80183B54 001798D4  7C 9C 23 78 */	mr r28, r4
/* 80183B58 001798D8  41 82 00 E0 */	beq lbl_80183C38
/* 80183B5C 001798DC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80183B60 001798E0  3C 80 80 46 */	lis r4, lbl_80465700@ha
/* 80183B64 001798E4  38 84 57 00 */	addi r4, r4, lbl_80465700@l
/* 80183B68 001798E8  2C 00 00 00 */	cmpwi r0, 0
/* 80183B6C 001798EC  90 83 00 00 */	stw r4, 0(r3)
/* 80183B70 001798F0  41 82 00 1C */	beq lbl_80183B8C
/* 80183B74 001798F4  7C 03 03 78 */	mr r3, r0
/* 80183B78 001798F8  38 80 FF FF */	li r4, -1
/* 80183B7C 001798FC  4B FF FC 69 */	bl nw4r3lyt14GroupContainerFv$7__dt
/* 80183B80 00179900  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80183B84 00179904  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 80183B88 00179908  48 08 12 E5 */	bl MEMFreeToAllocator
lbl_80183B8C:
/* 80183B8C 0017990C  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 80183B90 00179910  2C 03 00 00 */	cmpwi r3, 0
/* 80183B94 00179914  41 82 00 30 */	beq lbl_80183BC4
/* 80183B98 00179918  88 03 00 D2 */	lbz r0, 0xd2(r3)
/* 80183B9C 0017991C  2C 00 00 00 */	cmpwi r0, 0
/* 80183BA0 00179920  40 82 00 24 */	bne lbl_80183BC4
/* 80183BA4 00179924  81 83 00 00 */	lwz r12, 0(r3)
/* 80183BA8 00179928  38 80 FF FF */	li r4, -1
/* 80183BAC 0017992C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80183BB0 00179930  7D 89 03 A6 */	mtctr r12
/* 80183BB4 00179934  4E 80 04 21 */	bctrl 
/* 80183BB8 00179938  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80183BBC 0017993C  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 80183BC0 00179940  48 08 12 AD */	bl MEMFreeToAllocator
lbl_80183BC4:
/* 80183BC4 00179944  83 FB 00 08 */	lwz r31, 8(r27)
/* 80183BC8 00179948  3B DB 00 08 */	addi r30, r27, 8
/* 80183BCC 0017994C  48 00 00 44 */	b lbl_80183C10
lbl_80183BD0:
/* 80183BD0 00179950  7F FD FB 78 */	mr r29, r31
/* 80183BD4 00179954  83 FF 00 00 */	lwz r31, 0(r31)
/* 80183BD8 00179958  38 7B 00 04 */	addi r3, r27, 4
/* 80183BDC 0017995C  38 81 00 08 */	addi r4, r1, 8
/* 80183BE0 00179960  93 A1 00 08 */	stw r29, 8(r1)
/* 80183BE4 00179964  4B FD 86 D9 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Erase
/* 80183BE8 00179968  3B BD FF FC */	addi r29, r29, -4
/* 80183BEC 0017996C  38 80 FF FF */	li r4, -1
/* 80183BF0 00179970  81 9D 00 00 */	lwz r12, 0(r29)
/* 80183BF4 00179974  7F A3 EB 78 */	mr r3, r29
/* 80183BF8 00179978  81 8C 00 08 */	lwz r12, 8(r12)
/* 80183BFC 0017997C  7D 89 03 A6 */	mtctr r12
/* 80183C00 00179980  4E 80 04 21 */	bctrl 
/* 80183C04 00179984  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80183C08 00179988  7F A4 EB 78 */	mr r4, r29
/* 80183C0C 0017998C  48 08 12 61 */	bl MEMFreeToAllocator
lbl_80183C10:
/* 80183C10 00179990  7C 1F F0 40 */	cmplw r31, r30
/* 80183C14 00179994  40 82 FF BC */	bne lbl_80183BD0
/* 80183C18 00179998  34 7B 00 04 */	addic. r3, r27, 4
/* 80183C1C 0017999C  41 82 00 0C */	beq lbl_80183C28
/* 80183C20 001799A0  38 80 00 00 */	li r4, 0
/* 80183C24 001799A4  4B FD 86 15 */	bl nw4r2ut6detail12LinkListImplFv$7__dt
lbl_80183C28:
/* 80183C28 001799A8  2C 1C 00 00 */	cmpwi r28, 0
/* 80183C2C 001799AC  40 81 00 0C */	ble lbl_80183C38
/* 80183C30 001799B0  7F 63 DB 78 */	mr r3, r27
/* 80183C34 001799B4  4B E8 8C 95 */	bl __dl
lbl_80183C38:
/* 80183C38 001799B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80183C3C 001799BC  7F 63 DB 78 */	mr r3, r27
/* 80183C40 001799C0  48 26 D7 2D */	bl _restgpr_27
/* 80183C44 001799C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80183C48 001799C8  7C 08 03 A6 */	mtlr r0
/* 80183C4C 001799CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80183C50 001799D0  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFPCvPQ34nw4r3lyt16R$7Build
nw4r3lyt6LayoutFPCvPQ34nw4r3lyt16R$7Build:
/* 80183C54 001799D4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80183C58 001799D8  7C 08 02 A6 */	mflr r0
/* 80183C5C 001799DC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80183C60 001799E0  39 61 00 60 */	addi r11, r1, 0x60
/* 80183C64 001799E4  48 26 D6 89 */	bl __save_gpr
/* 80183C68 001799E8  7C 9F 23 78 */	mr r31, r4
/* 80183C6C 001799EC  3C 80 52 4C */	lis r4, 0x524C5954@ha
/* 80183C70 001799F0  7C 7E 1B 78 */	mr r30, r3
/* 80183C74 001799F4  7C AE 2B 78 */	mr r14, r5
/* 80183C78 001799F8  38 84 59 54 */	addi r4, r4, 0x524C5954@l
/* 80183C7C 001799FC  7F E3 FB 78 */	mr r3, r31
/* 80183C80 00179A00  48 00 84 E9 */	bl nw4r3lyt6detailFRCQ44nw4r3lyt3res1$7TestFileHeader_5054
/* 80183C84 00179A04  2C 03 00 00 */	cmpwi r3, 0
/* 80183C88 00179A08  40 82 00 0C */	bne lbl_80183C94
/* 80183C8C 00179A0C  38 60 00 00 */	li r3, 0
/* 80183C90 00179A10  48 00 02 AC */	b lbl_80183F3C
lbl_80183C94:
/* 80183C94 00179A14  3A C0 00 00 */	li r22, 0
/* 80183C98 00179A18  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 80183C9C 00179A1C  3F 80 70 61 */	lis r28, 0x70616531@ha
/* 80183CA0 00179A20  91 C1 00 14 */	stw r14, 0x14(r1)
/* 80183CA4 00179A24  7E 1F 02 14 */	add r16, r31, r0
/* 80183CA8 00179A28  3A 80 00 00 */	li r20, 0
/* 80183CAC 00179A2C  92 C1 00 08 */	stw r22, 8(r1)
/* 80183CB0 00179A30  3A FC 65 31 */	addi r23, r28, 0x70616531@l
/* 80183CB4 00179A34  3A 60 00 00 */	li r19, 0
/* 80183CB8 00179A38  3A 40 00 00 */	li r18, 0
/* 80183CBC 00179A3C  92 C1 00 0C */	stw r22, 0xc(r1)
/* 80183CC0 00179A40  3A 20 00 00 */	li r17, 0
/* 80183CC4 00179A44  39 E0 00 00 */	li r15, 0
/* 80183CC8 00179A48  3D C0 6D 61 */	lis r14, 0x6d61
/* 80183CCC 00179A4C  92 C1 00 10 */	stw r22, 0x10(r1)
/* 80183CD0 00179A50  3F A0 74 78 */	lis r29, 0x7478
/* 80183CD4 00179A54  3F 20 62 6E */	lis r25, 0x626e
/* 80183CD8 00179A58  3F 40 6C 79 */	lis r26, 0x6c79
/* 80183CDC 00179A5C  3F 60 67 72 */	lis r27, 0x6772
/* 80183CE0 00179A60  3F 00 66 6E */	lis r24, 0x666e
/* 80183CE4 00179A64  48 00 02 48 */	b lbl_80183F2C
lbl_80183CE8:
/* 80183CE8 00179A68  80 70 00 00 */	lwz r3, 0(r16)
/* 80183CEC 00179A6C  7C 03 B8 00 */	cmpw r3, r23
/* 80183CF0 00179A70  41 82 01 6C */	beq lbl_80183E5C
/* 80183CF4 00179A74  40 80 00 74 */	bge lbl_80183D68
/* 80183CF8 00179A78  38 1B 70 31 */	addi r0, r27, 0x7031
/* 80183CFC 00179A7C  7C 03 00 00 */	cmpw r3, r0
/* 80183D00 00179A80  41 82 01 68 */	beq lbl_80183E68
/* 80183D04 00179A84  40 80 00 34 */	bge lbl_80183D38
/* 80183D08 00179A88  38 18 6C 31 */	addi r0, r24, 0x6c31
/* 80183D0C 00179A8C  7C 03 00 00 */	cmpw r3, r0
/* 80183D10 00179A90  41 82 00 F0 */	beq lbl_80183E00
/* 80183D14 00179A94  40 80 00 14 */	bge lbl_80183D28
/* 80183D18 00179A98  38 19 64 31 */	addi r0, r25, 0x6431
/* 80183D1C 00179A9C  7C 03 00 00 */	cmpw r3, r0
/* 80183D20 00179AA0  41 82 00 F0 */	beq lbl_80183E10
/* 80183D24 00179AA4  48 00 01 FC */	b lbl_80183F20
lbl_80183D28:
/* 80183D28 00179AA8  38 1B 65 31 */	addi r0, r27, 0x6531
/* 80183D2C 00179AAC  7C 03 00 00 */	cmpw r3, r0
/* 80183D30 00179AB0  41 82 01 EC */	beq lbl_80183F1C
/* 80183D34 00179AB4  48 00 01 EC */	b lbl_80183F20
lbl_80183D38:
/* 80183D38 00179AB8  38 1A 74 31 */	addi r0, r26, 0x7431
/* 80183D3C 00179ABC  7C 03 00 00 */	cmpw r3, r0
/* 80183D40 00179AC0  41 82 00 90 */	beq lbl_80183DD0
/* 80183D44 00179AC4  40 80 00 14 */	bge lbl_80183D58
/* 80183D48 00179AC8  38 1B 73 31 */	addi r0, r27, 0x7331
/* 80183D4C 00179ACC  7C 03 00 00 */	cmpw r3, r0
/* 80183D50 00179AD0  41 82 01 C4 */	beq lbl_80183F14
/* 80183D54 00179AD4  48 00 01 CC */	b lbl_80183F20
lbl_80183D58:
/* 80183D58 00179AD8  38 0E 74 31 */	addi r0, r14, 0x7431
/* 80183D5C 00179ADC  7C 03 00 00 */	cmpw r3, r0
/* 80183D60 00179AE0  41 82 00 A8 */	beq lbl_80183E08
/* 80183D64 00179AE4  48 00 01 BC */	b lbl_80183F20
lbl_80183D68:
/* 80183D68 00179AE8  38 1D 6C 31 */	addi r0, r29, 0x6c31
/* 80183D6C 00179AEC  7C 03 00 00 */	cmpw r3, r0
/* 80183D70 00179AF0  41 82 00 88 */	beq lbl_80183DF8
/* 80183D74 00179AF4  40 80 00 38 */	bge lbl_80183DAC
/* 80183D78 00179AF8  38 1C 73 31 */	addi r0, r28, 0x7331
/* 80183D7C 00179AFC  7C 03 00 00 */	cmpw r3, r0
/* 80183D80 00179B00  41 82 00 D4 */	beq lbl_80183E54
/* 80183D84 00179B04  40 80 00 14 */	bge lbl_80183D98
/* 80183D88 00179B08  38 1C 6E 31 */	addi r0, r28, 0x6e31
/* 80183D8C 00179B0C  7C 03 00 00 */	cmpw r3, r0
/* 80183D90 00179B10  41 82 00 80 */	beq lbl_80183E10
/* 80183D94 00179B14  48 00 01 8C */	b lbl_80183F20
lbl_80183D98:
/* 80183D98 00179B18  3C 80 70 69 */	lis r4, 0x70696331@ha
/* 80183D9C 00179B1C  38 04 63 31 */	addi r0, r4, 0x70696331@l
/* 80183DA0 00179B20  7C 03 00 00 */	cmpw r3, r0
/* 80183DA4 00179B24  41 82 00 6C */	beq lbl_80183E10
/* 80183DA8 00179B28  48 00 01 78 */	b lbl_80183F20
lbl_80183DAC:
/* 80183DAC 00179B2C  3C 80 77 6E */	lis r4, 0x776E6431@ha
/* 80183DB0 00179B30  38 04 64 31 */	addi r0, r4, 0x776E6431@l
/* 80183DB4 00179B34  7C 03 00 00 */	cmpw r3, r0
/* 80183DB8 00179B38  41 82 00 58 */	beq lbl_80183E10
/* 80183DBC 00179B3C  40 80 01 64 */	bge lbl_80183F20
/* 80183DC0 00179B40  38 1D 74 31 */	addi r0, r29, 0x7431
/* 80183DC4 00179B44  7C 03 00 00 */	cmpw r3, r0
/* 80183DC8 00179B48  41 82 00 48 */	beq lbl_80183E10
/* 80183DCC 00179B4C  48 00 01 54 */	b lbl_80183F20
lbl_80183DD0:
/* 80183DD0 00179B50  88 70 00 08 */	lbz r3, 8(r16)
/* 80183DD4 00179B54  C0 30 00 0C */	lfs f1, 0xc(r16)
/* 80183DD8 00179B58  7C 03 00 D0 */	neg r0, r3
/* 80183DDC 00179B5C  C0 10 00 10 */	lfs f0, 0x10(r16)
/* 80183DE0 00179B60  7C 00 1B 78 */	or r0, r0, r3
/* 80183DE4 00179B64  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 80183DE8 00179B68  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80183DEC 00179B6C  98 1E 00 20 */	stb r0, 0x20(r30)
/* 80183DF0 00179B70  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80183DF4 00179B74  48 00 01 2C */	b lbl_80183F20
lbl_80183DF8:
/* 80183DF8 00179B78  92 01 00 08 */	stw r16, 8(r1)
/* 80183DFC 00179B7C  48 00 01 24 */	b lbl_80183F20
lbl_80183E00:
/* 80183E00 00179B80  92 01 00 0C */	stw r16, 0xc(r1)
/* 80183E04 00179B84  48 00 01 1C */	b lbl_80183F20
lbl_80183E08:
/* 80183E08 00179B88  92 01 00 10 */	stw r16, 0x10(r1)
/* 80183E0C 00179B8C  48 00 01 14 */	b lbl_80183F20
lbl_80183E10:
/* 80183E10 00179B90  7E 04 83 78 */	mr r4, r16
/* 80183E14 00179B94  38 A1 00 08 */	addi r5, r1, 8
/* 80183E18 00179B98  48 00 05 A5 */	bl nw4r3lyt6LayoutFlPCvRCQ34nw4r3lyt1$7BuildPaneObj
/* 80183E1C 00179B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80183E20 00179BA0  7C 75 1B 78 */	mr r21, r3
/* 80183E24 00179BA4  41 82 00 FC */	beq lbl_80183F20
/* 80183E28 00179BA8  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80183E2C 00179BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80183E30 00179BB0  40 82 00 08 */	bne lbl_80183E38
/* 80183E34 00179BB4  90 7E 00 10 */	stw r3, 0x10(r30)
lbl_80183E38:
/* 80183E38 00179BB8  2C 14 00 00 */	cmpwi r20, 0
/* 80183E3C 00179BBC  41 82 00 10 */	beq lbl_80183E4C
/* 80183E40 00179BC0  7E 83 A3 78 */	mr r3, r20
/* 80183E44 00179BC4  7E A4 AB 78 */	mr r4, r21
/* 80183E48 00179BC8  4B FF EB 79 */	bl nw4r3lyt4PaneFPQ34nw4r3lyt4Pane$7AppendChild
lbl_80183E4C:
/* 80183E4C 00179BCC  7E B3 AB 78 */	mr r19, r21
/* 80183E50 00179BD0  48 00 00 D0 */	b lbl_80183F20
lbl_80183E54:
/* 80183E54 00179BD4  7E 74 9B 78 */	mr r20, r19
/* 80183E58 00179BD8  48 00 00 C8 */	b lbl_80183F20
lbl_80183E5C:
/* 80183E5C 00179BDC  7E 93 A3 78 */	mr r19, r20
/* 80183E60 00179BE0  82 94 00 0C */	lwz r20, 0xc(r20)
/* 80183E64 00179BE4  48 00 00 BC */	b lbl_80183F20
lbl_80183E68:
/* 80183E68 00179BE8  2C 12 00 00 */	cmpwi r18, 0
/* 80183E6C 00179BEC  40 82 00 48 */	bne lbl_80183EB4
/* 80183E70 00179BF0  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80183E74 00179BF4  3A 40 00 01 */	li r18, 1
/* 80183E78 00179BF8  38 80 00 0C */	li r4, 0xc
/* 80183E7C 00179BFC  48 08 0F E1 */	bl MEMAllocFromAllocator
/* 80183E80 00179C00  2C 03 00 00 */	cmpwi r3, 0
/* 80183E84 00179C04  41 82 00 24 */	beq lbl_80183EA8
/* 80183E88 00179C08  41 82 00 24 */	beq lbl_80183EAC
/* 80183E8C 00179C0C  92 C3 00 04 */	stw r22, 4(r3)
/* 80183E90 00179C10  38 83 00 04 */	addi r4, r3, 4
/* 80183E94 00179C14  92 C3 00 08 */	stw r22, 8(r3)
/* 80183E98 00179C18  92 C3 00 00 */	stw r22, 0(r3)
/* 80183E9C 00179C1C  90 83 00 04 */	stw r4, 4(r3)
/* 80183EA0 00179C20  90 83 00 08 */	stw r4, 8(r3)
/* 80183EA4 00179C24  48 00 00 08 */	b lbl_80183EAC
lbl_80183EA8:
/* 80183EA8 00179C28  38 60 00 00 */	li r3, 0
lbl_80183EAC:
/* 80183EAC 00179C2C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80183EB0 00179C30  48 00 00 70 */	b lbl_80183F20
lbl_80183EB4:
/* 80183EB4 00179C34  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80183EB8 00179C38  2C 00 00 00 */	cmpwi r0, 0
/* 80183EBC 00179C3C  41 82 00 64 */	beq lbl_80183F20
/* 80183EC0 00179C40  2C 11 00 01 */	cmpwi r17, 1
/* 80183EC4 00179C44  40 82 00 5C */	bne lbl_80183F20
/* 80183EC8 00179C48  82 BE 00 10 */	lwz r21, 0x10(r30)
/* 80183ECC 00179C4C  38 80 00 2C */	li r4, 0x2c
/* 80183ED0 00179C50  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80183ED4 00179C54  48 08 0F 89 */	bl MEMAllocFromAllocator
/* 80183ED8 00179C58  2C 03 00 00 */	cmpwi r3, 0
/* 80183EDC 00179C5C  41 82 00 20 */	beq lbl_80183EFC
/* 80183EE0 00179C60  7C 64 1B 78 */	mr r4, r3
/* 80183EE4 00179C64  41 82 00 1C */	beq lbl_80183F00
/* 80183EE8 00179C68  7E 04 83 78 */	mr r4, r16
/* 80183EEC 00179C6C  7E A5 AB 78 */	mr r5, r21
/* 80183EF0 00179C70  4B FF F7 45 */	bl nw4r3lyt5GroupFPCQ44nw4r3lyt3res5G$7__ct
/* 80183EF4 00179C74  7C 64 1B 78 */	mr r4, r3
/* 80183EF8 00179C78  48 00 00 08 */	b lbl_80183F00
lbl_80183EFC:
/* 80183EFC 00179C7C  38 80 00 00 */	li r4, 0
lbl_80183F00:
/* 80183F00 00179C80  2C 04 00 00 */	cmpwi r4, 0
/* 80183F04 00179C84  41 82 00 1C */	beq lbl_80183F20
/* 80183F08 00179C88  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80183F0C 00179C8C  4B FF F9 9D */	bl nw4r3lyt14GroupContainerFPQ34nw4r3$7AppendGroup
/* 80183F10 00179C90  48 00 00 10 */	b lbl_80183F20
lbl_80183F14:
/* 80183F14 00179C94  3A 31 00 01 */	addi r17, r17, 1
/* 80183F18 00179C98  48 00 00 08 */	b lbl_80183F20
lbl_80183F1C:
/* 80183F1C 00179C9C  3A 31 FF FF */	addi r17, r17, -1
lbl_80183F20:
/* 80183F20 00179CA0  80 10 00 04 */	lwz r0, 4(r16)
/* 80183F24 00179CA4  39 EF 00 01 */	addi r15, r15, 1
/* 80183F28 00179CA8  7E 10 02 14 */	add r16, r16, r0
lbl_80183F2C:
/* 80183F2C 00179CAC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 80183F30 00179CB0  7C 0F 00 00 */	cmpw r15, r0
/* 80183F34 00179CB4  41 80 FD B4 */	blt lbl_80183CE8
/* 80183F38 00179CB8  38 60 00 01 */	li r3, 1
lbl_80183F3C:
/* 80183F3C 00179CBC  39 61 00 60 */	addi r11, r1, 0x60
/* 80183F40 00179CC0  48 26 D3 F9 */	bl __restore_gpr
/* 80183F44 00179CC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80183F48 00179CC8  7C 08 03 A6 */	mtlr r0
/* 80183F4C 00179CCC  38 21 00 60 */	addi r1, r1, 0x60
/* 80183F50 00179CD0  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFPCvPQ34nw4r3lyt16R$7CreateAnimTransform
nw4r3lyt6LayoutFPCvPQ34nw4r3lyt16R$7CreateAnimTransform:
/* 80183F54 00179CD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80183F58 00179CD8  7C 08 02 A6 */	mflr r0
/* 80183F5C 00179CDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80183F60 00179CE0  39 61 00 40 */	addi r11, r1, 0x40
/* 80183F64 00179CE4  48 26 D3 AD */	bl _savegpr_23
/* 80183F68 00179CE8  7C 9E 23 78 */	mr r30, r4
/* 80183F6C 00179CEC  7C 79 1B 78 */	mr r25, r3
/* 80183F70 00179CF0  7C BA 2B 78 */	mr r26, r5
/* 80183F74 00179CF4  7F C3 F3 78 */	mr r3, r30
/* 80183F78 00179CF8  48 00 81 C9 */	bl nw4r3lyt6detailFRCQ44nw4r3lyt3res1$7TestFileHeader
/* 80183F7C 00179CFC  2C 03 00 00 */	cmpwi r3, 0
/* 80183F80 00179D00  40 82 00 0C */	bne lbl_80183F8C
/* 80183F84 00179D04  38 60 00 00 */	li r3, 0
/* 80183F88 00179D08  48 00 01 38 */	b lbl_801840C0
lbl_80183F8C:
/* 80183F8C 00179D0C  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 80183F90 00179D10  3C 60 70 61 */	lis r3, 0x70616931@ha
/* 80183F94 00179D14  3B E3 69 31 */	addi r31, r3, 0x70616931@l
/* 80183F98 00179D18  3B 80 00 00 */	li r28, 0
/* 80183F9C 00179D1C  7F BE 02 14 */	add r29, r30, r0
/* 80183FA0 00179D20  3B 60 00 00 */	li r27, 0
/* 80183FA4 00179D24  3F 00 52 4C */	lis r24, 0x524c
/* 80183FA8 00179D28  48 00 01 08 */	b lbl_801840B0
lbl_80183FAC:
/* 80183FAC 00179D2C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80183FB0 00179D30  7C 00 F8 00 */	cmpw r0, r31
/* 80183FB4 00179D34  41 82 00 08 */	beq lbl_80183FBC
/* 80183FB8 00179D38  48 00 00 EC */	b lbl_801840A4
lbl_80183FBC:
/* 80183FBC 00179D3C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80183FC0 00179D40  38 18 54 50 */	addi r0, r24, 0x5450
/* 80183FC4 00179D44  7C 03 00 00 */	cmpw r3, r0
/* 80183FC8 00179D48  41 82 00 68 */	beq lbl_80184030
/* 80183FCC 00179D4C  40 80 00 34 */	bge lbl_80184000
/* 80183FD0 00179D50  38 18 4D 43 */	addi r0, r24, 0x4d43
/* 80183FD4 00179D54  7C 03 00 00 */	cmpw r3, r0
/* 80183FD8 00179D58  41 82 00 58 */	beq lbl_80184030
/* 80183FDC 00179D5C  40 80 00 14 */	bge lbl_80183FF0
/* 80183FE0 00179D60  38 18 41 4E */	addi r0, r24, 0x414e
/* 80183FE4 00179D64  7C 03 00 00 */	cmpw r3, r0
/* 80183FE8 00179D68  41 82 00 48 */	beq lbl_80184030
/* 80183FEC 00179D6C  48 00 00 98 */	b lbl_80184084
lbl_80183FF0:
/* 80183FF0 00179D70  38 18 50 41 */	addi r0, r24, 0x5041
/* 80183FF4 00179D74  7C 03 00 00 */	cmpw r3, r0
/* 80183FF8 00179D78  41 82 00 38 */	beq lbl_80184030
/* 80183FFC 00179D7C  48 00 00 88 */	b lbl_80184084
lbl_80184000:
/* 80184000 00179D80  38 18 56 43 */	addi r0, r24, 0x5643
/* 80184004 00179D84  7C 03 00 00 */	cmpw r3, r0
/* 80184008 00179D88  41 82 00 28 */	beq lbl_80184030
/* 8018400C 00179D8C  40 80 00 14 */	bge lbl_80184020
/* 80184010 00179D90  38 18 54 53 */	addi r0, r24, 0x5453
/* 80184014 00179D94  7C 03 00 00 */	cmpw r3, r0
/* 80184018 00179D98  41 82 00 18 */	beq lbl_80184030
/* 8018401C 00179D9C  48 00 00 68 */	b lbl_80184084
lbl_80184020:
/* 80184020 00179DA0  38 18 56 49 */	addi r0, r24, 0x5649
/* 80184024 00179DA4  7C 03 00 00 */	cmpw r3, r0
/* 80184028 00179DA8  41 82 00 08 */	beq lbl_80184030
/* 8018402C 00179DAC  48 00 00 58 */	b lbl_80184084
lbl_80184030:
/* 80184030 00179DB0  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80184034 00179DB4  38 80 00 20 */	li r4, 0x20
/* 80184038 00179DB8  48 08 0E 25 */	bl MEMAllocFromAllocator
/* 8018403C 00179DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80184040 00179DC0  41 82 00 18 */	beq lbl_80184058
/* 80184044 00179DC4  7C 77 1B 78 */	mr r23, r3
/* 80184048 00179DC8  41 82 00 14 */	beq lbl_8018405C
/* 8018404C 00179DCC  48 00 73 75 */	bl nw4r3lyt18AnimTransformBasicFv$7__ct
/* 80184050 00179DD0  7C 77 1B 78 */	mr r23, r3
/* 80184054 00179DD4  48 00 00 08 */	b lbl_8018405C
lbl_80184058:
/* 80184058 00179DD8  3A E0 00 00 */	li r23, 0
lbl_8018405C:
/* 8018405C 00179DDC  2C 17 00 00 */	cmpwi r23, 0
/* 80184060 00179DE0  41 82 00 24 */	beq lbl_80184084
/* 80184064 00179DE4  81 97 00 00 */	lwz r12, 0(r23)
/* 80184068 00179DE8  7E E3 BB 78 */	mr r3, r23
/* 8018406C 00179DEC  7F A4 EB 78 */	mr r4, r29
/* 80184070 00179DF0  7F 45 D3 78 */	mr r5, r26
/* 80184074 00179DF4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80184078 00179DF8  7D 89 03 A6 */	mtctr r12
/* 8018407C 00179DFC  4E 80 04 21 */	bctrl 
/* 80184080 00179E00  7E FC BB 78 */	mr r28, r23
lbl_80184084:
/* 80184084 00179E04  2C 1C 00 00 */	cmpwi r28, 0
/* 80184088 00179E08  41 82 00 1C */	beq lbl_801840A4
/* 8018408C 00179E0C  38 19 00 08 */	addi r0, r25, 8
/* 80184090 00179E10  38 79 00 04 */	addi r3, r25, 4
/* 80184094 00179E14  90 01 00 08 */	stw r0, 8(r1)
/* 80184098 00179E18  38 81 00 08 */	addi r4, r1, 8
/* 8018409C 00179E1C  38 BC 00 04 */	addi r5, r28, 4
/* 801840A0 00179E20  4B FD 82 A9 */	bl nw4r2ut6detail12LinkListImplFQ54nw4r2ut6deta$7Insert
lbl_801840A4:
/* 801840A4 00179E24  80 1D 00 04 */	lwz r0, 4(r29)
/* 801840A8 00179E28  3B 7B 00 01 */	addi r27, r27, 1
/* 801840AC 00179E2C  7F BD 02 14 */	add r29, r29, r0
lbl_801840B0:
/* 801840B0 00179E30  A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 801840B4 00179E34  7C 1B 00 00 */	cmpw r27, r0
/* 801840B8 00179E38  41 80 FE F4 */	blt lbl_80183FAC
/* 801840BC 00179E3C  7F 83 E3 78 */	mr r3, r28
lbl_801840C0:
/* 801840C0 00179E40  39 61 00 40 */	addi r11, r1, 0x40
/* 801840C4 00179E44  48 26 D2 99 */	bl _restgpr_23
/* 801840C8 00179E48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801840CC 00179E4C  7C 08 03 A6 */	mtlr r0
/* 801840D0 00179E50  38 21 00 40 */	addi r1, r1, 0x40
/* 801840D4 00179E54  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFPQ34nw4r3lyt13Anim$7BindAnimation
nw4r3lyt6LayoutFPQ34nw4r3lyt13Anim$7BindAnimation:
/* 801840D8 00179E58  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801840DC 00179E5C  2C 03 00 00 */	cmpwi r3, 0
/* 801840E0 00179E60  4D 82 00 20 */	beqlr 
/* 801840E4 00179E64  81 83 00 00 */	lwz r12, 0(r3)
/* 801840E8 00179E68  38 A0 00 01 */	li r5, 1
/* 801840EC 00179E6C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801840F0 00179E70  7D 89 03 A6 */	mtctr r12
/* 801840F4 00179E74  4E 80 04 20 */	bctr 
/* 801840F8 00179E78  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFPQ34nw4r3lyt13Anim$7UnbindAnimation
nw4r3lyt6LayoutFPQ34nw4r3lyt13Anim$7UnbindAnimation:
/* 801840FC 00179E7C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80184100 00179E80  2C 03 00 00 */	cmpwi r3, 0
/* 80184104 00179E84  4D 82 00 20 */	beqlr 
/* 80184108 00179E88  81 83 00 00 */	lwz r12, 0(r3)
/* 8018410C 00179E8C  38 A0 00 01 */	li r5, 1
/* 80184110 00179E90  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80184114 00179E94  7D 89 03 A6 */	mtctr r12
/* 80184118 00179E98  4E 80 04 20 */	bctr 
/* 8018411C 00179E9C  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFv$7UnbindAllAnimation
nw4r3lyt6LayoutFv$7UnbindAllAnimation:
/* 80184120 00179EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 80184124 00179EA4  38 80 00 00 */	li r4, 0
/* 80184128 00179EA8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8018412C 00179EAC  7D 89 03 A6 */	mtctr r12
/* 80184130 00179EB0  4E 80 04 20 */	bctr 

.global nw4r3lyt6LayoutFPQ34nw4r3lyt13Anim$7SetAnimationEnable
nw4r3lyt6LayoutFPQ34nw4r3lyt13Anim$7SetAnimationEnable:
/* 80184134 00179EB4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80184138 00179EB8  2C 03 00 00 */	cmpwi r3, 0
/* 8018413C 00179EBC  4D 82 00 20 */	beqlr 
/* 80184140 00179EC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80184144 00179EC4  38 C0 00 01 */	li r6, 1
/* 80184148 00179EC8  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8018414C 00179ECC  7D 89 03 A6 */	mtctr r12
/* 80184150 00179ED0  4E 80 04 20 */	bctr 
/* 80184154 00179ED4  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFRCQ34nw4r3lyt8Draw$7CalculateMtx
nw4r3lyt6LayoutFRCQ34nw4r3lyt8Draw$7CalculateMtx:
/* 80184158 00179ED8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8018415C 00179EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80184160 00179EE0  4D 82 00 20 */	beqlr 
/* 80184164 00179EE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80184168 00179EE8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8018416C 00179EEC  7D 89 03 A6 */	mtctr r12
/* 80184170 00179EF0  4E 80 04 20 */	bctr 
/* 80184174 00179EF4  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFRCQ34nw4r3lyt8Draw$7Draw
nw4r3lyt6LayoutFRCQ34nw4r3lyt8Draw$7Draw:
/* 80184178 00179EF8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8018417C 00179EFC  2C 03 00 00 */	cmpwi r3, 0
/* 80184180 00179F00  4D 82 00 20 */	beqlr 
/* 80184184 00179F04  81 83 00 00 */	lwz r12, 0(r3)
/* 80184188 00179F08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8018418C 00179F0C  7D 89 03 A6 */	mtctr r12
/* 80184190 00179F10  4E 80 04 20 */	bctr 
/* 80184194 00179F14  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFUl$7Animate
nw4r3lyt6LayoutFUl$7Animate:
/* 80184198 00179F18  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8018419C 00179F1C  2C 03 00 00 */	cmpwi r3, 0
/* 801841A0 00179F20  4D 82 00 20 */	beqlr 
/* 801841A4 00179F24  81 83 00 00 */	lwz r12, 0(r3)
/* 801841A8 00179F28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801841AC 00179F2C  7D 89 03 A6 */	mtctr r12
/* 801841B0 00179F30  4E 80 04 20 */	bctr 
/* 801841B4 00179F34  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutCFv$7GetLayoutRect
nw4r3lyt6LayoutCFv$7GetLayoutRect:
/* 801841B8 00179F38  88 04 00 20 */	lbz r0, 0x20(r4)
/* 801841BC 00179F3C  28 00 00 01 */	cmplwi r0, 1
/* 801841C0 00179F40  40 82 00 3C */	bne lbl_801841FC
/* 801841C4 00179F44  C0 84 00 1C */	lfs f4, 0x1c(r4)
/* 801841C8 00179F48  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 801841CC 00179F4C  FC 60 20 50 */	fneg f3, f4
/* 801841D0 00179F50  C0 42 9D B4 */	lfs f2, lbl_805A30D4-_SDA2_BASE_(r2)
/* 801841D4 00179F54  FC 00 08 50 */	fneg f0, f1
/* 801841D8 00179F58  EC A1 00 B2 */	fmuls f5, f1, f2
/* 801841DC 00179F5C  EC 63 00 B2 */	fmuls f3, f3, f2
/* 801841E0 00179F60  EC 24 00 B2 */	fmuls f1, f4, f2
/* 801841E4 00179F64  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801841E8 00179F68  D0 A3 00 08 */	stfs f5, 8(r3)
/* 801841EC 00179F6C  D0 23 00 04 */	stfs f1, 4(r3)
/* 801841F0 00179F70  D0 03 00 00 */	stfs f0, 0(r3)
/* 801841F4 00179F74  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 801841F8 00179F78  4E 80 00 20 */	blr 
lbl_801841FC:
/* 801841FC 00179F7C  C0 02 9D B0 */	lfs f0, lbl_805A30D0-_SDA2_BASE_(r2)
/* 80184200 00179F80  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80184204 00179F84  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80184208 00179F88  D0 03 00 00 */	stfs f0, 0(r3)
/* 8018420C 00179F8C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80184210 00179F90  D0 23 00 08 */	stfs f1, 8(r3)
/* 80184214 00179F94  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80184218 00179F98  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFPQ34nw4r2ut19TagPr$7SetTagProcessor
nw4r3lyt6LayoutFPQ34nw4r2ut19TagPr$7SetTagProcessor:
/* 8018421C 00179F9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80184220 00179FA0  7C 08 02 A6 */	mflr r0
/* 80184224 00179FA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80184228 00179FA8  39 61 00 30 */	addi r11, r1, 0x30
/* 8018422C 00179FAC  48 26 D0 E5 */	bl _savegpr_23
/* 80184230 00179FB0  83 23 00 10 */	lwz r25, 0x10(r3)
/* 80184234 00179FB4  7C 9F 23 78 */	mr r31, r4
/* 80184238 00179FB8  3A ED C0 F8 */	addi r23, r13, lbl_805A0518-_SDA_BASE_
/* 8018423C 00179FBC  81 99 00 00 */	lwz r12, 0(r25)
/* 80184240 00179FC0  7F 23 CB 78 */	mr r3, r25
/* 80184244 00179FC4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80184248 00179FC8  7D 89 03 A6 */	mtctr r12
/* 8018424C 00179FCC  4E 80 04 21 */	bctrl 
/* 80184250 00179FD0  48 00 00 18 */	b lbl_80184268
lbl_80184254:
/* 80184254 00179FD4  7C 03 B8 40 */	cmplw r3, r23
/* 80184258 00179FD8  40 82 00 0C */	bne lbl_80184264
/* 8018425C 00179FDC  38 00 00 01 */	li r0, 1
/* 80184260 00179FE0  48 00 00 14 */	b lbl_80184274
lbl_80184264:
/* 80184264 00179FE4  80 63 00 00 */	lwz r3, 0(r3)
lbl_80184268:
/* 80184268 00179FE8  2C 03 00 00 */	cmpwi r3, 0
/* 8018426C 00179FEC  40 82 FF E8 */	bne lbl_80184254
/* 80184270 00179FF0  38 00 00 00 */	li r0, 0
lbl_80184274:
/* 80184274 00179FF4  2C 00 00 00 */	cmpwi r0, 0
/* 80184278 00179FF8  41 82 00 0C */	beq lbl_80184284
/* 8018427C 00179FFC  7F 23 CB 78 */	mr r3, r25
/* 80184280 0017A000  48 00 00 08 */	b lbl_80184288
lbl_80184284:
/* 80184284 0017A004  38 60 00 00 */	li r3, 0
lbl_80184288:
/* 80184288 0017A008  2C 03 00 00 */	cmpwi r3, 0
/* 8018428C 0017A00C  41 82 00 08 */	beq lbl_80184294
/* 80184290 0017A010  93 E3 00 F4 */	stw r31, 0xf4(r3)
lbl_80184294:
/* 80184294 0017A014  83 D9 00 14 */	lwz r30, 0x14(r25)
/* 80184298 0017A018  3B 79 00 14 */	addi r27, r25, 0x14
/* 8018429C 0017A01C  3B 0D C0 F8 */	addi r24, r13, lbl_805A0518-_SDA_BASE_
/* 801842A0 0017A020  3A ED C0 F8 */	addi r23, r13, lbl_805A0518-_SDA_BASE_
/* 801842A4 0017A024  48 00 00 F8 */	b lbl_8018439C
lbl_801842A8:
/* 801842A8 0017A028  3B 3E FF FC */	addi r25, r30, -4
/* 801842AC 0017A02C  81 99 00 00 */	lwz r12, 0(r25)
/* 801842B0 0017A030  7F 23 CB 78 */	mr r3, r25
/* 801842B4 0017A034  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801842B8 0017A038  7D 89 03 A6 */	mtctr r12
/* 801842BC 0017A03C  4E 80 04 21 */	bctrl 
/* 801842C0 0017A040  48 00 00 18 */	b lbl_801842D8
lbl_801842C4:
/* 801842C4 0017A044  7C 03 B8 40 */	cmplw r3, r23
/* 801842C8 0017A048  40 82 00 0C */	bne lbl_801842D4
/* 801842CC 0017A04C  38 00 00 01 */	li r0, 1
/* 801842D0 0017A050  48 00 00 14 */	b lbl_801842E4
lbl_801842D4:
/* 801842D4 0017A054  80 63 00 00 */	lwz r3, 0(r3)
lbl_801842D8:
/* 801842D8 0017A058  2C 03 00 00 */	cmpwi r3, 0
/* 801842DC 0017A05C  40 82 FF E8 */	bne lbl_801842C4
/* 801842E0 0017A060  38 00 00 00 */	li r0, 0
lbl_801842E4:
/* 801842E4 0017A064  2C 00 00 00 */	cmpwi r0, 0
/* 801842E8 0017A068  41 82 00 0C */	beq lbl_801842F4
/* 801842EC 0017A06C  7F 23 CB 78 */	mr r3, r25
/* 801842F0 0017A070  48 00 00 08 */	b lbl_801842F8
lbl_801842F4:
/* 801842F4 0017A074  38 60 00 00 */	li r3, 0
lbl_801842F8:
/* 801842F8 0017A078  2C 03 00 00 */	cmpwi r3, 0
/* 801842FC 0017A07C  41 82 00 08 */	beq lbl_80184304
/* 80184300 0017A080  93 E3 00 F4 */	stw r31, 0xf4(r3)
lbl_80184304:
/* 80184304 0017A084  83 B9 00 14 */	lwz r29, 0x14(r25)
/* 80184308 0017A088  3B 59 00 14 */	addi r26, r25, 0x14
/* 8018430C 0017A08C  48 00 00 84 */	b lbl_80184390
lbl_80184310:
/* 80184310 0017A090  3B 3D FF FC */	addi r25, r29, -4
/* 80184314 0017A094  81 99 00 00 */	lwz r12, 0(r25)
/* 80184318 0017A098  7F 23 CB 78 */	mr r3, r25
/* 8018431C 0017A09C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80184320 0017A0A0  7D 89 03 A6 */	mtctr r12
/* 80184324 0017A0A4  4E 80 04 21 */	bctrl 
/* 80184328 0017A0A8  48 00 00 18 */	b lbl_80184340
lbl_8018432C:
/* 8018432C 0017A0AC  7C 03 C0 40 */	cmplw r3, r24
/* 80184330 0017A0B0  40 82 00 0C */	bne lbl_8018433C
/* 80184334 0017A0B4  38 00 00 01 */	li r0, 1
/* 80184338 0017A0B8  48 00 00 14 */	b lbl_8018434C
lbl_8018433C:
/* 8018433C 0017A0BC  80 63 00 00 */	lwz r3, 0(r3)
lbl_80184340:
/* 80184340 0017A0C0  2C 03 00 00 */	cmpwi r3, 0
/* 80184344 0017A0C4  40 82 FF E8 */	bne lbl_8018432C
/* 80184348 0017A0C8  38 00 00 00 */	li r0, 0
lbl_8018434C:
/* 8018434C 0017A0CC  2C 00 00 00 */	cmpwi r0, 0
/* 80184350 0017A0D0  41 82 00 0C */	beq lbl_8018435C
/* 80184354 0017A0D4  7F 23 CB 78 */	mr r3, r25
/* 80184358 0017A0D8  48 00 00 08 */	b lbl_80184360
lbl_8018435C:
/* 8018435C 0017A0DC  38 60 00 00 */	li r3, 0
lbl_80184360:
/* 80184360 0017A0E0  2C 03 00 00 */	cmpwi r3, 0
/* 80184364 0017A0E4  41 82 00 08 */	beq lbl_8018436C
/* 80184368 0017A0E8  93 E3 00 F4 */	stw r31, 0xf4(r3)
lbl_8018436C:
/* 8018436C 0017A0EC  87 99 00 14 */	lwzu r28, 0x14(r25)
/* 80184370 0017A0F0  48 00 00 14 */	b lbl_80184384
lbl_80184374:
/* 80184374 0017A0F4  7F E4 FB 78 */	mr r4, r31
/* 80184378 0017A0F8  38 7C FF FC */	addi r3, r28, -4
/* 8018437C 0017A0FC  4B FF F5 DD */	bl $2unnamed$2lyt_layout_cpp$2$7SetTagProcessorImpl
/* 80184380 0017A100  83 9C 00 00 */	lwz r28, 0(r28)
lbl_80184384:
/* 80184384 0017A104  7C 1C C8 40 */	cmplw r28, r25
/* 80184388 0017A108  40 82 FF EC */	bne lbl_80184374
/* 8018438C 0017A10C  83 BD 00 00 */	lwz r29, 0(r29)
lbl_80184390:
/* 80184390 0017A110  7C 1D D0 40 */	cmplw r29, r26
/* 80184394 0017A114  40 82 FF 7C */	bne lbl_80184310
/* 80184398 0017A118  83 DE 00 00 */	lwz r30, 0(r30)
lbl_8018439C:
/* 8018439C 0017A11C  7C 1E D8 40 */	cmplw r30, r27
/* 801843A0 0017A120  40 82 FF 08 */	bne lbl_801842A8
/* 801843A4 0017A124  39 61 00 30 */	addi r11, r1, 0x30
/* 801843A8 0017A128  48 26 CF B5 */	bl _restgpr_23
/* 801843AC 0017A12C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801843B0 0017A130  7C 08 03 A6 */	mtlr r0
/* 801843B4 0017A134  38 21 00 30 */	addi r1, r1, 0x30
/* 801843B8 0017A138  4E 80 00 20 */	blr 

.global nw4r3lyt6LayoutFlPCvRCQ34nw4r3lyt1$7BuildPaneObj
nw4r3lyt6LayoutFlPCvRCQ34nw4r3lyt1$7BuildPaneObj:
/* 801843BC 0017A13C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801843C0 0017A140  7C 08 02 A6 */	mflr r0
/* 801843C4 0017A144  3C C0 70 69 */	lis r6, 0x70696331@ha
/* 801843C8 0017A148  90 01 00 54 */	stw r0, 0x54(r1)
/* 801843CC 0017A14C  38 06 63 31 */	addi r0, r6, 0x70696331@l
/* 801843D0 0017A150  7C 03 00 00 */	cmpw r3, r0
/* 801843D4 0017A154  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801843D8 0017A158  41 82 00 88 */	beq lbl_80184460
/* 801843DC 0017A15C  40 80 00 2C */	bge lbl_80184408
/* 801843E0 0017A160  3C C0 70 61 */	lis r6, 0x70616E31@ha
/* 801843E4 0017A164  38 06 6E 31 */	addi r0, r6, 0x70616E31@l
/* 801843E8 0017A168  7C 03 00 00 */	cmpw r3, r0
/* 801843EC 0017A16C  41 82 00 44 */	beq lbl_80184430
/* 801843F0 0017A170  40 80 01 C0 */	bge lbl_801845B0
/* 801843F4 0017A174  3C C0 62 6E */	lis r6, 0x626E6431@ha
/* 801843F8 0017A178  38 06 64 31 */	addi r0, r6, 0x626E6431@l
/* 801843FC 0017A17C  7C 03 00 00 */	cmpw r3, r0
/* 80184400 0017A180  41 82 01 5C */	beq lbl_8018455C
/* 80184404 0017A184  48 00 01 AC */	b lbl_801845B0
lbl_80184408:
/* 80184408 0017A188  3C C0 77 6E */	lis r6, 0x776E6431@ha
/* 8018440C 0017A18C  38 06 64 31 */	addi r0, r6, 0x776E6431@l
/* 80184410 0017A190  7C 03 00 00 */	cmpw r3, r0
/* 80184414 0017A194  41 82 00 F4 */	beq lbl_80184508
/* 80184418 0017A198  40 80 01 98 */	bge lbl_801845B0
/* 8018441C 0017A19C  3C C0 74 78 */	lis r6, 0x74787431@ha
/* 80184420 0017A1A0  38 06 74 31 */	addi r0, r6, 0x74787431@l
/* 80184424 0017A1A4  7C 03 00 00 */	cmpw r3, r0
/* 80184428 0017A1A8  41 82 00 8C */	beq lbl_801844B4
/* 8018442C 0017A1AC  48 00 01 84 */	b lbl_801845B0
lbl_80184430:
/* 80184430 0017A1B0  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80184434 0017A1B4  7C 9F 23 78 */	mr r31, r4
/* 80184438 0017A1B8  38 80 00 D4 */	li r4, 0xd4
/* 8018443C 0017A1BC  48 08 0A 21 */	bl MEMAllocFromAllocator
/* 80184440 0017A1C0  2C 03 00 00 */	cmpwi r3, 0
/* 80184444 0017A1C4  41 82 00 14 */	beq lbl_80184458
/* 80184448 0017A1C8  41 82 01 6C */	beq lbl_801845B4
/* 8018444C 0017A1CC  7F E4 FB 78 */	mr r4, r31
/* 80184450 0017A1D0  4B FF E3 11 */	bl nw4r3lyt4PaneFPCQ44nw4r3lyt3res4Pa$7__ct
/* 80184454 0017A1D4  48 00 01 60 */	b lbl_801845B4
lbl_80184458:
/* 80184458 0017A1D8  38 60 00 00 */	li r3, 0
/* 8018445C 0017A1DC  48 00 01 58 */	b lbl_801845B4
lbl_80184460:
/* 80184460 0017A1E0  80 65 00 00 */	lwz r3, 0(r5)
/* 80184464 0017A1E4  7C 9F 23 78 */	mr r31, r4
/* 80184468 0017A1E8  80 E5 00 04 */	lwz r7, 4(r5)
/* 8018446C 0017A1EC  38 80 00 EC */	li r4, 0xec
/* 80184470 0017A1F0  80 C5 00 08 */	lwz r6, 8(r5)
/* 80184474 0017A1F4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80184478 0017A1F8  90 61 00 38 */	stw r3, 0x38(r1)
/* 8018447C 0017A1FC  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80184480 0017A200  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 80184484 0017A204  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80184488 0017A208  90 01 00 44 */	stw r0, 0x44(r1)
/* 8018448C 0017A20C  48 08 09 D1 */	bl MEMAllocFromAllocator
/* 80184490 0017A210  2C 03 00 00 */	cmpwi r3, 0
/* 80184494 0017A214  41 82 00 18 */	beq lbl_801844AC
/* 80184498 0017A218  41 82 01 1C */	beq lbl_801845B4
/* 8018449C 0017A21C  7F E4 FB 78 */	mr r4, r31
/* 801844A0 0017A220  38 A1 00 38 */	addi r5, r1, 0x38
/* 801844A4 0017A224  48 00 01 31 */	bl nw4r3lyt7PictureFPCQ44nw4r3lyt3res$7__ct
/* 801844A8 0017A228  48 00 01 0C */	b lbl_801845B4
lbl_801844AC:
/* 801844AC 0017A22C  38 60 00 00 */	li r3, 0
/* 801844B0 0017A230  48 00 01 04 */	b lbl_801845B4
lbl_801844B4:
/* 801844B4 0017A234  80 65 00 00 */	lwz r3, 0(r5)
/* 801844B8 0017A238  7C 9F 23 78 */	mr r31, r4
/* 801844BC 0017A23C  80 E5 00 04 */	lwz r7, 4(r5)
/* 801844C0 0017A240  38 80 01 00 */	li r4, 0x100
/* 801844C4 0017A244  80 C5 00 08 */	lwz r6, 8(r5)
/* 801844C8 0017A248  80 05 00 0C */	lwz r0, 0xc(r5)
/* 801844CC 0017A24C  90 61 00 28 */	stw r3, 0x28(r1)
/* 801844D0 0017A250  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 801844D4 0017A254  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 801844D8 0017A258  90 C1 00 30 */	stw r6, 0x30(r1)
/* 801844DC 0017A25C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801844E0 0017A260  48 08 09 7D */	bl MEMAllocFromAllocator
/* 801844E4 0017A264  2C 03 00 00 */	cmpwi r3, 0
/* 801844E8 0017A268  41 82 00 18 */	beq lbl_80184500
/* 801844EC 0017A26C  41 82 00 C8 */	beq lbl_801845B4
/* 801844F0 0017A270  7F E4 FB 78 */	mr r4, r31
/* 801844F4 0017A274  38 A1 00 28 */	addi r5, r1, 0x28
/* 801844F8 0017A278  48 00 06 AD */	bl nw4r3lyt7TextBoxFPCQ44nw4r3lyt3res$7__ct
/* 801844FC 0017A27C  48 00 00 B8 */	b lbl_801845B4
lbl_80184500:
/* 80184500 0017A280  38 60 00 00 */	li r3, 0
/* 80184504 0017A284  48 00 00 B0 */	b lbl_801845B4
lbl_80184508:
/* 80184508 0017A288  80 65 00 00 */	lwz r3, 0(r5)
/* 8018450C 0017A28C  7C 9F 23 78 */	mr r31, r4
/* 80184510 0017A290  80 E5 00 04 */	lwz r7, 4(r5)
/* 80184514 0017A294  38 80 01 04 */	li r4, 0x104
/* 80184518 0017A298  80 C5 00 08 */	lwz r6, 8(r5)
/* 8018451C 0017A29C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80184520 0017A2A0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80184524 0017A2A4  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 80184528 0017A2A8  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8018452C 0017A2AC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80184530 0017A2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80184534 0017A2B4  48 08 09 29 */	bl MEMAllocFromAllocator
/* 80184538 0017A2B8  2C 03 00 00 */	cmpwi r3, 0
/* 8018453C 0017A2BC  41 82 00 18 */	beq lbl_80184554
/* 80184540 0017A2C0  41 82 00 74 */	beq lbl_801845B4
/* 80184544 0017A2C4  7F E4 FB 78 */	mr r4, r31
/* 80184548 0017A2C8  38 A1 00 18 */	addi r5, r1, 0x18
/* 8018454C 0017A2CC  48 00 11 7D */	bl nw4r3lyt6WindowFPCQ44nw4r3lyt3res6$7__ct
/* 80184550 0017A2D0  48 00 00 64 */	b lbl_801845B4
lbl_80184554:
/* 80184554 0017A2D4  38 60 00 00 */	li r3, 0
/* 80184558 0017A2D8  48 00 00 5C */	b lbl_801845B4
lbl_8018455C:
/* 8018455C 0017A2DC  80 65 00 00 */	lwz r3, 0(r5)
/* 80184560 0017A2E0  7C 9F 23 78 */	mr r31, r4
/* 80184564 0017A2E4  80 E5 00 04 */	lwz r7, 4(r5)
/* 80184568 0017A2E8  38 80 00 D4 */	li r4, 0xd4
/* 8018456C 0017A2EC  80 C5 00 08 */	lwz r6, 8(r5)
/* 80184570 0017A2F0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80184574 0017A2F4  90 61 00 08 */	stw r3, 8(r1)
/* 80184578 0017A2F8  80 6D C0 E8 */	lwz r3, lbl_805A0508-_SDA_BASE_(r13)
/* 8018457C 0017A2FC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80184580 0017A300  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80184584 0017A304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80184588 0017A308  48 08 08 D5 */	bl MEMAllocFromAllocator
/* 8018458C 0017A30C  2C 03 00 00 */	cmpwi r3, 0
/* 80184590 0017A310  41 82 00 18 */	beq lbl_801845A8
/* 80184594 0017A314  41 82 00 20 */	beq lbl_801845B4
/* 80184598 0017A318  7F E4 FB 78 */	mr r4, r31
/* 8018459C 0017A31C  38 A1 00 08 */	addi r5, r1, 8
/* 801845A0 0017A320  48 00 37 61 */	bl nw4r3lyt8BoundingFPCQ44nw4r3lyt3re$7__ct
/* 801845A4 0017A324  48 00 00 10 */	b lbl_801845B4
lbl_801845A8:
/* 801845A8 0017A328  38 60 00 00 */	li r3, 0
/* 801845AC 0017A32C  48 00 00 08 */	b lbl_801845B4
lbl_801845B0:
/* 801845B0 0017A330  38 60 00 00 */	li r3, 0
lbl_801845B4:
/* 801845B4 0017A334  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801845B8 0017A338  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801845BC 0017A33C  7C 08 03 A6 */	mtlr r0
/* 801845C0 0017A340  38 21 00 50 */	addi r1, r1, 0x50
/* 801845C4 0017A344  4E 80 00 20 */	blr 

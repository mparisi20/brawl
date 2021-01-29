.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global stDataMultiContainer$7create
stDataMultiContainer$7create:
/* 8015BBF4 00151974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015BBF8 00151978  7C 08 02 A6 */	mflr r0
/* 8015BBFC 0015197C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015BC00 00151980  39 61 00 20 */	addi r11, r1, 0x20
/* 8015BC04 00151984  48 29 57 1D */	bl _savegpr_27
/* 8015BC08 00151988  7C 7C 1B 78 */	mr r28, r3
/* 8015BC0C 0015198C  7C 9B 23 78 */	mr r27, r4
/* 8015BC10 00151990  38 60 00 14 */	li r3, 0x14
/* 8015BC14 00151994  4B EB 0C A5 */	bl __nw__10srHeapTypeFUlUl
/* 8015BC18 00151998  2C 03 00 00 */	cmpwi r3, 0
/* 8015BC1C 0015199C  7C 7F 1B 78 */	mr r31, r3
/* 8015BC20 001519A0  41 82 00 C8 */	beq lbl_8015BCE8
/* 8015BC24 001519A4  7F 84 E3 78 */	mr r4, r28
/* 8015BC28 001519A8  4B FF FE 89 */	bl stDataContainer$7__ct
/* 8015BC2C 001519AC  3C 60 80 46 */	lis r3, lbl_80462C78@ha
/* 8015BC30 001519B0  38 A0 00 40 */	li r5, 0x40
/* 8015BC34 001519B4  38 63 2C 78 */	addi r3, r3, lbl_80462C78@l
/* 8015BC38 001519B8  38 00 00 00 */	li r0, 0
/* 8015BC3C 001519BC  90 7F 00 00 */	stw r3, 0(r31)
/* 8015BC40 001519C0  7F 63 DB 78 */	mr r3, r27
/* 8015BC44 001519C4  38 80 01 00 */	li r4, 0x100
/* 8015BC48 001519C8  B0 BF 00 0C */	sth r5, 0xc(r31)
/* 8015BC4C 001519CC  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8015BC50 001519D0  4B EC 8D 95 */	bl alloc__13gfHeapManagerFUlUl
/* 8015BC54 001519D4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8015BC58 001519D8  38 80 00 00 */	li r4, 0
/* 8015BC5C 001519DC  38 A0 01 00 */	li r5, 0x100
/* 8015BC60 001519E0  4B EC A8 15 */	bl gfMemFill
/* 8015BC64 001519E4  38 00 00 10 */	li r0, 0x10
/* 8015BC68 001519E8  3B A0 00 00 */	li r29, 0
/* 8015BC6C 001519EC  90 1F 00 04 */	stw r0, 4(r31)
/* 8015BC70 001519F0  80 7F 00 08 */	lwz r3, 8(r31)
/* 8015BC74 001519F4  83 83 00 04 */	lwz r28, 4(r3)
/* 8015BC78 001519F8  48 00 00 68 */	b lbl_8015BCE0
lbl_8015BC7C:
/* 8015BC7C 001519FC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8015BC80 00151A00  7F E3 FB 78 */	mr r3, r31
/* 8015BC84 00151A04  7F A4 EB 78 */	mr r4, r29
/* 8015BC88 00151A08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8015BC8C 00151A0C  7D 89 03 A6 */	mtctr r12
/* 8015BC90 00151A10  4E 80 04 21 */	bctrl 
/* 8015BC94 00151A14  7C 7E 1B 78 */	mr r30, r3
/* 8015BC98 00151A18  7F 64 DB 78 */	mr r4, r27
/* 8015BC9C 00151A1C  38 60 00 0C */	li r3, 0xc
/* 8015BCA0 00151A20  4B EB 0C 19 */	bl __nw__10srHeapTypeFUlUl
/* 8015BCA4 00151A24  2C 03 00 00 */	cmpwi r3, 0
/* 8015BCA8 00151A28  41 82 00 0C */	beq lbl_8015BCB4
/* 8015BCAC 00151A2C  7F C4 F3 78 */	mr r4, r30
/* 8015BCB0 00151A30  4B FF FE 01 */	bl stDataContainer$7__ct
lbl_8015BCB4:
/* 8015BCB4 00151A34  A0 BF 00 0E */	lhz r5, 0xe(r31)
/* 8015BCB8 00151A38  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8015BCBC 00151A3C  7C 05 00 40 */	cmplw r5, r0
/* 8015BCC0 00151A40  40 80 00 1C */	bge lbl_8015BCDC
/* 8015BCC4 00151A44  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8015BCC8 00151A48  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 8015BCCC 00151A4C  7C 64 01 2E */	stwx r3, r4, r0
/* 8015BCD0 00151A50  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 8015BCD4 00151A54  38 03 00 01 */	addi r0, r3, 1
/* 8015BCD8 00151A58  B0 1F 00 0E */	sth r0, 0xe(r31)
lbl_8015BCDC:
/* 8015BCDC 00151A5C  3B BD 00 01 */	addi r29, r29, 1
lbl_8015BCE0:
/* 8015BCE0 00151A60  7C 1D E0 40 */	cmplw r29, r28
/* 8015BCE4 00151A64  41 80 FF 98 */	blt lbl_8015BC7C
lbl_8015BCE8:
/* 8015BCE8 00151A68  39 61 00 20 */	addi r11, r1, 0x20
/* 8015BCEC 00151A6C  7F E3 FB 78 */	mr r3, r31
/* 8015BCF0 00151A70  48 29 56 7D */	bl _restgpr_27
/* 8015BCF4 00151A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015BCF8 00151A78  7C 08 03 A6 */	mtlr r0
/* 8015BCFC 00151A7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015BD00 00151A80  4E 80 00 20 */	blr 

.global stDataMultiContainer$7__dt
stDataMultiContainer$7__dt:
/* 8015BD04 00151A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015BD08 00151A88  7C 08 02 A6 */	mflr r0
/* 8015BD0C 00151A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015BD10 00151A90  39 61 00 20 */	addi r11, r1, 0x20
/* 8015BD14 00151A94  48 29 56 0D */	bl _savegpr_27
/* 8015BD18 00151A98  2C 03 00 00 */	cmpwi r3, 0
/* 8015BD1C 00151A9C  7C 7B 1B 78 */	mr r27, r3
/* 8015BD20 00151AA0  7C 9C 23 78 */	mr r28, r4
/* 8015BD24 00151AA4  41 82 00 8C */	beq lbl_8015BDB0
/* 8015BD28 00151AA8  3C A0 80 46 */	lis r5, lbl_80462C78@ha
/* 8015BD2C 00151AAC  80 83 00 08 */	lwz r4, 8(r3)
/* 8015BD30 00151AB0  38 A5 2C 78 */	addi r5, r5, lbl_80462C78@l
/* 8015BD34 00151AB4  3B A0 00 00 */	li r29, 0
/* 8015BD38 00151AB8  90 A3 00 00 */	stw r5, 0(r3)
/* 8015BD3C 00151ABC  3B E0 00 00 */	li r31, 0
/* 8015BD40 00151AC0  83 C4 00 04 */	lwz r30, 4(r4)
/* 8015BD44 00151AC4  48 00 00 30 */	b lbl_8015BD74
lbl_8015BD48:
/* 8015BD48 00151AC8  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8015BD4C 00151ACC  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8015BD50 00151AD0  2C 03 00 00 */	cmpwi r3, 0
/* 8015BD54 00151AD4  41 82 00 18 */	beq lbl_8015BD6C
/* 8015BD58 00151AD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8015BD5C 00151ADC  38 80 00 01 */	li r4, 1
/* 8015BD60 00151AE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8015BD64 00151AE4  7D 89 03 A6 */	mtctr r12
/* 8015BD68 00151AE8  4E 80 04 21 */	bctrl 
lbl_8015BD6C:
/* 8015BD6C 00151AEC  3B FF 00 04 */	addi r31, r31, 4
/* 8015BD70 00151AF0  3B BD 00 01 */	addi r29, r29, 1
lbl_8015BD74:
/* 8015BD74 00151AF4  7C 1D F0 40 */	cmplw r29, r30
/* 8015BD78 00151AF8  41 80 FF D0 */	blt lbl_8015BD48
/* 8015BD7C 00151AFC  34 1B 00 0C */	addic. r0, r27, 0xc
/* 8015BD80 00151B00  41 82 00 14 */	beq lbl_8015BD94
/* 8015BD84 00151B04  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8015BD88 00151B08  2C 03 00 00 */	cmpwi r3, 0
/* 8015BD8C 00151B0C  41 82 00 08 */	beq lbl_8015BD94
/* 8015BD90 00151B10  4B EC 8C BD */	bl free__13gfHeapManagerFPv
lbl_8015BD94:
/* 8015BD94 00151B14  7F 63 DB 78 */	mr r3, r27
/* 8015BD98 00151B18  38 80 00 00 */	li r4, 0
/* 8015BD9C 00151B1C  4B FF FD 31 */	bl stDataContainer$7__dt
/* 8015BDA0 00151B20  2C 1C 00 00 */	cmpwi r28, 0
/* 8015BDA4 00151B24  40 81 00 0C */	ble lbl_8015BDB0
/* 8015BDA8 00151B28  7F 63 DB 78 */	mr r3, r27
/* 8015BDAC 00151B2C  4B EB 0B 1D */	bl __dl__FPv
lbl_8015BDB0:
/* 8015BDB0 00151B30  39 61 00 20 */	addi r11, r1, 0x20
/* 8015BDB4 00151B34  7F 63 DB 78 */	mr r3, r27
/* 8015BDB8 00151B38  48 29 55 B5 */	bl _restgpr_27
/* 8015BDBC 00151B3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015BDC0 00151B40  7C 08 03 A6 */	mtlr r0
/* 8015BDC4 00151B44  38 21 00 20 */	addi r1, r1, 0x20
/* 8015BDC8 00151B48  4E 80 00 20 */	blr 

.global stDataMultiContainer$7searchContainer
stDataMultiContainer$7searchContainer:
/* 8015BDCC 00151B4C  80 C3 00 08 */	lwz r6, 8(r3)
/* 8015BDD0 00151B50  80 ED C0 50 */	lwz r7, lbl_805A0470-_SDA_BASE_(r13)
/* 8015BDD4 00151B54  80 06 00 00 */	lwz r0, 0(r6)
/* 8015BDD8 00151B58  7C 07 00 40 */	cmplw r7, r0
/* 8015BDDC 00151B5C  41 82 00 0C */	beq lbl_8015BDE8
/* 8015BDE0 00151B60  38 60 00 00 */	li r3, 0
/* 8015BDE4 00151B64  4E 80 00 20 */	blr 
lbl_8015BDE8:
/* 8015BDE8 00151B68  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8015BDEC 00151B6C  39 20 00 00 */	li r9, 0
/* 8015BDF0 00151B70  38 E0 00 00 */	li r7, 0
/* 8015BDF4 00151B74  7C 09 03 A6 */	mtctr r0
/* 8015BDF8 00151B78  28 00 00 00 */	cmplwi r0, 0
/* 8015BDFC 00151B7C  40 81 00 38 */	ble lbl_8015BE34
lbl_8015BE00:
/* 8015BE00 00151B80  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8015BE04 00151B84  7D 06 38 2E */	lwzx r8, r6, r7
/* 8015BE08 00151B88  80 C8 00 08 */	lwz r6, 8(r8)
/* 8015BE0C 00151B8C  80 06 00 00 */	lwz r0, 0(r6)
/* 8015BE10 00151B90  7C 04 00 40 */	cmplw r4, r0
/* 8015BE14 00151B94  40 82 00 18 */	bne lbl_8015BE2C
/* 8015BE18 00151B98  7C 09 28 40 */	cmplw r9, r5
/* 8015BE1C 00151B9C  40 82 00 0C */	bne lbl_8015BE28
/* 8015BE20 00151BA0  7D 03 43 78 */	mr r3, r8
/* 8015BE24 00151BA4  4E 80 00 20 */	blr 
lbl_8015BE28:
/* 8015BE28 00151BA8  39 29 00 01 */	addi r9, r9, 1
lbl_8015BE2C:
/* 8015BE2C 00151BAC  38 E7 00 04 */	addi r7, r7, 4
/* 8015BE30 00151BB0  42 00 FF D0 */	bdnz lbl_8015BE00
lbl_8015BE34:
/* 8015BE34 00151BB4  38 60 00 00 */	li r3, 0
/* 8015BE38 00151BB8  4E 80 00 20 */	blr 

.global stDataMultiContainer$7getContainerData
stDataMultiContainer$7getContainerData:
/* 8015BE3C 00151BBC  80 E3 00 08 */	lwz r7, 8(r3)
/* 8015BE40 00151BC0  81 0D C0 50 */	lwz r8, lbl_805A0470-_SDA_BASE_(r13)
/* 8015BE44 00151BC4  80 07 00 00 */	lwz r0, 0(r7)
/* 8015BE48 00151BC8  7C 08 00 40 */	cmplw r8, r0
/* 8015BE4C 00151BCC  40 82 00 7C */	bne lbl_8015BEC8
/* 8015BE50 00151BD0  41 82 00 0C */	beq lbl_8015BE5C
/* 8015BE54 00151BD4  39 20 00 00 */	li r9, 0
/* 8015BE58 00151BD8  48 00 00 50 */	b lbl_8015BEA8
lbl_8015BE5C:
/* 8015BE5C 00151BDC  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8015BE60 00151BE0  39 00 00 00 */	li r8, 0
/* 8015BE64 00151BE4  39 40 00 00 */	li r10, 0
/* 8015BE68 00151BE8  7C 09 03 A6 */	mtctr r0
/* 8015BE6C 00151BEC  28 00 00 00 */	cmplwi r0, 0
/* 8015BE70 00151BF0  40 81 00 34 */	ble lbl_8015BEA4
lbl_8015BE74:
/* 8015BE74 00151BF4  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8015BE78 00151BF8  7D 27 50 2E */	lwzx r9, r7, r10
/* 8015BE7C 00151BFC  80 E9 00 08 */	lwz r7, 8(r9)
/* 8015BE80 00151C00  80 07 00 00 */	lwz r0, 0(r7)
/* 8015BE84 00151C04  7C 04 00 40 */	cmplw r4, r0
/* 8015BE88 00151C08  40 82 00 14 */	bne lbl_8015BE9C
/* 8015BE8C 00151C0C  7C 08 30 40 */	cmplw r8, r6
/* 8015BE90 00151C10  40 82 00 08 */	bne lbl_8015BE98
/* 8015BE94 00151C14  48 00 00 14 */	b lbl_8015BEA8
lbl_8015BE98:
/* 8015BE98 00151C18  39 08 00 01 */	addi r8, r8, 1
lbl_8015BE9C:
/* 8015BE9C 00151C1C  39 4A 00 04 */	addi r10, r10, 4
/* 8015BEA0 00151C20  42 00 FF D4 */	bdnz lbl_8015BE74
lbl_8015BEA4:
/* 8015BEA4 00151C24  39 20 00 00 */	li r9, 0
lbl_8015BEA8:
/* 8015BEA8 00151C28  2C 09 00 00 */	cmpwi r9, 0
/* 8015BEAC 00151C2C  41 82 00 40 */	beq lbl_8015BEEC
/* 8015BEB0 00151C30  81 89 00 00 */	lwz r12, 0(r9)
/* 8015BEB4 00151C34  7D 23 4B 78 */	mr r3, r9
/* 8015BEB8 00151C38  7C A4 2B 78 */	mr r4, r5
/* 8015BEBC 00151C3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8015BEC0 00151C40  7D 89 03 A6 */	mtctr r12
/* 8015BEC4 00151C44  4E 80 04 20 */	bctr 
lbl_8015BEC8:
/* 8015BEC8 00151C48  7C 04 00 40 */	cmplw r4, r0
/* 8015BECC 00151C4C  40 82 00 20 */	bne lbl_8015BEEC
/* 8015BED0 00151C50  2C 06 00 00 */	cmpwi r6, 0
/* 8015BED4 00151C54  41 82 00 18 */	beq lbl_8015BEEC
/* 8015BED8 00151C58  81 83 00 00 */	lwz r12, 0(r3)
/* 8015BEDC 00151C5C  7C A4 2B 78 */	mr r4, r5
/* 8015BEE0 00151C60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8015BEE4 00151C64  7D 89 03 A6 */	mtctr r12
/* 8015BEE8 00151C68  4E 80 04 20 */	bctr 
lbl_8015BEEC:
/* 8015BEEC 00151C6C  38 60 00 00 */	li r3, 0
/* 8015BEF0 00151C70  4E 80 00 20 */	blr 

.global stDataMultiContainer$7getContainerDataNum
stDataMultiContainer$7getContainerDataNum:
/* 8015BEF4 00151C74  80 C3 00 08 */	lwz r6, 8(r3)
/* 8015BEF8 00151C78  80 ED C0 50 */	lwz r7, lbl_805A0470-_SDA_BASE_(r13)
/* 8015BEFC 00151C7C  80 06 00 00 */	lwz r0, 0(r6)
/* 8015BF00 00151C80  7C 07 00 40 */	cmplw r7, r0
/* 8015BF04 00151C84  41 82 00 0C */	beq lbl_8015BF10
/* 8015BF08 00151C88  39 00 00 00 */	li r8, 0
/* 8015BF0C 00151C8C  48 00 00 50 */	b lbl_8015BF5C
lbl_8015BF10:
/* 8015BF10 00151C90  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8015BF14 00151C94  38 E0 00 00 */	li r7, 0
/* 8015BF18 00151C98  39 20 00 00 */	li r9, 0
/* 8015BF1C 00151C9C  7C 09 03 A6 */	mtctr r0
/* 8015BF20 00151CA0  28 00 00 00 */	cmplwi r0, 0
/* 8015BF24 00151CA4  40 81 00 34 */	ble lbl_8015BF58
lbl_8015BF28:
/* 8015BF28 00151CA8  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8015BF2C 00151CAC  7D 06 48 2E */	lwzx r8, r6, r9
/* 8015BF30 00151CB0  80 C8 00 08 */	lwz r6, 8(r8)
/* 8015BF34 00151CB4  80 06 00 00 */	lwz r0, 0(r6)
/* 8015BF38 00151CB8  7C 04 00 40 */	cmplw r4, r0
/* 8015BF3C 00151CBC  40 82 00 14 */	bne lbl_8015BF50
/* 8015BF40 00151CC0  7C 07 28 40 */	cmplw r7, r5
/* 8015BF44 00151CC4  40 82 00 08 */	bne lbl_8015BF4C
/* 8015BF48 00151CC8  48 00 00 14 */	b lbl_8015BF5C
lbl_8015BF4C:
/* 8015BF4C 00151CCC  38 E7 00 01 */	addi r7, r7, 1
lbl_8015BF50:
/* 8015BF50 00151CD0  39 29 00 04 */	addi r9, r9, 4
/* 8015BF54 00151CD4  42 00 FF D4 */	bdnz lbl_8015BF28
lbl_8015BF58:
/* 8015BF58 00151CD8  39 00 00 00 */	li r8, 0
lbl_8015BF5C:
/* 8015BF5C 00151CDC  2C 08 00 00 */	cmpwi r8, 0
/* 8015BF60 00151CE0  41 82 00 10 */	beq lbl_8015BF70
/* 8015BF64 00151CE4  80 68 00 08 */	lwz r3, 8(r8)
/* 8015BF68 00151CE8  80 63 00 04 */	lwz r3, 4(r3)
/* 8015BF6C 00151CEC  4E 80 00 20 */	blr 
lbl_8015BF70:
/* 8015BF70 00151CF0  38 60 00 00 */	li r3, 0
/* 8015BF74 00151CF4  4E 80 00 20 */	blr 

.global stDataMultiContainer$7getExtParam
stDataMultiContainer$7getExtParam:
/* 8015BF78 00151CF8  80 63 00 08 */	lwz r3, 8(r3)
/* 8015BF7C 00151CFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8015BF80 00151D00  4E 80 00 20 */	blr 

.global stDataMultiContainer$7getVersion
stDataMultiContainer$7getVersion:
/* 8015BF84 00151D04  80 63 00 08 */	lwz r3, 8(r3)
/* 8015BF88 00151D08  80 63 00 08 */	lwz r3, 8(r3)
/* 8015BF8C 00151D0C  4E 80 00 20 */	blr 

.global __sinit_$3st_data_container_multi_cpp
__sinit_$3st_data_container_multi_cpp:
/* 8015BF90 00151D10  80 0D A4 40 */	lwz r0, lbl_8059E860-_SDA_BASE_(r13)
/* 8015BF94 00151D14  90 0D C0 50 */	stw r0, lbl_805A0470-_SDA_BASE_(r13)
/* 8015BF98 00151D18  4E 80 00 20 */	blr 


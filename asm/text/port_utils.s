.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global port_select_mtu
port_select_mtu:
/* 80251878 002475F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025187C 002475FC  7C 08 02 A6 */	mflr r0
/* 80251880 00247600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251884 00247604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251888 00247608  3F E0 80 48 */	lis r31, lbl_804841C8@ha
/* 8025188C 0024760C  3B FF 41 C8 */	addi r31, r31, lbl_804841C8@l
/* 80251890 00247610  93 C1 00 08 */	stw r30, 8(r1)
/* 80251894 00247614  7C 7E 1B 78 */	mr r30, r3
/* 80251898 00247618  A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 8025189C 0024761C  2C 05 00 00 */	cmpwi r5, 0
/* 802518A0 00247620  40 82 00 C0 */	bne lbl_80251960
/* 802518A4 00247624  38 63 00 06 */	addi r3, r3, 6
/* 802518A8 00247628  4B FE 79 59 */	bl btm_get_max_packet_size
/* 802518AC 0024762C  54 65 04 3F */	clrlwi. r5, r3, 0x10
/* 802518B0 00247630  40 82 00 34 */	bne lbl_802518E4
/* 802518B4 00247634  3C 60 80 53 */	lis r3, lbl_8052D5A8@ha
/* 802518B8 00247638  38 63 D5 A8 */	addi r3, r3, lbl_8052D5A8@l
/* 802518BC 0024763C  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802518C0 00247640  28 00 00 02 */	cmplwi r0, 2
/* 802518C4 00247644  41 80 00 14 */	blt lbl_802518D8
/* 802518C8 00247648  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802518CC 0024764C  38 9F 00 00 */	addi r4, r31, 0
/* 802518D0 00247650  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802518D4 00247654  4B FE 01 11 */	bl LogMsg_0
lbl_802518D8:
/* 802518D8 00247658  38 00 00 7F */	li r0, 0x7f
/* 802518DC 0024765C  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 802518E0 00247660  48 00 00 A4 */	b lbl_80251984
lbl_802518E4:
/* 802518E4 00247664  28 05 06 9F */	cmplwi r5, 0x69f
/* 802518E8 00247668  41 81 00 44 */	bgt lbl_8025192C
/* 802518EC 0024766C  38 00 06 9F */	li r0, 0x69f
/* 802518F0 00247670  3C 80 80 53 */	lis r4, lbl_8052D5A8@ha
/* 802518F4 00247674  7C 00 2B D6 */	divw r0, r0, r5
/* 802518F8 00247678  38 84 D5 A8 */	addi r4, r4, lbl_8052D5A8@l
/* 802518FC 0024767C  7C 60 19 D6 */	mullw r3, r0, r3
/* 80251900 00247680  38 A3 FF F6 */	addi r5, r3, -10
/* 80251904 00247684  B0 BE 00 12 */	sth r5, 0x12(r30)
/* 80251908 00247688  88 04 04 14 */	lbz r0, 0x414(r4)
/* 8025190C 0024768C  28 00 00 05 */	cmplwi r0, 5
/* 80251910 00247690  41 80 00 74 */	blt lbl_80251984
/* 80251914 00247694  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 80251918 00247698  38 9F 00 20 */	addi r4, r31, 0x20
/* 8025191C 0024769C  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 80251920 002476A0  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80251924 002476A4  4B FE 00 D9 */	bl LogMsg_1
/* 80251928 002476A8  48 00 00 5C */	b lbl_80251984
lbl_8025192C:
/* 8025192C 002476AC  38 00 06 95 */	li r0, 0x695
/* 80251930 002476B0  3C 60 80 53 */	lis r3, lbl_8052D5A8@ha
/* 80251934 002476B4  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 80251938 002476B8  38 63 D5 A8 */	addi r3, r3, lbl_8052D5A8@l
/* 8025193C 002476BC  88 03 04 14 */	lbz r0, 0x414(r3)
/* 80251940 002476C0  28 00 00 05 */	cmplwi r0, 5
/* 80251944 002476C4  41 80 00 40 */	blt lbl_80251984
/* 80251948 002476C8  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 8025194C 002476CC  38 9F 00 58 */	addi r4, r31, 0x58
/* 80251950 002476D0  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 80251954 002476D4  38 A0 06 95 */	li r5, 0x695
/* 80251958 002476D8  4B FE 00 A5 */	bl LogMsg_1
/* 8025195C 002476DC  48 00 00 28 */	b lbl_80251984
lbl_80251960:
/* 80251960 002476E0  3C 60 80 53 */	lis r3, lbl_8052D5A8@ha
/* 80251964 002476E4  38 63 D5 A8 */	addi r3, r3, lbl_8052D5A8@l
/* 80251968 002476E8  88 03 04 14 */	lbz r0, 0x414(r3)
/* 8025196C 002476EC  28 00 00 05 */	cmplwi r0, 5
/* 80251970 002476F0  41 80 00 14 */	blt lbl_80251984
/* 80251974 002476F4  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 80251978 002476F8  38 9F 00 90 */	addi r4, r31, 0x90
/* 8025197C 002476FC  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 80251980 00247700  4B FE 00 7D */	bl LogMsg_1
lbl_80251984:
/* 80251984 00247704  A0 FE 00 12 */	lhz r7, 0x12(r30)
/* 80251988 00247708  38 60 1F 40 */	li r3, 0x1f40
/* 8025198C 0024770C  38 80 13 88 */	li r4, 0x1388
/* 80251990 00247710  38 00 2E E0 */	li r0, 0x2ee0
/* 80251994 00247714  7C A3 3B D6 */	divw r5, r3, r7
/* 80251998 00247718  3C 60 80 53 */	lis r3, lbl_8052D5A8@ha
/* 8025199C 0024771C  38 63 D5 A8 */	addi r3, r3, lbl_8052D5A8@l
/* 802519A0 00247720  7C C4 3B D6 */	divw r6, r4, r7
/* 802519A4 00247724  B0 BE 00 9C */	sth r5, 0x9c(r30)
/* 802519A8 00247728  7C E0 3B D6 */	divw r7, r0, r7
/* 802519AC 0024772C  B0 DE 00 9E */	sth r6, 0x9e(r30)
/* 802519B0 00247730  B0 FE 00 A0 */	sth r7, 0xa0(r30)
/* 802519B4 00247734  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802519B8 00247738  28 00 00 05 */	cmplwi r0, 5
/* 802519BC 0024773C  41 80 00 20 */	blt lbl_802519DC
/* 802519C0 00247740  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 802519C4 00247744  38 9F 00 B8 */	addi r4, r31, 0xb8
/* 802519C8 00247748  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 802519CC 0024774C  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 802519D0 00247750  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 802519D4 00247754  54 E7 04 3E */	clrlwi r7, r7, 0x10
/* 802519D8 00247758  4B FE 00 55 */	bl LogMsg_3
lbl_802519DC:
/* 802519DC 0024775C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802519E0 00247760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802519E4 00247764  83 C1 00 08 */	lwz r30, 8(r1)
/* 802519E8 00247768  7C 08 03 A6 */	mtlr r0
/* 802519EC 0024776C  38 21 00 10 */	addi r1, r1, 0x10
/* 802519F0 00247770  4E 80 00 20 */	blr 

.global port_release_port
port_release_port:
/* 802519F4 00247774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802519F8 00247778  7C 08 02 A6 */	mflr r0
/* 802519FC 0024777C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251A00 00247780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251A04 00247784  7C 7F 1B 78 */	mr r31, r3
/* 80251A08 00247788  48 00 00 08 */	b lbl_80251A10
lbl_80251A0C:
/* 80251A0C 0024778C  4B FD D6 D5 */	bl GKI_freebuf
lbl_80251A10:
/* 80251A10 00247790  38 7F 00 30 */	addi r3, r31, 0x30
/* 80251A14 00247794  4B FD DD 69 */	bl GKI_dequeue
/* 80251A18 00247798  2C 03 00 00 */	cmpwi r3, 0
/* 80251A1C 0024779C  40 82 FF F0 */	bne lbl_80251A0C
/* 80251A20 002477A0  38 00 00 00 */	li r0, 0
/* 80251A24 002477A4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80251A28 002477A8  48 00 00 08 */	b lbl_80251A30
lbl_80251A2C:
/* 80251A2C 002477AC  4B FD D6 B5 */	bl GKI_freebuf
lbl_80251A30:
/* 80251A30 002477B0  38 7F 00 18 */	addi r3, r31, 0x18
/* 80251A34 002477B4  4B FD DD 49 */	bl GKI_dequeue
/* 80251A38 002477B8  2C 03 00 00 */	cmpwi r3, 0
/* 80251A3C 002477BC  40 82 FF F0 */	bne lbl_80251A2C
/* 80251A40 002477C0  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80251A44 002477C4  38 60 00 00 */	li r3, 0
/* 80251A48 002477C8  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80251A4C 002477CC  2C 00 00 00 */	cmpwi r0, 0
/* 80251A50 002477D0  98 7F 00 02 */	stb r3, 2(r31)
/* 80251A54 002477D4  40 82 00 68 */	bne lbl_80251ABC
/* 80251A58 002477D8  3C 60 80 53 */	lis r3, lbl_8052D5A8@ha
/* 80251A5C 002477DC  38 63 D5 A8 */	addi r3, r3, lbl_8052D5A8@l
/* 80251A60 002477E0  88 03 04 14 */	lbz r0, 0x414(r3)
/* 80251A64 002477E4  28 00 00 05 */	cmplwi r0, 5
/* 80251A68 002477E8  41 80 00 18 */	blt lbl_80251A80
/* 80251A6C 002477EC  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 80251A70 002477F0  3C 80 80 48 */	lis r4, lbl_804842C8@ha
/* 80251A74 002477F4  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 80251A78 002477F8  38 84 42 C8 */	addi r4, r4, lbl_804842C8@l
/* 80251A7C 002477FC  4B FD FF 69 */	bl LogMsg_0
lbl_80251A80:
/* 80251A80 00247800  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80251A84 00247804  2C 03 00 00 */	cmpwi r3, 0
/* 80251A88 00247808  41 82 00 1C */	beq lbl_80251AA4
/* 80251A8C 0024780C  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 80251A90 00247810  38 80 00 00 */	li r4, 0
/* 80251A94 00247814  7C 63 02 14 */	add r3, r3, r0
/* 80251A98 00247818  98 83 00 24 */	stb r4, 0x24(r3)
/* 80251A9C 0024781C  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80251AA0 00247820  48 00 4A 45 */	bl rfc_check_mcb_active
lbl_80251AA4:
/* 80251AA4 00247824  7F E3 FB 78 */	mr r3, r31
/* 80251AA8 00247828  48 00 49 E5 */	bl rfc_port_timer_stop
/* 80251AAC 0024782C  7F E3 FB 78 */	mr r3, r31
/* 80251AB0 00247830  38 80 00 00 */	li r4, 0
/* 80251AB4 00247834  38 A0 00 A4 */	li r5, 0xa4
/* 80251AB8 00247838  4B DB 29 85 */	bl func_8000443C
lbl_80251ABC:
/* 80251ABC 0024783C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251AC0 00247840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80251AC4 00247844  7C 08 03 A6 */	mtlr r0
/* 80251AC8 00247848  38 21 00 10 */	addi r1, r1, 0x10
/* 80251ACC 0024784C  4E 80 00 20 */	blr 

.global port_find_mcb_dlci_port
port_find_mcb_dlci_port:
/* 80251AD0 00247850  2C 03 00 00 */	cmpwi r3, 0
/* 80251AD4 00247854  40 82 00 0C */	bne lbl_80251AE0
/* 80251AD8 00247858  38 60 00 00 */	li r3, 0
/* 80251ADC 0024785C  4E 80 00 20 */	blr 
lbl_80251AE0:
/* 80251AE0 00247860  28 04 00 3D */	cmplwi r4, 0x3d
/* 80251AE4 00247864  40 81 00 0C */	ble lbl_80251AF0
/* 80251AE8 00247868  38 60 00 00 */	li r3, 0
/* 80251AEC 0024786C  4E 80 00 20 */	blr 
lbl_80251AF0:
/* 80251AF0 00247870  7C 63 22 14 */	add r3, r3, r4
/* 80251AF4 00247874  88 63 00 24 */	lbz r3, 0x24(r3)
/* 80251AF8 00247878  2C 03 00 00 */	cmpwi r3, 0
/* 80251AFC 0024787C  40 82 00 0C */	bne lbl_80251B08
/* 80251B00 00247880  38 60 00 00 */	li r3, 0
/* 80251B04 00247884  4E 80 00 20 */	blr 
lbl_80251B08:
/* 80251B08 00247888  38 03 FF FF */	addi r0, r3, -1
/* 80251B0C 0024788C  3C 60 80 53 */	lis r3, lbl_8052D5A8@ha
/* 80251B10 00247890  1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 80251B14 00247894  38 63 D5 A8 */	addi r3, r3, lbl_8052D5A8@l
/* 80251B18 00247898  7C 63 02 14 */	add r3, r3, r0
/* 80251B1C 0024789C  38 63 00 68 */	addi r3, r3, 0x68
/* 80251B20 002478A0  4E 80 00 20 */	blr 

.global port_find_dlci_port
port_find_dlci_port:
/* 80251B24 002478A4  3C A0 80 53 */	lis r5, lbl_8052D5A8@ha
/* 80251B28 002478A8  38 00 00 05 */	li r0, 5
/* 80251B2C 002478AC  54 66 07 FE */	clrlwi r6, r3, 0x1f
/* 80251B30 002478B0  38 E3 FF FF */	addi r7, r3, -1
/* 80251B34 002478B4  38 A5 D5 A8 */	addi r5, r5, lbl_8052D5A8@l
/* 80251B38 002478B8  39 00 00 00 */	li r8, 0
/* 80251B3C 002478BC  7C 09 03 A6 */	mtctr r0
lbl_80251B40:
/* 80251B40 002478C0  55 00 04 3E */	clrlwi r0, r8, 0x10
/* 80251B44 002478C4  1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 80251B48 002478C8  7C 85 02 14 */	add r4, r5, r0
/* 80251B4C 002478CC  88 04 00 69 */	lbz r0, 0x69(r4)
/* 80251B50 002478D0  39 24 00 68 */	addi r9, r4, 0x68
/* 80251B54 002478D4  2C 00 00 00 */	cmpwi r0, 0
/* 80251B58 002478D8  41 82 00 44 */	beq lbl_80251B9C
/* 80251B5C 002478DC  80 09 00 6C */	lwz r0, 0x6c(r9)
/* 80251B60 002478E0  2C 00 00 00 */	cmpwi r0, 0
/* 80251B64 002478E4  40 82 00 38 */	bne lbl_80251B9C
/* 80251B68 002478E8  88 89 00 0D */	lbz r4, 0xd(r9)
/* 80251B6C 002478EC  7C 04 18 40 */	cmplw r4, r3
/* 80251B70 002478F0  40 82 00 0C */	bne lbl_80251B7C
/* 80251B74 002478F4  7D 23 4B 78 */	mr r3, r9
/* 80251B78 002478F8  4E 80 00 20 */	blr 
lbl_80251B7C:
/* 80251B7C 002478FC  2C 06 00 00 */	cmpwi r6, 0
/* 80251B80 00247900  41 82 00 1C */	beq lbl_80251B9C
/* 80251B84 00247904  7C 04 38 00 */	cmpw r4, r7
/* 80251B88 00247908  40 82 00 14 */	bne lbl_80251B9C
/* 80251B8C 0024790C  38 04 00 01 */	addi r0, r4, 1
/* 80251B90 00247910  7D 23 4B 78 */	mr r3, r9
/* 80251B94 00247914  98 09 00 0D */	stb r0, 0xd(r9)
/* 80251B98 00247918  4E 80 00 20 */	blr 
lbl_80251B9C:
/* 80251B9C 0024791C  39 08 00 01 */	addi r8, r8, 1
/* 80251BA0 00247920  42 00 FF A0 */	bdnz lbl_80251B40
/* 80251BA4 00247924  38 60 00 00 */	li r3, 0
/* 80251BA8 00247928  4E 80 00 20 */	blr 

.global port_flow_control_user
port_flow_control_user:
/* 80251BAC 0024792C  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80251BB0 00247930  38 A0 00 00 */	li r5, 0
/* 80251BB4 00247934  2C 00 00 00 */	cmpwi r0, 0
/* 80251BB8 00247938  40 82 00 34 */	bne lbl_80251BEC
/* 80251BBC 0024793C  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 80251BC0 00247940  2C 04 00 00 */	cmpwi r4, 0
/* 80251BC4 00247944  41 82 00 28 */	beq lbl_80251BEC
/* 80251BC8 00247948  88 04 00 71 */	lbz r0, 0x71(r4)
/* 80251BCC 0024794C  2C 00 00 00 */	cmpwi r0, 0
/* 80251BD0 00247950  41 82 00 1C */	beq lbl_80251BEC
/* 80251BD4 00247954  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80251BD8 00247958  28 00 1F 40 */	cmplwi r0, 0x1f40
/* 80251BDC 0024795C  41 81 00 10 */	bgt lbl_80251BEC
/* 80251BE0 00247960  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 80251BE4 00247964  28 00 00 10 */	cmplwi r0, 0x10
/* 80251BE8 00247968  40 81 00 08 */	ble lbl_80251BF0
lbl_80251BEC:
/* 80251BEC 0024796C  38 A0 00 01 */	li r5, 1
lbl_80251BF0:
/* 80251BF0 00247970  88 03 00 25 */	lbz r0, 0x25(r3)
/* 80251BF4 00247974  7C 00 28 40 */	cmplw r0, r5
/* 80251BF8 00247978  40 82 00 0C */	bne lbl_80251C04
/* 80251BFC 0024797C  38 60 00 00 */	li r3, 0
/* 80251C00 00247980  4E 80 00 20 */	blr 
lbl_80251C04:
/* 80251C04 00247984  2C 05 00 00 */	cmpwi r5, 0
/* 80251C08 00247988  98 A3 00 25 */	stb r5, 0x25(r3)
/* 80251C0C 0024798C  3C 60 00 03 */	lis r3, 3
/* 80251C10 00247990  4D 82 00 20 */	beqlr 
/* 80251C14 00247994  3C 60 00 01 */	lis r3, 1
/* 80251C18 00247998  4E 80 00 20 */	blr 

.global port_get_signal_changes
port_get_signal_changes:
/* 80251C1C 0024799C  7C A4 22 78 */	xor r4, r5, r4
/* 80251C20 002479A0  38 C0 00 00 */	li r6, 0
/* 80251C24 002479A4  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80251C28 002479A8  41 82 00 14 */	beq lbl_80251C3C
/* 80251C2C 002479AC  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 80251C30 002479B0  60 C6 00 10 */	ori r6, r6, 0x10
/* 80251C34 002479B4  41 82 00 08 */	beq lbl_80251C3C
/* 80251C38 002479B8  60 C6 08 00 */	ori r6, r6, 0x800
lbl_80251C3C:
/* 80251C3C 002479BC  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80251C40 002479C0  41 82 00 14 */	beq lbl_80251C54
/* 80251C44 002479C4  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 80251C48 002479C8  60 C6 00 08 */	ori r6, r6, 8
/* 80251C4C 002479CC  41 82 00 08 */	beq lbl_80251C54
/* 80251C50 002479D0  60 C6 04 00 */	ori r6, r6, 0x400
lbl_80251C54:
/* 80251C54 002479D4  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80251C58 002479D8  41 82 00 08 */	beq lbl_80251C60
/* 80251C5C 002479DC  60 C6 01 00 */	ori r6, r6, 0x100
lbl_80251C60:
/* 80251C60 002479E0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80251C64 002479E4  41 82 00 14 */	beq lbl_80251C78
/* 80251C68 002479E8  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 80251C6C 002479EC  60 C6 00 20 */	ori r6, r6, 0x20
/* 80251C70 002479F0  41 82 00 08 */	beq lbl_80251C78
/* 80251C74 002479F4  60 C6 10 00 */	ori r6, r6, 0x1000
lbl_80251C78:
/* 80251C78 002479F8  80 03 00 88 */	lwz r0, 0x88(r3)
/* 80251C7C 002479FC  7C 03 30 38 */	and r3, r0, r6
/* 80251C80 00247A00  4E 80 00 20 */	blr 

.global port_flow_control_peer
port_flow_control_peer:
/* 80251C84 00247A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80251C88 00247A08  7C 08 02 A6 */	mflr r0
/* 80251C8C 00247A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251C90 00247A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251C94 00247A14  7C 7F 1B 78 */	mr r31, r3
/* 80251C98 00247A18  80 C3 00 6C */	lwz r6, 0x6c(r3)
/* 80251C9C 00247A1C  2C 06 00 00 */	cmpwi r6, 0
/* 80251CA0 00247A20  41 82 01 9C */	beq lbl_80251E3C
/* 80251CA4 00247A24  88 06 00 72 */	lbz r0, 0x72(r6)
/* 80251CA8 00247A28  28 00 00 02 */	cmplwi r0, 2
/* 80251CAC 00247A2C  40 82 00 B0 */	bne lbl_80251D5C
/* 80251CB0 00247A30  2C 04 00 00 */	cmpwi r4, 0
/* 80251CB4 00247A34  41 82 00 74 */	beq lbl_80251D28
/* 80251CB8 00247A38  A0 03 00 9A */	lhz r0, 0x9a(r3)
/* 80251CBC 00247A3C  7C 05 00 40 */	cmplw r5, r0
/* 80251CC0 00247A40  40 81 00 10 */	ble lbl_80251CD0
/* 80251CC4 00247A44  38 00 00 00 */	li r0, 0
/* 80251CC8 00247A48  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 80251CCC 00247A4C  48 00 00 0C */	b lbl_80251CD8
lbl_80251CD0:
/* 80251CD0 00247A50  7C 05 00 50 */	subf r0, r5, r0
/* 80251CD4 00247A54  B0 03 00 9A */	sth r0, 0x9a(r3)
lbl_80251CD8:
/* 80251CD8 00247A58  A0 83 00 9A */	lhz r4, 0x9a(r3)
/* 80251CDC 00247A5C  A0 03 00 9E */	lhz r0, 0x9e(r3)
/* 80251CE0 00247A60  7C 04 00 40 */	cmplw r4, r0
/* 80251CE4 00247A64  41 81 01 58 */	bgt lbl_80251E3C
/* 80251CE8 00247A68  88 03 00 3D */	lbz r0, 0x3d(r3)
/* 80251CEC 00247A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80251CF0 00247A70  40 82 01 4C */	bne lbl_80251E3C
/* 80251CF4 00247A74  A0 03 00 9C */	lhz r0, 0x9c(r3)
/* 80251CF8 00247A78  7C 00 20 40 */	cmplw r0, r4
/* 80251CFC 00247A7C  40 81 01 40 */	ble lbl_80251E3C
/* 80251D00 00247A80  7C 04 00 50 */	subf r0, r4, r0
/* 80251D04 00247A84  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 80251D08 00247A88  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 80251D0C 00247A8C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80251D10 00247A90  48 00 37 75 */	bl rfc_send_credit
/* 80251D14 00247A94  A0 7F 00 9C */	lhz r3, 0x9c(r31)
/* 80251D18 00247A98  38 00 00 00 */	li r0, 0
/* 80251D1C 00247A9C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80251D20 00247AA0  B0 7F 00 9A */	sth r3, 0x9a(r31)
/* 80251D24 00247AA4  48 00 01 18 */	b lbl_80251E3C
lbl_80251D28:
/* 80251D28 00247AA8  80 03 00 94 */	lwz r0, 0x94(r3)
/* 80251D2C 00247AAC  2C 00 00 00 */	cmpwi r0, 0
/* 80251D30 00247AB0  41 82 00 10 */	beq lbl_80251D40
/* 80251D34 00247AB4  38 00 00 01 */	li r0, 1
/* 80251D38 00247AB8  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80251D3C 00247ABC  48 00 01 00 */	b lbl_80251E3C
lbl_80251D40:
/* 80251D40 00247AC0  A0 83 00 38 */	lhz r4, 0x38(r3)
/* 80251D44 00247AC4  A0 03 00 9C */	lhz r0, 0x9c(r3)
/* 80251D48 00247AC8  7C 04 00 40 */	cmplw r4, r0
/* 80251D4C 00247ACC  41 80 00 F0 */	blt lbl_80251E3C
/* 80251D50 00247AD0  38 00 00 01 */	li r0, 1
/* 80251D54 00247AD4  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80251D58 00247AD8  48 00 00 E4 */	b lbl_80251E3C
lbl_80251D5C:
/* 80251D5C 00247ADC  2C 04 00 00 */	cmpwi r4, 0
/* 80251D60 00247AE0  41 82 00 50 */	beq lbl_80251DB0
/* 80251D64 00247AE4  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80251D68 00247AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80251D6C 00247AEC  41 82 00 D0 */	beq lbl_80251E3C
/* 80251D70 00247AF0  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80251D74 00247AF4  28 00 13 88 */	cmplwi r0, 0x1388
/* 80251D78 00247AF8  40 80 00 C4 */	bge lbl_80251E3C
/* 80251D7C 00247AFC  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80251D80 00247B00  28 00 00 08 */	cmplwi r0, 8
/* 80251D84 00247B04  40 80 00 B8 */	bge lbl_80251E3C
/* 80251D88 00247B08  88 03 00 3D */	lbz r0, 0x3d(r3)
/* 80251D8C 00247B0C  38 80 00 00 */	li r4, 0
/* 80251D90 00247B10  98 83 00 3C */	stb r4, 0x3c(r3)
/* 80251D94 00247B14  2C 00 00 00 */	cmpwi r0, 0
/* 80251D98 00247B18  40 82 00 A4 */	bne lbl_80251E3C
/* 80251D9C 00247B1C  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 80251DA0 00247B20  7C C3 33 78 */	mr r3, r6
/* 80251DA4 00247B24  38 A0 00 01 */	li r5, 1
/* 80251DA8 00247B28  48 00 2B 4D */	bl RFCOMM_FlowReq
/* 80251DAC 00247B2C  48 00 00 90 */	b lbl_80251E3C
lbl_80251DB0:
/* 80251DB0 00247B30  80 03 00 94 */	lwz r0, 0x94(r3)
/* 80251DB4 00247B34  2C 00 00 00 */	cmpwi r0, 0
/* 80251DB8 00247B38  41 82 00 20 */	beq lbl_80251DD8
/* 80251DBC 00247B3C  38 00 00 01 */	li r0, 1
/* 80251DC0 00247B40  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 80251DC4 00247B44  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80251DC8 00247B48  7C C3 33 78 */	mr r3, r6
/* 80251DCC 00247B4C  38 A0 00 00 */	li r5, 0
/* 80251DD0 00247B50  48 00 2B 25 */	bl RFCOMM_FlowReq
/* 80251DD4 00247B54  48 00 00 68 */	b lbl_80251E3C
lbl_80251DD8:
/* 80251DD8 00247B58  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80251DDC 00247B5C  28 00 1F 40 */	cmplwi r0, 0x1f40
/* 80251DE0 00247B60  41 81 00 10 */	bgt lbl_80251DF0
/* 80251DE4 00247B64  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80251DE8 00247B68  28 00 00 10 */	cmplwi r0, 0x10
/* 80251DEC 00247B6C  40 81 00 50 */	ble lbl_80251E3C
lbl_80251DF0:
/* 80251DF0 00247B70  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80251DF4 00247B74  2C 00 00 00 */	cmpwi r0, 0
/* 80251DF8 00247B78  40 82 00 44 */	bne lbl_80251E3C
/* 80251DFC 00247B7C  3C 60 80 53 */	lis r3, lbl_8052D5A8@ha
/* 80251E00 00247B80  38 63 D5 A8 */	addi r3, r3, lbl_8052D5A8@l
/* 80251E04 00247B84  88 03 04 14 */	lbz r0, 0x414(r3)
/* 80251E08 00247B88  28 00 00 04 */	cmplwi r0, 4
/* 80251E0C 00247B8C  41 80 00 18 */	blt lbl_80251E24
/* 80251E10 00247B90  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80251E14 00247B94  3C 80 80 48 */	lis r4, lbl_804842E0@ha
/* 80251E18 00247B98  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80251E1C 00247B9C  38 84 42 E0 */	addi r4, r4, lbl_804842E0@l
/* 80251E20 00247BA0  4B FD FB C5 */	bl LogMsg_0
lbl_80251E24:
/* 80251E24 00247BA4  38 00 00 01 */	li r0, 1
/* 80251E28 00247BA8  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80251E2C 00247BAC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80251E30 00247BB0  38 A0 00 00 */	li r5, 0
/* 80251E34 00247BB4  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 80251E38 00247BB8  48 00 2A BD */	bl RFCOMM_FlowReq
lbl_80251E3C:
/* 80251E3C 00247BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251E40 00247BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80251E44 00247BC4  7C 08 03 A6 */	mtlr r0
/* 80251E48 00247BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80251E4C 00247BCC  4E 80 00 20 */	blr 

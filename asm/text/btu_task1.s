.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global btu_task_init
btu_task_init:
/* 80231BE4 00227964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80231BE8 00227968  7C 08 02 A6 */	mflr r0
/* 80231BEC 0022796C  38 60 00 01 */	li r3, 1
/* 80231BF0 00227970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80231BF4 00227974  38 00 00 00 */	li r0, 0
/* 80231BF8 00227978  98 6D A9 C8 */	stb r3, lbl_8059EDE8-_SDA_BASE_(r13)
/* 80231BFC 0022797C  90 6D A9 CC */	stw r3, lbl_8059EDEC-_SDA_BASE_(r13)
/* 80231C00 00227980  90 0D C9 08 */	stw r0, lbl_805A0D28-_SDA_BASE_(r13)
/* 80231C04 00227984  90 0D C9 0C */	stw r0, lbl_805A0D2C-_SDA_BASE_(r13)
/* 80231C08 00227988  48 01 19 A5 */	bl btu_init_core
/* 80231C0C 0022798C  4B FF FC F1 */	bl BTE_InitStack
/* 80231C10 00227990  48 00 07 4D */	bl bta_sys_init
/* 80231C14 00227994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80231C18 00227998  7C 08 03 A6 */	mtlr r0
/* 80231C1C 0022799C  38 21 00 10 */	addi r1, r1, 0x10
/* 80231C20 002279A0  4E 80 00 20 */	blr 

.global btu_task_msg_handler
btu_task_msg_handler:
/* 80231C24 002279A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80231C28 002279A8  7C 08 02 A6 */	mflr r0
/* 80231C2C 002279AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80231C30 002279B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80231C34 002279B4  48 1B F6 E9 */	bl _savegpr_26
/* 80231C38 002279B8  3B C0 00 00 */	li r30, 0
/* 80231C3C 002279BC  4B FA FE F9 */	bl OSGetTime
/* 80231C40 002279C0  80 6D C9 08 */	lwz r3, lbl_805A0D28-_SDA_BASE_(r13)
/* 80231C44 002279C4  38 03 00 01 */	addi r0, r3, 1
/* 80231C48 002279C8  90 0D C9 08 */	stw r0, lbl_805A0D28-_SDA_BASE_(r13)
/* 80231C4C 002279CC  4B FF E8 E1 */	bl GKI_disable
/* 80231C50 002279D0  80 0D A9 CC */	lwz r0, lbl_8059EDEC-_SDA_BASE_(r13)
/* 80231C54 002279D4  2C 00 00 00 */	cmpwi r0, 0
/* 80231C58 002279D8  41 82 00 18 */	beq lbl_80231C70
/* 80231C5C 002279DC  38 60 00 00 */	li r3, 0
/* 80231C60 002279E0  38 00 00 01 */	li r0, 1
/* 80231C64 002279E4  90 6D A9 CC */	stw r3, lbl_8059EDEC-_SDA_BASE_(r13)
/* 80231C68 002279E8  98 0D A9 C8 */	stb r0, lbl_8059EDE8-_SDA_BASE_(r13)
/* 80231C6C 002279EC  48 00 00 18 */	b lbl_80231C84
lbl_80231C70:
/* 80231C70 002279F0  88 6D A9 C8 */	lbz r3, lbl_8059EDE8-_SDA_BASE_(r13)
/* 80231C74 002279F4  38 03 00 01 */	addi r0, r3, 1
/* 80231C78 002279F8  98 0D A9 C8 */	stb r0, lbl_8059EDE8-_SDA_BASE_(r13)
/* 80231C7C 002279FC  4B FF E8 8D */	bl GKI_enable
/* 80231C80 00227A00  48 00 03 18 */	b lbl_80231F98
lbl_80231C84:
/* 80231C84 00227A04  4B FF E8 85 */	bl GKI_enable
/* 80231C88 00227A08  80 6D C9 0C */	lwz r3, lbl_805A0D2C-_SDA_BASE_(r13)
/* 80231C8C 00227A0C  3B E0 00 05 */	li r31, 5
/* 80231C90 00227A10  80 8D C9 08 */	lwz r4, lbl_805A0D28-_SDA_BASE_(r13)
/* 80231C94 00227A14  38 03 01 F4 */	addi r0, r3, 0x1f4
/* 80231C98 00227A18  7C 04 00 40 */	cmplw r4, r0
/* 80231C9C 00227A1C  40 81 00 0C */	ble lbl_80231CA8
/* 80231CA0 00227A20  90 8D C9 0C */	stw r4, lbl_805A0D2C-_SDA_BASE_(r13)
/* 80231CA4 00227A24  63 FF 00 30 */	ori r31, r31, 0x30
lbl_80231CA8:
/* 80231CA8 00227A28  3C 60 80 53 */	lis r3, lbl_805297D0@ha
/* 80231CAC 00227A2C  3B A3 97 D0 */	addi r29, r3, lbl_805297D0@l
/* 80231CB0 00227A30  48 00 02 D8 */	b lbl_80231F88
lbl_80231CB4:
/* 80231CB4 00227A34  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 80231CB8 00227A38  3B C0 00 01 */	li r30, 1
/* 80231CBC 00227A3C  41 82 01 10 */	beq lbl_80231DCC
/* 80231CC0 00227A40  48 00 00 F8 */	b lbl_80231DB8
lbl_80231CC4:
/* 80231CC4 00227A44  A0 03 00 00 */	lhz r0, 0(r3)
/* 80231CC8 00227A48  3B C0 00 00 */	li r30, 0
/* 80231CCC 00227A4C  54 1C 04 2E */	rlwinm r28, r0, 0, 0x10, 0x17
/* 80231CD0 00227A50  2C 1C 12 00 */	cmpwi r28, 0x1200
/* 80231CD4 00227A54  41 82 00 50 */	beq lbl_80231D24
/* 80231CD8 00227A58  40 80 00 1C */	bge lbl_80231CF4
/* 80231CDC 00227A5C  2C 1C 11 00 */	cmpwi r28, 0x1100
/* 80231CE0 00227A60  41 82 00 2C */	beq lbl_80231D0C
/* 80231CE4 00227A64  40 80 00 6C */	bge lbl_80231D50
/* 80231CE8 00227A68  2C 1C 10 00 */	cmpwi r28, 0x1000
/* 80231CEC 00227A6C  41 82 00 44 */	beq lbl_80231D30
/* 80231CF0 00227A70  48 00 00 60 */	b lbl_80231D50
lbl_80231CF4:
/* 80231CF4 00227A74  2C 1C 19 00 */	cmpwi r28, 0x1900
/* 80231CF8 00227A78  41 82 00 20 */	beq lbl_80231D18
/* 80231CFC 00227A7C  40 80 00 54 */	bge lbl_80231D50
/* 80231D00 00227A80  2C 1C 16 00 */	cmpwi r28, 0x1600
/* 80231D04 00227A84  41 82 00 40 */	beq lbl_80231D44
/* 80231D08 00227A88  48 00 00 48 */	b lbl_80231D50
lbl_80231D0C:
/* 80231D0C 00227A8C  7F 63 DB 78 */	mr r3, r27
/* 80231D10 00227A90  48 01 B9 3D */	bl l2c_rcv_acl_data
/* 80231D14 00227A94  48 00 00 A4 */	b lbl_80231DB8
lbl_80231D18:
/* 80231D18 00227A98  7F 63 DB 78 */	mr r3, r27
/* 80231D1C 00227A9C  48 01 B6 FD */	bl l2c_link_segments_xmitted
/* 80231D20 00227AA0  48 00 00 98 */	b lbl_80231DB8
lbl_80231D24:
/* 80231D24 00227AA4  7F 63 DB 78 */	mr r3, r27
/* 80231D28 00227AA8  48 00 D2 5D */	bl btm_route_sco_data
/* 80231D2C 00227AAC  48 00 00 8C */	b lbl_80231DB8
lbl_80231D30:
/* 80231D30 00227AB0  7F 63 DB 78 */	mr r3, r27
/* 80231D34 00227AB4  48 01 06 1D */	bl btu_hcif_process_event
/* 80231D38 00227AB8  7F 63 DB 78 */	mr r3, r27
/* 80231D3C 00227ABC  4B FF D3 A5 */	bl GKI_freebuf
/* 80231D40 00227AC0  48 00 00 78 */	b lbl_80231DB8
lbl_80231D44:
/* 80231D44 00227AC4  7F 63 DB 78 */	mr r3, r27
/* 80231D48 00227AC8  48 01 0B C1 */	bl btu_hcif_send_cmd
/* 80231D4C 00227ACC  48 00 00 6C */	b lbl_80231DB8
lbl_80231D50:
/* 80231D50 00227AD0  3B 40 00 00 */	li r26, 0
/* 80231D54 00227AD4  38 80 00 00 */	li r4, 0
/* 80231D58 00227AD8  48 00 00 3C */	b lbl_80231D94
lbl_80231D5C:
/* 80231D5C 00227ADC  57 40 1D 78 */	rlwinm r0, r26, 3, 0x15, 0x1c
/* 80231D60 00227AE0  7C 7D 02 14 */	add r3, r29, r0
/* 80231D64 00227AE4  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80231D68 00227AE8  2C 8C 00 00 */	cmpwi cr1, r12, 0
/* 80231D6C 00227AEC  41 86 00 24 */	beq cr1, lbl_80231D90
/* 80231D70 00227AF0  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 80231D74 00227AF4  7C 1C 00 40 */	cmplw r28, r0
/* 80231D78 00227AF8  40 82 00 18 */	bne lbl_80231D90
/* 80231D7C 00227AFC  41 86 00 14 */	beq cr1, lbl_80231D90
/* 80231D80 00227B00  7F 63 DB 78 */	mr r3, r27
/* 80231D84 00227B04  7D 89 03 A6 */	mtctr r12
/* 80231D88 00227B08  4E 80 04 21 */	bctrl 
/* 80231D8C 00227B0C  38 80 00 01 */	li r4, 1
lbl_80231D90:
/* 80231D90 00227B10  3B 5A 00 01 */	addi r26, r26, 1
lbl_80231D94:
/* 80231D94 00227B14  2C 04 00 00 */	cmpwi r4, 0
/* 80231D98 00227B18  40 82 00 10 */	bne lbl_80231DA8
/* 80231D9C 00227B1C  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80231DA0 00227B20  28 00 00 06 */	cmplwi r0, 6
/* 80231DA4 00227B24  41 80 FF B8 */	blt lbl_80231D5C
lbl_80231DA8:
/* 80231DA8 00227B28  2C 04 00 00 */	cmpwi r4, 0
/* 80231DAC 00227B2C  40 82 00 0C */	bne lbl_80231DB8
/* 80231DB0 00227B30  7F 63 DB 78 */	mr r3, r27
/* 80231DB4 00227B34  4B FF D3 2D */	bl GKI_freebuf
lbl_80231DB8:
/* 80231DB8 00227B38  38 60 00 00 */	li r3, 0
/* 80231DBC 00227B3C  4B FF D6 95 */	bl GKI_read_mbox
/* 80231DC0 00227B40  2C 03 00 00 */	cmpwi r3, 0
/* 80231DC4 00227B44  7C 7B 1B 78 */	mr r27, r3
/* 80231DC8 00227B48  40 82 FE FC */	bne lbl_80231CC4
lbl_80231DCC:
/* 80231DCC 00227B4C  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80231DD0 00227B50  41 82 01 78 */	beq lbl_80231F48
/* 80231DD4 00227B54  38 7D 00 40 */	addi r3, r29, 0x40
/* 80231DD8 00227B58  38 80 00 01 */	li r4, 1
/* 80231DDC 00227B5C  4B FF E2 9D */	bl GKI_update_timer_list
/* 80231DE0 00227B60  57 E0 07 34 */	rlwinm r0, r31, 0, 0x1c, 0x1a
/* 80231DE4 00227B64  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 80231DE8 00227B68  48 00 01 48 */	b lbl_80231F30
lbl_80231DEC:
/* 80231DEC 00227B6C  7F 84 E3 78 */	mr r4, r28
/* 80231DF0 00227B70  38 7D 00 40 */	addi r3, r29, 0x40
/* 80231DF4 00227B74  3B C0 00 00 */	li r30, 0
/* 80231DF8 00227B78  4B FF E3 F9 */	bl GKI_remove_from_timer_list
/* 80231DFC 00227B7C  A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 80231E00 00227B80  2C 00 00 0A */	cmpwi r0, 0xa
/* 80231E04 00227B84  41 82 00 94 */	beq lbl_80231E98
/* 80231E08 00227B88  40 80 00 30 */	bge lbl_80231E38
/* 80231E0C 00227B8C  2C 00 00 05 */	cmpwi r0, 5
/* 80231E10 00227B90  41 82 00 7C */	beq lbl_80231E8C
/* 80231E14 00227B94  40 80 00 14 */	bge lbl_80231E28
/* 80231E18 00227B98  2C 00 00 01 */	cmpwi r0, 1
/* 80231E1C 00227B9C  41 82 00 4C */	beq lbl_80231E68
/* 80231E20 00227BA0  40 80 00 60 */	bge lbl_80231E80
/* 80231E24 00227BA4  48 00 00 B8 */	b lbl_80231EDC
lbl_80231E28:
/* 80231E28 00227BA8  2C 00 00 08 */	cmpwi r0, 8
/* 80231E2C 00227BAC  41 82 00 74 */	beq lbl_80231EA0
/* 80231E30 00227BB0  40 80 00 44 */	bge lbl_80231E74
/* 80231E34 00227BB4  48 00 00 A8 */	b lbl_80231EDC
lbl_80231E38:
/* 80231E38 00227BB8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80231E3C 00227BBC  41 82 00 78 */	beq lbl_80231EB4
/* 80231E40 00227BC0  40 80 00 1C */	bge lbl_80231E5C
/* 80231E44 00227BC4  2C 00 00 16 */	cmpwi r0, 0x16
/* 80231E48 00227BC8  41 82 00 80 */	beq lbl_80231EC8
/* 80231E4C 00227BCC  40 80 00 90 */	bge lbl_80231EDC
/* 80231E50 00227BD0  2C 00 00 0D */	cmpwi r0, 0xd
/* 80231E54 00227BD4  40 80 00 88 */	bge lbl_80231EDC
/* 80231E58 00227BD8  48 00 00 50 */	b lbl_80231EA8
lbl_80231E5C:
/* 80231E5C 00227BDC  2C 00 00 42 */	cmpwi r0, 0x42
/* 80231E60 00227BE0  41 82 00 5C */	beq lbl_80231EBC
/* 80231E64 00227BE4  48 00 00 78 */	b lbl_80231EDC
lbl_80231E68:
/* 80231E68 00227BE8  7F 83 E3 78 */	mr r3, r28
/* 80231E6C 00227BEC  48 00 88 45 */	bl btm_dev_timeout
/* 80231E70 00227BF0  48 00 00 C0 */	b lbl_80231F30
lbl_80231E74:
/* 80231E74 00227BF4  7F 83 E3 78 */	mr r3, r28
/* 80231E78 00227BF8  48 00 73 2D */	bl btm_acl_timeout
/* 80231E7C 00227BFC  48 00 00 B4 */	b lbl_80231F30
lbl_80231E80:
/* 80231E80 00227C00  7F 83 E3 78 */	mr r3, r28
/* 80231E84 00227C04  48 01 C5 69 */	bl l2c_process_timeout
/* 80231E88 00227C08  48 00 00 A8 */	b lbl_80231F30
lbl_80231E8C:
/* 80231E8C 00227C0C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 80231E90 00227C10  48 02 82 BD */	bl sdp_conn_timeout
/* 80231E94 00227C14  48 00 00 9C */	b lbl_80231F30
lbl_80231E98:
/* 80231E98 00227C18  48 00 B9 8D */	bl btm_inq_rmt_name_failed
/* 80231E9C 00227C1C  48 00 00 94 */	b lbl_80231F30
lbl_80231EA0:
/* 80231EA0 00227C20  48 00 9F 29 */	bl btm_discovery_timeout
/* 80231EA4 00227C24  48 00 00 8C */	b lbl_80231F30
lbl_80231EA8:
/* 80231EA8 00227C28  7F 83 E3 78 */	mr r3, r28
/* 80231EAC 00227C2C  48 02 46 FD */	bl rfcomm_process_timeout
/* 80231EB0 00227C30  48 00 00 80 */	b lbl_80231F30
lbl_80231EB4:
/* 80231EB4 00227C34  48 01 14 C1 */	bl btu_hcif_cmd_timeout
/* 80231EB8 00227C38  48 00 00 78 */	b lbl_80231F30
lbl_80231EBC:
/* 80231EBC 00227C3C  7F 83 E3 78 */	mr r3, r28
/* 80231EC0 00227C40  48 01 69 89 */	bl hidh_proc_repage_timeout
/* 80231EC4 00227C44  48 00 00 6C */	b lbl_80231F30
lbl_80231EC8:
/* 80231EC8 00227C48  81 9C 00 10 */	lwz r12, 0x10(r28)
/* 80231ECC 00227C4C  7F 83 E3 78 */	mr r3, r28
/* 80231ED0 00227C50  7D 89 03 A6 */	mtctr r12
/* 80231ED4 00227C54  4E 80 04 21 */	bctrl 
/* 80231ED8 00227C58  48 00 00 58 */	b lbl_80231F30
lbl_80231EDC:
/* 80231EDC 00227C5C  3B 60 00 00 */	li r27, 0
/* 80231EE0 00227C60  38 80 00 00 */	li r4, 0
/* 80231EE4 00227C64  48 00 00 38 */	b lbl_80231F1C
lbl_80231EE8:
/* 80231EE8 00227C68  57 60 1D 78 */	rlwinm r0, r27, 3, 0x15, 0x1c
/* 80231EEC 00227C6C  7C 7D 02 14 */	add r3, r29, r0
/* 80231EF0 00227C70  81 83 00 04 */	lwz r12, 4(r3)
/* 80231EF4 00227C74  2C 0C 00 00 */	cmpwi r12, 0
/* 80231EF8 00227C78  41 82 00 20 */	beq lbl_80231F18
/* 80231EFC 00227C7C  80 03 00 00 */	lwz r0, 0(r3)
/* 80231F00 00227C80  7C 00 E0 40 */	cmplw r0, r28
/* 80231F04 00227C84  40 82 00 14 */	bne lbl_80231F18
/* 80231F08 00227C88  7F 83 E3 78 */	mr r3, r28
/* 80231F0C 00227C8C  7D 89 03 A6 */	mtctr r12
/* 80231F10 00227C90  4E 80 04 21 */	bctrl 
/* 80231F14 00227C94  38 80 00 01 */	li r4, 1
lbl_80231F18:
/* 80231F18 00227C98  3B 7B 00 01 */	addi r27, r27, 1
lbl_80231F1C:
/* 80231F1C 00227C9C  2C 04 00 00 */	cmpwi r4, 0
/* 80231F20 00227CA0  40 82 00 10 */	bne lbl_80231F30
/* 80231F24 00227CA4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80231F28 00227CA8  28 00 00 02 */	cmplwi r0, 2
/* 80231F2C 00227CAC  41 80 FF BC */	blt lbl_80231EE8
lbl_80231F30:
/* 80231F30 00227CB0  83 9D 00 40 */	lwz r28, 0x40(r29)
/* 80231F34 00227CB4  2C 1C 00 00 */	cmpwi r28, 0
/* 80231F38 00227CB8  41 82 00 10 */	beq lbl_80231F48
/* 80231F3C 00227CBC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80231F40 00227CC0  2C 00 00 00 */	cmpwi r0, 0
/* 80231F44 00227CC4  41 82 FE A8 */	beq lbl_80231DEC
lbl_80231F48:
/* 80231F48 00227CC8  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 80231F4C 00227CCC  41 82 00 20 */	beq lbl_80231F6C
/* 80231F50 00227CD0  48 00 00 0C */	b lbl_80231F5C
lbl_80231F54:
/* 80231F54 00227CD4  3B C0 00 00 */	li r30, 0
/* 80231F58 00227CD8  48 00 04 69 */	bl bta_sys_event
lbl_80231F5C:
/* 80231F5C 00227CDC  38 60 00 02 */	li r3, 2
/* 80231F60 00227CE0  4B FF D4 F1 */	bl GKI_read_mbox
/* 80231F64 00227CE4  2C 03 00 00 */	cmpwi r3, 0
/* 80231F68 00227CE8  40 82 FF EC */	bne lbl_80231F54
lbl_80231F6C:
/* 80231F6C 00227CEC  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80231F70 00227CF0  41 82 00 10 */	beq lbl_80231F80
/* 80231F74 00227CF4  57 E0 06 F2 */	rlwinm r0, r31, 0, 0x1b, 0x19
/* 80231F78 00227CF8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 80231F7C 00227CFC  48 00 05 31 */	bl bta_sys_timer_update
lbl_80231F80:
/* 80231F80 00227D00  57 E0 04 21 */	rlwinm. r0, r31, 0, 0x10, 0x10
/* 80231F84 00227D04  40 82 00 0C */	bne lbl_80231F90
lbl_80231F88:
/* 80231F88 00227D08  2C 1E 00 00 */	cmpwi r30, 0
/* 80231F8C 00227D0C  41 82 FD 28 */	beq lbl_80231CB4
lbl_80231F90:
/* 80231F90 00227D10  38 00 00 01 */	li r0, 1
/* 80231F94 00227D14  90 0D A9 CC */	stw r0, lbl_8059EDEC-_SDA_BASE_(r13)
lbl_80231F98:
/* 80231F98 00227D18  39 61 00 20 */	addi r11, r1, 0x20
/* 80231F9C 00227D1C  48 1B F3 CD */	bl _restgpr_26
/* 80231FA0 00227D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80231FA4 00227D24  7C 08 03 A6 */	mtlr r0
/* 80231FA8 00227D28  38 21 00 20 */	addi r1, r1, 0x20
/* 80231FAC 00227D2C  4E 80 00 20 */	blr 

.global btu_start_timer
btu_start_timer:
/* 80231FB0 00227D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80231FB4 00227D34  7C 08 02 A6 */	mflr r0
/* 80231FB8 00227D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80231FBC 00227D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80231FC0 00227D40  3F E0 80 53 */	lis r31, lbl_805297D0@ha
/* 80231FC4 00227D44  3B FF 97 D0 */	addi r31, r31, lbl_805297D0@l
/* 80231FC8 00227D48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80231FCC 00227D4C  7C BE 2B 78 */	mr r30, r5
/* 80231FD0 00227D50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80231FD4 00227D54  7C 9D 23 78 */	mr r29, r4
/* 80231FD8 00227D58  93 81 00 10 */	stw r28, 0x10(r1)
/* 80231FDC 00227D5C  7C 7C 1B 78 */	mr r28, r3
/* 80231FE0 00227D60  7F 84 E3 78 */	mr r4, r28
/* 80231FE4 00227D64  38 7F 00 40 */	addi r3, r31, 0x40
/* 80231FE8 00227D68  4B FF E2 09 */	bl GKI_remove_from_timer_list
/* 80231FEC 00227D6C  B3 BC 00 14 */	sth r29, 0x14(r28)
/* 80231FF0 00227D70  7F 84 E3 78 */	mr r4, r28
/* 80231FF4 00227D74  38 7F 00 40 */	addi r3, r31, 0x40
/* 80231FF8 00227D78  93 DC 00 0C */	stw r30, 0xc(r28)
/* 80231FFC 00227D7C  4B FF E1 09 */	bl GKI_add_to_timer_list
/* 80232000 00227D80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80232004 00227D84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80232008 00227D88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023200C 00227D8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80232010 00227D90  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80232014 00227D94  7C 08 03 A6 */	mtlr r0
/* 80232018 00227D98  38 21 00 20 */	addi r1, r1, 0x20
/* 8023201C 00227D9C  4E 80 00 20 */	blr 

.global btu_stop_timer
btu_stop_timer:
/* 80232020 00227DA0  3C A0 80 53 */	lis r5, lbl_805297D0@ha
/* 80232024 00227DA4  7C 64 1B 78 */	mr r4, r3
/* 80232028 00227DA8  38 A5 97 D0 */	addi r5, r5, lbl_805297D0@l
/* 8023202C 00227DAC  38 65 00 40 */	addi r3, r5, 0x40
/* 80232030 00227DB0  4B FF E1 C0 */	b GKI_remove_from_timer_list


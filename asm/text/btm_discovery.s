.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global btm_discovery_db_init
btm_discovery_db_init:
/* 8023BC98 00231A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023BC9C 00231A1C  7C 08 02 A6 */	mflr r0
/* 8023BCA0 00231A20  38 80 00 00 */	li r4, 0
/* 8023BCA4 00231A24  38 A0 10 20 */	li r5, 0x1020
/* 8023BCA8 00231A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023BCAC 00231A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023BCB0 00231A30  3F E0 80 53 */	lis r31, lbl_80529CF8@ha
/* 8023BCB4 00231A34  3B FF 9C F8 */	addi r31, r31, lbl_80529CF8@l
/* 8023BCB8 00231A38  38 1F 06 D4 */	addi r0, r31, 0x6d4
/* 8023BCBC 00231A3C  90 1F 16 78 */	stw r0, 0x1678(r31)
/* 8023BCC0 00231A40  38 7F 06 58 */	addi r3, r31, 0x658
/* 8023BCC4 00231A44  4B DC 87 79 */	bl func_8000443C
/* 8023BCC8 00231A48  38 60 00 01 */	li r3, 1
/* 8023BCCC 00231A4C  38 80 00 02 */	li r4, 2
/* 8023BCD0 00231A50  38 00 10 02 */	li r0, 0x1002
/* 8023BCD4 00231A54  B0 7F 06 70 */	sth r3, 0x670(r31)
/* 8023BCD8 00231A58  80 7F 16 78 */	lwz r3, 0x1678(r31)
/* 8023BCDC 00231A5C  38 DF 06 74 */	addi r6, r31, 0x674
/* 8023BCE0 00231A60  B0 9F 06 74 */	sth r4, 0x674(r31)
/* 8023BCE4 00231A64  38 80 0F A0 */	li r4, 0xfa0
/* 8023BCE8 00231A68  38 A0 00 01 */	li r5, 1
/* 8023BCEC 00231A6C  38 E0 00 00 */	li r7, 0
/* 8023BCF0 00231A70  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 8023BCF4 00231A74  39 00 00 00 */	li r8, 0
/* 8023BCF8 00231A78  48 01 AB C5 */	bl SDP_InitDiscoveryDb
/* 8023BCFC 00231A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023BD00 00231A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023BD04 00231A84  7C 08 03 A6 */	mtlr r0
/* 8023BD08 00231A88  38 21 00 10 */	addi r1, r1, 0x10
/* 8023BD0C 00231A8C  4E 80 00 20 */	blr 

.global btm_discovery_db_reset
btm_discovery_db_reset:
/* 8023BD10 00231A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023BD14 00231A94  7C 08 02 A6 */	mflr r0
/* 8023BD18 00231A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023BD1C 00231A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023BD20 00231AA0  3F E0 80 53 */	lis r31, lbl_80529CF8@ha
/* 8023BD24 00231AA4  3B FF 9C F8 */	addi r31, r31, lbl_80529CF8@l
/* 8023BD28 00231AA8  38 7F 06 58 */	addi r3, r31, 0x658
/* 8023BD2C 00231AAC  4B FF 62 F5 */	bl btu_stop_timer
/* 8023BD30 00231AB0  88 1F 16 74 */	lbz r0, 0x1674(r31)
/* 8023BD34 00231AB4  2C 00 00 00 */	cmpwi r0, 0
/* 8023BD38 00231AB8  41 82 00 28 */	beq lbl_8023BD60
/* 8023BD3C 00231ABC  81 9F 06 D0 */	lwz r12, 0x6d0(r31)
/* 8023BD40 00231AC0  38 00 00 00 */	li r0, 0
/* 8023BD44 00231AC4  98 1F 16 74 */	stb r0, 0x1674(r31)
/* 8023BD48 00231AC8  2C 0C 00 00 */	cmpwi r12, 0
/* 8023BD4C 00231ACC  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 8023BD50 00231AD0  41 82 00 10 */	beq lbl_8023BD60
/* 8023BD54 00231AD4  38 60 00 00 */	li r3, 0
/* 8023BD58 00231AD8  7D 89 03 A6 */	mtctr r12
/* 8023BD5C 00231ADC  4E 80 04 21 */	bctrl 
lbl_8023BD60:
/* 8023BD60 00231AE0  3F E0 80 53 */	lis r31, lbl_80529CF8@ha
/* 8023BD64 00231AE4  38 80 00 00 */	li r4, 0
/* 8023BD68 00231AE8  3B FF 9C F8 */	addi r31, r31, lbl_80529CF8@l
/* 8023BD6C 00231AEC  38 A0 10 20 */	li r5, 0x1020
/* 8023BD70 00231AF0  38 1F 06 D4 */	addi r0, r31, 0x6d4
/* 8023BD74 00231AF4  90 1F 16 78 */	stw r0, 0x1678(r31)
/* 8023BD78 00231AF8  38 7F 06 58 */	addi r3, r31, 0x658
/* 8023BD7C 00231AFC  4B DC 86 C1 */	bl func_8000443C
/* 8023BD80 00231B00  38 60 00 01 */	li r3, 1
/* 8023BD84 00231B04  38 80 00 02 */	li r4, 2
/* 8023BD88 00231B08  38 00 10 02 */	li r0, 0x1002
/* 8023BD8C 00231B0C  B0 7F 06 70 */	sth r3, 0x670(r31)
/* 8023BD90 00231B10  80 7F 16 78 */	lwz r3, 0x1678(r31)
/* 8023BD94 00231B14  38 DF 06 74 */	addi r6, r31, 0x674
/* 8023BD98 00231B18  B0 9F 06 74 */	sth r4, 0x674(r31)
/* 8023BD9C 00231B1C  38 80 0F A0 */	li r4, 0xfa0
/* 8023BDA0 00231B20  38 A0 00 01 */	li r5, 1
/* 8023BDA4 00231B24  38 E0 00 00 */	li r7, 0
/* 8023BDA8 00231B28  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 8023BDAC 00231B2C  39 00 00 00 */	li r8, 0
/* 8023BDB0 00231B30  48 01 AB 0D */	bl SDP_InitDiscoveryDb
/* 8023BDB4 00231B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023BDB8 00231B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023BDBC 00231B3C  7C 08 03 A6 */	mtlr r0
/* 8023BDC0 00231B40  38 21 00 10 */	addi r1, r1, 0x10
/* 8023BDC4 00231B44  4E 80 00 20 */	blr 

.global btm_discovery_timeout
btm_discovery_timeout:
/* 8023BDC8 00231B48  4E 80 00 20 */	blr 


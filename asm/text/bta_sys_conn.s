.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global bta_sys_rm_register
bta_sys_rm_register:
/* 80232108 00227E88  3C 80 80 53 */	lis r4, lbl_80529858@ha
/* 8023210C 00227E8C  38 84 98 58 */	addi r4, r4, lbl_80529858@l
/* 80232110 00227E90  90 64 00 80 */	stw r3, 0x80(r4)
/* 80232114 00227E94  4E 80 00 20 */	blr 

.global bta_sys_compress_register
bta_sys_compress_register:
/* 80232118 00227E98  3C 80 80 53 */	lis r4, lbl_80529858@ha
/* 8023211C 00227E9C  38 84 98 58 */	addi r4, r4, lbl_80529858@l
/* 80232120 00227EA0  90 64 00 88 */	stw r3, 0x88(r4)
/* 80232124 00227EA4  4E 80 00 20 */	blr 

.global bta_sys_pm_register
bta_sys_pm_register:
/* 80232128 00227EA8  3C 80 80 53 */	lis r4, lbl_80529858@ha
/* 8023212C 00227EAC  38 84 98 58 */	addi r4, r4, lbl_80529858@l
/* 80232130 00227EB0  90 64 00 84 */	stw r3, 0x84(r4)
/* 80232134 00227EB4  4E 80 00 20 */	blr 

.global bta_sys_conn_open
bta_sys_conn_open:
/* 80232138 00227EB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023213C 00227EBC  7C 08 02 A6 */	mflr r0
/* 80232140 00227EC0  3C C0 80 53 */	lis r6, lbl_80529858@ha
/* 80232144 00227EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80232148 00227EC8  38 C6 98 58 */	addi r6, r6, lbl_80529858@l
/* 8023214C 00227ECC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80232150 00227ED0  7C BF 2B 78 */	mr r31, r5
/* 80232154 00227ED4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80232158 00227ED8  7C 9E 23 78 */	mr r30, r4
/* 8023215C 00227EDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80232160 00227EE0  7C 7D 1B 78 */	mr r29, r3
/* 80232164 00227EE4  81 86 00 80 */	lwz r12, 0x80(r6)
/* 80232168 00227EE8  2C 0C 00 00 */	cmpwi r12, 0
/* 8023216C 00227EEC  41 82 00 1C */	beq lbl_80232188
/* 80232170 00227EF0  7F A4 EB 78 */	mr r4, r29
/* 80232174 00227EF4  7F C5 F3 78 */	mr r5, r30
/* 80232178 00227EF8  7F E6 FB 78 */	mr r6, r31
/* 8023217C 00227EFC  38 60 00 00 */	li r3, 0
/* 80232180 00227F00  7D 89 03 A6 */	mtctr r12
/* 80232184 00227F04  4E 80 04 21 */	bctrl 
lbl_80232188:
/* 80232188 00227F08  3C 60 80 53 */	lis r3, lbl_80529858@ha
/* 8023218C 00227F0C  38 63 98 58 */	addi r3, r3, lbl_80529858@l
/* 80232190 00227F10  81 83 00 84 */	lwz r12, 0x84(r3)
/* 80232194 00227F14  2C 0C 00 00 */	cmpwi r12, 0
/* 80232198 00227F18  41 82 00 1C */	beq lbl_802321B4
/* 8023219C 00227F1C  7F A4 EB 78 */	mr r4, r29
/* 802321A0 00227F20  7F C5 F3 78 */	mr r5, r30
/* 802321A4 00227F24  7F E6 FB 78 */	mr r6, r31
/* 802321A8 00227F28  38 60 00 00 */	li r3, 0
/* 802321AC 00227F2C  7D 89 03 A6 */	mtctr r12
/* 802321B0 00227F30  4E 80 04 21 */	bctrl 
lbl_802321B4:
/* 802321B4 00227F34  3C 60 80 53 */	lis r3, lbl_80529858@ha
/* 802321B8 00227F38  38 63 98 58 */	addi r3, r3, lbl_80529858@l
/* 802321BC 00227F3C  81 83 00 88 */	lwz r12, 0x88(r3)
/* 802321C0 00227F40  2C 0C 00 00 */	cmpwi r12, 0
/* 802321C4 00227F44  41 82 00 1C */	beq lbl_802321E0
/* 802321C8 00227F48  7F A4 EB 78 */	mr r4, r29
/* 802321CC 00227F4C  7F C5 F3 78 */	mr r5, r30
/* 802321D0 00227F50  7F E6 FB 78 */	mr r6, r31
/* 802321D4 00227F54  38 60 00 00 */	li r3, 0
/* 802321D8 00227F58  7D 89 03 A6 */	mtctr r12
/* 802321DC 00227F5C  4E 80 04 21 */	bctrl 
lbl_802321E0:
/* 802321E0 00227F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802321E4 00227F64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802321E8 00227F68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802321EC 00227F6C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802321F0 00227F70  7C 08 03 A6 */	mtlr r0
/* 802321F4 00227F74  38 21 00 20 */	addi r1, r1, 0x20
/* 802321F8 00227F78  4E 80 00 20 */	blr 

.global bta_sys_conn_close
bta_sys_conn_close:
/* 802321FC 00227F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80232200 00227F80  7C 08 02 A6 */	mflr r0
/* 80232204 00227F84  3C C0 80 53 */	lis r6, lbl_80529858@ha
/* 80232208 00227F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023220C 00227F8C  38 C6 98 58 */	addi r6, r6, lbl_80529858@l
/* 80232210 00227F90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80232214 00227F94  7C BF 2B 78 */	mr r31, r5
/* 80232218 00227F98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023221C 00227F9C  7C 9E 23 78 */	mr r30, r4
/* 80232220 00227FA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80232224 00227FA4  7C 7D 1B 78 */	mr r29, r3
/* 80232228 00227FA8  81 86 00 80 */	lwz r12, 0x80(r6)
/* 8023222C 00227FAC  2C 0C 00 00 */	cmpwi r12, 0
/* 80232230 00227FB0  41 82 00 1C */	beq lbl_8023224C
/* 80232234 00227FB4  7F A4 EB 78 */	mr r4, r29
/* 80232238 00227FB8  7F C5 F3 78 */	mr r5, r30
/* 8023223C 00227FBC  7F E6 FB 78 */	mr r6, r31
/* 80232240 00227FC0  38 60 00 01 */	li r3, 1
/* 80232244 00227FC4  7D 89 03 A6 */	mtctr r12
/* 80232248 00227FC8  4E 80 04 21 */	bctrl 
lbl_8023224C:
/* 8023224C 00227FCC  3C 60 80 53 */	lis r3, lbl_80529858@ha
/* 80232250 00227FD0  38 63 98 58 */	addi r3, r3, lbl_80529858@l
/* 80232254 00227FD4  81 83 00 84 */	lwz r12, 0x84(r3)
/* 80232258 00227FD8  2C 0C 00 00 */	cmpwi r12, 0
/* 8023225C 00227FDC  41 82 00 1C */	beq lbl_80232278
/* 80232260 00227FE0  7F A4 EB 78 */	mr r4, r29
/* 80232264 00227FE4  7F C5 F3 78 */	mr r5, r30
/* 80232268 00227FE8  7F E6 FB 78 */	mr r6, r31
/* 8023226C 00227FEC  38 60 00 01 */	li r3, 1
/* 80232270 00227FF0  7D 89 03 A6 */	mtctr r12
/* 80232274 00227FF4  4E 80 04 21 */	bctrl 
lbl_80232278:
/* 80232278 00227FF8  3C 60 80 53 */	lis r3, lbl_80529858@ha
/* 8023227C 00227FFC  38 63 98 58 */	addi r3, r3, lbl_80529858@l
/* 80232280 00228000  81 83 00 88 */	lwz r12, 0x88(r3)
/* 80232284 00228004  2C 0C 00 00 */	cmpwi r12, 0
/* 80232288 00228008  41 82 00 1C */	beq lbl_802322A4
/* 8023228C 0022800C  7F A4 EB 78 */	mr r4, r29
/* 80232290 00228010  7F C5 F3 78 */	mr r5, r30
/* 80232294 00228014  7F E6 FB 78 */	mr r6, r31
/* 80232298 00228018  38 60 00 01 */	li r3, 1
/* 8023229C 0022801C  7D 89 03 A6 */	mtctr r12
/* 802322A0 00228020  4E 80 04 21 */	bctrl 
lbl_802322A4:
/* 802322A4 00228024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802322A8 00228028  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802322AC 0022802C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802322B0 00228030  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802322B4 00228034  7C 08 03 A6 */	mtlr r0
/* 802322B8 00228038  38 21 00 20 */	addi r1, r1, 0x20
/* 802322BC 0022803C  4E 80 00 20 */	blr 

.global bta_sys_sco_close
bta_sys_sco_close:
/* 802322C0 00228040  3C C0 80 53 */	lis r6, lbl_80529858@ha
/* 802322C4 00228044  7C 80 23 78 */	mr r0, r4
/* 802322C8 00228048  38 C6 98 58 */	addi r6, r6, lbl_80529858@l
/* 802322CC 0022804C  81 86 00 84 */	lwz r12, 0x84(r6)
/* 802322D0 00228050  7C A6 2B 78 */	mr r6, r5
/* 802322D4 00228054  2C 0C 00 00 */	cmpwi r12, 0
/* 802322D8 00228058  4D 82 00 20 */	beqlr 
/* 802322DC 0022805C  7C 64 1B 78 */	mr r4, r3
/* 802322E0 00228060  7C 05 03 78 */	mr r5, r0
/* 802322E4 00228064  38 60 00 05 */	li r3, 5
/* 802322E8 00228068  7D 89 03 A6 */	mtctr r12
/* 802322EC 0022806C  4E 80 04 20 */	bctr 
/* 802322F0 00228070  4E 80 00 20 */	blr 

.global bta_sys_idle
bta_sys_idle:
/* 802322F4 00228074  3C C0 80 53 */	lis r6, lbl_80529858@ha
/* 802322F8 00228078  7C 80 23 78 */	mr r0, r4
/* 802322FC 0022807C  38 C6 98 58 */	addi r6, r6, lbl_80529858@l
/* 80232300 00228080  81 86 00 84 */	lwz r12, 0x84(r6)
/* 80232304 00228084  7C A6 2B 78 */	mr r6, r5
/* 80232308 00228088  2C 0C 00 00 */	cmpwi r12, 0
/* 8023230C 0022808C  4D 82 00 20 */	beqlr 
/* 80232310 00228090  7C 64 1B 78 */	mr r4, r3
/* 80232314 00228094  7C 05 03 78 */	mr r5, r0
/* 80232318 00228098  38 60 00 06 */	li r3, 6
/* 8023231C 0022809C  7D 89 03 A6 */	mtctr r12
/* 80232320 002280A0  4E 80 04 20 */	bctr 
/* 80232324 002280A4  4E 80 00 20 */	blr 

.global bta_sys_busy
bta_sys_busy:
/* 80232328 002280A8  3C C0 80 53 */	lis r6, lbl_80529858@ha
/* 8023232C 002280AC  7C 80 23 78 */	mr r0, r4
/* 80232330 002280B0  38 C6 98 58 */	addi r6, r6, lbl_80529858@l
/* 80232334 002280B4  81 86 00 84 */	lwz r12, 0x84(r6)
/* 80232338 002280B8  7C A6 2B 78 */	mr r6, r5
/* 8023233C 002280BC  2C 0C 00 00 */	cmpwi r12, 0
/* 80232340 002280C0  4D 82 00 20 */	beqlr 
/* 80232344 002280C4  7C 64 1B 78 */	mr r4, r3
/* 80232348 002280C8  7C 05 03 78 */	mr r5, r0
/* 8023234C 002280CC  38 60 00 07 */	li r3, 7
/* 80232350 002280D0  7D 89 03 A6 */	mtctr r12
/* 80232354 002280D4  4E 80 04 20 */	bctr 
/* 80232358 002280D8  4E 80 00 20 */	blr 

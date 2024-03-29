.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global IPCInit
IPCInit:
/* 80211A2C 002077AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80211A30 002077B0  7C 08 02 A6 */	mflr r0
/* 80211A34 002077B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80211A38 002077B8  88 0D C7 B8 */	lbz r0, lbl_805A0BD8-_SDA_BASE_(r13)
/* 80211A3C 002077BC  2C 00 00 00 */	cmpwi r0, 0
/* 80211A40 002077C0  40 82 00 28 */	bne lbl_80211A68
/* 80211A44 002077C4  4B FD 09 DD */	bl __OSGetIPCBufferHi
/* 80211A48 002077C8  90 6D C7 C8 */	stw r3, lbl_805A0BE8-_SDA_BASE_(r13)
/* 80211A4C 002077CC  4B FD 09 DD */	bl __OSGetIPCBufferLo
/* 80211A50 002077D0  80 8D C7 C8 */	lwz r4, lbl_805A0BE8-_SDA_BASE_(r13)
/* 80211A54 002077D4  38 00 00 01 */	li r0, 1
/* 80211A58 002077D8  90 6D C7 C4 */	stw r3, lbl_805A0BE4-_SDA_BASE_(r13)
/* 80211A5C 002077DC  90 8D C7 C0 */	stw r4, lbl_805A0BE0-_SDA_BASE_(r13)
/* 80211A60 002077E0  90 6D C7 BC */	stw r3, lbl_805A0BDC-_SDA_BASE_(r13)
/* 80211A64 002077E4  98 0D C7 B8 */	stb r0, lbl_805A0BD8-_SDA_BASE_(r13)
lbl_80211A68:
/* 80211A68 002077E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80211A6C 002077EC  7C 08 03 A6 */	mtlr r0
/* 80211A70 002077F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80211A74 002077F4  4E 80 00 20 */	blr 

.global IPCReInit
IPCReInit:
/* 80211A78 002077F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80211A7C 002077FC  7C 08 02 A6 */	mflr r0
/* 80211A80 00207800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80211A84 00207804  38 00 00 00 */	li r0, 0
/* 80211A88 00207808  98 0D C7 B8 */	stb r0, lbl_805A0BD8-_SDA_BASE_(r13)
/* 80211A8C 0020780C  4B FD 09 95 */	bl __OSGetIPCBufferHi
/* 80211A90 00207810  90 6D C7 C8 */	stw r3, lbl_805A0BE8-_SDA_BASE_(r13)
/* 80211A94 00207814  4B FD 09 95 */	bl __OSGetIPCBufferLo
/* 80211A98 00207818  80 8D C7 C8 */	lwz r4, lbl_805A0BE8-_SDA_BASE_(r13)
/* 80211A9C 0020781C  38 00 00 01 */	li r0, 1
/* 80211AA0 00207820  90 6D C7 C4 */	stw r3, lbl_805A0BE4-_SDA_BASE_(r13)
/* 80211AA4 00207824  90 8D C7 C0 */	stw r4, lbl_805A0BE0-_SDA_BASE_(r13)
/* 80211AA8 00207828  90 6D C7 BC */	stw r3, lbl_805A0BDC-_SDA_BASE_(r13)
/* 80211AAC 0020782C  98 0D C7 B8 */	stb r0, lbl_805A0BD8-_SDA_BASE_(r13)
/* 80211AB0 00207830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80211AB4 00207834  7C 08 03 A6 */	mtlr r0
/* 80211AB8 00207838  38 21 00 10 */	addi r1, r1, 0x10
/* 80211ABC 0020783C  4E 80 00 20 */	blr 

.global IPCReadReg
IPCReadReg:
/* 80211AC0 00207840  54 60 10 3A */	slwi r0, r3, 2
/* 80211AC4 00207844  3C 60 CD 00 */	lis r3, 0xcd00
/* 80211AC8 00207848  7C 63 00 2E */	lwzx r3, r3, r0
/* 80211ACC 0020784C  4E 80 00 20 */	blr 

.global IPCWriteReg
IPCWriteReg:
/* 80211AD0 00207850  54 60 10 3A */	slwi r0, r3, 2
/* 80211AD4 00207854  3C 60 CD 00 */	lis r3, 0xcd00
/* 80211AD8 00207858  7C 83 01 2E */	stwx r4, r3, r0
/* 80211ADC 0020785C  4E 80 00 20 */	blr 

.global IPCGetBufferHi
IPCGetBufferHi:
/* 80211AE0 00207860  80 6D C7 C0 */	lwz r3, lbl_805A0BE0-_SDA_BASE_(r13)
/* 80211AE4 00207864  4E 80 00 20 */	blr 

.global IPCGetBufferLo
IPCGetBufferLo:
/* 80211AE8 00207868  80 6D C7 BC */	lwz r3, lbl_805A0BDC-_SDA_BASE_(r13)
/* 80211AEC 0020786C  4E 80 00 20 */	blr 

.global IPCSetBufferLo
IPCSetBufferLo:
/* 80211AF0 00207870  90 6D C7 BC */	stw r3, lbl_805A0BDC-_SDA_BASE_(r13)
/* 80211AF4 00207874  4E 80 00 20 */	blr 


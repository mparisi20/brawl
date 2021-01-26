.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd11SoundSystemFll$7InitSoundSystem
nw4r3snd11SoundSystemFll$7InitSoundSystem:
/* 801CC034 001C1DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC038 001C1DB8  7C 08 02 A6 */	mflr r0
/* 801CC03C 001C1DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC040 001C1DC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CC044 001C1DC4  7C 9F 23 78 */	mr r31, r4
/* 801CC048 001C1DC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CC04C 001C1DCC  7C 7E 1B 78 */	mr r30, r3
/* 801CC050 001C1DD0  80 6D A5 50 */	lwz r3, lbl_8059E970-_SDA_BASE_(r13)
/* 801CC054 001C1DD4  48 00 A5 39 */	bl OSRegisterVersion
/* 801CC058 001C1DD8  38 00 40 00 */	li r0, 0x4000
/* 801CC05C 001C1DDC  3C 80 80 4C */	lis r4, lbl_804C2340@ha
/* 801CC060 001C1DE0  3C A0 00 01 */	lis r5, 0x0001696C@ha
/* 801CC064 001C1DE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CC068 001C1DE8  38 61 00 08 */	addi r3, r1, 8
/* 801CC06C 001C1DEC  38 84 23 40 */	addi r4, r4, lbl_804C2340@l
/* 801CC070 001C1DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC074 001C1DF4  38 A5 69 6C */	addi r5, r5, 0x0001696C@l
/* 801CC078 001C1DF8  93 C1 00 08 */	stw r30, 8(r1)
/* 801CC07C 001C1DFC  93 E1 00 10 */	stw r31, 0x10(r1)
/* 801CC080 001C1E00  48 00 00 1D */	bl nw4r3snd11SoundSystemFRCQ44nw4r3sn$7InitSoundSystem
/* 801CC084 001C1E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC088 001C1E08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CC08C 001C1E0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CC090 001C1E10  7C 08 03 A6 */	mtlr r0
/* 801CC094 001C1E14  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC098 001C1E18  4E 80 00 20 */	blr 

.global nw4r3snd11SoundSystemFRCQ44nw4r3sn$7InitSoundSystem
nw4r3snd11SoundSystemFRCQ44nw4r3sn$7InitSoundSystem:
/* 801CC09C 001C1E1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC0A0 001C1E20  7C 08 02 A6 */	mflr r0
/* 801CC0A4 001C1E24  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC0A8 001C1E28  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC0AC 001C1E2C  48 22 52 71 */	bl _savegpr_26
/* 801CC0B0 001C1E30  88 0D C1 D8 */	lbz r0, lbl_805A05F8-_SDA_BASE_(r13)
/* 801CC0B4 001C1E34  7C 7A 1B 78 */	mr r26, r3
/* 801CC0B8 001C1E38  7C 9B 23 78 */	mr r27, r4
/* 801CC0BC 001C1E3C  2C 00 00 00 */	cmpwi r0, 0
/* 801CC0C0 001C1E40  40 82 01 50 */	bne lbl_801CC210
/* 801CC0C4 001C1E44  38 00 00 01 */	li r0, 1
/* 801CC0C8 001C1E48  98 0D C1 D8 */	stb r0, lbl_805A05F8-_SDA_BASE_(r13)
/* 801CC0CC 001C1E4C  4B FE B7 2D */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC0D0 001C1E50  4B FE B8 05 */	bl nw4r3snd6detail9AxManagerFv$7Init
/* 801CC0D4 001C1E54  48 04 20 19 */	bl SCInit
lbl_801CC0D8:
/* 801CC0D8 001C1E58  48 04 20 B5 */	bl SCCheckStatus
/* 801CC0DC 001C1E5C  28 03 00 01 */	cmplwi r3, 1
/* 801CC0E0 001C1E60  41 82 FF F8 */	beq lbl_801CC0D8
/* 801CC0E4 001C1E64  48 04 3C 61 */	bl SCGetSoundMode
/* 801CC0E8 001C1E68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801CC0EC 001C1E6C  2C 00 00 01 */	cmpwi r0, 1
/* 801CC0F0 001C1E70  41 82 00 30 */	beq lbl_801CC120
/* 801CC0F4 001C1E74  40 80 00 10 */	bge lbl_801CC104
/* 801CC0F8 001C1E78  2C 00 00 00 */	cmpwi r0, 0
/* 801CC0FC 001C1E7C  40 80 00 14 */	bge lbl_801CC110
/* 801CC100 001C1E80  48 00 00 40 */	b lbl_801CC140
lbl_801CC104:
/* 801CC104 001C1E84  2C 00 00 03 */	cmpwi r0, 3
/* 801CC108 001C1E88  40 80 00 38 */	bge lbl_801CC140
/* 801CC10C 001C1E8C  48 00 00 24 */	b lbl_801CC130
lbl_801CC110:
/* 801CC110 001C1E90  4B FE B6 E9 */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC114 001C1E94  38 80 00 03 */	li r4, 3
/* 801CC118 001C1E98  4B FE BE 95 */	bl nw4r3snd6detail9AxManagerFQ34nw4r3snd10Outpu$7SetOutputMode
/* 801CC11C 001C1E9C  48 00 00 30 */	b lbl_801CC14C
lbl_801CC120:
/* 801CC120 001C1EA0  4B FE B6 D9 */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC124 001C1EA4  38 80 00 00 */	li r4, 0
/* 801CC128 001C1EA8  4B FE BE 85 */	bl nw4r3snd6detail9AxManagerFQ34nw4r3snd10Outpu$7SetOutputMode
/* 801CC12C 001C1EAC  48 00 00 20 */	b lbl_801CC14C
lbl_801CC130:
/* 801CC130 001C1EB0  4B FE B6 C9 */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC134 001C1EB4  38 80 00 02 */	li r4, 2
/* 801CC138 001C1EB8  4B FE BE 75 */	bl nw4r3snd6detail9AxManagerFQ34nw4r3snd10Outpu$7SetOutputMode
/* 801CC13C 001C1EBC  48 00 00 10 */	b lbl_801CC14C
lbl_801CC140:
/* 801CC140 001C1EC0  4B FE B6 B9 */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC144 001C1EC4  38 80 00 00 */	li r4, 0
/* 801CC148 001C1EC8  4B FE BE 65 */	bl nw4r3snd6detail9AxManagerFQ34nw4r3snd10Outpu$7SetOutputMode
lbl_801CC14C:
/* 801CC14C 001C1ECC  4B FF 6A B9 */	bl nw4r3snd6detail20RemoteSpeakerManagerFv$7GetInstance
/* 801CC150 001C1ED0  4B FF 6B 5D */	bl nw4r3snd6detail20RemoteSpeakerManagerFv$7Setup
/* 801CC154 001C1ED4  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 801CC158 001C1ED8  80 1A 00 04 */	lwz r0, 4(r26)
/* 801CC15C 001C1EDC  7F DB 1A 14 */	add r30, r27, r3
/* 801CC160 001C1EE0  7F DD F3 78 */	mr r29, r30
/* 801CC164 001C1EE4  7F DE 02 14 */	add r30, r30, r0
/* 801CC168 001C1EE8  7F DC F3 78 */	mr r28, r30
/* 801CC16C 001C1EEC  4B FE F0 1D */	bl nw4r3snd6detail14AxVoiceManagerFv$7GetInstance
/* 801CC170 001C1EF0  4B FE F1 41 */	bl nw4r3snd6detail14AxVoiceManagerFv$7GetRequiredMemSize
/* 801CC174 001C1EF4  7F DE 1A 14 */	add r30, r30, r3
/* 801CC178 001C1EF8  4B FE F0 11 */	bl nw4r3snd6detail14AxVoiceManagerFv$7GetInstance
/* 801CC17C 001C1EFC  4B FE F1 35 */	bl nw4r3snd6detail14AxVoiceManagerFv$7GetRequiredMemSize
/* 801CC180 001C1F00  7C 7F 1B 78 */	mr r31, r3
/* 801CC184 001C1F04  4B FE F0 05 */	bl nw4r3snd6detail14AxVoiceManagerFv$7GetInstance
/* 801CC188 001C1F08  7F 84 E3 78 */	mr r4, r28
/* 801CC18C 001C1F0C  7F E5 FB 78 */	mr r5, r31
/* 801CC190 001C1F10  4B FE F1 49 */	bl nw4r3snd6detail14AxVoiceManagerFPvUl$7Setup
/* 801CC194 001C1F14  7F DC F3 78 */	mr r28, r30
/* 801CC198 001C1F18  48 00 69 39 */	bl nw4r3snd6detail12VoiceManagerFv$7GetInstance
/* 801CC19C 001C1F1C  48 00 6A 31 */	bl nw4r3snd6detail12VoiceManagerFv$7GetRequiredMemSize
/* 801CC1A0 001C1F20  7F DE 1A 14 */	add r30, r30, r3
/* 801CC1A4 001C1F24  48 00 69 2D */	bl nw4r3snd6detail12VoiceManagerFv$7GetInstance
/* 801CC1A8 001C1F28  48 00 6A 25 */	bl nw4r3snd6detail12VoiceManagerFv$7GetRequiredMemSize
/* 801CC1AC 001C1F2C  7C 7F 1B 78 */	mr r31, r3
/* 801CC1B0 001C1F30  48 00 69 21 */	bl nw4r3snd6detail12VoiceManagerFv$7GetInstance
/* 801CC1B4 001C1F34  7F 84 E3 78 */	mr r4, r28
/* 801CC1B8 001C1F38  7F E5 FB 78 */	mr r5, r31
/* 801CC1BC 001C1F3C  48 00 6A 35 */	bl nw4r3snd6detail12VoiceManagerFPvUl$7Setup
/* 801CC1C0 001C1F40  4B FF 14 E1 */	bl nw4r3snd6detail14ChannelManagerFv$7GetInstance
/* 801CC1C4 001C1F44  4B FF 15 B9 */	bl nw4r3snd6detail14ChannelManagerFv$7GetRequiredMemSize
/* 801CC1C8 001C1F48  4B FF 14 D9 */	bl nw4r3snd6detail14ChannelManagerFv$7GetInstance
/* 801CC1CC 001C1F4C  4B FF 15 B1 */	bl nw4r3snd6detail14ChannelManagerFv$7GetRequiredMemSize
/* 801CC1D0 001C1F50  7C 7F 1B 78 */	mr r31, r3
/* 801CC1D4 001C1F54  4B FF 14 CD */	bl nw4r3snd6detail14ChannelManagerFv$7GetInstance
/* 801CC1D8 001C1F58  7F C4 F3 78 */	mr r4, r30
/* 801CC1DC 001C1F5C  7F E5 FB 78 */	mr r5, r31
/* 801CC1E0 001C1F60  4B FF 15 C5 */	bl nw4r3snd6detail14ChannelManagerFPvUl$7Setup
/* 801CC1E4 001C1F64  3C 60 80 4C */	lis r3, lbl_804C2010@ha
/* 801CC1E8 001C1F68  80 9A 00 08 */	lwz r4, 8(r26)
/* 801CC1EC 001C1F6C  80 DA 00 0C */	lwz r6, 0xc(r26)
/* 801CC1F0 001C1F70  7F 65 DB 78 */	mr r5, r27
/* 801CC1F4 001C1F74  38 63 20 10 */	addi r3, r3, lbl_804C2010@l
/* 801CC1F8 001C1F78  48 00 40 21 */	bl nw4r3snd6detail10TaskThreadFlPvUl$7Create
/* 801CC1FC 001C1F7C  48 00 00 E9 */	bl nw4r3snd6detail11SoundThreadFv$7GetInstance
/* 801CC200 001C1F80  80 9A 00 00 */	lwz r4, 0(r26)
/* 801CC204 001C1F84  7F A5 EB 78 */	mr r5, r29
/* 801CC208 001C1F88  80 DA 00 04 */	lwz r6, 4(r26)
/* 801CC20C 001C1F8C  48 00 02 0D */	bl nw4r3snd6detail11SoundThreadFlPvUl$7Create
lbl_801CC210:
/* 801CC210 001C1F90  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC214 001C1F94  48 22 51 55 */	bl _restgpr_26
/* 801CC218 001C1F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC21C 001C1F9C  7C 08 03 A6 */	mtlr r0
/* 801CC220 001C1FA0  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC224 001C1FA4  4E 80 00 20 */	blr 

.global nw4r3snd11SoundSystemFv$7ShutdownSoundSystem
nw4r3snd11SoundSystemFv$7ShutdownSoundSystem:
/* 801CC228 001C1FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC22C 001C1FAC  7C 08 02 A6 */	mflr r0
/* 801CC230 001C1FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC234 001C1FB4  88 0D C1 D8 */	lbz r0, lbl_805A05F8-_SDA_BASE_(r13)
/* 801CC238 001C1FB8  2C 00 00 00 */	cmpwi r0, 0
/* 801CC23C 001C1FBC  41 82 00 50 */	beq lbl_801CC28C
/* 801CC240 001C1FC0  48 00 00 A5 */	bl nw4r3snd6detail11SoundThreadFv$7GetInstance
/* 801CC244 001C1FC4  48 00 03 0D */	bl nw4r3snd6detail11SoundThreadFv$7Shutdown
/* 801CC248 001C1FC8  48 00 37 CD */	bl nw4r3snd6detail11TaskManagerFv$7GetInstance
/* 801CC24C 001C1FCC  48 00 3D 91 */	bl nw4r3snd6detail11TaskManagerFv$7CancelAllTask
/* 801CC250 001C1FD0  3C 60 80 4C */	lis r3, lbl_804C2010@ha
/* 801CC254 001C1FD4  38 63 20 10 */	addi r3, r3, lbl_804C2010@l
/* 801CC258 001C1FD8  48 00 40 95 */	bl nw4r3snd6detail10TaskThreadFv$7Destroy
/* 801CC25C 001C1FDC  4B FF 69 A9 */	bl nw4r3snd6detail20RemoteSpeakerManagerFv$7GetInstance
/* 801CC260 001C1FE0  4B FF 6A E9 */	bl nw4r3snd6detail20RemoteSpeakerManagerFv$7Shutdown
/* 801CC264 001C1FE4  4B FF 14 3D */	bl nw4r3snd6detail14ChannelManagerFv$7GetInstance
/* 801CC268 001C1FE8  4B FF 15 D1 */	bl nw4r3snd6detail14ChannelManagerFv$7Shutdown
/* 801CC26C 001C1FEC  48 00 68 65 */	bl nw4r3snd6detail12VoiceManagerFv$7GetInstance
/* 801CC270 001C1FF0  48 00 6A 25 */	bl nw4r3snd6detail12VoiceManagerFv$7Shutdown
/* 801CC274 001C1FF4  4B FE EF 15 */	bl nw4r3snd6detail14AxVoiceManagerFv$7GetInstance
/* 801CC278 001C1FF8  4B FE F1 05 */	bl nw4r3snd6detail14AxVoiceManagerFv$7Shutdown
/* 801CC27C 001C1FFC  4B FE B5 7D */	bl nw4r3snd6detail9AxManagerFv$7GetInstance
/* 801CC280 001C2000  4B FE B7 29 */	bl nw4r3snd6detail9AxManagerFv$7Shutdown
/* 801CC284 001C2004  38 00 00 00 */	li r0, 0
/* 801CC288 001C2008  98 0D C1 D8 */	stb r0, lbl_805A05F8-_SDA_BASE_(r13)
lbl_801CC28C:
/* 801CC28C 001C200C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC290 001C2010  7C 08 03 A6 */	mtlr r0
/* 801CC294 001C2014  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC298 001C2018  4E 80 00 20 */	blr 

.global __sinit_$3snd_SoundSystem_cpp
__sinit_$3snd_SoundSystem_cpp:
/* 801CC29C 001C201C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC2A0 001C2020  7C 08 02 A6 */	mflr r0
/* 801CC2A4 001C2024  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC2A8 001C2028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC2AC 001C202C  3F E0 80 4C */	lis r31, lbl_804C2010@ha
/* 801CC2B0 001C2030  38 7F 20 10 */	addi r3, r31, lbl_804C2010@l
/* 801CC2B4 001C2034  48 00 3E CD */	bl nw4r3snd6detail10TaskThreadFv$7__ct
/* 801CC2B8 001C2038  3C 80 80 1D */	lis r4, nw4r3snd6detail10TaskThreadFv$7__dt@ha
/* 801CC2BC 001C203C  3C A0 80 4C */	lis r5, lbl_804C2000@ha
/* 801CC2C0 001C2040  38 7F 20 10 */	addi r3, r31, 0x2010
/* 801CC2C4 001C2044  38 84 01 94 */	addi r4, r4, nw4r3snd6detail10TaskThreadFv$7__dt@l
/* 801CC2C8 001C2048  38 A5 20 00 */	addi r5, r5, lbl_804C2000@l
/* 801CC2CC 001C204C  48 22 44 59 */	bl __register_global_object_tmp
/* 801CC2D0 001C2050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC2D4 001C2054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC2D8 001C2058  7C 08 03 A6 */	mtlr r0
/* 801CC2DC 001C205C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC2E0 001C2060  4E 80 00 20 */	blr 


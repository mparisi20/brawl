.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r3snd6detail9SeqPlayerFv$7OnUpdateFrameSoundThread
nw4r3snd6detail9SeqPlayerFv$7OnUpdateFrameSoundThread:
/* 801C10CC 001B6E4C  48 00 2B 64 */	b nw4r3snd6detail9SeqPlayerFv$7Update

.global nw4r3snd6detail9SeqPlayerFv$7OnShutdownSoundThread
nw4r3snd6detail9SeqPlayerFv$7OnShutdownSoundThread:
/* 801C10D0 001B6E50  81 83 00 00 */	lwz r12, 0(r3)
/* 801C10D4 001B6E54  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801C10D8 001B6E58  7D 89 03 A6 */	mtctr r12
/* 801C10DC 001B6E5C  4E 80 04 20 */	bctr 

.global nw4r3snd6detail9SeqPlayerFPCvPCv$7InvalidateWaveData
nw4r3snd6detail9SeqPlayerFPCvPCv$7InvalidateWaveData:
/* 801C10E0 001B6E60  4E 80 00 20 */	blr 

.global nw4r3snd6detail11SoundThread14PlayerCallbackFv$7OnUpdateVoiceSoundThread
nw4r3snd6detail11SoundThread14PlayerCallbackFv$7OnUpdateVoiceSoundThread:
/* 801C10E4 001B6E64  4E 80 00 20 */	blr 

.global nw4r3snd6detail9SeqPlayerCFv$7IsPause
nw4r3snd6detail9SeqPlayerCFv$7IsPause:
/* 801C10E8 001B6E68  88 63 00 8E */	lbz r3, 0x8e(r3)
/* 801C10EC 001B6E6C  4E 80 00 20 */	blr 

.global nw4r3snd6detail9SeqPlayerCFv$7IsStarted
nw4r3snd6detail9SeqPlayerCFv$7IsStarted:
/* 801C10F0 001B6E70  88 63 00 8D */	lbz r3, 0x8d(r3)
/* 801C10F4 001B6E74  4E 80 00 20 */	blr 

.global nw4r3snd6detail9SeqPlayerCFv$7IsActive
nw4r3snd6detail9SeqPlayerCFv$7IsActive:
/* 801C10F8 001B6E78  88 63 00 8C */	lbz r3, 0x8c(r3)
/* 801C10FC 001B6E7C  4E 80 00 20 */	blr 

.global nw4r3snd6detail9SeqPlayerFPCvPCv$7$2116$2InvalidateWaveData
nw4r3snd6detail9SeqPlayerFPCvPCv$7$2116$2InvalidateWaveData:
/* 801C1100 001B6E80  38 63 FF 8C */	addi r3, r3, -116
/* 801C1104 001B6E84  4B FF FF DC */	b nw4r3snd6detail9SeqPlayerFPCvPCv$7InvalidateWaveData

.global nw4r3snd6detail9SeqPlayerFPCvPCv$7$2116$2InvalidateData
nw4r3snd6detail9SeqPlayerFPCvPCv$7$2116$2InvalidateData:
/* 801C1108 001B6E88  38 63 FF 8C */	addi r3, r3, -116
/* 801C110C 001B6E8C  48 00 27 DC */	b nw4r3snd6detail9SeqPlayerFPCvPCv$7InvalidateData

.global nw4r3snd6detail9SeqPlayerFv$7$2128$2OnShutdownSoundThread
nw4r3snd6detail9SeqPlayerFv$7$2128$2OnShutdownSoundThread:
/* 801C1110 001B6E90  38 63 FF 80 */	addi r3, r3, -128
/* 801C1114 001B6E94  4B FF FF BC */	b nw4r3snd6detail9SeqPlayerFv$7OnShutdownSoundThread

.global nw4r3snd6detail9SeqPlayerFv$7$2128$2OnUpdateFrameSoundThread
nw4r3snd6detail9SeqPlayerFv$7$2128$2OnUpdateFrameSoundThread:
/* 801C1118 001B6E98  38 63 FF 80 */	addi r3, r3, -128
/* 801C111C 001B6E9C  4B FF FF B0 */	b nw4r3snd6detail9SeqPlayerFv$7OnUpdateFrameSoundThread


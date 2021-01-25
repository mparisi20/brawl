.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global PSMTXMultVec
PSMTXMultVec:
/* 801ECD70 001E2AF0  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 801ECD74 001E2AF4  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 801ECD78 001E2AF8  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 801ECD7C 001E2AFC  10 82 00 32 */	ps_mul f4, f2, f0
/* 801ECD80 001E2B00  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 801ECD84 001E2B04  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 801ECD88 001E2B08  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 801ECD8C 001E2B0C  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 801ECD90 001E2B10  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 801ECD94 001E2B14  11 48 00 32 */	ps_mul f10, f8, f0
/* 801ECD98 001E2B18  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 801ECD9C 001E2B1C  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 801ECDA0 001E2B20  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 801ECDA4 001E2B24  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 801ECDA8 001E2B28  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 801ECDAC 001E2B2C  10 82 00 32 */	ps_mul f4, f2, f0
/* 801ECDB0 001E2B30  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 801ECDB4 001E2B34  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 801ECDB8 001E2B38  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 801ECDBC 001E2B3C  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 801ECDC0 001E2B40  4E 80 00 20 */	blr 


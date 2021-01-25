.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global SSL_InitMutex
SSL_InitMutex:
/* 803A9620 0039F3A0  4B E3 55 5C */	b OSInitMutex

.global SSL_LockMutex
SSL_LockMutex:
/* 803A9624 0039F3A4  4B E3 55 90 */	b OSLockMutex

.global SSL_UnlockMutex
SSL_UnlockMutex:
/* 803A9628 0039F3A8  4B E3 56 68 */	b OSUnlockMutex


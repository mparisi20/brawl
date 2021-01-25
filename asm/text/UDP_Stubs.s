.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global udp_cc_post_stop
udp_cc_post_stop:
/* 80405F08 003FBC88  38 60 FF FF */	li r3, -1
/* 80405F0C 003FBC8C  4E 80 00 20 */	blr 

.global udp_cc_pre_continue
udp_cc_pre_continue:
/* 80405F10 003FBC90  38 60 FF FF */	li r3, -1
/* 80405F14 003FBC94  4E 80 00 20 */	blr 

.global udp_cc_peek
udp_cc_peek:
/* 80405F18 003FBC98  38 60 00 00 */	li r3, 0
/* 80405F1C 003FBC9C  4E 80 00 20 */	blr 

.global udp_cc_write
udp_cc_write:
/* 80405F20 003FBCA0  38 60 00 00 */	li r3, 0
/* 80405F24 003FBCA4  4E 80 00 20 */	blr 

.global udp_cc_read
udp_cc_read:
/* 80405F28 003FBCA8  38 60 00 00 */	li r3, 0
/* 80405F2C 003FBCAC  4E 80 00 20 */	blr 

.global udp_cc_close
udp_cc_close:
/* 80405F30 003FBCB0  38 60 FF FF */	li r3, -1
/* 80405F34 003FBCB4  4E 80 00 20 */	blr 

.global udp_cc_open
udp_cc_open:
/* 80405F38 003FBCB8  38 60 FF FF */	li r3, -1
/* 80405F3C 003FBCBC  4E 80 00 20 */	blr 

.global udp_cc_shutdown
udp_cc_shutdown:
/* 80405F40 003FBCC0  38 60 FF FF */	li r3, -1
/* 80405F44 003FBCC4  4E 80 00 20 */	blr 

.global udp_cc_initialize
udp_cc_initialize:
/* 80405F48 003FBCC8  38 60 FF FF */	li r3, -1
/* 80405F4C 003FBCCC  4E 80 00 20 */	blr 


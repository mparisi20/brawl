.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global NETGetWirelessMacAddress
NETGetWirelessMacAddress:
/* 80390010 00385D90  4B FF E7 34 */	b NCDiGetWirelessMacAddress


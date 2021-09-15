.section .data, "wa"  # 0x80420680 - 0x80494840

.balign 8

.global lbl_8042AE70
lbl_8042AE70:
	.incbin "baserom.dol", 0x426F70, 0x40
.global lbl_8042AEB0
lbl_8042AEB0:
	.incbin "baserom.dol", 0x426FB0, 0x6E8

.section .dtors, "wa"  # 0x804067E0 - 0x80406800

.global lbl_804067E0
lbl_804067E0:
	.incbin "baserom.dol", 0x4028E0, 0x20

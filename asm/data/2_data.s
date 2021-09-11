.section .data, "wa"  # 0x80420680 - 0x80494840

.balign 8

.global lbl_8042AE70
lbl_8042AE70:
	.incbin "baserom.dol", 0x426F70, 0x40
.global lbl_8042AEB0
lbl_8042AEB0:
	.incbin "baserom.dol", 0x426FB0, 0x6E8
.global lbl_8042B598
lbl_8042B598:
	.incbin "baserom.dol", 0x427698, 0x68
.global lbl_8042B600
lbl_8042B600:
	.incbin "baserom.dol", 0x427700, 0x18
.global lbl_8042B618
lbl_8042B618:
	.incbin "baserom.dol", 0x427718, 0x2C
.global lbl_8042B644
lbl_8042B644:
	.incbin "baserom.dol", 0x427744, 0x3C
.global lbl_8042B680
lbl_8042B680:
	.incbin "baserom.dol", 0x427780, 0x38
.global lbl_8042B6B8
lbl_8042B6B8:
	.incbin "baserom.dol", 0x4277B8, 0x10
.global lbl_8042B6C8
lbl_8042B6C8:
	.incbin "baserom.dol", 0x4277C8, 0x148
.global lbl_8042B810
lbl_8042B810:
	.incbin "baserom.dol", 0x427910, 0x48
.global lbl_8042B858
lbl_8042B858:
	.incbin "baserom.dol", 0x427958, 0x138
.global lbl_8042B990
lbl_8042B990:
	.incbin "baserom.dol", 0x427A90, 0x288
.global lbl_8042BC18
lbl_8042BC18:
	.incbin "baserom.dol", 0x427D18, 0x1A8
.global lbl_8042BDC0
lbl_8042BDC0:
	.incbin "baserom.dol", 0x427EC0, 0x198
.global lbl_8042BF58
lbl_8042BF58:
	.incbin "baserom.dol", 0x428058, 0x40
.global lbl_8042BF98
lbl_8042BF98:
	.incbin "baserom.dol", 0x428098, 0xF8
.global lbl_8042C090
lbl_8042C090:
	.incbin "baserom.dol", 0x428190, 0x10
.global lbl_8042C0A0
lbl_8042C0A0:
	.incbin "baserom.dol", 0x4281A0, 0x30
.global lbl_8042C0D0
lbl_8042C0D0:
	.incbin "baserom.dol", 0x4281D0, 0x2C8
.global lbl_8042C398
lbl_8042C398:
	.incbin "baserom.dol", 0x428498, 0x120
.global lbl_8042C4B8
lbl_8042C4B8:
	.incbin "baserom.dol", 0x4285B8, 0x2B0
.global lbl_8042C768
lbl_8042C768:
	.incbin "baserom.dol", 0x428868, 0xC0
.global lbl_8042C828
lbl_8042C828:
	.incbin "baserom.dol", 0x428928, 0x130
.global lbl_8042C958
lbl_8042C958:
	.incbin "baserom.dol", 0x428A58, 0x330
.global lbl_8042CC88
lbl_8042CC88:
	.incbin "baserom.dol", 0x428D88, 0x330
.global lbl_8042CFB8
lbl_8042CFB8:
	.incbin "baserom.dol", 0x4290B8, 0xF0
.global lbl_8042D0A8
lbl_8042D0A8:
	.incbin "baserom.dol", 0x4291A8, 0xD8
.global lbl_8042D180
lbl_8042D180:
	.incbin "baserom.dol", 0x429280, 0x440
.global lbl_8042D5C0
lbl_8042D5C0:
	.incbin "baserom.dol", 0x4296C0, 0x600
.global lbl_8042DBC0
lbl_8042DBC0:
	.incbin "baserom.dol", 0x429CC0, 0x58
.global lbl_8042DC18
lbl_8042DC18:
	.incbin "baserom.dol", 0x429D18, 0xA0
.global lbl_8042DCB8
lbl_8042DCB8:
	.incbin "baserom.dol", 0x429DB8, 0x644
.global lbl_8042E2FC
lbl_8042E2FC:
	.incbin "baserom.dol", 0x42A3FC, 0x19C
.global lbl_8042E498
lbl_8042E498:
	.incbin "baserom.dol", 0x42A598, 0x19C
.global lbl_8042E634
lbl_8042E634:
	.incbin "baserom.dol", 0x42A734, 0x1FC
.global lbl_8042E830
lbl_8042E830:
	.incbin "baserom.dol", 0x42A930, 0x5C
.global lbl_8042E88C
lbl_8042E88C:
	.incbin "baserom.dol", 0x42A98C, 0x1C
.global lbl_8042E8A8
lbl_8042E8A8:
	.incbin "baserom.dol", 0x42A9A8, 0x10
.global lbl_8042E8B8
lbl_8042E8B8:
	.incbin "baserom.dol", 0x42A9B8, 0x20
.global lbl_8042E8D8
lbl_8042E8D8:
	.incbin "baserom.dol", 0x42A9D8, 0x24
.global lbl_8042E8FC
lbl_8042E8FC:
	.incbin "baserom.dol", 0x42A9FC, 0x84
.global lbl_8042E980
lbl_8042E980:
	.incbin "baserom.dol", 0x42AA80, 0x30
.global lbl_8042E9B0
lbl_8042E9B0:
	.incbin "baserom.dol", 0x42AAB0, 0x10
.global lbl_8042E9C0
lbl_8042E9C0:
	.incbin "baserom.dol", 0x42AAC0, 0x80
.global lbl_8042EA40
lbl_8042EA40:
	.incbin "baserom.dol", 0x42AB40, 0x8C
.global lbl_8042EACC
lbl_8042EACC:
	.incbin "baserom.dol", 0x42ABCC, 0x3C
.global lbl_8042EB08
lbl_8042EB08:
	.incbin "baserom.dol", 0x42AC08, 0x44
.global lbl_8042EB4C
lbl_8042EB4C:
	.incbin "baserom.dol", 0x42AC4C, 0x3C
.global lbl_8042EB88
lbl_8042EB88:
	.incbin "baserom.dol", 0x42AC88, 0x58
.global lbl_8042EBE0
lbl_8042EBE0:
	.incbin "baserom.dol", 0x42ACE0, 0x38
.global lbl_8042EC18
lbl_8042EC18:
	.incbin "baserom.dol", 0x42AD18, 0x18
.global lbl_8042EC30
lbl_8042EC30:
	.incbin "baserom.dol", 0x42AD30, 0x38
.global lbl_8042EC68
lbl_8042EC68:
	.incbin "baserom.dol", 0x42AD68, 0x139C
.global lbl_80430004
lbl_80430004:
	.incbin "baserom.dol", 0x42C104, 0x19F94
.global lbl_80449F98
lbl_80449F98:
	.incbin "baserom.dol", 0x446098, 0x606C
.global lbl_80450004
lbl_80450004:
	.incbin "baserom.dol", 0x44C104, 0x3BD0
.global lbl_80453BD4
lbl_80453BD4:
	.incbin "baserom.dol", 0x44FCD4, 0x1E4
.global lbl_80453DB8
lbl_80453DB8:
	.incbin "baserom.dol", 0x44FEB8, 0x88
.global lbl_80453E40
lbl_80453E40:
	.incbin "baserom.dol", 0x44FF40, 0x60
.global lbl_80453EA0
lbl_80453EA0:
	.incbin "baserom.dol", 0x44FFA0, 0x40
.global lbl_80453EE0
lbl_80453EE0:
	.incbin "baserom.dol", 0x44FFE0, 0x200
.global lbl_804540E0
lbl_804540E0:
	.incbin "baserom.dol", 0x4501E0, 0x40
.global lbl_80454120
lbl_80454120:
	.incbin "baserom.dol", 0x450220, 0x58
.global lbl_80454178
lbl_80454178:
	.incbin "baserom.dol", 0x450278, 0x20
.global lbl_80454198
lbl_80454198:
	.incbin "baserom.dol", 0x450298, 0x1C
.global lbl_804541B4
lbl_804541B4:
	.incbin "baserom.dol", 0x4502B4, 0x20
.global lbl_804541D4
lbl_804541D4:
	.incbin "baserom.dol", 0x4502D4, 0x9C
.global lbl_80454270
lbl_80454270:
	.incbin "baserom.dol", 0x450370, 0x78
.global lbl_804542E8
lbl_804542E8:
	.incbin "baserom.dol", 0x4503E8, 0x78
.global lbl_80454360
lbl_80454360:
	.incbin "baserom.dol", 0x450460, 0x58
.global lbl_804543B8
lbl_804543B8:
	.incbin "baserom.dol", 0x4504B8, 0x20
.global lbl_804543D8
lbl_804543D8:
	.incbin "baserom.dol", 0x4504D8, 0x18
.global lbl_804543F0
lbl_804543F0:
	.incbin "baserom.dol", 0x4504F0, 0x20
.global lbl_80454410
lbl_80454410:
	.incbin "baserom.dol", 0x450510, 0x60
.global lbl_80454470
lbl_80454470:
	.incbin "baserom.dol", 0x450570, 0x18
.global lbl_80454488
lbl_80454488:
	.incbin "baserom.dol", 0x450588, 0x10
.global lbl_80454498
lbl_80454498:
	.incbin "baserom.dol", 0x450598, 0x10
.global lbl_804544A8
lbl_804544A8:
	.incbin "baserom.dol", 0x4505A8, 0x28
.global lbl_804544D0
lbl_804544D0:
	.incbin "baserom.dol", 0x4505D0, 0x28
.global lbl_804544F8
lbl_804544F8:
	.incbin "baserom.dol", 0x4505F8, 0x18
.global lbl_80454510
lbl_80454510:
	.incbin "baserom.dol", 0x450610, 0x20
.global lbl_80454530
lbl_80454530:
	.incbin "baserom.dol", 0x450630, 0x20
.global lbl_80454550
lbl_80454550:
	.incbin "baserom.dol", 0x450650, 0x30
.global lbl_80454580
lbl_80454580:
	.incbin "baserom.dol", 0x450680, 0x30
.global lbl_804545B0
lbl_804545B0:
	.incbin "baserom.dol", 0x4506B0, 0x68
.global lbl_80454618
lbl_80454618:
	.incbin "baserom.dol", 0x450718, 0x14
.global lbl_8045462C
lbl_8045462C:
	.incbin "baserom.dol", 0x45072C, 0x84
.global lbl_804546B0
lbl_804546B0:
	.incbin "baserom.dol", 0x4507B0, 0x58
.global lbl_80454708
lbl_80454708:
	.incbin "baserom.dol", 0x450808, 0x9C
.global lbl_804547A4
lbl_804547A4:
	.incbin "baserom.dol", 0x4508A4, 0x7C
.global lbl_80454820
lbl_80454820:
	.incbin "baserom.dol", 0x450920, 0x24
.global lbl_80454844
lbl_80454844:
	.incbin "baserom.dol", 0x450944, 0x14
.global lbl_80454858
lbl_80454858:
	.incbin "baserom.dol", 0x450958, 0x38
.global lbl_80454890
lbl_80454890:
	.incbin "baserom.dol", 0x450990, 0x10
.global lbl_804548A0
lbl_804548A0:
	.incbin "baserom.dol", 0x4509A0, 0x1F0
.global lbl_80454A90
lbl_80454A90:
	.incbin "baserom.dol", 0x450B90, 0x10
.global lbl_80454AA0
lbl_80454AA0:
	.incbin "baserom.dol", 0x450BA0, 0x10
.global lbl_80454AB0
lbl_80454AB0:
	.incbin "baserom.dol", 0x450BB0, 0x30
.global lbl_80454AE0
lbl_80454AE0:
	.incbin "baserom.dol", 0x450BE0, 0x10
.global lbl_80454AF0
lbl_80454AF0:
	.incbin "baserom.dol", 0x450BF0, 0x10
.global lbl_80454B00
lbl_80454B00:
	.incbin "baserom.dol", 0x450C00, 0x10
.global lbl_80454B10
lbl_80454B10:
	.incbin "baserom.dol", 0x450C10, 0x68
.global lbl_80454B78
lbl_80454B78:
	.incbin "baserom.dol", 0x450C78, 0x3C
.global lbl_80454BB4
lbl_80454BB4:
	.incbin "baserom.dol", 0x450CB4, 0x3C
.global lbl_80454BF0
lbl_80454BF0:
	.incbin "baserom.dol", 0x450CF0, 0xD0
.global lbl_80454CC0
lbl_80454CC0:
	.incbin "baserom.dol", 0x450DC0, 0x10
.global lbl_80454CD0
lbl_80454CD0:
	.incbin "baserom.dol", 0x450DD0, 0x80
.global lbl_80454D50
lbl_80454D50:
	.incbin "baserom.dol", 0x450E50, 0x38
.global lbl_80454D88
lbl_80454D88:
	.incbin "baserom.dol", 0x450E88, 0x18
.global lbl_80454DA0
lbl_80454DA0:
	.incbin "baserom.dol", 0x450EA0, 0x38
.global lbl_80454DD8
lbl_80454DD8:
	.incbin "baserom.dol", 0x450ED8, 0x20
.global lbl_80454DF8
lbl_80454DF8:
	.incbin "baserom.dol", 0x450EF8, 0x38
.global lbl_80454E30
lbl_80454E30:
	.incbin "baserom.dol", 0x450F30, 0x40
.global lbl_80454E70
lbl_80454E70:
	.incbin "baserom.dol", 0x450F70, 0x38
.global lbl_80454EA8
lbl_80454EA8:
	.incbin "baserom.dol", 0x450FA8, 0x30
.global lbl_80454ED8
lbl_80454ED8:
	.incbin "baserom.dol", 0x450FD8, 0x50
.global lbl_80454F28
lbl_80454F28:
	.incbin "baserom.dol", 0x451028, 0x34
.global lbl_80454F5C
lbl_80454F5C:
	.incbin "baserom.dol", 0x45105C, 0x3C
.global lbl_80454F98
lbl_80454F98:
	.incbin "baserom.dol", 0x451098, 0x38
.global lbl_80454FD0
lbl_80454FD0:
	.incbin "baserom.dol", 0x4510D0, 0x30
.global lbl_80455000
lbl_80455000:
	.incbin "baserom.dol", 0x451100, 0x48
.global lbl_80455048
lbl_80455048:
	.incbin "baserom.dol", 0x451148, 0x70
.global lbl_804550B8
lbl_804550B8:
	.incbin "baserom.dol", 0x4511B8, 0x68
.global lbl_80455120
lbl_80455120:
	.incbin "baserom.dol", 0x451220, 0x1C
.global lbl_8045513C
lbl_8045513C:
	.incbin "baserom.dol", 0x45123C, 0xC
.global lbl_80455148
lbl_80455148:
	.incbin "baserom.dol", 0x451248, 0x20
.global lbl_80455168
lbl_80455168:
	.incbin "baserom.dol", 0x451268, 0x18
.global lbl_80455180
lbl_80455180:
	.incbin "baserom.dol", 0x451280, 0x48
.global lbl_804551C8
lbl_804551C8:
	.incbin "baserom.dol", 0x4512C8, 0x290
.global lbl_80455458
lbl_80455458:
	.incbin "baserom.dol", 0x451558, 0x280
.global lbl_804556D8
lbl_804556D8:
	.incbin "baserom.dol", 0x4517D8, 0x3D0
.global lbl_80455AA8
lbl_80455AA8:
	.incbin "baserom.dol", 0x451BA8, 0x1E8
.global lbl_80455C90
lbl_80455C90:
	.incbin "baserom.dol", 0x451D90, 0xC
.global lbl_80455C9C
lbl_80455C9C:
	.incbin "baserom.dol", 0x451D9C, 0x7C
.global lbl_80455D18
lbl_80455D18:
	.incbin "baserom.dol", 0x451E18, 0x58
.global lbl_80455D70
lbl_80455D70:
	.incbin "baserom.dol", 0x451E70, 0x1C
.global lbl_80455D8C
lbl_80455D8C:
	.incbin "baserom.dol", 0x451E8C, 0x84
.global lbl_80455E10
lbl_80455E10:
	.incbin "baserom.dol", 0x451F10, 0x3D4
.global lbl_804561E4
lbl_804561E4:
	.incbin "baserom.dol", 0x4522E4, 0x154
.global lbl_80456338
lbl_80456338:
	.incbin "baserom.dol", 0x452438, 0x22C
.global lbl_80456564
lbl_80456564:
	.incbin "baserom.dol", 0x452664, 0x124
.global lbl_80456688
lbl_80456688:
	.incbin "baserom.dol", 0x452788, 0x18
.global lbl_804566A0
lbl_804566A0:
	.incbin "baserom.dol", 0x4527A0, 0x340
.global lbl_804569E0
lbl_804569E0:
	.incbin "baserom.dol", 0x452AE0, 0xA0
.global lbl_80456A80
lbl_80456A80:
	.incbin "baserom.dol", 0x452B80, 0x10
.global lbl_80456A90
lbl_80456A90:
	.incbin "baserom.dol", 0x452B90, 0x1C
.global lbl_80456AAC
lbl_80456AAC:
	.incbin "baserom.dol", 0x452BAC, 0x2C
.global lbl_80456AD8
lbl_80456AD8:
	.incbin "baserom.dol", 0x452BD8, 0x1D4
.global lbl_80456CAC
lbl_80456CAC:
	.incbin "baserom.dol", 0x452DAC, 0x84
.global lbl_80456D30
lbl_80456D30:
	.incbin "baserom.dol", 0x452E30, 0x24
.global lbl_80456D54
lbl_80456D54:
	.incbin "baserom.dol", 0x452E54, 0x84
.global lbl_80456DD8
lbl_80456DD8:
	.incbin "baserom.dol", 0x452ED8, 0x130
.global lbl_80456F08
lbl_80456F08:
	.incbin "baserom.dol", 0x453008, 0x14
.global lbl_80456F1C
lbl_80456F1C:
	.incbin "baserom.dol", 0x45301C, 0x1C
.global lbl_80456F38
lbl_80456F38:
	.incbin "baserom.dol", 0x453038, 0x14
.global lbl_80456F4C
lbl_80456F4C:
	.incbin "baserom.dol", 0x45304C, 0x10
.global lbl_80456F5C
lbl_80456F5C:
	.incbin "baserom.dol", 0x45305C, 0x84
.global lbl_80456FE0
lbl_80456FE0:
	.incbin "baserom.dol", 0x4530E0, 0x10
.global lbl_80456FF0
lbl_80456FF0:
	.incbin "baserom.dol", 0x4530F0, 0x40
.global lbl_80457030
lbl_80457030:
	.incbin "baserom.dol", 0x453130, 0x90
.global lbl_804570C0
lbl_804570C0:
	.incbin "baserom.dol", 0x4531C0, 0x98
.global lbl_80457158
lbl_80457158:
	.incbin "baserom.dol", 0x453258, 0xE8
.global lbl_80457240
lbl_80457240:
	.incbin "baserom.dol", 0x453340, 0x2C
.global lbl_8045726C
lbl_8045726C:
	.incbin "baserom.dol", 0x45336C, 0x698
.global lbl_80457904
lbl_80457904:
	.incbin "baserom.dol", 0x453A04, 0x24
.global lbl_80457928
lbl_80457928:
	.incbin "baserom.dol", 0x453A28, 0x2C
.global lbl_80457954
lbl_80457954:
	.incbin "baserom.dol", 0x453A54, 0x24
.global lbl_80457978
lbl_80457978:
	.incbin "baserom.dol", 0x453A78, 0x34
.global lbl_804579AC
lbl_804579AC:
	.incbin "baserom.dol", 0x453AAC, 0x3C
.global lbl_804579E8
lbl_804579E8:
	.incbin "baserom.dol", 0x453AE8, 0x28
.global lbl_80457A10
lbl_80457A10:
	.incbin "baserom.dol", 0x453B10, 0x38
.global lbl_80457A48
lbl_80457A48:
	.incbin "baserom.dol", 0x453B48, 0x2C
.global lbl_80457A74
lbl_80457A74:
	.incbin "baserom.dol", 0x453B74, 0x3C
.global lbl_80457AB0
lbl_80457AB0:
	.incbin "baserom.dol", 0x453BB0, 0x198
.global lbl_80457C48
lbl_80457C48:
	.incbin "baserom.dol", 0x453D48, 0x3C
.global lbl_80457C84
lbl_80457C84:
	.incbin "baserom.dol", 0x453D84, 0x1C
.global lbl_80457CA0
lbl_80457CA0:
	.incbin "baserom.dol", 0x453DA0, 0x20
.global lbl_80457CC0
lbl_80457CC0:
	.incbin "baserom.dol", 0x453DC0, 0x3C
.global lbl_80457CFC
lbl_80457CFC:
	.incbin "baserom.dol", 0x453DFC, 0xCC
.global lbl_80457DC8
lbl_80457DC8:
	.incbin "baserom.dol", 0x453EC8, 0x30
.global lbl_80457DF8
lbl_80457DF8:
	.incbin "baserom.dol", 0x453EF8, 0x38
.global lbl_80457E30
lbl_80457E30:
	.incbin "baserom.dol", 0x453F30, 0x34
.global lbl_80457E64
lbl_80457E64:
	.incbin "baserom.dol", 0x453F64, 0x3C
.global lbl_80457EA0
lbl_80457EA0:
	.incbin "baserom.dol", 0x453FA0, 0x40
.global lbl_80457EE0
lbl_80457EE0:
	.incbin "baserom.dol", 0x453FE0, 0x44
.global lbl_80457F24
lbl_80457F24:
	.incbin "baserom.dol", 0x454024, 0x34
.global lbl_80457F58
lbl_80457F58:
	.incbin "baserom.dol", 0x454058, 0x3C
.global lbl_80457F94
lbl_80457F94:
	.incbin "baserom.dol", 0x454094, 0x34
.global lbl_80457FC8
lbl_80457FC8:
	.incbin "baserom.dol", 0x4540C8, 0x24
.global lbl_80457FEC
lbl_80457FEC:
	.incbin "baserom.dol", 0x4540EC, 0x2C
.global lbl_80458018
lbl_80458018:
	.incbin "baserom.dol", 0x454118, 0x24
.global lbl_8045803C
lbl_8045803C:
	.incbin "baserom.dol", 0x45413C, 0x12C
.global lbl_80458168
lbl_80458168:
	.incbin "baserom.dol", 0x454268, 0x1C
.global lbl_80458184
lbl_80458184:
	.incbin "baserom.dol", 0x454284, 0x24
.global lbl_804581A8
lbl_804581A8:
	.incbin "baserom.dol", 0x4542A8, 0x20
.global lbl_804581C8
lbl_804581C8:
	.incbin "baserom.dol", 0x4542C8, 0x20
.global lbl_804581E8
lbl_804581E8:
	.incbin "baserom.dol", 0x4542E8, 0x104
.global lbl_804582EC
lbl_804582EC:
	.incbin "baserom.dol", 0x4543EC, 0x484
.global lbl_80458770
lbl_80458770:
	.incbin "baserom.dol", 0x454870, 0x2C
.global lbl_8045879C
lbl_8045879C:
	.incbin "baserom.dol", 0x45489C, 0x30
.global lbl_804587CC
lbl_804587CC:
	.incbin "baserom.dol", 0x4548CC, 0x24
.global lbl_804587F0
lbl_804587F0:
	.incbin "baserom.dol", 0x4548F0, 0x18
.global lbl_80458808
lbl_80458808:
	.incbin "baserom.dol", 0x454908, 0x14
.global lbl_8045881C
lbl_8045881C:
	.incbin "baserom.dol", 0x45491C, 0xA4
.global lbl_804588C0
lbl_804588C0:
	.incbin "baserom.dol", 0x4549C0, 0x44
.global lbl_80458904
lbl_80458904:
	.incbin "baserom.dol", 0x454A04, 0x370
.global lbl_80458C74
lbl_80458C74:
	.incbin "baserom.dol", 0x454D74, 0x2C
.global lbl_80458CA0
lbl_80458CA0:
	.incbin "baserom.dol", 0x454DA0, 0xA5C
.global lbl_804596FC
lbl_804596FC:
	.incbin "baserom.dol", 0x4557FC, 0x134
.global lbl_80459830
lbl_80459830:
	.incbin "baserom.dol", 0x455930, 0x3C
.global lbl_8045986C
lbl_8045986C:
	.incbin "baserom.dol", 0x45596C, 0x18
.global lbl_80459884
lbl_80459884:
	.incbin "baserom.dol", 0x455984, 0x3C
.global lbl_804598C0
lbl_804598C0:
	.incbin "baserom.dol", 0x4559C0, 0xC4
.global lbl_80459984
lbl_80459984:
	.incbin "baserom.dol", 0x455A84, 0x34
.global lbl_804599B8
lbl_804599B8:
	.incbin "baserom.dol", 0x455AB8, 0x20
.global lbl_804599D8
lbl_804599D8:
	.incbin "baserom.dol", 0x455AD8, 0x38
.global lbl_80459A10
lbl_80459A10:
	.incbin "baserom.dol", 0x455B10, 0xD0
.global lbl_80459AE0
lbl_80459AE0:
	.incbin "baserom.dol", 0x455BE0, 0x88
.global lbl_80459B68
lbl_80459B68:
	.incbin "baserom.dol", 0x455C68, 0x3C
.global lbl_80459BA4
lbl_80459BA4:
	.incbin "baserom.dol", 0x455CA4, 0x84
.global lbl_80459C28
lbl_80459C28:
	.incbin "baserom.dol", 0x455D28, 0x10
.global lbl_80459C38
lbl_80459C38:
	.incbin "baserom.dol", 0x455D38, 0x88
.global lbl_80459CC0
lbl_80459CC0:
	.incbin "baserom.dol", 0x455DC0, 0x20
.global lbl_80459CE0
lbl_80459CE0:
	.incbin "baserom.dol", 0x455DE0, 0x64
.global lbl_80459D44
lbl_80459D44:
	.incbin "baserom.dol", 0x455E44, 0x28
.global lbl_80459D6C
lbl_80459D6C:
	.incbin "baserom.dol", 0x455E6C, 0x7C
.global lbl_80459DE8
lbl_80459DE8:
	.incbin "baserom.dol", 0x455EE8, 0x70
.global lbl_80459E58
lbl_80459E58:
	.incbin "baserom.dol", 0x455F58, 0x1A8
.global lbl_8045A000
lbl_8045A000:
	.incbin "baserom.dol", 0x456100, 0x18
.global lbl_8045A018
lbl_8045A018:
	.incbin "baserom.dol", 0x456118, 0x2BC
.global lbl_8045A2D4
lbl_8045A2D4:
	.incbin "baserom.dol", 0x4563D4, 0xC
.global lbl_8045A2E0
lbl_8045A2E0:
	.incbin "baserom.dol", 0x4563E0, 0xC
.global lbl_8045A2EC
lbl_8045A2EC:
	.incbin "baserom.dol", 0x4563EC, 0x30
.global lbl_8045A31C
lbl_8045A31C:
	.incbin "baserom.dol", 0x45641C, 0x2C
.global lbl_8045A348
lbl_8045A348:
	.incbin "baserom.dol", 0x456448, 0x14
.global lbl_8045A35C
lbl_8045A35C:
	.incbin "baserom.dol", 0x45645C, 0x24
.global lbl_8045A380
lbl_8045A380:
	.incbin "baserom.dol", 0x456480, 0xC
.global lbl_8045A38C
lbl_8045A38C:
	.incbin "baserom.dol", 0x45648C, 0x1C
.global lbl_8045A3A8
lbl_8045A3A8:
	.incbin "baserom.dol", 0x4564A8, 0x80
.global lbl_8045A428
lbl_8045A428:
	.incbin "baserom.dol", 0x456528, 0x5AC
.global lbl_8045A9D4
lbl_8045A9D4:
	.incbin "baserom.dol", 0x456AD4, 0x294
.global lbl_8045AC68
lbl_8045AC68:
	.incbin "baserom.dol", 0x456D68, 0x34
.global lbl_8045AC9C
lbl_8045AC9C:
	.incbin "baserom.dol", 0x456D9C, 0x34
.global lbl_8045ACD0
lbl_8045ACD0:
	.incbin "baserom.dol", 0x456DD0, 0x238
.global lbl_8045AF08
lbl_8045AF08:
	.incbin "baserom.dol", 0x457008, 0x80
.global lbl_8045AF88
lbl_8045AF88:
	.incbin "baserom.dol", 0x457088, 0x3E0
.global lbl_8045B368
lbl_8045B368:
	.incbin "baserom.dol", 0x457468, 0x48
.global lbl_8045B3B0
lbl_8045B3B0:
	.incbin "baserom.dol", 0x4574B0, 0x84
.global lbl_8045B434
lbl_8045B434:
	.incbin "baserom.dol", 0x457534, 0x84
.global lbl_8045B4B8
lbl_8045B4B8:
	.incbin "baserom.dol", 0x4575B8, 0x48
.global lbl_8045B500
lbl_8045B500:
	.incbin "baserom.dol", 0x457600, 0xBC
.global lbl_8045B5BC
lbl_8045B5BC:
	.incbin "baserom.dol", 0x4576BC, 0x94
.global lbl_8045B650
lbl_8045B650:
	.incbin "baserom.dol", 0x457750, 0x24
.global lbl_8045B674
lbl_8045B674:
	.incbin "baserom.dol", 0x457774, 0x4C
.global lbl_8045B6C0
lbl_8045B6C0:
	.incbin "baserom.dol", 0x4577C0, 0x128
.global lbl_8045B7E8
lbl_8045B7E8:
	.incbin "baserom.dol", 0x4578E8, 0x3C
.global lbl_8045B824
lbl_8045B824:
	.incbin "baserom.dol", 0x457924, 0x84
.global lbl_8045B8A8
lbl_8045B8A8:
	.incbin "baserom.dol", 0x4579A8, 0xC
.global lbl_8045B8B4
lbl_8045B8B4:
	.incbin "baserom.dol", 0x4579B4, 0x28
.global lbl_8045B8DC
lbl_8045B8DC:
	.incbin "baserom.dol", 0x4579DC, 0x10
.global lbl_8045B8EC
lbl_8045B8EC:
	.incbin "baserom.dol", 0x4579EC, 0x17C
.global lbl_8045BA68
lbl_8045BA68:
	.incbin "baserom.dol", 0x457B68, 0x2C
.global lbl_8045BA94
lbl_8045BA94:
	.incbin "baserom.dol", 0x457B94, 0x18
.global lbl_8045BAAC
lbl_8045BAAC:
	.incbin "baserom.dol", 0x457BAC, 0xD0
.global lbl_8045BB7C
lbl_8045BB7C:
	.incbin "baserom.dol", 0x457C7C, 0x1C
.global lbl_8045BB98
lbl_8045BB98:
	.incbin "baserom.dol", 0x457C98, 0xC8
.global lbl_8045BC60
lbl_8045BC60:
	.incbin "baserom.dol", 0x457D60, 0xC8
.global lbl_8045BD28
lbl_8045BD28:
	.incbin "baserom.dol", 0x457E28, 0xC8
.global lbl_8045BDF0
lbl_8045BDF0:
	.incbin "baserom.dol", 0x457EF0, 0xB8
.global lbl_8045BEA8
lbl_8045BEA8:
	.incbin "baserom.dol", 0x457FA8, 0xE4
.global lbl_8045BF8C
lbl_8045BF8C:
	.incbin "baserom.dol", 0x45808C, 0x18
.global lbl_8045BFA4
lbl_8045BFA4:
	.incbin "baserom.dol", 0x4580A4, 0x14
.global lbl_8045BFB8
lbl_8045BFB8:
	.incbin "baserom.dol", 0x4580B8, 0x10
.global lbl_8045BFC8
lbl_8045BFC8:
	.incbin "baserom.dol", 0x4580C8, 0x28C
.global lbl_8045C254
lbl_8045C254:
	.incbin "baserom.dol", 0x458354, 0x24
.global lbl_8045C278
lbl_8045C278:
	.incbin "baserom.dol", 0x458378, 0x94
.global lbl_8045C30C
lbl_8045C30C:
	.incbin "baserom.dol", 0x45840C, 0x68
.global lbl_8045C374
lbl_8045C374:
	.incbin "baserom.dol", 0x458474, 0xA8
.global lbl_8045C41C
lbl_8045C41C:
	.incbin "baserom.dol", 0x45851C, 0xA0
.global lbl_8045C4BC
lbl_8045C4BC:
	.incbin "baserom.dol", 0x4585BC, 0xB8
.global lbl_8045C574
lbl_8045C574:
	.incbin "baserom.dol", 0x458674, 0x20
.global lbl_8045C594
lbl_8045C594:
	.incbin "baserom.dol", 0x458694, 0x1C
.global lbl_8045C5B0
lbl_8045C5B0:
	.incbin "baserom.dol", 0x4586B0, 0xC8
.global lbl_8045C678
lbl_8045C678:
	.incbin "baserom.dol", 0x458778, 0x10
.global lbl_8045C688
lbl_8045C688:
	.incbin "baserom.dol", 0x458788, 0x98
.global lbl_8045C720
lbl_8045C720:
	.incbin "baserom.dol", 0x458820, 0x30
.global lbl_8045C750
lbl_8045C750:
	.incbin "baserom.dol", 0x458850, 0x18
.global lbl_8045C768
lbl_8045C768:
	.incbin "baserom.dol", 0x458868, 0xAC
.global lbl_8045C814
lbl_8045C814:
	.incbin "baserom.dol", 0x458914, 0x24
.global lbl_8045C838
lbl_8045C838:
	.incbin "baserom.dol", 0x458938, 0x8C
.global lbl_8045C8C4
lbl_8045C8C4:
	.incbin "baserom.dol", 0x4589C4, 0x24
.global lbl_8045C8E8
lbl_8045C8E8:
	.incbin "baserom.dol", 0x4589E8, 0x44
.global lbl_8045C92C
lbl_8045C92C:
	.incbin "baserom.dol", 0x458A2C, 0x10
.global lbl_8045C93C
lbl_8045C93C:
	.incbin "baserom.dol", 0x458A3C, 0x80
.global lbl_8045C9BC
lbl_8045C9BC:
	.incbin "baserom.dol", 0x458ABC, 0x10
.global lbl_8045C9CC
lbl_8045C9CC:
	.incbin "baserom.dol", 0x458ACC, 0x12C
.global lbl_8045CAF8
lbl_8045CAF8:
	.incbin "baserom.dol", 0x458BF8, 0x48
.global lbl_8045CB40
lbl_8045CB40:
	.incbin "baserom.dol", 0x458C40, 0x80
.global lbl_8045CBC0
lbl_8045CBC0:
	.incbin "baserom.dol", 0x458CC0, 0x80
.global lbl_8045CC40
lbl_8045CC40:
	.incbin "baserom.dol", 0x458D40, 0x80
.global lbl_8045CCC0
lbl_8045CCC0:
	.incbin "baserom.dol", 0x458DC0, 0xD0
.global lbl_8045CD90
lbl_8045CD90:
	.incbin "baserom.dol", 0x458E90, 0x23C
.global lbl_8045CFCC
lbl_8045CFCC:
	.incbin "baserom.dol", 0x4590CC, 0xC

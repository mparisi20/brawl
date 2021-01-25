.include "macros.inc"

.section .text, "ax"  # 0x8000C860 - 0x804064E0

.global nw4r2ut8IOStreamFPvUlPFlPQ34nw4r2u$7ReadAsync
nw4r2ut8IOStreamFPvUlPFlPQ34nw4r2u$7ReadAsync:
/* 8015CBF8 00152978  38 60 00 00 */	li r3, 0
/* 8015CBFC 0015297C  4E 80 00 20 */	blr 

.global nw4r2ut8IOStreamFPCvUl$7Write
nw4r2ut8IOStreamFPCvUl$7Write:
/* 8015CC00 00152980  4E 80 00 20 */	blr 

.global nw4r2ut8IOStreamFPCvUlPFlPQ34nw4r2$7WriteAsync
nw4r2ut8IOStreamFPCvUlPFlPQ34nw4r2$7WriteAsync:
/* 8015CC04 00152984  38 60 00 00 */	li r3, 0
/* 8015CC08 00152988  4E 80 00 20 */	blr 

.global nw4r2ut8IOStreamCFv$7IsBusy
nw4r2ut8IOStreamCFv$7IsBusy:
/* 8015CC0C 0015298C  38 60 00 00 */	li r3, 0
/* 8015CC10 00152990  4E 80 00 20 */	blr 

.global nw4r2ut8IOStreamCFv$7GetBufferAlign
nw4r2ut8IOStreamCFv$7GetBufferAlign:
/* 8015CC14 00152994  38 60 00 01 */	li r3, 1
/* 8015CC18 00152998  4E 80 00 20 */	blr 

.global nw4r2ut8IOStreamCFv$7GetSizeAlign
nw4r2ut8IOStreamCFv$7GetSizeAlign:
/* 8015CC1C 0015299C  38 60 00 01 */	li r3, 1
/* 8015CC20 001529A0  4E 80 00 20 */	blr 

.global nw4r2ut8IOStreamCFv$7GetOffsetAlign
nw4r2ut8IOStreamCFv$7GetOffsetAlign:
/* 8015CC24 001529A4  38 60 00 01 */	li r3, 1
/* 8015CC28 001529A8  4E 80 00 20 */	blr 

.global __sinit_$3ut_IOStream_cpp
__sinit_$3ut_IOStream_cpp:
/* 8015CC2C 001529AC  38 00 00 00 */	li r0, 0
/* 8015CC30 001529B0  90 0D C0 58 */	stw r0, lbl_805A0478-_SDA_BASE_(r13)
/* 8015CC34 001529B4  4E 80 00 20 */	blr 


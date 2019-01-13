opt subtitle "Microchip Technology Omniscient Code Generator v1.38 (Free mode) build 201607010351"

opt pagewidth 120

	opt lm

	processor	18F4550
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 70 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 146 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 219 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 244 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 250 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 327 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 366 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 421 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 476 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 526 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 576 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 635 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 685 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 748 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 829 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 960 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1091 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1222 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1353 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1484 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1615 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1746 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1877 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1964 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2051 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2138 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2225 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2312 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2399 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2486 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2573 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2711 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2820 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2964 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3084 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3254 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3371 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3503 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3591 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3723 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3780 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3785 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3977 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3982 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4198 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4203 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4351 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4356 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4572 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4577 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4673 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4731 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4819 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4907 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4995 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5065 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5135 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5205 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5270 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5276 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5282 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5288 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5293 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5497 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5502 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5794 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5799 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5805 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5810 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5816 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5821 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5827 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5833 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5955 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5961 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5967 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5973 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6068 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6152 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6157 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6313 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6318 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6450 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6455 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6629 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6692 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6698 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6704 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6710 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6715 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6871 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6877 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6883 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6889 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6959 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7049 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7167 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7173 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7179 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7185 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7246 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7315 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7573 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7579 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7585 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7682 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7687 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7791 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7797 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7901 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7907 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7913 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7919 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8067 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8094 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8099 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8363 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8445 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8514 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8520 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8526 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8532 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8610 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8616 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8622 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8628 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8634 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8640 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8646 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8652 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8658 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8664 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8670 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8676 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8682 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8688 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8694 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8700 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8706 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8712 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8718 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8724 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8730 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8736 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8742 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8748 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8754 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8760 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8766 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8857 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8933 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9049 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9055 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9061 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9067 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9075 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9081 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9087 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9093 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9101 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9108 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9114 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9120 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9126 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9132 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9207 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9213 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9219 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9225 "E:\Program Files (x86)\Flowcode 7\compilers\pic\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_FC_CAL_Port_In_DDR__x
	FNCALL	_main,_delay_ms
	FNROOT	_main
	FNCALL	intlevel2,_myisr
	global	intlevel2
	FNROOT	intlevel2
	global	_FCV_INBYTE0
	global	_FCV_INBYTE1
	global	_FCV_OUTBYTE0
	global	_FCV_OUTBYTE1
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_PIE2bits
_PIE2bits	set	0xFA0
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_UCFG
_UCFG	set	0xF6F
	global	_PORTD
_PORTD	set	0xF83
	global	_TRISD
_TRISD	set	0xF95
; #config settings
global __CFG_PLLDIV$12
__CFG_PLLDIV$12 equ 0x0
global __CFG_CPUDIV$OSC4_PLL6
__CFG_CPUDIV$OSC4_PLL6 equ 0x0
global __CFG_USBDIV$2
__CFG_USBDIV$2 equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_FCMEN$ON
__CFG_FCMEN$ON equ 0x0
global __CFG_IESO$ON
__CFG_IESO$ON equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_VREGEN$ON
__CFG_VREGEN$ON equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_CCP2MX$ON
__CFG_CCP2MX$ON equ 0x0
global __CFG_PBADEN$ON
__CFG_PBADEN$ON equ 0x0
global __CFG_LPT1OSC$ON
__CFG_LPT1OSC$ON equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_ICPRT$OFF
__CFG_ICPRT$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_DEBUG$OFF
__CFG_DEBUG$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"USB-PIC-IO-Algo.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_FCI_TMP_STR
	global	_FCI_TMP_STR
_FCI_TMP_STR:
       ds      20
	global	_FCI_TMP_INT
	global	_FCI_TMP_INT
_FCI_TMP_INT:
       ds      2
	global	_errno
_errno:
       ds      2
	global	_FCV_INBYTE0
_FCV_INBYTE0:
       ds      1
	global	_FCV_INBYTE1
_FCV_INBYTE1:
       ds      1
	global	_FCV_OUTBYTE0
_FCV_OUTBYTE0:
       ds      1
	global	_FCV_OUTBYTE1
_FCV_OUTBYTE1:
       ds      1
	file	"USB-PIC-IO-Algo.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (28 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	28
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_delay_ms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_myisr:	; 1 bytes @ 0x0
??_myisr:	; 1 bytes @ 0x0
	ds   14
?_FC_CAL_Port_In_DDR__x:	; 1 bytes @ 0xE
??_delay_ms:	; 1 bytes @ 0xE
	global	delay_ms@del
delay_ms@del:	; 1 bytes @ 0xE
	global	FC_CAL_Port_In_DDR__x@Port
FC_CAL_Port_In_DDR__x@Port:	; 2 bytes @ 0xE
	ds   2
	global	FC_CAL_Port_In_DDR__x@Tris
FC_CAL_Port_In_DDR__x@Tris:	; 2 bytes @ 0x10
	ds   2
	global	FC_CAL_Port_In_DDR__x@InMask
FC_CAL_Port_In_DDR__x@InMask:	; 1 bytes @ 0x12
	ds   1
	global	FC_CAL_Port_In_DDR__x@Shift
FC_CAL_Port_In_DDR__x@Shift:	; 1 bytes @ 0x13
	ds   1
??_FC_CAL_Port_In_DDR__x:	; 1 bytes @ 0x14
	ds   2
??_main:	; 1 bytes @ 0x16
	global	main@ptmp
main@ptmp:	; 1 bytes @ 0x16
	ds   1
	global	main@ptmp_330
main@ptmp_330:	; 1 bytes @ 0x17
	ds   1
	global	main@ptmp_331
main@ptmp_331:	; 1 bytes @ 0x18
	ds   1
	global	main@ptmp_332
main@ptmp_332:	; 1 bytes @ 0x19
	ds   1
	global	main@ptmp_333
main@ptmp_333:	; 1 bytes @ 0x1A
	ds   1
	global	main@ptmp_334
main@ptmp_334:	; 1 bytes @ 0x1B
	ds   1
	global	main@ptmp_335
main@ptmp_335:	; 1 bytes @ 0x1C
	ds   1
	global	main@ptmp_336
main@ptmp_336:	; 1 bytes @ 0x1D
	ds   1
	global	main@ptmp_337
main@ptmp_337:	; 1 bytes @ 0x1E
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         28
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     31      59
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    sp__FCI_NUMBER_TO_HEX	PTR unsigned char  size(2) Largest target is 0
;!
;!    sp__FCI_FLOAT_TO_STRING	PTR unsigned char  size(2) Largest target is 0
;!
;!    sp__FCI_TOSTRING	PTR unsigned char  size(2) Largest target is 12
;!		 -> FCI_FLOAT_TO_STRING@temp_string(COMRAM[12]), 
;!
;!    sp__FCI_RIGHTSTRING	PTR unsigned char  size(2) Largest target is 0
;!
;!    sp__FCI_LEFTSTRING	PTR unsigned char  size(2) Largest target is 0
;!
;!    sp__FCI_MIDSTRING	PTR unsigned char  size(2) Largest target is 0
;!
;!    FC_CAL_Port_In_DDR__x@Port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTD(SFR[1]), 
;!
;!    FC_CAL_Port_In_DDR__x@Tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISD(SFR[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_FC_CAL_Port_In_DDR__x
;!
;!Critical Paths under _myisr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 9     9      0     866
;!                                             22 COMRAM     9     9      0
;!              _FC_CAL_Port_In_DDR__x
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             1     1      0      15
;!                                             14 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _FC_CAL_Port_In_DDR__x                                8     2      6     644
;!                                             14 COMRAM     8     2      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _myisr                                               14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _FC_CAL_Port_In_DDR__x
;!   _delay_ms
;!
;! _myisr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     1F      3B       1       62.8%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      3B      20        0.0%
;!DATA                 0      0      3B       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 77 in file "USB-PIC-IO-Algo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ptmp            1   30[COMRAM] unsigned char 
;;  ptmp            1   29[COMRAM] unsigned char 
;;  ptmp            1   28[COMRAM] unsigned char 
;;  ptmp            1   27[COMRAM] unsigned char 
;;  ptmp            1   26[COMRAM] unsigned char 
;;  ptmp            1   25[COMRAM] unsigned char 
;;  ptmp            1   24[COMRAM] unsigned char 
;;  ptmp            1   23[COMRAM] unsigned char 
;;  ptmp            1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_FC_CAL_Port_In_DDR__x
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"USB-PIC-IO-Algo.c"
	line	77
global __ptext0
__ptext0:
psect	text0
	file	"USB-PIC-IO-Algo.c"
	line	77
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	line	79
	
l2121:
	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	80
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	81
	movlw	low(08h)
	movwf	((c:3951)),c	;volatile
	line	82
	
l2123:
	bcf	((c:4000)),c,5	;volatile
	line	89
	
l453:
	line	94
	movlw	low(06h)
	movwf	((c:main@ptmp)),c
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l2125:
	movff	(c:main@ptmp),(c:3969)	;volatile
	line	97
	
l2127:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	101
	
l2129:
		movlw	low(3971)
	movwf	((c:FC_CAL_Port_In_DDR__x@Port)),c
	movlw	high(3971)
	movwf	((c:FC_CAL_Port_In_DDR__x@Port+1)),c

		movlw	low(3989)
	movwf	((c:FC_CAL_Port_In_DDR__x@Tris)),c
	movlw	high(3989)
	movwf	((c:FC_CAL_Port_In_DDR__x@Tris+1)),c

	movlw	low(0FFh)
	movwf	((c:FC_CAL_Port_In_DDR__x@InMask)),c
	movlw	low(0)
	movwf	((c:FC_CAL_Port_In_DDR__x@Shift)),c
	call	_FC_CAL_Port_In_DDR__x	;wreg free
	movwf	((c:_FCV_INBYTE0)),c
	line	104
	
l2131:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	108
	
l2133:
	movlw	low(09h)
	movwf	((c:main@ptmp_330)),c
	
l2135:
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l2137:
	movff	(c:main@ptmp_330),(c:3969)	;volatile
	line	111
	
l2139:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	115
	
l2141:
		movlw	low(3971)
	movwf	((c:FC_CAL_Port_In_DDR__x@Port)),c
	movlw	high(3971)
	movwf	((c:FC_CAL_Port_In_DDR__x@Port+1)),c

		movlw	low(3989)
	movwf	((c:FC_CAL_Port_In_DDR__x@Tris)),c
	movlw	high(3989)
	movwf	((c:FC_CAL_Port_In_DDR__x@Tris+1)),c

	movlw	low(0FFh)
	movwf	((c:FC_CAL_Port_In_DDR__x@InMask)),c
	movlw	low(0)
	movwf	((c:FC_CAL_Port_In_DDR__x@Shift)),c
	call	_FC_CAL_Port_In_DDR__x	;wreg free
	movwf	((c:_FCV_INBYTE1)),c
	line	118
	
l2143:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	122
	movlw	low(05h)
	movwf	((c:main@ptmp_331)),c
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l2145:
	movff	(c:main@ptmp_331),(c:3969)	;volatile
	line	125
	
l2147:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	131
	
l2149:
	movff	(c:_FCV_INBYTE0),(c:_FCV_OUTBYTE0)
	line	132
	
l2151:
	movf	((c:_FCV_INBYTE0)),c,w
	xorwf	((c:_FCV_INBYTE1)),c,w
	movwf	((c:_FCV_OUTBYTE1)),c
	line	136
	
l2153:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	140
	
l2155:
	movff	(c:_FCV_OUTBYTE0),(c:main@ptmp_332)
	
l2157:
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	
l2159:
	movff	(c:main@ptmp_332),(c:3971)	;volatile
	line	143
	
l2161:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	147
	
l2163:
	movlw	low(015h)
	movwf	((c:main@ptmp_333)),c
	
l2165:
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l2167:
	movff	(c:main@ptmp_333),(c:3969)	;volatile
	line	150
	
l2169:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	154
	
l2171:
	movlw	low(05h)
	movwf	((c:main@ptmp_334)),c
	
l2173:
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l2175:
	movff	(c:main@ptmp_334),(c:3969)	;volatile
	line	157
	
l2177:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	161
	
l2179:
	movff	(c:_FCV_OUTBYTE1),(c:main@ptmp_335)
	
l2181:
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	
l2183:
	movff	(c:main@ptmp_335),(c:3971)	;volatile
	line	164
	
l2185:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	168
	
l2187:
	movlw	low(045h)
	movwf	((c:main@ptmp_336)),c
	
l2189:
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l2191:
	movff	(c:main@ptmp_336),(c:3969)	;volatile
	line	171
	
l2193:
	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	175
	
l2195:
	movlw	low(05h)
	movwf	((c:main@ptmp_337)),c
	
l2197:
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l2199:
	movff	(c:main@ptmp_337),(c:3969)	;volatile
	line	178
	
l2201:
	movlw	(0Ah)&0ffh
	
	call	_delay_ms
	goto	l453
	line	181
	
l454:
	line	89
	goto	l453
	
l455:
	line	183
	
l456:
	goto	l456
	line	184
	
l457:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 100 in file "E:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
;; Parameters:    Size  Location     Type
;;  del             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  del             1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_delay_s
;;		_Wdt_Delay_Ms
;;		_FCI_DELAYINT_MS
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
	line	100
global __ptext1
__ptext1:
psect	text1
	file	"E:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
	line	100
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:
;incstack = 0
	opt	stack 29
	movwf	((c:delay_ms@del)),c
	line	102
	
l1129:
	goto	l1133
	
l60:
	line	104
	
l1131:
	movlw	250
u1817:
	nop
decfsz	wreg,f
	goto	u1817

	goto	l1133
	line	105
	
l59:
	line	102
	
l1133:
	decf	((c:delay_ms@del)),c
		incf	((c:delay_ms@del)),c,w
	btfss	status,2
	goto	u61
	goto	u60

u61:
	goto	l1131
u60:
	goto	l62
	
l61:
	line	106
	
l62:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	_FC_CAL_Port_In_DDR__x

;; *************** function _FC_CAL_Port_In_DDR__x *****************
;; Defined at:
;;		line 83 in file "E:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_IO.c"
;; Parameters:    Size  Location     Type
;;  Port            2   14[COMRAM] PTR volatile unsigned ch
;;		 -> PORTD(1), 
;;  Tris            2   16[COMRAM] PTR volatile unsigned ch
;;		 -> TRISD(1), 
;;  InMask          1   18[COMRAM] unsigned char 
;;  Shift           1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,inline
	file	"E:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_IO.c"
	line	83
global __ptext2
__ptext2:
psect	text2
	file	"E:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_IO.c"
	line	83
	global	__size_of_FC_CAL_Port_In_DDR__x
	__size_of_FC_CAL_Port_In_DDR__x	equ	__end_of_FC_CAL_Port_In_DDR__x-_FC_CAL_Port_In_DDR__x
	
_FC_CAL_Port_In_DDR__x:
;incstack = 0
	opt	stack 29
	line	85
	
l2117:
	movff	(c:FC_CAL_Port_In_DDR__x@Tris),fsr2l
	movff	(c:FC_CAL_Port_In_DDR__x@Tris+1),fsr2h
	movf	indf2,w
	iorwf	((c:FC_CAL_Port_In_DDR__x@InMask)),c,w
	movff	(c:FC_CAL_Port_In_DDR__x@Tris),fsr2l
	movff	(c:FC_CAL_Port_In_DDR__x@Tris+1),fsr2h
	movwf	indf2,c

	line	86
	movff	(c:FC_CAL_Port_In_DDR__x@Shift),??_FC_CAL_Port_In_DDR__x+0+0
	movff	(c:FC_CAL_Port_In_DDR__x@Port),fsr2l
	movff	(c:FC_CAL_Port_In_DDR__x@Port+1),fsr2h
	movf	indf2,w
	andwf	((c:FC_CAL_Port_In_DDR__x@InMask)),c,w
	movwf	(??_FC_CAL_Port_In_DDR__x+1+0)&0ffh,c
	incf	(??_FC_CAL_Port_In_DDR__x+0+0),c
	goto	u1804
u1805:
	bcf	status,0
	rrcf	((??_FC_CAL_Port_In_DDR__x+1+0)),c
u1804:
	decfsz	(??_FC_CAL_Port_In_DDR__x+0+0),c
	goto	u1805
	movf	((??_FC_CAL_Port_In_DDR__x+1+0)),c,w
	goto	l38
	
l2119:
	line	87
	
l38:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_FC_CAL_Port_In_DDR__x
	__end_of_FC_CAL_Port_In_DDR__x:
	signat	_FC_CAL_Port_In_DDR__x,16505
	global	_myisr

;; *************** function _myisr *****************
;; Defined at:
;;		line 191 in file "USB-PIC-IO-Algo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"USB-PIC-IO-Algo.c"
	line	191
	global	__size_of_myisr
	__size_of_myisr	equ	__end_of_myisr-_myisr
	
_myisr:
;incstack = 0
	opt	stack 29
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_myisr+0
	movff	pclat+1,??_myisr+1
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0l+0,??_myisr+2
	movff	fsr0h+0,??_myisr+3
	movff	fsr1l+0,??_myisr+4
	movff	fsr1h+0,??_myisr+5
	movff	fsr2l+0,??_myisr+6
	movff	fsr2h+0,??_myisr+7
	movff	prodl+0,??_myisr+8
	movff	prodh+0,??_myisr+9
	movff	tblptrl+0,??_myisr+10
	movff	tblptrh+0,??_myisr+11
	movff	tblptru+0,??_myisr+12
	movff	tablat+0,??_myisr+13
	line	194
	
i2l460:
	movff	??_myisr+13,tablat+0
	movff	??_myisr+12,tblptru+0
	movff	??_myisr+11,tblptrh+0
	movff	??_myisr+10,tblptrl+0
	movff	??_myisr+9,prodh+0
	movff	??_myisr+8,prodl+0
	movff	??_myisr+7,fsr2h+0
	movff	??_myisr+6,fsr2l+0
	movff	??_myisr+5,fsr1h+0
	movff	??_myisr+4,fsr1l+0
	movff	??_myisr+3,fsr0h+0
	movff	??_myisr+2,fsr0l+0
	movff	??_myisr+1,pclat+1
	movff	??_myisr+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_myisr
	__end_of_myisr:
	signat	_myisr,89
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end

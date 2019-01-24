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
# 51 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 70 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 146 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 219 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 244 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 250 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 327 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 366 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 421 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 476 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 526 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 576 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 635 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 685 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 748 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 829 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 960 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1091 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1222 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1353 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1484 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1615 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1746 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1877 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1964 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2051 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2138 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2225 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2312 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2399 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2486 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2573 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2711 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2820 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2964 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3084 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3254 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3371 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3503 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3591 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3723 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3780 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3785 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3977 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3982 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4198 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4203 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4351 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4356 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4572 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4577 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4673 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4731 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4819 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4907 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4995 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5065 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5135 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5205 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5270 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5276 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5282 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5288 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5293 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5497 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5502 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5794 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5799 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5805 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5810 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5816 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5821 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5827 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5833 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5955 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5961 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5967 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5973 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6068 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6152 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6157 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6313 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6318 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6450 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6455 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6629 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6692 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6698 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6704 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6710 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6715 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6871 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6877 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6883 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6889 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6959 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7049 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7167 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7173 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7179 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7185 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7246 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7315 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7573 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7579 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7585 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7682 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7687 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7791 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7797 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7901 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7907 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7913 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7919 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8067 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8094 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8099 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8363 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8445 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8514 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8520 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8526 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8532 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8610 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8616 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8622 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8628 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8634 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8640 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8646 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8652 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8658 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8664 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8670 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8676 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8682 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8688 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8694 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8700 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8706 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8712 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8718 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8724 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8730 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8736 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8742 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8748 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8754 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8760 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8766 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8857 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8933 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9049 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9055 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9061 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9067 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9075 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9081 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9087 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9093 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9101 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9108 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9114 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9120 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9126 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9132 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9207 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9213 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9219 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9225 "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_FCD_056e1_USB_Serial1__Initialise
	FNCALL	_main,_FCD_056e1_USB_Serial1__ReadByte
	FNCALL	_main,_FCD_056e1_USB_Serial1__SendByte
	FNCALL	_main,_FCD_056e1_USB_Serial1__SendString
	FNCALL	_main,_FCI_DELAYINT_MS
	FNCALL	_main,_FC_CAL_Port_In_DDR__x
	FNCALL	_main,_delay_ms
	FNCALL	_FCI_DELAYINT_MS,_delay_ms
	FNCALL	_FCD_056e1_USB_Serial1__SendString,_CDCTxService
	FNCALL	_FCD_056e1_USB_Serial1__SendString,_FCI_GETLENGTH
	FNCALL	_FCD_056e1_USB_Serial1__SendString,_putUSBUSART
	FNCALL	_FCD_056e1_USB_Serial1__SendByte,_CDCTxService
	FNCALL	_FCD_056e1_USB_Serial1__SendByte,_putUSBUSART
	FNCALL	_CDCTxService,_USBTransferOnePacket
	FNCALL	_FCD_056e1_USB_Serial1__ReadByte,_delay_us
	FNCALL	_FCD_056e1_USB_Serial1__ReadByte,_getsUSBUSART
	FNCALL	_getsUSBUSART,_USBTransferOnePacket
	FNCALL	_FCD_056e1_USB_Serial1__Initialise,_USBDeviceAttach
	FNCALL	_FCD_056e1_USB_Serial1__Initialise,_USBDeviceInit
	FNCALL	_USBDeviceInit,_memset
	FNROOT	_main
	FNCALL	_myisr,_USBDeviceTasks
	FNCALL	_USBDeviceTasks,_USBCtrlEPAllowStatusStage
	FNCALL	_USBDeviceTasks,_USBCtrlEPService
	FNCALL	_USBDeviceTasks,_USBIncrement1msInternalTimers
	FNCALL	_USBDeviceTasks,_USBStallHandler
	FNCALL	_USBDeviceTasks,_USBSuspend
	FNCALL	_USBDeviceTasks,_USBWakeFromSuspend
	FNCALL	_USBDeviceTasks,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBDeviceTasks,i2_USBDeviceInit
	FNCALL	i2_USBDeviceInit,i2_memset
	FNCALL	_USBWakeFromSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlEPService,_USBCtrlTrfInHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfOutHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfSetupHandler
	FNCALL	_USBCtrlEPService,_memcpy
	FNCALL	_USBCtrlTrfSetupHandler,_USBCheckStdRequest
	FNCALL	_USBCtrlTrfSetupHandler,_USBCtrlEPServiceComplete
	FNCALL	_USBCtrlTrfSetupHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowDataStage
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlEPAllowDataStage,_USBCtrlTrfTxService
	FNCALL	_USBCheckStdRequest,_USBStdFeatureReqHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetDscHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetStatusHandler
	FNCALL	_USBCheckStdRequest,_USBStdSetCfgHandler
	FNCALL	_USBCheckStdRequest,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,i2_memset
	FNCALL	_USBStdFeatureReqHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_CDCInitEP
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCheckCDCRequest
	FNCALL	_CDCInitEP,_USBEnableEndpoint
	FNCALL	_CDCInitEP,i2_USBTransferOnePacket
	FNCALL	_USBEnableEndpoint,_USBConfigureEndpoint
	FNCALL	_USBCtrlTrfOutHandler,_USBCtrlTrfRxService
	FNCALL	_USBCtrlTrfRxService,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlTrfInHandler,_USBCtrlTrfTxService
	FNCALL	intlevel2,_myisr
	global	intlevel2
	FNROOT	intlevel2
	global	_FCV_READ_BYTE
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"Flowcode1.c"
	line	57

;initializer for _FCV_READ_BYTE
	db	low(061h)
	global	_USB_SD_Ptr
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_descriptors.c"
	line	288
_USB_SD_Ptr:
		db	low(_sd000)
	db	high(_sd000)

		db	low(_sd001)
	db	high(_sd001)

		db	low(_sd002)
	db	high(_sd002)

	global __end_of_USB_SD_Ptr
__end_of_USB_SD_Ptr:
	global	_USB_CD_Ptr
psect	smallconst
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_descriptors.c"
	line	283
_USB_CD_Ptr:
		db	low(_configDescriptor1)
	db	high(_configDescriptor1)

	global __end_of_USB_CD_Ptr
__end_of_USB_CD_Ptr:
	global	_configDescriptor1
psect	smallconst
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_descriptors.c"
	line	180
_configDescriptor1:
	db	low(09h)
	db	low(02h)
	db	low(043h)
	db	low(0)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(0C0h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(02h)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(05h)
	db	low(024h)
	db	low(0)
	db	low(010h)
	db	low(01h)
	db	low(04h)
	db	low(024h)
	db	low(02h)
	db	low(02h)
	db	low(05h)
	db	low(024h)
	db	low(06h)
	db	low(0)
	db	low(01h)
	db	low(05h)
	db	low(024h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(03h)
	db	low(08h)
	db	low(0)
	db	low(02h)
	db	low(09h)
	db	low(04h)
	db	low(01h)
	db	low(0)
	db	low(02h)
	db	low(0Ah)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(02h)
	db	low(02h)
	db	low(040h)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(082h)
	db	low(02h)
	db	low(040h)
	db	low(0)
	db	low(0)
	global __end_of_configDescriptor1
__end_of_configDescriptor1:
	global	_sd001
psect	smallconst
	file	"Flowcode1.c"
	line	159
_sd001:
	db	low(02Eh)
	db	low(03h)
	dw	(04Dh)&0ffffh
	dw	(061h)&0ffffh
	dw	(074h)&0ffffh
	dw	(072h)&0ffffh
	dw	(069h)&0ffffh
	dw	(078h)&0ffffh
	dw	(020h)&0ffffh
	dw	(04Dh)&0ffffh
	dw	(075h)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(074h)&0ffffh
	dw	(069h)&0ffffh
	dw	(06Dh)&0ffffh
	dw	(065h)&0ffffh
	dw	(064h)&0ffffh
	dw	(069h)&0ffffh
	dw	(061h)&0ffffh
	dw	(020h)&0ffffh
	dw	(04Ch)&0ffffh
	dw	(074h)&0ffffh
	dw	(064h)&0ffffh
	dw	(02Eh)&0ffffh
	global __end_of_sd001
__end_of_sd001:
	global	_device_dsc
psect	smallconst
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_descriptors.c"
	line	161
_device_dsc:
	db	low(012h)
	db	low(01h)
	dw	(0200h)&0ffffh
	db	low(02h)
	db	low(0)
	db	low(0)
	db	low(08h)
	dw	(012BFh)&0ffffh
	dw	(0F010h)&0ffffh
	dw	(0100h)&0ffffh
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_device_dsc
__end_of_device_dsc:
	global	_sd002
psect	smallconst
	file	"Flowcode1.c"
	line	160
_sd002:
	db	low(012h)
	db	low(03h)
	dw	(048h)&0ffffh
	dw	(061h)&0ffffh
	dw	(072h)&0ffffh
	dw	(073h)&0ffffh
	dw	(068h)&0ffffh
	dw	(061h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(061h)&0ffffh
	global __end_of_sd002
__end_of_sd002:
	global	_sd000
psect	smallconst
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_descriptors.c"
	line	266
_sd000:
	db	low(04h)
	db	low(03h)
	dw	(0409h)&0ffffh
	global __end_of_sd000
__end_of_sd000:
	global	_USB_SD_Ptr
	global	_USB_CD_Ptr
	global	_configDescriptor1
	global	_sd001
	global	_device_dsc
	global	_sd002
	global	_sd000
	global	_outPipes
	global	_inPipes
	global	_pBDTEntryIn
	global	_CDCDataOutHandle
	global	_pBDTEntryEP0OutCurrent
	global	_pBDTEntryEP0OutNext
	global	_BothEP0OutUOWNsSet
	global	_RemoteWakeup
	global	_USBBusIsSuspended
	global	_USBDeferStatusStagePacket
	global	_USBDeviceState
	global	_USBStatusStageEnabledFlag1
	global	_USBStatusStageEnabledFlag2
	global	_USBStatusStageTimeoutCounter
	global	_cdc_rx_len
	global	_cdc_trf_state
	global	_cdc_tx_len
	global	_controlTransferState
	global	_endpoint_number
	global	_shortPacketStatus
	global	_USBActiveConfiguration
	global	_USTATcopy
	global	_pBDTEntryOut
	global	_USB1msTickCount
	global	_ep_data_in
	global	_ep_data_out
	global	_pCDCDst
	global	_pCDCSrc
	global	_CDCDataInHandle
	global	_pDst
	global	_FCV_INPUT_SWITCHES
	global	_USBDeferINDataStagePackets
	global	_USBDeferOUTDataStagePackets
	global	_USBTicksSinceSuspendEnd
	global	_cdc_mem_type
	global	_control_signal_bitmap
	global	_dummy_encapsulated_cmd_response
	global	_line_coding
	global	_USBAlternateInterface
	global	_BDT

	DABS	1,1024,48,_BDT
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_IPR2bits
_IPR2bits	set	0xFA2
	global	_LATA
_LATA	set	0xF89
	global	_PIE2bits
_PIE2bits	set	0xFA0
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_PORTA
_PORTA	set	0xF80
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_TRISA
_TRISA	set	0xF92
	global	_UADDR
_UADDR	set	0xF6E
	global	_UCFG
_UCFG	set	0xF6F
	global	_UCON
_UCON	set	0xF6D
	global	_UCONbits
_UCONbits	set	0xF6D
	global	_UEIE
_UEIE	set	0xF6B
	global	_UEIR
_UEIR	set	0xF6A
	global	_UEP0bits
_UEP0bits	set	0xF70
	global	_UIE
_UIE	set	0xF69
	global	_UIEbits
_UIEbits	set	0xF69
	global	_UIR
_UIR	set	0xF68
	global	_UIRbits
_UIRbits	set	0xF68
	global	_USTAT
_USTAT	set	0xF6C
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTD
_PORTD	set	0xF83
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISD
_TRISD	set	0xF95
	global	_UEP0
_UEP0	set	0xF70
	global	_UEP1
_UEP1	set	0xF71
	global	_cdc_data_tx

	DABS	1,1280,64,_cdc_data_tx
	global	_CtrlTrfData

	DABS	1,1080,8,_CtrlTrfData
	global	_SetupPkt

	DABS	1,1072,8,_SetupPkt
	global	_cdc_data_rx

	DABS	1,1344,64,_cdc_data_rx
	
STR_1:; BSR set to: 0

	db	72	;'H'
	db	69	;'E'
	db	76	;'L'
	db	76	;'L'
	db	79	;'O'
	db	32
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	76	;'L'
	db	68	;'D'
	db	0
; #config settings
global __CFG_PLLDIV$5
__CFG_PLLDIV$5 equ 0x0
global __CFG_CPUDIV$OSC2_PLL3
__CFG_CPUDIV$OSC2_PLL3 equ 0x0
global __CFG_USBDIV$2
__CFG_USBDIV$2 equ 0x0
global __CFG_FOSC$HSPLL_HS
__CFG_FOSC$HSPLL_HS equ 0x0
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
	file	"Flowcode1.as"
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
	global	_outPipes
_outPipes:
       ds      8
	global	_inPipes
_inPipes:
       ds      6
	global	_pBDTEntryIn
_pBDTEntryIn:
       ds      6
	global	_CDCDataOutHandle
_CDCDataOutHandle:
       ds      2
	global	_pBDTEntryEP0OutCurrent
_pBDTEntryEP0OutCurrent:
       ds      2
	global	_pBDTEntryEP0OutNext
_pBDTEntryEP0OutNext:
       ds      2
	global	_BothEP0OutUOWNsSet
_BothEP0OutUOWNsSet:
       ds      1
	global	_RemoteWakeup
_RemoteWakeup:
       ds      1
	global	_USBBusIsSuspended
_USBBusIsSuspended:
       ds      1
	global	_USBDeferStatusStagePacket
_USBDeferStatusStagePacket:
       ds      1
	global	_USBDeviceState
_USBDeviceState:
       ds      1
	global	_USBStatusStageEnabledFlag1
_USBStatusStageEnabledFlag1:
       ds      1
	global	_USBStatusStageEnabledFlag2
_USBStatusStageEnabledFlag2:
       ds      1
	global	_USBStatusStageTimeoutCounter
_USBStatusStageTimeoutCounter:
       ds      1
	global	_cdc_rx_len
_cdc_rx_len:
       ds      1
	global	_cdc_trf_state
_cdc_trf_state:
       ds      1
	global	_cdc_tx_len
_cdc_tx_len:
       ds      1
	global	_controlTransferState
_controlTransferState:
       ds      1
	global	_endpoint_number
_endpoint_number:
       ds      1
	global	_shortPacketStatus
_shortPacketStatus:
       ds      1
	global	_USBActiveConfiguration
_USBActiveConfiguration:
       ds      1
	global	_USTATcopy
_USTATcopy:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_FCI_TMP_STR
	global	_FCI_TMP_STR
_FCI_TMP_STR:
       ds      20
	global	_cdc_notice
	global	_cdc_notice
_cdc_notice:
       ds      10
	global	_pBDTEntryOut
_pBDTEntryOut:
       ds      6
	global	_BaudRateGen
	global	_BaudRateGen
_BaudRateGen:
       ds      4
	global	_USB1msTickCount
_USB1msTickCount:
       ds      4
	global	_ep_data_in
_ep_data_in:
       ds      3
	global	_ep_data_out
_ep_data_out:
       ds      3
	global	_pCDCDst
_pCDCDst:
       ds      3
	global	_pCDCSrc
_pCDCSrc:
       ds      3
	global	_CDCDataInHandle
_CDCDataInHandle:
       ds      2
	global	_FCI_TMP_INT
	global	_FCI_TMP_INT
_FCI_TMP_INT:
       ds      2
	global	_errno
_errno:
       ds      2
	global	_pDst
_pDst:
       ds      2
	global	_FCV_INPUT_SWITCHES
_FCV_INPUT_SWITCHES:
       ds      1
	global	_USBDeferINDataStagePackets
_USBDeferINDataStagePackets:
       ds      1
	global	_USBDeferOUTDataStagePackets
_USBDeferOUTDataStagePackets:
       ds      1
	global	_USBTicksSinceSuspendEnd
_USBTicksSinceSuspendEnd:
       ds      1
	global	_cdc_mem_type
_cdc_mem_type:
       ds      1
	global	_control_signal_bitmap
_control_signal_bitmap:
       ds      1
	global	_dummy_encapsulated_cmd_response
_dummy_encapsulated_cmd_response:
       ds      8
	global	_line_coding
_line_coding:
       ds      7
	global	_USBAlternateInterface
_USBAlternateInterface:
       ds      2
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"Flowcode1.c"
	line	57
	global	_FCV_READ_BYTE
_FCV_READ_BYTE:
       ds      1
	file	"Flowcode1.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (1 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataBANK0+0		
	line	#
; Clear objects allocated to BANK0 (87 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	87
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (42 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	42
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_FC_CAL_Port_In_DDR__x:	; 1 bytes @ 0x0
??_delay_us:	; 1 bytes @ 0x0
??_delay_ms:	; 1 bytes @ 0x0
??_USBDeviceAttach:	; 1 bytes @ 0x0
?_putUSBUSART:	; 1 bytes @ 0x0
?_memset:	; 2 bytes @ 0x0
	global	?_FCI_GETLENGTH
?_FCI_GETLENGTH:	; 2 bytes @ 0x0
	global	?_USBTransferOnePacket
?_USBTransferOnePacket:	; 2 bytes @ 0x0
	global	delay_us@del
delay_us@del:	; 1 bytes @ 0x0
	global	USBTransferOnePacket@dir
USBTransferOnePacket@dir:	; 1 bytes @ 0x0
	global	FC_CAL_Port_In_DDR__x@Port
FC_CAL_Port_In_DDR__x@Port:	; 2 bytes @ 0x0
	global	FCI_GETLENGTH@sStr1
FCI_GETLENGTH@sStr1:	; 2 bytes @ 0x0
	global	putUSBUSART@data
putUSBUSART@data:	; 2 bytes @ 0x0
	global	memset@p1
memset@p1:	; 2 bytes @ 0x0
	ds   1
	global	delay_ms@del
delay_ms@del:	; 1 bytes @ 0x1
	global	USBTransferOnePacket@data
USBTransferOnePacket@data:	; 2 bytes @ 0x1
	ds   1
?_FCI_DELAYINT_MS:	; 1 bytes @ 0x2
	global	putUSBUSART@length
putUSBUSART@length:	; 1 bytes @ 0x2
	global	FC_CAL_Port_In_DDR__x@Tris
FC_CAL_Port_In_DDR__x@Tris:	; 2 bytes @ 0x2
	global	FCI_DELAYINT_MS@Delay
FCI_DELAYINT_MS@Delay:	; 2 bytes @ 0x2
	global	FCI_GETLENGTH@iStr1_len
FCI_GETLENGTH@iStr1_len:	; 2 bytes @ 0x2
	global	memset@c
memset@c:	; 2 bytes @ 0x2
	ds   1
??_putUSBUSART:	; 1 bytes @ 0x3
	global	USBTransferOnePacket@len
USBTransferOnePacket@len:	; 1 bytes @ 0x3
	ds   1
??_FCI_DELAYINT_MS:	; 1 bytes @ 0x4
??_FCI_GETLENGTH:	; 1 bytes @ 0x4
??_USBTransferOnePacket:	; 1 bytes @ 0x4
	global	FC_CAL_Port_In_DDR__x@InMask
FC_CAL_Port_In_DDR__x@InMask:	; 1 bytes @ 0x4
	global	USBTransferOnePacket@ep
USBTransferOnePacket@ep:	; 1 bytes @ 0x4
	global	memset@n
memset@n:	; 2 bytes @ 0x4
	ds   1
	global	FC_CAL_Port_In_DDR__x@Shift
FC_CAL_Port_In_DDR__x@Shift:	; 1 bytes @ 0x5
	global	USBTransferOnePacket@handle
USBTransferOnePacket@handle:	; 2 bytes @ 0x5
	ds   1
??_memset:	; 1 bytes @ 0x6
??_FC_CAL_Port_In_DDR__x:	; 1 bytes @ 0x6
	global	FCI_GETLENGTH@tmp
FCI_GETLENGTH@tmp:	; 2 bytes @ 0x6
	global	memset@p
memset@p:	; 2 bytes @ 0x6
	ds   1
?_getsUSBUSART:	; 1 bytes @ 0x7
??_CDCTxService:	; 1 bytes @ 0x7
	global	CDCTxService@i
CDCTxService@i:	; 1 bytes @ 0x7
	global	getsUSBUSART@buffer
getsUSBUSART@buffer:	; 2 bytes @ 0x7
	ds   1
??_USBDeviceInit:	; 1 bytes @ 0x8
	global	USBDeviceInit@i
USBDeviceInit@i:	; 1 bytes @ 0x8
	global	CDCTxService@byte_to_send
CDCTxService@byte_to_send:	; 1 bytes @ 0x8
	ds   1
?_FCD_056e1_USB_Serial1__SendString:	; 1 bytes @ 0x9
??_FCD_056e1_USB_Serial1__SendByte:	; 1 bytes @ 0x9
??_FCD_056e1_USB_Serial1__Initialise:	; 1 bytes @ 0x9
	global	getsUSBUSART@len
getsUSBUSART@len:	; 1 bytes @ 0x9
	global	FCD_056e1_USB_Serial1__SendByte@FCR_RETVAL
FCD_056e1_USB_Serial1__SendByte@FCR_RETVAL:	; 1 bytes @ 0x9
	global	FCD_056e1_USB_Serial1__SendString@FCL_DATA
FCD_056e1_USB_Serial1__SendString@FCL_DATA:	; 2 bytes @ 0x9
	global	FCD_056e1_USB_Serial1__Initialise@FCL_DELAY_COUNTER
FCD_056e1_USB_Serial1__Initialise@FCL_DELAY_COUNTER:	; 2 bytes @ 0x9
	ds   1
??_getsUSBUSART:	; 1 bytes @ 0xA
	global	FCD_056e1_USB_Serial1__SendByte@FCL_DATA
FCD_056e1_USB_Serial1__SendByte@FCL_DATA:	; 1 bytes @ 0xA
	ds   1
	global	?_FCD_056e1_USB_Serial1__ReadByte
?_FCD_056e1_USB_Serial1__ReadByte:	; 2 bytes @ 0xB
	global	FCD_056e1_USB_Serial1__Initialise@FCR_RETVAL
FCD_056e1_USB_Serial1__Initialise@FCR_RETVAL:	; 1 bytes @ 0xB
	global	FCD_056e1_USB_Serial1__SendString@FCLsz_DATA
FCD_056e1_USB_Serial1__SendString@FCLsz_DATA:	; 2 bytes @ 0xB
	global	FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT
FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT:	; 2 bytes @ 0xB
	ds   2
??_FCD_056e1_USB_Serial1__SendString:	; 1 bytes @ 0xD
??_FCD_056e1_USB_Serial1__ReadByte:	; 1 bytes @ 0xD
	global	FCD_056e1_USB_Serial1__SendString@FCR_RETVAL
FCD_056e1_USB_Serial1__SendString@FCR_RETVAL:	; 1 bytes @ 0xD
	ds   1
	global	FCD_056e1_USB_Serial1__SendString@FCL_LENGTH
FCD_056e1_USB_Serial1__SendString@FCL_LENGTH:	; 1 bytes @ 0xE
	global	FCD_056e1_USB_Serial1__ReadByte@FCL_WAIT_FOREVER
FCD_056e1_USB_Serial1__ReadByte@FCL_WAIT_FOREVER:	; 1 bytes @ 0xE
	ds   1
	global	FCD_056e1_USB_Serial1__ReadByte@inner
FCD_056e1_USB_Serial1__ReadByte@inner:	; 1 bytes @ 0xF
	global	FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT
FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT:	; 2 bytes @ 0xF
	ds   1
	global	FCD_056e1_USB_Serial1__ReadByte@FCL_TIMEOUT_MS
FCD_056e1_USB_Serial1__ReadByte@FCL_TIMEOUT_MS:	; 1 bytes @ 0x10
	ds   1
	global	FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL
FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL:	; 2 bytes @ 0x11
	ds   2
	global	FCD_056e1_USB_Serial1__ReadByte@numBytesRead
FCD_056e1_USB_Serial1__ReadByte@numBytesRead:	; 2 bytes @ 0x13
	ds   2
	global	FCD_056e1_USB_Serial1__ReadByte@retval
FCD_056e1_USB_Serial1__ReadByte@retval:	; 1 bytes @ 0x15
	ds   1
??_main:	; 1 bytes @ 0x16
	global	main@ptmp
main@ptmp:	; 1 bytes @ 0x16
	ds   1
	global	main@ptmp_1957
main@ptmp_1957:	; 1 bytes @ 0x17
	ds   1
	global	main@ptmp_1959
main@ptmp_1959:	; 1 bytes @ 0x18
	ds   1
	global	main@ptmp_1960
main@ptmp_1960:	; 1 bytes @ 0x19
	ds   1
	global	main@ptmp_1966
main@ptmp_1966:	; 1 bytes @ 0x1A
	ds   1
	global	main@ptmp_1967
main@ptmp_1967:	; 1 bytes @ 0x1B
	ds   1
	global	main@ptmp_1968
main@ptmp_1968:	; 1 bytes @ 0x1C
	ds   1
	global	main@ptmp_1969
main@ptmp_1969:	; 1 bytes @ 0x1D
	ds   1
	global	main@ptmp_1970
main@ptmp_1970:	; 1 bytes @ 0x1E
	ds   1
	global	main@ptmp_1972
main@ptmp_1972:	; 1 bytes @ 0x1F
	ds   1
	global	main@ptmp_1973
main@ptmp_1973:	; 1 bytes @ 0x20
	ds   1
	global	main@ptmp_1974
main@ptmp_1974:	; 1 bytes @ 0x21
	ds   1
	global	main@ptmp_1975
main@ptmp_1975:	; 1 bytes @ 0x22
	ds   1
	global	main@ptmp_1976
main@ptmp_1976:	; 1 bytes @ 0x23
	ds   1
	global	main@ptmp_1977
main@ptmp_1977:	; 1 bytes @ 0x24
	ds   1
	global	main@ptmp_1978
main@ptmp_1978:	; 1 bytes @ 0x25
	ds   1
	global	main@ptmp_1979
main@ptmp_1979:	; 1 bytes @ 0x26
	ds   1
	global	main@ptmp_1980
main@ptmp_1980:	; 1 bytes @ 0x27
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_USBWakeFromSuspend:	; 1 bytes @ 0x0
?_USBSuspend:	; 1 bytes @ 0x0
?_USBIncrement1msInternalTimers:	; 1 bytes @ 0x0
??_USBIncrement1msInternalTimers:	; 1 bytes @ 0x0
?_USBCtrlEPAllowStatusStage:	; 1 bytes @ 0x0
??_USBCtrlEPAllowStatusStage:	; 1 bytes @ 0x0
?_USBStallHandler:	; 1 bytes @ 0x0
??_USBStallHandler:	; 1 bytes @ 0x0
?_USBCtrlEPService:	; 1 bytes @ 0x0
?_USBConfigureEndpoint:	; 1 bytes @ 0x0
?_USBCtrlTrfTxService:	; 1 bytes @ 0x0
??_USBCtrlTrfTxService:	; 1 bytes @ 0x0
?_USBCtrlTrfSetupHandler:	; 1 bytes @ 0x0
?_USBCtrlTrfOutHandler:	; 1 bytes @ 0x0
?_USBCtrlTrfInHandler:	; 1 bytes @ 0x0
?_USBCheckStdRequest:	; 1 bytes @ 0x0
?_USBStdFeatureReqHandler:	; 1 bytes @ 0x0
?_delay_us:	; 1 bytes @ 0x0
?_delay_ms:	; 1 bytes @ 0x0
?_USBDeviceInit:	; 1 bytes @ 0x0
?_USBDeviceTasks:	; 1 bytes @ 0x0
?_USBDeviceAttach:	; 1 bytes @ 0x0
?_USBCtrlEPAllowDataStage:	; 1 bytes @ 0x0
?_USBCtrlEPServiceComplete:	; 1 bytes @ 0x0
?_USBCtrlTrfRxService:	; 1 bytes @ 0x0
??_USBCtrlTrfRxService:	; 1 bytes @ 0x0
?_USBStdSetCfgHandler:	; 1 bytes @ 0x0
?_USBStdGetDscHandler:	; 1 bytes @ 0x0
??_USBStdGetDscHandler:	; 1 bytes @ 0x0
?_USBStdGetStatusHandler:	; 1 bytes @ 0x0
??_USBStdGetStatusHandler:	; 1 bytes @ 0x0
?_USBCheckCDCRequest:	; 1 bytes @ 0x0
??_USBCheckCDCRequest:	; 1 bytes @ 0x0
?_CDCInitEP:	; 1 bytes @ 0x0
?_CDCTxService:	; 1 bytes @ 0x0
?_FCD_056e1_USB_Serial1__SendByte:	; 1 bytes @ 0x0
?_FCD_056e1_USB_Serial1__Initialise:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_myisr:	; 1 bytes @ 0x0
?i2_USBDeviceInit:	; 1 bytes @ 0x0
?_memcpy:	; 2 bytes @ 0x0
	global	?i2_USBTransferOnePacket
?i2_USBTransferOnePacket:	; 2 bytes @ 0x0
?i2_memset:	; 2 bytes @ 0x0
	global	USBConfigureEndpoint@direction
USBConfigureEndpoint@direction:	; 1 bytes @ 0x0
	global	USBCtrlTrfTxService@byteToSend
USBCtrlTrfTxService@byteToSend:	; 1 bytes @ 0x0
	global	USBCtrlTrfRxService@i
USBCtrlTrfRxService@i:	; 1 bytes @ 0x0
	global	i2USBTransferOnePacket@dir
i2USBTransferOnePacket@dir:	; 1 bytes @ 0x0
	global	memcpy@d1
memcpy@d1:	; 2 bytes @ 0x0
	global	i2memset@p1
i2memset@p1:	; 2 bytes @ 0x0
	ds   1
??_USBConfigureEndpoint:	; 1 bytes @ 0x1
??_USBCtrlTrfInHandler:	; 1 bytes @ 0x1
??_USBCtrlEPAllowDataStage:	; 1 bytes @ 0x1
??_USBCtrlEPServiceComplete:	; 1 bytes @ 0x1
	global	USBCtrlTrfRxService@byteToRead
USBCtrlTrfRxService@byteToRead:	; 1 bytes @ 0x1
	global	USBCtrlTrfInHandler@lastDTS
USBCtrlTrfInHandler@lastDTS:	; 1 bytes @ 0x1
	global	USBStdGetStatusHandler@p
USBStdGetStatusHandler@p:	; 2 bytes @ 0x1
	global	i2USBTransferOnePacket@data
i2USBTransferOnePacket@data:	; 2 bytes @ 0x1
	ds   1
??_USBCtrlTrfOutHandler:	; 1 bytes @ 0x2
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x2
	global	i2memset@c
i2memset@c:	; 2 bytes @ 0x2
	ds   1
	global	i2USBTransferOnePacket@len
i2USBTransferOnePacket@len:	; 1 bytes @ 0x3
	ds   1
??i2_USBTransferOnePacket:	; 1 bytes @ 0x4
	global	i2USBTransferOnePacket@ep
i2USBTransferOnePacket@ep:	; 1 bytes @ 0x4
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x4
	global	i2memset@n
i2memset@n:	; 2 bytes @ 0x4
	ds   1
	global	USBConfigureEndpoint@EPNum
USBConfigureEndpoint@EPNum:	; 1 bytes @ 0x5
	global	i2USBTransferOnePacket@handle
i2USBTransferOnePacket@handle:	; 2 bytes @ 0x5
	ds   1
??_memcpy:	; 1 bytes @ 0x6
??i2_memset:	; 1 bytes @ 0x6
	global	USBConfigureEndpoint@handle
USBConfigureEndpoint@handle:	; 2 bytes @ 0x6
	global	memcpy@d
memcpy@d:	; 2 bytes @ 0x6
	global	i2memset@p
i2memset@p:	; 2 bytes @ 0x6
	ds   2
?_USBEnableEndpoint:	; 1 bytes @ 0x8
??i2_USBDeviceInit:	; 1 bytes @ 0x8
	global	USBEnableEndpoint@options
USBEnableEndpoint@options:	; 1 bytes @ 0x8
	global	i2USBDeviceInit@i
i2USBDeviceInit@i:	; 1 bytes @ 0x8
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0x8
	ds   1
??_USBEnableEndpoint:	; 1 bytes @ 0x9
	global	USBEnableEndpoint@p
USBEnableEndpoint@p:	; 2 bytes @ 0x9
	ds   2
	global	USBEnableEndpoint@ep
USBEnableEndpoint@ep:	; 1 bytes @ 0xB
	ds   1
?_USER_USB_CALLBACK_EVENT_HANDLER:	; 1 bytes @ 0xC
??_CDCInitEP:	; 1 bytes @ 0xC
	global	USER_USB_CALLBACK_EVENT_HANDLER@event
USER_USB_CALLBACK_EVENT_HANDLER@event:	; 2 bytes @ 0xC
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@pdata
USER_USB_CALLBACK_EVENT_HANDLER@pdata:	; 2 bytes @ 0xE
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@size
USER_USB_CALLBACK_EVENT_HANDLER@size:	; 2 bytes @ 0x10
	ds   2
??_USER_USB_CALLBACK_EVENT_HANDLER:	; 1 bytes @ 0x12
	ds   2
??_USBWakeFromSuspend:	; 1 bytes @ 0x14
??_USBSuspend:	; 1 bytes @ 0x14
??_USBStdFeatureReqHandler:	; 1 bytes @ 0x14
??_USBStdSetCfgHandler:	; 1 bytes @ 0x14
	global	USBStdSetCfgHandler@i
USBStdSetCfgHandler@i:	; 1 bytes @ 0x14
	ds   1
	global	USBStdFeatureReqHandler@pUEP
USBStdFeatureReqHandler@pUEP:	; 2 bytes @ 0x15
	ds   2
	global	USBStdFeatureReqHandler@current_ep_data
USBStdFeatureReqHandler@current_ep_data:	; 1 bytes @ 0x17
	ds   1
	global	USBStdFeatureReqHandler@p
USBStdFeatureReqHandler@p:	; 2 bytes @ 0x18
	ds   2
??_USBCtrlEPService:	; 1 bytes @ 0x1A
??_USBCtrlTrfSetupHandler:	; 1 bytes @ 0x1A
??_USBCheckStdRequest:	; 1 bytes @ 0x1A
	ds   1
??_USBDeviceTasks:	; 1 bytes @ 0x1B
	global	USBDeviceTasks@i
USBDeviceTasks@i:	; 1 bytes @ 0x1B
	ds   1
??_myisr:	; 1 bytes @ 0x1C
	ds   14
;!
;!Data Sizes:
;!    Strings     12
;!    Constant    161
;!    Data        1
;!    BSS         129
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     42      84
;!    BANK0           160     40     128
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           192      0       0
;!    BANK5           128      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    USER_USB_CALLBACK_EVENT_HANDLER@pdata	PTR void  size(2) Largest target is 48
;!		 -> USTATcopy(COMRAM[1]), USBActiveConfiguration(COMRAM[1]), NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    memset@p1	PTR void  size(2) Largest target is 48
;!		 -> USBAlternateInterface(BANK0[2]), BDT(BIGRAMl[48]), UEP1(SFR[1]), 
;!
;!    memset@p	PTR unsigned char  size(2) Largest target is 48
;!		 -> USBAlternateInterface(BANK0[2]), BDT(BIGRAMl[48]), UEP1(SFR[1]), 
;!
;!    memcpy@d1	PTR void  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMhl[8]), 
;!
;!    memcpy@d	PTR unsigned char  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMhl[8]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 2047
;!		 -> cdc_data_tx(BIGRAMhl[64]), cdc_data_rx(BIGRAMhh[64]), RAM(DATA[2047]), CtrlTrfData(BIGRAMhl[8]), 
;!		 -> SetupPkt(BIGRAMhl[8]), NULL(NULL[0]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 2047
;!		 -> cdc_data_tx(BIGRAMhl[64]), cdc_data_rx(BIGRAMhh[64]), RAM(DATA[2047]), CtrlTrfData(BIGRAMhl[8]), 
;!		 -> SetupPkt(BIGRAMhl[8]), NULL(NULL[0]), 
;!
;!    FCD_056e1_USB_Serial1__SendString@FCL_DATA	PTR unsigned char  size(2) Largest target is 12
;!		 -> STR_1(CODE[12]), 
;!
;!    putUSBUSART@data	PTR unsigned char  size(2) Largest target is 12
;!		 -> STR_1(CODE[12]), FCD_056e1_USB_Serial1__SendByte@FCL_DATA(BANK0[1]), 
;!
;!    getsUSBUSART@buffer	PTR unsigned char  size(2) Largest target is 1
;!		 -> FCD_056e1_USB_Serial1__ReadByte@retval(BANK0[1]), 
;!
;!    CDCDataInHandle	PTR void  size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    CDCDataOutHandle	PTR void  size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    pCDCDst.wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    pCDCDst.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    pCDCDst.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    pCDCDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S796_POINTER$wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    pCDCSrc.wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    S796_POINTER$bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    pCDCSrc.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S796_POINTER$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    pCDCSrc.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S796_POINTER$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    pCDCSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    USBStdFeatureReqHandler@pUEP	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(SFR[1]), 
;!
;!    USBStdFeatureReqHandler@p	PTR struct __BDT size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    sp__memcpy	PTR void  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMhl[8]), 
;!
;!    USBStdGetStatusHandler@p	PTR struct __BDT size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    USB_SD_Ptr	const PTR const unsigned char [3] size(2) Largest target is 46
;!		 -> sd000(CODE[4]), sd002(CODE[18]), sd001(CODE[46]), 
;!
;!    USB_CD_Ptr	const PTR const unsigned char [1] size(2) Largest target is 67
;!		 -> configDescriptor1(CODE[67]), 
;!
;!    pDst	PTR volatile unsigned char  size(2) Largest target is 8
;!		 -> CtrlTrfData(BIGRAMhl[8]), NULL(NULL[0]), 
;!
;!    USBConfigureEndpoint@handle	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> BDT(BIGRAMl[48]), 
;!
;!    pBDTEntryEP0OutCurrent	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    pBDTEntryEP0OutNext	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    USBTransferOnePacket@data	PTR unsigned char  size(2) Largest target is 64
;!		 -> cdc_data_tx(BIGRAMhl[64]), cdc_data_rx(BIGRAMhh[64]), NULL(NULL[0]), 
;!
;!    sp__USBTransferOnePacket	PTR void  size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    USBTransferOnePacket@handle	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    USBEnableEndpoint@p	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(SFR[1]), 
;!
;!    pBDTEntryOut	PTR volatile struct __BDT[3] size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    pBDTEntryIn	PTR volatile struct __BDT[3] size(2) Largest target is 48
;!		 -> NULL(NULL[0]), BDT(BIGRAMl[48]), 
;!
;!    S118$pFunc	PTR FTN()void  size(2) Largest target is 1
;!		 -> Absolute function(), 
;!
;!    outPipes.pFunc	PTR FTN()void  size(2) Largest target is 1
;!		 -> Absolute function(), 
;!
;!    S108$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    outPipes.pDst.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S108$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    outPipes.pDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S84$wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    S84$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S84$bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S84$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    sp__memset	PTR void  size(2) Largest target is 48
;!		 -> USBAlternateInterface(BANK0[2]), BDT(BIGRAMl[48]), UEP1(SFR[1]), 
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
;!    FCI_GETLENGTH@sStr1	PTR unsigned char  size(2) Largest target is 12
;!		 -> STR_1(CODE[12]), 
;!
;!    FC_CAL_Port_In_DDR__x@Port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(SFR[1]), PORTD(SFR[1]), 
;!
;!    FC_CAL_Port_In_DDR__x@Tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(SFR[1]), TRISD(SFR[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _myisr in COMRAM
;!
;!    _myisr->_USBDeviceTasks
;!    _USBDeviceTasks->_USBCtrlEPService
;!    i2_USBDeviceInit->i2_memset
;!    _USBWakeFromSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBCtrlEPAllowDataStage->_USBCtrlTrfTxService
;!    _USBCheckStdRequest->_USBStdFeatureReqHandler
;!    _USBStdSetCfgHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBStdFeatureReqHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _CDCInitEP->_USBEnableEndpoint
;!    _USBEnableEndpoint->_USBConfigureEndpoint
;!    _USBCtrlTrfOutHandler->_USBCtrlTrfRxService
;!    _USBCtrlTrfInHandler->_USBCtrlTrfTxService
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_FCD_056e1_USB_Serial1__ReadByte
;!    _FCI_DELAYINT_MS->_delay_ms
;!    _FCD_056e1_USB_Serial1__SendString->_CDCTxService
;!    _FCD_056e1_USB_Serial1__SendByte->_CDCTxService
;!    _CDCTxService->_USBTransferOnePacket
;!    _FCD_056e1_USB_Serial1__ReadByte->_getsUSBUSART
;!    _getsUSBUSART->_USBTransferOnePacket
;!    _FCD_056e1_USB_Serial1__Initialise->_USBDeviceInit
;!    _USBDeviceInit->_memset
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
;! (0) _main                                                18    18      0   12349
;!                                             22 BANK0     18    18      0
;!  _FCD_056e1_USB_Serial1__Initialise
;!    _FCD_056e1_USB_Serial1__ReadByte
;!    _FCD_056e1_USB_Serial1__SendByte
;!  _FCD_056e1_USB_Serial1__SendString
;!                    _FCI_DELAYINT_MS
;!              _FC_CAL_Port_In_DDR__x
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _FC_CAL_Port_In_DDR__x                                8     2      6    1018
;!                                              0 BANK0      8     2      6
;! ---------------------------------------------------------------------------------
;! (1) _FCI_DELAYINT_MS                                      2     0      2     262
;!                                              2 BANK0      2     0      2
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             2     2      0      31
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _FCD_056e1_USB_Serial1__SendString                    8     4      4    3418
;!                                              9 BANK0      8     4      4
;!                       _CDCTxService
;!                      _FCI_GETLENGTH
;!                        _putUSBUSART
;! ---------------------------------------------------------------------------------
;! (2) _FCI_GETLENGTH                                        8     4      4     369
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _FCD_056e1_USB_Serial1__SendByte                      4     4      0    2751
;!                                              9 BANK0      4     4      0
;!                       _CDCTxService
;!                        _putUSBUSART
;! ---------------------------------------------------------------------------------
;! (2) _putUSBUSART                                          3     0      3     478
;!                                              0 BANK0      3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _CDCTxService                                         2     2      0    2127
;!                                              7 BANK0      2     2      0
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (1) _FCD_056e1_USB_Serial1__ReadByte                     11     9      2    2883
;!                                             11 BANK0     11     9      2
;!                           _delay_us
;!                       _getsUSBUSART
;! ---------------------------------------------------------------------------------
;! (2) _getsUSBUSART                                         4     1      3    2438
;!                                              7 BANK0      4     1      3
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (3) _USBTransferOnePacket                                 7     3      4    1926
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _delay_us                                             1     1      0      99
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _FCD_056e1_USB_Serial1__Initialise                    3     3      0    1374
;!                                              9 BANK0      3     3      0
;!                    _USBDeviceAttach
;!                      _USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (2) _USBDeviceInit                                        1     1      0    1361
;!                                              8 BANK0      1     1      0
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (3) _memset                                               8     2      6    1070
;!                                              0 BANK0      8     2      6
;! ---------------------------------------------------------------------------------
;! (2) _USBDeviceAttach                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _myisr                                               14    14      0   29136
;!                                             28 COMRAM    14    14      0
;!                     _USBDeviceTasks
;! ---------------------------------------------------------------------------------
;! (5) _USBDeviceTasks                                       1     1      0   29136
;!                                             27 COMRAM     1     1      0
;!          _USBCtrlEPAllowStatusStage
;!                   _USBCtrlEPService
;!      _USBIncrement1msInternalTimers
;!                    _USBStallHandler
;!                         _USBSuspend
;!                 _USBWakeFromSuspend
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                    i2_USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (6) i2_USBDeviceInit                                      1     1      0     610
;!                                              8 COMRAM     1     1      0
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (6) _USBWakeFromSuspend                                   0     0      0    3835
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USBSuspend                                           0     0      0    3835
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USBStallHandler                                      1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _USBIncrement1msInternalTimers                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _USBCtrlEPService                                     1     1      0   16975
;!                                             26 COMRAM     1     1      0
;!                _USBCtrlTrfInHandler
;!               _USBCtrlTrfOutHandler
;!             _USBCtrlTrfSetupHandler
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (7) _memcpy                                              10     4      6     387
;!                                              0 COMRAM    10     4      6
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfSetupHandler                               0     0      0   16359
;!                 _USBCheckStdRequest
;!           _USBCtrlEPServiceComplete
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlEPServiceComplete                             0     0      0      92
;!            _USBCtrlEPAllowDataStage
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPAllowDataStage                              0     0      0      92
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (8) _USBCheckStdRequest                                   0     0      0   12432
;!            _USBStdFeatureReqHandler
;!                _USBStdGetDscHandler
;!             _USBStdGetStatusHandler
;!                _USBStdSetCfgHandler
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (9) _USBStdSetCfgHandler                                  1     1      0    4333
;!                                             20 COMRAM     1     1      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (7) i2_memset                                             8     2      6     408
;!                                              0 COMRAM     8     2      6
;! ---------------------------------------------------------------------------------
;! (9) _USBStdGetStatusHandler                               3     3      0      46
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (9) _USBStdGetDscHandler                                  2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (9) _USBStdFeatureReqHandler                              6     6      0    4218
;!                                             20 COMRAM     6     6      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USER_USB_CALLBACK_EVENT_HANDLER                      8     2      6    3835
;!                                             12 COMRAM     8     2      6
;!                          _CDCInitEP
;!                 _USBCheckCDCRequest
;! ---------------------------------------------------------------------------------
;! (7) _USBCheckCDCRequest                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _CDCInitEP                                            0     0      0    1143
;!                  _USBEnableEndpoint
;!             i2_USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (8) i2_USBTransferOnePacket                               7     3      4     410
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (8) _USBEnableEndpoint                                    4     3      1     733
;!                                              8 COMRAM     4     3      1
;!               _USBConfigureEndpoint
;! ---------------------------------------------------------------------------------
;! (9) _USBConfigureEndpoint                                 8     7      1     400
;!                                              0 COMRAM     8     7      1
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfOutHandler                                 0     0      0     114
;!                _USBCtrlTrfRxService
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfRxService                                  2     2      0     114
;!                                              0 COMRAM     2     2      0
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPAllowStatusStage                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfInHandler                                  1     1      0     115
;!                                              1 COMRAM     1     1      0
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (10) _USBCtrlTrfTxService                                 1     1      0      92
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _FCD_056e1_USB_Serial1__Initialise
;!     _USBDeviceAttach
;!     _USBDeviceInit
;!       _memset
;!   _FCD_056e1_USB_Serial1__ReadByte
;!     _delay_us
;!     _getsUSBUSART
;!       _USBTransferOnePacket
;!   _FCD_056e1_USB_Serial1__SendByte
;!     _CDCTxService
;!       _USBTransferOnePacket
;!     _putUSBUSART
;!   _FCD_056e1_USB_Serial1__SendString
;!     _CDCTxService
;!       _USBTransferOnePacket
;!     _FCI_GETLENGTH
;!     _putUSBUSART
;!   _FCI_DELAYINT_MS
;!     _delay_ms
;!   _FC_CAL_Port_In_DDR__x
;!   _delay_ms
;!
;! _myisr (ROOT)
;!   _USBDeviceTasks
;!     _USBCtrlEPAllowStatusStage
;!     _USBCtrlEPService
;!       _USBCtrlTrfInHandler
;!         _USBCtrlTrfTxService
;!       _USBCtrlTrfOutHandler
;!         _USBCtrlTrfRxService
;!           _USBCtrlEPAllowStatusStage
;!       _USBCtrlTrfSetupHandler
;!         _USBCheckStdRequest
;!           _USBStdFeatureReqHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!               _CDCInitEP
;!                 _USBEnableEndpoint
;!                   _USBConfigureEndpoint
;!                 i2_USBTransferOnePacket
;!               _USBCheckCDCRequest
;!           _USBStdGetDscHandler
;!           _USBStdGetStatusHandler
;!           _USBStdSetCfgHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!               _CDCInitEP
;!                 _USBEnableEndpoint
;!                   _USBConfigureEndpoint
;!                 i2_USBTransferOnePacket
;!               _USBCheckCDCRequest
;!             i2_memset
;!           _USER_USB_CALLBACK_EVENT_HANDLER
;!             _CDCInitEP
;!               _USBEnableEndpoint
;!                 _USBConfigureEndpoint
;!               i2_USBTransferOnePacket
;!             _USBCheckCDCRequest
;!         _USBCtrlEPServiceComplete
;!           _USBCtrlEPAllowDataStage
;!             _USBCtrlTrfTxService
;!           _USBCtrlEPAllowStatusStage
;!         _USER_USB_CALLBACK_EVENT_HANDLER
;!           _CDCInitEP
;!             _USBEnableEndpoint
;!               _USBConfigureEndpoint
;!             i2_USBTransferOnePacket
;!           _USBCheckCDCRequest
;!       _memcpy
;!     _USBIncrement1msInternalTimers
;!     _USBStallHandler
;!     _USBSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!         _CDCInitEP
;!           _USBEnableEndpoint
;!             _USBConfigureEndpoint
;!           i2_USBTransferOnePacket
;!         _USBCheckCDCRequest
;!     _USBWakeFromSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!         _CDCInitEP
;!           _USBEnableEndpoint
;!             _USBConfigureEndpoint
;!           i2_USBTransferOnePacket
;!         _USBCheckCDCRequest
;!     _USER_USB_CALLBACK_EVENT_HANDLER
;!       _CDCInitEP
;!         _USBEnableEndpoint
;!           _USBConfigureEndpoint
;!         i2_USBTransferOnePacket
;!       _USBCheckCDCRequest
;!     i2_USBDeviceInit
;!       i2_memset
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAMl            3FF      0       0      23        0.0%
;!BIGRAMhh           280      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BIGRAMhl            C0      0       0      22        0.0%
;!BITBANK4            C0      0       0      12        0.0%
;!BANK4               C0      0       0      13        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     28      80       5       80.0%
;!BITBANK5            80      0       0      14        0.0%
;!BANK5               80      0       0      15        0.0%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     2A      54       1       89.4%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      D4      16        0.0%
;!DATA                 0      0      D4       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 715 in file "Flowcode1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ptmp            1   39[BANK0 ] unsigned char 
;;  ptmp            1   38[BANK0 ] unsigned char 
;;  ptmp            1   37[BANK0 ] unsigned char 
;;  ptmp            1   36[BANK0 ] unsigned char 
;;  ptmp            1   35[BANK0 ] unsigned char 
;;  ptmp            1   34[BANK0 ] unsigned char 
;;  ptmp            1   30[BANK0 ] unsigned char 
;;  ptmp            1   29[BANK0 ] unsigned char 
;;  ptmp            1   33[BANK0 ] unsigned char 
;;  ptmp            1   32[BANK0 ] unsigned char 
;;  ptmp            1   31[BANK0 ] unsigned char 
;;  ptmp            1   28[BANK0 ] unsigned char 
;;  ptmp            1   27[BANK0 ] unsigned char 
;;  ptmp            1   26[BANK0 ] unsigned char 
;;  ptmp            1   25[BANK0 ] unsigned char 
;;  ptmp            1   24[BANK0 ] unsigned char 
;;  ptmp            1   23[BANK0 ] unsigned char 
;;  ptmp            1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0      18       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      18       0       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_FCD_056e1_USB_Serial1__Initialise
;;		_FCD_056e1_USB_Serial1__ReadByte
;;		_FCD_056e1_USB_Serial1__SendByte
;;		_FCD_056e1_USB_Serial1__SendString
;;		_FCI_DELAYINT_MS
;;		_FC_CAL_Port_In_DDR__x
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"Flowcode1.c"
	line	715
global __ptext0
__ptext0:
psect	text0
	file	"Flowcode1.c"
	line	715
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	717
	
l6435:
	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	718
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	719
	movlw	low(08h)
	movwf	((c:3951)),c	;volatile
	line	720
	
l6437:
	bcf	((c:4000)),c,5	;volatile
	line	727
	
l6439:
	movlb	0	; () banked
	setf	((main@ptmp))&0ffh
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	
l6441:; BSR set to: 0

	movff	(main@ptmp),(c:3971)	;volatile
	line	730
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((main@ptmp_1957))&0ffh
	
l6443:; BSR set to: 0

	bcf	(0+(1/8)+(c:3986)),c,(1)&7	;volatile
	
l6445:; BSR set to: 0

	movlb	0	; () banked
	movf	((main@ptmp_1957))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6641
	goto	u6640
u6641:
	goto	l6449
u6640:
	
l6447:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	iorlw	low(02h)
	movwf	((c:3968)),c	;volatile
	goto	l6451
	
l1043:; BSR set to: 0

	
l6449:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	andlw	low(0FDh)
	movwf	((c:3968)),c	;volatile
	goto	l6451
	
l1045:; BSR set to: 0

	line	733
	
l6451:; BSR set to: 0

	call	_FCD_056e1_USB_Serial1__Initialise	;wreg free
	line	737
	
l6453:
	movlw	(064h)&0ffh
	
	call	_delay_ms
	line	741
	
l6455:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((main@ptmp_1959))&0ffh
	
l6457:; BSR set to: 0

	bcf	(0+(0/8)+(c:3986)),c,(0)&7	;volatile
	
l6459:; BSR set to: 0

	movlb	0	; () banked
	movf	((main@ptmp_1959))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6651
	goto	u6650
u6651:
	goto	l6463
u6650:
	
l6461:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	iorlw	low(01h)
	movwf	((c:3968)),c	;volatile
	goto	l6465
	
l1047:; BSR set to: 0

	
l6463:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	andlw	low(0FEh)
	movwf	((c:3968)),c	;volatile
	goto	l6465
	
l1049:; BSR set to: 0

	line	744
	
l6465:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((main@ptmp_1960))&0ffh
	
l6467:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	
l6469:; BSR set to: 0

	movff	(main@ptmp_1960),(c:3971)	;volatile
	line	747
	
l6471:; BSR set to: 0

	movlw	high(03E8h)
	movlb	0	; () banked
	movwf	((FCI_DELAYINT_MS@Delay+1))&0ffh
	movlw	low(03E8h)
	movwf	((FCI_DELAYINT_MS@Delay))&0ffh
	call	_FCI_DELAYINT_MS	;wreg free
	line	751
	
l6473:
		movlw	low(STR_1)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendString@FCL_DATA))&0ffh
	movlw	high(STR_1)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendString@FCL_DATA+1))&0ffh

	movlw	high(0Ch)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendString@FCLsz_DATA+1))&0ffh
	movlw	low(0Ch)
	movwf	((FCD_056e1_USB_Serial1__SendString@FCLsz_DATA))&0ffh
	call	_FCD_056e1_USB_Serial1__SendString	;wreg free
	goto	l6475
	line	755
	
l1050:
	line	760
	
l6475:
		movlw	low(3969)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Port))&0ffh
	movlw	high(3969)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Port+1))&0ffh

		movlw	low(3987)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Tris))&0ffh
	movlw	high(3987)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Tris+1))&0ffh

	movlw	low(0FFh)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@InMask))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Shift))&0ffh
	call	_FC_CAL_Port_In_DDR__x	;wreg free
	movlb	0	; () banked
	movwf	((_FCV_INPUT_SWITCHES))&0ffh
	line	763
	
l6477:; BSR set to: 0

	movlw	(0FFh)&0ffh
	
	call	_FCD_056e1_USB_Serial1__ReadByte
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?_FCD_056e1_USB_Serial1__ReadByte)&0ffh,w
	movlb	0	; () banked
	movwf	((_FCV_READ_BYTE))&0ffh
	line	767
	
l6479:; BSR set to: 0

	movlb	0	; () banked
	swapf	((_FCV_READ_BYTE))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	xorlw	05h
	btfss	status,2
	goto	u6661
	goto	u6660
u6661:
	goto	l6475
u6660:
	line	772
	
l6481:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((main@ptmp_1966))&0ffh
	
l6483:; BSR set to: 0

	bcf	(0+(2/8)+(c:3986)),c,(2)&7	;volatile
	
l6485:; BSR set to: 0

	movlb	0	; () banked
	movf	((main@ptmp_1966))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6671
	goto	u6670
u6671:
	goto	l6489
u6670:
	
l6487:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	iorlw	low(04h)
	movwf	((c:3968)),c	;volatile
	goto	l6491
	
l1053:; BSR set to: 0

	
l6489:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	andlw	low(0FBh)
	movwf	((c:3968)),c	;volatile
	goto	l6491
	
l1055:; BSR set to: 0

	line	775
	
l6491:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((_FCV_READ_BYTE))&0ffh,(0)&7
	goto	u6681
	goto	u6680
u6681:
	goto	l6533
u6680:
	line	784
	
l6493:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((main@ptmp_1967))&0ffh
	
l6495:; BSR set to: 0

	bcf	(0+(3/8)+(c:3986)),c,(3)&7	;volatile
	
l6497:; BSR set to: 0

	movlb	0	; () banked
	movf	((main@ptmp_1967))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6691
	goto	u6690
u6691:
	goto	l6501
u6690:
	
l6499:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	iorlw	low(08h)
	movwf	((c:3968)),c	;volatile
	goto	l6503
	
l1058:; BSR set to: 0

	
l6501:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	andlw	low(0F7h)
	movwf	((c:3968)),c	;volatile
	goto	l6503
	
l1060:; BSR set to: 0

	line	787
	
l6503:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((main@ptmp_1968))&0ffh
	
l6505:; BSR set to: 0

	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	
l6507:; BSR set to: 0

	movlb	0	; () banked
	movf	((main@ptmp_1968))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6701
	goto	u6700
u6701:
	goto	l6511
u6700:
	
l6509:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	iorlw	low(010h)
	movwf	((c:3968)),c	;volatile
	goto	l6513
	
l1062:; BSR set to: 0

	
l6511:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	andlw	low(0EFh)
	movwf	((c:3968)),c	;volatile
	goto	l6513
	
l1064:; BSR set to: 0

	line	790
	
l6513:; BSR set to: 0

	movlw	(0FFh)&0ffh
	
	call	_FCD_056e1_USB_Serial1__ReadByte
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?_FCD_056e1_USB_Serial1__ReadByte)&0ffh,w
	movlb	0	; () banked
	movwf	((_FCV_READ_BYTE))&0ffh
	line	794
	
l6515:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((_FCV_READ_BYTE))&0ffh,(0)&7
	goto	u6711
	goto	u6710
u6711:
	goto	l6521
u6710:
	line	802
	
l6517:; BSR set to: 0

	movlw	low(06h)
	movlb	0	; () banked
	movwf	((main@ptmp_1969))&0ffh
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l6519:; BSR set to: 0

	movff	(main@ptmp_1969),(c:3969)	;volatile
	line	803
	goto	l6525
	
l1065:; BSR set to: 0

	line	810
	
l6521:; BSR set to: 0

	movlw	low(09h)
	movlb	0	; () banked
	movwf	((main@ptmp_1970))&0ffh
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l6523:; BSR set to: 0

	movff	(main@ptmp_1970),(c:3969)	;volatile
	goto	l6525
	line	811
	
l1066:; BSR set to: 0

	line	815
	
l6525:; BSR set to: 0

		movlw	low(3971)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Port))&0ffh
	movlw	high(3971)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Port+1))&0ffh

		movlw	low(3989)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Tris))&0ffh
	movlw	high(3989)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Tris+1))&0ffh

	movlw	low(0FFh)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@InMask))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((FC_CAL_Port_In_DDR__x@Shift))&0ffh
	call	_FC_CAL_Port_In_DDR__x	;wreg free
	movlb	0	; () banked
	movwf	((_FCV_READ_BYTE))&0ffh
	line	821
	
l6527:; BSR set to: 0

	movlw	(023h)&0ffh
	
	call	_FCD_056e1_USB_Serial1__SendByte
	line	825
	
l6529:
	movlw	(0Ah)&0ffh
	
	call	_delay_ms
	line	829
	
l6531:
	movlb	0	; () banked
	movf	((_FCV_READ_BYTE))&0ffh,w
	
	call	_FCD_056e1_USB_Serial1__SendByte
	line	831
	goto	l6475
	
l1056:
	line	839
	
l6533:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((main@ptmp_1972))&0ffh
	
l6535:; BSR set to: 0

	bcf	(0+(3/8)+(c:3986)),c,(3)&7	;volatile
	
l6537:; BSR set to: 0

	movlb	0	; () banked
	movf	((main@ptmp_1972))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6721
	goto	u6720
u6721:
	goto	l6541
u6720:
	
l6539:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	iorlw	low(08h)
	movwf	((c:3968)),c	;volatile
	goto	l6543
	
l1069:; BSR set to: 0

	
l6541:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	andlw	low(0F7h)
	movwf	((c:3968)),c	;volatile
	goto	l6543
	
l1071:; BSR set to: 0

	line	842
	
l6543:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((main@ptmp_1973))&0ffh
	
l6545:; BSR set to: 0

	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	
l6547:; BSR set to: 0

	movlb	0	; () banked
	movf	((main@ptmp_1973))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6731
	goto	u6730
u6731:
	goto	l6551
u6730:
	
l6549:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	iorlw	low(010h)
	movwf	((c:3968)),c	;volatile
	goto	l6553
	
l1073:; BSR set to: 0

	
l6551:; BSR set to: 0

	movf	((c:3977)),c,w	;volatile
	andlw	low(0EFh)
	movwf	((c:3968)),c	;volatile
	goto	l6553
	
l1075:; BSR set to: 0

	line	845
	
l6553:; BSR set to: 0

	movlw	low(05h)
	movlb	0	; () banked
	movwf	((main@ptmp_1974))&0ffh
	
l6555:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l6557:; BSR set to: 0

	movff	(main@ptmp_1974),(c:3969)	;volatile
	line	848
	
l6559:; BSR set to: 0

	movlw	(0FFh)&0ffh
	
	call	_FCD_056e1_USB_Serial1__ReadByte
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?_FCD_056e1_USB_Serial1__ReadByte)&0ffh,w
	movlb	0	; () banked
	movwf	((_FCV_READ_BYTE))&0ffh
	line	852
	
l6561:; BSR set to: 0

	movlb	0	; () banked
	movf	((_FCV_READ_BYTE))&0ffh,w
	andlw	low(03h)
	xorlw	02h
	btfss	status,2
	goto	u6741
	goto	u6740
u6741:
	goto	l6585
u6740:
	line	860
	
l6563:; BSR set to: 0

	movlw	(0FFh)&0ffh
	
	call	_FCD_056e1_USB_Serial1__ReadByte
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?_FCD_056e1_USB_Serial1__ReadByte)&0ffh,w
	movlb	0	; () banked
	movwf	((_FCV_READ_BYTE))&0ffh
	line	864
	
l6565:; BSR set to: 0

	movff	(_FCV_READ_BYTE),(main@ptmp_1975)
	
l6567:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	
l6569:; BSR set to: 0

	movff	(main@ptmp_1975),(c:3971)	;volatile
	line	870
	
l6571:; BSR set to: 0

	movlw	low(015h)
	movlb	0	; () banked
	movwf	((main@ptmp_1976))&0ffh
	
l6573:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l6575:; BSR set to: 0

	movff	(main@ptmp_1976),(c:3969)	;volatile
	line	873
	
l6577:; BSR set to: 0

	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	877
	
l6579:
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((main@ptmp_1977))&0ffh
	
l6581:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l6583:; BSR set to: 0

	movff	(main@ptmp_1977),(c:3969)	;volatile
	line	878
	goto	l6607
	
l1076:; BSR set to: 0

	line	885
	
l6585:; BSR set to: 0

	movlw	(0FFh)&0ffh
	
	call	_FCD_056e1_USB_Serial1__ReadByte
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?_FCD_056e1_USB_Serial1__ReadByte)&0ffh,w
	movlb	0	; () banked
	movwf	((_FCV_READ_BYTE))&0ffh
	line	889
	
l6587:; BSR set to: 0

	movff	(_FCV_READ_BYTE),(main@ptmp_1978)
	
l6589:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	
l6591:; BSR set to: 0

	movff	(main@ptmp_1978),(c:3971)	;volatile
	line	895
	
l6593:; BSR set to: 0

	movlw	low(045h)
	movlb	0	; () banked
	movwf	((main@ptmp_1979))&0ffh
	
l6595:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l6597:; BSR set to: 0

	movff	(main@ptmp_1979),(c:3969)	;volatile
	line	898
	
l6599:; BSR set to: 0

	movlw	(01h)&0ffh
	
	call	_delay_ms
	line	902
	
l6601:
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((main@ptmp_1980))&0ffh
	
l6603:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	
l6605:; BSR set to: 0

	movff	(main@ptmp_1980),(c:3969)	;volatile
	goto	l6607
	line	903
	
l1077:; BSR set to: 0

	line	910
	
l6607:; BSR set to: 0

	movlw	(024h)&0ffh
	
	call	_FCD_056e1_USB_Serial1__SendByte
	line	914
	
l6609:
	movlw	(0Ah)&0ffh
	
	call	_delay_ms
	line	918
	
l6611:
	movlb	0	; () banked
	movf	((_FCV_READ_BYTE))&0ffh,w
	
	call	_FCD_056e1_USB_Serial1__SendByte
	goto	l6475
	line	920
	
l1067:
	goto	l6475
	line	924
	
l1051:
	goto	l6475
	line	927
	
l1078:
	line	755
	goto	l6475
	
l1079:
	line	929
	
l1080:
	goto	l1080
	line	930
	
l1081:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_FC_CAL_Port_In_DDR__x

;; *************** function _FC_CAL_Port_In_DDR__x *****************
;; Defined at:
;;		line 83 in file "C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_IO.c"
;; Parameters:    Size  Location     Type
;;  Port            2    0[BANK0 ] PTR volatile unsigned ch
;;		 -> PORTB(1), PORTD(1), 
;;  Tris            2    2[BANK0 ] PTR volatile unsigned ch
;;		 -> TRISB(1), TRISD(1), 
;;  InMask          1    4[BANK0 ] unsigned char 
;;  Shift           1    5[BANK0 ] unsigned char 
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
;;      Params:         0       6       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,inline
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_IO.c"
	line	83
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_IO.c"
	line	83
	global	__size_of_FC_CAL_Port_In_DDR__x
	__size_of_FC_CAL_Port_In_DDR__x	equ	__end_of_FC_CAL_Port_In_DDR__x-_FC_CAL_Port_In_DDR__x
	
_FC_CAL_Port_In_DDR__x:
;incstack = 0
	opt	stack 20
	line	85
	
l6197:
	movff	(FC_CAL_Port_In_DDR__x@Tris),fsr2l
	movff	(FC_CAL_Port_In_DDR__x@Tris+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	iorwf	((FC_CAL_Port_In_DDR__x@InMask))&0ffh,w
	movff	(FC_CAL_Port_In_DDR__x@Tris),fsr2l
	movff	(FC_CAL_Port_In_DDR__x@Tris+1),fsr2h
	movwf	indf2,c

	line	86
	movff	(FC_CAL_Port_In_DDR__x@Shift),??_FC_CAL_Port_In_DDR__x+0+0
	movff	(FC_CAL_Port_In_DDR__x@Port),fsr2l
	movff	(FC_CAL_Port_In_DDR__x@Port+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	andwf	((FC_CAL_Port_In_DDR__x@InMask))&0ffh,w
	movlb	0	; () banked
	movwf	(??_FC_CAL_Port_In_DDR__x+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_FC_CAL_Port_In_DDR__x+0+0)&0ffh
	goto	u6234
u6235:
	movlb	0	; () banked
	bcf	status,0
	rrcf	((??_FC_CAL_Port_In_DDR__x+1+0))&0ffh
u6234:
	movlb	0	; () banked
	decfsz	(??_FC_CAL_Port_In_DDR__x+0+0)&0ffh
	goto	u6235
	movlb	0	; () banked
	movf	((??_FC_CAL_Port_In_DDR__x+1+0))&0ffh,w
	goto	l116
	
l6199:; BSR set to: 0

	line	87
	
l116:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_FC_CAL_Port_In_DDR__x
	__end_of_FC_CAL_Port_In_DDR__x:
	signat	_FC_CAL_Port_In_DDR__x,16505
	global	_FCI_DELAYINT_MS

;; *************** function _FCI_DELAYINT_MS *****************
;; Defined at:
;;		line 158 in file "C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
;; Parameters:    Size  Location     Type
;;  Delay           2    2[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
	line	158
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
	line	158
	global	__size_of_FCI_DELAYINT_MS
	__size_of_FCI_DELAYINT_MS	equ	__end_of_FCI_DELAYINT_MS-_FCI_DELAYINT_MS
	
_FCI_DELAYINT_MS:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	160
	
l6227:
	goto	l6233
	
l171:
	line	162
	
l6229:
	movlw	(0FFh)&0ffh
	
	call	_delay_ms
	line	163
	
l6231:
	movlw	low(0FF01h)
	movlb	0	; () banked
	addwf	((FCI_DELAYINT_MS@Delay))&0ffh,w
	movlb	0	; () banked
	movwf	((FCI_DELAYINT_MS@Delay))&0ffh
	movlw	high(0FF01h)
	movlb	0	; () banked
	addwfc	((FCI_DELAYINT_MS@Delay+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((FCI_DELAYINT_MS@Delay))&0ffh
	goto	l6233
	line	164
	
l170:; BSR set to: 0

	line	160
	
l6233:
	movlb	0	; () banked
		decf	((FCI_DELAYINT_MS@Delay+1))&0ffh,w
	btfsc	status,0
	goto	u6281
	goto	u6280

u6281:
	goto	l6229
u6280:
	goto	l6235
	
l172:; BSR set to: 0

	line	165
	
l6235:; BSR set to: 0

	movlb	0	; () banked
	movf	((FCI_DELAYINT_MS@Delay))&0ffh,w
	movlb	0	; () banked
iorwf	((FCI_DELAYINT_MS@Delay+1))&0ffh,w
	btfsc	status,2
	goto	u6291
	goto	u6290

u6291:
	goto	l174
u6290:
	line	166
	
l6237:; BSR set to: 0

	movlb	0	; () banked
	movf	((FCI_DELAYINT_MS@Delay))&0ffh,w
	
	call	_delay_ms
	goto	l174
	
l173:
	line	167
	
l174:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_FCI_DELAYINT_MS
	__end_of_FCI_DELAYINT_MS:
	signat	_FCI_DELAYINT_MS,4217
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 100 in file "C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
;; Parameters:    Size  Location     Type
;;  del             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  del             1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FCI_DELAYINT_MS
;;		_main
;;		_delay_s
;;		_Wdt_Delay_Ms
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	100
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
	line	100
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:
;incstack = 0
	opt	stack 20
	movlb	0	; () banked
	movwf	((delay_ms@del))&0ffh
	line	102
	
l5983:
	goto	l5987
	
l138:
	line	104
	
l5985:
	movlw	7
	movlb	0	; () banked
movwf	(??_delay_ms+0+0)&0ffh,f
	movlw	97
u6757:
decfsz	wreg,f
	goto	u6757
	decfsz	(??_delay_ms+0+0)&0ffh,f
	goto	u6757

	goto	l5987
	line	105
	
l137:
	line	102
	
l5987:
	movlb	0	; () banked
	decf	((delay_ms@del))&0ffh
	movlb	0	; () banked
		incf	((delay_ms@del))&0ffh,w
	btfss	status,2
	goto	u5931
	goto	u5930

u5931:
	goto	l5985
u5930:
	goto	l140
	
l139:; BSR set to: 0

	line	106
	
l140:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	_FCD_056e1_USB_Serial1__SendString

;; *************** function _FCD_056e1_USB_Serial1__SendString *****************
;; Defined at:
;;		line 269 in file "Flowcode1.c"
;; Parameters:    Size  Location     Type
;;  FCL_DATA        2    9[BANK0 ] PTR unsigned char 
;;		 -> STR_1(12), 
;;  FCLsz_DATA      2   11[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  FCL_TIMEOUT     2   15[BANK0 ] unsigned short 
;;  FCL_LENGTH      1   14[BANK0 ] unsigned char 
;;  FCR_RETVAL      1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_CDCTxService
;;		_FCI_GETLENGTH
;;		_putUSBUSART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"Flowcode1.c"
	line	269
global __ptext4
__ptext4:
psect	text4
	file	"Flowcode1.c"
	line	269
	global	__size_of_FCD_056e1_USB_Serial1__SendString
	__size_of_FCD_056e1_USB_Serial1__SendString	equ	__end_of_FCD_056e1_USB_Serial1__SendString-_FCD_056e1_USB_Serial1__SendString
	
_FCD_056e1_USB_Serial1__SendString:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	272
	
l6239:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT+1))&0ffh
	movlw	low(0)
	movwf	((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT))&0ffh
	line	277
	
l6241:; BSR set to: 0

		movff	(FCD_056e1_USB_Serial1__SendString@FCL_DATA),(FCI_GETLENGTH@sStr1)
	movff	(FCD_056e1_USB_Serial1__SendString@FCL_DATA+1),(FCI_GETLENGTH@sStr1+1)

	movff	(FCD_056e1_USB_Serial1__SendString@FCLsz_DATA),(FCI_GETLENGTH@iStr1_len)
	movff	(FCD_056e1_USB_Serial1__SendString@FCLsz_DATA+1),(FCI_GETLENGTH@iStr1_len+1)
	call	_FCI_GETLENGTH	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?_FCI_GETLENGTH)&0ffh,w
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendString@FCL_LENGTH))&0ffh
	line	302
	
l6243:; BSR set to: 0

		movlw	020h-1
	cpfsgt	((c:_USBDeviceState)),c	;volatile
	goto	u6301
	goto	u6300

u6301:
	goto	l987
u6300:
	
l6245:; BSR set to: 0

	btfss	((c:3949)),c,1	;volatile
	goto	u6311
	goto	u6310
u6311:
	goto	l6249
u6310:
	goto	l987
	
l986:; BSR set to: 0

	line	304
;	Return value of _FCD_056e1_USB_Serial1__SendString is never used
	goto	l987
	line	305
	
l6247:; BSR set to: 0

	goto	l6265
	line	306
	
l984:; BSR set to: 0

	line	308
	
l6249:; BSR set to: 0

	call	_CDCTxService	;wreg free
	line	310
	goto	l6253
	
l990:
	line	311
	
l6251:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT))&0ffh,w
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT))&0ffh
	goto	l6253
	
l989:; BSR set to: 0

	line	310
	
l6253:
	movf	((c:_cdc_trf_state)),c,w
	btfsc	status,2
	goto	u6321
	goto	u6320
u6321:
	goto	l6257
u6320:
	
l6255:
		movlw	125
	movlb	0	; () banked
	subwf	 ((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT+1))&0ffh,w
	btfss	status,0
	goto	u6331
	goto	u6330

u6331:
	goto	l6251
u6330:
	goto	l6257
	
l992:; BSR set to: 0

	goto	l6257
	
l993:; BSR set to: 0

	line	313
	
l6257:
		movlw	125
	movlb	0	; () banked
	xorwf	((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT+1))&0ffh,w
	movlb	0	; () banked
iorwf	((FCD_056e1_USB_Serial1__SendString@FCL_TIMEOUT))&0ffh,w
	btfss	status,2
	goto	u6341
	goto	u6340

u6341:
	goto	l6263
u6340:
	goto	l987
	line	315
	
l6259:; BSR set to: 0

;	Return value of _FCD_056e1_USB_Serial1__SendString is never used
	goto	l987
	line	316
	
l6261:; BSR set to: 0

	goto	l6265
	line	317
	
l994:; BSR set to: 0

	line	319
	
l6263:; BSR set to: 0

		movff	(FCD_056e1_USB_Serial1__SendString@FCL_DATA),(putUSBUSART@data)
	movff	(FCD_056e1_USB_Serial1__SendString@FCL_DATA+1),(putUSBUSART@data+1)

	movff	(FCD_056e1_USB_Serial1__SendString@FCL_LENGTH),(putUSBUSART@length)
	call	_putUSBUSART	;wreg free
	goto	l6265
	line	320
	
l995:
	goto	l6265
	line	321
	
l988:
	line	322
	
l6265:
	call	_CDCTxService	;wreg free
	line	350
	
l6267:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendString@FCR_RETVAL))&0ffh
	goto	l987
	line	352
	
l6269:; BSR set to: 0

	line	354
;	Return value of _FCD_056e1_USB_Serial1__SendString is never used
	
l987:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_FCD_056e1_USB_Serial1__SendString
	__end_of_FCD_056e1_USB_Serial1__SendString:
	signat	_FCD_056e1_USB_Serial1__SendString,8313
	global	_FCI_GETLENGTH

;; *************** function _FCI_GETLENGTH *****************
;; Defined at:
;;		line 146 in file "C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_String.c"
;; Parameters:    Size  Location     Type
;;  sStr1           2    0[BANK0 ] PTR unsigned char 
;;		 -> STR_1(12), 
;;  iStr1_len       2    2[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  tmp             2    6[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FCD_056e1_USB_Serial1__SendString
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_String.c"
	line	146
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_String.c"
	line	146
	global	__size_of_FCI_GETLENGTH
	__size_of_FCI_GETLENGTH	equ	__end_of_FCI_GETLENGTH-_FCI_GETLENGTH
	
_FCI_GETLENGTH:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	149
	
l5997:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((FCI_GETLENGTH@tmp+1))&0ffh
	movlw	low(0)
	movwf	((FCI_GETLENGTH@tmp))&0ffh
	goto	l6005
	
l203:; BSR set to: 0

	
l5999:; BSR set to: 0

	movlb	0	; () banked
	movf	((FCI_GETLENGTH@tmp))&0ffh,w
	movlb	0	; () banked
	addwf	((FCI_GETLENGTH@sStr1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_FCI_GETLENGTH+0+0)&0ffh
	movlb	0	; () banked
	movf	((FCI_GETLENGTH@tmp+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((FCI_GETLENGTH@sStr1+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_FCI_GETLENGTH+0+0+1)&0ffh
	movff	??_FCI_GETLENGTH+0+0,tblptrl
	movff	??_FCI_GETLENGTH+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u5951
	goto	u5950
u5951:
	goto	l6003
u5950:
	goto	l205
	
l6001:; BSR set to: 0

	goto	l205
	
l204:; BSR set to: 0

	
l6003:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((FCI_GETLENGTH@tmp))&0ffh
	incf	((FCI_GETLENGTH@tmp+1))&0ffh
	goto	l6005
	
l202:; BSR set to: 0

	
l6005:; BSR set to: 0

	movlb	0	; () banked
		movf	((FCI_GETLENGTH@iStr1_len))&0ffh,w
	movlb	0	; () banked
	subwf	((FCI_GETLENGTH@tmp))&0ffh,w
	movlb	0	; () banked
	movf	((FCI_GETLENGTH@iStr1_len+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((FCI_GETLENGTH@tmp+1))&0ffh,w
	btfss	status,0
	goto	u5961
	goto	u5960

u5961:
	goto	l5999
u5960:
	
l205:; BSR set to: 0

	line	150
	movff	(FCI_GETLENGTH@tmp),(?_FCI_GETLENGTH)
	movff	(FCI_GETLENGTH@tmp+1),(?_FCI_GETLENGTH+1)
	line	151
	
l206:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_FCI_GETLENGTH
	__end_of_FCI_GETLENGTH:
	signat	_FCI_GETLENGTH,8314
	global	_FCD_056e1_USB_Serial1__SendByte

;; *************** function _FCD_056e1_USB_Serial1__SendByte *****************
;; Defined at:
;;		line 466 in file "Flowcode1.c"
;; Parameters:    Size  Location     Type
;;  FCL_DATA        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  FCL_DATA        1   10[BANK0 ] unsigned char 
;;  FCL_TIMEOUT     2   11[BANK0 ] unsigned short 
;;  FCR_RETVAL      1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_CDCTxService
;;		_putUSBUSART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"Flowcode1.c"
	line	466
global __ptext6
__ptext6:
psect	text6
	file	"Flowcode1.c"
	line	466
	global	__size_of_FCD_056e1_USB_Serial1__SendByte
	__size_of_FCD_056e1_USB_Serial1__SendByte	equ	__end_of_FCD_056e1_USB_Serial1__SendByte-_FCD_056e1_USB_Serial1__SendByte
	
_FCD_056e1_USB_Serial1__SendByte:; BSR set to: 0

;incstack = 0
	opt	stack 18
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendByte@FCL_DATA))&0ffh
	line	469
	
l6271:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT+1))&0ffh
	movlw	low(0)
	movwf	((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT))&0ffh
	line	489
	
l6273:; BSR set to: 0

		movlw	020h-1
	cpfsgt	((c:_USBDeviceState)),c	;volatile
	goto	u6351
	goto	u6350

u6351:
	goto	l1012
u6350:
	
l6275:; BSR set to: 0

	btfss	((c:3949)),c,1	;volatile
	goto	u6361
	goto	u6360
u6361:
	goto	l6279
u6360:
	goto	l1012
	
l1011:; BSR set to: 0

	line	491
;	Return value of _FCD_056e1_USB_Serial1__SendByte is never used
	goto	l1012
	line	492
	
l6277:; BSR set to: 0

	goto	l6295
	line	493
	
l1009:; BSR set to: 0

	line	495
	
l6279:; BSR set to: 0

	call	_CDCTxService	;wreg free
	line	496
	goto	l6283
	
l1015:
	line	497
	
l6281:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT))&0ffh,w
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT))&0ffh
	goto	l6283
	
l1014:; BSR set to: 0

	line	496
	
l6283:
	movf	((c:_cdc_trf_state)),c,w
	btfsc	status,2
	goto	u6371
	goto	u6370
u6371:
	goto	l6287
u6370:
	
l6285:
		movlw	125
	movlb	0	; () banked
	subwf	 ((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT+1))&0ffh,w
	btfss	status,0
	goto	u6381
	goto	u6380

u6381:
	goto	l6281
u6380:
	goto	l6287
	
l1017:; BSR set to: 0

	goto	l6287
	
l1018:; BSR set to: 0

	line	499
	
l6287:
		movlw	125
	movlb	0	; () banked
	xorwf	((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT+1))&0ffh,w
	movlb	0	; () banked
iorwf	((FCD_056e1_USB_Serial1__SendByte@FCL_TIMEOUT))&0ffh,w
	btfss	status,2
	goto	u6391
	goto	u6390

u6391:
	goto	l6293
u6390:
	goto	l1012
	line	501
	
l6289:; BSR set to: 0

;	Return value of _FCD_056e1_USB_Serial1__SendByte is never used
	goto	l1012
	line	502
	
l6291:; BSR set to: 0

	goto	l6295
	line	503
	
l1019:; BSR set to: 0

	line	505
	
l6293:; BSR set to: 0

		movlw	low(FCD_056e1_USB_Serial1__SendByte@FCL_DATA)
	movlb	0	; () banked
	movwf	((putUSBUSART@data))&0ffh
	movlw	high(FCD_056e1_USB_Serial1__SendByte@FCL_DATA)
	movlb	0	; () banked
	movwf	((putUSBUSART@data+1))&0ffh

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((putUSBUSART@length))&0ffh
	call	_putUSBUSART	;wreg free
	goto	l6295
	line	506
	
l1020:
	goto	l6295
	line	507
	
l1013:
	line	508
	
l6295:
	call	_CDCTxService	;wreg free
	line	530
	
l6297:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__SendByte@FCR_RETVAL))&0ffh
	goto	l1012
	line	532
	
l6299:; BSR set to: 0

	line	534
;	Return value of _FCD_056e1_USB_Serial1__SendByte is never used
	
l1012:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_FCD_056e1_USB_Serial1__SendByte
	__end_of_FCD_056e1_USB_Serial1__SendByte:
	signat	_FCD_056e1_USB_Serial1__SendByte,4217
	global	_putUSBUSART

;; *************** function _putUSBUSART *****************
;; Defined at:
;;		line 556 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
;; Parameters:    Size  Location     Type
;;  data            2    0[BANK0 ] PTR unsigned char 
;;		 -> STR_1(12), FCD_056e1_USB_Serial1__SendByte@FCL_DATA(1), 
;;  length          1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       3       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FCD_056e1_USB_Serial1__SendString
;;		_FCD_056e1_USB_Serial1__SendByte
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	556
global __ptext7
__ptext7:
psect	text7
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	556
	global	__size_of_putUSBUSART
	__size_of_putUSBUSART	equ	__end_of_putUSBUSART-_putUSBUSART
	
_putUSBUSART:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	581
	
l6117:
	bcf	((c:4000)),c,5	;volatile
	line	582
	
l6119:
	movf	((c:_cdc_trf_state)),c,w
	btfss	status,2
	goto	u6081
	goto	u6080
u6081:
	goto	l6129
u6080:
	line	584
	
l6121:
		movff	(putUSBUSART@data),(_pCDCSrc)
	movff	(putUSBUSART@data+1),(_pCDCSrc+1)

	
l6123:
	movff	(putUSBUSART@length),(c:_cdc_tx_len)
	
l6125:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_cdc_mem_type))&0ffh
	
l6127:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:_cdc_trf_state)),c
	goto	l6129
	line	585
	
l915:; BSR set to: 0

	line	586
	
l6129:
	bsf	((c:4000)),c,5	;volatile
	line	587
	
l916:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_putUSBUSART
	__end_of_putUSBUSART:
	signat	_putUSBUSART,8313
	global	_CDCTxService

;; *************** function _CDCTxService *****************
;; Defined at:
;;		line 836 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte_to_send    1    8[BANK0 ] unsigned char 
;;  i               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_USBTransferOnePacket
;; This function is called by:
;;		_FCD_056e1_USB_Serial1__SendString
;;		_FCD_056e1_USB_Serial1__SendByte
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	836
global __ptext8
__ptext8:
psect	text8
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	836
	global	__size_of_CDCTxService
	__size_of_CDCTxService	equ	__end_of_CDCTxService-_CDCTxService
	
_CDCTxService:
;incstack = 0
	opt	stack 18
	line	841
	
l6131:
	bcf	((c:4000)),c,5	;volatile
	line	845
	
l6133:
	movlb	0	; () banked
	movf	((_CDCDataInHandle))&0ffh,w
	movlb	0	; () banked
iorwf	((_CDCDataInHandle+1))&0ffh,w
	btfsc	status,2
	goto	u6091
	goto	u6090

u6091:
	goto	l6139
u6090:
	
l6135:; BSR set to: 0

	movff	(_CDCDataInHandle),fsr2l
	movff	(_CDCDataInHandle+1),fsr2h
	movlb	0	; () banked
	btfss	indf2,(7)&7
	goto	u6101
	goto	u6100
u6101:
	goto	l6139
u6100:
	line	847
	
l6137:; BSR set to: 0

	bsf	((c:4000)),c,5	;volatile
	line	848
	goto	l934
	line	849
	
l933:; BSR set to: 0

	line	856
	
l6139:; BSR set to: 0

		movlw	3
	xorwf	((c:_cdc_trf_state)),c,w
	btfss	status,2
	goto	u6111
	goto	u6110

u6111:
	goto	l935
u6110:
	line	857
	
l6141:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_cdc_trf_state)),c
	
l935:; BSR set to: 0

	line	862
	movf	((c:_cdc_trf_state)),c,w
	btfss	status,2
	goto	u6121
	goto	u6120
u6121:
	goto	l6145
u6120:
	line	864
	
l6143:; BSR set to: 0

	bsf	((c:4000)),c,5	;volatile
	line	865
	goto	l934
	line	866
	
l936:; BSR set to: 0

	line	871
	
l6145:; BSR set to: 0

		movlw	2
	xorwf	((c:_cdc_trf_state)),c,w
	btfss	status,2
	goto	u6131
	goto	u6130

u6131:
	goto	l6151
u6130:
	line	873
	
l6147:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
		movlw	low(0)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh

	movlw	low(0)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(02h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(_CDCDataInHandle)
	movff	1+?_USBTransferOnePacket,(_CDCDataInHandle+1)
	line	875
	
l6149:
	movlw	low(03h)
	movwf	((c:_cdc_trf_state)),c
	line	876
	goto	l6195
	line	877
	
l937:
	
l6151:
		decf	((c:_cdc_trf_state)),c,w
	btfss	status,2
	goto	u6141
	goto	u6140

u6141:
	goto	l6195
u6140:
	line	882
	
l6153:
		movlw	041h-1
	cpfsgt	((c:_cdc_tx_len)),c
	goto	u6151
	goto	u6150

u6151:
	goto	l940
u6150:
	line	883
	
l6155:
	movlw	low(040h)
	movlb	0	; () banked
	movwf	((CDCTxService@byte_to_send))&0ffh
	goto	l6157
	line	884
	
l940:
	line	885
	movff	(c:_cdc_tx_len),(CDCTxService@byte_to_send)
	goto	l6157
	
l941:
	line	890
	
l6157:
	movlb	0	; () banked
	movf	((CDCTxService@byte_to_send))&0ffh,w
	sublw	0
	addwf	((c:_cdc_tx_len)),c,w
	movwf	((c:_cdc_tx_len)),c
	line	892
		movlw	low(1280)
	movlb	0	; () banked
	movwf	((_pCDCDst))&0ffh
	movlw	high(1280)
	movlb	0	; () banked
	movwf	((_pCDCDst+1))&0ffh

	line	894
	
l6159:; BSR set to: 0

	movff	(CDCTxService@byte_to_send),(CDCTxService@i)
	line	895
	
l6161:; BSR set to: 0

	movlb	0	; () banked
	movf	((_cdc_mem_type))&0ffh,w
	btfss	status,2
	goto	u6161
	goto	u6160
u6161:
	goto	l6183
u6160:
	goto	l6173
	line	897
	
l6163:; BSR set to: 0

	goto	l6173
	
l944:; BSR set to: 0

	line	899
	
l6165:; BSR set to: 0

	movff	(_pCDCSrc),tblptrl
	movff	(_pCDCSrc+1),tblptrh
	clrf	tblptru
	
	movff	(_pCDCDst),fsr2l
	movff	(_pCDCDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u6177
	tblrd	*
	
	movf	tablat,w
	bra	u6170
u6177:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u6170:
	movwf	indf2
	line	900
	
l6167:
	movlb	0	; () banked
	infsnz	((_pCDCDst))&0ffh
	incf	((_pCDCDst+1))&0ffh
	line	901
	
l6169:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_pCDCSrc))&0ffh
	incf	((_pCDCSrc+1))&0ffh
	line	902
	
l6171:; BSR set to: 0

	movlb	0	; () banked
	decf	((CDCTxService@i))&0ffh
	goto	l6173
	line	903
	
l943:; BSR set to: 0

	line	897
	
l6173:; BSR set to: 0

	movlb	0	; () banked
	movf	((CDCTxService@i))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6181
	goto	u6180
u6181:
	goto	l6165
u6180:
	goto	l6185
	
l945:; BSR set to: 0

	line	904
	goto	l6185
	line	905
	
l942:; BSR set to: 0

	line	907
	goto	l6183
	
l948:; BSR set to: 0

	line	909
	
l6175:; BSR set to: 0

	movff	(_pCDCSrc),tblptrl
	movff	(_pCDCSrc+1),tblptrh
	clrf	tblptru
	
	movff	(_pCDCDst),fsr2l
	movff	(_pCDCDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u6197
	tblrd	*
	
	movf	tablat,w
	bra	u6190
u6197:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u6190:
	movwf	indf2
	line	910
	
l6177:
	movlb	0	; () banked
	infsnz	((_pCDCDst))&0ffh
	incf	((_pCDCDst+1))&0ffh
	line	911
	
l6179:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_pCDCSrc))&0ffh
	incf	((_pCDCSrc+1))&0ffh
	line	912
	
l6181:; BSR set to: 0

	movlb	0	; () banked
	decf	((CDCTxService@i))&0ffh
	goto	l6183
	line	913
	
l947:; BSR set to: 0

	line	907
	
l6183:; BSR set to: 0

	movlb	0	; () banked
	movf	((CDCTxService@i))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6201
	goto	u6200
u6201:
	goto	l6175
u6200:
	goto	l6185
	
l949:; BSR set to: 0

	goto	l6185
	line	914
	
l946:; BSR set to: 0

	line	920
	
l6185:; BSR set to: 0

	movf	((c:_cdc_tx_len)),c,w
	btfss	status,2
	goto	u6211
	goto	u6210
u6211:
	goto	l6193
u6210:
	line	922
	
l6187:; BSR set to: 0

		movlw	64
	movlb	0	; () banked
	xorwf	((CDCTxService@byte_to_send))&0ffh,w
	btfss	status,2
	goto	u6221
	goto	u6220

u6221:
	goto	l6191
u6220:
	line	923
	
l6189:; BSR set to: 0

	movlw	low(02h)
	movwf	((c:_cdc_trf_state)),c
	goto	l6193
	line	924
	
l951:; BSR set to: 0

	line	925
	
l6191:; BSR set to: 0

	movlw	low(03h)
	movwf	((c:_cdc_trf_state)),c
	goto	l6193
	
l952:; BSR set to: 0

	goto	l6193
	line	926
	
l950:; BSR set to: 0

	line	927
	
l6193:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
		movlw	low(1280)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh
	movlw	high(1280)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh

	movff	(CDCTxService@byte_to_send),(USBTransferOnePacket@len)
	movlw	(02h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(_CDCDataInHandle)
	movff	1+?_USBTransferOnePacket,(_CDCDataInHandle+1)
	goto	l6195
	line	929
	
l939:
	goto	l6195
	line	931
	
l938:
	
l6195:
	bsf	((c:4000)),c,5	;volatile
	line	932
	
l934:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_CDCTxService
	__end_of_CDCTxService:
	signat	_CDCTxService,89
	global	_FCD_056e1_USB_Serial1__ReadByte

;; *************** function _FCD_056e1_USB_Serial1__ReadByte *****************
;; Defined at:
;;		line 544 in file "Flowcode1.c"
;; Parameters:    Size  Location     Type
;;  FCL_TIMEOUT_    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  FCL_TIMEOUT_    1   16[BANK0 ] unsigned char 
;;  numBytesRead    2   19[BANK0 ] unsigned short 
;;  FCR_RETVAL      2   17[BANK0 ] unsigned short 
;;  retval          1   21[BANK0 ] unsigned char [1]
;;  inner           1   15[BANK0 ] unsigned char 
;;  FCL_WAIT_FOR    1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   11[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       8       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0      11       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_delay_us
;;		_getsUSBUSART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"Flowcode1.c"
	line	544
global __ptext9
__ptext9:
psect	text9
	file	"Flowcode1.c"
	line	544
	global	__size_of_FCD_056e1_USB_Serial1__ReadByte
	__size_of_FCD_056e1_USB_Serial1__ReadByte	equ	__end_of_FCD_056e1_USB_Serial1__ReadByte-_FCD_056e1_USB_Serial1__ReadByte
	
_FCD_056e1_USB_Serial1__ReadByte:
;incstack = 0
	opt	stack 18
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@FCL_TIMEOUT_MS))&0ffh
	line	547
	
l6301:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@FCL_WAIT_FOREVER))&0ffh
	line	556
	movlw	high(0FFh)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL+1))&0ffh
	setf	((FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL))&0ffh
	line	563
	movlw	low(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@inner))&0ffh
	line	564
	movlw	high(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead+1))&0ffh
	movlw	low(0)
	movwf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead))&0ffh
	line	566
	
l6303:; BSR set to: 0

	movlb	0	; () banked
		incf	((FCD_056e1_USB_Serial1__ReadByte@FCL_TIMEOUT_MS))&0ffh,w
	btfss	status,2
	goto	u6401
	goto	u6400

u6401:
	goto	l6323
u6400:
	line	567
	
l6305:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@FCL_WAIT_FOREVER))&0ffh
	goto	l6323
	
l1023:; BSR set to: 0

	line	569
	goto	l6323
	
l1025:; BSR set to: 0

	line	571
	
l6307:; BSR set to: 0

		movlw	low(FCD_056e1_USB_Serial1__ReadByte@retval)
	movlb	0	; () banked
	movwf	((getsUSBUSART@buffer))&0ffh
	movlw	high(FCD_056e1_USB_Serial1__ReadByte@retval)
	movlb	0	; () banked
	movwf	((getsUSBUSART@buffer+1))&0ffh

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((getsUSBUSART@len))&0ffh
	call	_getsUSBUSART	;wreg free
	movlb	0	; () banked
	movwf	(??_FCD_056e1_USB_Serial1__ReadByte+0+0)&0ffh
	movlb	0	; () banked
	movf	((??_FCD_056e1_USB_Serial1__ReadByte+0+0))&0ffh,w
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead))&0ffh
	clrf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead+1))&0ffh
	line	572
	
l6309:; BSR set to: 0

	movlb	0	; () banked
	movf	((FCD_056e1_USB_Serial1__ReadByte@FCL_WAIT_FOREVER))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6411
	goto	u6410
u6411:
	goto	l1026
u6410:
	
l6311:; BSR set to: 0

	movlb	0	; () banked
	movf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead))&0ffh,w
	movlb	0	; () banked
iorwf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead+1))&0ffh,w
	btfss	status,2
	goto	u6421
	goto	u6420

u6421:
	goto	l1026
u6420:
	line	574
	
l6313:; BSR set to: 0

	movlb	0	; () banked
	incf	((FCD_056e1_USB_Serial1__ReadByte@inner))&0ffh
	line	575
	
l6315:; BSR set to: 0

	movlw	(0Ah)&0ffh
	
	call	_delay_us
	line	576
	
l6317:
		movlw	100
	movlb	0	; () banked
	xorwf	((FCD_056e1_USB_Serial1__ReadByte@inner))&0ffh,w
	btfss	status,2
	goto	u6431
	goto	u6430

u6431:
	goto	l6323
u6430:
	line	578
	
l6319:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__ReadByte@inner))&0ffh
	line	579
	
l6321:; BSR set to: 0

	movlb	0	; () banked
	decf	((FCD_056e1_USB_Serial1__ReadByte@FCL_TIMEOUT_MS))&0ffh
	goto	l6323
	line	580
	
l1027:; BSR set to: 0

	line	581
	goto	l6323
	line	582
	
l1026:; BSR set to: 0

	line	583
	movff	(FCD_056e1_USB_Serial1__ReadByte@retval),(FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL)
	movlb	0	; () banked
	clrf	((FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL+1))&0ffh
	goto	l6323
	
l1028:; BSR set to: 0

	goto	l6323
	line	584
	
l1024:; BSR set to: 0

	line	569
	
l6323:; BSR set to: 0

	movlb	0	; () banked
	movf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead))&0ffh,w
	movlb	0	; () banked
iorwf	((FCD_056e1_USB_Serial1__ReadByte@numBytesRead+1))&0ffh,w
	btfss	status,2
	goto	u6441
	goto	u6440

u6441:
	goto	l1031
u6440:
	
l6325:; BSR set to: 0

	movlb	0	; () banked
	movf	((FCD_056e1_USB_Serial1__ReadByte@FCL_TIMEOUT_MS))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6451
	goto	u6450
u6451:
	goto	l6307
u6450:
	goto	l1031
	
l1030:; BSR set to: 0

	
l1031:; BSR set to: 0

	line	585
	movff	(FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL),(?_FCD_056e1_USB_Serial1__ReadByte)
	movff	(FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL+1),(?_FCD_056e1_USB_Serial1__ReadByte+1)
	goto	l1032
	line	617
	
l6327:; BSR set to: 0

	movff	(FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL),(?_FCD_056e1_USB_Serial1__ReadByte)
	movff	(FCD_056e1_USB_Serial1__ReadByte@FCR_RETVAL+1),(?_FCD_056e1_USB_Serial1__ReadByte+1)
	line	619
	
l1032:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_FCD_056e1_USB_Serial1__ReadByte
	__end_of_FCD_056e1_USB_Serial1__ReadByte:
	signat	_FCD_056e1_USB_Serial1__ReadByte,4218
	global	_getsUSBUSART

;; *************** function _getsUSBUSART *****************
;; Defined at:
;;		line 485 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
;; Parameters:    Size  Location     Type
;;  buffer          2    7[BANK0 ] PTR unsigned char 
;;		 -> FCD_056e1_USB_Serial1__ReadByte@retval(1), 
;;  len             1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       3       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_USBTransferOnePacket
;; This function is called by:
;;		_FCD_056e1_USB_Serial1__ReadByte
;;		_FCD_056e1_USB_Serial1__ReadString
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	485
global __ptext10
__ptext10:
psect	text10
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	485
	global	__size_of_getsUSBUSART
	__size_of_getsUSBUSART	equ	__end_of_getsUSBUSART-_getsUSBUSART
	
_getsUSBUSART:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	487
	
l6093:
	movlw	low(0)
	movwf	((c:_cdc_rx_len)),c
	line	489
	
l6095:
	movf	((c:_CDCDataOutHandle)),c,w
iorwf	((c:_CDCDataOutHandle+1)),c,w
	btfsc	status,2
	goto	u6041
	goto	u6040

u6041:
	goto	l6099
u6040:
	
l6097:
	movff	(c:_CDCDataOutHandle),fsr2l
	movff	(c:_CDCDataOutHandle+1),fsr2h
	btfsc	indf2,(7)&7
	goto	u6051
	goto	u6050
u6051:
	goto	l6113
u6050:
	goto	l6099
	
l907:
	line	495
	
l6099:
	lfsr	2,01h
	movf	((c:_CDCDataOutHandle)),c,w
	addwf	fsr2l
	movf	((c:_CDCDataOutHandle+1)),c,w
	addwfc	fsr2h
	movlb	0	; () banked
		movf	((getsUSBUSART@len))&0ffh,w
	subwf	postinc2,w
	btfsc	status,0
	goto	u6061
	goto	u6060

u6061:
	goto	l6103
u6060:
	line	496
	
l6101:; BSR set to: 0

	lfsr	2,01h
	movf	((c:_CDCDataOutHandle)),c,w
	addwf	fsr2l
	movf	((c:_CDCDataOutHandle+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	((getsUSBUSART@len))&0ffh
	goto	l6103
	
l908:; BSR set to: 0

	line	501
	
l6103:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_cdc_rx_len)),c
	goto	l6109
	line	502
	
l910:; BSR set to: 0

	
l6105:; BSR set to: 0

	movf	((c:_cdc_rx_len)),c,w
	mullw	01h
	movlw	low(1344)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(1344)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_cdc_rx_len)),c,w
	mullw	01h
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	((getsUSBUSART@buffer))&0ffh,w
	movwf	c:fsr1l
	movf	(prodh),c,w
	movlb	0	; () banked
	addwfc	((getsUSBUSART@buffer+1))&0ffh,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	501
	
l6107:; BSR set to: 0

	incf	((c:_cdc_rx_len)),c
	goto	l6109
	
l909:; BSR set to: 0

	
l6109:; BSR set to: 0

	movlb	0	; () banked
		movf	((getsUSBUSART@len))&0ffh,w
	subwf	((c:_cdc_rx_len)),c,w
	btfss	status,0
	goto	u6071
	goto	u6070

u6071:
	goto	l6105
u6070:
	goto	l6111
	
l911:; BSR set to: 0

	line	508
	
l6111:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
		movlw	low(1344)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh
	movlw	high(1344)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh

	movlw	low(040h)
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(02h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(c:_CDCDataOutHandle)
	movff	1+?_USBTransferOnePacket,(c:_CDCDataOutHandle+1)
	goto	l6113
	line	510
	
l905:
	line	512
	
l6113:
	movf	((c:_cdc_rx_len)),c,w
	goto	l912
	
l6115:
	line	514
	
l912:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_getsUSBUSART
	__end_of_getsUSBUSART:
	signat	_getsUSBUSART,8313
	global	_USBTransferOnePacket

;; *************** function _USBTransferOnePacket *****************
;; Defined at:
;;		line 1013 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  dir             1    0[BANK0 ] unsigned char 
;;  data            2    1[BANK0 ] PTR unsigned char 
;;		 -> cdc_data_tx(64), cdc_data_rx(64), NULL(0), 
;;  len             1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1    4[BANK0 ] unsigned char 
;;  handle          2    5[BANK0 ] PTR volatile struct __BD
;;		 -> NULL(0), BDT(48), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getsUSBUSART
;;		_CDCTxService
;;		_USBCDCEventHandler
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1013
global __ptext11
__ptext11:
psect	text11
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1013
	global	__size_of_USBTransferOnePacket
	__size_of_USBTransferOnePacket	equ	__end_of_USBTransferOnePacket-_USBTransferOnePacket
	
_USBTransferOnePacket:
;incstack = 0
	opt	stack 18
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@ep))&0ffh
	line	1018
	
l5937:
	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5871
	goto	u5870
u5871:
	goto	l5941
u5870:
	line	1021
	
l5939:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(USBTransferOnePacket@handle)
	movff	postdec2,(USBTransferOnePacket@handle+1)
	line	1022
	goto	l5943
	line	1023
	
l626:; BSR set to: 0

	line	1026
	
l5941:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(USBTransferOnePacket@handle)
	movff	postdec2,(USBTransferOnePacket@handle+1)
	goto	l5943
	line	1027
	
l627:; BSR set to: 0

	line	1031
	
l5943:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle))&0ffh,w
	movlb	0	; () banked
iorwf	((USBTransferOnePacket@handle+1))&0ffh,w
	btfss	status,2
	goto	u5881
	goto	u5880

u5881:
	goto	l5949
u5880:
	line	1033
	
l5945:; BSR set to: 0

		movlw	low(0)
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket+1))&0ffh

	goto	l629
	
l5947:; BSR set to: 0

	goto	l629
	line	1034
	
l628:; BSR set to: 0

	line	1047
	
l5949:; BSR set to: 0

	movlb	0	; () banked
	lfsr	2,02h
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movff	(USBTransferOnePacket@data),postinc2
	movff	(USBTransferOnePacket@data+1),postdec2
	line	1048
	movlb	0	; () banked
	lfsr	2,01h
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movff	(USBTransferOnePacket@len),indf2

	line	1049
	
l5951:; BSR set to: 0

	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1050
	
l5953:; BSR set to: 0

	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(3/8)
	bsf	plusw2,(3)&7
	line	1051
	
l5955:; BSR set to: 0

	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1054
	
l5957:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5891
	goto	u5890
u5891:
	goto	l5961
u5890:
	line	1057
	
l5959:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	line	1058
	goto	l5963
	line	1059
	
l630:; BSR set to: 0

	line	1062
	
l5961:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	goto	l5963
	line	1063
	
l631:; BSR set to: 0

	line	1064
	
l5963:; BSR set to: 0

		movff	(USBTransferOnePacket@handle),(?_USBTransferOnePacket)
	movff	(USBTransferOnePacket@handle+1),(?_USBTransferOnePacket+1)

	goto	l629
	
l5965:; BSR set to: 0

	line	1065
	
l629:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBTransferOnePacket
	__end_of_USBTransferOnePacket:
	signat	_USBTransferOnePacket,16506
	global	_delay_us

;; *************** function _delay_us *****************
;; Defined at:
;;		line 80 in file "C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
;; Parameters:    Size  Location     Type
;;  del             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  del             1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FCD_056e1_USB_Serial1__ReadByte
;;		_FCI_DELAYINT_US
;;		_FCD_056e1_USB_Serial1__ReadString
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
	line	80
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Flowcode 7\CAL\PIC\PIC_CAL_Delay.c"
	line	80
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:; BSR set to: 0

;incstack = 0
	opt	stack 19
	movlb	0	; () banked
	movwf	((delay_us@del))&0ffh
	line	82
	
l5967:
	goto	l5973
	
l126:
	line	84
	
l5969:
	movlw	163
u6767:
decfsz	wreg,f
	goto	u6767
	nop2	;nop

	line	85
	
l5971:
	movlw	(064h)&0ffh
	movlb	0	; () banked
	subwf	((delay_us@del))&0ffh
	goto	l5973
	line	86
	
l125:; BSR set to: 0

	line	82
	
l5973:
		movlw	064h-0
	movlb	0	; () banked
	cpfslt	((delay_us@del))&0ffh
	goto	u5901
	goto	u5900

u5901:
	goto	l5969
u5900:
	goto	l5979
	
l127:; BSR set to: 0

	line	87
	goto	l5979
	
l129:; BSR set to: 0

	line	89
	
l5975:; BSR set to: 0

	movlw	16
u6777:
decfsz	wreg,f
	goto	u6777
	nop

	line	90
	
l5977:
	movlw	(0Ah)&0ffh
	movlb	0	; () banked
	subwf	((delay_us@del))&0ffh
	goto	l5979
	line	91
	
l128:; BSR set to: 0

	line	87
	
l5979:; BSR set to: 0

		movlw	0Ah-0
	movlb	0	; () banked
	cpfslt	((delay_us@del))&0ffh
	goto	u5911
	goto	u5910

u5911:
	goto	l5975
u5910:
	goto	l5981
	
l130:; BSR set to: 0

	line	92
	goto	l5981
	
l132:; BSR set to: 0

	line	94
		nop2	;2 cycle nop
	nop2	;2 cycle nop

	goto	l5981
	line	95
	
l131:
	line	92
	
l5981:
	movlb	0	; () banked
	decf	((delay_us@del))&0ffh
	movlb	0	; () banked
		incf	((delay_us@del))&0ffh,w
	btfss	status,2
	goto	u5921
	goto	u5920

u5921:
	goto	l132
u5920:
	goto	l134
	
l133:; BSR set to: 0

	line	96
	
l134:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
	signat	_delay_us,4217
	global	_FCD_056e1_USB_Serial1__Initialise

;; *************** function _FCD_056e1_USB_Serial1__Initialise *****************
;; Defined at:
;;		line 627 in file "Flowcode1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  FCL_DELAY_CO    2    9[BANK0 ] unsigned short 
;;  FCR_RETVAL      1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_USBDeviceAttach
;;		_USBDeviceInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"Flowcode1.c"
	line	627
global __ptext13
__ptext13:
psect	text13
	file	"Flowcode1.c"
	line	627
	global	__size_of_FCD_056e1_USB_Serial1__Initialise
	__size_of_FCD_056e1_USB_Serial1__Initialise	equ	__end_of_FCD_056e1_USB_Serial1__Initialise-_FCD_056e1_USB_Serial1__Initialise
	
_FCD_056e1_USB_Serial1__Initialise:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	630
	
l6329:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__Initialise@FCL_DELAY_COUNTER+1))&0ffh
	movlw	low(0)
	movwf	((FCD_056e1_USB_Serial1__Initialise@FCL_DELAY_COUNTER))&0ffh
	line	676
	
l6331:; BSR set to: 0

	call	_USBDeviceInit	;wreg free
	line	677
	
l6333:
	movf	((c:_USBDeviceState)),c,w	;volatile
	btfss	status,2
	goto	u6461
	goto	u6460
u6461:
	goto	l6337
u6460:
	line	678
	
l6335:
	call	_USBDeviceAttach	;wreg free
	goto	l6337
	
l1035:
	line	689
	goto	l6337
	
l1037:
	goto	l6337
	
l1036:
	
l6337:
		movlw	32
	xorwf	((c:_USBDeviceState)),c,w	;volatile
	btfss	status,2
	goto	u6471
	goto	u6470

u6471:
	goto	l6337
u6470:
	goto	l6339
	
l1038:
	line	697
	
l6339:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((FCD_056e1_USB_Serial1__Initialise@FCR_RETVAL))&0ffh
	goto	l1039
	line	701
	
l6341:; BSR set to: 0

	line	703
;	Return value of _FCD_056e1_USB_Serial1__Initialise is never used
	
l1039:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_FCD_056e1_USB_Serial1__Initialise
	__end_of_FCD_056e1_USB_Serial1__Initialise:
	signat	_FCD_056e1_USB_Serial1__Initialise,89
	global	_USBDeviceInit

;; *************** function _USBDeviceInit *****************
;; Defined at:
;;		line 295 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_memset
;; This function is called by:
;;		_FCD_056e1_USB_Serial1__Initialise
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	295
global __ptext14
__ptext14:
psect	text14
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	295
	global	__size_of_USBDeviceInit
	__size_of_USBDeviceInit	equ	__end_of_USBDeviceInit-_USBDeviceInit
	
_USBDeviceInit:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	299
	
l6007:
	bcf	((c:4000)),c,5	;volatile
	line	306
	
l6009:
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	line	309
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	312
	movlw	low(0)
	movwf	((c:3952)),c	;volatile
	line	314
	
l6011:
		movlw	low(3953)
	movlb	0	; () banked
	movwf	((memset@p1))&0ffh
	movlw	high(3953)
	movlb	0	; () banked
	movwf	((memset@p1+1))&0ffh

	movlw	high(0)
	movlb	0	; () banked
	movwf	((memset@c+1))&0ffh
	movlw	low(0)
	movwf	((memset@c))&0ffh
	movlw	high(02h)
	movlb	0	; () banked
	movwf	((memset@n+1))&0ffh
	movlw	low(02h)
	movwf	((memset@n))&0ffh
	call	_memset	;wreg free
	line	316
	
l6013:
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	
l6015:
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	
l6017:
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	325
	
l6019:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	
l6021:; BSR set to: 0

		movlw	0Ch-1
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u5971
	goto	u5970

u5971:
	goto	l6025
u5970:
	goto	l588
	
l6023:; BSR set to: 0

	goto	l588
	line	326
	
l587:; BSR set to: 0

	line	327
	
l6025:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	04h
	movlw	low(1024)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(1024)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	325
	
l6027:; BSR set to: 0

	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l6029:; BSR set to: 0

		movlw	0Ch-1
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u5981
	goto	u5980

u5981:
	goto	l6025
u5980:
	
l588:; BSR set to: 0

	line	331
	bsf	((c:3949)),c,6	;volatile
	line	334
	
l6031:; BSR set to: 0

	movlw	low(0)
	movwf	((c:3950)),c	;volatile
	line	337
	
l6033:; BSR set to: 0

	bcf	((c:3949)),c,4	;volatile
	line	340
	
l6035:; BSR set to: 0

	bcf	((c:3949)),c,6	;volatile
	goto	l6037
	line	343
	
l589:; BSR set to: 0

	line	345
	
l6037:
	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	347
	
l6039:
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	line	348
	
l6041:
	movlw	low(0)
	movwf	(0+((c:_outPipes)+03h)),c	;volatile
	line	349
	
l6043:
	movlw	high(0)
	movwf	(1+((c:_outPipes)+04h)),c	;volatile
	movlw	low(0)
	movwf	(0+((c:_outPipes)+04h)),c	;volatile
	line	350
	
l6045:
	btfsc	((c:3944)),c,3	;volatile
	goto	u5991
	goto	u5990
u5991:
	goto	l6037
u5990:
	goto	l6047
	
l590:
	line	354
	
l6047:
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	355
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	357
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	358
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	359
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	363
	movlw	low(0)
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	
l6049:; BSR set to: 0

		movlw	03h-1
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u6001
	goto	u6000

u6001:
	goto	l6053
u6000:
	goto	l6059
	
l6051:; BSR set to: 0

	goto	l6059
	line	364
	
l591:; BSR set to: 0

	line	365
	
l6053:; BSR set to: 0

	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	366
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	367
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlw	low(_ep_data_in)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_in)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	368
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlw	low(_ep_data_out)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_out)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	363
	
l6055:; BSR set to: 0

	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l6057:; BSR set to: 0

		movlw	03h-1
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u6011
	goto	u6010

u6011:
	goto	l6053
u6010:
	goto	l6059
	
l592:; BSR set to: 0

	line	372
	
l6059:; BSR set to: 0

		movlw	low(1024+08h)
	movwf	((c:_pBDTEntryIn)),c
	movlw	high(1024+08h)
	movwf	((c:_pBDTEntryIn+1)),c

	line	374
	
l6061:; BSR set to: 0

	movlw	low(016h)
	movwf	((c:3952)),c	;volatile
	line	376
	
l6063:; BSR set to: 0

	movlw	high(0430h)
	movlb	4	; () banked
	movwf	(1+(1024+02h))&0ffh	;volatile
	movlw	low(0430h)
	movwf	(0+(1024+02h))&0ffh	;volatile
	line	377
	
l6065:; BSR set to: 4

	movlw	low(08h)
	movlb	4	; () banked
	movwf	(0+(1024+01h))&0ffh	;volatile
	line	378
	
l6067:; BSR set to: 4

	movlw	low(04h)
	movlb	4	; () banked
	movwf	((1024))&0ffh	;volatile
	line	379
	
l6069:; BSR set to: 4

	movlb	4	; () banked
	bsf	(0+(7/8)+(1024))&0ffh,(7)&7	;volatile
	line	382
	
l6071:; BSR set to: 4

	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	384
	
l6073:; BSR set to: 4

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USB1msTickCount))&0ffh	;volatile
	movlw	high(0)
	movwf	((_USB1msTickCount+1))&0ffh	;volatile
	movlw	low highword(0)
	movwf	((_USB1msTickCount+2))&0ffh	;volatile
	movlw	high highword(0)
	movwf	((_USB1msTickCount+3))&0ffh	;volatile
	line	385
	
l6075:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBTicksSinceSuspendEnd))&0ffh	;volatile
	line	388
	
l6077:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_USBDeviceState)),c	;volatile
	line	389
	
l593:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBDeviceInit
	__end_of_USBDeviceInit:
	signat	_USBDeviceInit,89
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    0[BANK0 ] PTR void 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;;  c               2    2[BANK0 ] int 
;;  n               2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2    6[BANK0 ] PTR unsigned char 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       6       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memset.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memset.c"
	line	8
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	18
	
l5929:
		movff	(memset@p1),(memset@p)
	movff	(memset@p1+1),(memset@p+1)

	line	19
	goto	l5935
	
l1544:
	line	20
	
l5931:
	movff	(memset@p),fsr2l
	movff	(memset@p+1),fsr2h
	movff	(memset@c),indf2

	
l5933:
	movlb	0	; () banked
	infsnz	((memset@p))&0ffh
	incf	((memset@p+1))&0ffh
	goto	l5935
	
l1543:; BSR set to: 0

	line	19
	
l5935:
	movlb	0	; () banked
	decf	((memset@n))&0ffh
	btfss	status,0
	decf	((memset@n+1))&0ffh
	movlb	0	; () banked
		incf	((memset@n))&0ffh,w
	bnz	u5861
	movlb	0	; () banked
	incf	((memset@n+1))&0ffh,w
	btfss	status,2
	goto	u5861
	goto	u5860

u5861:
	goto	l5931
u5860:
	goto	l1546
	
l1545:; BSR set to: 0

	line	22
;	Return value of _memset is never used
	
l1546:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12410
	global	_USBDeviceAttach

;; *************** function _USBDeviceAttach *****************
;; Defined at:
;;		line 1370 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FCD_056e1_USB_Serial1__Initialise
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1370
global __ptext16
__ptext16:
psect	text16
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1370
	global	__size_of_USBDeviceAttach
	__size_of_USBDeviceAttach	equ	__end_of_USBDeviceAttach-_USBDeviceAttach
	
_USBDeviceAttach:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	1373
	
l6079:
	movf	((c:_USBDeviceState)),c,w	;volatile
	btfss	status,2
	goto	u6021
	goto	u6020
u6021:
	goto	l651
u6020:
	line	1378
	
l6081:
	movlw	low(0)
	movwf	((c:3949)),c	;volatile
	line	1381
	movlw	low(0)
	movwf	((c:3945)),c	;volatile
	line	1385
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	1387
	
l6083:
	bsf	((c:4048)),c,7	;volatile
	
l6085:
	bsf	((c:4002)),c,5	;volatile
	
l6087:
	bsf	((c:4000)),c,5	;volatile
	
l6089:
	bsf	((c:4082)),c,7	;volatile
	line	1390
	goto	l648
	
l649:
	bsf	((c:3949)),c,3	;volatile
	
l648:
	btfss	((c:3949)),c,3	;volatile
	goto	u6031
	goto	u6030
u6031:
	goto	l649
u6030:
	goto	l6091
	
l650:
	line	1393
	
l6091:
	movlw	low(01h)
	movwf	((c:_USBDeviceState)),c	;volatile
	goto	l651
	line	1398
	
l647:
	goto	l651
	line	1399
	
l646:
	line	1400
	
l651:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBDeviceAttach
	__end_of_USBDeviceAttach:
	signat	_USBDeviceAttach,89
	global	_myisr

;; *************** function _myisr *****************
;; Defined at:
;;		line 937 in file "Flowcode1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_USBDeviceTasks
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"Flowcode1.c"
	line	937
	global	__size_of_myisr
	__size_of_myisr	equ	__end_of_myisr-_myisr
	
_myisr:
;incstack = 0
	opt	stack 18
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
	line	943
	
i2l5887:
	call	_USBDeviceTasks	;wreg free
	line	945
	
i2l1084:
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
	global	_USBDeviceTasks

;; *************** function _USBDeviceTasks *****************
;; Defined at:
;;		line 495 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   27[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;;		_USBCtrlEPService
;;		_USBIncrement1msInternalTimers
;;		_USBStallHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		i2_USBDeviceInit
;; This function is called by:
;;		_myisr
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	495
global __ptext18
__ptext18:
psect	text18
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	495
	global	__size_of_USBDeviceTasks
	__size_of_USBDeviceTasks	equ	__end_of_USBDeviceTasks-_USBDeviceTasks
	
_USBDeviceTasks:
;incstack = 0
	opt	stack 18
	line	608
	
i2l5353:
		decf	((c:_USBDeviceState)),c,w	;volatile
	btfss	status,2
	goto	i2u510_41
	goto	i2u510_40

i2u510_41:
	goto	i2l5363
i2u510_40:
	line	619
	
i2l5355:
	btfsc	((c:3949)),c,5	;volatile
	goto	i2u511_41
	goto	i2u511_40
i2u511_41:
	goto	i2l5363
i2u511_40:
	line	626
	
i2l5357:
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	632
	
i2l5359:
	bsf	((c:3945)),c,0	;volatile
	line	633
	
i2l5361:
	bsf	((c:3945)),c,4	;volatile
	line	634
	movlw	low(02h)
	movwf	((c:_USBDeviceState)),c	;volatile
	goto	i2l5363
	line	635
	
i2l597:
	goto	i2l5363
	line	636
	
i2l596:
	line	652
	
i2l5363:
	btfss	((c:3944)),c,2	;volatile
	goto	i2u512_41
	goto	i2u512_40
i2u512_41:
	goto	i2l5371
i2u512_40:
	
i2l5365:
	btfss	((c:3945)),c,2	;volatile
	goto	i2u513_41
	goto	i2u513_40
i2u513_41:
	goto	i2l5371
i2u513_40:
	line	654
	
i2l5367:
	bcf	(0+(2/8)+(c:3944)),c,(2)&7	;volatile
	line	658
	
i2l5369:
	call	_USBWakeFromSuspend	;wreg free
	goto	i2l5371
	line	660
	
i2l598:
	line	665
	
i2l5371:
	btfss	((c:3949)),c,1	;volatile
	goto	i2u514_41
	goto	i2u514_40
i2u514_41:
	goto	i2l599
i2u514_40:
	line	667
	
i2l5373:
	bcf	((c:4001)),c,5	;volatile
	line	668
	goto	i2l600
	line	669
	
i2l599:
	line	681
	btfss	((c:3944)),c,0	;volatile
	goto	i2u515_41
	goto	i2u515_40
i2u515_41:
	goto	i2l5385
i2u515_40:
	
i2l5375:
	btfss	((c:3945)),c,0	;volatile
	goto	i2u516_41
	goto	i2u516_40
i2u516_41:
	goto	i2l5385
i2u516_40:
	line	683
	
i2l5377:
	call	i2_USBDeviceInit	;wreg free
	line	687
	
i2l5379:
	bsf	((c:4000)),c,5	;volatile
	line	689
	
i2l5381:
	movlw	low(04h)
	movwf	((c:_USBDeviceState)),c	;volatile
	line	699
	
i2l5383:
	bcf	(0+(0/8)+(c:3944)),c,(0)&7	;volatile
	goto	i2l5385
	line	700
	
i2l601:
	line	705
	
i2l5385:
	btfss	((c:3944)),c,4	;volatile
	goto	i2u517_41
	goto	i2u517_40
i2u517_41:
	goto	i2l5391
i2u517_40:
	
i2l5387:
	btfss	((c:3945)),c,4	;volatile
	goto	i2u518_41
	goto	i2u518_40
i2u518_41:
	goto	i2l5391
i2u518_40:
	line	712
	
i2l5389:
	call	_USBSuspend	;wreg free
	goto	i2l5391
	line	714
	
i2l602:
	line	726
	
i2l5391:
	btfss	((c:3944)),c,6	;volatile
	goto	i2u519_41
	goto	i2u519_40
i2u519_41:
	goto	i2l5409
i2u519_40:
	line	729
	
i2l5393:
	btfss	((c:3945)),c,6	;volatile
	goto	i2u520_41
	goto	i2u520_40
i2u520_41:
	goto	i2l5397
i2u520_40:
	line	731
	
i2l5395:
	movlw	high(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l5397
	line	732
	
i2l604:
	line	733
	
i2l5397:
	bcf	(0+(6/8)+(c:3944)),c,(6)&7	;volatile
	line	736
	
i2l5399:
	call	_USBIncrement1msInternalTimers	;wreg free
	line	753
	
i2l5401:
	movf	((c:_USBStatusStageTimeoutCounter)),c,w	;volatile
	btfsc	status,2
	goto	i2u521_41
	goto	i2u521_40
i2u521_41:
	goto	i2l5405
i2u521_40:
	line	755
	
i2l5403:
	decf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	goto	i2l5405
	line	756
	
i2l605:
	line	762
	
i2l5405:
	movf	((c:_USBStatusStageTimeoutCounter)),c,w	;volatile
	btfss	status,2
	goto	i2u522_41
	goto	i2u522_40
i2u522_41:
	goto	i2l5409
i2u522_40:
	line	764
	
i2l5407:
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l5409
	line	765
	
i2l606:
	goto	i2l5409
	line	767
	
i2l603:
	line	769
	
i2l5409:
	btfss	((c:3944)),c,5	;volatile
	goto	i2u523_41
	goto	i2u523_40
i2u523_41:
	goto	i2l5415
i2u523_40:
	
i2l5411:
	btfss	((c:3945)),c,5	;volatile
	goto	i2u524_41
	goto	i2u524_40
i2u524_41:
	goto	i2l5415
i2u524_40:
	line	771
	
i2l5413:
	call	_USBStallHandler	;wreg free
	goto	i2l5415
	line	772
	
i2l607:
	line	774
	
i2l5415:
	btfss	((c:3944)),c,1	;volatile
	goto	i2u525_41
	goto	i2u525_40
i2u525_41:
	goto	i2l5423
i2u525_40:
	
i2l5417:
	btfss	((c:3945)),c,1	;volatile
	goto	i2u526_41
	goto	i2u526_40
i2u526_41:
	goto	i2l5423
i2u526_40:
	line	776
	
i2l5419:
	movlw	high(07FFFh)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	setf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	777
	
i2l5421:
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	goto	i2l5423
	line	785
	
i2l608:
	line	792
	
i2l5423:
		movlw	04h-0
	cpfslt	((c:_USBDeviceState)),c	;volatile
	goto	i2u527_41
	goto	i2u527_40

i2u527_41:
	goto	i2l609
i2u527_40:
	line	794
	
i2l5425:
	bcf	((c:4001)),c,5	;volatile
	line	795
	goto	i2l600
	line	796
	
i2l609:
	line	801
	btfss	((c:3945)),c,3	;volatile
	goto	i2u528_41
	goto	i2u528_40
i2u528_41:
	goto	i2l610
i2u528_40:
	line	803
	
i2l5427:
	movlw	low(0)
	movwf	((c:USBDeviceTasks@i)),c
	
i2l5429:
		movlw	04h-1
	cpfsgt	((c:USBDeviceTasks@i)),c
	goto	i2u529_41
	goto	i2u529_40

i2u529_41:
	goto	i2l611
i2u529_40:
	goto	i2l610
	
i2l5431:
	goto	i2l610
	line	804
	
i2l611:
	line	805
	btfss	((c:3944)),c,3	;volatile
	goto	i2u530_41
	goto	i2u530_40
i2u530_41:
	goto	i2l610
i2u530_40:
	line	808
	
i2l5433:
	movff	(c:3948),(c:_USTATcopy)	;volatile
	line	809
	
i2l5435:
	rrcf	((c:_USTATcopy)),c,w	;volatile
	rrcf	wreg,f
	rrcf	wreg,f
	andlw	(1<<4)-1
	movwf	((c:_endpoint_number)),c	;volatile
	line	811
	
i2l5437:
	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	816
	
i2l5439:
	btfsc	((c:_USTATcopy)),c,2	;volatile
	goto	i2u531_41
	goto	i2u531_40
i2u531_41:
	goto	i2l5443
i2u531_40:
	line	818
	
i2l5441:
	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlw	low(_ep_data_out)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_out)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	btg	c:indf2,0
	line	819
	goto	i2l5445
	line	820
	
i2l614:; BSR set to: 0

	line	822
	
i2l5443:
	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlw	low(_ep_data_in)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_in)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	btg	c:indf2,0
	goto	i2l5445
	line	823
	
i2l615:; BSR set to: 0

	line	828
	
i2l5445:; BSR set to: 0

	movf	((c:_endpoint_number)),c,w	;volatile
	btfss	status,2
	goto	i2u532_41
	goto	i2u532_40
i2u532_41:
	goto	i2l5449
i2u532_40:
	line	830
	
i2l5447:; BSR set to: 0

	call	_USBCtrlEPService	;wreg free
	line	831
	goto	i2l5451
	line	832
	
i2l616:
	line	834
	
i2l5449:
	movlw	high(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(_USTATcopy)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(_USTATcopy)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l5451
	line	835
	
i2l617:
	line	836
	goto	i2l5451
	line	837
	
i2l613:
	line	839
	goto	i2l610
	line	840
	
i2l618:
	line	803
	
i2l5451:
	incf	((c:USBDeviceTasks@i)),c
	
i2l5453:
		movlw	04h-1
	cpfsgt	((c:USBDeviceTasks@i)),c
	goto	i2u533_41
	goto	i2u533_40

i2u533_41:
	goto	i2l611
i2u533_40:
	goto	i2l610
	
i2l612:
	line	842
	
i2l610:
	line	844
	bcf	((c:4001)),c,5	;volatile
	line	845
	
i2l600:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBDeviceTasks
	__end_of_USBDeviceTasks:
	signat	_USBDeviceTasks,89
	global	i2_USBDeviceInit

;; *************** function i2_USBDeviceInit *****************
;; Defined at:
;;		line 295 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  USBDeviceIni    1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;;		i2_memset
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	295
global __ptext19
__ptext19:
psect	text19
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	295
	global	__size_ofi2_USBDeviceInit
	__size_ofi2_USBDeviceInit	equ	__end_ofi2_USBDeviceInit-i2_USBDeviceInit
	
i2_USBDeviceInit:
;incstack = 0
	opt	stack 24
	line	299
	
i2l5239:
	bcf	((c:4000)),c,5	;volatile
	line	306
	
i2l5241:
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	line	309
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	312
	movlw	low(0)
	movwf	((c:3952)),c	;volatile
	line	314
	
i2l5243:
		movlw	low(3953)
	movwf	((c:i2memset@p1)),c
	movlw	high(3953)
	movwf	((c:i2memset@p1+1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(02h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(02h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	316
	
i2l5245:
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	
i2l5247:
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	
i2l5249:
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	325
	
i2l5251:
	movlw	low(0)
	movwf	((c:i2USBDeviceInit@i)),c
	
i2l5253:
		movlw	0Ch-1
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u498_41
	goto	i2u498_40

i2u498_41:
	goto	i2l5257
i2u498_40:
	goto	i2l588
	
i2l5255:
	goto	i2l588
	line	326
	
i2l587:
	line	327
	
i2l5257:
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	04h
	movlw	low(1024)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(1024)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	325
	
i2l5259:
	incf	((c:i2USBDeviceInit@i)),c
	
i2l5261:
		movlw	0Ch-1
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u499_41
	goto	i2u499_40

i2u499_41:
	goto	i2l5257
i2u499_40:
	
i2l588:
	line	331
	bsf	((c:3949)),c,6	;volatile
	line	334
	
i2l5263:
	movlw	low(0)
	movwf	((c:3950)),c	;volatile
	line	337
	
i2l5265:
	bcf	((c:3949)),c,4	;volatile
	line	340
	
i2l5267:
	bcf	((c:3949)),c,6	;volatile
	goto	i2l5269
	line	343
	
i2l589:
	line	345
	
i2l5269:
	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	347
	
i2l5271:
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	line	348
	
i2l5273:
	movlw	low(0)
	movwf	(0+((c:_outPipes)+03h)),c	;volatile
	line	349
	
i2l5275:
	movlw	high(0)
	movwf	(1+((c:_outPipes)+04h)),c	;volatile
	movlw	low(0)
	movwf	(0+((c:_outPipes)+04h)),c	;volatile
	line	350
	
i2l5277:
	btfsc	((c:3944)),c,3	;volatile
	goto	i2u500_41
	goto	i2u500_40
i2u500_41:
	goto	i2l5269
i2u500_40:
	goto	i2l5279
	
i2l590:
	line	354
	
i2l5279:
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	355
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	357
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	358
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	359
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	363
	movlw	low(0)
	movwf	((c:i2USBDeviceInit@i)),c
	
i2l5281:; BSR set to: 0

		movlw	03h-1
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u501_41
	goto	i2u501_40

i2u501_41:
	goto	i2l5285
i2u501_40:
	goto	i2l5291
	
i2l5283:; BSR set to: 0

	goto	i2l5291
	line	364
	
i2l591:; BSR set to: 0

	line	365
	
i2l5285:
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	366
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	367
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	01h
	movlw	low(_ep_data_in)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_in)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	368
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	01h
	movlw	low(_ep_data_out)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_out)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	363
	
i2l5287:
	incf	((c:i2USBDeviceInit@i)),c
	
i2l5289:
		movlw	03h-1
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u502_41
	goto	i2u502_40

i2u502_41:
	goto	i2l5285
i2u502_40:
	goto	i2l5291
	
i2l592:
	line	372
	
i2l5291:
		movlw	low(1024+08h)
	movwf	((c:_pBDTEntryIn)),c
	movlw	high(1024+08h)
	movwf	((c:_pBDTEntryIn+1)),c

	line	374
	
i2l5293:
	movlw	low(016h)
	movwf	((c:3952)),c	;volatile
	line	376
	
i2l5295:
	movlw	high(0430h)
	movlb	4	; () banked
	movwf	(1+(1024+02h))&0ffh	;volatile
	movlw	low(0430h)
	movwf	(0+(1024+02h))&0ffh	;volatile
	line	377
	
i2l5297:; BSR set to: 4

	movlw	low(08h)
	movlb	4	; () banked
	movwf	(0+(1024+01h))&0ffh	;volatile
	line	378
	
i2l5299:; BSR set to: 4

	movlw	low(04h)
	movlb	4	; () banked
	movwf	((1024))&0ffh	;volatile
	line	379
	
i2l5301:; BSR set to: 4

	movlb	4	; () banked
	bsf	(0+(7/8)+(1024))&0ffh,(7)&7	;volatile
	line	382
	
i2l5303:; BSR set to: 4

	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	384
	
i2l5305:; BSR set to: 4

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USB1msTickCount))&0ffh	;volatile
	movlw	high(0)
	movwf	((_USB1msTickCount+1))&0ffh	;volatile
	movlw	low highword(0)
	movwf	((_USB1msTickCount+2))&0ffh	;volatile
	movlw	high highword(0)
	movwf	((_USB1msTickCount+3))&0ffh	;volatile
	line	385
	
i2l5307:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBTicksSinceSuspendEnd))&0ffh	;volatile
	line	388
	
i2l5309:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_USBDeviceState)),c	;volatile
	line	389
	
i2l593:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_ofi2_USBDeviceInit
	__end_ofi2_USBDeviceInit:
	signat	i2_USBDeviceInit,89
	global	_USBWakeFromSuspend

;; *************** function _USBWakeFromSuspend *****************
;; Defined at:
;;		line 2321 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	2321
global __ptext20
__ptext20:
psect	text20
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2321
	global	__size_of_USBWakeFromSuspend
	__size_of_USBWakeFromSuspend	equ	__end_of_USBWakeFromSuspend-_USBWakeFromSuspend
	
_USBWakeFromSuspend:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	2323
	
i2l5051:
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	2329
	
i2l5053:
	movlw	high(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2336
	
i2l5055:
	bcf	((c:3949)),c,1	;volatile
	line	2341
	
i2l5057:
	bcf	((c:3945)),c,2	;volatile
	line	2359
	goto	i2l5061
	
i2l758:
	line	2362
	
i2l5059:
	bcf	(0+(2/8)+(c:3944)),c,(2)&7	;volatile
	goto	i2l5061
	line	2363
	
i2l757:
	line	2359
	
i2l5061:
	btfsc	((c:3944)),c,2	;volatile
	goto	i2u468_41
	goto	i2u468_40
i2u468_41:
	goto	i2l5059
i2u468_40:
	goto	i2l5063
	
i2l759:
	line	2365
	
i2l5063:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBTicksSinceSuspendEnd))&0ffh	;volatile
	line	2367
	
i2l760:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBWakeFromSuspend
	__end_of_USBWakeFromSuspend:
	signat	_USBWakeFromSuspend,89
	global	_USBSuspend

;; *************** function _USBSuspend *****************
;; Defined at:
;;		line 2263 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	2263
global __ptext21
__ptext21:
psect	text21
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2263
	global	__size_of_USBSuspend
	__size_of_USBSuspend	equ	__end_of_USBSuspend-_USBSuspend
	
_USBSuspend:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	2288
	
i2l5065:
	bsf	((c:3945)),c,2	;volatile
	line	2289
	
i2l5067:
	bcf	(0+(4/8)+(c:3944)),c,(4)&7	;volatile
	line	2292
	
i2l5069:
	bsf	((c:3949)),c,1	;volatile
	line	2295
	
i2l5071:
	movlw	low(01h)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	2296
	
i2l5073:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBTicksSinceSuspendEnd))&0ffh	;volatile
	line	2303
	
i2l5075:; BSR set to: 0

	movlw	high(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2304
	
i2l754:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBSuspend
	__end_of_USBSuspend:
	signat	_USBSuspend,89
	global	_USBStallHandler

;; *************** function _USBStallHandler *****************
;; Defined at:
;;		line 2220 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	line	2220
global __ptext22
__ptext22:
psect	text22
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2220
	global	__size_of_USBStallHandler
	__size_of_USBStallHandler	equ	__end_of_USBStallHandler-_USBStallHandler
	
_USBStallHandler:
;incstack = 0
	opt	stack 25
	line	2232
	
i2l5087:
	btfss	((c:3952)),c,0	;volatile
	goto	i2u471_41
	goto	i2u471_40
i2u471_41:
	goto	i2l749
i2u471_40:
	line	2235
	
i2l5089:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	128
	xorwf	postinc2,w
	btfss	status,2
	goto	i2u472_41
	goto	i2u472_40

i2u472_41:
	goto	i2l5097
i2u472_40:
	
i2l5091:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	132
	xorwf	postinc2,w
	btfss	status,2
	goto	i2u473_41
	goto	i2u473_40

i2u473_41:
	goto	i2l5097
i2u473_40:
	line	2238
	
i2l5093:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2239
	
i2l5095:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l5097
	line	2240
	
i2l750:
	line	2241
	
i2l5097:
	bcf	((c:3952)),c,0	;volatile
	line	2242
	
i2l749:
	line	2244
	bcf	(0+(5/8)+(c:3944)),c,(5)&7	;volatile
	line	2245
	
i2l751:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStallHandler
	__end_of_USBStallHandler:
	signat	_USBStallHandler,89
	global	_USBIncrement1msInternalTimers

;; *************** function _USBIncrement1msInternalTimers *****************
;; Defined at:
;;		line 3042 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	3042
global __ptext23
__ptext23:
psect	text23
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	3042
	global	__size_of_USBIncrement1msInternalTimers
	__size_of_USBIncrement1msInternalTimers	equ	__end_of_USBIncrement1msInternalTimers-_USBIncrement1msInternalTimers
	
_USBIncrement1msInternalTimers:
;incstack = 0
	opt	stack 25
	line	3050
	
i2l5077:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_USB1msTickCount))&0ffh	;volatile
	movlw	0
	addwfc	((_USB1msTickCount+1))&0ffh	;volatile
	addwfc	((_USB1msTickCount+2))&0ffh	;volatile
	addwfc	((_USB1msTickCount+3))&0ffh	;volatile
	line	3051
	
i2l5079:; BSR set to: 0

	movf	((c:_USBBusIsSuspended)),c,w	;volatile
	btfss	status,2
	goto	i2u469_41
	goto	i2u469_40
i2u469_41:
	goto	i2l841
i2u469_40:
	line	3053
	
i2l5081:; BSR set to: 0

	movlb	0	; () banked
	incf	((_USBTicksSinceSuspendEnd))&0ffh	;volatile
	line	3055
	
i2l5083:; BSR set to: 0

	movlb	0	; () banked
	movf	((_USBTicksSinceSuspendEnd))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u470_41
	goto	i2u470_40
i2u470_41:
	goto	i2l841
i2u470_40:
	line	3057
	
i2l5085:; BSR set to: 0

	movlb	0	; () banked
	setf	((_USBTicksSinceSuspendEnd))&0ffh	;volatile
	goto	i2l841
	line	3058
	
i2l840:; BSR set to: 0

	goto	i2l841
	line	3059
	
i2l839:; BSR set to: 0

	line	3060
	
i2l841:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBIncrement1msInternalTimers
	__end_of_USBIncrement1msInternalTimers:
	signat	_USBIncrement1msInternalTimers,89
	global	_USBCtrlEPService

;; *************** function _USBCtrlEPService *****************
;; Defined at:
;;		line 2390 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_USBCtrlTrfInHandler
;;		_USBCtrlTrfOutHandler
;;		_USBCtrlTrfSetupHandler
;;		_memcpy
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	line	2390
global __ptext24
__ptext24:
psect	text24
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2390
	global	__size_of_USBCtrlEPService
	__size_of_USBCtrlEPService	equ	__end_of_USBCtrlEPService-_USBCtrlEPService
	
_USBCtrlEPService:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	2396
	
i2l5099:
	movlw	low(02Dh)
	movwf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	line	2400
	
i2l5101:
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	movlw	0FDh
	andwf	(??_USBCtrlEPService+0+0),c
	btfss	status,2
	goto	i2u474_41
	goto	i2u474_40
i2u474_41:
	goto	i2l5117
i2u474_40:
	line	2404
	
i2l5103:
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	bcf	status,0
	rrcf	(??_USBCtrlEPService+0+0),c

	movlw	03Fh
	andwf	(??_USBCtrlEPService+0+0),c
	movf	(??_USBCtrlEPService+0+0),c,w
	mullw	04h
	movlw	low(1024)
	addwf	(prodl),c,w
	movwf	((c:_pBDTEntryEP0OutCurrent)),c
	movlw	high(1024)
	addwfc	prod+1,w
	movwf	1+((c:_pBDTEntryEP0OutCurrent)),c
	line	2412
	
i2l5105:
		movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)
	movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)

	line	2414
	
i2l5107:
	movlw	(04h)&0ffh
	xorwf	((c:_pBDTEntryEP0OutNext)),c
	line	2417
	
i2l5109:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	rrcf	(c:indf2),c,w
	rrcf	wreg,f
	andlw	(1<<4)-1
	xorlw	0Dh
	btfss	status,2
	goto	i2u475_41
	goto	i2u475_40
i2u475_41:
	goto	i2l5115
i2u475_40:
	line	2423
	
i2l5111:
		movlw	low(1072)
	movwf	((c:memcpy@d1)),c
	movlw	high(1072)
	movwf	((c:memcpy@d1+1)),c

	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movff	postinc2,(c:memcpy@s1)
	movff	postdec2,(c:memcpy@s1+1)
	movlw	high(08h)
	movwf	((c:memcpy@n+1)),c
	movlw	low(08h)
	movwf	((c:memcpy@n)),c
	call	_memcpy	;wreg free
	line	2426
	
i2l5113:
	call	_USBCtrlTrfSetupHandler	;wreg free
	line	2427
	goto	i2l768
	line	2428
	
i2l764:
	line	2431
	
i2l5115:
	call	_USBCtrlTrfOutHandler	;wreg free
	goto	i2l768
	line	2432
	
i2l765:
	line	2433
	goto	i2l768
	line	2434
	
i2l763:
	
i2l5117:
	movf	((c:_USTATcopy)),c,w	;volatile
	andlw	low(0FDh)
	xorlw	04h
	btfss	status,2
	goto	i2u476_41
	goto	i2u476_40
i2u476_41:
	goto	i2l768
i2u476_40:
	line	2438
	
i2l5119:
	call	_USBCtrlTrfInHandler	;wreg free
	goto	i2l768
	line	2439
	
i2l767:
	goto	i2l768
	line	2441
	
i2l766:
	
i2l768:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlEPService
	__end_of_USBCtrlEPService:
	signat	_USBCtrlEPService,89
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 11 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              2    0[COMRAM] PTR void 
;;		 -> SetupPkt(8), 
;;  s1              2    2[COMRAM] PTR const void 
;;		 -> cdc_data_tx(64), cdc_data_rx(64), RAM(2047), CtrlTrfData(8), 
;;		 -> SetupPkt(8), NULL(0), 
;;  n               2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               2    8[COMRAM] PTR const unsigned char 
;;		 -> cdc_data_tx(64), cdc_data_rx(64), RAM(2047), CtrlTrfData(8), 
;;		 -> SetupPkt(8), NULL(0), 
;;  d               2    6[COMRAM] PTR unsigned char 
;;		 -> SetupPkt(8), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memcpy.c"
	line	11
global __ptext25
__ptext25:
psect	text25
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memcpy.c"
	line	11
	global	__size_of_memcpy
	__size_of_memcpy	equ	__end_of_memcpy-_memcpy
	
_memcpy:
;incstack = 0
	opt	stack 24
	line	24
	
i2l4849:
		movff	(c:memcpy@s1),(c:memcpy@s)
	movff	(c:memcpy@s1+1),(c:memcpy@s+1)

	line	25
		movff	(c:memcpy@d1),(c:memcpy@d)
	movff	(c:memcpy@d1+1),(c:memcpy@d+1)

	line	26
	goto	i2l4857
	
i2l1538:
	line	27
	
i2l4851:
	movff	(c:memcpy@s),fsr2l
	movff	(c:memcpy@s+1),fsr2h
	movff	(c:memcpy@d),fsr1l
	movff	(c:memcpy@d+1),fsr1h
	movff	indf2,indf1
	
i2l4853:
	infsnz	((c:memcpy@s)),c
	incf	((c:memcpy@s+1)),c
	
i2l4855:
	infsnz	((c:memcpy@d)),c
	incf	((c:memcpy@d+1)),c
	goto	i2l4857
	
i2l1537:
	line	26
	
i2l4857:
	decf	((c:memcpy@n)),c
	btfss	status,0
	decf	((c:memcpy@n+1)),c
		incf	((c:memcpy@n)),c,w
	bnz	i2u447_41
	incf	((c:memcpy@n+1)),c,w
	btfss	status,2
	goto	i2u447_41
	goto	i2u447_40

i2u447_41:
	goto	i2l4851
i2u447_40:
	goto	i2l1540
	
i2l1539:
	line	32
;	Return value of _memcpy is never used
	
i2l1540:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12410
	global	_USBCtrlTrfSetupHandler

;; *************** function _USBCtrlTrfSetupHandler *****************
;; Defined at:
;;		line 2483 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_USBCheckStdRequest
;;		_USBCtrlEPServiceComplete
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2483
global __ptext26
__ptext26:
psect	text26
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2483
	global	__size_of_USBCtrlTrfSetupHandler
	__size_of_USBCtrlTrfSetupHandler	equ	__end_of_USBCtrlTrfSetupHandler-_USBCtrlTrfSetupHandler
	
_USBCtrlTrfSetupHandler:
;incstack = 0
	opt	stack 18
	line	2488
	
i2l4859:
	movlw	low(0)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	2489
	movlw	low(0)
	movwf	((c:_USBDeferStatusStagePacket)),c	;volatile
	line	2490
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	2491
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	2492
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	2493
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2502
	
i2l4861:; BSR set to: 0

	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2503
	
i2l4863:; BSR set to: 0

	movlw	(04h)&0ffh
	xorwf	((c:_pBDTEntryIn)),c
	line	2504
	
i2l4865:; BSR set to: 0

	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2505
	
i2l4867:; BSR set to: 0

	movlw	(04h)&0ffh
	xorwf	((c:_pBDTEntryIn)),c
	line	2506
	
i2l4869:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2508
	
i2l4871:; BSR set to: 0

	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	line	2509
	
i2l4873:; BSR set to: 0

	movlw	high(0)
	movwf	(1+((c:_inPipes)+04h)),c	;volatile
	movlw	low(0)
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	line	2510
	
i2l4875:; BSR set to: 0

	movlw	low(0)
	movwf	(0+((c:_outPipes)+03h)),c	;volatile
	line	2511
	
i2l4877:; BSR set to: 0

	movlw	high(0)
	movwf	(1+((c:_outPipes)+04h)),c	;volatile
	movlw	low(0)
	movwf	(0+((c:_outPipes)+04h)),c	;volatile
	line	2517
	
i2l4879:; BSR set to: 0

	call	_USBCheckStdRequest	;wreg free
	line	2518
	
i2l4881:
	movlw	high(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2531
	
i2l4883:
	call	_USBCtrlEPServiceComplete	;wreg free
	line	2532
	
i2l771:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfSetupHandler
	__end_of_USBCtrlTrfSetupHandler:
	signat	_USBCtrlTrfSetupHandler,89
	global	_USBCtrlEPServiceComplete

;; *************** function _USBCtrlEPServiceComplete *****************
;; Defined at:
;;		line 1634 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	1634
global __ptext27
__ptext27:
psect	text27
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1634
	global	__size_of_USBCtrlEPServiceComplete
	__size_of_USBCtrlEPServiceComplete	equ	__end_of_USBCtrlEPServiceComplete-_USBCtrlEPServiceComplete
	
_USBCtrlEPServiceComplete:
;incstack = 0
	opt	stack 21
	line	1640
	
i2l4679:
	bcf	((c:3949)),c,4	;volatile
	line	1646
	btfsc	(0+((c:_inPipes)+03h)),c,7	;volatile
	goto	i2u430_41
	goto	i2u430_40
i2u430_41:
	goto	i2l673
i2u430_40:
	line	1648
	
i2l4681:
	btfss	(0+((c:_outPipes)+03h)),c,7	;volatile
	goto	i2u431_41
	goto	i2u431_40
i2u431_41:
	goto	i2l4691
i2u431_40:
	line	1650
	
i2l4683:
	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1661
	movlb	0	; () banked
	movf	((_USBDeferOUTDataStagePackets))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u432_41
	goto	i2u432_40
i2u432_41:
	goto	i2l4687
i2u432_40:
	line	1663
	
i2l4685:; BSR set to: 0

	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l4687
	line	1664
	
i2l675:
	line	1668
	
i2l4687:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1669
	
i2l4689:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1670
	goto	i2l683
	line	1671
	
i2l674:
	line	1677
	
i2l4691:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1678
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0430h)
	movwf	postinc2,c
	movlw	high(0430h)
	movwf	postdec2,c
	line	1679
	
i2l4693:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	1680
	
i2l4695:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1681
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1682
	
i2l4697:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l683
	line	1683
	
i2l676:
	line	1684
	goto	i2l683
	line	1685
	
i2l673:
	line	1687
	movlb	4	; () banked
	btfss	((1072))&0ffh,7	;volatile
	goto	i2u433_41
	goto	i2u433_40
i2u433_41:
	goto	i2l4711
i2u433_40:
	line	1689
	
i2l4699:; BSR set to: 4

	movlw	low(01h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1703
	movlb	0	; () banked
	movf	((_USBDeferINDataStagePackets))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u434_41
	goto	i2u434_40
i2u434_41:
	goto	i2l4703
i2u434_40:
	line	1705
	
i2l4701:; BSR set to: 0

	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l4703
	line	1706
	
i2l679:
	line	1728
	
i2l4703:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1729
	
i2l4705:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1730
	
i2l4707:
	movf	((c:_USBDeferStatusStagePacket)),c,w	;volatile
	btfss	status,2
	goto	i2u435_41
	goto	i2u435_40
i2u435_41:
	goto	i2l683
i2u435_40:
	line	1732
	
i2l4709:
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l683
	line	1733
	
i2l680:
	line	1734
	goto	i2l683
	line	1735
	
i2l678:
	line	1747
	
i2l4711:
	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1750
	
i2l4713:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1751
	
i2l4715:
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0430h)
	movwf	postinc2,c
	movlw	high(0430h)
	movwf	postdec2,c
	line	1752
	
i2l4717:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1753
	
i2l4719:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1756
	
i2l4721:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1757
	
i2l4723:
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1758
	
i2l4725:
	movf	((c:_USBDeferStatusStagePacket)),c,w	;volatile
	btfss	status,2
	goto	i2u436_41
	goto	i2u436_40
i2u436_41:
	goto	i2l683
i2u436_40:
	line	1760
	
i2l4727:
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l683
	line	1761
	
i2l682:
	goto	i2l683
	line	1762
	
i2l681:
	goto	i2l683
	line	1764
	
i2l677:
	line	1766
	
i2l683:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlEPServiceComplete
	__end_of_USBCtrlEPServiceComplete:
	signat	_USBCtrlEPServiceComplete,89
	global	_USBCtrlEPAllowDataStage

;; *************** function _USBCtrlEPAllowDataStage *****************
;; Defined at:
;;		line 1506 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPServiceComplete
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	1506
global __ptext28
__ptext28:
psect	text28
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1506
	global	__size_of_USBCtrlEPAllowDataStage
	__size_of_USBCtrlEPAllowDataStage	equ	__end_of_USBCtrlEPAllowDataStage-_USBCtrlEPAllowDataStage
	
_USBCtrlEPAllowDataStage:
;incstack = 0
	opt	stack 21
	line	1508
	
i2l4475:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	1509
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	1511
	
i2l4477:; BSR set to: 0

		movlw	2
	xorwf	((c:_controlTransferState)),c,w	;volatile
	btfss	status,2
	goto	i2u396_41
	goto	i2u396_40

i2u396_41:
	goto	i2l4485
i2u396_40:
	line	1514
	
i2l4479:; BSR set to: 0

	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1515
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0438h)
	movwf	postinc2,c
	movlw	high(0438h)
	movwf	postdec2,c
	line	1516
	
i2l4481:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1517
	
i2l4483:; BSR set to: 0

	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1518
	goto	i2l665
	line	1519
	
i2l662:; BSR set to: 0

	line	1523
	
i2l4485:; BSR set to: 0

		movf	(0+((c:_inPipes)+04h)),c,w	;volatile
	movlb	4	; () banked
	subwf	(0+(1072+06h))&0ffh,w	;volatile
	movf	(1+((c:_inPipes)+04h)),c,w	;volatile
	movlb	4	; () banked
	subwfb	(1+(1072+06h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u397_41
	goto	i2u397_40

i2u397_41:
	goto	i2l4489
i2u397_40:
	line	1525
	
i2l4487:; BSR set to: 4

	movff	0+(1072+06h),0+((c:_inPipes)+04h)	;volatile
	movff	1+(1072+06h),1+((c:_inPipes)+04h)	;volatile
	goto	i2l4489
	line	1526
	
i2l664:; BSR set to: 4

	line	1527
	
i2l4489:; BSR set to: 4

	call	_USBCtrlTrfTxService	;wreg free
	line	1532
	
i2l4491:
	lfsr	2,02h
	movf	((c:_pBDTEntryIn)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1)),c,w
	addwfc	fsr2h
	movlw	low(0438h)
	movwf	postinc2,c
	movlw	high(0438h)
	movwf	postdec2,c
	line	1533
	
i2l4493:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1534
	
i2l4495:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l665
	line	1535
	
i2l663:
	line	1536
	
i2l665:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowDataStage
	__end_of_USBCtrlEPAllowDataStage:
	signat	_USBCtrlEPAllowDataStage,89
	global	_USBCheckStdRequest

;; *************** function _USBCheckStdRequest *****************
;; Defined at:
;;		line 2703 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USBStdFeatureReqHandler
;;		_USBStdGetDscHandler
;;		_USBStdGetStatusHandler
;;		_USBStdSetCfgHandler
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	2703
global __ptext29
__ptext29:
psect	text29
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2703
	global	__size_of_USBCheckStdRequest
	__size_of_USBCheckStdRequest	equ	__end_of_USBCheckStdRequest-_USBCheckStdRequest
	
_USBCheckStdRequest:
;incstack = 0
	opt	stack 18
	line	2705
	
i2l4773:
	movlb	4	; () banked
	swapf	((1072))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	iorlw	0
	btfsc	status,2
	goto	i2u442_41
	goto	i2u442_40
i2u442_41:
	goto	i2l4809
i2u442_40:
	goto	i2l796
	
i2l4775:; BSR set to: 4

	goto	i2l796
	
i2l795:; BSR set to: 4

	line	2707
	goto	i2l4809
	line	2709
	
i2l798:; BSR set to: 4

	line	2710
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2711
	
i2l4777:; BSR set to: 4

	movlw	low(08h)
	movwf	((c:_USBDeviceState)),c	;volatile
	line	2713
	goto	i2l796
	line	2714
	
i2l800:; BSR set to: 4

	line	2715
	
i2l4779:; BSR set to: 4

	call	_USBStdGetDscHandler	;wreg free
	line	2716
	goto	i2l796
	line	2717
	
i2l801:
	line	2718
	
i2l4781:
	call	_USBStdSetCfgHandler	;wreg free
	line	2719
	goto	i2l796
	line	2720
	
i2l802:
	line	2721
	
i2l4783:
		movlw	low(_USBActiveConfiguration)
	movwf	((c:_inPipes)),c	;volatile
	movlw	high(_USBActiveConfiguration)
	movwf	((c:_inPipes+1)),c	;volatile

	line	2722
	
i2l4785:
	bsf	(0+((c:_inPipes)+03h)),c,0	;volatile
	line	2723
	
i2l4787:
	movlw	low(01h)
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	line	2724
	
i2l4789:
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2725
	goto	i2l796
	line	2726
	
i2l803:
	line	2727
	
i2l4791:
	call	_USBStdGetStatusHandler	;wreg free
	line	2728
	goto	i2l796
	line	2729
	
i2l804:
	goto	i2l4793
	line	2730
	
i2l805:
	line	2731
	
i2l4793:
	call	_USBStdFeatureReqHandler	;wreg free
	line	2732
	goto	i2l796
	line	2733
	
i2l806:
	line	2734
	
i2l4795:
	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low(_USBAlternateInterface)
	addwf	(prodl),c,w
	movwf	((c:_inPipes)),c	;volatile
	movlw	high(_USBAlternateInterface)
	addwfc	prod+1,w
	movwf	1+((c:_inPipes)),c	;volatile
	line	2735
	
i2l4797:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,0	;volatile
	line	2736
	
i2l4799:; BSR set to: 4

	movlw	low(01h)
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	line	2737
	
i2l4801:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2738
	goto	i2l796
	line	2739
	
i2l807:; BSR set to: 4

	line	2740
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2741
	
i2l4803:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low(_USBAlternateInterface)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_USBAlternateInterface)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	0+(1072+02h),indf2	;volatile

	line	2742
	goto	i2l796
	line	2743
	
i2l808:; BSR set to: 4

	line	2744
	
i2l4805:; BSR set to: 4

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2745
	goto	i2l796
	line	2746
	
i2l809:
	goto	i2l796
	line	2747
	
i2l810:
	line	2748
	goto	i2l796
	line	2749
	
i2l4807:
	goto	i2l796
	line	2707
	
i2l797:
	
i2l4809:
	movlb	4	; () banked
	movf	(0+(1072+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l4791
	xorlw	1^0	; case 1
	skipnz
	goto	i2l4793
	xorlw	3^1	; case 3
	skipnz
	goto	i2l4793
	xorlw	5^3	; case 5
	skipnz
	goto	i2l798
	xorlw	6^5	; case 6
	skipnz
	goto	i2l4779
	xorlw	7^6	; case 7
	skipnz
	goto	i2l4805
	xorlw	8^7	; case 8
	skipnz
	goto	i2l4783
	xorlw	9^8	; case 9
	skipnz
	goto	i2l4781
	xorlw	10^9	; case 10
	skipnz
	goto	i2l4795
	xorlw	11^10	; case 11
	skipnz
	goto	i2l807
	xorlw	12^11	; case 12
	skipnz
	goto	i2l796
	goto	i2l796

	line	2749
	
i2l799:; BSR set to: 4

	line	2750
	
i2l796:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCheckStdRequest
	__end_of_USBCheckStdRequest:
	signat	_USBCheckStdRequest,89
	global	_USBStdSetCfgHandler

;; *************** function _USBStdSetCfgHandler *****************
;; Defined at:
;;		line 1986 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		i2_memset
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	line	1986
global __ptext30
__ptext30:
psect	text30
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1986
	global	__size_of_USBStdSetCfgHandler
	__size_of_USBStdSetCfgHandler	equ	__end_of_USBStdSetCfgHandler-_USBStdSetCfgHandler
	
_USBStdSetCfgHandler:
;incstack = 0
	opt	stack 18
	line	1991
	
i2l4497:
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	1994
	
i2l4499:
		movlw	low(3953)
	movwf	((c:i2memset@p1)),c
	movlw	high(3953)
	movwf	((c:i2memset@p1+1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(02h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(02h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	1997
		movlw	low(1024)
	movwf	((c:i2memset@p1)),c
	movlw	high(1024)
	movwf	((c:i2memset@p1+1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(030h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(030h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	2000
	
i2l4501:
	bsf	((c:3949)),c,6	;volatile
	line	2005
	
i2l4503:
	movlw	low(0)
	movwf	((c:USBStdSetCfgHandler@i)),c
	
i2l4505:
		movlw	03h-1
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u398_41
	goto	i2u398_40

i2u398_41:
	goto	i2l4509
i2u398_40:
	goto	i2l4515
	
i2l4507:
	goto	i2l4515
	line	2006
	
i2l714:
	line	2007
	
i2l4509:
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlw	low(_ep_data_in)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_in)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	2008
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlw	low(_ep_data_out)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_out)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	2005
	
i2l4511:
	incf	((c:USBStdSetCfgHandler@i)),c
	
i2l4513:
		movlw	03h-1
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u399_41
	goto	i2u399_40

i2u399_41:
	goto	i2l4509
i2u399_40:
	goto	i2l4515
	
i2l715:
	line	2012
	
i2l4515:
		movlw	low(_USBAlternateInterface)
	movwf	((c:i2memset@p1)),c
	movlw	high(_USBAlternateInterface)
	movwf	((c:i2memset@p1+1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(02h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(02h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	2015
	
i2l4517:
	bcf	((c:3949)),c,6	;volatile
	line	2017
	
i2l4519:
		movlw	low(1024+08h)
	movwf	((c:_pBDTEntryIn)),c
	movlw	high(1024+08h)
	movwf	((c:_pBDTEntryIn+1)),c

	line	2020
	
i2l4521:
		movlw	low(1024)
	movwf	((c:_pBDTEntryEP0OutCurrent)),c
	movlw	high(1024)
	movwf	((c:_pBDTEntryEP0OutCurrent+1)),c

	line	2021
	
i2l4523:
		movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)
	movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)

	line	2024
	
i2l4525:
	movff	0+(1072+02h),(c:_USBActiveConfiguration)	;volatile
	line	2027
	
i2l4527:
	movf	((c:_USBActiveConfiguration)),c,w	;volatile
	btfss	status,2
	goto	i2u400_41
	goto	i2u400_40
i2u400_41:
	goto	i2l4531
i2u400_40:
	line	2030
	
i2l4529:
	movlw	low(010h)
	movwf	((c:_USBDeviceState)),c	;volatile
	line	2031
	goto	i2l718
	line	2032
	
i2l716:
	line	2035
	
i2l4531:
	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	low(_USBActiveConfiguration)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c
	movlw	high(_USBActiveConfiguration)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2040
	
i2l4533:
	movlw	low(020h)
	movwf	((c:_USBDeviceState)),c	;volatile
	goto	i2l718
	line	2041
	
i2l717:
	line	2042
	
i2l718:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdSetCfgHandler
	__end_of_USBStdSetCfgHandler:
	signat	_USBStdSetCfgHandler,89
	global	i2_memset

;; *************** function i2_memset *****************
;; Defined at:
;;		line 8 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    0[COMRAM] PTR void 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;;  c               2    2[COMRAM] int 
;;  n               2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  memset          2    6[COMRAM] PTR unsigned char 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBStdSetCfgHandler
;;		i2_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memset.c"
	line	8
global __ptext31
__ptext31:
psect	text31
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\sources\common\memset.c"
	line	8
	global	__size_ofi2_memset
	__size_ofi2_memset	equ	__end_ofi2_memset-i2_memset
	
i2_memset:
;incstack = 0
	opt	stack 24
	line	18
	
i2l4433:
		movff	(c:i2memset@p1),(c:i2memset@p)
	movff	(c:i2memset@p1+1),(c:i2memset@p+1)

	line	19
	goto	i2l4439
	
i2l1544:
	line	20
	
i2l4435:
	movff	(c:i2memset@p),fsr2l
	movff	(c:i2memset@p+1),fsr2h
	movff	(c:i2memset@c),indf2

	
i2l4437:
	infsnz	((c:i2memset@p)),c
	incf	((c:i2memset@p+1)),c
	goto	i2l4439
	
i2l1543:
	line	19
	
i2l4439:
	decf	((c:i2memset@n)),c
	btfss	status,0
	decf	((c:i2memset@n+1)),c
		incf	((c:i2memset@n)),c,w
	bnz	i2u391_41
	incf	((c:i2memset@n+1)),c,w
	btfss	status,2
	goto	i2u391_41
	goto	i2u391_40

i2u391_41:
	goto	i2l4435
i2u391_40:
	goto	i2l1546
	
i2l1545:
	line	22
;	Return value of i2_memset is never used
	
i2l1546:
	return	;funcret
	opt stack 0
GLOBAL	__end_ofi2_memset
	__end_ofi2_memset:
	signat	i2_memset,90
	global	_USBStdGetStatusHandler

;; *************** function _USBStdGetStatusHandler *****************
;; Defined at:
;;		line 2147 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2    1[COMRAM] PTR struct __BDT
;;		 -> NULL(0), BDT(48), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2147
global __ptext32
__ptext32:
psect	text32
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2147
	global	__size_of_USBStdGetStatusHandler
	__size_of_USBStdGetStatusHandler	equ	__end_of_USBStdGetStatusHandler-_USBStdGetStatusHandler
	
_USBStdGetStatusHandler:
;incstack = 0
	opt	stack 22
	line	2149
	
i2l4567:
	movlw	low(0)
	movlb	4	; () banked
	movwf	((1080))&0ffh	;volatile
	line	2150
	movlw	low(0)
	movlb	4	; () banked
	movwf	(0+(1080+01h))&0ffh	;volatile
	line	2152
	goto	i2l4587
	line	2154
	
i2l736:; BSR set to: 4

	line	2155
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2162
	
i2l4569:; BSR set to: 4

	movlb	4	; () banked
	bsf	(0+(0/8)+(1080))&0ffh,(0)&7	;volatile
	goto	i2l4571
	line	2163
	
i2l737:; BSR set to: 4

	line	2165
	
i2l4571:; BSR set to: 4

		decf	((c:_RemoteWakeup)),c,w	;volatile
	btfss	status,2
	goto	i2u407_41
	goto	i2u407_40

i2u407_41:
	goto	i2l739
i2u407_40:
	line	2167
	
i2l4573:; BSR set to: 4

	movlb	4	; () banked
	bsf	(0+(1/8)+(1080))&0ffh,(1)&7	;volatile
	goto	i2l739
	line	2168
	
i2l738:; BSR set to: 4

	line	2169
	goto	i2l739
	line	2170
	
i2l740:; BSR set to: 4

	line	2171
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2172
	goto	i2l739
	line	2173
	
i2l741:; BSR set to: 4

	line	2174
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2181
	movlb	4	; () banked
	btfsc	(0+(1072+04h))&0ffh,7	;volatile
	goto	i2u408_41
	goto	i2u408_40
i2u408_41:
	goto	i2l4577
i2u408_40:
	line	2183
	
i2l4575:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movf	((??_USBStdGetStatusHandler+0+0)),c,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	line	2184
	goto	i2l4579
	line	2185
	
i2l742:; BSR set to: 4

	line	2187
	
i2l4577:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movf	((??_USBStdGetStatusHandler+0+0)),c,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	goto	i2l4579
	line	2188
	
i2l743:; BSR set to: 4

	line	2190
	
i2l4579:; BSR set to: 4

	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	i2u409_41
	goto	i2u409_40
i2u409_41:
	goto	i2l739
i2u409_40:
	
i2l4581:; BSR set to: 4

	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	c:indf2,2
	goto	i2u410_41
	goto	i2u410_40
i2u410_41:
	goto	i2l739
i2u410_40:
	line	2191
	
i2l4583:; BSR set to: 4

	movlw	low(01h)
	movlb	4	; () banked
	movwf	((1080))&0ffh	;volatile
	goto	i2l739
	
i2l744:; BSR set to: 4

	line	2192
	goto	i2l739
	line	2194
	
i2l4585:; BSR set to: 4

	goto	i2l739
	line	2152
	
i2l735:; BSR set to: 4

	
i2l4587:; BSR set to: 4

	movlb	4	; () banked
	movf	((1072))&0ffh,w	;volatile
	andlw	(1<<5)-1
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l736
	xorlw	1^0	; case 1
	skipnz
	goto	i2l740
	xorlw	2^1	; case 2
	skipnz
	goto	i2l741
	goto	i2l739

	line	2194
	
i2l739:; BSR set to: 4

	line	2196
	btfss	(0+((c:_inPipes)+03h)),c,7	;volatile
	goto	i2u411_41
	goto	i2u411_40
i2u411_41:
	goto	i2l746
i2u411_40:
	line	2198
	
i2l4589:; BSR set to: 4

		movlw	low(1080)
	movwf	((c:_inPipes)),c	;volatile
	movlw	high(1080)
	movwf	((c:_inPipes+1)),c	;volatile

	line	2199
	
i2l4591:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,0	;volatile
	line	2200
	
i2l4593:; BSR set to: 4

	movlw	low(02h)
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	goto	i2l746
	line	2201
	
i2l745:; BSR set to: 4

	line	2202
	
i2l746:; BSR set to: 4

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdGetStatusHandler
	__end_of_USBStdGetStatusHandler:
	signat	_USBStdGetStatusHandler,89
	global	_USBStdGetDscHandler

;; *************** function _USBStdGetDscHandler *****************
;; Defined at:
;;		line 2061 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	line	2061
global __ptext33
__ptext33:
psect	text33
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2061
	global	__size_of_USBStdGetDscHandler
	__size_of_USBStdGetDscHandler	equ	__end_of_USBStdGetDscHandler-_USBStdGetDscHandler
	
_USBStdGetDscHandler:; BSR set to: 4

;incstack = 0
	opt	stack 22
	line	2063
	
i2l4535:
		movlw	128
	movlb	4	; () banked
	xorwf	((1072))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u401_41
	goto	i2u401_40

i2u401_41:
	goto	i2l732
i2u401_40:
	line	2065
	
i2l4537:; BSR set to: 4

	movlw	low(0C0h)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	line	2067
	goto	i2l4565
	line	2069
	
i2l723:; BSR set to: 4

	line	2073
	
i2l4539:; BSR set to: 4

		movlw	low(_device_dsc)
	movwf	((c:_inPipes)),c	;volatile
	movlw	high(_device_dsc)
	movwf	((c:_inPipes+1)),c	;volatile

	line	2075
	
i2l4541:; BSR set to: 4

	movlw	high(012h)
	movwf	(1+((c:_inPipes)+04h)),c	;volatile
	movlw	low(012h)
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	line	2076
	goto	i2l732
	line	2077
	
i2l725:; BSR set to: 4

	line	2081
	
i2l4543:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+02h))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u402_41
	goto	i2u402_40
i2u402_41:
	goto	i2l4551
i2u402_40:
	line	2086
	
i2l4545:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+02h))&0ffh,w	;volatile
	mullw	02h
	movlw	low((_USB_CD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_CD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:_inPipes)	;volatile
	tblrd*-
	
	movff	tablat,(c:_inPipes+1)	;volatile

	line	2092
	
i2l4547:; BSR set to: 4

	movlw	02h
	addwf	((c:_inPipes)),c,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movlw	0
	addwfc	((c:_inPipes+1)),c,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0+1)&0ffh,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u403_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u403_40
i2u403_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u403_40:
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	line	2093
	
i2l4549:
	movlw	03h
	addwf	((c:_inPipes)),c,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movlw	0
	addwfc	((c:_inPipes+1)),c,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0+1)&0ffh,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u404_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u404_40
i2u404_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u404_40:
	movwf	(0+((c:_inPipes)+05h)),c	;volatile
	line	2094
	goto	i2l732
	line	2095
	
i2l726:
	line	2097
	
i2l4551:
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	goto	i2l732
	line	2098
	
i2l727:
	line	2099
	goto	i2l732
	line	2100
	
i2l728:
	line	2104
	
i2l4553:
		movlw	03h-0
	movlb	4	; () banked
	cpfslt	(0+(1072+02h))&0ffh	;volatile
	goto	i2u405_41
	goto	i2u405_40

i2u405_41:
	goto	i2l4559
i2u405_40:
	line	2107
	
i2l4555:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+02h))&0ffh,w	;volatile
	mullw	02h
	movlw	low((_USB_SD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_SD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:_inPipes)	;volatile
	tblrd*-
	
	movff	tablat,(c:_inPipes+1)	;volatile

	line	2109
	
i2l4557:; BSR set to: 4

	movff	(c:_inPipes),tblptrl	;volatile
	movff	(c:_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u406_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u406_40
i2u406_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u406_40:
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movf	((??_USBStdGetDscHandler+0+0)),c,w
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	clrf	(1+((c:_inPipes)+04h)),c	;volatile
	line	2110
	goto	i2l732
	line	2120
	
i2l729:
	line	2122
	
i2l4559:
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	goto	i2l732
	line	2123
	
i2l730:
	line	2124
	goto	i2l732
	line	2125
	
i2l731:
	line	2126
	
i2l4561:
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	line	2127
	goto	i2l732
	line	2128
	
i2l4563:
	goto	i2l732
	line	2067
	
i2l722:
	
i2l4565:
	movlb	4	; () banked
	movf	(0+(1072+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l4539
	xorlw	2^1	; case 2
	skipnz
	goto	i2l4543
	xorlw	3^2	; case 3
	skipnz
	goto	i2l4553
	goto	i2l4561

	line	2128
	
i2l724:; BSR set to: 4

	goto	i2l732
	line	2129
	
i2l721:; BSR set to: 4

	line	2130
	
i2l732:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdGetDscHandler
	__end_of_USBStdGetDscHandler:
	signat	_USBStdGetDscHandler,89
	global	_USBStdFeatureReqHandler

;; *************** function _USBStdFeatureReqHandler *****************
;; Defined at:
;;		line 2771 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2   24[COMRAM] PTR struct __BDT
;;		 -> NULL(0), BDT(48), 
;;  pUEP            2   21[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;;  current_ep_d    1   23[COMRAM] struct .
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	2771
global __ptext34
__ptext34:
psect	text34
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2771
	global	__size_of_USBStdFeatureReqHandler
	__size_of_USBStdFeatureReqHandler	equ	__end_of_USBStdFeatureReqHandler-_USBStdFeatureReqHandler
	
_USBStdFeatureReqHandler:
;incstack = 0
	opt	stack 18
	line	2817
	
i2l4595:
	movlb	4	; () banked
		decf	(0+(1072+02h))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u412_41
	goto	i2u412_40

i2u412_41:
	goto	i2l813
i2u412_40:
	
i2l4597:; BSR set to: 4

	movlb	4	; () banked
	movf	((1072))&0ffh,w	;volatile
	andlw	(1<<5)-1
	iorlw	0
	btfss	status,2
	goto	i2u413_41
	goto	i2u413_40
i2u413_41:
	goto	i2l813
i2u413_40:
	line	2819
	
i2l4599:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2820
	
i2l4601:; BSR set to: 4

		movlw	3
	movlb	4	; () banked
	xorwf	(0+(1072+01h))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u414_41
	goto	i2u414_40

i2u414_41:
	goto	i2l4605
i2u414_40:
	line	2821
	
i2l4603:; BSR set to: 4

	movlw	low(01h)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l813
	line	2822
	
i2l814:; BSR set to: 4

	line	2823
	
i2l4605:; BSR set to: 4

	movlw	low(0)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l813
	
i2l815:; BSR set to: 4

	line	2824
	
i2l813:; BSR set to: 4

	line	2830
	movlb	4	; () banked
	movf	(0+(1072+02h))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u415_41
	goto	i2u415_40
i2u415_41:
	goto	i2l836
i2u415_40:
	
i2l4607:; BSR set to: 4

	movlb	4	; () banked
	movf	((1072))&0ffh,w	;volatile
	andlw	(1<<5)-1
	xorlw	02h
	btfss	status,2
	goto	i2u416_41
	goto	i2u416_40
i2u416_41:
	goto	i2l836
i2u416_40:
	
i2l4609:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	iorlw	0
	btfsc	status,2
	goto	i2u417_41
	goto	i2u417_40
i2u417_41:
	goto	i2l836
i2u417_40:
	
i2l4611:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
		movlw	03h-0
	cpfslt	((??_USBStdFeatureReqHandler+0+0)),c
	goto	i2u418_41
	goto	i2u418_40

i2u418_41:
	goto	i2l836
i2u418_40:
	
i2l4613:; BSR set to: 4

		movlw	32
	xorwf	((c:_USBDeviceState)),c,w	;volatile
	btfss	status,2
	goto	i2u419_41
	goto	i2u419_40

i2u419_41:
	goto	i2l836
i2u419_40:
	line	2834
	
i2l4615:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	2837
	movlb	4	; () banked
	btfsc	(0+(1072+04h))&0ffh,7	;volatile
	goto	i2u420_41
	goto	i2u420_40
i2u420_41:
	goto	i2l4619
i2u420_40:
	line	2839
	
i2l4617:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2840
	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(_ep_data_out)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_out)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	line	2841
	goto	i2l4621
	line	2842
	
i2l817:; BSR set to: 4

	line	2844
	
i2l4619:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2845
	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(_ep_data_in)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_in)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	goto	i2l4621
	line	2846
	
i2l818:; BSR set to: 4

	line	2852
	
i2l4621:; BSR set to: 4

	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,0
	goto	i2u421_41
	goto	i2u421_40
i2u421_41:
	goto	i2l4625
i2u421_40:
	line	2854
	
i2l4623:; BSR set to: 4

	bcf	(0+(2/8)+(c:USBStdFeatureReqHandler@p)),c,(2)&7
	line	2855
	goto	i2l4627
	line	2856
	
i2l819:; BSR set to: 4

	line	2858
	
i2l4625:; BSR set to: 4

	bsf	(0+(2/8)+(c:USBStdFeatureReqHandler@p)),c,(2)&7
	goto	i2l4627
	line	2859
	
i2l820:; BSR set to: 4

	line	2864
	
i2l4627:; BSR set to: 4

	movlb	4	; () banked
	btfsc	(0+(1072+04h))&0ffh,7	;volatile
	goto	i2u422_41
	goto	i2u422_40
i2u422_41:
	goto	i2l4631
i2u422_40:
	line	2866
	
i2l4629:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	line	2867
	goto	i2l4633
	line	2868
	
i2l821:; BSR set to: 4

	line	2870
	
i2l4631:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	goto	i2l4633
	line	2871
	
i2l822:; BSR set to: 4

	line	2874
	
i2l4633:; BSR set to: 4

		movlw	3
	movlb	4	; () banked
	xorwf	(0+(1072+01h))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u423_41
	goto	i2u423_40

i2u423_41:
	goto	i2l4647
i2u423_40:
	line	2876
	
i2l4635:; BSR set to: 4

	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	i2u424_41
	goto	i2u424_40
i2u424_41:
	goto	i2l4643
i2u424_40:
	line	2880
	
i2l4637:; BSR set to: 4

	movlb	4	; () banked
	btfsc	(0+(1072+04h))&0ffh,7	;volatile
	goto	i2u425_41
	goto	i2u425_40
i2u425_41:
	goto	i2l4641
i2u425_40:
	line	2882
	
i2l4639:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(_ep_data_out)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_out)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bsf	c:indf2,1
	line	2883
	goto	i2l4643
	line	2884
	
i2l825:; BSR set to: 0

	line	2886
	
i2l4641:
	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(_ep_data_in)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_in)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bsf	c:indf2,1
	goto	i2l4643
	line	2887
	
i2l826:; BSR set to: 0

	goto	i2l4643
	line	2888
	
i2l824:; BSR set to: 0

	line	2891
	
i2l4643:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(2/8)
	bsf	plusw2,(2)&7
	line	2892
	
i2l4645:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2893
	goto	i2l836
	line	2894
	
i2l823:
	line	2899
	
i2l4647:
	movlw	(04h)&0ffh
	xorwf	((c:USBStdFeatureReqHandler@p)),c
	line	2901
	
i2l4649:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	i2u426_41
	goto	i2u426_40
i2u426_41:
	goto	i2l4657
i2u426_40:
	line	2905
	
i2l4651:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2906
	
i2l4653:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	line	2907
	
i2l4655:
	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)
	movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2908
	goto	i2l4659
	line	2909
	
i2l828:
	line	2912
	
i2l4657:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	goto	i2l4659
	line	2913
	
i2l829:
	line	2917
	
i2l4659:
	movlw	(04h)&0ffh
	xorwf	((c:USBStdFeatureReqHandler@p)),c
	line	2923
	
i2l4661:
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,1
	goto	i2u427_41
	goto	i2u427_40
i2u427_41:
	goto	i2l832
i2u427_40:
	
i2l4663:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	i2u428_41
	goto	i2u428_40
i2u428_41:
	goto	i2l4673
i2u428_40:
	
i2l832:
	line	2925
	movlb	4	; () banked
	btfsc	(0+(1072+04h))&0ffh,7	;volatile
	goto	i2u429_41
	goto	i2u429_40
i2u429_41:
	goto	i2l4667
i2u429_40:
	line	2927
	
i2l4665:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(_ep_data_out)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_out)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bcf	c:indf2,1
	line	2928
	goto	i2l4669
	line	2929
	
i2l833:; BSR set to: 0

	line	2931
	
i2l4667:
	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(_ep_data_in)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ep_data_in)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bcf	c:indf2,1
	goto	i2l4669
	line	2932
	
i2l834:; BSR set to: 0

	line	2934
	
i2l4669:; BSR set to: 0

	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	line	2937
	
i2l4671:; BSR set to: 0

	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)
	movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2938
	goto	i2l4675
	line	2939
	
i2l830:
	line	2942
	
i2l4673:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	goto	i2l4675
	line	2943
	
i2l835:
	line	2990
	
i2l4675:
	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(3952)
	addwf	(prodl),c,w
	movwf	((c:USBStdFeatureReqHandler@pUEP)),c
	movlw	high(3952)
	addwfc	prod+1,w
	movwf	1+((c:USBStdFeatureReqHandler@pUEP)),c
	line	2994
	
i2l4677:; BSR set to: 4

	movff	(c:USBStdFeatureReqHandler@pUEP),fsr2l
	movff	(c:USBStdFeatureReqHandler@pUEP+1),fsr2h
	movlw	0FEh
	andwf	indf2
	goto	i2l836
	line	2995
	
i2l827:; BSR set to: 4

	goto	i2l836
	line	2996
	
i2l816:; BSR set to: 4

	line	2997
	
i2l836:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdFeatureReqHandler
	__end_of_USBStdFeatureReqHandler:
	signat	_USBStdFeatureReqHandler,89
	global	_USER_USB_CALLBACK_EVENT_HANDLER

;; *************** function _USER_USB_CALLBACK_EVENT_HANDLER *****************
;; Defined at:
;;		line 23 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_handler.c"
;; Parameters:    Size  Location     Type
;;  event           2   12[COMRAM] enum E4864
;;  pdata           2   14[COMRAM] PTR void 
;;		 -> USTATcopy(1), USBActiveConfiguration(1), NULL(0), BDT(48), 
;;  size            2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CDCInitEP
;;		_USBCheckCDCRequest
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBStdSetCfgHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USBCtrlTrfSetupHandler
;;		_USBCheckStdRequest
;;		_USBStdFeatureReqHandler
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_handler.c"
	line	23
global __ptext35
__ptext35:
psect	text35
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_serial_handler.c"
	line	23
	global	__size_of_USER_USB_CALLBACK_EVENT_HANDLER
	__size_of_USER_USB_CALLBACK_EVENT_HANDLER	equ	__end_of_USER_USB_CALLBACK_EVENT_HANDLER-_USER_USB_CALLBACK_EVENT_HANDLER
	
_USER_USB_CALLBACK_EVENT_HANDLER:
;incstack = 0
	opt	stack 22
	line	25
	
i2l4371:
	goto	i2l4379
	line	27
	
i2l970:
	line	28
	goto	i2l981
	line	30
	
i2l972:
	line	34
	goto	i2l981
	line	36
	
i2l973:
	line	47
	goto	i2l981
	line	49
	
i2l974:
	line	58
	goto	i2l981
	line	60
	
i2l975:
	line	64
	
i2l4373:
	call	_CDCInitEP	;wreg free
	line	65
	goto	i2l981
	line	67
	
i2l976:
	line	68
	goto	i2l981
	line	70
	
i2l977:
	line	73
	
i2l4375:
	call	_USBCheckCDCRequest	;wreg free
	line	74
	goto	i2l981
	line	76
	
i2l978:
	line	77
	goto	i2l981
	line	79
	
i2l979:
	line	80
	goto	i2l981
	line	82
	
i2l980:
	line	83
	goto	i2l981
	line	84
	
i2l4377:
	goto	i2l981
	line	25
	
i2l969:
	
i2l4379:
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event+1),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 127
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+1,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	i2l6653
	xorlw	127^0	; case 127
	skipnz
	goto	i2l6655
	goto	i2l981
	
i2l6653:
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0,c,w
	xorlw	1^0	; case 1
	skipnz
	goto	i2l4373
	xorlw	2^1	; case 2
	skipnz
	goto	i2l981
	xorlw	3^2	; case 3
	skipnz
	goto	i2l4375
	xorlw	5^3	; case 5
	skipnz
	goto	i2l981
	xorlw	114^5	; case 114
	skipnz
	goto	i2l981
	xorlw	115^114	; case 115
	skipnz
	goto	i2l981
	xorlw	116^115	; case 116
	skipnz
	goto	i2l981
	xorlw	117^116	; case 117
	skipnz
	goto	i2l981
	goto	i2l981
	
i2l6655:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 255 to 255
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0,c,w
	xorlw	255^0	; case 255
	skipnz
	goto	i2l981
	goto	i2l981

	line	84
	
i2l971:
	line	86
;	Return value of _USER_USB_CALLBACK_EVENT_HANDLER is never used
	
i2l981:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_USB_CALLBACK_EVENT_HANDLER
	__end_of_USER_USB_CALLBACK_EVENT_HANDLER:
	signat	_USER_USB_CALLBACK_EVENT_HANDLER,12409
	global	_USBCheckCDCRequest

;; *************** function _USBCheckCDCRequest *****************
;; Defined at:
;;		line 147 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	147
global __ptext36
__ptext36:
psect	text36
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	147
	global	__size_of_USBCheckCDCRequest
	__size_of_USBCheckCDCRequest	equ	__end_of_USBCheckCDCRequest-_USBCheckCDCRequest
	
_USBCheckCDCRequest:
;incstack = 0
	opt	stack 24
	line	152
	
i2l4319:
	movlb	4	; () banked
	movf	((1072))&0ffh,w	;volatile
	andlw	(1<<5)-1
	decf	wreg
	btfsc	status,2
	goto	i2u379_41
	goto	i2u379_40
i2u379_41:
	goto	i2l4323
i2u379_40:
	goto	i2l880
	
i2l4321:; BSR set to: 4

	goto	i2l880
	
i2l879:; BSR set to: 4

	line	157
	
i2l4323:; BSR set to: 4

	movlb	4	; () banked
	swapf	((1072))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	decf	wreg
	btfsc	status,2
	goto	i2u380_41
	goto	i2u380_40
i2u380_41:
	goto	i2l4327
i2u380_40:
	goto	i2l880
	
i2l4325:; BSR set to: 4

	goto	i2l880
	
i2l881:; BSR set to: 4

	line	164
	
i2l4327:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+04h))&0ffh,w	;volatile
	btfsc	status,2
	goto	i2u381_41
	goto	i2u381_40
i2u381_41:
	goto	i2l4357
i2u381_40:
	
i2l4329:; BSR set to: 4

	movlb	4	; () banked
		decf	(0+(1072+04h))&0ffh,w	;volatile
	btfsc	status,2
	goto	i2u382_41
	goto	i2u382_40

i2u382_41:
	goto	i2l4357
i2u382_40:
	goto	i2l880
	
i2l4331:; BSR set to: 4

	goto	i2l880
	
i2l882:; BSR set to: 4

	line	166
	goto	i2l4357
	line	169
	
i2l884:; BSR set to: 4

	line	171
	
i2l4333:; BSR set to: 4

		movlw	low(_dummy_encapsulated_cmd_response)
	movwf	((c:_inPipes)),c	;volatile
	movlw	high(_dummy_encapsulated_cmd_response)
	movwf	((c:_inPipes+1)),c	;volatile

	line	172
	
i2l4335:; BSR set to: 4

	movlw	high(08h)
	movwf	(1+((c:_inPipes)+04h)),c	;volatile
	movlw	low(08h)
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	line	173
	
i2l4337:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,0	;volatile
	line	174
	
i2l4339:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	175
	goto	i2l880
	line	176
	
i2l886:; BSR set to: 4

	line	178
	
i2l4341:; BSR set to: 4

		movlw	low(_dummy_encapsulated_cmd_response)
	movwf	((c:_inPipes)),c	;volatile
	movlw	high(_dummy_encapsulated_cmd_response)
	movwf	((c:_inPipes+1)),c	;volatile

	line	179
	
i2l4343:; BSR set to: 4

	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	180
	goto	i2l880
	line	184
	
i2l887:; BSR set to: 4

	line	185
	movff	0+(1072+06h),0+((c:_outPipes)+04h)	;volatile
	movff	1+(1072+06h),1+((c:_outPipes)+04h)	;volatile
	line	186
	
i2l4345:; BSR set to: 4

		movlw	low(_line_coding)
	movwf	((c:_outPipes)),c	;volatile
	movlw	high(_line_coding)
	movwf	((c:_outPipes+1)),c	;volatile

	line	187
		movlw	low(0)
	movwf	(0+((c:_outPipes)+06h)),c	;volatile
	movlw	high(0)
	movwf	(1+((c:_outPipes)+06h)),c	;volatile

	line	188
	
i2l4347:; BSR set to: 4

	bsf	(0+((c:_outPipes)+03h)),c,7	;volatile
	line	189
	goto	i2l880
	line	191
	
i2l888:; BSR set to: 4

	line	192
	
i2l4349:; BSR set to: 4

		movlw	low(_line_coding)
	movwf	((c:_inPipes)),c	;volatile
	movlw	high(_line_coding)
	movwf	((c:_inPipes+1)),c	;volatile

	
i2l4351:; BSR set to: 4

	movlw	high(07h)
	movwf	(1+((c:_inPipes)+04h)),c	;volatile
	movlw	low(07h)
	movwf	(0+((c:_inPipes)+04h)),c	;volatile
	
i2l4353:; BSR set to: 4

	movlw	low(0C1h)
	movwf	(0+((c:_inPipes)+03h)),c	;volatile
	line	196
	goto	i2l880
	line	198
	
i2l889:; BSR set to: 4

	line	199
	movff	0+(1072+02h),(_control_signal_bitmap)	;volatile
	line	231
	bsf	(0+((c:_inPipes)+03h)),c,7	;volatile
	line	232
	goto	i2l880
	line	256
	
i2l890:; BSR set to: 4

	line	257
	goto	i2l880
	line	258
	
i2l4355:; BSR set to: 4

	goto	i2l880
	line	166
	
i2l883:; BSR set to: 4

	
i2l4357:; BSR set to: 4

	movlb	4	; () banked
	movf	(0+(1072+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 34
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l4333
	xorlw	1^0	; case 1
	skipnz
	goto	i2l4341
	xorlw	32^1	; case 32
	skipnz
	goto	i2l887
	xorlw	33^32	; case 33
	skipnz
	goto	i2l4349
	xorlw	34^33	; case 34
	skipnz
	goto	i2l889
	goto	i2l880

	line	258
	
i2l885:; BSR set to: 4

	line	260
	
i2l880:; BSR set to: 4

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCheckCDCRequest
	__end_of_USBCheckCDCRequest:
	signat	_USBCheckCDCRequest,89
	global	_CDCInitEP

;; *************** function _CDCInitEP *****************
;; Defined at:
;;		line 294 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBEnableEndpoint
;;		i2_USBTransferOnePacket
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	line	294
global __ptext37
__ptext37:
psect	text37
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device_cdc.c"
	line	294
	global	__size_of_CDCInitEP
	__size_of_CDCInitEP	equ	__end_of_CDCInitEP-_CDCInitEP
	
_CDCInitEP:; BSR set to: 4

;incstack = 0
	opt	stack 22
	line	297
	
i2l4359:
	movlw	low(04B00h)
	movlb	0	; () banked
	movwf	((_line_coding))&0ffh
	movlw	high(04B00h)
	movwf	((_line_coding+1))&0ffh
	movlw	low highword(04B00h)
	movwf	((_line_coding+2))&0ffh
	movlw	high highword(04B00h)
	movwf	((_line_coding+3))&0ffh
	line	298
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_line_coding+04h))&0ffh
	line	299
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_line_coding+05h))&0ffh
	line	300
	movlw	low(08h)
	movlb	0	; () banked
	movwf	(0+(_line_coding+06h))&0ffh
	line	302
	movlw	low(0)
	movwf	((c:_cdc_rx_len)),c
	line	315
	
i2l4361:; BSR set to: 0

	movlw	low(01Ah)
	movwf	((c:USBEnableEndpoint@options)),c
	movlw	(01h)&0ffh
	
	call	_USBEnableEndpoint
	line	316
	
i2l4363:
	movlw	low(01Eh)
	movwf	((c:USBEnableEndpoint@options)),c
	movlw	(02h)&0ffh
	
	call	_USBEnableEndpoint
	line	318
	
i2l4365:
	movlw	low(0)
	movwf	((c:i2USBTransferOnePacket@dir)),c
		movlw	low(1344)
	movwf	((c:i2USBTransferOnePacket@data)),c
	movlw	high(1344)
	movwf	((c:i2USBTransferOnePacket@data+1)),c

	movlw	low(040h)
	movwf	((c:i2USBTransferOnePacket@len)),c
	movlw	(02h)&0ffh
	
	call	i2_USBTransferOnePacket
	movff	0+?i2_USBTransferOnePacket,(c:_CDCDataOutHandle)
	movff	1+?i2_USBTransferOnePacket,(c:_CDCDataOutHandle+1)
	line	319
	
i2l4367:
		movlw	low(0)
	movlb	0	; () banked
	movwf	((_CDCDataInHandle))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_CDCDataInHandle+1))&0ffh

	line	346
	
i2l4369:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_cdc_trf_state)),c
	line	347
	
i2l893:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_CDCInitEP
	__end_of_CDCInitEP:
	signat	_CDCInitEP,89
	global	i2_USBTransferOnePacket

;; *************** function i2_USBTransferOnePacket *****************
;; Defined at:
;;		line 1013 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  dir             1    0[COMRAM] unsigned char 
;;  data            2    1[COMRAM] PTR unsigned char 
;;		 -> cdc_data_tx(64), cdc_data_rx(64), NULL(0), 
;;  len             1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1    4[COMRAM] unsigned char 
;;  USBTransferO    2    5[COMRAM] PTR volatile struct __BD
;;		 -> NULL(0), BDT(48), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CDCInitEP
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1013
global __ptext38
__ptext38:
psect	text38
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1013
	global	__size_ofi2_USBTransferOnePacket
	__size_ofi2_USBTransferOnePacket	equ	__end_ofi2_USBTransferOnePacket-i2_USBTransferOnePacket
	
i2_USBTransferOnePacket:; BSR set to: 0

;incstack = 0
	opt	stack 23
	movwf	((c:i2USBTransferOnePacket@ep)),c
	line	1018
	
i2l4289:
	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u376_41
	goto	i2u376_40
i2u376_41:
	goto	i2l4293
i2u376_40:
	line	1021
	
i2l4291:
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:i2USBTransferOnePacket@handle)
	movff	postdec2,(c:i2USBTransferOnePacket@handle+1)
	line	1022
	goto	i2l4295
	line	1023
	
i2l626:
	line	1026
	
i2l4293:
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:i2USBTransferOnePacket@handle)
	movff	postdec2,(c:i2USBTransferOnePacket@handle+1)
	goto	i2l4295
	line	1027
	
i2l627:
	line	1031
	
i2l4295:
	movf	((c:i2USBTransferOnePacket@handle)),c,w
iorwf	((c:i2USBTransferOnePacket@handle+1)),c,w
	btfss	status,2
	goto	i2u377_41
	goto	i2u377_40

i2u377_41:
	goto	i2l4301
i2u377_40:
	line	1033
	
i2l4297:
		movlw	low(0)
	movwf	((c:?i2_USBTransferOnePacket)),c
	movlw	high(0)
	movwf	((c:?i2_USBTransferOnePacket+1)),c

	goto	i2l629
	
i2l4299:
	goto	i2l629
	line	1034
	
i2l628:
	line	1047
	
i2l4301:
	lfsr	2,02h
	movf	((c:i2USBTransferOnePacket@handle)),c,w
	addwf	fsr2l
	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@data),postinc2
	movff	(c:i2USBTransferOnePacket@data+1),postdec2
	line	1048
	lfsr	2,01h
	movf	((c:i2USBTransferOnePacket@handle)),c,w
	addwf	fsr2l
	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@len),indf2

	line	1049
	
i2l4303:
	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1050
	
i2l4305:
	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(3/8)
	bsf	plusw2,(3)&7
	line	1051
	
i2l4307:
	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1054
	
i2l4309:
	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u378_41
	goto	i2u378_40
i2u378_41:
	goto	i2l4313
i2u378_40:
	line	1057
	
i2l4311:
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	line	1058
	goto	i2l4315
	line	1059
	
i2l630:
	line	1062
	
i2l4313:
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	goto	i2l4315
	line	1063
	
i2l631:
	line	1064
	
i2l4315:
		movff	(c:i2USBTransferOnePacket@handle),(c:?i2_USBTransferOnePacket)
	movff	(c:i2USBTransferOnePacket@handle+1),(c:?i2_USBTransferOnePacket+1)

	goto	i2l629
	
i2l4317:
	line	1065
	
i2l629:
	return	;funcret
	opt stack 0
GLOBAL	__end_ofi2_USBTransferOnePacket
	__end_ofi2_USBTransferOnePacket:
	signat	i2_USBTransferOnePacket,90
	global	_USBEnableEndpoint

;; *************** function _USBEnableEndpoint *****************
;; Defined at:
;;		line 896 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  options         1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1   11[COMRAM] unsigned char 
;;  p               2    9[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBConfigureEndpoint
;; This function is called by:
;;		_CDCInitEP
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	line	896
global __ptext39
__ptext39:
psect	text39
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	896
	global	__size_of_USBEnableEndpoint
	__size_of_USBEnableEndpoint	equ	__end_of_USBEnableEndpoint-_USBEnableEndpoint
	
_USBEnableEndpoint:
;incstack = 0
	opt	stack 22
	movwf	((c:USBEnableEndpoint@ep)),c
	line	902
	
i2l4277:
	
	btfss	((c:USBEnableEndpoint@options)),c,(2)&7
	goto	i2u374_41
	goto	i2u374_40
i2u374_41:
	goto	i2l4281
i2u374_40:
	line	904
	
i2l4279:
	movlw	low(0)
	movwf	((c:USBConfigureEndpoint@direction)),c
	movf	((c:USBEnableEndpoint@ep)),c,w
	
	call	_USBConfigureEndpoint
	goto	i2l4281
	line	905
	
i2l621:
	line	906
	
i2l4281:
	
	btfss	((c:USBEnableEndpoint@options)),c,(1)&7
	goto	i2u375_41
	goto	i2u375_40
i2u375_41:
	goto	i2l4285
i2u375_40:
	line	908
	
i2l4283:
	movlw	low(01h)
	movwf	((c:USBConfigureEndpoint@direction)),c
	movf	((c:USBEnableEndpoint@ep)),c,w
	
	call	_USBConfigureEndpoint
	goto	i2l4285
	line	909
	
i2l622:
	line	917
	
i2l4285:
	movf	((c:USBEnableEndpoint@ep)),c,w
	mullw	01h
	movlw	low(3952)
	addwf	(prodl),c,w
	movwf	((c:USBEnableEndpoint@p)),c
	movlw	high(3952)
	addwfc	prod+1,w
	movwf	1+((c:USBEnableEndpoint@p)),c
	line	919
	
i2l4287:
	movff	(c:USBEnableEndpoint@p),fsr2l
	movff	(c:USBEnableEndpoint@p+1),fsr2h
	movff	(c:USBEnableEndpoint@options),indf2

	line	920
	
i2l623:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBEnableEndpoint
	__end_of_USBEnableEndpoint:
	signat	_USBEnableEndpoint,8313
	global	_USBConfigureEndpoint

;; *************** function _USBConfigureEndpoint *****************
;; Defined at:
;;		line 1561 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;  EPNum           1    wreg     unsigned char 
;;  direction       1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EPNum           1    5[COMRAM] unsigned char 
;;  handle          2    6[COMRAM] PTR volatile struct __BD
;;		 -> BDT(48), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBEnableEndpoint
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	line	1561
global __ptext40
__ptext40:
psect	text40
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1561
	global	__size_of_USBConfigureEndpoint
	__size_of_USBConfigureEndpoint	equ	__end_of_USBConfigureEndpoint-_USBConfigureEndpoint
	
_USBConfigureEndpoint:
;incstack = 0
	opt	stack 22
	movwf	((c:USBConfigureEndpoint@EPNum)),c
	line	1567
	
i2l4261:
		movlw	low(1024)
	movwf	((c:USBConfigureEndpoint@handle)),c
	movlw	high(1024)
	movwf	((c:USBConfigureEndpoint@handle+1)),c

	line	1568
	
i2l4263:
	movf	((c:USBConfigureEndpoint@direction)),c,w
	movwf	(??_USBConfigureEndpoint+0+0)&0ffh,c
	clrf	(??_USBConfigureEndpoint+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+0+0),c,f
	rlcf	(??_USBConfigureEndpoint+0+1),c,f
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	movwf	(??_USBConfigureEndpoint+2+0)&0ffh,c
	clrf	(??_USBConfigureEndpoint+2+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	movf	(??_USBConfigureEndpoint+0+0),c,w
	addwf	(??_USBConfigureEndpoint+2+0),c
	movf	(??_USBConfigureEndpoint+0+1),c,w
	addwfc	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	movf	(??_USBConfigureEndpoint+2+0),c,w
	addwf	((c:USBConfigureEndpoint@handle)),c
	movf	(??_USBConfigureEndpoint+2+1),c,w
	addwfc	((c:USBConfigureEndpoint@handle+1)),c

	line	1570
	
i2l4265:
	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	c:indf2,7
	line	1575
	
i2l4267:
	movf	((c:USBConfigureEndpoint@direction)),c,w
	btfss	status,2
	goto	i2u373_41
	goto	i2u373_40
i2u373_41:
	goto	i2l4271
i2u373_40:
	line	1577
	
i2l4269:
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	line	1578
	goto	i2l4273
	line	1579
	
i2l668:
	line	1581
	
i2l4271:
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	goto	i2l4273
	line	1582
	
i2l669:
	line	1585
	
i2l4273:
	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	c:indf2,6
	line	1586
	
i2l4275:
	lfsr	2,04h
	movf	((c:USBConfigureEndpoint@handle)),c,w
	addwf	fsr2l
	movf	((c:USBConfigureEndpoint@handle+1)),c,w
	addwfc	fsr2h
	bsf	c:indf2,6
	line	1603
	
i2l670:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBConfigureEndpoint
	__end_of_USBConfigureEndpoint:
	signat	_USBConfigureEndpoint,8313
	global	_USBCtrlTrfOutHandler

;; *************** function _USBCtrlTrfOutHandler *****************
;; Defined at:
;;		line 2555 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCtrlTrfRxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	line	2555
global __ptext41
__ptext41:
psect	text41
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2555
	global	__size_of_USBCtrlTrfOutHandler
	__size_of_USBCtrlTrfOutHandler	equ	__end_of_USBCtrlTrfOutHandler-_USBCtrlTrfOutHandler
	
_USBCtrlTrfOutHandler:
;incstack = 0
	opt	stack 22
	line	2557
	
i2l4885:
		movlw	2
	xorwf	((c:_controlTransferState)),c,w	;volatile
	btfss	status,2
	goto	i2u448_41
	goto	i2u448_40

i2u448_41:
	goto	i2l4889
i2u448_40:
	line	2559
	
i2l4887:
	call	_USBCtrlTrfRxService	;wreg free
	line	2560
	goto	i2l778
	line	2561
	
i2l774:
	line	2565
	
i2l4889:
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2572
	movf	((c:_BothEP0OutUOWNsSet)),c,w	;volatile
	btfss	status,2
	goto	i2u449_41
	goto	i2u449_40
i2u449_41:
	goto	i2l4897
i2u449_40:
	line	2574
	
i2l4891:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2575
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0430h)
	movwf	postinc2,c
	movlw	high(0430h)
	movwf	postdec2,c
	line	2576
	
i2l4893:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2577
	
i2l4895:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2578
	goto	i2l778
	line	2579
	
i2l776:
	line	2581
	
i2l4897:
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	goto	i2l778
	line	2582
	
i2l777:
	goto	i2l778
	line	2583
	
i2l775:
	line	2584
	
i2l778:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfOutHandler
	__end_of_USBCtrlTrfOutHandler:
	signat	_USBCtrlTrfOutHandler,89
	global	_USBCtrlTrfRxService

;; *************** function _USBCtrlTrfRxService *****************
;; Defined at:
;;		line 1870 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToRead      1    1[COMRAM] unsigned char 
;;  i               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfOutHandler
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	line	1870
global __ptext42
__ptext42:
psect	text42
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1870
	global	__size_of_USBCtrlTrfRxService
	__size_of_USBCtrlTrfRxService	equ	__end_of_USBCtrlTrfRxService-_USBCtrlTrfRxService
	
_USBCtrlTrfRxService:
;incstack = 0
	opt	stack 22
	line	1877
	
i2l4729:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:USBCtrlTrfRxService@byteToRead)),c
	line	1883
	
i2l4731:
	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	subwf	(0+((c:_outPipes)+04h)),c,w	;volatile
	movlw	0
	subwfb	(1+((c:_outPipes)+04h)),c,w	;volatile
	btfsc	status,0
	goto	i2u437_41
	goto	i2u437_40
i2u437_41:
	goto	i2l4735
i2u437_40:
	line	1885
	
i2l4733:
	movff	0+((c:_outPipes)+04h),(c:USBCtrlTrfRxService@byteToRead)	;volatile
	goto	i2l4735
	line	1886
	
i2l701:
	line	1888
	
i2l4735:
	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	subwf	(0+((c:_outPipes)+04h)),c	;volatile
	movlw	0
	subwfb	(1+((c:_outPipes)+04h)),c	;volatile
	line	1892
	
i2l4737:
	movlw	low(0)
	movwf	((c:USBCtrlTrfRxService@i)),c
	goto	i2l4745
	line	1893
	
i2l703:
	line	1894
	
i2l4739:
	movf	((c:USBCtrlTrfRxService@i)),c,w
	mullw	01h
	movlw	low(1080)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(1080)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:_outPipes),fsr1l	;volatile
	movff	(c:_outPipes+1),fsr1h	;volatile
	movff	indf2,indf1
	
i2l4741:
	infsnz	((c:_outPipes)),c	;volatile
	incf	((c:_outPipes+1)),c	;volatile
	line	1892
	
i2l4743:
	incf	((c:USBCtrlTrfRxService@i)),c
	goto	i2l4745
	
i2l702:
	
i2l4745:
		movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	subwf	((c:USBCtrlTrfRxService@i)),c,w
	btfss	status,0
	goto	i2u438_41
	goto	i2u438_40

i2u438_41:
	goto	i2l4739
i2u438_40:
	goto	i2l4747
	
i2l704:
	line	1899
	
i2l4747:
	movf	(0+((c:_outPipes)+04h)),c,w	;volatile
iorwf	(1+((c:_outPipes)+04h)),c,w	;volatile
	btfsc	status,2
	goto	i2u439_41
	goto	i2u439_40

i2u439_41:
	goto	i2l4761
i2u439_40:
	line	1901
	
i2l4749:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1902
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0438h)
	movwf	postinc2,c
	movlw	high(0438h)
	movwf	postdec2,c
	line	1903
	
i2l4751:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	btfsc	c:indf2,6
	goto	i2u440_41
	goto	i2u440_40
i2u440_41:
	goto	i2l4757
i2u440_40:
	line	1905
	
i2l4753:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1906
	
i2l4755:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1907
	goto	i2l711
	line	1908
	
i2l706:
	line	1910
	
i2l4757:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1911
	
i2l4759:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l711
	line	1912
	
i2l707:
	line	1913
	goto	i2l711
	line	1914
	
i2l705:
	line	1919
	
i2l4761:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1920
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0430h)
	movwf	postinc2,c
	movlw	high(0430h)
	movwf	postdec2,c
	line	1924
	
i2l4763:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1925
	
i2l4765:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1932
	
i2l4767:
	line	1944
	
i2l709:
	line	1945
	bcf	(0+((c:_outPipes)+03h)),c,7	;volatile
	line	1959
	
i2l4769:
	movf	((c:_USBDeferStatusStagePacket)),c,w	;volatile
	btfss	status,2
	goto	i2u441_41
	goto	i2u441_40
i2u441_41:
	goto	i2l711
i2u441_40:
	line	1961
	
i2l4771:
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l711
	line	1962
	
i2l710:
	goto	i2l711
	line	1963
	
i2l708:
	line	1965
	
i2l711:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfRxService
	__end_of_USBCtrlTrfRxService:
	signat	_USBCtrlTrfRxService,89
	global	_USBCtrlEPAllowStatusStage

;; *************** function _USBCtrlEPAllowStatusStage *****************
;; Defined at:
;;		line 1434 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBCtrlEPServiceComplete
;;		_USBCtrlTrfRxService
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	line	1434
global __ptext43
__ptext43:
psect	text43
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1434
	global	__size_of_USBCtrlEPAllowStatusStage
	__size_of_USBCtrlEPAllowStatusStage	equ	__end_of_USBCtrlEPAllowStatusStage-_USBCtrlEPAllowStatusStage
	
_USBCtrlEPAllowStatusStage:
;incstack = 0
	opt	stack 22
	line	1441
	
i2l4441:
	movf	((c:_USBStatusStageEnabledFlag1)),c,w	;volatile
	btfss	status,2
	goto	i2u392_41
	goto	i2u392_40
i2u392_41:
	goto	i2l659
i2u392_40:
	line	1443
	
i2l4443:
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1444
	movf	((c:_USBStatusStageEnabledFlag2)),c,w	;volatile
	btfss	status,2
	goto	i2u393_41
	goto	i2u393_40
i2u393_41:
	goto	i2l659
i2u393_40:
	line	1446
	
i2l4445:
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1450
	
i2l4447:
		movlw	2
	xorwf	((c:_controlTransferState)),c,w	;volatile
	btfss	status,2
	goto	i2u394_41
	goto	i2u394_40

i2u394_41:
	goto	i2l4455
i2u394_40:
	line	1452
	
i2l4449:
	lfsr	2,01h
	movf	((c:_pBDTEntryIn)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1)),c,w
	addwfc	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1453
	
i2l4451:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1454
	
i2l4453:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1455
	goto	i2l659
	line	1456
	
i2l656:
	
i2l4455:
		decf	((c:_controlTransferState)),c,w	;volatile
	btfss	status,2
	goto	i2u395_41
	goto	i2u395_40

i2u395_41:
	goto	i2l659
i2u395_40:
	line	1458
	
i2l4457:
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1463
	
i2l4459:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1464
	
i2l4461:
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(0430h)
	movwf	postinc2,c
	movlw	high(0430h)
	movwf	postdec2,c
	line	1465
	
i2l4463:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1466
	
i2l4465:
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1467
	
i2l4467:
	movlw	low(01h)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1471
	
i2l4469:
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1472
	
i2l4471:
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0430h)
	movwf	postinc2,c
	movlw	high(0430h)
	movwf	postdec2,c
	line	1473
	
i2l4473:
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(080h)
	movwf	indf2
	goto	i2l659
	line	1474
	
i2l658:
	goto	i2l659
	line	1475
	
i2l657:
	goto	i2l659
	
i2l655:
	goto	i2l659
	line	1476
	
i2l654:
	line	1477
	
i2l659:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowStatusStage
	__end_of_USBCtrlEPAllowStatusStage:
	signat	_USBCtrlEPAllowStatusStage,89
	global	_USBCtrlTrfInHandler

;; *************** function _USBCtrlTrfInHandler *****************
;; Defined at:
;;		line 2609 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lastDTS         1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	line	2609
global __ptext44
__ptext44:
psect	text44
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	2609
	global	__size_of_USBCtrlTrfInHandler
	__size_of_USBCtrlTrfInHandler	equ	__end_of_USBCtrlTrfInHandler-_USBCtrlTrfInHandler
	
_USBCtrlTrfInHandler:
;incstack = 0
	opt	stack 23
	line	2613
	
i2l4899:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0
	btfsc	c:indf2,6
	movlw	1
	movwf	((c:USBCtrlTrfInHandler@lastDTS)),c
	line	2616
	
i2l4901:
	movlw	(04h)&0ffh
	xorwf	((c:_pBDTEntryIn)),c
	line	2621
	
i2l4903:
		movlw	8
	xorwf	((c:_USBDeviceState)),c,w	;volatile
	btfss	status,2
	goto	i2u450_41
	goto	i2u450_40

i2u450_41:
	goto	i2l4913
i2u450_40:
	line	2623
	
i2l4905:
	movlb	4	; () banked
	movf	(0+(1072+02h))&0ffh,w	;volatile
	andlw	low(07Fh)
	movwf	((c:3950)),c	;volatile
	line	2624
	
i2l4907:; BSR set to: 4

	movf	((c:3950)),c,w	;volatile
	btfsc	status,2
	goto	i2u451_41
	goto	i2u451_40
i2u451_41:
	goto	i2l4911
i2u451_40:
	line	2626
	
i2l4909:; BSR set to: 4

	movlw	low(010h)
	movwf	((c:_USBDeviceState)),c	;volatile
	line	2627
	goto	i2l4913
	line	2628
	
i2l782:; BSR set to: 4

	line	2630
	
i2l4911:; BSR set to: 4

	movlw	low(04h)
	movwf	((c:_USBDeviceState)),c	;volatile
	goto	i2l4913
	line	2631
	
i2l783:; BSR set to: 4

	goto	i2l4913
	line	2632
	
i2l781:; BSR set to: 4

	line	2635
	
i2l4913:
		decf	((c:_controlTransferState)),c,w	;volatile
	btfss	status,2
	goto	i2u452_41
	goto	i2u452_40

i2u452_41:
	goto	i2l784
i2u452_40:
	line	2637
	
i2l4915:
	lfsr	2,02h
	movf	((c:_pBDTEntryIn)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1)),c,w
	addwfc	fsr2h
	movlw	low(0438h)
	movwf	postinc2,c
	movlw	high(0438h)
	movwf	postdec2,c
	line	2638
	
i2l4917:
	call	_USBCtrlTrfTxService	;wreg free
	line	2644
	
i2l4919:
		movlw	2
	xorwf	((c:_shortPacketStatus)),c,w	;volatile
	btfss	status,2
	goto	i2u453_41
	goto	i2u453_40

i2u453_41:
	goto	i2l4925
i2u453_40:
	line	2648
	
i2l4921:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	2649
	
i2l4923:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2650
	goto	i2l792
	line	2651
	
i2l785:
	line	2653
	
i2l4925:
	movf	((c:USBCtrlTrfInHandler@lastDTS)),c,w
	btfss	status,2
	goto	i2u454_41
	goto	i2u454_40
i2u454_41:
	goto	i2l4931
i2u454_40:
	line	2655
	
i2l4927:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	2656
	
i2l4929:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2657
	goto	i2l792
	line	2658
	
i2l787:
	line	2660
	
i2l4931:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2661
	
i2l4933:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l792
	line	2662
	
i2l788:
	goto	i2l792
	line	2663
	
i2l786:
	line	2664
	goto	i2l792
	line	2665
	
i2l784:
	line	2670
	btfss	(0+((c:_outPipes)+03h)),c,7	;volatile
	goto	i2u455_41
	goto	i2u455_40
i2u455_41:
	goto	i2l4937
i2u455_40:
	line	2672
	
i2l4935:
	line	2675
	
i2l791:
	line	2676
	bcf	(0+((c:_outPipes)+03h)),c,7	;volatile
	goto	i2l4937
	line	2677
	
i2l790:
	line	2679
	
i2l4937:
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	goto	i2l792
	line	2682
	
i2l789:
	line	2684
	
i2l792:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfInHandler
	__end_of_USBCtrlTrfInHandler:
	signat	_USBCtrlTrfInHandler,89
	global	_USBCtrlTrfTxService

;; *************** function _USBCtrlTrfTxService *****************
;; Defined at:
;;		line 1789 in file "C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToSend      1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlTrfInHandler
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	line	1789
global __ptext45
__ptext45:
psect	text45
	file	"C:\PROGRA~2\FLOWCO~1\COMPIL~1\pic\include\../../../CAL/PIC/USB/usb_device.c"
	line	1789
	global	__size_of_USBCtrlTrfTxService
	__size_of_USBCtrlTrfTxService	equ	__end_of_USBCtrlTrfTxService-_USBCtrlTrfTxService
	
_USBCtrlTrfTxService:
;incstack = 0
	opt	stack 21
	line	1795
	
i2l4389:
	movlw	low(08h)
	movwf	((c:USBCtrlTrfTxService@byteToSend)),c
	line	1796
	
i2l4391:
		movf	(1+((c:_inPipes)+04h)),c,w	;volatile
	bnz	i2u383_41
	movlw	8
	subwf	 (0+((c:_inPipes)+04h)),c,w	;volatile
	btfsc	status,0
	goto	i2u383_41
	goto	i2u383_40

i2u383_41:
	goto	i2l4403
i2u383_40:
	line	1798
	
i2l4393:
	movff	0+((c:_inPipes)+04h),(c:USBCtrlTrfTxService@byteToSend)	;volatile
	line	1805
	
i2l4395:
	movf	((c:_shortPacketStatus)),c,w	;volatile
	btfss	status,2
	goto	i2u384_41
	goto	i2u384_40
i2u384_41:
	goto	i2l4399
i2u384_40:
	line	1807
	
i2l4397:
	movlw	low(01h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	1808
	goto	i2l4403
	line	1809
	
i2l687:
	
i2l4399:
		decf	((c:_shortPacketStatus)),c,w	;volatile
	btfss	status,2
	goto	i2u385_41
	goto	i2u385_40

i2u385_41:
	goto	i2l4403
i2u385_40:
	line	1811
	
i2l4401:
	movlw	low(02h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	goto	i2l4403
	line	1812
	
i2l689:
	goto	i2l4403
	line	1813
	
i2l688:
	goto	i2l4403
	
i2l686:
	line	1817
	
i2l4403:
	movf	((c:USBCtrlTrfTxService@byteToSend)),c,w
	subwf	(0+((c:_inPipes)+04h)),c	;volatile
	movlw	0
	subwfb	(1+((c:_inPipes)+04h)),c	;volatile
	line	1822
	
i2l4405:
	lfsr	2,01h
	movf	((c:_pBDTEntryIn)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1)),c,w
	addwfc	fsr2h
	movff	(c:USBCtrlTrfTxService@byteToSend),indf2

	line	1826
	
i2l4407:
		movlw	low(1080)
	movlb	0	; () banked
	movwf	((_pDst))&0ffh
	movlw	high(1080)
	movlb	0	; () banked
	movwf	((_pDst+1))&0ffh

	line	1827
	
i2l4409:; BSR set to: 0

	btfsc	(0+((c:_inPipes)+03h)),c,0	;volatile
	goto	i2u386_41
	goto	i2u386_40
i2u386_41:
	goto	i2l4431
i2u386_40:
	goto	i2l4421
	line	1829
	
i2l4411:; BSR set to: 0

	goto	i2l4421
	
i2l692:; BSR set to: 0

	line	1831
	
i2l4413:; BSR set to: 0

	movff	(c:_inPipes),tblptrl	;volatile
	movff	(c:_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movff	(_pDst),fsr2l
	movff	(_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u387_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u387_40
i2u387_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u387_40:
	movwf	indf2
	
i2l4415:
	infsnz	((c:_inPipes)),c	;volatile
	incf	((c:_inPipes+1)),c	;volatile
	
i2l4417:
	movlb	0	; () banked
	infsnz	((_pDst))&0ffh
	incf	((_pDst+1))&0ffh
	line	1832
	
i2l4419:; BSR set to: 0

	decf	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2l4421
	line	1833
	
i2l691:; BSR set to: 0

	line	1829
	
i2l4421:; BSR set to: 0

	movf	((c:USBCtrlTrfTxService@byteToSend)),c,w
	btfss	status,2
	goto	i2u388_41
	goto	i2u388_40
i2u388_41:
	goto	i2l4413
i2u388_40:
	goto	i2l698
	
i2l693:; BSR set to: 0

	line	1834
	goto	i2l698
	line	1835
	
i2l690:; BSR set to: 0

	line	1837
	goto	i2l4431
	
i2l696:; BSR set to: 0

	line	1839
	
i2l4423:; BSR set to: 0

	movff	(c:_inPipes),tblptrl	;volatile
	movff	(c:_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movff	(_pDst),fsr2l
	movff	(_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u389_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u389_40
i2u389_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u389_40:
	movwf	indf2
	
i2l4425:
	infsnz	((c:_inPipes)),c	;volatile
	incf	((c:_inPipes+1)),c	;volatile
	
i2l4427:
	movlb	0	; () banked
	infsnz	((_pDst))&0ffh
	incf	((_pDst+1))&0ffh
	line	1840
	
i2l4429:; BSR set to: 0

	decf	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2l4431
	line	1841
	
i2l695:; BSR set to: 0

	line	1837
	
i2l4431:; BSR set to: 0

	movf	((c:USBCtrlTrfTxService@byteToSend)),c,w
	btfss	status,2
	goto	i2u390_41
	goto	i2u390_40
i2u390_41:
	goto	i2l4423
i2u390_40:
	goto	i2l698
	
i2l697:; BSR set to: 0

	goto	i2l698
	line	1842
	
i2l694:; BSR set to: 0

	line	1843
	
i2l698:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfTxService
	__end_of_USBCtrlTrfTxService:
	signat	_USBCtrlTrfTxService,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
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

start:
	SETB P3.3
	SETB P3.4
	MOV P1,#10010010B
	CALL delay
	CLR P3.3
	MOV P1,#10000010B
	CALL delay
	CLR P3.4
	SETB P3.3
	MOV P1,#11111000B
	CALL delay
	CLR P3.3
	MOV P1,#10000000B
	CALL delay
	JMP start
delay:
	MOV R0,#2
	DJNZ R0,$
	RET
	
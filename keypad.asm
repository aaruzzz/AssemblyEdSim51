start:
	 MOV R0, #0
 	SETB P0.3
 	CLR P0.0
 	CALL colScan
 	JB F0, finish
 	SETB P0.0
 	CLR P0.1
 	CALL colScan
 	JB F0, finish
 	SETB P0.1
 	CLR P0.2
 	CALL colScan
 	JB F0, finish
 	SETB P0.2
 	CLR P0.3
 	CALL colScan
 	JB F0, finish
	JMP start
finish:
 	CLR P3.3
 	SETB P3.4
 	MOV P1, #10001000B
colScan:
	JNB P0.4, gotKey
 	INC R0
	JNB P0.5, gotKey
 	INC R0
 	JNB P0.6, gotKey
 	INC R0
 	RET
gotKey:
 	CJNE R0, #7, NTEQUAL
 	SETB F0
NTEQUAL:
 	RET

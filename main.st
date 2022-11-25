/* TYPE Address : STRUCT */
/* END_STRUCT */
/* END_TYPE */

/* TYPE pins : (D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19); END_TYPE */
TYPE registers : WORD(PINB := 16#23, DDRB := 16#24, PORTB := 16#25); END_TYPE
/* VAR_GLOBAL */
/* 	DDRB : WORD := 16#24; */
/* 	PORTB : WORD := 16#25; */
/* END_VAR */

FUNCTION main : DINT
VAR
	/* addr : Address; */
	/* DDRB : REF_TO BYTE := INT#16#24; */
	/* PORTB : REF_TO BYTE := INT#16#25; */
END_VAR

	setPin(DDRB,4);
	setPin(PORTB,4);

	/* DDRB^.5 := TRUE; */
	/* PORTB^.5 := TRUE; */
	WHILE TRUE DO
	END_WHILE
END_FUNCTION

FUNCTION setPin : DINT
	VAR_INPUT
		register : REF_TO BYTE;
		pin : DINT;
	END_VAR
	register^.%Xpin := TRUE;
END_FUNCTION

FUNCTION unsetPin : DINT
	VAR_INPUT
		register : REF_TO BYTE;
		pin : DINT;
	END_VAR
	register^.%Xpin := FALSE;
END_FUNCTION

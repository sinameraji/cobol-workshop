IDENTIFICATION DIVISION.
PROGRAM-ID.	READDD.

ENVIRONMENT DIVISION.
	INPUT-OUTPUT SECTION.
	FILE-CONTROL.
		SELECT EMPPF ASSIGN TO DATABASE-EMPPF
		FILE STATUS IS WS-FILE-STATUS.

DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 WS-FILE-STATUS	PIC X(2).

PROCEDURE DIVISION.
	OPEN INPUT EMPPF.
		PERFORM UNTIL WS-FILE-STATUS = '10'
			READ EMPPF
			DISPLAY 'EMPLOYEE NUMBER ' EMPNO
		END-PERFORM.
	CLOSE.
	STOP RUN.

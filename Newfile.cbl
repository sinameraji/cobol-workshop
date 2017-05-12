IDENTIFICATION DIVISION.
PROGRAM-ID.  Newfile.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 a   PIC 9(15).
    01 b   PIC 9(15).
    01 WS-OP    PIC X.
    01 z  PIC 9(15).
    
PROCEDURE DIVISION.
    ACCEPT WS-OP.

    PERFORM UNTIL WS-OP = 'x'
   	ACCEPT a
	ACCEPT b
	
	EVALUATE TRUE
        WHEN WS-OP = "+"
	    COMPUTE z = a + b
        WHEN WS-OP = "-"
            COMPUTE z = a - b
        WHEN WS-OP = "*"
            COMPUTE z = a * b
        WHEN WS-OP = "/"
            COMPUTE z = a / b
    END-EVALUATE
    DISPLAY z
    ACCEPT WS-OP
    END-PERFORM.
    STOP RUN.

    
    

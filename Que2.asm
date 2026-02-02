ORG 0000H

    ; Copy values to working registers
    MOV A,#06H        ; A ? value at 50H
    MOV R0, A         ; R0 = A
    MOV A,#04H        ; A ? value at 51H
    MOV R1, A         ; R1 = B

COMPARE_LOOP:
    MOV A,R0
    JZ CHECK_R1_ZERO  ; If R0 == 0, check R1

    MOV A, R1
    JZ A_GREATER      ; If R1 == 0 first ? A > B

    DEC R0
    DEC R1
    SJMP COMPARE_LOOP
CHECK_R1_ZERO:
    MOV A, R1
    JZ EQUAL          ; Both zero ? equal
    SJMP A_LESS       ; R0 zero first ? A < B
A_GREATER:
    MOV 52H, #01H
    SJMP DONE
A_LESS:
    MOV 52H, #0FFH
    SJMP DONE
EQUAL:
    MOV 52H, #00H
DONE:
    SJMP DONE         ; Stop execution
END

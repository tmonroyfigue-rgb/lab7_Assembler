.global main
.text

main:
    MOV r0, #7
    LSR r1, r0, #1
    LSL r2, r0, #2
    BX lr
.global main
.text

main:
    MOV r0, #12
    MOV r1, #8
    MOV r2, #3

    ADD r3, r0, r1
    MUL r3, r2, r3

    BX lr
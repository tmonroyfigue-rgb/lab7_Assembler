.global main
.text

main:
    MOV r0, #9
    ADD r1, r0, r0, LSL #2
    BX lr
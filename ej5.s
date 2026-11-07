.global main
.text

main:
    LDR r0, =0xFFFFFFFF
    ADDS r1, r0, #1
    BX lr
.text
.align 2
.global main
.type main, %function

main:
    push {r4, lr}

    ldr r0, =0xAC
    ldr r1, =0xCA

    and r2, r0, r1
    orr r3, r0, r1
    eor r4, r0, r1

    mov r1, r2
    mov r2, r3
    mov r3, r4
    ldr r0, =formato
    bl printf

    mov r0, #0
    pop {r4, lr}
    bx lr

.data
.align 2
formato:
    .asciz "AND: 0x%02X\nOR: 0x%02X\nXOR: 0x%02X\n"

.section .note.GNU-stack,"",%progbits
.text
.align 2
.global main
.type main, %function

main:
    push {r4-r6, lr}

    ldr r0, =0x2A

    orr r0, r0, #1      @ Activar el bit 0
    mov r4, r0

    bic r0, r0, #8      @ Limpiar el bit 3
    mov r5, r0

    eor r0, r0, #32     @ Invertir el bit 5
    mov r6, r0

    ldr r0, =formato
    mov r1, r4
    mov r2, r5
    mov r3, r6
    bl printf

    mov r0, #0
    pop {r4-r6, lr}
    bx lr

.data
.align 2
formato:
    .asciz "Activar bit 0: 0x%02X\nLimpiar bit 3: 0x%02X\nInvertir bit 5: 0x%02X\n"

.section .note.GNU-stack,"",%progbits
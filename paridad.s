.text
.align 2
.global main
.type main, %function

main:
    push {r4-r6, lr}

    @@ Probar 14
    mov r0, #14
    tst r0, #1
    beq par14
    mov r1, #0
    mov r5, #0
    b imprimir14

par14:
    mov r1, #1
    mov r5, #1

imprimir14:
    mov r4, r1
    mov r1, #14
    mov r2, r4
    mov r3, r5
    ldr r0, =formato
    bl printf
    mov r1, r4

    @@ Probar 15
    mov r0, #15
    tst r0, #1
    beq par15
    mov r1, #0
    mov r5, #0
    b imprimir15

par15:
    mov r1, #1
    mov r5, #1

imprimir15:
    mov r4, r1
    mov r1, #15
    mov r2, r4
    mov r3, r5
    ldr r0, =formato
    bl printf
    mov r1, r4

    @@ Probar 0
    mov r0, #0
    tst r0, #1
    beq par0
    mov r1, #0
    mov r5, #0
    b imprimir0

par0:
    mov r1, #1
    mov r5, #1

imprimir0:
    mov r4, r1
    mov r1, #0
    mov r2, r4
    mov r3, r5
    ldr r0, =formato
    bl printf
    mov r1, r4

    mov r0, #0
    pop {r4-r6, lr}
    bx lr

.data
.align 2
formato:
    .asciz "Entrada: %d, r1: %d, Z: %d\n"

.section .note.GNU-stack,"",%progbits
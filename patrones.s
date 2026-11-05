.text
.align 2
.global main
.type main, %function

main:
        push {r4, lr}

        mvn r0, #0              @ r0 = 0xFFFFFFFF
        mov r1, #1              @ r1 = 1

        @ Comparación CON signo
        cmp r0, r1 
        bgt mayor_con_signo

        mov r2, #0              @ Falso
        b comparar_sin_signo

    mayor_con_signo:
        mov r2, #1              @ Verdadero

    comparar_sin_signo:
        cmp r0, r1
        bhi mayor_sin_signo

        mov r3, #0              @ Falso
        b imprimir

    mayor_sin_signo:
        mov r3, #1              @ Verdadero

    imprimir:
        mov r1, r2              @ Primer %d: resultado con signo
        mov r2, r3              @ Segundo %d: resultado sin signo
        ldr r0, =formato
        bl printf

    salir:
        mov r0, #0
        pop {r4, lr}
        bx lr

    .data
    formato:
        .asciz "Con signo: %d\nSin signo: %d\n"

    .section .note.GNU-stack,"",%progbits
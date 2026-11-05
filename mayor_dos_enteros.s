.text
.align 2
.global main
.type main, %function

main:
    push {r4, lr}

    mov r0, #9         @ Primer número
    mov r1, #9          @ Segundo número


    cmp r0, r1 
    bgt mayor_r0 @@ si r0 es mayor a r1 
    beq igual    @@ si son iguales

    mov r2, r1 @@ no pongo etiqueta de si r1 es mayor porque si ninguna de las de arriba salta significa que r1 es mayor
    b imprimir

mayor_r0:
    mov r2, r0
    b imprimir

igual:
    mov r2, r0
    b imprimir_igual

imprimir_igual:
    mov r1, r2
    ldr r0, =formato_igual
    bl printf
    b fin


imprimir:
    mov r1, r2               
    ldr r0, =formato         
    bl printf  
    b fin  

fin:
    mov r0, #0
    pop {r4, lr}        
    bx lr                


.data 
formato:
    .asciz "El numero mayor es: %d\n"

formato_igual:
    .asciz "Los numeros son iguales, %d = %d\n"


.section .note.GNU-stack,"",%progbits
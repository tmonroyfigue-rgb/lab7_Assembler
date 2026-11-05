.text
.align 2
.global main
.type main, %function

    main: 
    push {r4, lr}          

    ldr r0, =-5
 

    cmp r0, #0
    bgt positivo @@ si r0 es mayor a o, entonces es positivo
    beq cero @@ si r0 es igual a 0

    mov r1, #2
    b imprimir

    positivo:
        mov r1, #1
        b imprimir


    cero:
        mov r1, #0
        b imprimir


    imprimir:    
        ldr r0, =formato                 
        bl printf  
        b fin 


    fin:
        mov r0, #0
        pop {r4, lr}        
        bx lr        

    .data
    formato:
    .asciz "%d\n" 

    .section .note.GNU-stack,"",%progbits
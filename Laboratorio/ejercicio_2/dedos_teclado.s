.ifndef DEDOS_S
.equ DEDOS_S, 0x000000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"

//FRAME MOVIMIENTO EN EL TECLADO DE LOS DEDOS
dedos_0:  
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    // MANO 
    
    // BORRO DEDO2
    MOV X1, 350
    MOV X2, 432
    MOV X3, 356
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo
    
    // BORRO DEDO1
    MOV X1, 340
    MOV X2, 432
    MOV X3, 346
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo

    // BORRO DEDO4
    MOV X1, 370
    MOV X2, 432
    MOV X3, 376
    MOV X4, 436
    LDR X7, = BLACK
    BL dibujar_rectangulo

    // BORRO DEDO3
    MOV X1, 360
    MOV X2, 432
    MOV X3, 366
    MOV X4, 436
    LDR X7, =BLACK
    BL dibujar_rectangulo

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

//FRAME MOVIMIENTO EN EL TECLADO DE LOS DEDOS
dedos_1:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // DEDO4
    MOV X1, 370
    MOV X2, 432
    MOV X3, 376
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo

    // DEDO3
    MOV X1, 360
    MOV X2, 432
    MOV X3, 366
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo
    
    // BORRO DEDO2
    MOV X1, 350
    MOV X2, 432
    MOV X3, 356
    MOV X4, 436
    LDR X7, =BLACK
    BL dibujar_rectangulo

    // BORRO DEDO5
    MOV X1, 329
    MOV X2, 432
    MOV X3, 336
    MOV X4, 436
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    // BORRO DEDO1
    MOV X1, 340
    MOV X2, 432
    MOV X3, 346
    MOV X4, 436
    LDR X7, =BLACK
    BL dibujar_rectangulo


    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

//FRAME MOVIMIENTO EN EL TECLADO DE LOS DEDOS
dedos_2:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // DEDO4
    MOV X1, 370
    MOV X2, 432
    MOV X3, 376
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo

    // DEDO3
    MOV X1, 360
    MOV X2, 432
    MOV X3, 366
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo
    
    // BORRO DEDO2
    MOV X1, 350
    MOV X2, 432
    MOV X3, 356
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo

    // BORRO DEDO5
    MOV X1, 330
    MOV X2, 432
    MOV X3, 336
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo
    
    // BORRO DEDO1
    MOV X1, 340
    MOV X2, 432
    MOV X3, 346
    MOV X4, 436
    LDR X7, =SKIN2
    BL dibujar_rectangulo

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

.endif



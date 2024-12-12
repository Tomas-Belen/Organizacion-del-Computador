.ifndef MOVRELOJ_S
.equ MOVRELOJ_S, 0x000000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"

/*
ESTE ARCHIVO MUESTRA LA ANIMACION DEL RELOJ CAMBIANDO DE HORARIO,
TAPANDO LA POSICION ANTERIOR CON "taparreloj" Y "taparrelojN" 
Y PINTANDO LA SIGUIENTE CON "relojpos'i'"
*/

taparreloj:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

    MOV X20, X0
	
    LDR X10, =WHITE
    MOV X5, 226
    MOV X6, 75
    MOV X1, 30
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

taparrelojN:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

    MOV X20, X0
	
    LDR X10, =WHITEN
    MOV X5, 226
    MOV X6, 75
    MOV X1, 30
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET
    
relojpos1:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparreloj

    MOV X1, 227     // X     // MARCA HORA
    MOV X2, 74      // Y
    LDR X7, = BLACK
    BL dibujar_pixel 
    
    MOV X1, 228     // X     
    MOV X2, 73      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 229     // X     
    MOV X2, 72      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 230    // X     
    MOV X2, 71      // Y
    LDR X7, = BLACK
    BL dibujar_pixel
    
    MOV X1, 231    // X     
    MOV X2, 70      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 232    // X     
    MOV X2, 69      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 233    // X     
    MOV X2, 68      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 234    // X     
    MOV X2, 67      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 235    // X     
    MOV X2, 66      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 236    // X     
    MOV X2, 65      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 226        // MARCA 12
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos2:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparreloj

    MOV X1, 226
    MOV X2, 75
    MOV X3, 241
    MOV X4, 75
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 226
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos3:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparreloj

    MOV X1, 227     // X     // MARCA HORA
    MOV X2, 76      // Y
    LDR X7, = BLACK
    BL dibujar_pixel 
    
    MOV X1, 228     // X     
    MOV X2, 77      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 229     // X     
    MOV X2, 78      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 230    // X     
    MOV X2, 79      // Y
    LDR X7, = BLACK
    BL dibujar_pixel
    
    MOV X1, 231    // X     
    MOV X2, 80      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 232    // X     
    MOV X2, 81      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 233    // X     
    MOV X2, 82      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 234    // X     
    MOV X2, 83      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 235    // X     
    MOV X2, 84      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 236    // X     
    MOV X2, 85      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 226        // MARCA 12
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos4: 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparreloj

    MOV X1, 226
    MOV X2, 75
    MOV X3, 226
    MOV X4, 90
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 226
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos5:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparreloj

    MOV X1, 225     // X     // MARCA HORA
    MOV X2, 76      // Y
    LDR X7, = BLACK
    BL dibujar_pixel 
    
    MOV X1, 224     // X     
    MOV X2, 77      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 223     // X     
    MOV X2, 78      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 222    // X     
    MOV X2, 79      // Y
    LDR X7, = BLACK
    BL dibujar_pixel
    
    MOV X1, 221    // X     
    MOV X2, 80      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 220   // X     
    MOV X2, 81      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 219    // X     
    MOV X2, 82      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 218   // X     
    MOV X2, 83      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 217   // X     
    MOV X2, 84      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 216    // X     
    MOV X2, 85      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 226        // MARCA 12
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos6: 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparrelojN

    MOV X1, 211
    MOV X2, 75
    MOV X3, 226
    MOV X4, 75
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 226
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos7:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparrelojN

    MOV X1, 225     // X     // MARCA HORA
    MOV X2, 74      // Y
    LDR X7, = BLACK
    BL dibujar_pixel 
    
    MOV X1, 224     // X     
    MOV X2, 73      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 223     // X     
    MOV X2, 72      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 222    // X     
    MOV X2, 71      // Y
    LDR X7, = BLACK
    BL dibujar_pixel
    
    MOV X1, 221    // X     
    MOV X2, 70      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 220   // X     
    MOV X2, 69      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 219    // X     
    MOV X2, 68      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 218   // X     
    MOV X2, 67      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 217   // X     
    MOV X2, 66      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 216    // X     
    MOV X2, 65      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 226        // MARCA 12
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos8: 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparrelojN

    MOV X1, 225
    MOV X2, 75
    MOV X3, 227
    MOV X4, 60
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

relojpos1N:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparrelojN

    MOV X1, 227     // X     // MARCA HORA
    MOV X2, 74      // Y
    LDR X7, = BLACK
    BL dibujar_pixel 
    
    MOV X1, 228     // X     
    MOV X2, 73      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 229     // X     
    MOV X2, 72      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 230    // X     
    MOV X2, 71      // Y
    LDR X7, = BLACK
    BL dibujar_pixel
    
    MOV X1, 231    // X     
    MOV X2, 70      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 232    // X     
    MOV X2, 69      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 233    // X     
    MOV X2, 68      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 234    // X     
    MOV X2, 67      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 235    // X     
    MOV X2, 66      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 236    // X     
    MOV X2, 65      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 226        // MARCA 12
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos2N:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparrelojN

    MOV X1, 226
    MOV X2, 75
    MOV X3, 241
    MOV X4, 75
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 226
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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

relojpos3N:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL taparrelojN

    MOV X1, 227     // X     // MARCA HORA
    MOV X2, 76      // Y
    LDR X7, = BLACK
    BL dibujar_pixel 
    
    MOV X1, 228     // X     
    MOV X2, 77      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 229     // X     
    MOV X2, 78      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 230    // X     
    MOV X2, 79      // Y
    LDR X7, = BLACK
    BL dibujar_pixel
    
    MOV X1, 231    // X     
    MOV X2, 80      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 232    // X     
    MOV X2, 81      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 233    // X     
    MOV X2, 82      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 234    // X     
    MOV X2, 83      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 235    // X     
    MOV X2, 84      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 236    // X     
    MOV X2, 85      // Y
    LDR X7, = BLACK
    BL dibujar_pixel

    MOV X1, 226        // MARCA 12
    MOV X2, 75
    MOV X3, 226
    MOV X4, 60
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


.endif


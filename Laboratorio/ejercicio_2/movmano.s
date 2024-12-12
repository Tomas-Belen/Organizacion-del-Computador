.ifndef MOVMANO_S
.equ MOVMANO_S, 0x000000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"


// ESTE BLOQUE EJECUTA LA ANIMACION DEL MOVIMIENTO DE LA MANO DESDE EL MOUSE AL TECLADO, ENGLOBADA EN "manoateclado"

manoateclado:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 

    BL delay
      
    BL manopos1
    
    BL delay
    
    BL manopos2
    
    BL delay
    
    BL manopos3
    
    BL delay
    
    BL manopos4
    
    BL delay
    
    BL manopos5
    
    BL delay
    
    BL manopos6
    
    BL delay
    
    BL manopos7
    
    BL delay
    
    BL manopos8
    
    BL delay
    
    BL manopos9
    
    BL delay
    
    BL manopos10
    
    BL delay
    
    BL manopos11
    
    BL delay
    
    BL manopos12
    
    BL delay
    
    BL manopos13
    
    BL delay
    
    BL manopos14

    BL delay

    BL manopos15

     // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

// DESDE ACA ESTAN IMPLEMENTADAS LAS DIFERENTES POSICIONES DE LA MAMO, ASI COMO LA FUNCION "tapar" QUE TAPA LA POSICION ANTERIOR

tapar:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    MOV X1, 404               // PARA TAPAR
    MOV X2, 404
    MOV X3, 456
    MOV X4, 411
    LDR X7, =TABLE
    BL dibujar_rectangulo

    MOV X1, 341               // PARA TAPAR
    MOV X2, 404
    MOV X3, 403
    MOV X4, 429
    LDR X7, =TABLE
    BL dibujar_rectangulo

    MOV X1, 404               // PARA TAPAR
    MOV X2, 412
    MOV X3, 450
    MOV X4, 442
    LDR X7, =BLACK
    BL dibujar_rectangulo

    MOV X1, 466               // PARA TAPAR
    MOV X2, 412
    MOV X3, 444
    MOV X4, 422
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

manopos1:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 412
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 413              // MANO
    MOV X2, 404
    MOV X3, 443
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 413              // MANO
    MOV X2, 421
    MOV X3, 430
    MOV X4, 424
    LDR X7, =SKIN
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

manopos2:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             //BRAZO
    MOV X2, 404
    MOV X3, 405
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 405              // MANO
    MOV X2, 404
    MOV X3, 435
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 405              // MANO
    MOV X2, 421
    MOV X3, 425
    MOV X4, 424
    LDR X7, =SKIN
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

manopos3:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 400
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 400              // MANO
    MOV X2, 404
    MOV X3, 430
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 400              // MANO
    MOV X2, 421
    MOV X3, 420
    MOV X4, 424
    LDR X7, =SKIN
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

manopos4:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 395
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 395             // MANO
    MOV X2, 404
    MOV X3, 425
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 395              // MANO
    MOV X2, 421
    MOV X3, 415
    MOV X4, 424
    LDR X7, =SKIN
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

manopos5:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 390
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 390             // MANO
    MOV X2, 404
    MOV X3, 420
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 390              // MANO
    MOV X2, 421
    MOV X3, 410
    MOV X4, 424
    LDR X7, =SKIN
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

manopos6:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 385
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 385             // MANO
    MOV X2, 404
    MOV X3, 415
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 385              // MANO
    MOV X2, 421
    MOV X3, 405
    MOV X4, 424
    LDR X7, =SKIN
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

manopos7:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 380
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 380             // MANO
    MOV X2, 404
    MOV X3, 410
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 380              // MANO
    MOV X2, 421
    MOV X3, 400
    MOV X4, 424
    LDR X7, =SKIN
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

manopos8:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 375
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 375            // MANO
    MOV X2, 404
    MOV X3, 405
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 375              // MANO
    MOV X2, 421
    MOV X3, 395
    MOV X4, 424
    LDR X7, =SKIN
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

manopos9:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 370
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 370            // MANO
    MOV X2, 404
    MOV X3, 400
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 370              // MANO
    MOV X2, 421
    MOV X3, 390
    MOV X4, 424
    LDR X7, =SKIN
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

manopos10:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 365
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 365            // MANO
    MOV X2, 404
    MOV X3, 395
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 365              // MANO
    MOV X2, 421
    MOV X3, 385
    MOV X4, 424
    LDR X7, =SKIN
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

manopos11:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 360
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 360            // MANO
    MOV X2, 404
    MOV X3, 390
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 360              // MANO
    MOV X2, 421
    MOV X3, 380
    MOV X4, 424
    LDR X7, =SKIN
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

manopos12:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 355
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 355            // MANO
    MOV X2, 404
    MOV X3, 385
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 355              // MANO
    MOV X2, 421
    MOV X3, 375
    MOV X4, 424
    LDR X7, =SKIN
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

manopos13:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 350
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 350            // MANO
    MOV X2, 404
    MOV X3, 380
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 350              // MANO
    MOV X2, 421
    MOV X3, 370
    MOV X4, 424
    LDR X7, =SKIN
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

manopos14:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 
    
    BL tapar

    MOV X1, 340             // BRAZO
    MOV X2, 404
    MOV X3, 345
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 345            // MANO
    MOV X2, 404
    MOV X3, 375
    MOV X4, 414
    LDR X7, =SKIN
    BL dibujar_rectangulo  

    MOV X1, 345              // MANO
    MOV X2, 421
    MOV X3, 365
    MOV X4, 424
    LDR X7, =SKIN
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

manopos15:
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 

    MOV X1, 329
    MOV X2, 410
    MOV X3, 376
    MOV X4, 421
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 370
    MOV X2, 421
    MOV X3, 376
    MOV X4, 436
    LDR X7, = SKIN
    BL dibujar_rectangulo

    MOV X1, 329
    MOV X2, 422
    MOV X3, 335
    MOV X4, 436
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 360
    MOV X2, 421
    MOV X3, 366
    MOV X4, 436
    LDR X7, = SKIN
    BL dibujar_rectangulo
    
    MOV X1, 350
    MOV X2, 421
    MOV X3, 356
    MOV X4, 436
    LDR X7, = SKIN
    BL dibujar_rectangulo
    
    MOV X1, 340
    MOV X2, 421
    MOV X3, 346
    MOV X4, 436
    LDR X7, = SKIN
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





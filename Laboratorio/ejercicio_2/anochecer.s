.ifndef ANOCHECER_S
.equ ANOCHECER_S, 0x100000



.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"
.include "dedos_teclado.s"

/*
ESTE ARCHIVO CONTIENE LA ANIMACION QUE ABARCA DESDE EL FIN DEL OCASO HASTA EL COMIENZO DE LA NOCHE ESTRELLADA. 
NOS LIMITAMOS A PINTAR LAS PARTES VISIBLES DE LA PARED PARA EVITAR SOLAPAMIENTO. LA FUNCION "cara_y_marco" VUELVE A PINTAR ALGUNAS
PARTES DE LA PERSONA Y DEL CUADRO QUE SE VIERON SOLAPADAS MINIMAMENTE
*/

cara_y_marco:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40] 

    MOV X1, 57
    MOV X2, 175
    MOV X3, 185
    MOV X4, 220
    LDR X7, =SKIN
    BL dibujar_rectangulo
   
    MOV X1, 74
    MOV X2, 221
    MOV X3, 167
    MOV X4, 237
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 237
    MOV X3, 159
    MOV X4, 247
    LDR X7, =SKIN
    BL dibujar_rectangulo
	
	MOV X1, 82
    MOV X2, 247
    MOV X3, 157
    MOV X4, 252
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 88
    MOV X2, 251
    MOV X3, 153
    MOV X4, 256
    LDR X7, =SKIN
    BL dibujar_rectangulo
 
    MOV X1, 96
    MOV X2, 257
    MOV X3, 145
    MOV X4, 279
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 259
    MOV X2, 404
    MOV X3, 377
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 425
    MOV X3, 302
    MOV X4, 432
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 74
    MOV X2, 107
    MOV X3, 93
    MOV X4, 116
    LDR X7, =HAIR
    BL dibujar_rectangulo
   
    MOV X1, 72
    MOV X2, 116
    MOV X3, 145
    MOV X4, 124
    LDR X7, =HAIR
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 124
    MOV X3, 167
    MOV X4, 130
    LDR X7, =HAIR
    BL dibujar_rectangulo
    
    MOV X1, 62
    MOV X2, 130
    MOV X3, 178
    MOV X4, 178
    LDR X7, =HAIR
    BL dibujar_rectangulo
    
    MOV X1, 76
    MOV X2, 178
    MOV X3, 166
    MOV X4, 193
    LDR X7, =HAIR
    BL dibujar_rectangulo  
    
    MOV X1, 80
    MOV X2, 193
    MOV X3, 166
    MOV X4, 202
    LDR X7, =HAIR
    BL dibujar_rectangulo
    
    MOV X1, 89
    MOV X2, 202
    MOV X3, 151
    MOV X4, 213
    LDR X7, =HAIR
    BL dibujar_rectangulo
    
    MOV X1, 93
    MOV X2, 213
    MOV X3, 145
    MOV X4, 221
    LDR X7, =HAIR
    BL dibujar_rectangulo
    
    MOV X1, 108
    MOV X2, 221
    MOV X3, 130
    MOV X4, 228
    LDR X7, =HAIR
    BL dibujar_rectangulo

    MOV X1, 385  
    MOV X2, 129  
    MOV X3, 620  
    MOV X4, 130 
    LDR X7, = BLACK
    BL dibujar_rectangulo
    
    MOV X1, 498  
    MOV X2, 50  
    MOV X3, 499  
    MOV X4, 213 
    LDR X7, = BLACK
    BL dibujar_rectangulo
    
    MOV X1, 384
    MOV X2, 183 
    MOV X3, 455  
    MOV X4, 235
    LDR X7, = BLACK
    BL dibujar_rectangulo
    
    MOV X1, 380
    MOV X2, 193 
    MOV X3, 445 
    MOV X4, 235
    LDR X7, = SCREEN
    BL dibujar_rectangulo
    
    MOV X1, 519
    MOV X2, 200
    MOV X3, 628
    MOV X4, 216
    LDR X7, = BLACK
    BL dibujar_rectangulo
    
    MOV X1, 527
    MOV X2, 208
    MOV X3, 621
    MOV X4, 216
    LDR X7, = GRAY
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

anochecer1:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
	
   	MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, 374
    MOV X4, 49
    LDR X7, =ROOM2
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 40
    LDR X7, =ROOM2
    BL dibujar_rectangulo
    
	MOV X1, SCREEN_START
    MOV X2, 160
    MOV X3, 95
    MOV X4, 278
    LDR X7, =ROOM2
    BL dibujar_rectangulo

    MOV X1, SCREEN_START
    MOV X2, 279
    MOV X3, 5
    MOV X4, 287
    LDR X7, =ROOM2
    BL dibujar_rectangulo
        
    MOV X1, 186
    MOV X2, 50
    MOV X3, 374
    MOV X4, 182
    LDR X7, =ROOM2
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 50
    MOV X3, 190
    MOV X4, 174
    LDR X7, =ROOM2
    BL dibujar_rectangulo
    
    MOV X1, 456
    MOV X2, 224
    MOV X3, 518
    MOV X4, 388
    LDR X7, =ROOM2
    BL dibujar_rectangulo
    
    MOV X1, 630
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 388
    LDR X7, =ROOM2
    BL dibujar_rectangulo
    
    MOV X1, 629
    MOV X2, 220
    MOV X3, SCREEN_END_X
    MOV X4, 388
    LDR X7, =ROOM2
    BL dibujar_rectangulo
    
    MOV X1, 385
    MOV X2, 50
    MOV X3, 620
    MOV X4, 213
    LDR X7, =TSKY3
    BL dibujar_rectangulo
    
    BL dedos_2
    
    BL cara_y_marco
    
    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET


anochecer2:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
	
	
   	MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, 374
    MOV X4, 49
    LDR X7, =ROOM3
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 40
    LDR X7, =ROOM3
    BL dibujar_rectangulo

    MOV X1, SCREEN_START
    MOV X2, 279
    MOV X3, 5
    MOV X4, 287
    LDR X7, =ROOM3
    BL dibujar_rectangulo
    
	MOV X1, SCREEN_START
    MOV X2, 160
    MOV X3, 95
    MOV X4, 278
    LDR X7, =ROOM3
    BL dibujar_rectangulo
        
    MOV X1, 186
    MOV X2, 50
    MOV X3, 374
    MOV X4, 182
    LDR X7, =ROOM3
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 50
    MOV X3, 190
    MOV X4, 174
    LDR X7, =ROOM3
    BL dibujar_rectangulo
    
    MOV X1, 456
    MOV X2, 224
    MOV X3, 518
    MOV X4, 388
    LDR X7, =ROOM3
    BL dibujar_rectangulo
    
    MOV X1, 630
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 388
    LDR X7, =ROOM3
    BL dibujar_rectangulo
    
    MOV X1, 629
    MOV X2, 223
    MOV X3, SCREEN_END_X
    MOV X4, 388
    LDR X7, =ROOM3
    BL dibujar_rectangulo
    
    MOV X1, 385
    MOV X2, 50
    MOV X3, 620
    MOV X4, 213
    LDR X7, =TSKY4
    BL dibujar_rectangulo

    BL dedos_0
    
    BL cara_y_marco
    
    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET


anochecer3:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
	
   	MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, 374
    MOV X4, 49
    LDR X7, =ROOM4
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 40
    LDR X7, =ROOM4
    BL dibujar_rectangulo
    
	MOV X1, SCREEN_START
    MOV X2, 279
    MOV X3, 5
    MOV X4, 287
    LDR X7, =ROOM4
    BL dibujar_rectangulo

    MOV X1, SCREEN_START
    MOV X2, 160
    MOV X3, 95
    MOV X4, 278
    LDR X7, =ROOM4
    BL dibujar_rectangulo
        
    MOV X1, 186
    MOV X2, 50
    MOV X3, 374
    MOV X4, 182
    LDR X7, =ROOM4
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 50
    MOV X3, 190
    MOV X4, 174
    LDR X7, =ROOM4
    BL dibujar_rectangulo
    
    MOV X1, 456
    MOV X2, 224
    MOV X3, 518
    MOV X4, 388
    LDR X7, =ROOM4
    BL dibujar_rectangulo
    
    MOV X1, 630
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 388
    LDR X7, =ROOM4
    BL dibujar_rectangulo
    
    MOV X1, 629
    MOV X2, 223
    MOV X3, SCREEN_END_X
    MOV X4, 388
    LDR X7, =ROOM4
    BL dibujar_rectangulo
    
    MOV X1, 385
    MOV X2, 50
    MOV X3, 620
    MOV X4, 213
    LDR X7, =TSKY5
    BL dibujar_rectangulo   
    
    BL dedos_1
    
    BL cara_y_marco
    
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


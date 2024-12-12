.ifndef FONDO_0_S
.equ FONDO_0_S, 0x100000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"
.include "movmano.s"
.include "atardecer.s"
.include "anochecer.s"
.include "movreloj.s"


fondo_gral0:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
  	
    // BASE DE LA PINTURA, SIMILAR A LA DEL EJERCICIO 1, ORDENADAS COMO SIGUE
    
   	BL pared
    
   	BL mesa  
    
   	BL ventana   
    
  	BL cuadro 	
    
    BL computadora  
    
    BL pantalla     
    
    BL PROgramador 
    
    BL silla

    //LA MANO SE MUEVE DEL MOUSSE AL TECLADO. LA IMPLEMENTACION ESTA EN EL ARCHIVO "movmano.s"
    BL delay
    
    BL manoateclado
    
    Bl delay

    // COMIENZA EL ATARDECER. LA IMPLEMENTACION ESTA EN EL ARCHIVO "atardecer.s"
    BL delay   
    
    BL ventana_1   	
   	
    // COMIENZA EL ANOCHECER. LA IMPLEMENTACION ESTA EN EL ARCHIVO "anochecer.s"
   	BL delay	  
    
   	BL anochecer1
    
    BL reloj
    
    BL relojpos5
    
   	BL delay
    
   	BL anochecer2
    
    BL reloj
    
    BL relojpos5
    
   	BL delay
    
   	BL anochecer3
    
    BL reloj
    
    BL relojpos6
    
    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

// AQUI COMIENZAN LAS IMPLEMENTACIONES DE CADA PARTE DE LA PINTURA

pared:
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
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =ROOM
    BL dibujar_rectangulo
    
    BL reloj

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

reloj:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
	
    LDR X10, =BLACK
    MOV X5, 226
    MOV X6, 75
    MOV X1, 40
    BL dibujarCirculo  
    
    LDR X10, =WHITE
    MOV X5, 226
    MOV X6, 75
    MOV X1, 30
    BL dibujarCirculo  
    
    LDR X10, =BLACK
    MOV X5, 226
    MOV X6, 75
    MOV X1, 2
    BL dibujarCirculo  
	
	BL manecillas
  
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

manecillas:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

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

mesa:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, 0
    MOV X2, 389
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =TABLE
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

ventana:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

	MOV X1, 375  
    MOV X2, 40  
    MOV X3, 630  
    MOV X4, 223 
    LDR X7, = DARK_BROWN
    BL dibujar_rectangulo
    
    MOV X1, 385
    MOV X2, 50
    MOV X3, 620
    MOV X4, 213
    LDR X7, =DAY_SKY
    BL dibujar_rectangulo
    
    BL sol
    
    // VENTANAL CERRADO
    
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
    
 	MOV X1, 620  
    MOV X2, 40  
    MOV X3, 630
    MOV X4, 223 
    LDR X7, = DARK_BROWN
    BL dibujar_rectangulo  
    
 	MOV X1, 630  
    MOV X2, 40  
    MOV X3, SCREEN_END_X 
    MOV X4, 223 
    LDR X7, = ROOM
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

sol:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]    
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 528
    MOV X6, 89
    MOV X1, 30
    BL dibujarCirculo  
    
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

cuadro:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
	
	MOV X1, SCREEN_START
    MOV X2, 50
    MOV X3, 177 
    MOV X4, 160 
    LDR X7, = DARK_BROWN
    BL dibujar_rectangulo 
    
    MOV X1, 10
    MOV X2, 60
    MOV X3, 167 
    MOV X4, 150 
    LDR X7, = SKY_PAINTING
    BL dibujar_rectangulo 
    
    MOV X1, 10
    MOV X2, 131
    MOV X3, 167 
    MOV X4, 150 
    LDR X7, = BLUE
    BL dibujar_rectangulo
    
    MOV X1, 31
    MOV X2, 124
    MOV X3, 147 
    MOV X4, 139 
    LDR X7, = MID_BROWN
    BL dibujar_rectangulo 
    
    BL velas
    
    MOV X1, 83
    MOV X2, 64
    MOV X3, 87 
    MOV X4, 124 
    LDR X7, = MID_BROWN
    BL dibujar_rectangulo 
    
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
    
RET

velas:
    SUB SP, SP, 40
    STR X6, [SP]
    STR X12, [SP, 8]
    STR X13, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

    LDR x10, =WHITE
	mov x12, 41
	mov x13, 127
	mov x6, 109
	bl dibujarTriangulo		
    
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X13, [SP, 16]
    LDR X12, [SP, 8]
    LDR X6, [SP]
    ADD SP, SP, 40
RET

computadora:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, 105
    MOV X2, 183
    MOV X3, 455
    MOV X4, 390
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 260
    MOV X2, 382
    MOV X3, 311
    MOV X4, 404
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 115
    MOV X2, 193
    MOV X3, 445
    MOV X4, 372
    LDR X7, =SCREEN
    BL dibujar_rectangulo
	
	MOV X1, 152
    MOV X2, 430
    MOV X3, 398
    MOV X4, 454
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    //MOUSE
      MOV X1, 404
    MOV X2, 412
    MOV X3, 466
    MOV X4, 443
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 451
    MOV X2, 423
    MOV X3, 464
    MOV X4, 425
    LDR X7, =RED
    BL dibujar_rectangulo
    
    MOV X1, 312
    MOV X2, 395
    MOV X3, 494
    MOV X4, 399
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 492
    MOV X2, 395
    MOV X3, 495
    MOV X4, 426
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 467
    MOV X2, 423
    MOV X3, 495
    MOV X4, 426
    LDR X7, =BLACK
    BL dibujar_rectangulo
        
    MOV X1, 433
    MOV X2, 414
    MOV X3, 448
    MOV X4, 419
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    //FIN MOUSE
    
    //PC
    
    MOV X1, 519
    MOV X2, 200
    MOV X3, 628
    MOV X4, 443
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 527
    MOV X2, 208
    MOV X3, 621
    MOV X4, 434
    LDR X7, =GRAY
    BL dibujar_rectangulo
    
    MOV X1, 535
    MOV X2, 222
    MOV X3, 610
    MOV X4, 271
    LDR X7, =DARK_GRAY
    BL dibujar_rectangulo
    
    MOV X1, 538
    MOV X2, 288
    MOV X3, 607
    MOV X4, 303
    LDR X7, =DARK_GRAY
    BL dibujar_rectangulo
    
    MOV X1, 573
    MOV X2, 303
    MOV X3, 573
    MOV X4, 405
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 538
    MOV X2, 405
    MOV X3, 607
    MOV X4, 405
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

pantalla:
	// PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 115
    MOV X2, 193
    MOV X3, 445
    MOV X4, 372
    LDR X7, =SCREEN
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 215
    MOV X3, 372
    MOV X4, 315
    LDR X7, = BLACK
    BL dibujar_rectangulo

    MOV X1, 200
    MOV X2, 215
    MOV X3, 372
    MOV X4, 221
    LDR X7, = GRAY2
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 216
    MOV X3, 206
    MOV X4, 315
    LDR X7, = GRAY2
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 215
    MOV X3, 206
    MOV X4, 315
    LDR X7, = WHITE
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 221
    MOV X3, 372
    MOV X4, 221
    LDR X7, = WHITE
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 239
    MOV X3, 350
    MOV X4, 239
    LDR X7, = WHITE
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 252
    MOV X3, 350
    MOV X4, 252
    LDR X7, = WHITE
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 265
    MOV X3, 350
    MOV X4, 265
    LDR X7, = WHITE
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 278
    MOV X3, 350
    MOV X4, 278
    LDR X7, = WHITE
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 291
    MOV X3, 350
    MOV X4, 291
    LDR X7, = RED
    BL dibujar_rectangulo
    
    MOV X1, 366
    MOV X2, 217
    LDR X7, = RED
    BL 	dibujar_pixel
    
    MOV X1, 367
    MOV X2, 218
    LDR X7, = RED
    BL 	dibujar_pixel

    MOV X1, 368
    MOV X2, 219
    LDR X7, = RED
    BL 	dibujar_pixel

    MOV X1, 369
    MOV X2, 220
    LDR X7, = RED
    BL 	dibujar_pixel

    MOV X1, 366
    MOV X2, 220
    LDR X7, = RED
    BL 	dibujar_pixel

    MOV X1, 367
    MOV X2, 219
    LDR X7, = RED
    BL 	dibujar_pixel

    MOV X1, 368
    MOV X2, 218
    LDR X7, = RED
    BL 	dibujar_pixel

    MOV X1, 369
    MOV X2, 217
    LDR X7, = RED
    BL 	dibujar_pixel

	// PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

flecha_cursor:
    SUB SP, SP, 40
    STR X6, [SP]
    STR X12, [SP, 8]
    STR X13, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

    LDR x10, =BLACK
	mov x12, 277
	mov x13, 297
	mov x6, 242
	bl dibujarTriangulo		

    // RESTAURAR LOS REGISTROS DESDE EL STACK Y LIBERAR ESPACIO EN ESTE
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X13, [SP, 16]
    LDR X12, [SP, 8]
    LDR X6, [SP]
    ADD SP, SP, 40   
RET

PROgramador:
    // PUSH(X30)
    //cabeza
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
    
    MOV X1, 0
    MOV X2, 343
    MOV X3, 23
    MOV X4, 434
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 343
    MOV X3, 259
    MOV X4, 434
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 259        //BRAZO
    MOV X2, 404
    MOV X3, 430
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 425
    MOV X3, 302
    MOV X4, 432
    LDR X7, = SKIN
    BL dibujar_rectangulo
    
    // MANO
    MOV X1, 430      // DEDO
    MOV X2, 405
    MOV X3, 448   
    MOV X4, 408
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 430
    MOV X2, 410     // DEDO
    MOV X3, 450
    MOV X4, 413
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 430    // DEDO
    MOV X2, 418
    MOV X3, 453
    MOV X4, 422
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 424   // DEDO
    MOV X2, 425
    MOV X3, 427
    MOV X4, 433
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    MOV X1, 428  // DEDO
    MOV X2, 430
    MOV X3, 440
    MOV X4, 433
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    // PELO
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
    
    // REMERA
    MOV X1, 5
    MOV X2, 279
    MOV X3, 257
    MOV X4, 287
    LDR X7, =SHIRT
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 287
    MOV X3, 260
    MOV X4, 343
    LDR X7, =SHIRT
    BL dibujar_rectangulo
    
    MOV X1, 52
    MOV X2, 452
    MOV X3, 208
    MOV X4, 477
    LDR X7, =SHIRT
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

silla:
	SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 17
    MOV X2, 305
    MOV X3, 231
    MOV X4, 362
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 361
    MOV X3, 224
    MOV X4, 452
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 361
    MOV X3, 224
    MOV X4, 452
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 89
    MOV X2, 452
    MOV X3, 163
    MOV X4, 477
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 477
    MOV X3, 224
    MOV X4, SCREEN_END_Y
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

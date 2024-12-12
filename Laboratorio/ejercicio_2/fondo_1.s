.ifndef FONDO_1_S
.equ FONDO_1_S, 0x000000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"
.include "cenit.s"
.include "dedos_teclado.s"
.include "acostado.s"


fondo_gral1:

    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    // SEGUNDA PARTE CON IMPLEMENTACIONES SIMILARES A LAS DE LA FUNCION "fondo_gral0"
    BL paredn2
    
    BL mesan2
    
    BL ventanan2
    
    BL cuadron2
    
    BL computadora2
    
    BL PC_oscura
    
    BL pantalla2
    
    BL PROgramadorn2
    
    BL silla2
    
    BL iluminacion
    
    
    // COMIENZAN A APARECER EL CIELO ESTRELLADO Y LA LUNA, CUYAS IMPLEMENTACIONES ESTAN EN "cenit.s"
    BL delay
    
    BL oscureciendo
    
    // MUESTRA A LA PERSONA DURMIENDO. LAS IMPLEMENTACIONES DE "zetas" Y "durmiendo" ESTAN EN "acostado.s"
    BL delay  
    
    BL cuadron2
    
    BL computadora2
    
    BL PC_oscura
    
    BL pantalla2
    
    BL durmiendo 
    
    BL silla2
    
    BL zetas 

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

paredn2:
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
    LDR X7, =ROOMN
    BL dibujar_rectangulo
 
    BL relojn2 
     
    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

relojn2:
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
    
    LDR X10, =WHITEN
    MOV X5, 226
    MOV X6, 75
    MOV X1, 30
    BL dibujarCirculo  
    
    LDR X10, =BLACK
    MOV X5, 226
    MOV X6, 75
    MOV X1, 2
    BL dibujarCirculo  
	
	BL manecillasn2
  
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

manecillasn2:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

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

mesan2:
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
    LDR X7, =TABLEN
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

ventanan2:
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
    LDR X7, = BROWNN
    BL dibujar_rectangulo
    
    MOV X1, 385  
    MOV X2, 50   
    MOV X3, 620  
    MOV X4, 213  
    LDR X7, = NIGTH_SKY
    BL dibujar_rectangulo
    
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
    LDR X7, = BROWNN
    BL dibujar_rectangulo  
    
    MOV X1, 630  
    MOV X2, 40  
    MOV X3, SCREEN_END_X 
    MOV X4, 223 
    LDR X7, = ROOMN
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

cuadron2:
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
    LDR X7, = BROWNN
    BL dibujar_rectangulo 
    
    MOV X1, 10
    MOV X2, 60
    MOV X3, 167 
    MOV X4, 150 
    LDR X7, = SKY_P_N
    BL dibujar_rectangulo 
    
    MOV X1, 10
    MOV X2, 131
    MOV X3, 167 
    MOV X4, 150 
    LDR X7, = BLUEN
    BL dibujar_rectangulo
    
    MOV X1, 31
    MOV X2, 124
    MOV X3, 147 
    MOV X4, 139 
    LDR X7, = MID_BROWN_N
    BL dibujar_rectangulo 
    
    BL velasn2
    
    MOV X1, 83
    MOV X2, 64
    MOV X3, 87 
    MOV X4, 124 
    LDR X7, = MID_BROWN_N
    BL dibujar_rectangulo 
    
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
    
RET

velasn2:
    SUB SP, SP, 40
    STR X6, [SP]
    STR X12, [SP, 8]
    STR X13, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

    LDR x10, =WHITEN
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
   
computadora2:
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
    LDR X7, =WHITE
    BL dibujar_rectangulo
	
	MOV X1, 152
    MOV X2, 430
    MOV X3, 398
    MOV X4, 454
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    // MOUSE
    
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
    
    // PC

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
    LDR X7, =GRAY2
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

pantalla2:
	// PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
        
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

PC_oscura:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 527
    MOV X2, 208
    MOV X3, 621
    MOV X4, 434
    LDR X7, =GRAYN
    BL dibujar_rectangulo
    
    MOV X1, 535
    MOV X2, 222
    MOV X3, 610
    MOV X4, 271
    LDR X7, =DARK_GRAY_N
    BL dibujar_rectangulo
    
    MOV X1, 538
    MOV X2, 288
    MOV X3, 607
    MOV X4, 303
    LDR X7, =DARK_GRAY_N
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
    
PROgramadorn2:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // CABEZA

    MOV X1, 57
    MOV X2, 175
    MOV X3, 185
    MOV X4, 220
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 74
    MOV X2, 221
    MOV X3, 167
    MOV X4, 237
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 237
    MOV X3, 159
    MOV X4, 247
    LDR X7, =SKINN
    BL dibujar_rectangulo
		
	MOV X1, 82
    MOV X2, 247
    MOV X3, 157
    MOV X4, 252
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 88
    MOV X2, 251
    MOV X3, 153
    MOV X4, 256
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 96
    MOV X2, 257
    MOV X3, 145
    MOV X4, 279
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 0
    MOV X2, 343
    MOV X3, 23
    MOV X4, 434
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 343
    MOV X3, 259
    MOV X4, 434
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 259
    MOV X2, 404
    MOV X3, 377
    MOV X4, 424
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 425
    MOV X3, 302
    MOV X4, 432
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    // MANO 
    
    MOV X1, 370
    MOV X2, 421
    MOV X3, 376
    MOV X4, 436
    LDR X7, = SKINN
    BL dibujar_rectangulo
  
    MOV X1, 329
    MOV X2, 422
    MOV X3, 335
    MOV X4, 436
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 360
    MOV X2, 421
    MOV X3, 366
    MOV X4, 436
    LDR X7, = SKINN
    BL dibujar_rectangulo
    
    MOV X1, 350
    MOV X2, 421
    MOV X3, 356
    MOV X4, 436
    LDR X7, = SKINN
    BL dibujar_rectangulo
    
    MOV X1, 340
    MOV X2, 421
    MOV X3, 346
    MOV X4, 436
    LDR X7, = SKINN
    BL dibujar_rectangulo
       
    // PELO
    MOV X1, 74
    MOV X2, 107
    MOV X3, 93
    MOV X4, 116
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 72
    MOV X2, 116
    MOV X3, 145
    MOV X4, 124
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 124
    MOV X3, 167
    MOV X4, 130
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 62
    MOV X2, 130
    MOV X3, 178
    MOV X4, 178
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 76
    MOV X2, 178
    MOV X3, 166
    MOV X4, 193
    LDR X7, =HAIRN
    BL dibujar_rectangulo  
    
    MOV X1, 80
    MOV X2, 193
    MOV X3, 166
    MOV X4, 202
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 89
    MOV X2, 202
    MOV X3, 151
    MOV X4, 213
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 93
    MOV X2, 213
    MOV X3, 145
    MOV X4, 221
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 108
    MOV X2, 221
    MOV X3, 130
    MOV X4, 228
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    // REMERA
    MOV X1, 5
    MOV X2, 279
    MOV X3, 257
    MOV X4, 287
    LDR X7, =SHIRTN
    BL dibujar_rectangulo
    
    MOV X1, 0
    MOV X2, 287
    MOV X3, 260
    MOV X4, 343
    LDR X7, =SHIRTN
    BL dibujar_rectangulo
    
    MOV X1, 52
    MOV X2, 452
    MOV X3, 208
    MOV X4, 477
    LDR X7, =SHIRTN
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

silla2:
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

iluminacion:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // ILUMINACION BRAZO 
    MOV X1, 253
    MOV X2, 344
    MOV X3, 259
    MOV X4, 403
    LDR X7, =SKINNI
    BL dibujar_rectangulo
    
    // ILUMINACION ANTEBRAZO 
    MOV X1, 253
    MOV X2, 403
    MOV X3, 376
    MOV X4, 408
    LDR X7, =SKINNI 
    BL dibujar_rectangulo

    // ILUMINACION REMERA
    MOV X1, 253
    MOV X2, 287
    MOV X3, 260
    MOV X4, 343
    LDR X7, =SHIRTNI
    BL dibujar_rectangulo

    MOV X1, 138
    MOV X2, 279
    MOV X3, 257
    MOV X4, 287
    LDR X7, =SHIRTNI
    BL dibujar_rectangulo

    // ILUMINACION CUELLO
    MOV X1, 138
    MOV X2, 257
    MOV X3, 145
    MOV X4, 278
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    // ILUMINACION MANDIBULA
    MOV X1, 138
    MOV X2, 253
    MOV X3, 154
    MOV X4, 256
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 247
    MOV X3, 157  
    MOV X4, 252
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 155
    MOV X2, 238
    MOV X3, 159 
    MOV X4, 248
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 155
    MOV X2, 233
    MOV X3, 167
    MOV X4, 237
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 162
    MOV X2, 221
    MOV X3, 167
    MOV X4, 233
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    // ILUMINACION OREJA
    MOV X1, 166
    MOV X2, 215
    MOV X3, 185
    MOV X4, 220
    LDR X7, =SKINNI
    BL dibujar_rectangulo
 
    MOV X1, 179
    MOV X2, 175
    MOV X3, 185
    MOV X4, 215
    LDR X7, =SKINNI
    BL dibujar_rectangulo
    
    // ILUMINACION PELO
    MOV X1, 174
    MOV X2, 130
    MOV X3, 178
    MOV X4, 178
    LDR X7, =HAIRNI
    BL dibujar_rectangulo
    
    MOV X1, 168
    MOV X2, 130
    MOV X3, 174
    MOV X4, 134
    LDR X7, =HAIRNI
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 124
    MOV X3, 167
    MOV X4, 127
    LDR X7, =HAIRNI
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

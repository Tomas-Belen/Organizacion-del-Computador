.ifndef FONDO_0_S
.equ FONDO_0_S, 0x000000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"

// FUNCION PRINCIPAL QUE LLAMA A LOS DISTINTOS COMPONENTES DE LA ESCENA
fondo_gral:

    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
	
    // LLAMAMOS A LOS DISTINTOS ELEMENTOS

    BL pared
    
    BL mesa
    
    BL ventana
    
    BL cuadro
    
    BL computadora
    
    BL pantalla
    
    BL PROgramador
    
    BL silla
    
    BL sombras
    
    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

sombras:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // SOMBRAS CUELLO
    MOV X1, 57
    MOV X2, 174
    MOV X3, 94
    MOV X4, 220
    LDR X7, =SKINN  
    BL dibujar_rectangulo

    MOV X1, 74
    MOV X2, 221
    MOV X3, 120
    MOV X4, 237
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 78
    MOV X2, 237
    MOV X3, 120
    MOV X4, 247
    LDR X7, =SKINN
    BL dibujar_rectangulo

	MOV X1, 82
    MOV X2, 247
    MOV X3, 123
    MOV X4, 252
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 88
    MOV X2, 251
    MOV X3, 123
    MOV X4, 256
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 96
    MOV X2, 257
    MOV X3, 123
    MOV X4, 278
    LDR X7, =SKINN
    BL dibujar_rectangulo

    // SOMBRAS PELO
    MOV X1, 74
    MOV X2, 107
    MOV X3, 93
    MOV X4, 116
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 72
    MOV X2, 116
    MOV X3, 115
    MOV X4, 124
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 62
    MOV X2, 124
    MOV X3, 100
    MOV X4, 150
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 64
    MOV X2, 140
    MOV X3, 105
    MOV X4, 150
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 62
    MOV X2, 150
    MOV X3, 105
    MOV X4, 178
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 65
    MOV X2, 165
    MOV X3, 110
    MOV X4, 193
    LDR X7, =HAIRN
    BL dibujar_rectangulo 

    MOV X1, 80
    MOV X2, 193
    MOV X3, 120
    MOV X4, 202
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 89
    MOV X2, 202
    MOV X3, 120
    MOV X4, 213
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 93
    MOV X2, 213
    MOV X3, 120
    MOV X4, 221
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 108
    MOV X2, 221
    MOV X3, 120
    MOV X4, 228
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    // SOMBRAS REMERAS
    MOV X1, 5
    MOV X2, 279
    MOV X3, 125
    MOV X4, 304
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 126
    MOV X2, 284
    MOV X3, 160
    MOV X4, 304
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 160
    MOV X2, 295
    MOV X3, 185
    MOV X4, 304
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 0
    MOV X2, 287
    MOV X3, 17
    MOV X4, 343
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 52
    MOV X2, 453
    MOV X3, 88
    MOV X4, 476
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 164
    MOV X2, 453
    MOV X3, 195
    MOV X4, 476
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    // ANTEBRAZO
    MOV X1, 225
    MOV X2, 363
    MOV X3, 232
    MOV X4, 434
    LDR X7, =SKINN
    BL dibujar_rectangulo
    
    MOV X1, 232
    MOV X2, 344
    MOV X3, 243
    MOV X4, 434
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 259
    MOV X2, 422
    MOV X3, 414
    MOV X4, 424
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 225
    MOV X2, 422
    MOV X3, 263
    MOV X4, 434
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 225
    MOV X2, 422
    MOV X3, 302
    MOV X4, 433
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 399
    MOV X2, 432
    MOV X3, 425
    MOV X4, 444
    LDR X7, =TABLEN
    BL dibujar_rectangulo

    MOV X1, 302
    MOV X2, 422
    MOV X3, 330
    MOV X4, 430
    LDR X7, =SKINN
    BL dibujar_rectangulo

    // MANO
    MOV X1, 427
    MOV X2, 403
    MOV X3, 441
    MOV X4, 404
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 445
    MOV X2, 405
    MOV X3, 457
    MOV X4, 406
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 451
    MOV X2, 408
    MOV X3, 460
    MOV X4, 409
    LDR X7, =SKINN
    BL dibujar_rectangulo

    // MOUSE
    MOV X1, 426
    MOV X2, 446
    MOV X3, 468
    MOV X4, 449
    LDR X7, =TABLEN
    BL dibujar_rectangulo

    // GABINETE
    MOV X1, 520
    MOV X2, 444
    MOV X3, 628
    MOV X4, 449
    LDR X7, =TABLEN
    BL dibujar_rectangulo

    MOV X1, 536
    MOV X2, 271
    MOV X3, 608
    MOV X4, 273
    LDR X7, =DARKER_GRAY
    BL dibujar_rectangulo

    MOV X1, 540
    MOV X2, 303
    MOV X3, 605
    MOV X4, 305
    LDR X7, =DARKER_GRAY
    BL dibujar_rectangulo

    // TECLADO
    MOV X1, 209
    MOV X2, 455
    MOV X3, 396
    MOV X4, 458
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
	
    // SOMBRA
    LDR X10,=ROOMN
    MOV X5, 222
    MOV X6, 78
    MOV X1, 40
    BL dibujarCirculo

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
    LDR X7, = DAY_SKY
    BL dibujar_rectangulo
    
    BL sol
    
    //VENTANAL CERRADO
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

    // CORTINAS SOMBRA
    MOV X1, 370
    MOV X2, 30  
    MOV X3, 375
    MOV X4, 200
    LDR X7, =ROOMN
    BL dibujar_rectangulo

    // CORTINA IZQUIERDA
    MOV X1, 375
    MOV X2, 30  
    MOV X3, 450
    MOV X4, 200
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 380
    MOV X2, 30  
    MOV X3, 384
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    MOV X1, 395
    MOV X2, 30  
    MOV X3, 402
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    MOV X1, 413
    MOV X2, 30  
    MOV X3, 417
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    MOV X1, 426
    MOV X2, 30  
    MOV X3, 433
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    MOV X1, 442
    MOV X2, 30  
    MOV X3, 445
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    // CORTINA DERECHA 
    MOV X1, 560
    MOV X2, 30  
    MOV X3, 630
    MOV X4, 200
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 624
    MOV X2, 30  
    MOV X3, 628
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    MOV X1, 610
    MOV X2, 30  
    MOV X3, 615
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    MOV X1, 573
    MOV X2, 30  
    MOV X3, 577
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    MOV X1, 590
    MOV X2, 30  
    MOV X3, 597
    MOV X4, 200
    LDR X7, =WHITEN
    BL dibujar_rectangulo

    // SOMBRA PALO
    MOV X1, 368
    MOV X2, 35 
    MOV X3, 637
    MOV X4, 37
    LDR X7, = ROOMN
    BL dibujar_rectangulo

    LDR X10, =DARK_BROWN
    MOV X5, 368
    MOV X6, 33
    MOV X1, 6
    BL dibujarCirculo

    LDR X10, =DARK_BROWN
    MOV X5, 637
    MOV X6, 33
    MOV X1, 6
    BL dibujarCirculo

    MOV X1, 368
    MOV X2, 30  
    MOV X3, 637
    MOV X4, 35
    LDR X7, = DARK_BROWN
    BL dibujar_rectangulo
 
    MOV X1, 380
    MOV X2, 29
    MOV X3, 381
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 398
    MOV X2, 29
    MOV X3, 399
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 414
    MOV X2, 29
    MOV X3, 415
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 430
    MOV X2, 29
    MOV X3, 431
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 442
    MOV X2, 29
    MOV X3, 443
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 625
    MOV X2, 29
    MOV X3, 626
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 611
    MOV X2, 29
    MOV X3, 612
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 593
    MOV X2, 29
    MOV X3, 594
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 575
    MOV X2, 29
    MOV X3, 576
    MOV X4, 38
    LDR X7, = GRAY
    BL dibujar_rectangulo

    MOV X1, 562
    MOV X2, 29
    MOV X3, 563
    MOV X4, 38
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

sol:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    
    // PARAMETROS PARA DIBUJAR EL SOL
    LDR X10, =SUNN
    MOV X5, 530
    MOV X6, 89
    MOV X1, 32
    BL dibujarCirculo
    
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
	
    // SOMBRA CUADRO
    MOV X1, SCREEN_START
    MOV X2, 160
    MOV X3, 177 
    MOV X4, 164
    LDR X7, = ROOMN
    BL dibujar_rectangulo 

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
    MOV X4, 382
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
	
	// TECLADO
	MOV X1, 152
    MOV X2, 430
    MOV X3, 398
    MOV X4, 454
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    // MOUSE
    MOV X1, 312
    MOV X2, 395
    MOV X3, 518
    MOV X4, 399
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 312
    MOV X2, 395
    MOV X3, 514
    MOV X4, 399
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 511
    MOV X2, 395
    MOV X3, 514
    MOV X4, 426
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 470
    MOV X2, 423
    MOV X3, 510
    MOV X4, 426
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 426
    MOV X2, 417
    MOV X3, 470
    MOV X4, 445
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 460
    MOV X2, 426
    MOV X3, 470
    MOV X4, 428
    LDR X7, =RED
    BL dibujar_rectangulo
    // FIN MOUSE
    
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
    
    // ARCHIVO_PC1
    MOV X1, 274
    MOV X2, 212
    MOV X3, 319
    MOV X4, 212
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 274
    MOV X2, 254
    MOV X3, 319
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 274
    MOV X2, 212
    MOV X3, 274
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 319
    MOV X2, 212
    MOV X3, 319
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 218
    MOV X3, 305
    MOV X4, 222
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 229
    MOV X3, 305
    MOV X4, 233
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 240
    MOV X3, 305
    MOV X4, 244
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 218
    MOV X3, 289
    MOV X4, 233
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 304
    MOV X2, 232
    MOV X3, 308
    MOV X4, 244
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    // ARCHIVO_PC2
    MOV X1, 336
    MOV X2, 212
    MOV X3, 381
    MOV X4, 212
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 336
    MOV X2, 254
    MOV X3, 381
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 336
    MOV X2, 212
    MOV X3, 336
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 381
    MOV X2, 212
    MOV X3, 381
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 347
    MOV X2, 218
    MOV X3, 367
    MOV X4, 222
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 347
    MOV X2, 229
    MOV X3, 367
    MOV X4, 233
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 347
    MOV X2, 240
    MOV X3, 367
    MOV X4, 244
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 347
    MOV X2, 218
    MOV X3, 351
    MOV X4, 233
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    MOV X1, 367
    MOV X2, 232
    MOV X3, 371
    MOV X4, 244
    LDR X7, =PINK
    BL dibujar_rectangulo
    
    // ARCHIVO_PC3
    MOV X1, 393
    MOV X2, 212
    MOV X3, 438
    MOV X4, 212
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 393
    MOV X2, 254
    MOV X3, 438
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 393
    MOV X2, 212
    MOV X3, 393
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 438
    MOV X2, 212
    MOV X3, 438
    MOV X4, 254
    LDR X7, =BLACK
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 218
    MOV X3, 429
    MOV X4, 222
    LDR X7, = DARK_ORANGE
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 218
    MOV X3, 409
    MOV X4, 243
    LDR X7, = DARK_ORANGE
    BL dibujar_rectangulo
    
    MOV X1, 425
    MOV X2, 218
    MOV X3, 429
    MOV X4, 243
    LDR X7, = DARK_ORANGE
    BL dibujar_rectangulo
    
    MOV X1, 416
    MOV X2, 218
    MOV X3, 420
    MOV X4, 232
    LDR X7, = DARK_ORANGE
    BL dibujar_rectangulo

    // QUEMU_COHETE
    MOV X1, 295
    MOV X2, 280
    MOV X3, 410
    MOV X4, 350
    LDR X7, = DARK_GRAY
    BL dibujar_rectangulo

    MOV X1, 297
    MOV X2, 296
    MOV X3, 408
    MOV X4, 348
    LDR X7, =SPACE
    BL dibujar_rectangulo

    MOV X1, 325
    MOV X2, 283
    MOV X3, 335
    MOV X4, 292
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 326
    MOV X2, 284
    MOV X3, 334
    MOV X4, 291
    LDR X7, =DARK_GRAY
    BL dibujar_rectangulo

    MOV X1, 331
    MOV X2, 290
    MOV X3, 338
    MOV X4, 290
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 283
    MOV X3, 342
    MOV X4, 292
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 283
    MOV X3, 350
    MOV X4, 283
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 287
    MOV X3, 350
    MOV X4, 287
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 292
    MOV X3, 350
    MOV X4, 292
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 357
    MOV X2, 283
    MOV X3, 369
    MOV X4, 292
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 358
    MOV X2, 284
    MOV X3, 362
    MOV X4, 292
    LDR X7, =DARK_GRAY
    BL dibujar_rectangulo

    MOV X1, 364
    MOV X2, 284
    MOV X3, 368
    MOV X4, 292
    LDR X7, =DARK_GRAY
    BL dibujar_rectangulo

    MOV X1, 377
    MOV X2, 283
    MOV X3, 386
    MOV X4, 292
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 378
    MOV X2, 283
    MOV X3, 385
    MOV X4, 291
    LDR X7, =DARK_GRAY
    BL dibujar_rectangulo

    MOV X1, 320
    MOV X2, 314
    MOV X3, 367
    MOV X4, 330
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 367
    MOV X2, 314
    MOV X3, 371
    MOV X4, 330
    LDR X7, =RED
    BL dibujar_rectangulo

    MOV X1, 371
    MOV X2, 316
    MOV X3, 375
    MOV X4, 328
    LDR X7, =RED
    BL dibujar_rectangulo

    MOV X1, 375
    MOV X2, 319
    MOV X3, 378
    MOV X4, 325
    LDR X7, =RED
    BL dibujar_rectangulo

    MOV X1, 378
    MOV X2, 321
    MOV X3, 383
    MOV X4, 323
    LDR X7, =RED
    BL dibujar_rectangulo

    MOV X1, 315
    MOV X2, 310
    MOV X3, 328
    MOV X4, 313
    LDR X7, =RED
    BL dibujar_rectangulo

    MOV X1, 315
    MOV X2, 331
    MOV X3, 328
    MOV X4, 334
    LDR X7, =RED
    BL dibujar_rectangulo

    LDR X10, =BLACK
    MOV X5, 358
    MOV X6, 321
    MOV X1, 4
    BL dibujarCirculo

    // FUEGO_NAVE_COHETE
    MOV X1, 310
    MOV X2, 319
    MOV X3, 319
    MOV X4, 326
    LDR X7, =DARK_ORANGE
    BL dibujar_rectangulo

    MOV X1, 305
    MOV X2, 321
    MOV X3, 310
    MOV X4, 324
    LDR X7, =DARK_ORANGE
    BL dibujar_rectangulo

    MOV X1, 311
    MOV X2, 321
    MOV X3, 319
    MOV X4, 324
    LDR X7, =0xffeb3b
    BL dibujar_rectangulo

    MOV X1, 306
    MOV X2, 322
    MOV X3, 312
    MOV X4, 323
    LDR X7, =0xffeb3b
    BL dibujar_rectangulo

    BL flecha_cursor

    MOV X1, 285
    MOV X2, 240
    MOV X3, 287
    MOV X4, 250
    LDR X7, =BLACK
    BL dibujar_rectangulo

    // ESTRELLAS_QUEMU
    MOV X1, 305
    MOV X2, 300
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 330
    MOV X2, 305
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 370
    MOV X2, 302
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 314
    MOV X2, 342
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 340
    MOV X2, 336
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 365
    MOV X2, 336
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 385
    MOV X2, 342
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 396
    MOV X2, 330
    LDR X7, =WHITE
    BL dibujar_pixel

    MOV X1, 386
    MOV X2, 305
    LDR X7, =WHITE
    BL dibujar_pixel
    // FIN QUEMU_COHETE
    
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

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X13, [SP, 16]
    LDR X12, [SP, 8]
    LDR X6, [SP]
    ADD SP, SP, 40
RET

PROgramador:
    // PUSH(X30)
    
    // CABEZA
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
    
    // BRAZO
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
    
    MOV X1, 259
    MOV X2, 404
    MOV X3, 414
    MOV X4, 424
    LDR X7, =SKIN
    BL dibujar_rectangulo
    
    // MANO
    MOV X1, 415
    MOV X2, 402
    MOV X3, 422
    MOV X4, 421
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 423
    MOV X2, 400
    MOV X3, 434
    MOV X4, 420
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 434
    MOV X2, 410
    MOV X3, 439
    MOV X4, 418
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 434
    MOV X2, 401
    MOV X3, 441
    MOV X4, 410
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 440
    MOV X2, 403
    MOV X3, 450
    MOV X4, 416
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 451
    MOV X2, 403
    MOV X3, 459
    MOV X4, 413
    LDR X7, =SKIN
    BL dibujar_rectangulo

    MOV X1, 458
    MOV X2, 403
    MOV X3, 461
    MOV X4, 420
    LDR X7, =SKIN
    BL dibujar_rectangulo

    // PIXELES DE MESA
    MOV X1, 458
    MOV X2, 403
    MOV X3, 461
    MOV X4, 404
    LDR X7, =TABLE
    BL dibujar_rectangulo

    MOV X1, 457
    MOV X2, 403
    MOV X3, 461
    MOV X4, 404
    LDR X7, =TABLE
    BL dibujar_rectangulo

    MOV X1, 460
    MOV X2, 400
    MOV X3, 462
    MOV X4, 408
    LDR X7, =TABLE
    BL dibujar_rectangulo
    // FIN CUERPO PIEL DEL PROGRAMADOR
    
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
    // FIN PELO
    
    // REMERA
    MOV X1, 5
    MOV X2, 279
    MOV X3, 257
    MOV X4, 287
    LDR X7, =SHIRT
    BL dibujar_rectangulo
    
    MOV X1, 0
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
    //FIN REMERA
    
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


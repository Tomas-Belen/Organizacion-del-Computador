.ifndef ATARDECER_S
.equ ATARDECER_S, 0x100000


.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"
.include "dedos_teclado.s"
.include "movreloj.s"


// PINTA EL MARCO DE LA VENTANA
marco:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
 
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

// ESTA FUNCION REALIZA EL MOVIMIENTO DEL SOL ESCONDIENDOSE, EL CIELO OSCURECIENDOSE GRADUALMENTE, LOS DEDOS MOVIENDOSE Y LAS AGUJAS DEL RELOJ AVANZANDO
ventana_1: 
	// PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL pos_sol2
    
    BL dedos_1

    Bl delay

    BL relojpos1
    
    BL pos_sol3
    
    BL dedos_2
   
    Bl delay

    BL pos_sol4
    
    BL dedos_0
   
    Bl delay
    
    BL pos_sol5
    
    BL dedos_1
    
    Bl delay
    
    BL pos_sol6
    
    BL dedos_2
    
    Bl delay

    BL pos_sol7
    
    BL dedos_0

    BL delay
    
    BL pos_sol8
    
    BL dedos_1

    Bl delay

    BL pos_sol9
    
    BL dedos_2

    Bl delay

    BL pos_sol10
    
    BL dedos_0

    Bl delay

    BL relojpos2
    
    BL pos_sol11

    BL dedos_1

    Bl delay

    BL pos_sol12
    
    BL dedos_2

    Bl delay

    BL pos_sol13
    
    BL dedos_0

    Bl delay
    
    BL pos_sol14
    
    BL dedos_1

    BL delay

    BL pos_sol15
    
    BL dedos_2
   	    
    BL delay

    BL pos_sol16
    
    BL dedos_0
   	    
    BL delay

    BL pos_sol17
    
    BL dedos_1
   	    
    BL delay
    
    BL pos_sol18
    
    BL delay

   	MOV X1, 385
    MOV X2, 50
    MOV X3, 620
    MOV X4, 213
    LDR X7, =TSKY
    BL dibujar_rectangulo
    
    BL pos_sol19
    
    BL dedos_0
    
    BL relojpos3
    
    BL delay

    BL pos_sol20
    
    BL dedos_1
    
    BL delay
    
    BL pos_sol21
    
    BL dedos_2

    BL delay
    
    BL pos_sol22
    
    BL dedos_0

    BL delay
    
    BL pos_sol23
    
    BL dedos_1
    
    BL delay
    
    BL pos_sol24
    
    BL dedos_2
    
    BL delay
    
    BL pos_sol25
    
    BL dedos_0

    BL delay
    
    BL pos_sol26
    
    BL dedos_1

    BL delay
    
    BL relojpos4
    
    BL pos_sol27
    
    BL dedos_2

    BL delay
    
    BL pos_sol28
    
    BL dedos_0

    BL delay
    
    BL pos_sol29
    
    BL dedos_1

    BL delay

    BL pos_sol30
    
    BL dedos_2

    BL delay
    
    BL pos_sol31
    
    BL dedos_0

    BL delay

    MOV X1, 385
    MOV X2, 50
    MOV X3, 620
    MOV X4, 213
    LDR X7, =TSKY2
    BL dibujar_rectangulo
    
    BL pos_sol32
    
    BL dedos_1

    BL delay
    
    BL pos_sol33
    
    BL dedos_2

    BL delay
    
    BL pos_sol34
    
    BL dedos_0

    BL delay
    
    BL pos_sol35
    
    BL dedos_1

    BL delay
    
    BL pos_sol36
    
    BL dedos_2

    BL delay
    
    BL pos_sol37
    
    BL dedos_0

    BL delay
    
    BL relojpos5
    
    BL pos_sol38
    
    BL dedos_1

    BL delay
    
    BL pos_sol39
    
    BL dedos_2

    BL delay
    
    BL pos_sol40
    
    BL dedos_0

    BL delay
    
    BL pos_sol41
    
   	BL dedos_1

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

//AQUÍ COMIENZA LA SECCIÓN DE FRAMES "POSICION_SOL'X'" PARA LA ANIMACION VENTANA ANTERIOR, DONDE SE EFECTÚA LA ANIMACIÓN CON LA PINTURA DE UN SOL UN POCO MÁS A LA IZQUIERDA, PINTANDO ANTES EL LUGAR DONDE ESTABA CON OTRO CÍRCULO DEL COLOR DEL CIELO
pos_sol2:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 528
    MOV X6, 89
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 525
    MOV X6, 92
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol3:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 525
    MOV X6, 92
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 522
    MOV X6, 95
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol4:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 522
    MOV X6, 95
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 519
    MOV X6, 98
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol5:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 519
    MOV X6, 98
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 516
    MOV X6, 101
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol6:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 516
    MOV X6, 101
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 513
    MOV X6, 104
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol7:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 513
    MOV X6, 104
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 510
    MOV X6, 107
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol8:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 510
    MOV X6, 107
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 507
    MOV X6, 110
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol9:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 507
    MOV X6, 110
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 504
    MOV X6, 113
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol10:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 504
    MOV X6, 113
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 501
    MOV X6, 116
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol11:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 501
    MOV X6, 116
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 498
    MOV X6, 119
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol12:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 498
    MOV X6, 119
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 495
    MOV X6, 122
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol13:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 495
    MOV X6, 122
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 492
    MOV X6, 125
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol14:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 492
    MOV X6, 125
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 489
    MOV X6, 128
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol15:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 489
    MOV X6, 128
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 486
    MOV X6, 131
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol16:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 486
    MOV X6, 131
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 483
    MOV X6, 134
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco
    
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol17:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 483
    MOV X6, 134
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 480
    MOV X6, 137
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco
    
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol18:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =DAY_SKY
    MOV X5, 480
    MOV X6, 137
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =SUN_UP
    MOV X5, 477
    MOV X6, 140
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco
    
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol19:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 477
    MOV X6, 140
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 474
    MOV X6, 143
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET


pos_sol20:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 474
    MOV X6, 143
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 471
    MOV X6, 146
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol21:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 471
    MOV X6, 146
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 468
    MOV X6, 149
    MOV X1, 30
    BL dibujarCirculo  
	
	BL marco
    
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol22:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 468
    MOV X6, 149
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 465
    MOV X6, 152
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol23:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 465
    MOV X6, 152
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 462
    MOV X6, 155
    MOV X1, 30
    BL dibujarCirculo 
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol24:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 462
    MOV X6, 155
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 459
    MOV X6, 158
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol25:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 459
    MOV X6, 158
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 456
    MOV X6, 161
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol26: 
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 456
    MOV X6, 161
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 453
    MOV X6, 164
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol27:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 453
    MOV X6, 164
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 450
    MOV X6, 167
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol28:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 450
    MOV X6, 167
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 447
    MOV X6, 170
    MOV X1, 30
    BL dibujarCirculo  
    
	Bl marco
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol29:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 447
    MOV X6, 170
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 444
    MOV X6, 173
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol30:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 444
    MOV X6, 173
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 441
    MOV X6, 176
    MOV X1, 30
    BL dibujarCirculo  
    
    BL marco

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol31:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY
    MOV X5, 441
    MOV X6, 176
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN
    MOV X5, 438
    MOV X6, 179
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol32:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 438
    MOV X6, 179
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 435
    MOV X6, 182
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol33: 
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 435
    MOV X6, 182
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 432
    MOV X6, 185
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol34:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 432
    MOV X6, 185
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 429
    MOV X6, 188
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol35:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 429
    MOV X6, 188
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 426
    MOV X6, 191
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol36:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 426
    MOV X6, 191
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 423
    MOV X6, 194
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol37:   
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 423
    MOV X6, 194
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 420
    MOV X6, 197
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol38:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 420
    MOV X6, 197
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 417
    MOV X6, 200
    MOV X1, 30
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol39:  
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 417
    MOV X6, 200
    MOV X1, 30
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 417
    MOV X6, 200
    MOV X1, 25
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol40:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 417
    MOV X6, 200
    MOV X1, 25
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 417
    MOV X6, 200
    MOV X1, 20
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_sol41:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =TSKY2
    MOV X5, 417
    MOV X6, 200
    MOV X1, 20
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =TSUN2
    MOV X5, 417
    MOV X6, 200
    MOV X1, 15
    BL dibujarCirculo  
    
	BL marco 
	
    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

//FIN DE LOS FRAMES DE VENTANA_1

.endif



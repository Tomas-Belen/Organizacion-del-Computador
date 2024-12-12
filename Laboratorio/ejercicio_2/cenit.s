.ifndef CENIT_S
.equ CENIT_S, 0x000000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"
.include "dedos_teclado.s"
.include "movreloj.s"

// FUNCION QUE PINTA EL CIELO, MUEVE LA LUNA,PINTA ESTRELLAS, AVANZA LAS AGUJAS DEL RELOJ Y CAMBIA POSICION DE LOS DEDOS
oscureciendo: 
	
	// PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    BL relojpos8
    
    BL estrella1
    
    BL dedos_0

    Bl delay

    BL estrella2
    
    BL dedos_1

    Bl delay

    BL estrella3
    
    BL dedos_2
   
    Bl delay

    BL estrella4
    
    BL dedos_0
   
    Bl delay

    BL relojpos8
    
    BL estrella5
    
    BL dedos_1
    
    Bl delay

    BL estrella6
    
    BL dedos_2
    
    Bl delay

    BL estrella7
    
    BL dedos_0

    BL delay

    BL estrella8
    
    BL dedos_1

    Bl delay

    BL estrella9
    
    BL dedos_2

    Bl delay

    BL estrella10

    BL dedos_0

    Bl delay

    BL estrella11

    BL dedos_1

    Bl delay

    BL estrella12

    BL dedos_2

    Bl delay

    BL estrella13

    BL dedos_0

    Bl delay

    BL estrella14

    BL dedos_1

    BL delay

    BL pos_luna0

    BL fix

    BL dedos_2
   	    
    BL delay
    
    BL relojpos1N
    
    BL pos_luna1

    BL dedos_0
   	    
    BL delay
    
    BL pos_luna2

    BL dedos_1
   	    
    BL delay
    
    BL pos_luna3

    BL dedos_2
   	    
    BL delay
    
    BL pos_luna4

    BL dedos_0
   	    
    BL delay
    
    BL pos_luna5

    BL dedos_1
    
    BL delay
    
   	BL relojpos1N
    
   	BL pos_luna6

    BL dedos_2
   	
   	BL delay
   	
   	BL pos_luna7

    BL dedos_0
   	
   	BL delay
   	
   	BL pos_luna8

    BL dedos_1
   	
   	BL delay
   	
   	BL pos_luna9
    
    BL dedos_2
   	
   	BL delay
   	
   	BL pos_luna10

    BL dedos_0
   	
   	BL delay
   	
   	BL pos_luna11

    BL dedos_1
   	
   	BL delay
    
   	BL relojpos2N
    
   	BL pos_luna12

    BL dedos_2
   	
   	BL delay
   	
   	BL pos_luna13 
    
    BL dedos_0

   	BL delay
   		
   	BL pos_luna14

    BL dedos_1
   	
   	BL delay
   	
   	BL pos_luna15
    
    BL dedos_2
   	
   	BL delay
   	
   	BL pos_luna16
    
    BL dedos_0
   	
   	BL delay
   	
   	BL pos_luna17
    
    BL dedos_1
   	
   	BL delay
   	
   	BL pos_luna18
    
    BL dedos_2
    
    BL relojpos2N
    
    BL delay
    
    BL pos_luna19
    
    BL dedos_0
    
    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48

RET

// FUNCION QUE ARREGLA PIXELES DE PARED PINTADOS
fix:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 500
    MOV X2, 0
    MOV X3, 640
    MOV X4, 30
    LDR X7, =ROOMN
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

// MARCO DE LA VENTANA
marco2:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
 
    MOV X1, 537
    MOV X2, 8
    MOV X3, 630
    MOV X4, 40
    LDR X7, =ROOMN
    BL dibujar_rectangulo

    MOV X1, 537  
    MOV X2, 40  
    MOV X3, 630
    MOV X4, 49 
    LDR X7, = BROWNN
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

// A CONTINUACIÓN TODAS LAS ESTRELLAS QUE SE PINTAN EN EL CIELO
estrella1:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 479
    MOV X6, 64
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella2:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 404
    MOV X6, 66
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella3:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 616
    MOV X6, 67
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella4:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 518
    MOV X6, 70
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella5:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 462
    MOV X6, 84
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella6:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 606
    MOV X6, 94
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella7:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 405
    MOV X6, 107
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella8:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 451
    MOV X6, 108
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella9:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 570
    MOV X6, 116
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella10:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 511
    MOV X6, 125
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella11:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 476
    MOV X6, 143
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella12:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 422
    MOV X6, 146
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella13:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 542
    MOV X6, 148
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

estrella14:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 585
    MOV X6, 152
    MOV X1, 3
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET
// FINALIZA SECCIÓN DE ESTRELLAS

// AQUÍ COMIENZA LA SECCIÓN "POS_LUNA'X'" DONDE SE EFECTÚA LA ANIMACIÓN CON LA PINTURA DE UNA LUNA UN POCO MÁS A LA IZQUIERDA, PINTANDO ANTES EL LUGAR DONDE ESTABA CON OTRO CÍRCULO DEL COLOR DEL CIELO

pos_luna000:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 599
    MOV X6, 21
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 596
    MOV X6, 24
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna00:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 596
    MOV X6, 24
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 593
    MOV X6, 27
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna0:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 593
    MOV X6, 27
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 590
    MOV X6, 30
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna1:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 590
    MOV X6, 30
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 587
    MOV X6, 33
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna2:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 587
    MOV X6, 33
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 584
    MOV X6, 36
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna3:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 584
    MOV X6, 36
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 581
    MOV X6, 39
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna4:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 581
    MOV X6, 39
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 578
    MOV X6, 42
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna5:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 578
    MOV X6, 42
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 574
    MOV X6, 45
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna6:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 574
    MOV X6, 45
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 571
    MOV X6, 48
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna7:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 571
    MOV X6, 48
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 568
    MOV X6, 51
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna8:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 568
    MOV X6, 51
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 565
    MOV X6, 54
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna9:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 565
    MOV X6, 54
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 562
    MOV X6, 57
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna10:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 562
    MOV X6, 57
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 559
    MOV X6, 60
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna11:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 559
    MOV X6, 60
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 556
    MOV X6, 63
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna12:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 556
    MOV X6, 63
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 553
    MOV X6, 66
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna13:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 553
    MOV X6, 66
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 550
    MOV X6, 69
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna14:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 550
    MOV X6, 69
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 547
    MOV X6, 72
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna15:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 547
    MOV X6, 72
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 544
    MOV X6, 75
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna16:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 544
    MOV X6, 75
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 541
    MOV X6, 78
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna17:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 541
    MOV X6, 78
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 539
    MOV X6, 81
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna18:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

	MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 539
    MOV X6, 81
    MOV X1, 22
    BL dibujarCirculo  
    
    MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 536
    MOV X6, 84
    MOV X1, 22
    BL dibujarCirculo  
    
    BL marco2

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET

pos_luna19:
    SUB SP, SP, 40
    STR X1, [SP]
    STR X5, [SP, 8]
    STR X6, [SP, 16]
    STR X10, [SP, 24]
    STR X30, [SP, 32]

    MOV X20, X0
    LDR X10, =NIGTH_SKY
    MOV X5, 536
    MOV X6, 84
    MOV X1, 22
    BL dibujarCirculo  

	MOV X20, X0
    LDR X10, =WHITE
    MOV X5, 533
    MOV X6, 87
    MOV X1, 22
    BL dibujarCirculo  

    LDR X30, [SP, 32]
    LDR X10, [SP, 24]
    LDR X6, [SP, 16]
    LDR X5, [SP, 8]
    LDR X1, [SP]
    ADD SP, SP, 40
RET
// FIN DE SECCION DE LOS FRAMES DE LUNA

.endif

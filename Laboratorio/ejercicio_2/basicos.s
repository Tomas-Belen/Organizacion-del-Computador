.ifndef BASICOS_S
.equ BASICOS_S, 0x000000

.include "framebuffer.s"

// EN ESTE ARCHIVO TENEMOS LAS FUNCIONES MODULARIZADAS QUE NOS PERMITEN DIBUJAR DISTINTAS FORMAS GEOMÉTRICAS EN LA PANTALLA:


// FUNCIÓN DIBUJAR_PIXEL: TOMA 3 REGISTROS COMO PARÁMETROS. X1 PARA EL EJE X, X2 PARA EL EJE Y; X7 PARA UN COLOR, DIBUJANDO ESTE ÚLTIMO EN LAS COORDENADAS (X,Y)
dibujar_pixel: 
    MOV X16, SCREEN_WIDTH							// x16 = SCREEN_WIDTH = 640
    MUL X16, X2, X16        						// x16 = y * 640 = X2 * SCREEN_WIDTH
    ADD X16, X1, X16								// x16 = x + y * 640
    LSL X16, X16, #2		   						// x16 = [4 * (x + (y * 640)]
    ADD X16, X0, X16  			                    // X16 = (DIRECCIÓN BASE DEL FRAMEBUFFER) + 4 * [x + (y * 640)]
    STR W7, [X16]									// COLOREA X16 =(x,y) DEL COLOR ALMACENADO EN X7
RET	

// FUN DIBUJAR_RECTANGULO: TOMA 4 REGISTROS COMO PARÁMETROS (X1=X1, Y1=X2, X2=X3, Y2=X4, COLOR=X7) DIBUJANDO UN RECTÁNGULO DESDE LA POSICIÓN SUPERIOR DERECHA (X1, Y1) HASTA LA POSICIÓN INFERIOR IZQUIERDA (X2, Y2)
dibujar_rectangulo: 
	// PUSH(X1,X2,X3,X4, X9, X30)
	SUB SP, SP, #48
	STR X1, [SP]
	STR X2, [SP, #8]
	STR X3, [SP, #16]
	STR X4, [SP, #24]
	STR X9, [SP, #32]
	STR X30, [SP, #40]

    CMP X1, X3                     // IF
    B.LE no_swap_x           // (x1 <= x2) THEN NO SWAP X
        // Si no (x1 > x2)
        MOV X16, X1                // AUX = X1
        MOV X1, X3                 // X1 = X2
        MOV X3, X16                // X2 = AUX
    no_swap_x:

    CMP X2, X4                     // IF
    B.LE no_swap_y           // (Y1 <= Y2) THEN NO SWAP Y
        MOV X16, X2                // AUX = X2
        MOV X2, X4                 // X2 = X3
        MOV X4, X16                // X3 = AUX
    no_swap_y:

    MOV X9, X1          // (X1 = X9)

    dib_rec_pixel:
    CMP X2, X4
    B.GT no_paint
       CMP X1, X3
       B.GT subir_fila
           BL dibujar_pixel
           ADD X1, X1, #1
       b dib_rec_pixel

    subir_fila:
        MOV X1, X9                  // REINICIO X1
        ADD X2, X2, #1
        b dib_rec_pixel

    no_paint:

	// POP(X30,X9, X4,X3,X2,X1)
	LDR X30, [SP, #40]
	LDR X9, [SP, #32]
	LDR X4, [SP, #24]
	LDR X3, [SP, #16]
	LDR X2, [SP, #8]
	LDR X1, [SP]
	ADD SP, SP, #48
RET

// FUNCIÓN AUXILIAR QUE UTILIZAREMOS EN LAS FUNCIONES DIBUJAR_TRIANGULO Y DIBUJAR_CIRCULO
funcionformula:

    SUB sp, sp, #8 // RESERVAMOS ESPACIO EN EL STACK PARA GUARDAR LOS VALORES
    stur lr, [sp]

    MOV x4, 640 // GUARDAMOS 640 EN UN REGISTRO
    MUL x4, x6, x4 // EN X4 GUARDAMOS Y*640, X6=Y
    ADD x4, x5, x4 // EN X4 GUARDAMOS Y*640+X, X5=X
    MOV x7, 4
    MUL x4, x4, x7 // QUEDA X4 * 4
    ADD x4, x20, x4 // LE SUMAMOS LA DIRECCION BASE

    ldur lr, [sp] // REACOMODAMOS EL STACKPOINTER
    ADD sp, sp, #8
    BR lr
RET
    
dibujarCirculo:
    SUB sp, sp, #8 
    stur lr, [sp]

    ADD x14, x6, x1       // X14 = Y + RADIO
    ADD x17, x5, x1       // X17 = X + RADIO

    MOV x15, x5
    MOV x16, x6
    SUB x5, x5, x1      // INICIO X

resetY:
    CMP x5, x17
    b.gt end
    SUB x6, x16, x1      // REINICIA Y PARA LA NUEVA FILA
cirloop:
    CMP x6, x14
    b.eq next_fila

    SUB x9, x5, x15
    MUL x9, x9, x9               // X9 = (XSIZE - XCENTRO)*2
    
    SUB x11, x6, x16
    MUL x11, x11, x11            // X11 = (YSIZE - YCENTRO)*2

    ADD x13, x9, x11             // X13 = (XSIZE - XCENTRO)*2 + (YSIZE - YCENTRO)*2

    MOV x12, x1
    MUL x12, x12, x12            // X12 = RADIO*2

    CMP x12, x13
    b.ge color                   // IF X13 <= X12 
    b skip
color:       
    BL funcionformula            // THEN PINTAR PIXEL
    stur w10, [x4]   
skip:
    ADD x6, x6, #1               // AVANZA PIXEL
    b cirloop
next_fila:
    ADD x5, x5, #1
    b resetY
end:
    ldur lr, [sp] // RECUPERO EL PUNTERO DE RETORNO DEL STACK
    ADD sp, sp, #8 
    BR lr
RET

// PINTA UNA LINEA HORIZONTAL
pintarLineah:
    SUB sp, sp, #24
    stur lr, [sp, #0]
    stur x12, [sp, #8]
    stur x13, [sp, #16]
pinta:
    MOV x5, x12         // X12 ES LA COORDENADA X DEL ORIGEN IZQUIERDO DE LA FILA
    BL funcionformula   // X13 ES LA COORDENADA X DEL FINAL DERECHO DE LA FILA HASTA DONDE QUIERO PINTAR
    stur w10, [x4]      
    ADD x4, x4, 4       // EL X6 (COORDENADA Y) ES CONSTANTE PUES PINTAMOS UNA FILA
    ADD x12, x12, 1
    CMP x12, x13
    b.ne pinta
    
    ldur x13, [sp, #16]
    ldur x12, [sp, #8]
    ldur lr, [sp, #0]
    ADD sp, sp, #24
    BR lr
RET

// DIBUJA UN TRIANGULO ISÓCELES
dibujarTriangulo:       // X12 ES LA COORDENADA X DE DONDE EMPIEZA LA BASE DEL TRIÁNGULO
    SUB sp, sp, #8      // X13 ES LA COORDENADA X DE DONDE TERMINA LA BASE DEL TRIÁNGULO
    stur lr, [sp]       // X6 ES LA COORDENADA Y DE DONDE EMPIEZA EL TRIÁNGULO
                                      
pintarcasilla:
    BL pintarLineah       // PINTA LA FILA DEL TRIÁNGULO EN LA QUE ESTAMOS
    ADD x12, x12, 1       // MUEVE LA COORDENADA X ORIGEN PARA LA OTRA FILA
    SUB x13, x13, 1      // MUEVE LA COORDENADA X FINAL PARA LA OTRA FILA
    SUB x6, x6, 1        // MUEVE LA COORDENADA Y PARA ARRIBA INDICANDO LA ALTURA DE LA OTRA FILA
    SUB x14, x13, x12       // VEMOS SI EL TRIÁNGULO YA TERMINÓ
    CBNZ x14, pintarcasilla  // SI NO LLEGAMOS, SEGUIMOS PINTANDO
  
    ldur lr, [sp]
    ADD sp, sp, #8
    BR lr
RET    

// FUNCIÓN QUE NOS PERMITE HACER EL EFECTO DE ANIMACIÓN GENERANDO UN RETRASO ENTRE CADA PASO DE ALGUNO DE LOS MOVIMIENTOS QUE SE VEN EN PANTALLA
// COUNTER NOS DEFINE UN VALOR ELEVADO PARA UNA DWORD, QUE SE GUARDA EN EL REGISTRO X10 Y LUEGO SE LE VA RESTANDO HASTA LLEGAR A 0

 .data
COUNTER: .dword 40000000 // ESTE VALOR PUEDE AJUSTARSE POR EJEMPLO DE 40000000 A 20000000, PUES A ALGUNOS INTEGRANTES LES ANDABA A VELOCIDADES DIFERENTES DEPENDIENDO DE SU COMPUTADORA

// FUNCIÓN DE DELAY
delay:
    LDR X10, =COUNTER      // CARGAMOS LA DIRECCIÓN DE COUNTER EN X10
    LDR X10, [X10]         //CARGAMOS EL VALOR DE COUNTER EN X10

delay_loop:
    SUBS X10, X10, #1      // DECREMENTAMOS X10 Y ACTUALIZAMOS LOS FLAGS
    BGT delay_loop         // SI X10 > 0, SALTAMOS A DELAY_LOOP

RET                    // RETORNAMOS DE LA FUNCIÓN DELAY
    
.endif

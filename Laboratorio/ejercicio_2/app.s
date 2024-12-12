
.include "fondo_0.s"
.include "fondo_1.s"
.include "basicos.s"


    
    .text
    .global main


main:
    BL fondo_gral0         // COMIENZA CON UNA PLANTILLA SIMILAR A LA DEL EJERCICIO 1, LA CUAL LE EFECTÚA LOS PRIMEROS EFECTOS DE ANIMACIÓN
	
	BL delay

    BL fondo_gral1		// NUEVA PLANTILLA CON MUCHOS CAMBIOS ACUMULADOS SOBRE LA CUAL SE EFECTÚA EL SEGUNDO BLOQUE DE ANIMACIÓN
	
 
InfLoop:
    b InfLoop



 


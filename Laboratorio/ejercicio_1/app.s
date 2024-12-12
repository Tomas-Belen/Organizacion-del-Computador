
.include "fondo_0.s"



.globl main


main:
   	// LLAMAMOS A LA FUNCION PRINCIPAL QUE A SU VEZ LLAMA A LAS FUNCIONES QUE PINTAN LOS DISTINTOS ELEMENTOS DE LA ESCENA
    
    BL fondo_gral 
    
InfLoop:
    b InfLoop


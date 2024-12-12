.ifndef ACOSTADO_S
.equ ACOSTADO_S, 0x000000

.include "basicos.s"
.include "colores.s"
.include "framebuffer.s"

// FRAME DEL PROGRAMADOR DURMIENDO
durmiendo:

    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
   
    BL PRO // LLAMAMOS A LA FUNCION QUE DIBUJA EL PROGRAMADOR
    BL iluminacion5 // LLAMAMOS A LA FUNCION QUE DIBUJA LAS SOMBRAS/PARTES ILUMINADAS DEL PROGRAMADOR
    
    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

// ILUMINACION/SOMBRAS DEL PROGRAMADOR
iluminacion5:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // ILUMINACION BRAZO 
    MOV X1, 331
    MOV X2, 375
    MOV X3, 339
    MOV X4, 380
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 336
    MOV X2, 375
    MOV X3, 340
    MOV X4, 387
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 337
    MOV X2, 382
    MOV X3, 353
    MOV X4, 387
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 348
    MOV X2, 382
    MOV X3, 353
    MOV X4, 393
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    // ILUMINACION REMERA
    MOV X1, 314
    MOV X2, 368
    MOV X3, 330
    MOV X4, 374
    LDR X7, =SHIRTNI
    BL dibujar_rectangulo

    MOV X1, 314
    MOV X2, 355
    MOV X3, 320
    MOV X4, 368
    LDR X7, =SHIRTNI
    BL dibujar_rectangulo

    MOV X1, 275
    MOV X2, 355
    MOV X3, 320
    MOV X4, 361
    LDR X7, =SHIRTNI
    BL dibujar_rectangulo

    MOV X1, 275
    MOV X2, 345
    MOV X3, 280
    MOV X4, 355
    LDR X7, =SHIRTNI
    BL dibujar_rectangulo


    // ILUMINACION CUELLO
    MOV X1, 268
    MOV X2, 340
    MOV X3, 273
    MOV X4, 345
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 274
    MOV X2, 335
    MOV X3, 279
    MOV X4, 340
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 280
    MOV X2, 325
    MOV X3, 285
    MOV X4, 335
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    MOV X1, 285
    MOV X2, 314
    MOV X3, 288
    MOV X4, 324
    LDR X7, =SKINNI
    BL dibujar_rectangulo

    // ILUMINACION OREJA
    MOV X1, 285
    MOV X2, 310
    MOV X3, 304
    MOV X4, 313
    LDR X7, =SKINNI
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

// PROGRAMADOR DURMIENDO
PRO:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // REMERA
    MOV X1, 52
    MOV X2, 452
    MOV X3, 208
    MOV X4, 477
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 208
    MOV X2, 450
    MOV X3, 216
    MOV X4, 465
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 213
    MOV X2, 445
    MOV X3, 226
    MOV X4, 455
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 220
    MOV X2, 345
    MOV X3, 233
    MOV X4, 445
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 233
    MOV X2, 345
    MOV X3, 260
    MOV X4, 438
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 240
    MOV X2, 345
    MOV X3, 280
    MOV X4, 428
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 280
    MOV X2, 355
    MOV X3, 320
    MOV X4, 428
    LDR X7, =SHIRTN
    BL dibujar_rectangulo

    MOV X1, 320
    MOV X2, 368
    MOV X3, 330
    MOV X4, 428
    LDR X7, =SHIRTN
    BL dibujar_rectangulo
   
    // ANTEBRAZO
    MOV X1, 339
    MOV X2, 387
    MOV X3, 381
    MOV X4, 419
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 347
    MOV X2, 375
    MOV X3, 372
    MOV X4, 419
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 347
    MOV X2, 340
    MOV X3, 365
    MOV X4, 419
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 347
    MOV X2, 340
    MOV X3, 365
    MOV X4, 419
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 339
    MOV X2, 324
    MOV X3, 358
    MOV X4, 346
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 327
    MOV X2, 309
    MOV X3, 346
    MOV X4, 335
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 313
    MOV X2, 299
    MOV X3, 338
    MOV X4, 319
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 310
    MOV X2, 296
    MOV X3, 338
    MOV X4, 316
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    MOV X1, 304
    MOV X2, 296
    MOV X3, 338
    MOV X4, 308
    LDR X7, =SKINNS
    BL dibujar_rectangulo

    // BRAZO
    MOV X1, 331
    MOV X2, 375
    MOV X3, 339
    MOV X4, 430
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 339
    MOV X2, 382
    MOV X3, 353
    MOV X4, 430
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 351
    MOV X2, 394
    MOV X3, 374
    MOV X4, 430
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 374
    MOV X2, 406
    MOV X3, 381
    MOV X4, 424
    LDR X7, =SKINN
    BL dibujar_rectangulo

    // CABEZA
    MOV X1, 180
    MOV X2, 285
    MOV X3, 304
    MOV X4, 313
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 200
    MOV X2, 241
    MOV X3, 288
    MOV X4, 324
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 204
    MOV X2, 325
    MOV X3, 285
    MOV X4, 335
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 200
    MOV X2, 330
    MOV X3, 279
    MOV X4, 340
    LDR X7, =SKINN
    BL dibujar_rectangulo

    MOV X1, 206
    MOV X2, 340
    MOV X3, 273
    MOV X4, 345
    LDR X7, =SKINN
    BL dibujar_rectangulo

    // PELO
    MOV X1, 204
    MOV X2, 219
    MOV X3, 222
    MOV X4, 227
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 202
    MOV X2, 227
    MOV X3, 264
    MOV X4, 235
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 200
    MOV X2, 235
    MOV X3, 280
    MOV X4, 240
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 190
    MOV X2, 240
    MOV X3, 292
    MOV X4, 290
    LDR X7, =HAIRN
    BL dibujar_rectangulo
    
    MOV X1, 199
    MOV X2, 290
    MOV X3, 283
    MOV X4, 307
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 199
    MOV X2, 307
    MOV X3, 270
    MOV X4, 313
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 199
    MOV X2, 313
    MOV X3, 265
    MOV X4, 319
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, 233
    MOV X2, 319
    MOV X3, 252
    MOV X4, 325
    LDR X7, =HAIRN
    BL dibujar_rectangulo

    MOV X1, SCREEN_START
    MOV X2, 160
    MOV X3, 105
    MOV X4, 389
    LDR X7, =ROOMN
    BL dibujar_rectangulo

    MOV X1, 177
    MOV X2, 130
    MOV X3, 178
    MOV X4, 160
    LDR X7, =ROOMN
    BL dibujar_rectangulo
    
    MOV X1, 105
    MOV X2, 160
    MOV X3, 193
    MOV X4, 182
    LDR X7, =ROOMN
    BL dibujar_rectangulo

    MOV X1, SCREEN_START
    MOV X2, 390
    MOV X3, 24
    MOV X4, 435
    LDR X7, =TABLEN
    BL dibujar_rectangulo

    // PUSH
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

// LETRAS Z QUE REPRESENTAN SUEÑO
zetas:

    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

// A CONTINUACION TODAS LAS LLAMADAS A LAS ZETAS

    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
    
    BL delay
    
    BL delay
    
    BL zeta 
    
    BL delay
    
    BL delay
    
    BL ZETA
   
    // TAPAR LA 'Z' FINAL
    MOV X1, 240
    MOV X2, 150
    MOV X3, 260
    MOV X4, 170
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

// Z MAYOR
ZETA:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 260
    MOV X2, 120
    MOV X3, 270
    MOV X4, 130
    LDR X7, =ROOMN
    BL dibujar_rectangulo
    
    MOV X1, 241
    MOV X2, 150
    MOV X3, 260
    MOV X4, 150
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 241
    MOV X2, 170
    MOV X3, 260
    MOV X4, 170
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 259
    MOV X2, 151
    LDR X7, = WHITE
    BL 	dibujar_pixel
    
    MOV X1, 258
    MOV X2, 152
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 257
    MOV X2, 153
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 256
    MOV X2, 154
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 255
    MOV X2, 155
    LDR X7, = WHITE
    BL 	dibujar_pixel
    
    MOV X1, 254
    MOV X2, 156
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 253
    MOV X2, 157
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 252
    MOV X2, 158
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 251
    MOV X2, 159
    LDR X7, = WHITE
    BL 	dibujar_pixel
    
    MOV X1, 250
    MOV X2, 160
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 249
    MOV X2, 161
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 248
    MOV X2, 162
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 247
    MOV X2, 163
    LDR X7, = WHITE
    BL 	dibujar_pixel
    
    MOV X1, 246
    MOV X2, 164
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 245
    MOV X2, 165
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 244
    MOV X2, 166
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 243
    MOV X2, 167
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 242
    MOV X2, 168
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 241
    MOV X2, 169
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 240
    MOV X2, 170
    LDR X7, = WHITE
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

// Z MENOR
zeta:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 240
    MOV X2, 150
    MOV X3, 260
    MOV X4, 170
    LDR X7, =ROOMN
    BL dibujar_rectangulo

    MOV X1, 260
    MOV X2, 120
    MOV X3, 270
    MOV X4, 120
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 260
    MOV X2, 130
    MOV X3, 270
    MOV X4, 130
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 269
    MOV X2, 121
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 268
    MOV X2, 122
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 267
    MOV X2, 123
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 266
    MOV X2, 124
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 265
    MOV X2, 125
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 264
    MOV X2, 126
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 263
    MOV X2, 127
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 262
    MOV X2, 128
    LDR X7, = WHITE
    BL 	dibujar_pixel

    MOV X1, 261
    MOV X2, 129
    LDR X7, = WHITE
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

.endif

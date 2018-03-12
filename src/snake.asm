

[bits 16]                    ; This pragma tells the assembler that we
                                       ; are in 16 bit mode (which is the state
                                       ; of x86 when it boots from a floppy).
[org 0x7C00]                 ; Program to tell the assembler where the
                                       ; code will be loaded.

;mov dl, 1                    ; Starting direction for the worm.
push 0xa000                  ; Load address of VRAM into es.
pop es	


restart:
	mov     ax, 0x0013
	int     0x10


	mov     di, 320*199
    mov     cx, 2176
    rep

drawFrame:
    stosb                        ; draw right border
    stosb                        ; draw left border
    add     di, 318
    jnc     drawFrame          ; notice the jump in the middle of the
                                      ; rep stosb instruction.


loop:
    in      al, 0x60 ;input from por 60
    cmp     al, 0x48 ;up
    cmp 	al, 0x4b ;left
	cmp 	al, 0x4d ;right
    cmp     al, 0x50 ;down





times 510-($-$$) db 0
dw 0AA55h

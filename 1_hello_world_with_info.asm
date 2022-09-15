;please read readme file

section .data
 ;initialized data goes into this segment

	a db 'a'
	b db '10'
	c db 'sank' ; db as define byte takes one byte
        a1 dw 'b'
	b1 dw '20'

  ;db (1byte)
  ;dw word (2)
  ;dd double (4)
  ;dq quad (8)
  ;dt ten  (10)

section .rodata

 ;this section is for read only data
 ;string can be puted here or msgs
 ;this cannot be modified in program

              msg db 'Hello World',10,0   ; here 10 is for new line and 0 is for end of string

section  .bss

; this section is meant for uninitialized data
; variables / identifiers
; resb (reserve byte) similary resw ,resd,resq,rest

          u1 resb 10  ; 10 byte  s are reserved
	  u2 resw 10  ; 20 bytes

section .text
  
    ;THIS SECTION IS FOR EXECUTABLE CODE
	
	global main      ; entry point for executable code
	extern printf    ;library function 
main:

    	push msg 	; pushing msg onto stack
	call printf 	; calling printffunction
        add esp,4       

;	THIS IS VERY IMP   AS ASSEMBLY MOSTLY PLAYS WITH ADDRESSSES SO EVERYTIME WE PUSH
; SYMBOL ONTO STACK WE SHOULD ADD 4 BYTES THAT IS ADDRESS TO ESP REG AKA STACK POINTER
; WE COULD HAVE SOLVE THIS PROBLEM BY POPING MSG SYMBOL LIKE 
;    push msg 
;	call printf
;	pop msg    in this way esp could have been cleared but we cannot do it for more numbers of
; variable repeatadly so for ease of access we will use this method

		
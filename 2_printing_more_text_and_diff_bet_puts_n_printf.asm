section .data
   
     myname db "sank",0
     mydep  db "PUCSD",10,0
     myroll db  "55",10,0

section .text
   global main
   extern printf,puts

main:

    push myname 
    call printf
    add esp,4
    
    push mydep 
    call printf
    add esp,4
    
    push myroll 
    call printf
    add esp,4

    push myname 
    call puts     ; puts appends new line char to end of the string
    add esp,4
    
    push mydep 
    call puts
    add esp,4
    
    push myroll 
    call puts    
    add esp,4

;o/p

;sankPUCSD    here as printf used and not added 10 as a new line it will start executing next to eachother
;55
;sank      here also 10 is not added but in this case puts is used so it will drag the head to the new line
;PUCSD
;            here 10 is used as new line char caused entire emty new line
;55


   
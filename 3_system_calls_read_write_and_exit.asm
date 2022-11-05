;;system calls directory- less /usr/include/asm/unistd_32.h
;;man 2 write for manual of write system call
;;system calls are from 

section .data
       msg db "hello"
section .bss 
       take_input resb 10    ;;reserves 10 bytes for straem to be taken
section .text
   	global main
main:
;>>>>>>>>>>>>for WRITE SYS CALL
        mov eax,4   ;; system call number for system call 
	mov ebx,1   ;; 1st parameter of write 1 as a standard output
        mov ecx,msg ;; 2nd parameter of system call as msg address
        mov edx,5   ;; 3rd parameter is to take length of stream to be printed
        
	int 0x80    ;; this is a interupt value to execute interupt 

;>>>>>>>>>>>>>READ SYS CALL
        mov eax,3   ; 3 is a number foe read system call 
        mov ebx,1   ; 1 is for standard input
        mov ecx,take_input
        mov edx,10   ; length

        int 0x80

;writing recved stream
        mov eax,4
        mov ebx,1
        mov ecx,take_input
        mov edx,10

        int 0x80

     
;exit system call 

       mov eax,1
       int 0x80


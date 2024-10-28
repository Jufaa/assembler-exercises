segment .data
n dd 4
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ebx, ebx
    push dword [n]
    call calcSum
    add esp, 4
    ret
    calcSum: 
        enter 8,0
        
        mov eax, [ebp+8]; n
       
        mov dword [ebp-4], 0 ; calc
        mov dword [ebp-8], 1 ; i
        mov edx,[ebp-8]
        mov ecx, [ebp+8] ; las cantidad de ite
        fori:
            
            call elevarCubo 
            add [ebp-4], ebx ;usa el valor del po
            
        leave
        ret
        
    elevarCubo: 
   
        mov ebx, edx ; el x
        imul ebx, ebx ; x * x        
        imul ebx, ebx ; x * x
        ret
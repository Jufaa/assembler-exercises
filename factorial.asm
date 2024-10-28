segment .data
n dd 4

section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    push dword [n]
    
    call factorial
    add esp, 4
    ret
    factorial:
        enter 8,0
        mov dword [ebp-8], 1 
        
        mov dword [ebp-4], 1 
        mov ecx,[ebp+8] 
        fori: 
            cmp [ebp-4], ecx ; Compara el contador con el valor de n
            jg endfor; Si el contador es mayor que n, termina el 
            call mult
            inc dword [ebp-4] ; incrementa el ciclo
            jmp fori ; repite
            
    leave        
    ret
    endfor:
        mov eax, [ebp-8] ; Coloca el resultado final en eax (para retorno)
        leave
        ret
    mult:
        mov eax, [ebp-8]     ; Mueve el acumulado del factorial a eax
        imul eax, [ebp-4]    ; Multiplica eax por el contador
     mov [ebp-8], eax     ; Guarda el resultado de vuelta en [ebp-8]
     ret
        
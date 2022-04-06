global main 
extern printf 
section .text
main: 
push rbp
mov rbp, rsp  
mov eax, 1 
cpuid;
test ecx, 30 
jz Print2 
jnz Print 
ret	
Print: 
mov rdi, msga 
xor rax, rax 
call printf 
ret
Print2: 
mov rdi, msgb 
xor rax, rax 
call printf 
ret

section .data
msga: db "RDRAND is supported.", 0x0a, 0
msgb: db "RDRAND is NOT supported.", 0x0a, 0



global _main
extern _sprintf
extern _dprintf
extern _printf
extern _system
extern _puts

section .text

_build:
push rdi
mov rdx,rdi
lea rdi,[rel buf]
lea rsi,[rel filename]
call _sprintf
mov rax,0x02000000 | 5
lea rdi,[rel buf]
mov rsi,0x0002 | 0x0200 | 0x0400
mov rdx,654q
syscall
push rbp
push rax
mov rdi,rax
lea rsi,[rel data]
mov rdx,10
mov rcx,10
mov r8,10
mov r9,10
mov r15,2
pus: push 10
dec r15
cmp r15,0
jne pus
call _dprintf
mov r15,2
po: pop rax
dec r15
cmp r15,0
jne po
pop rdi ; put fd for close()
pop rbp
mov rax,0x02000000 | 6
syscall
lea rdi,[rel buf]
lea rsi,[rel compile]
pop rdx
mov rcx,rdx
mov r8,rdx
mov r9,rdx
push rdx
call _sprintf
lea rdi,[rel buf]
call _system
pop rdi
ret

_main:
cmp DWORD [rel i],0
je end

mov rdi,[rel i]
push rdi
call _build
dec rdi
call _build
pop rdi
; code run below


end:
mov rax,0x02000001
mov rdi,0
syscall
ret

section .bss
buf: resb 1024
section .data
compile: db 'nasm -fmacho64 Sully_%d.s && gcc Sully_%d.o -o Sully_%d && rm -f Sully_%d.o',0
filename: db 'Sully_%d.s',0
run: db './Sully_%d',0
data: db '; first comment%c; second comment%cglobal _main%csection .text%c_main:%cret%c',0
i: dd 5

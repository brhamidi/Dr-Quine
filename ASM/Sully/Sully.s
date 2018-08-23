; FLAGS 0x0002 | 0x0200 | 0x0400

global _main
extern _sprintf
extern _dprintf
extern _printf
extern _system
extern _puts

section .text

_build:
push rdi
mov rsi,rdi
lea rdi,[rel format]
call _printf
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

section .data
compile: db 'nasm -fmacho64 Sully_%d.s && gcc Sully_%d.o -o Sully_%d && rm -f Sully_%d.o',0
run: db './Sully_%d',0
filename: db 'Sully_%d.s',0
format: db "i -> %d",10,0
i: dd 5

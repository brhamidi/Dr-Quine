%define F 0x0002 | 0x0200 | 0x0400
global _main
extern _sprintf
extern _dprintf
extern _system
section .text

_main:
cmp DWORD [rel i],0
je end
lea rdi,[rel buffilename]
lea rsi,[rel filename]
lea rdx,[rel i]
mov rdx, [rdx]
push rdx
call _sprintf
pop rdx
lea rdi,[rel bufcompile]
lea rsi,[rel compile]
mov rcx, rdx
mov r8, rdx
mov r9, rdx
push rdx
call _sprintf
pop r10
mov rax, 0x02000000 | 5
lea rdi, [rel buffilename]
mov rsi,F
mov rdx,654q
syscall ; i in r10
end:
ret

section .bss
buffilename: resb 256
bufcompile: resb 256
section .data
format: db '%d',10,0
i: dd 5
filename: db 'Sully_%d.s',0
compile: db 'nasm -fmacho64 Sully_%d.s && gcc Sully_%d.o -o Sully_%d && ./Sully_%d',0
data: db 'global _main%c_main:%cpush rbp%cpush 10%cpop rbp%cpop rbp%cret%c%c',0
test: db 'testing',0

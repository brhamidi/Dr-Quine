global _main
extern _puts
extern _sprintf
section .text

putscompile:
push rbp
lea rdi,[rel bufcompile]
call _puts
pop rbp
ret

putsbuffer:
push rbp
lea rdi,[rel buffilename]
call _puts
pop rbp
ret

_main:
lea rdi,[rel buffilename]
lea rsi,[rel filename]
lea rdx,[rel i]
mov rdx,[rdx]
push rdx
call _sprintf
pop rdx
lea rdi,[rel bufcompile]
lea rsi,[rel compile]
mov rcx, rdx
mov r8, rdx
push rdx
call _sprintf
call putsbuffer
call putscompile
pop rbp
end:
ret

section .bss
buffilename: resb 256
bufcompile: resb 256
section .data
format: db '%d',10,0
i: dd 5
filename: db 'Sully_%d.c',0
compile: db 'nasm -fmacho64 Sully_%d.c && gcc Sully_%d.o && ./Sully_%d',0

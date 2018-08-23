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
pop r13
push r13
push rbp
push rax
mov rdi,rax
lea rsi,[rel data]
mov rdx,10
mov rcx,10
mov r8,10
mov r9,10
push 10
push r13
push 10
push 39
lea r13,[rel data]
push r13
push 39
push 10
push 39
push 39
push 10
push 39
push 39
push 10
push 39
push 39
mov r15,91
pus: push 10
dec r15
cmp r15,0
jne pus
call _dprintf
mov r15,106
po: pop rax
dec r15
cmp r15,0
jne po
pop rdi
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
mov rdx,rdi
lea rdi,[rel buf]
lea rsi,[rel run]
call _sprintf
lea rdi,[rel buf]
call _system
pop rdi
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
data: db 'global _main%cextern _sprintf%cextern _dprintf%cextern _printf%cextern _system%cextern _puts%csection .text%c_build:%cpush rdi%cmov rdx,rdi%clea rdi,[rel buf]%clea rsi,[rel filename]%ccall _sprintf%cmov rax,0x02000000 | 5%clea rdi,[rel buf]%cmov rsi,0x0002 | 0x0200 | 0x0400%cmov rdx,654q%csyscall%cpop r13%cpush r13%cpush rbp%cpush rax%cmov rdi,rax%clea rsi,[rel data]%cmov rdx,10%cmov rcx,10%cmov r8,10%cmov r9,10%cpush 10%cpush r13%cpush 10%cpush 39%clea r13,[rel data]%cpush r13%cpush 39%cpush 10%cpush 39%cpush 39%cpush 10%cpush 39%cpush 39%cpush 10%cpush 39%cpush 39%cmov r15,91%cpus: push 10%cdec r15%ccmp r15,0%cjne pus%ccall _dprintf%cmov r15,106%cpo: pop rax%cdec r15%ccmp r15,0%cjne po%cpop rdi%cpop rbp%cmov rax,0x02000000 | 6%csyscall%clea rdi,[rel buf]%clea rsi,[rel compile]%cpop rdx%cmov rcx,rdx%cmov r8,rdx%cmov r9,rdx%cpush rdx%ccall _sprintf%clea rdi,[rel buf]%ccall _system%cpop rdi%cret%c%c_main:%ccmp DWORD [rel i],0%cje end%cmov rdi,[rel i]%cpush rdi%ccall _build%cdec rdi%ccall _build%cmov rdx,rdi%clea rdi,[rel buf]%clea rsi,[rel run]%ccall _sprintf%clea rdi,[rel buf]%ccall _system%cpop rdi%cend:%cmov rax,0x02000001%cmov rdi,0%csyscall%cret%csection .bss%cbuf: resb 1024%csection .data%ccompile: db %cnasm -fmacho64 Sully_%%d.s && gcc Sully_%%d.o -o Sully_%%d && rm -f Sully_%%d.o%c,0%cfilename: db %cSully_%%d.s%c,0%crun: db %c./Sully_%%d%c,0%cdata: db %c%s%c,0%ci: dd %d%c',0
i: dd 5

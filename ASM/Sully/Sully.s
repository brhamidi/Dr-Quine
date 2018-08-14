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
push r10
dec r10
mov rdi,rax
lea rsi,[rel data]
mov rdx,10
mov rcx,10
mov r8,10
mov r9,10
push 10
push r10
push 10
push 39
push rsi
push 39
push 10
push 39
push 39
push 10
push 39
push 39
mov r15,72
pus: push 10
dec r15
cmp r15,0
jne pus
call _dprintf
mov r15,85
po: pop rax
dec r15
cmp r15,0
jne po
pop r10
lea rdi,[rel bufcompile]
call _system
pop rdi
mov rax,0x02000006
syscall
end:
mov rax,0x02000001
mov rdi,0
syscall
ret
section .bss
buffilename: resb 256
bufcompile: resb 256
section .data
filename: db 'Sully_%d.s',0
compile: db 'nasm -fmacho64 Sully_%d.s && gcc Sully_%d.o -o Sully_%d && ./Sully_%d && rm -f Sully_*.o',0
data: db '%%define F 0x0002 | 0x0200 | 0x0400%cglobal _main%cextern _sprintf%cextern _dprintf%cextern _system%csection .text%c%c_main:%ccmp DWORD [rel i],0%cje end%clea rdi,[rel buffilename]%clea rsi,[rel filename]%clea rdx,[rel i]%cmov rdx, [rdx]%cpush rdx%ccall _sprintf%cpop rdx%clea rdi,[rel bufcompile]%clea rsi,[rel compile]%cmov rcx, rdx%cmov r8, rdx%cmov r9, rdx%cpush rdx%ccall _sprintf%cpop r10%cmov rax, 0x02000000 | 5%clea rdi, [rel buffilename]%cmov rsi,F%cmov rdx,654q%csyscall ; i in r10%cpush r10%cdec r10%cmov rdi,rax%clea rsi,[rel data]%cmov rdx,10%cmov rcx,10%cmov r8,10%cmov r9,10%cpush 10%cpush r10%cpush 10%cpush 39%cpush rsi%cpush 39%cpush 10%cpush 39%cpush 39%cpush 10%cpush 39%cpush 39%cmov r15,72%cpus: push 10%cdec r15%ccmp r15,0%cjne pus%ccall _dprintf%cmov r15,85%cpo: pop rax%cdec r15%ccmp r15,0%cjne po%cpop r10%clea rdi,[rel bufcompile]%ccall _system%cpop rdi%cmov rax,0x02000006%csyscall%cend:%cmov rax,0x02000001%cmov rdi,0%csyscall%cret%csection .bss%cbuffilename: resb 256%cbufcompile: resb 256%csection .data%cfilename: db %cSully_%%d.s%c,0%ccompile: db %cnasm -fmacho64 Sully_%%d.s && gcc Sully_%%d.o -o Sully_%%d && ./Sully_%%d && rm -f Sully_*.o%c,0%cdata: db %c%s%c,0%ci: dd %d%c',0
i: dd 5

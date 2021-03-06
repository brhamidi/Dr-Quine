%define SYSCALL(N) 0x02000000 | N
%define OPEN 5
%define F 0x0002 | 0x0200 | 0x0400
%macro ft 1
;
; Erlang
;
global _main
extern _dprintf
section .text
_main:
mov rax,SYSCALL(OPEN)
lea rdi,[rel filename]
mov rsi,F
mov rdx,654q
syscall
mov rdi,rax
push rdi
lea rsi,[rel format]
mov rdx,10
mov rcx,10
mov r8,10
mov r9,10
push 10
push 39
push 39
push 10
push 10
push 34
lea r15,[rel format]
push r15
push 34
mov r15,50
pus: push 10
dec r15
cmp r15,0
jne pus
xor rax,rax
call _dprintf
mov r15,58
po: pop rax
dec r15
cmp r15,0
jne po
pop rdi
mov rax,SYSCALL(6)
syscall
mov rax,SYSCALL(1)
mov rdi,0
syscall
ret
section .data
filename: db %1,0

format: db "%%define SYSCALL(N) 0x02000000 | N%c%%define OPEN 5%c%%define F 0x0002 | 0x0200 | 0x0400%c%%macro ft 1%c;%c; Erlang%c;%cglobal _main%cextern _dprintf%csection .text%c_main:%cmov rax,SYSCALL(OPEN)%clea rdi,[rel filename]%cmov rsi,F%cmov rdx,654q%csyscall%cmov rdi,rax%cpush rdi%clea rsi,[rel format]%cmov rdx,10%cmov rcx,10%cmov r8,10%cmov r9,10%cpush 10%cpush 39%cpush 39%cpush 10%cpush 10%cpush 34%clea r15,[rel format]%cpush r15%cpush 34%cmov r15,50%cpus: push 10%cdec r15%ccmp r15,0%cjne pus%cxor rax,rax%ccall _dprintf%cmov r15,58%cpo: pop rax%cdec r15%ccmp r15,0%cjne po%cpop rdi%cmov rax,SYSCALL(6)%csyscall%cmov rax,SYSCALL(1)%cmov rdi,0%csyscall%cret%csection .data%cfilename: db %%1,0%c%cformat: db %c%s%c,0%c%%endmacro%cft %cGrace_kid.s%c%c",0
%endmacro
ft 'Grace_kid.s'

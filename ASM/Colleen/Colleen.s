global _main
extern _printf
section .text
;dart
ft:
ret
_main:
push rbp
call ft
pop rbp
lea rdi,[rel s];print parameter
mov rsi,10
mov rdx,10
mov rcx,10
mov r8,10
mov r9,10
push 10
push 34
lea r13,[rel s]
push r13
push 34
mov r15,29
pus: push 10
dec r15
cmp r15,0
jne pus
call _printf
mov r15,33
po: pop rax
dec r15
cmp r15,0
jne po
ret
section .data
s: db "global _main%cextern _printf%csection .text%c;dart%cft:%cret%c_main:%cpush rbp%ccall ft%cpop rbp%clea rdi,[rel s];print parameter%cmov rsi,10%cmov rdx,10%cmov rcx,10%cmov r8,10%cmov r9,10%cpush 10%cpush 34%clea r13,[rel s]%cpush r13%cpush 34%cmov r15,29%cpus: push 10%cdec r15%ccmp r15,0%cjne pus%ccall _printf%cmov r15,33%cpo: pop rax%cdec r15%ccmp r15,0%cjne po%cret%csection .data%cs: db %c%s%c,0%c",0

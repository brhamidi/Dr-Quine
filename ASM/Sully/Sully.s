%define F 0x0002 | 0x0200 | 0x0400
global _main
extern _puts
section .text
_main:
mov r10, value
cmp r10,0
je end

lea rdi,[rel filename]
mov [rdi+6], r10
push rbp
call _puts
pop rbp
ret

end:
ret

section .data
value: db 0x05
filename: db "Sully_X.c",0
prog: db "./Sully_X",0

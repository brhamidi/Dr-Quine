global _main
extern _printf
section .text
;dart
ft:
ret
_main:
push rbp
call ft
lea rdi,[rel s];print parameter
call _printf
pop rbp
ret
section .data
s: db "wip",10,0

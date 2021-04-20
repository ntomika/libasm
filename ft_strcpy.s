global _ft_strcpy

_ft_strcpy:
		mov rax, 0
		mov rcx, 0
		jmp loop

loop:
		mov rcx, [rsi + rax]			; запись из 'src' в rcx
		cmp rcx, 0						; if (*src == 0)
		je	exit						; прыжок в exit, если (*src == 0)
		mov [rdi + rax] ,rcx			; запись из rcx ('src') в 'dst'
		inc rax							; rax++
		jmp loop						; цикл с самого начала

exit:
		mov rcx, 0
		mov [rdi + rax], rcx
		mov rax, rdi
		ret
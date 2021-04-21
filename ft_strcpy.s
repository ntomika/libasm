global _ft_strcpy

_ft_strcpy:
		mov rax, 0
		jmp loop

loop:
		mov cl, [rsi + rax]				; запись из 'src' в cl(один символ = 8 бит)
		cmp cl, 0						; if (*src == 0)
		je	exit						; прыжок в exit, если (*src == 0)
		mov byte [rdi + rax] ,cl		; запись из cl ('src') в 'dst'
		inc rax							; rax++
		jmp loop						; цикл с самого начала

exit:
		mov cl, 0
		mov [rdi + rax], cl
		mov rax, rdi
		ret
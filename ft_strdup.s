section .text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_ft_strcpy
	extern	_malloc

_ft_strdup:
		mov		rax, 0
		jmp		allocation

allocation:
		call	_ft_strlen			; вызов ft_strlen (в нее пойдет значение rdi ('s'))
		inc		rax					; rax++ (из ft_strlen вернется длина строки -> rax)
		push	rdi					; сохранить старое значение rdi (значение 's') на стеке
		mov		rdi, rax			; запись rax в rdi
		call	_malloc				; вызов malloc c значением rdi (malloc(rdi))
		mov		rdi, rax			; запись rax (вернувшееся из malloc) в rdi
		pop		rdx					; запись в rdx значения rdi (которое было запушено)
		mov		rsi, rdx			; запись rdx в rsi
		call	_ft_strcpy			; вызов ft_strlcpy ('dst' = rdi,
									; в которое записался malloc, 'src' = rsi 
									; (rsi = пришедшее значение rdi))
		ret
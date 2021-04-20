global _ft_strlen

_ft_strlen:
	mov	rax, 0						; поместить 0 в rax
	jmp loop						; прыжок в loop без условий

loop:
	cmp byte [rdi + rax], 0			; сравнение текущего символа с нулем
	je	exit						; если == 0 -> прыжок в exit
	inc rax							; rax++
	jmp loop						; зацикливание в loop, пока не произойдет выход по условию == 0

exit:
	ret								; вернуть rax
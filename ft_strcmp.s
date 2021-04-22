global _ft_strcmp

_ft_strcmp:
		mov rax, 0
		jmp loop

loop:
		mov cl, [rsi + rax]		; запись из 's2' в cl
		mov dl, [rdi + rax]		; запись из 's1' в cl
		sub cl, dl
		cmp cl, 0
		jl exit1
		jg exit2
		cmp cl, dl				; сравнение 's1' и 's2'
		je exit3				; прыжок в exit3, если они равны
		inc rax
		jmp loop

exit1:
	mov rax, 1
	ret

exit2:
	mov rax, -1
	ret

exit3:
	mov rax, 0
	ret

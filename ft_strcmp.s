section .text
	global	_ft_strcmp

_ft_strcmp:
		mov		rax, 0
		jmp		loop

loop:
		mov		cl, [rdi + rax]		; запись из '*s1' в cl
		mov		bl, [rsi + rax]		; запись из '*s2' в bl
		cmp		cl, 0
		je		check				; прыжок, если (*s1 == 0)
		cmp		bl, 0
		je		check				; прыжок, если (*s2 == 0)
		cmp		cl, bl				; сравнение '*s1' и '*s2'
		jne		check				; прыжок в check, если они не равны
		inc		rax
		jmp		loop

check:
		movzx	rax, cl
		movzx	rbx, bl
		sub		rax, rbx
		cmp		rax, 0
		jl		exit2
		jg		exit1
		je		exit3

exit1:
		mov		rax, 1
		ret

exit2:
		mov		rax, -1
		ret

exit3:
		mov		rax, 0
		ret

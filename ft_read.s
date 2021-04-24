section .text
	global _ft_read
	extern ___error

_ft_read:
		mov		rax, 0x2000003		; 0x200000 + системный код read - 3,
		syscall
		jc		error
		ret

error:
		push	rax
		call	___error
		pop		rcx
		mov		[rax], rcx
		mov		rax, -1
		ret

global AssemblyFunc



AssemblyFunc:
	
	;function prologue
	push ebp
	mov ebp, esp
	pusha
	
	;Use a pointer for the return value.
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	add eax, ebx
	mov ecx, [ebp + 16]
	mov [ecx], eax
	
	;function epilogue
	popa
	;mov esp, ebp
	pop ebp

	ret

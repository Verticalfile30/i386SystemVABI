
global AssemblyFunc



AssemblyFunc:
	
	push ebp
	mov ebp, esp
	pusha
	
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	add eax, ebx
	mov ecx, [ebp + 16]
	mov [ecx], eax
	
	popa
	;mov esp, ebp
	pop ebp

	ret
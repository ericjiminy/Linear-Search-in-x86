; Eric Chun - jc2ppp - 10/29/20 - linearSearch.s

	global linearSearch
	section .text
	
; Parameter 1 is a pointer to the int array
; Parameter 2 is the size of the array
; Parameter 3 is the target element to find in the array
; Return type is int, the index where the target was found or -1 if it wasn't

linearSearch:
	xor ecx, ecx		; ecx = 0, iterator
linearSearchLoop:
	cmp ecx, esi		; if ecx == esi, jump to linearSearchNotFound
	je linearSearchNotFound

	mov rax, [rdi+4*rcx]	; if rdi + 4*rcx == edx, jump to linearSearchFound
	cmp eax, edx
	je linearSearchFound

	inc ecx			; ecx++
	jmp linearSearchLoop	; jump back to linearSearchLoop
linearSearchFound:
	mov eax, ecx		; return ecx, the index where the target was found
	ret
linearSearchNotFound:
	mov eax, -1
	ret			; return -1 if the target was not found

myds segment PARA 'data'
		n dw 10
		myds ends
myss segment stack PARA 'stack'
		dw 50 dup(?)
		stacksg ends
		
mycs segment para 'code'
		assume ss:myss, ds:myds, cs:mycs
main proc far
		
		push xor 
		xor ax,ax
		push ax
		
		mov ax,myds
		mov ds,ax
		
		push n
		call CONWAY
		pop ax
		
		retf
main endp
mycs ends
	end main
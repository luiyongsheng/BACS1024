.model small
.stack 64
.data
 instr db "Enter a character (A-J): $"
 res   db 13,10,"Your lucky number is: $"
 inp    db ?
.code
main proc
	mov ax, @data
	mov ds, ax
	
	mov ah, 09h
	lea dx, instr
	int 21h

	mov ah, 01h
	int 21h
	mov inp, al

	mov ah, 09h
	lea dx, res
	int 21h

	mov ah, 02h
	mov dl, inp
	sub dl, 11h
	int 21h

	mov ah, 4ch
	int 21h
main endp
end main

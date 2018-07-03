.model small
.stack 64
.data
 char db 01h
.code
main proc
	mov ax, @data
	mov ds, ax

	mov ah, 02h
	mov dl, char
	int 21h

	mov ah, 02h
	mov dl, 13
	int 21h

	mov ah, 02h
	mov dl, 10
	int 21h

	mov ah, 02h
	mov dl, char
	add dl, 3
	int 21h

	add dl, 12
	int 21h

	mov dl, 3dh
	int 21h

	mov ah, 4ch
	int 21h
main endp
end main

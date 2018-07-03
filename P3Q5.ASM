.model small
.stack 64
.data
 gp   db "Group $"
 dot  db ": $"
 comma db ", $"
 char db 'A'
 num  db '1'
.code
main proc
	mov ax, @data
	mov ds, ax

	mov ah, 09h
	lea dx, gp
	int 21h

	mov ah, 02h
	mov dl, char
	int 21h

	mov ah, 09h
	lea dx, dot
	int 21h

	mov cx, 3
	mov si, 0
	mov ah, 02h
	mov dl, num
jumper:
	int 21h
	add dl, 1h
	inc si
	loop jumper

	mov ah, 4ch
	int 21h
main endp
end main

.model small
.stack 64
.data
 var1  db "COMPUTER"
 var2  db 8 DUP ('*')
 str1  db "Before convert case",13,10,"-------------------",13,10,"$"
 str2  db 13,10,13,10,"After convert case",13,10,"-------------------",13,10,"$"
 strV1 db "VAR1 = $"
 strV2 db 13,10,"VAR2 = $"
.code
main proc
	mov ax, @data
	mov ds, ax
	
	mov ah, 09h
	lea dx, str1
	int 21h
	
	lea dx, strV1
	int 21h

	mov cx, 8
	mov si, 0
pusher:
	mov ah, 02h
	mov dl, var1[si]
	int 21h
	inc si
	loop pusher

	mov ah, 09h
	lea dx, strV2
	int 21h

	mov cx, 8
	mov si, 0
pusher2:
	mov ah, 02h
	mov dl, var2[si]
	int 21h
	inc si
	loop pusher2

	mov ah, 09h
	lea dx, str2
	int 21h

	lea dx, strV1
	int 21h

	mov cx, 8
	mov si, 0
pusher3:
	mov ah, 02h
	mov dl, var1[si]
	int 21h
	add dl, 20h
	mov var2[si], dl
	inc si
	loop pusher3


	mov ah, 09h
	lea dx, strV2
	int 21h
	
	mov cx, 8
	mov si, 0
pusher4:
	mov ah, 02h
	mov dl, var2[si]
	int 21h
	inc si
	loop pusher4


	mov ah, 4ch
	int 21h
main endp
end main

org 100h   

.data
a db 45h,65h,3h,55h,21h
large db ?
.code

mov ax,@data
mov dx,ax
mov al,0
mov cl,05h
mov si,offset a
up:
cmp al,[si]
jnc nxt
mov al,[si]
nxt:
inc si
loop up
mov large,al

hlt





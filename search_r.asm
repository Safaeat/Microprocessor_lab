org 100h   

.data
a db 'hello'
len equ $ - a
b db 'r'
f db 0
.code

mov cx,len 
mov al,a
mov si,0
mov bl,b 

L:
cmp al,bl
je level
inc si
loop L
jmp exit

level:
mov f,1
exit:

hlt





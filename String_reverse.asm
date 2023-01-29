
org 100h
.data 
str db 'Computer'
len equ $ - str

 
.code
mov si,0
mov di,len
dec di

Level1:
cmp si,di
jge Exit
mov al,str[si]
mov bl, str[di]
mov str[si],bl
mov str[di],al
inc si
dec di
jmp Level1

Exit:
ret





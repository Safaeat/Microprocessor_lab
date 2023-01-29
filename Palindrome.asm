

org 100h
.data 
str db 'madam'
len equ $ - str 
flag db 1

 
.code
mov si,0
mov di,len
dec di

Level1:
cmp si,di
jge Exit
mov al,str[si]
cmp al,str[di]
jne Outer
inc si
dec di
jmp Level1

outer:
mov flag,0  

Exit:
ret










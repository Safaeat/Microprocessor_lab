org 0x100

.data
a dw 55636
sum dw 0 

.code

mov ax,a 
mov bx,10


level1:
cmp ax,0
je Exit
div bx
add  sum,dx
mov dx,0
jmp Level1

Exit:
Ret
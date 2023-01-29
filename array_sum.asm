org 100h   

.data
a db 5,6,2,7
len equ $ -a
b db 0
.code
     
mov cx,len
mov si,0 
 level1:
 mov al,a[si]
 add bl,al
 inc si
 dec cx
 cmp cx,0
 je exit 
 jmp level1
 exit:

ret





org 100h   

.data
a db 'arman'
len equ $ - a
f db 0
.code 

mov cx,len
mov si,0

loop1:
cmp a[si],'a'
je level         
cmp a[si],'e'
je level         
cmp a[si],'i'
je level         
cmp a[si],'o'
je level
cmp a[si],'u'
je level         
inc si

jmp l2                 

level:
add f,1
inc si 

l2:
loop loop1
jmp exit
 
exit:  
hlt





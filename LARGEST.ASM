.model small
.stack 64
.data
.code
start:Mov ax, @data
      Mov ds, ax
      Mov si, 3000h
      Mov di, 3500h
      Mov cl, [si]
      mov Ch, 00h
      Inc si
      Mov al, [si]
      dec cl
      inc si
next:Cmp al, [si]
     Jnc fit
     Mov al, [si]
 fit:Inc si
     Loop next
     Mov [di], al
     hlt
     end

main:

					; printing using the prs function doesn't, so using prc instead


mov r0 #110
mov !r0,#-1 #72
mov !r0,#-2 #101
mov !r0,#-3 #108
mov !r0,#-4 #108
mov !r0,#-5 #111
mov !r0,#-6 #44
mov !r0,#-7 #32
mov !r0,#-8 #119
mov !r0,#-9 #111
mov !r0,#-10 #114
mov !r0,#-11 #108
mov !r0,#-12 #100
mov !r0,#-13 #32
mov !r0,#-14 #33
mov !r0,#-15 #10

prs !r0 #15

;----------------------------------------------------------------------------------

prc #72				; H
prc #101			; e
prc #108			; l
prc #108			; l
prc #111			; o
prc #44				; ,
prc #32				; " "
prc #119			; w
prc #111			; o
prc #114			; r
prc #108			; l
prc #100			; d
prc #32				; " "
prc #33				; !
prc #10				; return

ret 
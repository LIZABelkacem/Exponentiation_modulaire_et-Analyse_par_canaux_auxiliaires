main:

  sub r30 r30 #1                ; decr sp
  mov !r30 r31                  ; push ra
  
  
  mov r0 #5						; init r0 value
  prn r0 						; print function
  prc #10


  mov r31 !r30                  ; pop ra
  add r30 r30 #1                ; incr sp
  ret
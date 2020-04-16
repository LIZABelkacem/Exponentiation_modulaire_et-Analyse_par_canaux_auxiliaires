toInfinity:                     ; declaring the function:
  add r0 r0 #1                  ; toInfinity is a function that
  prc #10                       ; counts to infinity, basically !
  prn r0
  prc #10
  jmp toInfinity


main:

  sub r30 r30 #1                ; decr sp
  mov !r30 r31                  ; push ra
  
  
  mov r0 #0						          ; initial r0 value
  
  
  cal toInfinity                ; calling the function


  end:

  mov r31 !r30                  ; pop ra
  add r30 r30 #1                ; incr sp
  ret
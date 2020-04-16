main:

  sub r30 r30 #1                ; decr sp
  mov !r30 r31                  ; push ra
  

  mov r0 #50
  mov r1 #25
  mov r2 #1
  mov r3 #0
  mov r4 #4						          ; result



  add r4 r0 r3 					        ; addition
  prn r4
  prc #10

  sub r4 r0 r1 					        ; substraction
  prn r4
  prc #10

  mul r4 r0 r1 					        ; multiplication
  prn r4
  prc #10

  div r4 r0 r1 					        ; division
  prn r4
  prc #10

  mod r4 r0 r1 					        ; modulo
  prn r4
  prc #10


  prc #45 						          ; separation
  prc #45
  prc #45
  prc #10


  and r4 r2 r3 					        ; and operator
  prn r4
  prc #10


  orr r4 r2 r3 					        ; or operator
  prn r4
  prc #10


  xor r4 r2 r3 					        ; xor operator
  prn r4
  prc #10


  mov r31 !r30                  ; pop ra
  add r30 r30 #1                ; incr sp
  ret
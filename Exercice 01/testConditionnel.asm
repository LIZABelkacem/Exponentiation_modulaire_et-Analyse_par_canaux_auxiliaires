main:

  sub r30 r30 #1                ; decr sp
  mov !r30 r31                  ; push ra
  
  
  mov r0 #0						          ; change the value to test


  if:							              ; the 'if' statment
  beq do r0 #0
  jmp else
  
  do:
  prc #10
  prc #84
  prc #114
  prc #117
  prc #101
  prc #10
  prc #10
  jmp end

  else:
  prc #10
  prc #70
  prc #97
  prc #108
  prc #115
  prc #101
  prc #10
  prc #10
  
  end:

  mov r31 !r30                  ; pop ra
  add r30 r30 #1                ; incr sp
  ret
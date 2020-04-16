main:

  sub r30 r30 #1                ; decr sp
  mov !r30 r31                  ; push ra
  
  
  mov r0 #5						          ; change the value to test

  
  loop:
  beq end r0 #0					        ; the loop condition
  prc #10
  prn r0
  sub r0 r0 #1
  prc #10
  prc #10
  jmp loop
  
  end:

  mov r31 !r30                  ; pop ra
  add r30 r30 #1                ; incr sp
  ret
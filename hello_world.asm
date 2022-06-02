section .data
    hello: db "Hello World!", 10 ; string to print
    helloLen: equ $-hello ; length of string

section .text
    global _start ; entry point for linker

    _start:
        mov rax, 1 ; sys_write
        mov rdi, 1 ; stdout
        mov rsi, hello ; string to print
        mov rdx, helloLen ; length of string
        syscall ; call kernel

        ; end program
        mov rax, 60 ; sys exit
        mov rdi, 0 ; exit code '0'
        syscall ; call kernel
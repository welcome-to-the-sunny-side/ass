.att_syntax prefix

.section .rodata

ip_string_1:
    .string "%ld"
ip_string_2:
    .string "%ld %ld"
ip_string_3:
    .string "%ld %ld %ld"
op_string_1:
    .string "%ld\n"

.section .text

.globl main

.extern printf
.extern scanf
.extern calloc
.extern free

# modify(ptr, n, x, v)
update:
    jmp update_test

    update_loop:
        addq %rcx, (%rdi, %rdx, 8)
        leaq 1(%rdx), %rax
        orq %rax, %rdx

    update_test:
        cmpq %rsi, %rdx
        jl update_loop
    
    ret

# query(ptr, x)
answer:
    xor %eax, %eax

    addq $1, %rsi

    jmp answer_test

    answer_loop:
        leaq -1(%rsi), %rdx
        addq (%rdi, %rdx, 8), %rax
        andq %rdx, %rsi 
    answer_test:
        cmpq $0, %rsi
        jg answer_loop

    ret

main:
    push %rbp
    push %r12
    push %r13
    push %r14
    push %r15

    movq %rsp, %rbp

    subq $32, %rsp

    # scanf(n)
    leaq ip_string_1(%rip), %rdi
    leaq 8(%rsp), %rsi
    xor %eax, %eax
    call scanf

    # scanf(q)
    leaq ip_string_1(%rip), %rdi
    leaq (%rsp), %rsi
    xor %eax, %eax
    call scanf

    # just stash n and q into a register
    movq 8(%rsp), %r12
    movq (%rsp), %r13

    # allocate fenwick tree array
    leaq 5(%r12), %rdi
    movq $8, %rsi
    call calloc

    # stash pointer into a register
    movq %rax, %r14

    jmp query_test
    query_loop:
        # input t x v/t l r
        leaq ip_string_3(%rip), %rdi
        leaq 16(%rsp), %rsi
        leaq 8(%rsp), %rdx
        movq %rsp, %rcx
        xor %eax, %eax
        call scanf

        # t in {1, 2}
        testq $1, 16(%rsp)
        jz answer_query

        # 1 x v 
        update_query:
            movq %r14, %rdi
            movq %r12, %rsi
            movq 8(%rsp), %rdx
            movq (%rsp), %rcx

            call update

            jmp query_test
        
        # 2 l r
        answer_query:
            # sum [0, l - 1] (handle l - 1 = -1 gracefully in sum)
            movq %r14, %rdi
            movq 8(%rsp), %rsi
            subq $1, %rsi
            call answer

            movq %rax, %r15

            # sum [0, r]
            movq %r14, %rdi
            movq (%rsp), %rsi
            call answer
            
            subq %r15, %rax

            leaq op_string_1(%rip), %rdi
            movq %rax, %rsi
            xor %eax, %eax
            call printf

    query_test:
        subq $1, %r13
        jge query_loop

    movq %r14, %rdi
    call free

    addq $32, %rsp

    xor %eax, %eax

    pop %r15
    pop %r14
    pop %r13
    pop %r12
    pop %rbp
    ret
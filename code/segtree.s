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

.section .data
n:
    .quad 0
q:
    .quad 0
segtree_array:
    .quad 0

.section .text

.globl main
.extern printf
.extern scanf
.extern calloc


# void update(v, l, r, qi, x)
update:
    cmpq $rsi, $rdx
    jne update_go_down

    leaq segtree_array(%rip), %r9
    addq %r8, (%r9, %rcx, 8)
    ret

    update_go_down:
    subq $8, %rsp

    leaq (%rsi, %rdx, 1), %r9
    shrq %r9

    

    addq $8, %rsp
    ret

# int query(v, l, r, ql, qr)
query:


main:
    push %rbp
    movq %rsp, %rbp

    subq $32, %rsp

    leaq ip_string_2(%rip), %rdi
    leaq n(%rip), %rsi
    leaq q(%rip), %rdx
    xor %eax, %eax
    call scanf

    movq n(%rip), %rdi
    leaq 5(, %rdi, 4), %rdi
    movq $8, %rsi
    call calloc
    movq %rax, segtree_array(%rip)

    jmp qtest

    qloop:
        # 1 i x or 2 l r
        
        leaq ip_string_3(%rip), %rdi
        leaq (%rsp), %rsi
        leaq 8(%rsi), %rdx
        leaq 8(%rdx), %rcx
        xor %eax, %eax
        call scanf

        movq $1, %rdi
        movq $1, %rsi
        movq n(%rip), %rdx
        movq 8(%rsp), %rcx
        movq 16(%rsp), %r8
        
        testq $1, (%rsp)

        jz type_query

        type_update:
            call update 
            jmp qtest
        type_query:
            call query
            
            leaq op_string_1(%rip), %rdi
            movq %rax, %rsi
            xor %eax, %eax
            call printf
    qtest:
        subq $1, q(%rip)
        testq q(%rip), q(%rip)
        jns qloop

    leave
    ret
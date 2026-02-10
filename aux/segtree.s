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

# void merge(int v)
merge:
    # leaf
    movq segtree_array(%rip), %rsi
    leaq (, %rdi, 8), %rdi
    leaq (%rsi, %rdi, 2), %rsi
    movq (%rsi), %rdx
    addq $8, %rsi
    addq (%rsi), %rdx
    subq %rdi, %rsi
    subq $8, %rsi
    movq %rdx, (%rsi)
    ret

# void update(v, l, r, qi, x)
update:
    cmpq %rsi, %rdx
    jne update_go_down

    movq segtree_array(%rip), %r9
    addq %r8, (%r9, %rdi, 8)
    ret

    update_go_down:
    subq $8, %rsp

    leaq (%rsi, %rdx, 1), %r9
    shrq $1, %r9

    cmpq %r9, %rcx
    jg update_go_right
    update_go_left:
        movq %rdi, (%rsp)

        shlq $1, %rdi
        movq %r9, %rdx
        call update

        movq (%rsp), %rdi
        call merge

        jmp update_done

    update_go_right:
        movq %rdi, (%rsp)

        leaq 1(, %rdi, 2), %rdi
        leaq 1(%r9), %rsi
        call update

        movq (%rsp), %rdi
        call merge

    update_done:
    addq $8, %rsp
    ret



# int query(v, l, r, ql, qr)
query:
    # l > r or qr < l or r < ql
    cmpq %rsi, %rdx
    jl query_null
    cmpq %r8, %rsi
    jg query_null
    cmpq %rdx, %rcx
    jg query_null

    # ql <= l and r <= qr
    cmpq %rsi, %rcx
    setle %r9b
    cmpq %rdx, %r8
    setge %r10b
    testb %r9b, %r10b
    jne query_contained

    query_done:
        subq $16, %rsp
        leaq (%rsi, %rdx, 1), %r9
        movq %r9, (%rsp)
        shrq $1, (%rsp)

        # left child
        pushq %rdi
        pushq %rsi
        pushq %rdx

        shlq $1, %rdi
        movq 24(%rsp), %rdx

        call query

        popq %rdx
        popq %rsi
        popq %rdi

        movq %rax, 8(%rsp)


        # right child
        movq (%rsp), %rsi
        addq $1, %rsi
        leaq 1(, %rdi, 2), %rdi

        addq $8, %rsp

        call query

        # merge
        addq (%rsp), %rax

        addq $8, %rsp
        ret

    query_null:
        movq $0, %rax
        ret

    query_contained:
        # return segtree[v]
        movq segtree_array(%rip), %r10
        leaq (%r10, %rdi, 8), %r10
        movq (%r10), %rax
        ret


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
        cmpq $0, q(%rip)
        jge qloop

    xor %eax, %eax
    leave
    ret

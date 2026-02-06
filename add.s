.att_syntax prefix

.section .rodata
print_string:
    # this string will be conveniently null-terminated, just like clib expects strings to be. yay!
    .string "add(%ld, %ld) = %ld\n"

.section .text

# export main 
.globl main

# printf is from libc
.extern printf

add:
    leaq (%rdi, %rsi), %rax
    ret

main:
    # note that main is also a callee, but im not touching any callee-saved registers (rbx, rbp, r12-r15), so i don't really need to callee-save them
    # when one enters main on linux, rsp % 16 = 8 on as the return address before main gets push. we need it to be 16-byte aligned before calling any function according to the sysv64 ABI (this technically won't matter for add, but it would for printf) 
    subq $8, %rsp

    movq $1000, %rdi
    movq $3453, %rsi

    call add
    
    # note that rdi and rsi could actually have been modified by add, so the right thing to do by the ABI is to have caller-saved them, but im lazy and we know that add is a simple leaf that isn't clobbering them
    # just the parameters for printf (address to format string, the variables you reference in the format string)
    movq %rax, %rcx
    movq %rsi, %rdx
    movq %rdi, %rsi
    leaq print_string(%rip), %rdi

    # printf apparently expects some bs related to floating point arguments in rax, just zero it out as we don't have any floats, remember that 32 bit operations on registers almost always zero out the higher 32, and that's true here  
    xor %eax, %eax

    call printf

    # just restore rsp to it's original value before the call, doesn't matter in practice here
    addq $8, %rsp

    # return code of 0 for main
    xor %eax, %eax

    ret
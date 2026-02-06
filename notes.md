Functions are private to modules by default (analogous to static globals in actual C++ code). To create a public symbol for a function (or data), you must have `.globl foo` in your `.text` section.

---

If you're using functions not present in your own module, that you'll later link against, you can have `.extern foo` in your `.text` section. It isn't strictly required as the assembler will create an undefined reference to later resolve during linking, but it's helpful to know exactly what external deps you're using. 

---

Put read-only constants in `.section .rodata`. This is pretty convenient for strings as you can literally type out the string in english characters instead of having to type out bytes, and the assembler will convert it for you.

---

Labels are a bit "special" syntactically in that their use varies with the context. Fundamentally, a label is just a symbolic name (w.r.t. the assembler) that holds an address to a certain part of your code. 

For instance, with data:

```asm
.section .rodata

#a format string you'd pass to printf
print_string:
    .string "add(%d, %d) = %d\n"
```

As code:

```asm
.section .text

#actual code
add:
    leaq (%rdi, %rsi), %rax
    ret
```

Uses as memory:

1. `foo` : memory at label `foo` (dereference address)
2. `$foo` : the actual address
3. `foo(%rip)` : used to access memory at label `foo`, similarly to use case 1, but in a position-independence-friendly manner.
4. `leaq foo(%rip), %rdi` : load the address that `foo` into a register, similarly to use case 2, but in a position-independence-friendly manner.

Uses for control flow:

1. `call foo`: stash the return address (current `rip`) on the stack, and then jump to the address `foo`.
2. `jmp foo`: duh.

---

A note on the PIE (position independent executable) stuff mentioned earlier:
- It's basically a technique to allow programs to run no matter where the binary is initially placed in memory.
- How do we achieve this? Well, the assembler/linker know that all of our internal code/data are guaranteed to be stored in a certain relative order (ie. a certain segment of x bytes, then a gap of a bytes, then perhaps another segment of y bytes, etc), making internal displacements between various sections determinable in advance.
- To demonstrate this idea crudely, if a certain instruction at internal address (let internal address be global address - global address of the start of our data/code) x references a label at internal address y, we know that during any run of our program, that label is going to be at global address = (global address of x) - (internal address of x) + (internal address of y) = rip - (internal address of x) + (internal address of y), when the instruction at x is being run (which is when we will actually need this computation). To be a bit pedantic, rip has to be slightly adjusted as when that instruction is being executed, rip is the address of the next instruction, but you get the idea.
- For external symbols in shared libraries (not just other object files you link statically), access goes through the GOT (Global Offset Table) and PLT (Procedure Linkage Table), since the relative offset to those symbols isn't known until runtime.

---
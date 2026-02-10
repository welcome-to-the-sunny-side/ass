Functions are private to modules by default (analogous to static globals in actual C++ code). To create a public symbol for a function (or data), you must have `.globl foo` in your `.text` section.

---

If you're using functions not present in your own module, that you'll later link against, you can have `.extern foo` in your `.text` section. It isn't strictly required as the assembler will create an undefined reference to later resolve during linking, but it's helpful to know exactly what external deps you're using. 

---

Put read-only constants in `.section .rodata`. This is pretty convenient for strings as you can literally type out the string in english characters instead of having to type out bytes, and the assembler will convert it for you.

---

#### Labels

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

1. `foo` : typically, memory at label `foo` (dereference address). `lea` is an exception as usual. Fuck `lea`.
2. `$foo` : the actual address
3. `foo(%rip)` : used to access memory at label `foo`, similarly to use case 1, but in a position-independence-friendly manner. Do not confuse this with the `D(register)` addressing mode.
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

#### I/O with libc:

- Before calling `printf`, have the address of the format string ready in `rdi`, and the values of variables you reference in the format string, in `rsi`, `rdx`, `rcx` etc.
- Before calling `scanf`, have the address of the format string ready in `rdi` and the addresses to variables you reference in the format string, in `rsi`, `rdx`, `rcx` etc. `scanf` is exposed as `__isoc99_scanf` sometimes.

Note: 
- When calling variadic (variable number of parameters) functions in `libc`, `al` (lowest byte of `rax`) is used to indicate how many `xmm` registers were used to pass floating point/vector arguments to the call. So set this value correctly if you're actually passing floating point arguments, and just clear the register otherwise.

---

#### Dealing with conditional logic 

Any instruction that performs an arithmetic computation (bitwise stuff included) sets certain flags. These flags are used (along with jumps (`jmp`) and conditional moves (`cmov`)) to handle conditional stuff in assembly.

To set flags conveniently, there are two dedicated instructions which allow us to set flags without modifying the operand registers/having to actually store the result somewhere. These are `cmp` and `test`.

1. `cmp src dst`: computes `dst - src`, sets flags based on the result, and throws away the result. Commonly used for inequalities. Flags set by this instruction:
    a. `ZF` (zero flag): set if `dst == src` duh.
    b. `SF` (sign flag): if the MSB of the result is set (which implies that the result is negative if interpreted as signed, so `dst < src`).
    c. `CF` (carry flag): if an unsigned carry happened (so `dst < src` unsigned).
    d. `OF` (overflow flag): if `dst - src` overflows.
2. `test src dst`: computes `dst & src`, sets flags based on the result, and throws away the result. Commonly used for comparing a value to 0.

Here's a little cheat-sheet for how to use `cmp` with `jmp` in particular:

```asm
cmpq %reg2, %reg1
je   equal_zero          # reg1 - reg2 = 0
jne  nonzero             # reg1 - reg2 != 0
jg   greater_signed      # > 0 signed
jge  ge_signed           # >= 0 signed
jl   less_signed         # < 0 signed
jle  le_signed           # <= 0 signed
ja   greater_unsigned    # > 0 unsigned
jae  ge_unsigned         # >= 0 unsigned
jb   less_unsigned       # < 0 unsigned
jbe  le_unsigned         # <= 0 unsigned
```

A similar list for `test` and `jmp`:

```
testq %reg, %reg
je   is_zero             # (reg & reg) == 0  <=> reg == 0   (ZF=1)
jne  nonzero             # reg != 0          (ZF=0)
js   negative            # SF=1  (high bit set)
jns  nonnegative         # SF=0
```

---

Addressing with displacement and scaling: `D(reg1, reg2, S)` computes the address `D + reg1 + reg2 * S`. Certain components can be left out.

Note:
- `D` can be negative too.
- `S`, the scale, can only be 1, 2, 4, or 8.
- `D(, reg2, S)` is also legal.

---

#### Memory in ELF on x86-64

There are 3 common sections to put global/static data in:
1. `.rodata`: as the name suggests, this is used to store read-only data that you can initialize with desired values (for instance, format strings used for i/o). Data in this section contributes to the size of the executable file.
2. `.data`: like `.rodata`, but bytes in this section can be modified. This section also contributes to the size of the executable.
3. `.bss`: Bytes stored in this section can be modified and are necessarily zeroed out initially. This section doesn't contribute much to the size of the executable (except for a tiny amount of metadata). Prefer storing huge arrays here.


##### Data Types:

Common Types:
1. `.byte <hex/decimal>` : stores a byte, duh.
2. `.word <hex/decimal>` : 16-bit/2 bytes (also `.short <hex/decimal>`).
3. `.long <hex/decimal>` : 32-bit/4 bytes (also `.int <hex/decimal>`).
4. `.quad <hex/decimal>` : 64-bit/8 bytes.
5. `.asciz "hello wrld"` : A null terminated C-style string (also `.string "hello wrld"`).
6. `.ascii "hello wrld"` : The same as `.asciz`, but not null-terminated.
7. `.float 3.14`         : 32-bit IEEE754.
8. `.double 3.14`        : 64-bit IEEE754.

Vector-ish stuff:
1. `.space n, x` : emit `n` bytes with value `x` each.
2. `.zero n` : essentially `.space n, 0`.
3. `.fill n, s, x` : emit `n` elements, each `s` bytes, have a `s`-byte value of `x` (little-endian). `s` may be 1, 2, 4, or 8.
4. `.<type> <val1>, <val2>, <val3>, <val4> ... <valm>` will initialize m objects with the corresponding values one after the other. For example, `.byte 1, 2, 255`.

Alignment:
1. `.balign n` : adds bytes until we're aligned to a `n`-multiple boundary.
2. `.p2align n` : adds bytes until we're aligned to a `2^n`-multiple boundary.

Note: remember, you can only have zeroed out bytes in `.bss`!!!

---

#### Stack alignment 

According to the SysV AMD64 ABI, one must have `rsp % 16 == 0` immediately before making a procedural call. Note that this means that upon entering any procedure (including `main`), we're going to have `rsp % 16 == 8`, as the caller would have pushed its return address.

---

#### Caller Saved Registers

`rax`, `rcx`, `rdx`, `rsi`, `rdi`, `r8`-`r11`, and `xmm0`-`xmm15`

#### Callee Saved Registers

`rbx`, `rbp`, `r12`-`r15`

---

It's annoying, but you cannot dereference addresses stored in memory (on the stack/`.data`/whatever) directly, as any instruction can perform at most one memory access on x86-64.

---
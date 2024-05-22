.intel_syntax noprefix

.text

.global ListFindElem
ListFindElem:
        movsx   rax, DWORD PTR [rdi+20]
        mov     r8, QWORD PTR [rdi]
        mov     r9d, DWORD PTR [rdi+12]
        lea     rax, [rax+rax*2]
        lea     rdx, [r8+rax*8]
        test    r9d, r9d
        jle     .L4
        xor     ecx, ecx
        xor     r10d, r10d
        vmovdqu ymm0, YMMWORD PTR [rsi]
        jmp     .L3
.L8:
        movsx   rdx, DWORD PTR [rdx+16]
        add     ecx, 1
        lea     rdx, [rdx+rdx*2]
        lea     rdx, [r8+rdx*8]
        cmp     ecx, r9d
        je      .L7
.L3:
        mov     rdi, QWORD PTR [rdx+8]
        mov     eax, r10d
        .intel_syntax noprefix
        vptest  ymm0, YMMWORD PTR [rdi]
        setb al

        test    al, al
        je      .L8
        ret
.L7:
        vzeroupper
        ret
.L4:
        xor     eax, eax
        ret

%ifdef CONFIG
{
  "HostFeatures": ["AVX"],
  "RegData": {
    "XMM4":  ["0x7FFF7FFF7FFF7FFF", "0x800080007FFF7FFF", "0x0000000000000000", "0x0000000000000000"],
    "XMM5":  ["0x800080007FFF7FFF", "0x7FFF7FFF7FFF7FFF", "0x0000000000000000", "0x0000000000000000"],
    "XMM6":  ["0x71836D874331472D", "0x800080007FFF7FFF", "0x0000000000000000", "0x0000000000000000"],
    "XMM7":  ["0x800080007FFF7FFF", "0x71836D874331472D", "0x0000000000000000", "0x0000000000000000"],
    "XMM8":  ["0x7FFF7FFF7FFF7FFF", "0x71836D874331472D", "0x0000000000000000", "0x0000000000000000"],
    "XMM9":  ["0x800080007FFF7FFF", "0x800080007FFF7FFF", "0x0000000000000000", "0x0000000000000000"],
    "XMM10": ["0x71836D874331472D", "0x800080007FFF7FFF", "0x0000000000000000", "0x0000000000000000"]
  }
}
%endif

lea rdx, [rel .data]

vmovaps xmm0, [rdx]
vmovaps xmm1, [rdx + 16]
vmovaps xmm2, [rdx + 32]
vmovaps xmm3, [rdx + 48]

vphaddsw xmm4,  xmm0, [rdx + 16]
vphaddsw xmm5,  xmm1, [rdx]

vphaddsw xmm6,  xmm2, [rdx + 16]
vphaddsw xmm7,  xmm3, [rdx + 32]

vphaddsw xmm8,  xmm0, [rdx + 32]
vphaddsw xmm9,  xmm1, [rdx + 48]

vphaddsw xmm10, xmm2, [rdx + 48]

hlt

align 32
.data:
dq 0x4142434445464748
dq 0x5152535455565758

dq 0x7F7F7F7F7F7F7F7F
dq 0x8080808080808080

dq 0x2119221823172416
dq 0x3941384237433644

dq 0x7F7F7F7F7F7F7F7F
dq 0x8080808080808080
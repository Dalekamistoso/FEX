%ifdef CONFIG
{
  "HostFeatures": ["AVX"],
  "RegData": {
    "XMM0":  ["0xA76C4F06A12BFCE0", "0x9B80767F1E6A060F", "0x0000000000000000", "0x0000000000000000"],
    "XMM1":  ["0x6868C3F3AAED56E0", "0xF0FCE9E294E6E6DE", "0x0000000000000000", "0x0000000000000000"],
    "XMM2":  ["0x6C8BABD754A8356E", "0x277EA625CA925F77", "0x0000000000000000", "0x0000000000000000"],
    "XMM3":  ["0x6A6FD695EC73CDC7", "0xDDA1B927BBF2AEBB", "0x0000000000000000", "0x0000000000000000"],
    "XMM4":  ["0x88312CD5C7D14D73", "0x7F091E1EFDDBE7FE", "0x0000000000000000", "0x0000000000000000"],
    "XMM5":  ["0xF29AE6EF954EFA14", "0x8273A8A49A6242A0", "0x0000000000000000", "0x0000000000000000"],
    "XMM6":  ["0x3212073882160F0E", "0xB3780763C1923507", "0x0000000000000000", "0x0000000000000000"],
    "XMM7":  ["0x462A372B571946CB", "0xA38DCD3D790E041F", "0x0000000000000000", "0x0000000000000000"],
    "XMM8":  ["0x01D700F201DD018B", "0x021B012D00EC015B", "0x0000000000000000", "0x0000000000000000"],
    "XMM9":  ["0x021B01EA0147019C", "0x017900FB00D801D9", "0x0000000000000000", "0x0000000000000000"],
    "XMM10": ["0x010500E801000153", "0x011A015F01530171", "0x0000000000000000", "0x0000000000000000"],
    "XMM11": ["0x019C0124018F014D", "0x011F0100011E0116", "0x0000000000000000", "0x0000000000000000"],
    "XMM12": ["0x0136007E009D01E0", "0x02A802C80245019D", "0x0000000000000000", "0x0000000000000000"],
    "XMM13": ["0x009F0115017B0132", "0x013C01AF01F90179", "0x0000000000000000", "0x0000000000000000"],
    "XMM14": ["0x0077012B011900E8", "0x00BC016E019E0146", "0x0000000000000000", "0x0000000000000000"],
    "XMM15": ["0x0100011C010300D5", "0x00F3014A016700CD", "0x0000000000000000", "0x0000000000000000"]
  }
}
%endif

lea rdx, [rel .data]

vmovaps xmm0, [rdx + 16 * 0]
vmovaps xmm1, [rdx + 16 * 1]
vmovaps xmm2, [rdx + 16 * 2]
vmovaps xmm3, [rdx + 16 * 3]
vmovaps xmm4, [rdx + 16 * 4]
vmovaps xmm5, [rdx + 16 * 5]
vmovaps xmm6, [rdx + 16 * 6]
vmovaps xmm7, [rdx + 16 * 7]

vmpsadbw xmm8,  xmm0, [rdx + 16 * 8],  000b
vmpsadbw xmm9,  xmm1, [rdx + 16 * 9],  001b
vmpsadbw xmm10, xmm2, [rdx + 16 * 10], 010b
vmpsadbw xmm11, xmm3, [rdx + 16 * 11], 011b
vmpsadbw xmm12, xmm4, [rdx + 16 * 12], 100b
vmpsadbw xmm13, xmm5, [rdx + 16 * 13], 101b
vmpsadbw xmm14, xmm6, [rdx + 16 * 14], 110b
vmpsadbw xmm15, xmm7, [rdx + 16 * 15], 111b

hlt

align 32
.data:
dq 0xA76C4F06A12BFCE0
dq 0x9B80767F1E6A060F
dq 0x6868C3F3AAED56E0
dq 0xF0FCE9E294E6E6DE
dq 0x6C8BABD754A8356E
dq 0x277EA625CA925F77
dq 0x6A6FD695EC73CDC7
dq 0xDDA1B927BBF2AEBB
dq 0x88312CD5C7D14D73
dq 0x7F091E1EFDDBE7FE
dq 0xF29AE6EF954EFA14
dq 0x8273A8A49A6242A0
dq 0x3212073882160F0E
dq 0xB3780763C1923507
dq 0x462A372B571946CB
dq 0xA38DCD3D790E041F
dq 0x3057BAAB2F86F32B
dq 0xEF3F4F46F02CD62E
dq 0xDE3C4B3485BBD1EF
dq 0x9DE3718DB9A3489E
dq 0x9D50328ADEFB7209
dq 0xEEF7EB52F6F19869
dq 0xCE021C30FFC299D6
dq 0xA60E9C56F1B20570
dq 0x30763886E2C46218
dq 0xEB535D0EA7E4A12F
dq 0x6802E8E1B7E04514
dq 0x46EBF28FC18EFE1A
dq 0x032E9746236A5D7F
dq 0xAC5976548F321298
dq 0xB6D30C71C85F76C8
dq 0x881D2CA6ABEA19C5

00970000     50                        push eax
00970001     53                        push ebx
00970002     52                        push edx
00970003     B8 C8D04100               mov eax,41D0C8
00970008     8B18                      mov ebx,dword ptr ds:[eax]
0097000A     83FB 00                   cmp ebx,0
0097000D     74 14                     je short 00970023
0097000F     8B53 02                   mov edx,dword ptr ds:[ebx+2]
00970012     8B12                      mov edx,dword ptr ds:[edx]
00970014     8B5B 06                   mov ebx,dword ptr ds:[ebx+6]
00970017     81FB 00000040             cmp ebx,40000000
0097001D     76 16                     jbe short 00970035
0097001F     03DA                      add ebx,edx
00970021     8918                      mov dword ptr ds:[eax],ebx
00970023     83C0 04                   add eax,4
00970026     3D 3CD14100               cmp eax,41D13C
0097002B   ^ 72 DB                     jb short 00970008
0097002D     5A                        pop edx
0097002E     5B                        pop ebx
0097002F     58                        pop eax
00970030   - E9 CB0FA9FF               jmp KRYPTON.00401000
00970035     33DA                      xor ebx,edx
00970037   ^ EB E8                     jmp short 00970021

hex:50 53 52 B8 C8 D0 41 00 8B 18 83 FB 00 74 14 8B 53 02 8B 12 8B 5B 06 81 FB 00 00 00 40 76 16 03
DA 89 18 83 C0 04 3D 3C D1 41 00 72 DB 5A 5B 58 E9 CB 0F A9 FF 33 DA EB E8


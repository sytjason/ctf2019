# Computer Security Homework 0x00
Real name: 涂世昱
Nickname: R07922115
Student ID: R07922115

## shellc0de
這題目的是輸入一段 shellcode 被當成函數來執行, 所輸入的 shellcode 進行 syscall 去執行 /bin/sh 的操作, 而後找到 flag 位置並且輸出。 這段 shellcode 是由一段 assembly 經過 pwntools 所轉成的一串 bytecode, 而這段 assembly 所作的事情就是 execve("/bin/sh"), 將此 assembly 用 pwntools 的 asm() 函數包起來就會變成一個字串, 又因為 syscall 這個 assembly 所轉成的字串會被轉換成 '\x0f\x05', "mov rax, 59" (指定 syscall 為 execve) 會變成 'H\xc7\xc0;\x00\x00\x00', 而在 shell.c 當中就會把 0x00, 0x05, 0x0f 判斷, 若是 shellcode 當中出現這幾個 byte 就會終止執行。 於是我將轉出來的 bytecode 用 pwnlib.encoders.encoder.encode 將 shellcode 再轉換成不包含那些 byte 的 shellcode, 但維持原先的 assembly 操作, 最終就可以解出這題。

## open my backdoor
進入連結打開門之後會出現 php 程式碼, 仔細觀察後得出結果是它會由 url 輸入的變數, $_GET[87], 來決定所要執行的函數名稱, 且此函數名稱是由四個英文字母所組成的, 就可以聯想出像是 echo, exec, eval, ..., 這些可能, 接著再透過 $_POST{'#'} (e.g. ${"_\x50\x4f\x53\x54"}{$c}) 來傳入此函數的參數。 因為最終目標是將 server 的 flag 印出來, 所以勢必先將所在位置的檔案都印出來, 於是就考慮以下幾種可能
1. url: ?87=


## m4chine

## encrypt

## Winmagic


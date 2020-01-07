# Computer Security Homework 0x08

Real name: 涂世昱

Nick name: R07922115

Student ID: R07922115

## EDU 2019 election

### Introduction

這題我的解法是在main function當中如果從stack當中觀察可發現在token之後緊接著的8個bytes是canary, 再接下去8個bytes為\<\_\_libc\_csu\_init\>的位址, 將這兩個東西leak出就可以bypass canary以及pie的保護機制了, 而在後面voting function的部份因為我可以想辦法overflow msg在return address後面接ROP chain, 但是能接的東西有限, 所以要用到上課教的stack pivoting的方式將我的ROP chain蓋在其他地方, leak出libc再跳到main重新執行, 用同樣的流程蓋一條ROP chain, 執行system(sh)。

### Walkthrough

**bypass canary & pie**

![](/home/jason/Pictures/Screenshot_20191226_020117.png)

在main中可發現``memcmp( buf , token , len )``, 其中buf size為``0xc8``, token size為``0xb8``, buf比token整整多了0x10 bytes, 我就把token填滿0xb8個'a', 然後把buf也先填0xb8個'a', 接著就可以開始猜緊接在token之後的第一個byte, 如果猜中的話if條件就能滿足, 就會login, 如此一來就可以logout再繼續猜下一個byte, 直到把token後面0x10個bytes都猜完, 就把canary和pie base都leak出來了。

**leak libc**

![](/home/jason/Pictures/Screenshot_20191226_030706.png)

在voting function可以發現後面會``read( 0 , msg , candidates[idx].votes )``, 其中``msg``size 為``0xe0``, ``candidates[idx].votes``在``struct Candidate``發現其中``votes``的type為``uint8_t``, 最大為``0xff``, 所以最多可以read ``0xff``個字, 剛剛又已經把canary leak出來了, 所以就可以覆蓋掉return address。於是就可以一直register新的token, 然後把票頭給``candidates[0]``直到他的``votes``為``0xff``為止, 就可以成功overflow了。

因為``votes``最多只能為``0xff``, 恰好可以蓋一個return address, 後面就塞不下了, 所以必須得用stack pivoting的方式另起爐灶, 我這邊選擇的方式是把真正的ROP chain放在``main``stack當中的token裡面, 把``stack_chk_fail_got``位置當作``puts``參數印出來最後再跳回``main``。結論如下,

![](/home/jason/Pictures/Screenshot_20191226_034100.png)

**call system(sh)**

跳回``main``之後再用相同的方式造ROP chain讓它去執行``system(sh)``, 如下圖

![](/home/jason/Pictures/Screenshot_20191226_040358.png)

## Note++

### Introduction

在``add()``當中``scanf("%48s", notes[i].description)``可以觀察到當它輸入48個字到description之後, 它會在緊接在後接一個null byte, 而剛好那個位置就是``notes[i].is_freed``, 所以可以就有use after free的漏洞。再者, 在``add()``當中的``read_input(notes[i].data, size - 1)``可以發現若``size = 0``則``size - 1``會是一個很大的數, 就可以任意覆蓋heap的資訊。 這題的解法就是利用上述漏洞想辦法造出一個unsorted bin, 並且將它use after free進而leak出libc base address, 然後再用上述漏洞配合fastbin attack的技巧將上課所交的onegadget位址寫入``__malloc_hook``當中, 想辦法讓它invoke double free的failure然後就可以得到shell了。

### leak libc base

課堂當中有提到, 若把一個small bin free掉, 它會把某個libc address存放在裡面, 所以總目標就是將它print出來。因為程式當中有把大於``0x78``的size排除, 所以我們一次只能allocate一個fastbin, 為了將它變成small bin, 我可以先隨意新增一個最小size(0x10)的note(note0), 然後在note1後面新增兩個大小為``0x50``的note, note1及note2, 將note0 delete掉, 再新增size為0的note, 此時它會變成新的note0, 它就會使用原本存放note0.data的heap chunk, 又因為其size為0, 我就可以輸入任意size個字, 把note1的chunk header當中的size改為note1及note2的size的加總並且把``P flag``設為1, 所以就把chunk header設成``0xc1``, 此時我們就擁有一個small bin了。

![](/home/jason/Pictures/Screenshot_20200102_175331.png)

此時, 我們若delete note1, delete note0再新增note0且其輸入48個字到其description, 就可以把它的``is_freed``改為0然後呼叫``list()``, 就可以成功把libc base address leak出來了。

![](/home/jason/Pictures/Screenshot_20200102_181406.png)

### Invoke OneGadget

這邊是參考課堂上的作法, 但這邊多新增了一個note, note4, 是為了將note5的``is_freed``改為0進而讓note5可以double delete然後進行fastbin attack, 將fake\_chunk指到``__malloc_hook - 0x10 - 3``的位址, 將OneGadget得出的address寫到裡面, 最後delete note1就可以成功開一個shell了。






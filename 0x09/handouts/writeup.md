# Computer Security Homework 0x09

Real name: 涂世昱

Nick name: R07922115

Student ID: R07922115

## Cathub Party

這題課堂上有透漏是用``padding oracle attack``的方式來解, 恰好在網路上找到有相關的東西放在``github``上[djosix](https://github.com/djosix)/**[padding_oracle.py](https://github.com/djosix/padding_oracle.py)**, 故這題的做法只要將``cookie``上的FLAG值經過``base64 decode``的結果再進行``url decode``, 然後送進``padding_oracle`` function, 算出好結果就和``url``, ``sess_id``一併向server發request, 這邊要再把解出來的cipher再進行``base64 encode``並且``url encode``再發出去, 如此每個byte都如此嘗試直到它把flag解出來。
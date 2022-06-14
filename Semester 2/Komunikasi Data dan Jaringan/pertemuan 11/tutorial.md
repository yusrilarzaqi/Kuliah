# Setting IP Address Windows Server 2003

1. Pertama Clone Windows Server 2003 digunakan untuk Client Side.
2. Klik kanan pada mesin yang akan di clone ![Clone](./img/clone.png)
3. Ganti nama mesin Menjadi Client untuk mudah membedakannya, lalu next. ![Clone](./img/clone-1.png)
4. Clone Type Pilih _Full Clone_ bertujuan untuk membuat virtual harddisk sendiri, lalu klik `clone`. ![Clone](./img/clone-2.png)
5. Tunggu proess Cloneing berjalan.
6. Lalu nyalakan kedua mesin mesin.
7. Pertama Tama Ganti hostname kedua komputer menjadi **Server01** dan **Client01**.
8. Klik start, lalu klik kanan **My Computer** dan klik bagian properties.
   - SERVER ![Hostname](./img/hostname.png)
   
   - CLIENT ![Hostname](./img/hostname-2.png)

9. Klik Computer Name, lalu klik change, selanjutnya pada Computer name inputkan **Server01** dan **Client01**. ![hostname](./img/hostname.png)
10. Untuk Setting IP Address Start -> Control Panel -> Network Connection -> Local Area Connection ![IP](./img/ip.png)
11. Klik properties -> Internet Protocol (TCP/IP) -> properties. Lalu inputkan ip address nya
    - Server ![IP](./img/ip-1.png)
    
    - Clinet ![IP](./img/ip-2.png)

12. Kemudian restart kedua mesin.
13. Kemudian test dengan menggunakan ping:
- Client ![ping](./img/ping.png)
- Server ![ping](./img/ping-1.png)
14. Untuk Instalasi **Active Directory**. Type `Start + r` lalu ketikan "DCPROMO" enter. ![Active Directory](./img/active-directory.png)
15. Untuk domain Tuliskan "STEKOM.com" ![Active Directory](./img/active-directory-1.png)
16. Lalu NetBIOS Domain Name "STEKOM" ![Active Directory](./img/active-directory-2.png)
17. Pada _Database and Log Folder_ pilih saja default dan next ![Active Directory](./img/active-directory-3.png)
18. Sama seperti sebelumnya untuk _Shared System Volume_ pilih saja default ![Active Directory](./img/active-directory-4.png)
19. Pada _DNS Regirstration Diagnostics_ pilih yang tengah. ![Active Directory](./img/active-directory-5.png)
20. Untuk _Permissions_ pilih saja _Permissions compatible only with Windos 20000 or Windows Server 2003_ ![Active Directory](./img/active-directory-6.png)
21. Kemudian masukan password yang kompleks dan kuat untuk security yang bagus ![Active Directory](./img/active-directory-7.png)
22. Pastikan masukan file iso yang dibuat instalasi.
23. Tunggu sampai instalasi selesai.
24. Terakhir restart mesin.

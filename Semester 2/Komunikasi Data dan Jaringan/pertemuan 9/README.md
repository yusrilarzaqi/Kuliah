# Install Windows Server 2003 di Virtual box

## Membuat virtual Machine

1. Membuat Vritual Machine dengan kilik icon **new** ![new](./img/new.png)
2. Kemudian pada input nama diberikan windows server 2003 dan versinya disesuaikan lalu next ![name](./img/name.png)
3. Untuk memory berikan 1024Mb atau 1Gb ![memory size](./img/mem-size.png)
4. Kemudian pilih _create virtual hardisk now_, itu akan membuat virtual hardisk ![hardisk](./img/hardisk.png)
5. Lalu untuk _hardisk file types_ pilih **VDI** ![hardisk](./img/hardisk-filetypes.png)
6. Untuk _Storage on Physical hardisk_ pilih _Dynamic allocated_ ini berfungsi untuk gunakan memory yang dibutuhkan saja ![Storage on Physical](./img/storage-on-physical.png)
7. _File Location and size_ memilih lokasi file yang akan disimpan dan ukuran nya, untuk lokasinya biarkan saja default dan untuk size nya pilih 20Gb ![Location & size](./img/location-size.png)

## Instalasi Windows server 2003

1. Sebelumnya, pergi ke setting dan pasangkan file iso kedalam Virtual Machine kita ![file iso](./img/file-iso.png)
2. Setelah itu tekan start ![start](./img/start.png)
3. Tekan enter untuk melanjutkan setup ![setup](./img/setup.png)
4. Tekan F8 untuk mensetujui lisensi ![Agreement](./img/agreement.png)
5. Tekan Enter untuk melanjutkan partisi ![partisi](./img/partisi.png)
6. Pilih format NTFS ![partisi](./img/partisi1.png)
7. Tunggu format file system sampai selesai lalu reboot mesin ![partisi](./img/partisi2.png)
8. Pada menu region ![region](./img/region.png)
9. Klik customize dan pilih `indonesia` lalu OK dan next![region](./img/region1.png)
10. Pada menu Personalize ![Personalize](./img/personalize.png)
11. Tuliskan nama dan organisasi kalian Kemudian next ![Personalize](./img/personalize1.png)
12. Untuk product key masukan yang telah kalian download pada google drive Kemudian next ![Product key](./img/product-key.png)
13. Pada menu Licensing models pilih saja `Per Server` ![Licensing models](./img/licensing-models.png)
14. Pada menu Computer name & Administrator Password input kan password kalian ![Admin password](./img/admin-password.png)
15. Pada menu Date & Time zone pilih time zone GMT +07.00 Jakarta kemudian next ![Time zone](./img/time-zone.png)
16. Pada menu Network setting pilih `Typical Setting` lalu next ![Network Setting](./img/network-setting.png)
17. Pada menu Workgroup pilih saja default lalu next ![Workgroup](./img/workgroup.png)
18. Setelah ini tekan `ctrl+alt+del` lalu sudah selesai Installasi windows server 2003 ![selesai](./img/selesai.png)

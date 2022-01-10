# Management Memory Permatisian Dinamis

## Multi programming dengan swapping

- Untuk menjalankan process-process yang akan diekseskusi, process-process harus sudah masuk ke memory utama. Pemindahan process dari memori utama ke disk dan sebaliknya disebut swapping.

## Kelemahan Pemartisian Dinamis

- Dapat terjadi lubang-lubang kecil memori diantara partisi-partisi yang dipakai (diatasi dengan teknik pemadatan memori).
- Merumitkan alokasi dan dealokasi memori.

## Teknik Pemadatan Memori
![Teknik Pemadatan Memori](img/teknik-pemadatan-memori.png")

## Solusi Masalah

- Heap dan Stack diatasi bisa terjadi lubanh besar yang dapat membuat process, maka process dipindah ke lubah memori yang cukup untuk membuat.
- Satu process di swap ke disik agar memberi lubah cukup besar untuk process yang berkembang.
- Jika process tidak dapat tumbuh di memori dan di daerah swap didisk telah penuh, process harus menunggu atau disingkirkan.

## Permasalahan yang lain

- Kelemahan dari tehnik pemadatan memori yaitu waktu yang diperlukan banyak serta sistem yang berhenti sementara karena diberhentikan saat terjadi pemadatan.
- **Heap** : data dinamis yang berkembang.
- **Stack** : pemanggilan prosedure dan variable local.

## Sistem paging

### Memori Maya (Virtual Memori)

Program yang dijalankan harus dimuat dimemori utama. Masalah muncul ketika program lebih besar dibanding memori utama, Solusi:

- Overlay
  
	* Program dipecah menjadi bagian-bagian yang dapat dimuat dalam memori. Overlay yang belum diperlukan (tidak sedang diekseskusi) disimpan dalam disk, overlay ini dimuatkan ke memori begitu diperlukan.

- Memori Maya

  * Memori maya adalah kemampuan mengalamati ruang memori melebihi memori utama yang tersedia.
	* Gagasan memori maya adalah ukuran gabungan program, data dan stack melampaui jumlah memori fisik yang tersedia. SO menyimpan bagian-bagian process yang sedang di disk. Begitu bagian didisk diperlukan maka bagian di memori yang diperlukan akan disingkirkan diganti bagian disk yang diperlukan itu.

## Deskiprsi Sistem Paging

- Sistem paging mengimplementasikan ruang alamat besar pada memori kecil menggunakan index register, dll. Pemakai seolah-olah mempunyai ruang memori yang sangat besar tanpa mengelola overlay.

## Istilah Sistem Paging

- Alamat Maya : Alamat yang dihasilkan dengan perhitungan indexh register, base register, dan segmen register, dll. Ruang alamat yang dibentuk maya disebut ruang alamat maya.
- Memori management unit (MMU):
	* Chip atau kumpulan chip yang memetakkan alamat maya ke alamat fisik.
- Alamat Nyata:
	* Alamat Nyata adalah alamat yang tersedia di memori utama fisik.
- Page:
	* Unit terkecil ruang alamat maya. Ruang alamat maya process merupakan kelipatan page yang berukuran sama.


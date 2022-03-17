# Konkurensi

- Konkurensi merupakan landasan umum perancangan sistem operasi.
- Proses-proses disebut konkurensi jika proses-proses berada pada saat yang sama.
- Beberapa masalah yang harus diselesaikan:
  - ***Mutual Exclusion***
  - ***Sinkronisasi***
  - ***Deadlock***
  - ***Startvation***
- Konkurensi dapat muncul pada konteks berbeda, antara lain:
  - **Banyak aplikasi**(*multiple application*). Multiprogramming memungkinkan banyak proses sekaligus dijalankan.
  - **Aplikasi terstruktur**. Perluasan prinsip perancangan modular dan pemrograman terstruktur adalah suatu aplikasi dapat secara efektif diimplementasikan sebagai sekumpulan proses.
  - **Struktur sistem operasi** . Kunggulan strukturisasi dapat juga diterapkan ke pemrograman sistem. Sistem operasi bermodelkan client/server menggunakan pendekatan ini.
  - **Untuk Strukturisasi Satu Proses**. Saat ini untuk peningkatan kinerja maka satu proses dapat memiliki banyak thread yang independen. Thread-thread tersebut harus dapat bekerja sama untuk mencapai tujuan proses.

## Prinsip-prinsip Konkurensi

- Alokasi waktu pemroses untuk proses-proses.
- Pemakaian bersama dan persaingan untuk mendapatkan sumber daya.
- Komunikasi antarproses.
- Sinkronisasi aktivitas banyak proses.

## Interaksi Antar Proses

Pada Sistem dengan banyak proses, terdapat 2 kategori interaksi:

1. Proses-proses Saling TIdak Peduli (Independen).
2. Proses-proses Saling Memperdulikan Secara Tidak Langsung.

---

Masalah yang dihadapi proses-proses kongkurensi pada *multiprogramming* dan  *multiprocessing* serupa, yaitu:

- Kecepatan eksekusi proses-proses disistem tidak dapat diprediksi.

---

Kecepatan proses pada sistem tergantung pada beberapa hal, antara lain:

- Aktifitas proses-proses lain.
- Cara sistem operasi menangani interupsi.
- Kebijaksanaan penjadwalan yang dilakukan oleh sistem operasi.

---

Beberapa kesulitan yang dapat muncul, diantaranya adalah

- Pemakaian bersama sumber daya global.
- Pengelolaan alokasi sumber daya agar optimal.
- Pencarian kesalahan pemrograman.

---

Proses-proses konkuren mengharuskan beberapa hal yang harus ditangani, antara lain:

- Sistem operasi harus mengetahui proses-proses yang aktif.
- Sistem operasi harus mengalokasikan dan mendealokasikan beragam sumber daya untuk tiap proses aktif.
- Sistem operasi harus memproteksi data dan sumber daya fisik masing-masing proses dari gangguan proses-proses lain.
- Hasil-hasil proses harus independen terhadap kecepatan relatif proses-proses lain dimana eksekusi dilakukan.

---

Pada dasarnya penyelesaian masalah konkurensi terbagi menjadi 2, yaitu:

- Mengasumsikan adanya memori yang digunakan bersama.
- Tidak mengasumsikan adanya memori yang digunakan bersama.

## Mutual Exclusion

- Mutual exclusion adalah jaminan hanya satu proses yang mengakses sumber daya pada satu interval waktu tertentu.
- Sumber daya yang tidak dapat dipakai bersama pada bersamaan.
- Bagian program yang sedang mengakses *memory* atau sumber daya yang dipakai bersama disebut *critical section*. Jika proses pada *critical section* memblokir proses-proses lain dalam antrian, maka akan terjadi *startvation* dan *deadlock*.
- Kesuksesan proses-proses konkurensi memperlukan pendedinisian *critical section* dan memaksakan mutual exclusion diantara proses-proses konkuren yang sedang berjalan.
- Fasilitas atau kemampuan menyediakan dukungan mutual exclusion harus memenuhi 6 kriteria sbb:

  - Mutual exclusion harus terjadi proses tunggal.
  - Proses yang berada di noncritical section, dilarang mem-blocked proses-proses lain yang ingin masuk critical section.

- Harus dijamin bahwa proses yang ingin masuk *critical section* tidak menunggu selama waktu yang tak terhingga.
- Ketika tidak ada proses pada *critical section*, maka proses yang ingin masuk *critical section* harus ijinkan masuk tanpa waktu tunda.
- Tidak ada asumsi mengenai kecepatan relatif proses atau jumlah yang ada.
- Proses hanya tinggal pada *critical section* selama satu waktu yang berhingga.
- Ada 2 metode yang diusulkan untuk menjamin Mutual Exclusion, antara lain:

  - Metode variable lock: *Locking* adalah salah satu mekanisasi pengontrol konkuren.
  - Metode bergantian secara ketat, metode ini melakukan relatif terhadap variable yang berfungsi untuk memunihi critical section.

## Sinkronisasi

- Akses-akses yang dilakukan secara bersama-sama ke data yang sama, dapat menyebabkan data menjadi tidak konsisten.
- Untuk menjaga agar data tetap konsisten, dibutuhkan mekanisme-mekanisme untuk memastikan pemintaan eksekusi dari proses yang bekerja.
- Race Condition : Situasi dimana beberapa proses mengakses dan memanipulasi data secara bersamaan. Nilai terakhir dari data bergantung dari proses mana yang selesai terakhir.
- Untuk menghindari Race Condition, proses-proses secara bersamaan harus disinkronisasi.

## Kasus Produsen-konsumer

- Dua proses berbagai sebuah buffer dengan ukuran yang tetap. Salah satunya produser, meletakkan informasi ke buffer yang lainnya. Konsumen mengambil informasi dari buffer.

## Race Condition

- Race Condition adalah situasi dimana beberapa proses mengakses dan memanipulasi data bersama pada saat besamaan.
- Nilai akhir dari data bersama tersebut tergantung pada proses yang terakhir selesai.
- Untuk mencegah Race Condition, proses-proses yang berjalan bersamaan haus di disinkronisasi.
- Dalam beberapa sistem operasi, proses-proses yang berjalan bersamaan mungkin untuk membagi beberapa penyimpanan umum, masing-masing dapat melakukan proses baca *(read)* dan proses tulis *(write)*.
- Penyimpanan bersama (shared storage) mungkin beberapa di memori utama atau berupa sebuah berkas bersama, lokasi dan memori bersama tidak merubah kealaminan dari komunikasi atau masalah yang muncul.

## Critical Section

- **Bagaimana menghindari *race conditions*?**

  - Kunci untuk mencegah masalah ini adalah menemukan beberapa jalan untuk mencegah lebih dari satu proses untuk melakukan proses writing dan reading kepada shared data pada saat yang sama.

- Masalah menghindari mencegah *race conditions* dapat juga diformulasikan secara abstrak.
- Walau pun dapat mencegah *race conditions*, tapi tidak cukup untuk melakukan kerjasama antar proses secara pararel dengan baik dan efisien dalam menggunakan shared data.
- 4 Kondisi agar menghasilkan solusi yang baik:

  * Tidak ada dua proses secara bersamaan.
  * Tidak ada asumsi mengenai kecepatan.
  * Tidak ada proses yang berjalan, yang dapat mengeblok proses lain.
  * Tidak ada proses yang menunggu.

---

Problem klasik Sinkronisasi ada 3 yaitu:

1. **Problem Bounded buffer.**
2. **Problem Reades and Writer.**
  * Problem *readers-writers* adalah problem yang memodelkan proses yang mengakses database.
  * Sebagai contoh sebuah sistem pemesanan sebuah perusahaan penerbangan, dimana banyak proses berkompetisi berharap untuk membaca *(read)* dan menulis *(write)*.
3. **Problem Dining Philosopehers.**
  * Program ini menggunakan sebuah array dari semaphore yang dapat ditahan.

## Deadlock

- Deadlock adalah suatu kondisi dimana dua proses atau lebih tidak dapat meneruskan eksekusinya oleh pemroses.
- Pada umumnya *deadlock* terjadi karena proses mengalami *startvation*.
- Kondisi yang dapat menimbulkan terjadinya deadlock:
  * *Mutual exclusion.*
  * *Hold & Wait.*
  * *No Preemtion.*
  * *Circular Wait Condition.*
- Metode mengendalikan Deadlock :
  * Menggunakan suatu protocol.
  * Mengijinkan sistem mengalami deadlock.
  * Mengabaikan semua masalah.
- Penghindaran Deadlock:
  * State Selamat.
  * State Tak Selamat *(unsafe state)*
- Mendeteksi dan memulihkan deadlock:
  * Traminasi Proses.
  * *Resources Preemption.*

## Startvation

- Startvation adalah keadaan dimana pemberian akses bergantian terus menerus, dan ada suatu proses yang tidak menadapatkan gilirannya.


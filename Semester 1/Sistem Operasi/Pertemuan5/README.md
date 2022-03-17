# Komponen Sistem Operasi

1. Managemen Proses
2. Managemen Memori Utama
3. Managemen I/O
4. Management Penyimpanan Sekunder
5. Jaringan
6. Sistem Proteksi
7. Command-Interpreter System

## Management Proses

- Proses adalah sebuah program yang sedang dijalankan (eksekusi).
- Suatu proses memerlukan sumber daya pada saat eksekusi:
  - *CPU time* : Jumlah waktu yang digunakan unit pemrosesan pusat unutk memproses instruksi dari program komputer atau sistem operasi
  - Memori, berkas dan peranti I/O
- Sistem operasi bertangung jawab terhadap aktifitas yang berhubungan dengan manajemen proses.
  - Pembuatan dan penghapusan proses.
  - Penundaan dan pelanjutan proses.
  - Penyedia mekanisme unutk : Sinkronisasi antar proses, Komunikasi antar proses, Penanganan Deadlock

**DeadLock**
- Suatu kondisi dimana dua proses atau lebish saling menunggu proses yang lain unutk melepaskan resource yang sedang dipakai.

## Management Memori

- Memori sebagai tempat penyimpanan instruksi/data dari program.
- Penyimpanan yang cepat sehingga dapat mengimbangi kecepatan eksekusi instruksi CPU.
- Alamat digunakan unutk mengakses data (shared oleh *CPU dan I/O devices*)

- Umumnya main memori bersifat *"volatile"* tidak permanen.
- Isinya akan hilang jika komputer dimatikan.
- Sistem operasi bertangung jawab untuk aktifitas berikut yang berhubungan dengan manajemen memori:
  - melacak pemakaian memori (*siapa dan berapa besar?*).
  - Memilih program, menayangkan, diload ke memori ketika bisa digunakan.
  - alokasi dan dealokasi memori sesuai yang dibutuhkan.

## Managemen File

- Berkas adalah kumpulan informasi yang berhubungan (sesuai dengan tujuan pembuat berkas tersebut). Biasanya berkas merepresentasikan program dan data.
- Sistem operasi bertangung jawab unutk aktifitas yang berhubungan dengan manajemen berkas.
  - pembuatan dan penghapusan berkas.
  - pembuatan dan penghapusan direktori.
  - Mendukung primitif untuk manipulasi berkas dan direktori.
  - Memerakan berkas pada sistem sekunder.
  - Backup berkas pada media penyimpanan yang stabil (*nonvolatiole*).

## Managemen Sistem I/O

- Sistem I/O terdiri dari:
  - Sistem *buffer* : menampung sementara data dari ke peranti I/O.
  - *Spooling* : melakukan penjadwalan pemakaian I/O sistem supaya lebih efisien (antrian dsb).
  - Antarmuka devices-driver yang umum : menyediakan device driver yang umum sehingga sistem operasi dapat seragam (buka, baca, tulis, tutup)
  - Drivers untuk spesifik perangkat keras : menyediakan driver untuk melakukan operasi rinci/detail untuk perangkat keras tertentu.

## Managemen Penyimpanan Sekunder

- Penyimpanan sekunder : Penyimpanan permanen
  - Karena memori utama bersifat sementara dan kapasitasnya terlalu kecil, maka unutk menyimpan semua data dan program secara permanen, sistem komputer harus menyediakan penyimpanan sekunder unutk dijadika *backup* memori utama.
- Sistem Operasi bertangung jawab dalam aktifitas yang berhubungan dengan manajemen penyimpanan sekunder:
  - manajemen ruang kosong.
  - alokasi penyimpanan.
  - penjadwalan disk.

## Jaringan (Sistem Terdistribusi)

- Sistem Terdistribusi adalah kumpulan prosesor yang tidak berbagi memori atau clock. Setiap Prosessor memiliki memori lokal masing masing.
- Prosesor-prosesor dalam sistem terhubung dalam jaringan komunikasi.
- Sistem terdistribusi menyediakan akses pengguna ke bermacam-macam sumber daya. Akses tersebut menyebabkan:
  - Peningkatan kecepatan komputasi.
  - Peningkatan penyediaan data.
  - Peningkatan keandalan.

## Sistem Proteksi

- Proteksi berkenaan dengan mekanisme unutk mengontrol aksesyang dilakukan oleh program prosesor, pengguna sistem maupun pengguna sumber daya.
- Mekanisme Proteksi harus:
  - Membedakan antara penggunaan yang sah dan yang tidak sah.
  - spesifikasi kontrol untuk diterima.
  - menyediakan alat unutk pemberlakuan sistem.

## Command-Interperter System

- Sebuah program yang membaca perintah *textual* dari pengguna atau dari file dan mengeksekusinya. Beberapa perintah dapat dieksekusi langsung dalam inerpreter itu sendiri(misalnya variable pengaturan atau konstruksi kontrol) dan dapat menyebabkan memuat atau menjalankan file lainnya.
- Program yang membaca instruksi dan mengartikan *control statements* (keinginan pengguna) umumnya disebut:
  - *control-card interpreter*
  - *command-line interpreter*
  - *UNIX shell*.

- *Command-interpreter System* sangat bervariasi dari satu sistem operasi ke sistem operasi lain dan disesuaikan dengan tujuan dan teknologi I/O peranti yang ada.
  - Contohnaya : CLI, Windowns, Pen-based(touch), bash, dan lain-lain.

## Layanan Sistem Operasi

- **Eksekusi program** : *meload* program ke memory dan menjalankannya(*run*).
- **Operasi I/O**: pengguna tidak bisa mengontrol I/O secara langsung (untuk efisien dan keamanan), sistem harus bisa menyediakan mekanisme untuk melakukan operasi I/O.
- **Manipulasi Sistem Berkas**: membaca, menulis, membuat, dan menghapus file.
- **Komunikasi**: pertukaran informasi.
- **Deteksi Error**: mempertahankan kestabilan dengan mendeteksi error (pada CPU, perangkat keras memori, I/O, program pengguna) dan jika bisa, memperbaikinya.

## Pelayanan Tambahan

- Lebih diarahkan kepada upaya untuk menjaga efisiensi sistem, bukan unutk membantu pengguna.
- **Alokasi sumber daya**: mengalokasikan sumber daya kepada beberapa pengguna atau tugas yang dijalankan pada saat yang bersamaan.
- ***Accounting***: menentukan beberapa banyak dan beberapa lama users menggunakan sumber daya sistem.
- **Proteksi**: menjaga semua akses ke sumber daya sistem terkontrol

## System Calls

- *System calls* menyediakan antarmuka antara proses(program yang sedang dijalankan) dan sistem operasi.
- Biasanya tersedia sebagai instruksi bahasa rakitan.
- Beberapa sistem mengizinkan *system calls* dibuat langsung dari bahasa pemrograman tigkat tinggi.
- Beberapa bahasa pemrograman tigkat tinggi(C, C++) telah didefinisikan untuk menggantikan bahasa rakitan untuk sistem pemrograman.

---

- Tiga metode umum yang digunakan dalam memberikan parameter kepada sistem operasi.
  - Melalui register.
  - Menyimpan parameter dalam blok atau tabel pada memori dan alamat blok tersebut diberikan sebagai parameter dalam register.
  - Menyimpan parameter (*push*) kedalam *stack*(oleh program), dan melakukan *pop off* pada *stack*(oleh sistem operasi).

## Jenis System Calls

1. Pengendalian Proses.
2. Manajemen Berkas.
3. Manajemen Peranti.
4. Mempertahankan Informasi.
5. Komunikasi.

## Pengendalian Proses

- Selesai, Abort.
- Load, Eksekusi.
- Membuat dan Mengakhiri Proses.
- Mengambil dan Mengakhiri Atribut Proses.
- Menunggu Waktu.
- *Wait Event, Signal Event*
- Alokasi dan Pengosongan Memori

## Management Berkas

- Membuat dan menghapus berkas.
- Membuka dan menutup berkas.
- *Read, write, reposition*.
- Mengambil dan mengeset atribut berkas.

## Manajement Peranti

- Meminta peranti, melepaskan peranti.
- *Read, write, reposition*.
- Mengambil dan mengeset attribut peranti.

## Informasi Maintance

- Mengambil dan mengeset waktu dan tanggal.
- Mengambil dan mengeset sistem data
- Mengambil proses, berkas atau atribut peranti.
- Mengeset proses, berkas atau atribut peranti.

## Komunikasi

- Menciptakan, menghapus hubungan komunikasi.
- Mengirim dan menerima pesan.
- Menstranfer status informasi.
- *Attach* atau *detach remote device*.


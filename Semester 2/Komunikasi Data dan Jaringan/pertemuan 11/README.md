# Setting Ip & Install Active directory

## Definisi Jaringan Komputer

- Jaringan Komputer merupakan sekelompok komputer otonom yang komunikasi mealui media komunikasi sehingga dapat saling berbagi inforamsi, program-program, penggunaan perangkat keras secara bersama (interkoneksi sejumlah komputer).
- Jaringan komputer merupakan kumpulan sejumlah terminal komunikasi yang berbeda di berbagai lokasi yang terdiri dari lebih satu komputer yang saling berhubungan.

## Latar Belakang Jaringan Komputer

- Kebutuhan akan informasi yang cepat dan akurat.
- Penggabungan antara teknologi komputer sebagai pengolah data dengan teknologi komunikasi.

## Manfaat Jaringan Kopmuter

- Jaringan untuk perusahaan atau organisasi
- Jaringan untuk umum.

### Jaringan Untuk perusahaan atau organisasi

- Resource Sharing
  - Bertujuan agar program, peralatan, khususnya data dapat digunakanoleh setiap orang yang ada pada jaringan tanpa terpengaruh oleh lokasi _resource_ dan pemakai.
- Reliabilitas Tinggi
  - Adanya sumber-sumber alternatif pengganti jika terjadi masalah pada salah satu perangkat dalam jaringan.
- Lebih ekonomis
- Skalabilitas
  - Kemampuan untuk meningkatkan kinerja sistem secara berangsur-angsur sesuai dengan beban pekerjaan dengan hanya menambah sejumlah prosessor.
- Media komunikasi

## Jaringan untuk umum

- Akses ke internet yang berada di tempat jauh.
- Komunikasi ke orang-orang.
- Hiburan interaktif.

## Perangkat keras jaringan

- Multi I/O
- NIC (Network Interface Card)
- Router
- Bridge
- Gateway
- Repeater
- Modem
- Media (kabel, Gelombang Radio)
- HUB
- Switch Hub

## Klasifikasi Jaringan Komputer Berdasarkan Metode Transmisi

- Broadcast
  
  - Jaringan broadcast memiliki saluran komunikasi tunggal yang dipakai bersama-sama oleh semua mesin yang ada pada jaringan tersebut.
  - Pesan-pesan berukuran kecil, disebut paket, yang dikirimkan oleh suatu mesin akan diterima oleh mesin-mesin lainnya. _Field_ alamat pada sebuah paket berisi keterangan tentang kepada siapa paket tersebut ditujukan.

- Point to Point
  
  - Terdiri dari beberapa koneksi pasangan individu dari mesin-mesin.
  - Untuk pergi dari sumber ke tempat tujuan, sebuah paket pada jaringan jenis ini mungkin harus melalui satu atau lebih mesin-mesin perantara.
  - Seringkali harus melalui banyak route yang mungkin berbeda jaraknya. Karena itu algoritma routing memegang peran penting pada jaringan point-to-point.

## Klasifikasi Jaringan Komputer Berdasarkan Geografis

- Local Area Network (LAN) (10m - 1km)
  
  - Ukuran LAN mempunyai keterbatasan ukuran
  - Teknologi

- Metropolitan Area Network (MAN) (10km)
  
  - Seperti LAN, cuma ukurannya lebih besar.
  - Biasanya digunakan oleh perusahaan-perusahaan.
  - Lingkungannya dalam 1 kota.

- Wide Area Network (WAN) (100km - 1000km)
  
  - Lingkungan dalam negara atau benua.
  - Host dihubungkan dengan sebuah subnet.
  - Tugas sebnet: Pembawa pesan dari satu host ke host lainnya.
  - Komponen subnet: Kabel transmisi dan _element switching_.
  - Element Switching sering disebut juga sebagai:
    - Packet switching node.
    - INtermediate system.
    - Data swithing exchange
    - Router

- Jaringan Tanpa Kabel (Wireless)
  
  - Manfaatnya: kantor portable, armada truk, taksi, bis, kepentingan militer di medan perang.
  - Kelemahannya: lambat dari pada kabel (umumnya 2 Mbps), laju kesalahanya lebih besar, transmisi yang berbeda dapat mengganggu.

- Internet (±10.000km)
  
  - Kumpuan jaringan teriniterkoneksi disebut internetwork atau internet.
  - Bentuk internet yang umum adalah kumpulan dari LAN yang dihubungkan oleh WAN.
  - Perbedaan yang nyata antara subnet dan WAN dalam kasus ini adalah keberadaan host.
    - Blia didalam sistem terdapat kurva tertutup yang hanya terdiri dari router-router, maka itulah subnet.
    - Bila sistemnya terdiri dari router dan host, maka itulah WAN.

## Sistem Koneksi dalam jaringan komputer

- Peer to Peer
  - Peer artinya rekan sekerja.
  - Adalah Komputer suatu model di mana setiap PC dapat memakai resource pada PC lain atau memberikan resourcenya untuk dipakai PC lain.
  - Dikenal sebagai workgroup. Dimana setiap komputer dalam satu jaringan dikelompokkan dlaam satu kelompok kerja.
- Client to Server
  - Selain pada jaringan lokal, juga diterapkan dengan teknologi inter. Dimana ada suatu unit yang berfungsi sebagai server yang memberikan layanan bagi komputer lain, dan client yang hanya minta layanan dari server.
  - Client hanya bisa menggunakan resource yang disediakan oleh server sesuai dengan otoritas yang diberikan oleh administrator.

## Jenis Layanan CLinet - Server

- File Server. Memberikan layanan fungsi pengolahan file.
- Print Server. Memberikan fungsi pencetakan.
- Database Server. Prosess-proses fungsional mengenai database dijalankan pada mesin ini dan stasiun lain dapat minta pelayanan.
- DIP (Document Information Processing). Memperikan layanan fungsi penyimpanan, management, dan pengambilan data.

## Jaringan Kopmuter dan sistem terdistribusi

- Adalah sekumpulan kopmuter yang saling terkoneksi dengan media transmisi, dan terjadi proses transfer file.

## Perbedaan Jaringan Komputer dan Sistem Terdistribusi

### Jaringan Kopmuter

- Komputer yang terhubung merupakan gabungan dari beberapa workstation atau juga gabungan komputer server dan client
- Beberapa komputer terhubung agar dapat sharing, namun tiap pekerjaan ditangani sendiri-sendiri oleh komputer yang meminta dan dimintai layanan. Server hanya melayani permintaan sesuai antrian yang sudah diatur sistem.
- Masing-masing workstation (Peer to Peer) tidak membutuhkan komputer server khusus untuk menangani seluruh pekerjaan. Antar workstation bisa saling bertukar file dan resource yang dimiliki, sesuai permission yang diatur administrator.
- Masing-masing user di workstation dapat melihat proses layanan yang sedang terjadi. User harus login pada server apabila ingin memanfaatkan resource yang dimiliki oleh server.
- User mempunyai ID & password untuk login. Umumnya ID login server tidak bisa digunakan bersama-sama. Kecuali ada policy dari admin.
- Keberadaan sejumlah komputer dalam jaringan tidak harus transparan di satu lokasi, sehingga secara fisik tidak dapat dilihat oleh user lain dalam jaringan.
- Spesifikasi hardware server tidak harus lebih baik dari client.
- Merupakan sistem yang menggabungkan kinerja perangkat dan aplikasi dari physical layer sampai dengan application layer.

### Sistem Terdistribusi

- Komputer yang terhubung terdiri dari host (komputer utama) dan terminal-terminal (komputer yang terhubung dengan host)
- Beberapa host komputer terhubung agar dapat mengerjakan sebuah/beberapa pekerjaan besar bersama. Host melayani beberapa terminal & melakukan proses berdasarkan input dari terminal-terminal
- Masing-masing terminal membutuhkan host untuk dapat aktif melakukan pekerjaan dan berkomunikasi dengan terminal lain. Antar terminal tidak dapat sharing file atau resource tanpa campur tangan host.
- Masing-masing user di workstation tidak dapat melihat proses layanan yang sedang terjadi.
- User mempunyai ID & password untuk login. Umumnya ID login server bisa digunakan bersama-sama. Kecuali ada policy dari admin
- Keberadaan sejumlah komputer dalam jaringan harus transparan di satu lokasi, sehingga secara fisik dapat dilihat oleh user lain yang berada dalam jaringan.
- Spesifikasi hardware host harus lebih baik dari terminal.
- Merupakan sistem perangkat lunak yang dibuat & bekerja pada lapisan atas sebuah sistem

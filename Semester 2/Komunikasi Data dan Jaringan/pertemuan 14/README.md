# Install Active Directory dan Manajemen User

## Definisi Jaringan Komputer

- Jaringan Komputer merupakan sekelompok komputer otonom yang saling berhubungan antara atu dan lainnya menggunakan protokol komunikasi sehingga dapat saling berbagi informasi, program-program, penggunaan perangkat keras secara bersama (interkoneksi sejumlah komputer).
- Jaringan komputer merupakan kumpulan sejumlah terminal komunikasi yang berada di berbagai lokasi yang terdiri dari lebih satu komputer yang saling berhubungan.

## Latar Belakang Jaringan Komputer

- Kebutuhan akan informasi yang cepat dan akurat.
- Penggabungan antara teknologi komputer sebgai pengolah data dengan teknologi komunikasi.

## Manfaat Jaringan Komputer

- Jaringan untuk perusahaan atau organisasi.
- Jaringan untuk umum.

### Jaringan untuk Perusahaan atau Organisasi

- Resource Sharing.
  - Bertujuan agar seluruh program, peralatan, khususnya data dapat digunakan oleh setiap orang yang ada pada jaringan tanpa terpengaruh oleh lokasi _resource_ dan pemakai.
- Reliabilitas Tinggi.
  - Adanya sumber-sumber alternatif pengganti jika terjadi masalah pada salah satu perangkat dalam jaringan.
- Lebih ekonomis.
- Skalabilitas.
  - Kemampuan untuk meningkatakan kinerja sistem secara berangsur-angsur sesuai dengan beban pekerjaan dengan hanya menambah sejumlah processor.
- Media Komunikasi.

### Jaringan Untuk Umum

- Akses ke informasi yang berada di tempat jauh.
- Komunikasi ke orang-orang.
- Hiburan interaktif.

## Perangkat Keras Jaringan

- Multi I/O.
- NIC _Network Interface Card_ .
- Router.
- Bridge.
- Gateway.
- Repeater.
- Modem.
- Media (Kabel, Gelombang Radio).
- HUB.
- Switch Hub.

## Klasifikasi Jaringan Komputer Berdasarkan Metode Transmisi

- Broadcast.
  - Jaringan broadcast memiliki salluran komunikasi tunggal yang dipakai bersama-sama oleh semua mesin yang ada pada jaringan tersebut.
  - Pesan-pesan berukuran kecil, disebut paket, yang dikirimkan oleh suatu mesin akan diterima oleh mesin-mesin lainnnya. _Field_ alamat pada sebuah paket berisi keterangan tentang kepada siapa paket ditujukan.
- Point to Point.
  - Teridi dari beberapa koneksi pasangna individu dari mesin-mesin.
  - Untuk pergi dari sumber ke tempat tujuan, sebuah paket pada jaringan jenis ini mungkin harus melalui satu atau lebih mesin-mesin perantara.
  - Seringkali harus melalui banyak route yang mungkin beberapa jaraknya. Karena itu algoritama routing memegang peranan penting pada jaringan point to point.

## Klasifikasi Jaringan Komputer Berdasarkan Geografis

- Local Area Network (LAN) (10m - 1Km)
- Metropolitan Area Network (MAN) (+10Km)
- Wide Area Network (WAN) (100Km - 1000Km)
- Jaringan Tanpa Kabel (Wireless)
- Internetwork (10.000Km)

### Local Area Network (LAN)

- Ukuran : LAN mempunyai keterbatasan ukuran.
- Teknologi transmisi : LAN tradisional mempunyai kecepatan mulai 1 sampai 100Mbps. LAN modern mempunyai kecepatan sampai ratusan Mbps.
- Topologi :
  - Bus/Linear : mekanisme yang digunakan untuk mengatur pengiriman pesan disebut **IEEE 802.3** atau Ethernet.
  - Ring : **IEEE 802.5** (Token Ring IBM)

### Metropolitan Area Network (MAN)

- Seperti LAN, cuma ukurannya lebih besar.
- Biasanya digunakan oleh perusahaan-perusaan.
- Lingkungan dalam 1 kota.

### Wide Area Network (WAN)

- Lingkungan dalam negara atau benua.
- Host dihubungkan dengan sebuah subnet.
- Tugas subnet : pembawa pesan dari satu host ke host lainnya.
- Komponen subnet : kabel transmisi dan _element switching_.
- _Element Switching_ sering juga disebut sebagai:
  - Packet switching node.
  - Intermediate system.
  - Data switching exchange.
  - Router.

### Jaringan Tanpa Kabel (Wireless)

- Manfaatnya : kantor portable, armada truk, taksi, bis, kepentingan militer di medan perang.
- Kelemahannya : Lambat daripada kabel (mumnya 2Mbps), laju kesalahan lebih besar, transmisi yang berbeda dapat mengganggu.

### Internetwork

- Kumpulan jaringan yang terinterkoneksi disebut Internetwork atau Internet.
- Bentuk internet yang umum adalah kumpulan dari LAN yang dihubungkan oleh WAN.
- Perbedaan yang nyata antara subnet dan WAN dalam kasus ini adalah keberadaan host.
  - Bila di dalam sistem terdapat kurva tertutup yang hanya terdiri dari router-router, maka itulah subnet.
  - Bila sistemnya terdiri dari router dan host, maka itulah WAN.

## Sistem Koneksi Dlaam Jaringan komputer

- Peer to Peer
- Client to Server

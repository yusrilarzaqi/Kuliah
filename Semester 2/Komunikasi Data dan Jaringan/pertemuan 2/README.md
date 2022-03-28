# Komunikasi Data & Jaringan Komputer

## Definisi Jaringan Komputer

- Jaringan komputer merupakan sekelompok komputer otonom yang saling berhubungan antara satu dan lainnya menggunakan protokol komunikasi melalui media komunikasi sehingga dapat saling berbagi informasi, program-program, penggunaan perangkat keras secara bersama (interkoneksi sejumlah komputer).
- Jaringan komputer merupakan kumpulan sejumlah terminal komunikasi yang berada di berbagai lokasi yang terdiri dari lebih satu komputer yang saling berhubungan.

## Latar Belakang Jaringan Komputer

- Kebutuhan akan informasi yang cepat dan akurat.
- Penggabungan antara teknologi komputer sebagai pengolah data dengan teknologi komunikasi.

## Manfaat Jaringan Komputer

- Jaringan untuk perusahaan atau organisasi.
- Jaringan untuk umum.

## Jaringan Untuk Perusahaan Atau Organisasi

- Resource Sharing
  * Bertujuan agar seluruh program, peralatan, khususnya data dapat digunakan oleh setiap orang yang ada pada jaringan tanpa terpengaruh oleh lokasi *resource* dan pemakai.
- Reliabilitas Tinggi
  * Adanya sumber-sumber alternatif pengganti jika terjadi masalah pada salah satu perangkat dalam jaringan.
- Lebih ekonomis
- Skalabilitas
  * Kemampuan untuk meningkatkan kinerja sistem secara berangsur-angsur sesuai dengan beban pekerjaan dengan hanya menambah sejumlah prosesor.
- Media Komunikasi

## Jaringan Untuk Umum

- Akses ke informasi yang berada di tempat jauh.
- Komunikasi ke orang-orang.
- Hiburan interaktif.

## Perangkat Keras Jaringan

- Multi I/O
- NIC (Network Interface Card)
- Router
- Bridge
- Gateway
- Repeater
- Modem
- Media (kabel, Gelombang Radio)
- HUB
- Switch HUB

## Klasifikasi Jaringan Komputer Berdasarkan Metode Transmisi

- Broadcast
- Point to Point
- Jaringan broadcast memiliki saluran komunikasi tunggal yang dipakai bersama-sama oleh semua mesin yang ada pada jaringan tersebut.
- Pesan-pesan berukuran kecil, disebut paket, yang dikirimkan oleh suatu mesin akan diterima oleh mesin-mesin leinnya. *Field* alamat pada sebuah paket berisi keterangan tetang kepada siapa paket tersebut ditujukan.

### Broadcast

- Jaringan broadcast memiliki saluran komunikasi tugal yang dipakai bersama-sama oleh semua mesin yang ada pada jaringan tersebut.
- Pesan-pesan dikirimkan oleh suatu mesin akan diterima oleh mesin-mesin lainnya. *Field* alamat padasebuah paket berisi keterangan tentang kepada siapa paket tersebut ditunjukan. 

### Point to Point

- Terdiri dari beberapa koneksi pasangan individu dari mesin-mesin.
- Untuk pergi dari sumber ke tempat tujuan, sebuah paket pada jaringan jenis ini mungkin melalui sat atau lebih mesin-mesin perantara.
- Seringkali harus melalui banyak route yang mungkin beberapa jaraknya. Karena itu algoritma routing memegang peranan penting pada jaringan point-to-point.

## Klasifikasi Jaringan Komputer Berdasarkan Geografis

- Local Area Network (LAN) (10m - 1km)
- Metropolitan Area Network (MAN) (10km)
- Wide Area Network (WAN) (100-1000km)
- Jaringan Tanpa kabel.
- Internetwork (10.000km)

### Local Area Network (LAN)

- Ukuran: LAN mempunyai keterbatasan ukuran.
- Teknologi transmisi: LAN tradisional mempunyai kecepatan mulai 1 sampai 100 Mbps. LAN modern mempunyai kecepatan sampai ratusan Mbps.
- Topologi:
  * Bus/Linear, mekanisme yang digunakan untuk mengatur pengiriman pesan disebut IEEE 802.3 atau Ethernet.
  * Ring -> IEEE 802.5 (token ring IBM).

### Metropolitan Area Network (MAN)

- Seperti LAN, cuma ukurannya lebih besar.
- Biasanya digunakan oleh perusahaan-perusahaan.
- Lingungannya dalam 1 kota.

### Wide Area Network

- Lingungannya dalam negara atau benua.
- Host dihubungkan dalam sebuah kabel subnet.
- Tugas subnet:pembawa pesan dari satu host ke host lainnya.
- Komponen subnet: kabel transmisi dan *element switching* 
- **Element Switching** sering juga disebut sebagai:
  * Packet switching mode.
  * Intermediate system.
  * Data switching exchange.
  * Router.

### Jaringan Tanpa kabel

- Manfaatnya kantor protrable, armada truk, taksi, bis, kepentingan militer di medan perang.
- Kelemahannya lambat daripada kabel (umumnya 2 Mbps), laju kesalahan lebih besar, transmisi yang berbeda dapat mengganggu.

### Internetwork

- Kumpulan jaringan yang terinaterkoneksi disebut Internetwork atau internet.
- Bentuk internet yang umum adalah kumpulan dari LAN yang dihubungkan oleh WAN.
- Perbedaan yang nyata antara subnet dan WAN dalam kasus ini adalah keberadaan host.
  * Bila di dalam sistem terdapat kurva tertutup yang hanya terdiri dari router-router, maka itullah subnet.
  * Bila sistemnya terdiri dari router dan host, maka itulah WAN.

## Sistem Koneksi dalam jaringan Komputer

- Peer to Peer
- Client - Server

### Peer to Peer

- Peer artinya rekan sekerja.
- Adalah jaringan komputer yang terdiri dari beberapa komputer.
- Adalah suatu model di mana setiap PC dalpat memakai resource pada PC lain atau memberikan resourcenya untuk dipakai PC lain.
- Dikenal sebagai workgroup. Dimana setiap komputer dalam satu jaringan dikelompokan dalam satu kelompok kerja.

### Client - Server

- Selain pada jaringan lokal, juga dapat diterapkan dengan teknologi internet. Dimana ada suatu unit yang berfungsi sebagai server yang memberikan layanan bagi komputer lain, dan client yang hanya meminta layanan dari server.
- Client hanya bisa menggunakan resource yang disediakan oleh server sesuai dengan otoritas yang diberikan oleh administrator.

## Jenis Layanan Client - Server

- File Server. Memberikan layanan *fungsi pengelolaan file*.
- Print Server. Memberikan layanan *fungsi percetakan*.
- Database Server. Proses-proses fungsional mengenai database dijalankan pada mesin ini dan stasiun lain dapat minta pelayanan.
- DIP (Document Information Processing). Memberikan layanan *fungsi penyimpanan, manajemen, dan pengambilan data*.

## Jaringan Komputer dan Sistem Terdistribusi

- Adalah sekumpulan komputer yang saling terkoneksi dengan media transmisi

## Perbedaan Jaringan Komputer dan Sistem Terdistribusi

| Jaringan Komputer   | Sistem Terdistribusi    |
|--------------- | --------------- |
| Komputer yang terhubung merupakan gabungan dari beberapa workstation atau juga gabungan komputer server dan client   | Komputer yang terhubung terdiri dari host (komputer utama) dan terminal-terminal (komputer yang terhubung dengan host)   |
| Beberapa komputer terhubung agar dapat sharing, namun tiap pekerjaan ditangani sendiri-sendiri oleh komputer yang meminta dan dimintai layanan. Server hanya melayani permintaan sesuai dengan antrian yang sudah diatur sistem.   | Beberapa host komputer terhubung agar dapat mengerjakan sebuah/beberapa pekerjaan besar besama. Host melayani beberapa terminal & melakukan proses berdasarkan input dari terminal-terminal.   |


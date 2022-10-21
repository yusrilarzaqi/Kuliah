#Troubleshooting

- Komputer sudah merupakan alat bantuk yang tergolong penting saat ini, kita ambil salah satu contoh pada kegiatan perkantoran, tentunya dengan adanya komputer maka pekerjaan dapat diselesaikan dengan lebih cepat.
- Sebagai pengguna atau pemakai komputer tentunya kita juga pernah mengalami masalah dengan komputer.
- Hal tersebut dapat diakibatkan adanya ketidaksesuaian dari komponen dasar komputer itu sendiri yang biasanya berkaitan dengan Software (perangkat lunak atau aplikasinya), Hardware (perangkat keras) atau Brainware (si pemakai komputer).

## Pengertian Troubleshooting Komputer

- Dalam dunia komputer, segala sesuatu masalah yang berhubungan dengan komputer disebut Troubleshooting dan timbulnya masalah dalam komputer tentu ada sebabnya.
- Pada kesempatan ini kita akan sedikit belajar untuk mendeteksi masalah pada komputer Anda terutama yang berhubungan dengan Hardware.

- Untuk permasalahan dengan Software sebaiknya Anda lakukan pendeteksian sederhana dahulu seperti pemeriksaan file-file yang berhubungan dengan Software atau spesifikasi permintaan (requirement) dari Software.
- Apabila permasalahannya cukup rumit, sebaiknya Anda install ulang saja Software tersebut, karena akan terlalu rumit untuk memperbaiki sebuah Software

## Teknik dalam Troubleshooting

- Terdapat dua macam teknik dalam mendeteksi permasalahan dalam komputer, yaitu teknik Forward dan teknik Backward.
- Untuk lebih mengenal kedua teknik tersebut, ada baiknya kita bahas terlebih dahulu definisi dari masing-masing teknik tersebut.

### Teknik Forward

- Sesuai dengan namanya, maka dalam teknik ini segala macam permasalahan dideteksi semenjak awal komputer dirakit dan biasanya teknik ini hanya digunakan oleh orang-orang dealer komputer yang sering melakukan perakitan komputer.
- Pada teknik ini hanya dilakukan pendeteksian masalah secara sederhana dan dilakukan sebelum komputer dinyalakan (dialiri listrik).
- Untuk mempermudah silakan simak contoh berikut :
  - Setelah komputer selesai dirakit, maka dilakukan pemeriksaan pada semua Hardware yang telah terpasang, misalnya memeriksa hubungan dari kabel Power Supply ke soket power pada Motherboard.
  - Untuk casing ATX, kita periksa apakah kabel Power Switch sudah terpasang dengan benar.

### Teknik Backward

- Hampir sama dengan teknik sebelumnya, teknik Backward adalah teknik untuk mendeteksi kesalahan pada komputer setelah komputer dinyalakan (dialiri listrik).
- Teknik lebih banyak digunakan karena pada umumnya permasalahan dalam komputer baru akan timbul setelah “jam terbang” komputernya sudah banyak dan ini sudah merupakan hal yang wajar.
- Dapat kita ambil beberapa contoh sebagai berikut :
  1. Floppy Disk yang tidak dapat membaca disket dengan baik.
  2. Komputer tidak mau menyala saat tombol power pada casing ditekan.

## Table Pendeteksian Masalah

- Setelah penjelasan sederhana dari kedua teknik tersebut penulis akan membahas lebih dalam lagi ke teknik Backward, karena bagi pengguna komputer rumahan tentunya teknik ini lebih banyak akan digunakan ketimbang teknik Forward.
- Untuk lebih mempermudah dalam pendeteksian masalah pada komputer, ada beberapa analisa yaitu sebagai berikut :

### Analisa Pengukuran

- Pada tahapan ini, pendeteksian masalah dengan cara mengukur tegangan listrik pada komponen. Gunakan alat bantu seperti multitester untuk mengukur tegangan yang diterima atau diberikan komponen tersebut.
- Contoh : Mengukur tegangan listrik yang diterima oleh Power Supply, lalu mengukur tegangan yang diberikan oleh Power Supply ke komponen lainnya.

### Analisa Suara

- Pada tahapan ini pendeteksian masalah menggunakan kode suara (beep) yang dimiliki oleh BIOS dan dapat kita dengar lewat PC Speaker.
- Pastikan kabel PC Speaker sudah terpasang dengan baik. Kemungkinan letak permasalahan ada di komponen nomor 4 dan 5.
- Untuk mempermudah pengenalan kode suara tersebut, silakan simak keterangan berikut :
  1. Bunyi beep pendek satu kali, artinya sistem telah melakukan proses Boot dengan baik.
  2. Bunyi beep pendek 2 kali, artinya ada masalah pada konfigurasi atau seting pada CMOS.
  3. Bunyi beep panjang 1 kali dan pendek 1 kali, artinya ada masalah pada Motherboard atau DRAM.
  4. Bunyi beep panjang 1 kali dan pendek 2 kali, artinya ada masalah pada monitor atau VGA Card.
  5. Bunyi beep panjang 1 kali dan pendek 3 kali, artinya ada masalah pada Keyboard.
  6. Bunyi beep panjang 1 kali dan pendek 9 kali, artinya ada masalah pada ROM BIOS.
  7. Bunyi beep panjang terus-menerus, artinya ada masalah di DRAM.
  8. Bunyi beep pendek terus-menerus, artinya ada masalah penerimaan tegangan (power).
  9. Pada beberapa merk Motherboard akan mengeluarkan bunyi beep beberapa kali apabila temperatur processornya terlalu tinggi (panas).

> Catatan : kode bunyi beep diatas berlaku pada AWARD BIOS, untuk jenis BIOS yang lain kemungkinan memiliki kode bunyi beep yang berbeda.

### Analisa Tampilan

- Pada tahapan ini pendeteksian masalah cenderung lebih mudah karena letak permasalahan dapat diketahui berdasarkan pesan error yang ditampilkan di monitor.
- Kemungkinan letak permasalahan ada di komponen 6 sampai 9.
- Contoh : Pada saat komputer dinyalakan tampil pesan Keyboard Error, maka dapat dipastikan letak permasalahan hanya pada Keyboard.

## Cara cepat mengenali Troubleshooting

1. Apabila terjadi masalah dan sistem masih memberikan tampilan pesan pada monitor atau disertai dengan bunyi beep 1 atau 2 kali, maka kemungkinan letak permasalahan ada di komponen nomor 6 sampai 9, yaitu pada Keyboard, Card I/O, Disk Drive dan Disket.
2. Apabila terjadi masalah dan sistem memberikan kode bunyi beep lebih dari 2 kali, maka kemungkinan letak permasalahan ada di komponen nomor 4 dan 5, yaitu RAM, VGA Card dan Monitor.
3. Sedangkan untuk masalah yang tidak disertai pesan pada monitor atau kode bunyi beep, kemungkinan besar letak permasalahan ada di komponen nomor 1 dan 2, yaitu Power Suplly dan Motherboard.

- Dengan kedua macam teknik dalam pendeteksian masalah dalam komputer tersebut, tentunya akan lebih memperkaya pengetahuan kita di bidang komputer, jadi jika suatu saat terdapat masalah pada komputer Anda kita dapat melakukan pemeriksaan terlebih dahulu sebelum membawa ke tempat servis, kalaupun harus membawa ke tempat servis kita sudah mengerti letak permasalahannya, jadi kita tidak dibohongi oleh tukang servis yang nakal ; )
- Dengan pemahaman troubleshooting komputer yang lebih dalam tentunya akan lebih mempermudah kita untuk mengetahui letak permasalahan dalam komputer dan tentunya akan lebih menyenangkan apabila kita dapat memperbaiki sendiri permasalahan tersebut

## Troubleshooting Power

- Bisa jadi masalah ini muncul lantaran beberapa penyebab.
- Pertama periksa apakah ada aliran listrik yang masuk pada motherboard.
  - Ini penting untuk memastikan adakah aliran listrik yang mengalir pada motherboard.
  - Pada sebagian besar motherboard, indikasi adanya arus listrik yang mengalir ini ditandai dengan lampu LED yang menyala. Kalau lampu ini tidak menyala, bisa dipastikan tidak ada arus listrik yang mengalir.
- Kedua, kemungkinan power suplay yang tidak terlalu bagus alias tidak memiliki tenaga yang sesuai. Cara satu-satunya adalah menganti power suplay yang Anda punya dengan yang lebih bagus.
- ketiga yang mungkin adalah tidak terpasangnya kartu grafis dengan benar. Ini memang biasa terjadi kalau Anda sembrono memasang kartu grafis add on.
  - Untuk mengatasinya, Anda bisa memperbaiki posisi pemasangan.
  - Usahakan agar posisinya tegak lurus terhadap motherboard.
- keempat yang sering tidak terbayang adalah rusaknya tombol power atau koneksinya yang menghubungkan front panel dengan tombol power pada casing depan.
  - Ini menyebabkan Anda tidak dapat menyalakan sistem meski semua terpasang dengan benar.

## Troubleshooting Motherboard

- Kalau processor dianggap sebagai _Otak_ kopmuter, maka motherboard boleh dianggap sebagai _Jantung_ kehidupan di PC.
- Sebagai komponen yang menyandang “beban berat” kerusakan sedikit saja bisa membikin PC tersengal-sengal.
- Pada komputer generasi awal, komponen seperti prosesor dan Ram langsung dilekatkan pada motherboard tanpa bisa diganti-ganti atau ditambah lagi.
- Model semacam ini dinamakan _backplane_.
- Desain baru yang bersifat modular memungkinkan penggantian beberapa komponen yang melekat pada motherboard secara mudah, sekaligus memberikan keleluasaan tersedianya peluang-peluang peningkatan teknologi PC itu sendiri.
- Namun, kemudahan senantiasa mengandeng resiko.
- Begitu pula dengan motherboard.
- Sejak motherboard dijadikan “sasaran tembak” utama untuk menghasilkan PC yang optimal, kita dihadapkan pada keruwetan-keruwetan yang semakin besar.
- Mari tunjuk beberapa contoh.
- Peningkatan kebutuhan prosesor yang bertenaga membuat desain motherboard harus mengikuti tuntutan perkembangan prosesor.
- Kebutuhan akan transfer data yang lebih cepat
  membutuhkan desain motherboard terus berubah.
  Perkembangan-perkembangn terbaru seperti teknologi
  Fire Ware, USB 2.0, RAID System, Smart Card, Secure
  Digital, wireless, semuanya berkumpul pada lahan yang
  sama : motherboard.
- Meski untuk saat ini belum semua teknologi tersebut populer, namun untuk memberi daya tarik suatu produk motherboard para produsen pun tak kurang akal.
- Mereka beramai-ramai menyediakan ruang upgrade itu, tanpa harus menyertakannya ketika ia diproduksi secara massal, untuk tetap membuatnya tetap ekonomis.
- Beragamnya tipe chipset pada motherboard yang menjadi tolak ukur dukungan teknis juga kian membuat para pengguna dipusingkan untuk memilih mana yang terbaik
- Belum lagi selesai dengan masalah
  yang satu ini, kita juga dihadapkan dengan berbagai kekhawatiran,
  bagaimana mengatasi persoalan bilaman terjadi motherboard
  sebagai jantung PC, masalah sedikit saja bisa membuat PC
  termehek-mehek.

### Back to Bascic!

1. Periksa semua konektor. Tentu saja, langkah ini diperlukan
   untuk memastikan bahwa tidak ada satu konektor pun yang
   terlepas atau tidak tertancap dengan benar.
2. Periksa semua komponen yang melekat. Ini penting untuk
   memdeteksi, apakah pemasangan prosesor, RAM, VGA Card
   sudah benar atau belum. Juga untuk memastikan bahwa secara
   fisik IC-IC di dalam motherboard tidak mengalami kerusakan
   atau terlepas.
3. Periksa sumber listrik yang masuk melalui power suplay. Untuk
   memastikannya, periksa dulu suplai listrik dari jala listrik, lalu
   periksalah output listrik pada kabel-kabel power suplay dengan
   menggunakan multimeter. Pastikan bahwa output tiap kabel
   sudah sesuai dengan yang direkomendasikan pada buku
   manual.
4. Periksa, adakah barang-barang asing yang menggangu jalur
   motherboard. Kabel, sekrup, kotoran, juga debu bisa
   mempengaruhi nafas kehidupan motherboard. Gangguan
   semacam ini, selain membuat lalu lintas data terganggu, bila
   posisinya strategis bisa menimbulkan hubungan pendek alias
   konslet.
5. Periksa jumper-jumper, DIP switch, atau pin-pin pengatur setiap
   fitur dengan teliti dan benar. Pastikan bahwa Anda mengacu pada
   buku manual jangan menggunakan ilmu hafalan. Setting yang
   salah bisa membuat motherboard Anda tak mau hidup.
6. Periksa bagian-bagian motherboard yang melekat pada casing.
   Hubungan pendek akibat penguncian tanpa isolator antara casing,
   sekrup pengunci dengan motherboard akan membuat listrik
   terhenti setiap kali tombol power ditekan.

## Troubleshooting VGA

- Sistem PC tidak menyala ketika kartu grafis onboard diganti dengan VGA Card.
- Masalah semacam ini sering terjadi ketika pengguna hendak melakukan upgrade kartu grafis pada motherboard yang memiliki VGA add on yang terpasang.
- Namum, pada sebagian motherboard, Anda harus melakukan pergantian setting secara manual.
- Sebenarnya ini tidak akan terjadi kalau Anda tahu tips dan triknya.
- Biasanya masalah akan terjadi ketika kartu grafis add on ditancapkan dan Anda melakukan booting untuk pertama kalinya.
- Sistem kemudian tidak menyala sama sekali. Bahkan
  tidak mengeluarkan bunyi beep sama sekali.
- Langkah pertama yang harus dilakukan adalah
  menggunakan kembali VGA onboard Anda.
- Ketika Sudah masuk sistem Windows, lakukan uninstall driver VGA onboard yang Anda pakai.
- Setelah itu, lakukan restart kembali sistem Anda untuk kemudian masuk pada menu BIOS.
- Pada menu ini, Anda harus mematikan atau mend-disable fitur VGA onboard.
- Setelah mematikan fungsi ini keluarlah dari BIOS dan matikan sistem.
- Langkah selanjutnya adalah pasang kartu grafis add on Anda pada slot
  AGP atau slot PCI sesuai dengan tipe kartu grafis yang hendak Anda pakai.
- Setelah tertancap dengan benar pada slot yang sesuai, nyalakan kembali sistem Anda.
- Sistem akan kembali menyala dengan kartu grafis add on sebagai kartu grafis utama.
- Jangan lupa untuk menginstall driver terbaru yang sesuai dengan kartu grafis tersebut. -

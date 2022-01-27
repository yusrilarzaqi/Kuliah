# Troubleshooting

- Komputer sudah merupakan alat bantu yang tergolong penting saat ini, kita ambil salah satu contoh pada kegiatan perkantoran, tentunya dengan adanya komputer maka pakerjaan dapat diselesaikan dengan lebih capat.
- Sebagai pengguna atau pemakai komputer tentunya kita juga pernah mengalami masalah dengan komputer.
- Hal tersebut dapat diakibatkan adanya ketidak sesuaian dari komponen dari komponen itu sendiri yang biasanya berkaitan dengan Software (perangkat lunak atau aplikasinya), Hardware (perangkat keras) atau Brainware (si pemakai komputer).

---

**Pengertian Troubleshooting Komputer**

- Dalam dunia komputer, segala sesuatu masalah yang berhubungan dengan komputer disebut Troubleshooting dan timbulnya masalah dalam komputer tentu ada sebabnya.
- Pada kesempatan ini kita akan sedikit belajar untuk mendeteksi masalah pada komputer anda terutama yang berhubungan dengan Hardware.
- Untuk permasalahan dengan Software sebaiknya akan dilakukan pendeteksian sederhana dahulu seperti pemeriksaan file-file yang berhubungan software atau spesifikasi permintaan (requirement) dari Software. Apabila permasalahannya cukup rumit, sebaiknya anda install ulang saja Software tersebut, karena akan terlalu rumit untuk memperbaiki sebuah software.

---

- Tehnik dalam Troubleshooting terdapat dua macam tehnik dalam mendeteksi permasalahan dalam komputer, yoitu teknik Forward dan teknik Backward.
- Untuk lebih mengenal kedua teknik tersebut, ada bainya kita bahas terlebih dahulu definisi masing-masing teknik tersebut

## Teknik Forward

* Sesuai dengan namanya, maka dalam teknik ini segala macam permasalahan dideteksi semenjak awal komputer dirakit dan biasanya teknik ini hanya digunakan oleh orang-orang dealer komputer yang sering melakukan perakitan komputer.
* Pada teknik ini hanya dilakukan pendeteksian masalah secara sederhana dan dilakukan sebelum komputer dinyalakan (dialiri listrik).
* Untuk mempermudah silakan simak contoh berikut:
* Setelah komputer selesai dirakit, maka dilakukan pemeriksaan pada semua Hardware yang telah terpasang, misalnya memeriksa hubungan dari kabel Power Supply ke soket power pada Motherboard.
* Untuk casing ATX, kita periksa apakah kabel Power Switching sudah terpasang dengan benar.

## Teknik Backward

* Hampir sama dengan teknik sebelumnya, teknik Backward adalah teknik untuk mendeteksi kesalahan pada komputer setelah komputer dinyalakan (dialiri listrik).
* Teknik lebih banyak digunakan karena pada umumnya permasalahan dalam komputer baru akan timbul setelah "jam terbang" komputernya sudah banyak dan ini sudah merupakan hal yang wajar.
* Dapat kita ambil beberapa contoh sebagai berikut:
* **Foppy Disk** yang tidak dapat membaca disket dengan baik.
* Komputer tidak mau menyala saat tombol power pada casing ditekan. 

## Tabel Pendeteksian Masalah

* Setelah penjelasan sederhana dari kedua teknik tersebut penulis akan membahas lebih dalam lagi ke teknik Backward, karena bagi pengguna komputer rumahan tentunya teknik ini lebih banyak akan digunakan ketimbang teknik Forward.
* Untuk lebih mempermudah dalam pendeteksian masalah pada komputer, ada beberapa analisa yaitu sebagai berikut:

### Analisa Pengukuran

- Pada tahapan ini, pendeteksian masalah dengan cara mengukur tegangan listrik pada komponen.
- Gunakan alat bantu seperti multitester untuk mengukur tegangan yang diterima atau diberikan komponen tersebut.
- Contoh : Mengukur tegangan listrik yang diterima oleh Power Supply, lalu mengukur tegangan yang diberikan oleh Power Supply ke komponen lainnya.

### Analisa Suara

- Pada tahapan ini pendeteksian masalah menggunakan kode suara (beep) yang dimiliki oleh BIOS dan dapat kita dengar lewat PC Speaker.
- Pastikan kabel PC Speaker sudah terpasang dengan baik.
- Kemungkinan letak permasalahan ada dikomponen nomor 4 dan 5.
- Untuk mempermudah pengenalan kode suara tersebut, silahkan simak keterangan berikut:
- Bunyi beep pendek satu kali, artinya sistem telah melakukan proses Boot dengan baik.
- Bunyi beep pendek dua kali, artinya ada masalah pada konfigurasi atau setting pada CMOS.
- Bunyi beep panjang 1 kali, dan pendek 1 kali, artinya ada masalah pada Motherboard atau DRAM.
- Bunyi beep panjang 1 kali, dan pendek 2 kali, artinya ada masalah pada monitor atau VGA Card.
- Bunyi beep panjang 1 kali, dan pendek 3 kali, artinya ada masalah pada Keyboard.
- Bunyi beep panjang terus-menerus, artinya ada masalah di DRAM.
- Bunyi beep pendek terus-menerus, artinya ada masalah penerimaan tegangan (power).
- Pada beberapa merek Motherboard akan mengeluarkan bunyi beep beberapa kali apabila temperatur processornya terlalu tinggi (panas).
- Catatan : Kode bunyi beep diatas berlaku pada AWARD BIOS untuk jenis BIOS yang lain kemungkinan memiliki kode bunyi beep yang berbeda.

### Analisa Tampilan

- Pada tahapan ini pendeteksian masalah cenderung lebih karena letak permasalahan dapat diketahui berdasarkan pesan error yang ditampilkan di monitor.
- Kemungkinan letak permasalahan ada di komponen nomor 6 sampai 9.
- Contoh: Pada saat komputer dinyalakan tampil pesan Keyboard Error, maka dapat dipastikan letak permasalahan hanya pada Keyboard.

## Cara Cepat Mengenali Troubleshooting

1. Apabila terjadi masalah dan sistem masih memerikan tampilan pesan pada monitor atau disertai dengan bunyi beep 1 atau 2 kali, maka kemungkinan letak permasalahan ada di komponen nomor 6 sampai 9, yoitu pada Keyboard, Card I/O, Disk Drive dan Disket.
2. Apabila terjadi masalah dan sistem memberikan kode bunyi beep lebih dari 2 kali, maka kemungkinan letak permasalahan ada di komponen nomor 4 dan 5, yoitu RAM, VGA Card dan Monitor.
3. Sedangkan untuk masalah yang tidak disertai pesan pada monitor atau kode bunyi beep, kemungkinan besar letak permasalahan ada di komponen nomor 1 dan 2, yaitu Power Supply dan Motherboard.

---

- Dengan kedua macam teknik dalam pendeteksian masalah dalam komputer tersebut, tentunya akan lebih memperkaya pengetahuan kita dibidang komputer, jadi jika suatu saat terdapat masalah pada komputer anda kita dapat melakukan pemeriksaan terlebih dalhullu sebelum membawa ke tempat service, kalaupun harus membawa ke tempat service kita sudah mengerti letak permasalahannya, jadi kita tidak dibohongi oleh tukang service yang nakal.
- Dengan pemahaman Troubleshooting komputer yang lebih dalam tentunya akan lebih mempermudah kita untuk mengetahui letak permasalahan dalam komputer dan tentunya akan lebih menyenangkan apabila kita dapat memperbaiki sediri permasalahan tersebut.

# Troubleshooting Power Supply

- Bisa jadi masalah ini muncul lantaran beberapa penyebab.
- Pertama periksa apabila ada aliran listrik yang masuk pada motherboard.
- Ini penting untuk memastikan apakah aliran listrik yang mengalir pada motherboard.
- Pada sebagian besar motherboard, inidkasi adanya arus listrik yang mengalir ini ditandai dengan lampu LED yang menyala.
- Kalau lampu ini tidak menyala, bisa dipastikan tidak ada arus listrik yang mengalir. 

---

- Kedua, kemungkinan power supply yang tidak terlalu bagus alias tidak memiliki tenaga yang sesuai.
- Cara satu-satunya adalah menganti power supply yang anda punya dengan yang lebih bagus.
- Penyeab ketiga yang mungkin adalah tidak terpasangnya kartu grafis dengan benar.
- Ini memang biasa terjadi kalau anda sembrono memasan karu grafis add on.
- Untuk mengatasinya, anda bisa memperbaiki posisi pemasangan.
- Usahakan agar posisinya tegak lurus terhadap motherboard.
- Penyeab keempat yang sering tidak terbayang adalah rusaknya tombol power pada casing depan.
- Ini menyebabkan anda tidak dapat menyalakan sistem meski semua terpasang dengan benar. 

# Troubleshooting Motherboard

- Kalau processor dianggap sebagai "otak" komputer, maka motherboard boleh dianggap merupakan "jantung" kehidupan di PC.
- Sebagai komponen yang menyandang "beban berat" kerusakan sedikit saja bisa mengakibatkan PC tersengal-sengal.
- Pada komputer generasi awal, komponen seperti prossesor dan RAM langsung diletakan pada motherboard tanpa bisa diganti-ganti atau ditambah lagi.
- Model semacam ini dinamakan backplane.

---

- Desain baru yang bersifat modular memungkinkan penggantian beberapa komponen yang melekat pada motherboard secara mudah, sekaligus memberikan keleluasaan tersedianya peluang-peluang peningkatan teknologi PC itu sendiri.
- Namun, kemudahan senantiasa mengandeng resiko.
- Begitu pula dengan motherboard.
- Sejak motherboard dijadikan "sasaran tembak" utama untuk menghasilkan PC yang optimal, kita dihadapkan pada keruwetan-keruwetan yang semakin besar.
- Mari tunjuk beberapa contoh.
- Peningkatan kebutuhan processor yang bertenaga membuat desain motherboard harus mengikuti untutan perkembangan processor.

---

- Kebutuhan akan transfer data yang lebih cepat membutuhkan desain motherboard terus berubah.
- Perkembangan-perkembangan terbaru seperti teknologi fire ware, USB 2.0, RAID System, Smart Card, Secure Digital, wrieless, semuanya berkumpul pada lahan yang sama : motherboard.
- Meski untuk saat ini belum semua teknologi tersebut populer, namun untuk memberi daya tarik suatu produk motherboard para produsen pun tak kurang akal.
- Mereka beramai-ramai menyediakan ruang upgrade itu, tanpa massal, untuk tetap membuatnya tetap ekonomis.

---

- Beragamnya tipe chipset pada motherboard yang menjadi tolak ukur dukungan teknis juga kian membuat pada pengguna dipusingkan untuk memilih mana yang terbaik.
- Belum lagi selesai dengan masalah yang satu ini, kita juga dihadapkan dengna kekhawatiran, bagaimana mengatasi persoalan bilamana terjadi motherboard sebagai jantung PC, masalah sedikit saja bisa membuat PC rusak,

---

Back to Basics !

1. Periksa semua konektor. Tentu saja langkah ini diperlukan untuk memastikan bahwa tidak ada satu konektor pun yang terlepas atau tidak tertancap dengan benar.
2. Periksa semua komponen yang melekat. Ini penting untuk mendeteksi, apakah pemasangan processor, RAM, VGA Card sudah benar atau belum. Juga untuk memastikan bahwa secara fisik IC-IC didalam motherboard tidak mengalami kerusakan atau terlepas.
3. Periksa sumber listrik yang masuk melalui power supply. Untuk memastikannya, pertiksa dulu suplay listrik dari jalan listrik, lalu periksalah output listrik pada kabel-kabel power supply dengan menggunakan multimetrt. Pastrikan bahwa output tiap kabel sudah sesuai dengan yang direkomendasikan pada buku manual.
4. Periksa apakah barang-barang asing yang menggangu jalur motherboard. Kabel, sekrup, kotoran, juga debu bisa mempengaruhi nafas kehidupan motherboard. Gangguan semacam ini, selain bisa menimbulkan hubungan pendek alias konslet.
5. Periksa jumper-jumper, DIP switch, atau pin-pin pengatur setiap fitur dengan teleti dan benar. Pastikan bahwa anda mengacu pada buku manual jangan menggunakn ilmu hafalan. Settingan yang salah bisa membuat motherboard anda tak mau hidup.
6. Periksa bagian-bagian motherboard yang melekat pada casing. Hubungan pendek akibat penguncian tanpa isolator antara csting, sekrup pengunci dengan motherboard akan membuat listrik terhenti setiap kali tombol power ditekan.

## Troubleshooting VGA

- Sistem PC tidak menyala kartu grafis onboard diganti dengan VGA Card.
- Masalah semacam ini sering terjadi ketika pengguna hendak melakukan upgrade kartu grafis pada motherboard yang memiliki VGA add on yang terpasang.
- Namun, pada sebagian motherboard, anda harus melakukan pergantian setting secara manual.
- Sebenarnya ini tidak akan terjadi kalau anda tahu tips dan triknya.
- Biasanya masalah akan terjadi ketika kartu grafis add on ditancapakan dan anda melakukan booting untuk pertama kalinya.

---

- Langkah selanjutnya adalah pasang kartu grafis add on anda pada slot AGP atau slot PCI sesuai dengan tipe kartu grafis yang hendak anda pakai.
- Setelah tertancap dengan benar pada slot yang sesuai, nyalakan kembali sistem anda.
- Sistem akan kembali menyala dengan kartu grafis add on sebagai kartu grafis utama.
- Jangan lupa untuk menginsatall driver terbaru yang sesuai dengan kartu grafis tersebut.

### Troubleshooting Processor

- Kejadian ini amat sering terjadi ketika anda hendak melakukan upgrade atau downgrade dengan menggunakan processor yang memiliki front side bus yang berbeda.
- Misalnya ketika Pentium anda ber-FBS 533 MHz anda ganti dengan yang ber-FSB 400 MHz, sementara BIOS Anda masih men-setting sistem bekerja pada FSB 533 MHz.

### Troubleshooting Password BIOS

- Password BIOS biasanya digunakan user untuk melindungi setting BIOS pada komputer.
- Dan bila anda ingin mereset passowrd pada BIOS tidak terlalu susah untuk mengkoneksikan battery CMOS nya, dengan sedikit trik pada DOS, anda bisa mereset BIOS tersebut.
- Pertama keluarlah dari Windows atau me-reboot komputer, jalankan komputer pada MS-DOS mode, gunakan pilihan "Command Prompt only"

---

- Pada C;\> prompt, ketik
- `DEBUG`
- Tekan enter. Anda akan melihat tanda ( - ) pada `DEBUG` prompt akan ditampilkan sperti
- `o 70 2e`. Tekan enter, ketik:
- `o 71 ff`. Tekan enter, terakhir ketik:
- `Q`, Tekan enter, makan Anda akan keluar dari `DEBUG` prompt dan kembali pada C:\> prompt. 
- Sekarang reboot PC Anda, tekan tombol del, dan password untuk memasuki Setup BIOS pun sudah lenyap.


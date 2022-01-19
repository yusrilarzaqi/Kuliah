# Kernel I/O Subsystem

- Kernel menyediakan banyak service yang berhubungn dengan I/O. Pada bagian ini, kita akan mendeskripsikan beberapa service yang disediakan oleh kernel I/O *subsystem*, dan kita akan membahas bagaimana caranya membuat infrastruktur *hardware* dan *device-driver*.
- Service yang akan kita bahas adalah I/O *scheduling, buffering, spooling, reservasi device, error handling* .

## I/O Scheduling

- Untuk menjadwalkan sebuah set permintaan I/O, kita harus menentukan urutan yang bagus untuk mengeksekusi permintaan tersebut. *Scheduling* dapat meningkatkan kemampuan sistem secara keseluruhan, dapat membagi device secara rata di antara proses-proses, dan dapat mengurangi waktu tunggu rata-rata untuk menyelesaikan I/O. Ini adalah contoh sederhana untuk menggambarkan definisi di atas.
- Jika sebuah *arm* disk terletak di dekat permulaan diskm dan ada tiga aplikasi yang memblokir panggilan untuk membaca untuk disk tersebut. Aplikasi 1 meminta sebuah blok dekat akhir disk, aplikasi 2 meminta blok yang dan dengan awal, dan aplikasi 3 meminta bagian tengah disk.
- Sistem operasi dapat mengurangi jarak yang harus ditempuh oleh *arm* disk dengan melayani aplikasi tersebut dengan urutan 2, 3, 1. Pengaturan urutan pekerjaan kembali dengan cara ini merupakan inti dari I/O *scheduling*. Sistem operasi mengembangkan implementasi scheduling dengan menetapkan antrian permintaan untuk tiap device.
- Ketika sebuah aplikasi minta sebuah *blocking* sistem I/O, permintaan tersebut dimasukan ke dalam antrian untuk device tersebut, *Scheduling* I/O mengatur urutan antrian untuk meningkatkan efisiensi dari sistem dan waktu respon rata-rata yang harus dialami oleh aplikasi
- Sistem operasi juga mencoba untuk bertindak secara adil, seperti tidak ada aplikasi yang menerima service yang buruk, atau dapat seperti memberi prioritas service untuk permintaan penting yang ditunda. Contohnya, permintaan dari subsistem mungkin akan mendapatkan permintaan dari subsistem mungkin akan mendapatkan prioritas lebih tinggi daripada permintaan dari aplikasi. Beberapa algoritma scheduling untuk disk I/O akan dijelaskan pada bagian *Disk Scheduling*.
- Satu cara untuk mendingkatakn efisiensi I/O subsistem dari sebuah komputer adalah dengan mengatur operasi I/O. Cara lain adalah dengan menggunakan tempat penyimpanan pada memori utama atau pada disk melalui tknik yang disebut *buffering, caching, dan spooling*.

## Buffering

- *Buffer* adalah area memori yang menyimpan data ketika mereka sedang dipindahkan antara dua *device* atau antara *device* dan aplikasi. *Buffering* dilakukan untuk tiga buah alasan. Alasan pertama adalah untuk men- *cope* dengan kesallahan yang terjadi karena perbedaan kecepatan antara produsen dengan konsumen dari sebuah *stream data*. Sebagai contoh, sebuah file sedang diterima melalui modem dan ditujukan ke media penyimpanan di *harddisk*. Kecepatan modem tersebut kira-kira hanyalah 1/1000 daripada *harddisk*. Jadi *buffer* dibuat di dalam memori utama untuk mengumpulkan jumlah *byte*  yang diterima dari modem. Ketika keseluruhan data di *buffer* sudah sampai, buffer tersebut dapat ditulis ke disk dengan operasi tinggal.
- Karena penulisan disk tidak terjadi dengan instan dan modem masih memerlukan tempat untuk menyimpan data yang berdatangan, maka dipakai w buah *buffer*. Setelah modem memenuhi *buffer* pertama, akan terjadi request untuk menilis di disk. Modem kemudian mulai memenuhi *buffer* kedua sementara *buffer* pertama dipakai untuk penulisan ke disk. Pada saat modem suah memenuhi *buffer* kedua, penulisan ke disk dari *buffer* pertama seharusnya sudah selesai, jadi modem akan berganti kembali memenuhi *buffer* pertama dan *buffer* kedua dipakai untuk menulis. Metode *double buffering* ini membuat pasangan ganda antara produsen dan konsumen sekaligus mengurangi kebutuhan waktu antara mereka.
- Alasan kedua dari *buffering* adalah untuk menyesuaikan device-device yang mempunyai perbedaan dalam ukuran transfer data. Hal ini sangat umum terjadi pada jaringan komputer, dimana *buffer* dipakai secara luas untuk *fragmentasi* dan pengaturan kembali pesan-pesan yang diterima. Pada bagian pengirim, sebuah pesan yang besar akan dipecah ke paket-paket kecil. Paket-paket tersebut dikirim melalui jaringan, dan penerima akan meletakan mereka di dalam *buffer* untuk disusun kembali. 
- Alasan ketiga untuk **buffering** adalah untuk mendukung *copy semantics* untuk aplikasi I/O. Sebuah contoh akan menjelaskan apa arti dari *copy semantics*. Jika ada sebuah aplikasi yang mempunyai *buffer* data yang ingin dituliskan ke disk. Aplikasi tersebut akan memanggil sistem penulisan, menyediakan pointer ke *buffer*, dan sebuah *integer* untuk menunjukan ukuran bytes yang ingin ditulis. Setelah pemanggilan tersebut, apakah yang akan terjadi jika aplikasi tersebut merubah isi dari *buffer ?*, dengan *copy semantics*, keutuhan data yang ingin ditulis sama dengan data waktu aplikasi ini memanggil sistem untuk menulis, tidak tergantung dengan perubahan yang terjadi pada *buffer*.
- Sebuah cara sederhana untuk sistem operasi untuk menjamin *copy semantics* adalah membiarkan sistem penulisan untuk mengkopi data aplikasi ke dalam *buffer* kernel sebelum mengembalikan kontrol kepada aplikasi. Jadi penulisan ke disk dilakukan pada *buffer* kernel, sehingga perubahan yang terjadi pada *buffer* aplikasi tidak akan membawa dampak apa-apa. Mengcopy data antara *buffer* kernel data aplikasi merupakan sesuatu yang umum pada sistem operasi, kecuali *overhead* yang terjadi karena operasi ini karena *clean semantics*. Kita dapat memperoleh efek yang sama yang lebih efisien dengan memanfaatkan virtual-memori mapping dan proteksi *copy-on-wire* dengan pintar.

## Caching

- Sebuah *cache* adalah memori yang cepat yang berisikan data kopian. Akses ke sebuah kopian yang di *cached* lebih efisien daripada akses ke data asli. Sebagai contoh, instruksi-instruksi dari proses yang sedang dijalankan disimpan ke dalam disk, dan ter- *cached* di dalam memori *physical*, dan kemudian dicopy lagi ke dalam *cache secondary dan primary* dari CPU. Perbedaan antara sebuah *buffer* dan *cache* adalah *buffer* dapat menyimpan satu-satunya informasi datanya sedangkan sebuah *cache* secara definisi hanya menyimpan sebuah data dari sebuah tempat untuk dapat diakses lebih cepat.
- *Caching* dan *buffering* adalah dua fungsi yang berbeda, tetapi terjadang sebuah daerah memori dapat digunakan untuk keduanya, sebagai contoh, untuk menghemat *copy semantics* dan membuat scheduling I/I menjadi efisien, sistem operasi menggunakan *buffer* pada memori utama untuk menyimpan data. *Buffer* ini juga digunakan sebagai *cache*, untuk meningkatkan efisiensi I/O untuk file yang digunakan secara besama-sama oleh beberapa aplikasi, atau yang sedang dibaca dan ditulis secara berulang-ulang.
- Ketika kernel menerima sebuah permintaan file I/O, kernel tersebut mengakses *buffer* dan *cache* untuk melihat apakah daerah memori tersebut sudah tersedia dalam memori utama. Jika iya, sebuah *physical disk* I/O dapat dihindari atau tidak dipakai. Penulisan disk juga terakumulasi ke dalam *buffer* dan *cache* selama beberapa detik, jadi transfer yang besar akan dikumpulkan untuk mengefisiensikan *schedule* penulisan. Cara ini akan menunda penulisan untuk meningkatkan efisiensi I/O akan dibahas pada bagian *Remote File Access*.

##  Spooling dan Reservasi Device

- Sebuah spool adalah sebuah buffer yang menyimpan output untuk sebuah device, seperti printer, yang tidak dapat menerima interleaved data streams. Walaupun printer hanya dapat melayani satu pekerjaan pada waktu yang sama, beberapa aplikasi dapat meminta printer untuk mencetak, tanpa harus mendapatkan hasil output mereka tercetak secara bercampur. Sistem operasi akan menyelesaikan masalah ini dengan meng-intercpt semua output kepada printer.
- Tiap output aplikasi sudah di-spooled ke disk file yang berbeda. Ketika sebuah aplikasi selesai mengeprint, sistem spooling akan melanjutkan ke antrian berikutnya. Di dalam beberapa sistem operasi, spooling ditangani oleh sebuah sistem proses deamon. Pada sistem operasi yang lain, sistem ini ditangani oleh in-kernel thread. Pada kedua kasus, sistem operasi menyediakan interfacekontrol yang membuat users dan system administration dapat menampilkan antrian tersebut, untuk mengenyahkan akan antrian yang tidak diinginkan sebelum mulai di-print.
- Untuk beberapa device, seperti *drive tapedan*  printer tidak dapat me- *multiplex* permintaan I/O dari beberapa aplikasi. *Spooling* merupakan salah satu cara untuk mengatasi masalah ini. Cara lain adalah dengan membagi koordinasi untuk *multiple concurrent* ini.
- Beberapa sistem operasi menyediakan dukungan untuk akses *device* secara ekslusif, dengan mengalokasikan proses ke *device idle* dan membuang *device* yang sudah tidak diperlukan lagi. Sistem operasi lainnya memaksakan limit suatu file untuk menangani *device* ini.
- Banyak sistem operasi menyediakan fungsi yang membuat proses untuk menangani kooridinat *exclusive* akses diakses mereka sendiri.

## Error Handling 

- Sebuah sistem operasi yang menggunakan protected memori dapat menjaga banyak kemungkinan error akibat hardware maupun aplikasi. Devices dan transfer I/O dapat gagal dalam banyak cara, bisa karena alasan transient, seperti overloaded pada network, maupun alasan permanen yang seperti kerusakan yang terjadi pada disk controller.
- Sistem operasi seringkali dapat mengkompensasikan untuk kesalahan pembacaan ulang kembali dan sebuah kesalahan pengiriman pada network akan mengakibatkan pengiriman ulang apabila protocolnya diketahui. Akan tetapi untuk kesalahan permanen, sistem operasi pada umumnya tidak akan bisa mengembalikan situasi seperti semula.
- Sebuah ketentuan umum, yaitu sebuah sistem I/O akan mengembalikan satu *but* informasi tentang status panggilan tersebut, yang akan mengandakan apakah proses tersebut berhasil atau gagal. Sistem operasi pada UNIX menggunakan *integer* tambahan yang dinamakan *errno* untuk mengembalikan kode kesalahan sekitar 1 dari 100 nilai yang mengindikasikan sebab dari kesalahan tersebut.
- Akan tetapi, beberapa perangkat keras dapat menyediakan informasi kesalahan yang detai, walaupun banyak sistem operasi yang tidak mendukung fasilitas ini. 

## Kernel Data Structure

- Kernel membutuhkan informasi *state* tergantung penggunakan komponen I/O. Kernel menggunakan banayk struktur yang mirip untuk melacak koneksi jaringan, komunikasi karakter-device, dan aktivitas I/O lainnya.
- UNIX menyediakan akses sistem file untuk beberapa entiti, seperti file *user*, *raw devices*, dan alamat tempat proses. Walaupun tiap entiti ini didukung sebuah operasi baca, *semantics*-nya beberapa untuk tiap entiti. Seperti untuk membaca file user, kernel perlu memeriksa *buffer* dan *cache* sebelum memutuskan apakah akan melaksanakan I/O disk. Untuk membaca sebuah *raw disk*, kernel perlu untuk memastikan bahwa ukuran permintaan adalah batas sector. Untuk memproses citra, cukup perlu untuk mengkopi data ke dalam memori. UNIX mengkapsulasikan perbedaan-perbedaan ini dalam struktur yang uniform dengan menggunakan teknik *objcet oriented*.
- Beberapa sistem operasi bahkan menggunakan metode *objcet oriented* secara lebih extensif. Sebagai contoh, Windows NT menggunakan implementasi *message-passing* untuk I/O. Sebuah permintaan I/O akan dikonversikan ke sebuah pesan yang dikirim melalui kernel kepada I/O *manager* dan kemudian ke *device driver*, yang masing-masing bisa mengubah isi pesan.
- Untuk output, isi *massage* adalah data yang akan ditulis. Untuk input, *message* berisikan *buffer* untuk menerima data. Pendekatan *message-passing* ini dapat menambah *overhead*, dengan perbandingan dengan teknik prosedural yang men- *shere* struktur data, tetapi akan mensederhanakan struktur dan *design* dari sistem I/O tersebut dan menambahakan fleksibilitas.

### Subsystem I/O Mengawasi

- Manajemen nama untuk file dan *device*
- Kontrol akses untuk file dan *device*
- Kontrol operasi, contoh : Model yang tidak dapat dikenali.
- Alokasi tempat sistem file.
- Alokasi *device*.
- *Buffering, caching, spooling*.
- I/O *scheduling*.
- Mengawasi status *device, error handling*, dan kesalahan dalam *recovery*.
- Konfigurasi dan utilitasi *driver device*.


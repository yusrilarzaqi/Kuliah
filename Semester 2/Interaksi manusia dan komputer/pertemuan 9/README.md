# Penanganan Kesalahan Dan Help Dokumentasi

## Penanganan Kesalahan

- Hampir tidak ada sistem yang berjalan sempurna melewati berbagai rentetan kesalahan (error).
- Semakin besar sistem yang dibuat, semakin banyak kesalahan yang dapat timbul.

## Tujuan Software User Interface

1. Meminimalkan Kesalahan User.
   
   - Interaksi melalui menu lebih dapat menghindarkan user dari kesalahan daripada menggunakan perintah baris.
   
   - Compaq pernah mempertimbangkan untuk mengubah `Press Any Key` menjadi `Press Enter Key` dikarenakan banyak telpon yang menanyakan tekan tombol `Any` di keyboard.
   
   - Cara mengurangi kesalahan user, misal: seleksi user yang tepat, pelatihan yang memadai, desain peralatan, prosedur dan lingkungan.

2. Menyediakan kemudahan recovery dari kesalahan

## Tipe dari Kesalahan User

1. Perceptual error.
   
   - Gagal menangkap informasi.
   
   - Gagal menangkap perhatian pengguna.
   
   - Contoh: 8/B, Z/2, I/1

2. Congnitive error.
   
   - Ketiadaan bantuan.
   
   - Inkonsistensi.
   
   - Ketiadaan status informasi.
   
   - Kemampuan yang kurang.
   
   - Contoh: argumen yang tidak konsisten pada sintaks command languange.

## Tipe dari kesalahan User

1. Monotorik error
   
   - Lemahnya koordinasi tangan dan mata.
   
   - Tekanan kecepatan.
   
   - Memerlukan kemampuan yang tinggi pada koordinasi tangan dan mata.
   
   - Memerlukan jenis keahlian lainnya.
   
   - Contoh: Click mouse: single atau double, mengetik dengan cepat membuat banyak kesalahan.

## Petunjuk Pencegahan dan memperbaiki Kesalahan

- Validasi masukan, misalnya jika pengguna harus memasukan bilangan positif, sementara ia memasukan data negatif atau nol, maka harus ada mekanisme untuk mnegulang pemasukan data tersebut.
- Proteksi pengguna, program memberi peringatan ketika penggna melakukan penghapusan berkas.
- Pemulihan dari kesalahan, tersedianya mekanisme untuk pembatalan tindakan yang baru saja dilakukan dengan menyediakan fungsi _undo_.

## Petunjuk pencegahan dan memperbaiki kesalahan

- Penampilan pesan salah yang tepat dan sesuai dengan kesalahan yang Kesalahan yang terjadi pada waktu itu.
- Kenali jenis bug, bug yang timbul pada sebuah aplikasi memiliki karakteristik, karena itu selalu baca dan perhatikan baik-baik pesan kesalahan yang timbul.
- Mengembalikan kursur ke area kesalahan memungkinkan untuk melaukan perbaikan.
- Memungkinkan pertimbangan ulang aksi-aski yang dilakukan oleh user, misalnya memindahkan file ke _recycle bin_.

## Help dan Dokumentasi

- Rancangan sistem yang baik adalah rancangan dimana penggna dapat langsung menggunakan sistem dengan mudah tanpa pelatihan dan program bantuan sama sekali.
- Tetapi sangan lebih membantu pengguna bila program bantuan _help_ tetap disediakan kedalam sistem. Sistem dukungan pengguna dapat berupa sistem bantuan _Help_ dan dokumentasi.
- Perbedaan sistem bantuan dan dokumentasi adalah bahwa sistem dukungan berorientasi terhadap mahalah khusus, sedangkan dokumentasi berorientasi kepada sistem dan sifatnya umum.

## Sifat-Sifat Help dan Dokumentasi

1. **Availability** User dapat menggunakan bantuan pada setiap waktu selama berinteraksi dengan sistem. User tidak perlu keluardari aplikasi selama bekerja untuk membuka aplikasi bantuan.
2. **Accracy dan completeness** bantuan ini seharusnya tersedia secara lengkap dan akurat.
3. **Consistency** Konsisten pada sistem yang ada, antara jenis online dan jenis tercetak, juga konsisten dari sisi content, terminologi dan bentuk presentasi.
4. **Robustness** Biasanya digunakan oleh orang yang sedang dalam kesulitan karena sistem mempunyai perilaku yang tidak diharapkan atau mempunyai kesalahan
5. **Flexibility** Flexibility membantu setiap user berinteraksi sesuai dengan keinginannya.
6. **Unobtrusiveness** seharusnya tidak mencegah user dalam melanjutkan pekerjaannya atau terpengaruh dengan aplikasi user. Untuk menghindari ini digunakan presentasi pada layar yang terpisah

## Jenis Help Dan Dokumentasi

1. Paper-based (tercetak)
   
   - Keunggulan menggunakan Paper-based yaitu:
     
     - Penggunaan dapat menggunakan diluar masa pengerjaan tugas.
     
     - Penggunaan dapat menuliskan catatan tertentu yang diperoleh saat menjalankan sistem.
   
   - Kekurangan yaitu:
     
     - Agak sulit mendeskripsikan sesuatu yang bergerak.
     
     - Sulit menyesuaikan antara sesuatu yang dibaca dengan kenyataan sebenarnya didalam sistem.
     
     - Penggunaan akan kesulitan membaca saat menjalankan sistem karena kurang praktis

2. Computer-based
   
   - Jenis computer based yaitu:
     
     - **Command Assistance**. DItemui pada sistem DOS dan UNIX. Pengguna dapat menggunakan bantukan dengan mengetikan parameter tertentu
     
     - **Command Prompts**. Jenis bantuan yang biasanya tampil bila pengguna melakukan sesalahan sederhana misalnya kesalahan sintaks.
     
     - **Context sensitive help**. Jenis ini berbentuk menu based system yang menyediakan bantuan pada menu option.
     
     - **Online tutorial**. Mengijinkan user bekerja melalui aplikasi dasar dengan lingkungan percobaan. User dapat melihat kemajuan
       sesuai dengan kecepatan dan dapat mengulangi bagian dari tutorial yang dia inginkan. Kebanyakan tutorial online tidak mempunyai bagian intelligent, karena tidak mempunyai pengetahuan tentang user dan pengalaman user sebelumnya.
     
     - **Online documentation**. Jenis ini tersedia secara online di internet, khususnya untuk aplikasi diproduksi secara masal.
     
     - **Intelligent Help System**. Dioperasikan untuk monitoring aktifitas user dan mengkonstruksikan model sesuai dengan user. Model ini termasuk pengalaman, preferences, keslahan user atau kombinasi dari semuanya.

## Knowledge Representation

### User Modelling

1. Quantification

2. Stereotypes

3. Overlay Models



- Pengetahuan mewakili suatu issue pusat dalam intelligent help system, tetapi tidak tanpa masalah itu sendiri, pengetahuan kadang sulit didapatkan, terutama jika ada domain expert yang tidak tersedia.

- menginterpretasikan informasi yang cocok.

- Inisiatif, haruskan user mempertahankan pengawasan yang lengkap terhadap sistem, haruskah sistem langsung berinteraksi atau haruskah mendukung penggabungan dialog?

- Effect, para perancang seharusnya memperhatikan efek dari modelling dan adaptasi.

- Scope, para perancang perlu memperhatikan scope dari bantuan dimana digunakan pada level aplikasiatau sistem yang luas.

## Knowledge Representation: Domain dan Task Modelling

- Pendekatan yang umum dari masalah ini adalah untuk mewakili tugas user dari urutan perintah yang tersedia untuk mengeksekusinya.

- Sebagaimana pada tugas user, command digunakan untuk membandingkan mengcocokkan dengan ururutan tepat. Jika urutan command user tidak cocok, maka dibutuhan bantuan. Pendekatan ini digunakan pada sistem **PRIAM**.
1. Rule Based Techniques

2. Frame Based Techniques

3. Network Based Techniques

4. Examples Based Techniques

## Merancang Help dan Dokumentasi

- Hal-hal yang perlu diperhatikan dalam merancang help dan dokumentasi yaitu:
  
  - Perancangan seharusnya tidak seperti *add-on* pada sistem. Secara ideal seharusnya merupakan bagian integral dalam sistem.
  
  - Perancangan harus memperhatikan isi dari bantuan dan konteks teknologi tersedia.

## Masalah yang ada dalam implementasi

- Para perancang harus membuat keputusan untuk implementasi berupa secara fisik maupun pilihan yang tersedia untuk user. Keputusan ini sudah termasuk dalam pernyataan command operating system, apakah berbentuk metacommand atau aplikasi. Hambatan fisik berupa screen space, kapasitas memori dan kecepatan.

- Masalah lain adalah bagaimana struktur data bantuan: apakah berbentuk single file, hierarchy file atau database.

## Rangkuman

- Sistem yang baik biasanya mampu membuat user menghindari kesalahan dengan mengikuti petunjuk-petunjuk yang diberikan.

- Help dan dokumentasi membantu pengguna khususnya pengguna baru untuk memahami sistem.

- Sifat-sifat help dan dokumentasi antara lain : availability, accuracy dan completeness, consistency, robustness, flexibility, dan unobtrusiveness.

- Jenis Help dan dokumentasi dibedakan menjadi 2 yaitu : paper-based dan computer-based.

## Latihan

1. Bagaimankah pesan kesalahan (*error message*) yang baik digunakan untuk system?
   
   - Mudah dibaca dan dipahami.
   
   - Bersifat khusus pada kesalahan yang terjadi

2. Jelaskan penerapan penanganan kesalahan pada suatu bahasa pemrograman
   
   - Pada bahasa pemrograman `python`kesalahan dituliskan pada `Traceback`
   
   - ada beberapa error yang terjadi antara lain:
     
     - `SyntaxError`
     
     - `ZeroDevisionError`
     
     - `AssertionError`
     
     - `FileNotFoundError`
     
     - `NameError`
     
     - `ModuleNotFoundError`
     
     - `OverflowError`
     
     - `FloatingPointError`
     
     - dan lain sebagainya
       
       

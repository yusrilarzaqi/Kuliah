# Audio dan agent

**Audio**

Audio sering disebut sebagai media komunikasi. Audio dalam sistem komunikasi bercirikan video, sinyal elektrik digunakan untuk membawa unsur bunyi. Contohnya pada radio dan televisi.

Audio terbagi 2 yaitu :

- **Audio Speech**
  - Speech dalam interface berguna untuk keadaan : Tangan user sibuk, mata user harus memperlihatkan sesuatu kondisi yang tidak memungkinkan menggunakan keyboard.
- **Audio Non Speech**
  - Audio Non Speech digunakan sebagai alaram dan warning, atau status information. Penampilan information yang redundan dapat meningkatkan kinerja user. Contohnya, user dapat meningkatkan suara yang mencerminkan icon tertentu, tapi bukan tampilan visualnya.

## Perbedaan Speech dan non-speech

**Speech**

User harus mendengarkan keseluruhan kalimat sebelum mengerti maksudnya, sehingga membutuhkan waktu yang panjang.

**Non-Speech**

Dapat diasosiaikan dengan kejadian khusus, dan waktu yang dibutuhkan lebih pendek.

---

Audiotry Icons (Ikon bersuara) menggunakan suara alami untuk merepresentasikan tipe objek dan tindakan yang berbeda pada interface. Pada perusahan _Sonic Finder_, ikon auditori digunakan untuk merepresentasikan desktop objek untuk aksi membuang sesuatu ke keranjang sampah. User harus mempelajari suara-suara ini dengan menebak aksi yang biasa terjadi dalam kehidupan sehari-hari.

- Permasalahan ikon bersuara adalah beberapa objek dan aksi tidak memiliki kejelasan suara alami untuk mengidentifikasikannya.
- Pada perusahan **SharedArk**, sound digunakan dalam 3 hal, yaitu :
  - Konfirmasi aksi.
  - Informasi status.
  - Petunjuk navigasi.
- Suara penegasan menyediakan informasi yang redundan yang akan meningkatkan umpan balik. Proses dan state information sound ada dalam 2 level yaitu :
  1. **Global Sound**. Merepresentasikan state ke seluruh sistem dan dapat didengar dari mana saja.
  2. **Local Sound**. Spesifik untuk eksperimen khusus dan berubah saat user mengubah 1 eksperimen ke eksperimen lain.
- Informasi navigasional diletakkan di mana saja dalam sistem, yang akan didengar semakin keras jika user bergerak mendekat. Volumenya akan semakin pelan bilamana user menjauh.
- Alternatif penggunaan suara alami lainnya dengan menggunakan earcon. Earcon menggunakan kombinasi terstruktur dari not/nada yang disebut motives, untuk mempresentasikan aksi dan objek.
- Ada dua tipe kombinasi earcon yaitu :
  1. **Compund earcon**. Earcon ini menggabungkan motif yang berbeda untuk membuat suatu aksi yang spesifik.
  2. **Falmily earcon**. Earcon ini menampilkan compound earcon yang setipe.
- Contoh: kelasalahan pada operating system dan sintaks berada dalam `"error family'`

## Pemaduan Suara

- Pemaduan suara (_speech synthesis_) merupakan pelengkap dari pengenalan suara. Ide agar dapat berbicara dengan komputer merupakan hal yang paling menarik bagi banyak user, khususnya bagi merupakan yang tidak bisa komputer. Masalah yang ada pada pemaduan suara yaitu :
  - User sangat sensitif terhadap variasi dan informasi suara. Oleh sebab itu mereka tidak dapat memberikan toleransi atas ketidaksempurnaan pemadu suara.
  - Output dalam bentuk suara tidak dapat diulang atau dicari dengan mudah.
  - Meningkatkan kebersikan pada lingkungan kantor atau bila menggunakan headphone maka akan meningkatkan biaya.
- Lingkungan aplikasi pemandu suara :
  - Bagi tunanetra, Pemandu suara menawarkan media komunikasi dimana mereka dapat memiliki akses yang tidak terbatas.
  - Lingkungan dimana visual dan hepatic skill user sedang berfokus pada hal lain.
  - Contohnya: sinyal bahaya pada kokpit pesawat udara.

## Soundtrack

**Soundtrack adalah suatu _word processor_ dengan sebuah interface audiory ayng didesain untuk user yang bermasalah dengan alat visualnya.**

Tiap sel memiliki tone yang berbeda jika kursor ada di sel tersebut. dengan menggunakan tone ini maka user dapat menjalani sistem. dengan meng-klik satu sel, sel tersebut akaan menyuarakan nama selnya.

Dengan melakukan klik ganda maka akan muncul sub menu dari item tersebut. Item-item di sub menu juga memiliki tone. Semakin bergerak turun, tonenya semakin rendah dan bila naik tonenya akan semakin tinggi. Cara memasukkan teks ke dalam soundtrack dengan menyebutkan kata-kata atau karakternya. User menghitung tone yang berbeda untuk mengetahui lokasi/posisi di layar.

## Agent

Agents adalah segala sesuatu yang dapat melihat, mgeartikan, mengetahui (_perceiving_) lingkungannya melalui alat sensor (_sensors_) dan bertindak (_acting_) melalui aktuator (_actuators_).

- Manusia sebagai agent : mata, telinga dan organ lainnya sebagai sensors; tangan, kaki, mulut dan bagian tubuh lainnya sebagai actuators.
- Robot sebagai agent : kamera dan pejejak infra merah sebagai sensors; berbagai motor pengerak sebagai actuators.
- Soft sebagai agent : tekanan pada keyboard, isi file dan paket-paket pada jaringan sebagai masukan sensors; tampilan pada layar penilisan file dan pengiriman paket jaringan sebagai keluaran actuators.

### Tipe-Tipe Agent

1. Goal-based
   - Tujuan-tujuan tertentu dapat dicapai dengan cara-cara berbeda.
2. Utility-based
   - Agent membutuhkan tujuan untuk mengetahui situasi mana yang diharapkan akan menjadi sulit ketika urutan yang panjang dari tindakan-tindakan (_actions_) dibutuhkan untuk mencari tujuan.
3. Learning
   - Semua program-program agent terdahulu mendeskripsikan metode untuk memilih tindakan-tindakan (_actions_).

### User Interface Agent

Agent membantuk user dalam penggunaan interface. Jenis-jenis agnet antara lain:

1. Mainpulasi langsung. User memulai tindakan dan menggunakan agent secara lansung.
2. Manajemen tidak langsung. Process kerja sama dimana manusia dan komputer bersama-sama memulai tindakan.

---

Personal asistant merupakan agent yang termasuk autonomous agnet yang membantu user untuk menyelesaikan tugas. Sifat personal assistant antara lain:

1. Tingatanya bisa diubah.
2. Menggunakan Petunjuk.
3. Menggunakan inisiatif.

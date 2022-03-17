# Penerapan Algoritma dalam Pemrograman

## Tujuan Pembelajaran

Setelah Menyelesaikan Pembelajaran pada bab ini diharapkan Mahasiswa :

- Mampu untuk mempratekan perintah dasar untuk menampilkan ke layar dengan perintah `write` / `writeln` dan proses pembacaan variable dengan perintah `read` / `readln`.
- Mampu menerapkan variable dan type data dalam pembuatan program dengan benar.
- Mampu untuk menerapkan proses algoritma dalam pemrograman khusunya dalam pascal.
- Mampu untuk mengimplementasikan algoritma dalam pembuatan program aplikasi sederhana dalam pascal.

## Cari luas biang datar

- Menghitung luas persegi panjang dan segi 4 sama sisi
- Menghitung luas segitiga.
- Menghitung luas dan keliling sederhana

### Menghitung Luas Segi Empat

- **Algoritma Luas_Segi_Empat**
  - Algoritma menerima masukan panjang dan lebar segi empat.
  - Menghitung luasnya
  - Cetak luasnya ke piranti keluaran (Layar)
- **Deklarasi**
  - Panjang = int {tipe data bilangan bulat}
  - Lebar = int {tipe data bilangan bulat}
  - Luas = int {tipe data bilangan bulat}
- **Deskripsi**
   - Baca variable Panjang
   - Baca variable Lebar
   - Hitung kuas Segi Empat = Panjang * Lebar
   - Tampilkan luas ke layar
   - selesai

### Struktur Pemrograman

- **Judul Program**
  - `Program Hitung_Luas_Segi_Empat`
- **Bagian Deklarasi**
  - `Panjang, Lebar, Luas : int`
- `Begin`
  - Baca Panjang = `Write('Masukan panjang : '); Readln(Panjang);`
  - Baca Lebar = `Write('Masukan Lebar : '); Readln(Lebar);`
  - Hitung Luas = `Luas := Panjang * Lebar`
  - Tampilkan Hasil = `Writeln('Luas segi empat : ', Luas);`
  - Selesai
- `End.`

### Buat Luas Segi Empat Persegi Panjang

```pascal
program Hitung_Luas_Segi_Empat;
uses crt;

var
  Panjang, Lebar, Luas : integer;

Begin
  clrscr;
  write('Masukan panjang : '); Readln(Panjang);
  write('Masukan Lebar : '); Readln(Lebar);
  Luas := Panjang * Lebar;
  writeln('Luas Segi empat adalah : ', Luas);
  readln;
end.
```

### Menghitung Luas Segi Tiga

- **Algoritma Luas_Segi_Tiga**
  - Algoritma menerima masukan Alas dan Tinggi segi tiga.
  - Menghitung luasnya
  - Cetak luasnya ke piranti keluaran(Layar)
- **Deklarasi**
  - Alas = int {tipe data bilangan bulat}
  - Tinggi = int {tipe data bilangan bulat}
  - Luas = real {tipe data bilangan pecahan}
- **Deskripsi**
  - Baca variable Alas
  - Baca variable Tinggi
  - Hitung luas Segi 3 = (0.5 * Alas * Tinggi) atau
  - Hitung luas Segi 3 = (Alas * Tinggi)/2 atau
  - Tampilkan luas ke layar
  - Selesai

### Cari Luas Segi Tiga

```pascal
program Hitung_Luas_Segi_Tiga;
uses crt;

var
  Alas, Tinggi : integer;
  Luas : real;

begin
  clrscr;
  write('Masukan berapa Alasnya : '); readln(Alas);
  write('Masukan berapa Tingginya : '); readln(Tinggi);
  Luas := 0.5 * Alas * Tinggi;
  writeln('Jadi Luas Segi Tinggi adalah : ', Luas:4:2);
  readln;
end.
```

4:2

- (4) 1: satuan, 2 puluhan, 3 ratusan, 4 Ribuan
- (2) 1: persatuan, 2 perpuluhan

### Luas & keliling Lingkaran

- **Algoritma Luas_Lingkaran**
  - Menghitung luas lingkaran untuk ukuran jari-jari tertentu.
  - Algoritma menerima masukan jari-jari lingkaran, menghitung luas dan keliling, lalu cetak luas dan kelilingnya ke layar monitor.
- **Deklarasi**
  - jari = real {tipe data bilangan pecahan}
  - luas = real {tipe data bilangan pecahan}
  - keliling = real {tipe data bilangan pecahan}
  - phi = 3.14 {nilai tetap phi}
- **Deskripsi**
  - Baca jari_jari
  - Hitung luas = phi * jari * jari
  - Hitung keliling = phi * 2 * jari
  - Tampilkan luas dan keliling lingkaran ke layar
  - Selesai

### Hitung Luas Dan Keliling Lingkaran

```pascal
program Hitung_Luas_Keliling_Lingkaran;
uses crt;

var
  jari : integer;
  luas, kel : real;
const
  phi = 3.14;

begin
  clrscr;
  write('Masukan Jari jari Lingkaran : '); readln(jari);
  luas := phi * jari * jari;
  kel := phi * jari * 2;
  writeln('Luas Lingkaran adalah : ', luas:4:2);
  writeln('Keliling Lingkaran adalah : ', kel:4:2);
  readln;
end.
```

### Konversi Suhu

- **Algoritma Konversi_Suhu**
  - Menghitung Konversi suhu dari Celcius ke R dan F
  - Algoritma menerima masukan Celcius, koversi ke R dan F, lalu cetak hasil konversi R dan F ke layar monitor.
- **Deklarasi**
  - C = real {tipe data bilangan pecahan}
  - R real {tipe data bilangan pecahan}
  - F = real {tipe data bilangan pecahan}
- **Deskripsi**
  - Baca variable C
  - Konversi ke Reamur = `R := C * 4/5` atau `(0.8 * C)`
  - Konversi ke Farenheit = `F := C * 9/5 * 32 ` atau `(1.8 * C + 32)`
  - Tampilkan hasil konversi R dan F ke layar
  - Selesai

### Konversi Suhu

```pascal
program Konversi_Suhu;
uses crt;

var
  C, R, F : real

begin
  clrscr;
  write('Masukan Nilai Suhu Celcius : '); readln(C);

  R := C * 4/5;
  F := C * 9/5 + 32;

  writeln('Niai Reamur adalah : ', R:5:0);
  writeln('Niai Farenheit adalah : ', F:5:0);
  readln;
end.
```

### Hitung Pembayaran Cash

- Pencatatan transaksi penjualan sebuah toko kelontong dengan inputan nama barang, harga barang, jumlah barang(penjualan).
- Total adalah sebuah proses dari : harga barang * jumlah barang
- Buatan program transaksi diatas.
- Langkah - langkahnya:
  - kita tulis judulnya `Tansaksi_Penjualan`
  - deklarasikan variablenya :
    - `Namabar : string;`,
    - `Hargabar : real;`,
    - `Jumlahbar : integer;`, dan
    - `total : real;`
  - Tuliskan program pada antara `begin` dan `end`

### Hitung Pembayaran Cash

```pascal
program Hitung_Pembayaran_Cash;
uses crt;
var
  nama : string;
  harga, total : real;
  jml : integer;

begin
  clrscr;
  write('Nama Barang : '); readln(nama);
  write('Masukan Harga Barang : '); readln(harga);
  write('Masukan Jumlah Barang : '); readln(jml);

  total := harga * jml;

  writeln('Jadi Total Harga Adalah : ', total:6:2);
  readln;
end.
```

### Hitung Pembayaran Kontan

- Tambahkan program diatas dengan adanya Diskon, bahwa setiap pembelian dapat diskon sebesar 15%
- Tambahkan Bayar yang didapat dari Total - Diskon.
- Tampilkan hasil program diatas secara lengkap

### Kode : Pembayaran Kontan

```pascal
program Hitung_Pembayaran_Konten;
uses crt;
var
  nama : string;
  harga, total, diskon, bayar : real;
  jml ;: integer;

begin
  clrscr;
  write('Nama Barang  : '); readln(nama);
  write('Masukan Harga Barang : '); readln(harga);
  write('Masukan Jumlah Barang : '); readln(jml);

  total := harga * jml;
  writeln('Jadi Total Harga Adalah : ', total:6:2);
  diskon := (total * 15)/100;
  bayar := total - diskon;

  writeln('Dapat Potongan Sebesar :  ', diskon:5:2);
  writeln('Total Bayarnya adalah :  ', bayar:5:2);
  readln;
end.
```

## Penutup

- Hal yang perlu diperhatikan dalam pratikum program pascal ini adalah:
  - Setiap akhit penulisan harus berakhir dengan `;` (titik koma).
  - Deklarasi variable harap diperhatikan dalam penulisan harus sama, sedangkan besar kecil huruf tidak berpengaruh.
  - Untuk deklarasi bertipe real harus menyediakan ruang untuk data angka yang akan di tampilkan karena bentuk decimal.
  - Untuk deklarasi tipe bilangan bulat tidak perlu menyediakan ruang.


# Array (larik)

## Tujuan Pembelajaran

- Diharapkan mahasiswa mengerti dan mampu memahami tentang fungsi array.
- Mahasiswa mampu merencanakan dan menempatkan fungsi array pada program sederhana terutama dalam program pascal.
- Mahasiswa mampu mengaplikasikan fungsi array dalam pembuatan program baik dalam sekala kecil dan besar.

## Materi

- Pengertian Array
- Pendifinisian Array
- Sifat Array
- Jenis Array
- Program Array
- Kesimpulan

## Pengertian Array

- Array (larik) adalah sebuah struktur data yang terdiri atas banyak variabel dengan tipe data sama, dimana masing-masing elemen variabel mempunyai nilai index.
- Array biasanya disebut juga sebagai table vector atau larik.
- Setiap elemen diakses langsung melalui _index_.
- Index array haruslah tipe data yang berurutan, seperti _integer_ atau _karakter_.
- Setiap elemen array mempu untuk menyimpan satu jenis data (yaitu:variabel).
- Array selalu membuat tiga(3) komponen penting yaitu : nama array, index dan, tipe data yang digunakan oleh array.

## Sifat Array

- Array merupakan struktur data yang statis, yaitu jumlah elemen yang ada harus ditentukan terlebih dahulu dan tak bisa di ubah saat program berjalan.

## Macam Array

- Array satu dimensi
- Array dua dimensi
- Array multi dimensi

### Array Satu Dimensi

- Bentuk Array satu dimensi diakses melalui indeksnya secara langsung.

```pascal
var
  nama_array : array[n1..n2] of <tipe data>;
```

- N1 index awal dan N2 index akhir.
- N1 harus lebih kecil dari N2.

## Pendifinisian Array

- Contoh Array `bil : Array[1..6] of integer;`, 1,2,3 ,4, 5, 6.
- Secara logika pendefinisian array di atas merupakan sekumpulan kotak, dimana tiap kotam mempunyai nilai indeks integer 1, 2, 3, ..., 6. tiap elemen array ditandai dengan: `bil[1], bil[2], bil[3], bil[4], bil[5], bil[6]`.
- Untuk mengisi elemen array misal `bil[1] := 4;`.

## Contoh Array

```pascal
var
  bil: Array[1..5] of integer;
  gaPok, tunj : Array[1..10] of real;
  nama : Array[1..20] of string;
  nama, alamat : Array[1..20] of string;
```

### Array dengan type

```pascal
type
  nama_array = Array[bawah..atas] of type_data;
var
  variabel_array : nama_array;
```

---

```pascal
type
  a_string = array[1..20] of string;
  a_real = array[1..10] of real;
  a_bil = array[1..10] of integer;

var
  nama, alamat : a_string;
  gPok, tunj, gb : a_real;
  Bil : a_bil;
```

## Contoh Program

```pascal
program Menapilkan_angka_tanpa_array;
uses crt;

var
  bil : integer;
  i : integer;

begin
  clrscr;
  for i:=1 to 5 do
    begin
      write('Masukan bilangan');
      readln(bil);
    end;
  
  for i := 1 to 5  do
    write(bil, ' ');
  readln;
end.
```

---

```pascal
program Menapilkan_angka_dengan_array;
uses crt;

bil
  bil : array[1..5] of integer;
  i, n : integer;

begin
  clrscr;
  for i := 1 of 5 do
    begin
      write('Masukan bilangan'); 
      readln(bil[i]);
    end;

  for i := 1 to 5 do 
    write(bil[i], ' ');
  readln;
end.
```

### Keterangan

- Kenappa 45, 90, 20, 10 tidak tercetak ?
- Karena variabel menampung 1 nilai yaitu : `var : bil;`.
- Dimana setiap looping, diadakan pengisian baru, otomatis, harga yang terlebih dulu terisi, akan digantikan dengan data yang terakhir.
- Maka dalam hal ini data yang terakhir(55) yang tercetak.
- Semua nilai di tampung dalam var bil.
- Input 45, 90, 20, 10, 55 semua tercetak, karena variabel menampung nilai dalam index[i], `var : bil[i];`.
- Dimana setiap looping, diadakan pengisian baru, otomatis bil akan ditampung ke dalam variabel index[i], begitu seterusnya sampai dengan data yang terakhir.
- Maka dalam hal ini data yang tersimpan pada `var bil[1]=45`.

![Keterangan](img)

- Tanpa Array Semua nilai di tampung dalam satu variabel dengan nama `var : bil`.
- Dengan Array nilai satu di tampung dalam satu variabel dengan nama `var : bil[1]`, dua dengan `var : bil[2]`, dsb.

## Contoh Array

```pascal
program Contoh_Dengan_Program_Array;
uses crt;

const
  maksimal = 25;

type
  a_real = array[1..25] of real;

var
  nama : array[1..25] of string;
  hrg, jml, tot : a_real;
  n, x : byte;
  grand : real;

begin
  clrscr;
  grand :-0;
  writeln('Pengelolaan Data Penjualan Barang');
  writeln;
  write('Berapa Jumlah Data barnag [max : 25] ? ');readln(n);

  if n > masksimal then
    begin
      writeln('Error:maksimal Jumlah Data : ', maksimal);
      readln;
      halt;
    end;
  for x := 1 to n do
    begin
      writeln('Data Ke = ', x);
      writeln;
      write('Nama Barang    ? ');readln(nama[x]);
      write('Harga Satuan   ? ');readln(hrg[x]);
      write('Jumlah Terjual ? ');readln(jml[x]);

      tot[x] = hrg[x] * jml[x];

      writeln('Total Bayar = ', tot[x]:10:2);
      writeln;
    end;
  writeln('Tekan enter untuk liat daftar ');readln;

  {laopran record data yang di masukan}
  clrscr;
  writeln('Daftar Penjualan Barang');
  writeln;
  writeln('+---+-----------------+----------+-----+---------------+');
  writeln('|No | Namaa Barang    | Harga @  | QTY | Total Bayar   |')
  writeln('+---+-----------------+----------+-----+---------------+');
   
  for x :- 1 to n do
    begin
      write('I', x:3);
      write('I', nama[x] :20);
      write('I', hrg[x] :10:0);
      write('I', jml[x] :5:0);
      write('I', tot[x] :12:2);
      writeln('I');

      grand := grand + tot[x];
    end;

  writeln('+---+-----------------+----------+-----+---------------+');
  writeln('I Jumlah Total Bayar                   : ', grand:12:2, 'I');
  writeln('+---+-----------------+----------+-----+---------------+');
  readln;
end.
```

## Soal

1. Berikut adalah komponen utama sebuah array, **Kecuali**:
  a. Nama Array
  X. Deklarasi
  c. Index
  d. Type Data

2. Berikut adalah contoh sebuah deklarasi array, **Kecuali**:
  a. `Nama : array[0..10] of string;`
  b. `Bilangan : array[10..25] of real;`
  X. `Gaji : array[25..10] of integer;`
  d. `Tunjangan : array[1..5] of integer;`

3. Type Index  dalam sebuah array berikut ini adalah benar, **Kecuali**:
  a. integer
  X. boolean
  c. string
  d. byte

4. Berikut adalah contoh sebuah deklarasi array dua dimensi, **Kecuali**:
  a. `Matakuliah : array[0..10, 1..5] of string;`
  X. `Nilai : array[5..10,10..5] of real;`
  c. `Gaji : array[5..10, 10..20] of integer;`
  d. `Tunjangan : array[1..5, 2..6] of integer;`

5. Nama lain dari sebuah array adalah :
  a. type
  b. boolean
  c. kolom
  X. larik

## Kesimpulan

- Pedefinisian variabel dengan menggunakan array mampu menampung data dengan type yang sama dengan memberikan nomor indeks pada setiap data yang disimpannya.
- Jadi dengan array ini data yang banyak dapat di definisikan / deklarasikan dengan menjadi lebih mudah / pendek, jadi tidak perlu mendefinisikan satu persatu (record/record).
- Array hanya bias diisi sesuai kapasitasnya, jika indeks yang di akses lebih dari yang ada maka akan terjadi kesalahan, karena mengakses data yang belum dialokasikan.


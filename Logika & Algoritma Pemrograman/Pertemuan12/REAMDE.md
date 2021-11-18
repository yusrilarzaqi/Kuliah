# Label dan Goto

## Materi

- `Label`
- `Goto`
- `Record`

## Tujuan Pembelajaran

- Mahasiswa mampu dan mengerti mengenai fungsi goto dan label.
- Mahasiswa mampu menerapkan dalam penyusunan program.

## Label

- `Goto` adalah perintah dalam pascal yang digunakan untuk meloncat pada statement yang di deklarasikan oleh `label`.
- Perintah ini berfungsi untuk loncat ekseksi ke sebuah pernyataan yang dideklarasikan oleh `label`
- `label` adalah suatu nama tertentu (dapat terdiri angka atau huruf atau kombinasinya), yang dalam program nanti akan dituju oleh statement `goto`.
- Namun dalam pascal sesungguhnya statement `goto` ini hanya diijinkan tertapi sama sekali **tidak dianjurkan**. Karena statement `goto` menyebabkan struktur program menjadi tidak jelas.
- Bentuk umum deklarasi `label : nama label1 ... nama label-n`

```pascal
label : Ulang;

label : 100, Atas, Kembali;
```

## Goto

- Pernyataan `goto` digunakan untuk melakukan transfer eksekusi program ke pernyataan yang dideklarasikan oleh `label`. Bentuk penulisan. `goto label;`.
- `label` harus berada didalam blok yang sama dengan pernyataan `goto`. Hal ini tidak memungkinkan melompat keluar dari dalam procedure atau function.
- Suatu `label` dideklarasikan pada bagian deklarasi `label`.
- Untuk penulisan identifier yang akan digunakan pada `label`, penggunaan digit secara urut diantara 0 dan 9999 dapat label.
- `label identifier1, identifier-n`.

## Contoh program

```pascal
program Contoh_label;
uses crt;
label
  100, selesai;

begin
  clrscr;
  writeln('Bahasa Permrograman');
  goto 100;
    writeln('Visual Basic');
    writeln('Visual Foxpro');

  100 :
    writeln('Turbo Pascal');

  goto selesai;
    writeln('Delphi');

  selesai:
  readln;
end.
```

---

```pascal
program Goto_dalam_label;
uses crt;
label
  Alas;

var
  nil1, nil2 : integer;
  nilRata    : real;
  lagi       : char;

begin
  Atas;
  clrscr;
  writeln('Program Hitung Nilai');
  writeln('====================');
  writeln;
  write('Masukan Nilai 1 : '); readln(nil1);
  write('Masukan Nilai 2 : '); readln(nil2);

  nilRata := (nil1 + nil2)/2

  writeln('Nilai Rerata : ', nilRata:5:2);

  writeln;
  write('Ingin hitung lagi [y/n] : ');readln(lagi);

  if (lagi='y') or (lagi='Y') then
    goto atas;
end.
```

---

```pascal
program Goto_dalam_label;
uses crt;
label
  Alas;

var
  nil1, nil2 : integer;
  nilRata    : real;
  lagi       : char;

begin
  Atas;
  clrscr;
  writeln('Program Hitung Nilai');
  writeln('====================');
  writeln;
  write('Masukan Nilai 1 : '); readln(nil1);
  write('Masukan Nilai 2 : '); readln(nil2);

  nilRata := (nil1 + nil2)/2

  writeln('Teran any key untuk cetak '); readln;
  clrscr;
  writeln('Program Hitung Nilai');
  writeln('+-------------------+');
  writeln(':Nilai 1    : ', nil1,':');
  writeln(':Nilai 2    : ', nil2,':');
  writeln(':Rata - Rata: ', nil2,':');
  writeln('+-------------------+');
  writeln;
  write('Login Hitung lagi [y/n] : ');readln(lagi);
  
  if (lagi='Y') or (lagi='y') then
    goto atas;

end.
```

---

```pascal
program Hitung_luas_Segitiga;
uses crt;
label
  ulang;

var
  alas, tinggi    : integer;
  luas            : real;
  lagi            : char;

begin
  ulang;
  clrscr;
  write('Masukan panjang alas  : '); readln(alas);
  write('Masukan panjang tinggi  : '); readln(tinggi);

  luas := alas*tinggi/2;

  writeln('Luas Segitiga : ', luas:7:2);
  write('ulang [y/n]'); readln(lagi);
  
  if (lagi='Y') or (lagi='y') then
    goto ulang
end.
```

## Menu

- Merupakan daftar pilihan yang akan di eksekusi sesuai dengan pilihan yang ada.

## Contoh Menu

Menu Pilihan Cari Luas dan Keliling

1. Segi Tiga.
2. Segi Empat.
3. Lingkaran.
4. Keluar.

## Contoh Program

```pascal
program Pilihan_Menu(Output);
uses crt;
var
  pilihan : integer;

begin
  textcolor(6_blink);
  textbackground(1);
  clrscr;
  writeln('Menu Utama');
  writeln('1. Pilihan 1');
  writeln('2. Pilihan 2');
  writeln('3. Pilihan 3');
  writeln('4. Exit     ');
  writeln;
  write('Pilihan Anda [1-4] : '); readln(pilihan);

  case pilihan of
    1 : writeln('Anda Memilih Nomor Satu');
    2 : writeln('Anda Memilih Nomor Dua ');
    3 : writeln('Anda Memilih Nomor Tiga');
    4 : writeln('Anda Keluar Dari Menu  ');
  else
    writeln('Anda Salah Pilih');
  end;
  readln;
end.
```

## Menu Exe

```pascal
program Menu_pilihan_program;
uses crt, dos;
var
  pil : char;
  utama : boolean;

begin
  utama := True;
  while utama then
    begin
      clrscr;
      writeln('========Menu Pilihan Program========');
      writeln;
      writeln('1. Konversi Suhu Celcius');
      writeln('2. Luas Segi Tiga');
      writeln('3. Luas Segi Empat');
      writeln('4. Luas Lingkaran');
      writeln('5. Keluar Menu Utama');
      writeln;
      write('Pilihan Anda [1-5]'); pil := readkey;
      writeln(pil);

      swapvectors;
      case pil of
        '1': exec('celcius.exe');
        '2': exec('Segi3.exe');
        '3': exec('segi4.exe');
        '4': exec('ling.exe');
        '5': utama := false;
      end;{case pil of}
      swapvectors;
    end; {while utama do}
end.
```

## Record

### Definisi Record

- Record adalah kumpulan elemen-elemen data yang digabungkan menjadi satu kesatuan. Masing-masing elemen data disebut **field**
- **Field** data tersebut dapta memiliki tipe data yang sama atau berbeda. Field-field tersebut digabungkan menjadi satu `record` dengan tujuan untuk memudahkan.

### Deklarasi Record

**Bentuk Umum**

```pascal
type
  <NamaRecord> = record
    <DataField-1>:<type1>;
    <DataField-2>:<type2>;
    <DataField-n>:<typen>;
```

- Deklarasi `record` pada umumnya diawali dengan kata baku `type`, namun anda juga dapat mendeklarasikan `record` langsung dengan menggunakan kata baku `var` seperti berikut :

```pascal
var
  <NamaRecord>:record
     <DataField-1>:<type1>;
     <DataField-2>:<type2>;
     <DataField-n>:<typen>;
```

**Contoh**

```pascal
type
 Mahasiswa = record
  Nim : string[10];
  Nama : string[20];
  Alamat : string[30];
  Ipk : real;

var
  Mhs : Mahasiswa;
```

- Pendeklarasian `record` selalu diawali oleh nama `record`, tanda sama dengan (=) dan kata baku `record` serta diakhiri oleh kata baku `end`.
- Field-field dari `record` tersebut diletakan diantara kata baku `record` dan `end`.
- Di dalam suatu `record` jika terdapat field-field yang bertipe sama dapat dideklarasikan bersamaan dengan dipisahkan oleh tanda koma (,) sehingga anda idak perlu menulisakan datanya berulang-ulang.

### Pemakaian Record

- Untuk menggunakan `record` tersebut meka harus ditulis nama record beserta dengan fieldnya yang dipisahkan dengan tanda titik (.).
- Misal akan menulis Nim seorang mahasiswa ke layar maka penulisan yang benar adalah : `write(Mhs.Nim);`.
- atau dapat juga dengan menggunakan kata baku `with-do` : `with Mhs do writeln(Nim);`

### Contoh : Record data mahasiswa

```pascal
program Record_Mahasiswa;
uses crt;
type
  Mahasiswa = record;
    nama : string[20];
    nim : string[10];
    prodi : string[30];
    ipk : real;

var 
  mhs : Mahasiswa;

begin
  clrscr;
  write('Nama Mahasiswa   = '); readln(mhs.nama);
  write('Nim Mahasiswa    = '); readln(mhs.nim);
  write('Program Studi    = '); readln(mhs.prodi);
  write('IPK Mahasiswa    = '); readln(mhs.ipk);
  writeln;
  writeln('Nama Mahasiswa   = ', mhs.nama);
  writeln('Nim Mahasiswa    = ', mhs.nim);
  writeln('Program Studi    = ', mhs.prodi);
  writeln('IPK Mahasiswa    = ', mhs.ipk:2:2);
  readln;
end.
```

## Penutup

- Memanipulasi string merupakan bentuk konversi menjadikan string atau menjadi numeric dari sebuah objek dengan mengikuti aturan yang berlaku.
- Perintah `goto` hanya bisa dijalankan bila di rujuk dan di deklarasikan oleh `label`, tanpa delkarasi dari `label` maka perintah `goto` tidak dapat dijalankan.


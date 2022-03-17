# Manipulasi String format Number

## Materi

- fungsi String
- fungsi Numerik

## Tujuan Pembelajaran

- Mahasiswa mampu dan mengerti mengenai fungsi karakter dan numeric.
- Mahasiswa mampu mengkonversi atau memanipulai data dari string ke numeric atau sebaliknya dan dapat menerapak dalam penyusunan program.
- Mahasiswa mampu menerapkan dalam penyusunan program / mngimplementasikan kedalam program.

## Concat (concatenation) penggabungan

- Untuk menggabungkan 2 atau beberapa variabel string.
- Sintaks: `concat(s1[,s2,...,sn]: String): String;`

```pascal
concat('ABC', 'DEF') {ABCDEF}
```

## Copy

- Mengambil satu(1) atau beberapa karakter dari sebuah string.
- Sintaks: `copy(S, Index, count): String;`
- S = String Sumber(string).
- Index = posisi awal kita akan mengambil beberapa karakter (integer).
- Count = banyaknya karakter yang akan diambil (integer). 

```pascal
copy("Semarang", 3, 4) {mara}
```

## Delete

- Menghapus sebagian karakter dari sebuah string.
- Sintaks : `delete(S, Indexm count);`
- S = String Sumber(string).
- Index = Posisi awal kita akan mengambil beberapa karakter (integer)
- Count = Banyaknya karakter yang akan dihapus (integer)

```pascal
delete("Semarang", 3, 4) {Seng}
```

## Insert

- Menyisipkan satu(1) atau beberapa karakter ke dalam sebuah string.
- Sintaks : `insert(Source, var S, Index);`
- Source  = Sumber tring untuk disisipi (string)
- var S   = String tujuan yang akan disisipi oleh string Source (string)
- Index   = Posisi mulsi (integer)

```pascal
insert('Semarang', 'Atlas', 8) {SemarangAtlas}
```

## Contoh program

```pascal
program Fungsi_String;
uses crt;
const
  x  = 'Budi';
  y  = 'Hartono';

var
  a, b, c, p, z : string;

begin
  clrscr;
  z := 'SemarangAtlas';
  p := 'Kota Semarang';
  delete(z, 5, 4);
  a := concat(x, y);
  b := copy(p, 1, 4);
  writeln(z);
  writeln(a);
  writeln(b);
  insert('ku', p, 5);
  writeln(p);
  readln;
end.
```

## STR (prosedur)

- Merubah nilai numeric ke dalam nilai string.
- Sintaks : `STR(N, S);`
- N  = data tipe integer,
- S  = data tipe string

```pascal
str(50, data){var data membawa nilai 50 bertipe string};
```

## Contoh kasus

```pascal
program  Fungsi_string;
uses crt;
var
  v : string;
  x, a : integer;

begin
  clrscr;
  x := 50;
  a := 2 * x;
  writeln(a);
  readln;
  str(x, s); {Unknown identifier} {Type mismatch}
  b := 2*s;
  writeln(a);
  writeln(b);
  readln;
end.
```

## CHR (fungsi)

- Memberikan kode ASCII
- Sintaks : `chr(N);`
- N = variabel bertipe numeric

```pascal
chr(3); 
```

## Val (prosedur)

- Merubah nilai string kedalam nilai numeric.
- Sintaks : `val(S, N, P);`
- S = nilai string.
- N = Nilai real.
- P = Posisi salah.
- Nilai string harus berisi angka, plus atau minus, bila tidak berati kesalahan dan letak.
- Kesalahan ditunjukan oleh variabel posisi salah. jika benar, maka nilai variabel tsb = 0(nol).

```pascal
val("500", 1, 3); {500 (numeric)}
```

## Round (Bilangan pecahan)

- Untuk membulatkan bilangan pecahan, jika pecahan diatas 50 dibulatkan ke atas, jika kurang dari 50 dihilangkan pechannya.
- Sintaks : `round(S);`
- S = Variabel bertipe pecahan

```pascal
round(70.64); {71}
round(70.44); {70}
```

## Contoh Kasus

```pascal
program Fungsi_String;
uses crt;
var
  x, y, b : string;
  z, a, i, p, q : integer;

begin
  clrscr;
  x := 'A-15';
  y := copy(x, 3, 2);
  val(y, z, i);
  a := z * 3;
  b := chr(3);
  writeln(a);
  writeln(b);
  p := round(75.65);
  q := round(75.45);
  writeln(p);
  writeln(q);
  readln;
end.
```

## Exit dan Halt

- Untuk memaksa keluar dari sebuah aplikasi program yang sedah dijalankan dalam pascal.

### Contoh

```pascal
program Fungsi_exit_keluar_dari_block_proses_secara_paksa;
uses crt;
var
  n1 : longint;

begin
  clrscr;
  n1 := 1;
  repeat
    if n1 = 1000 then
      halt
    else
      writeln(n1);
    n := n1 + 1;
  until n1 > 5000;
  readln;
end.
```

---

```pascal
program Fungsi_exit_keluar_dari_blok_proses;
uses crt;

var
  n1 : longint;

begin
  clrscr;
  n1 := 1;
  while n1 <= 5000 do
    begin
      if keypressed then
        exit
      else
        writeln(n1);
      n1 := n1 + 1;
    end;
  readln;
end.
```

## Length (fungsi)

- Memberikan nilai panjang dari suatu string (jumlah karakter dalam string).
- Sintaks : `length(S);`
- S = String
- `length(S);` menghasilkan nilai integer;

```pascal
length("Semarang Atlas");{14}
```

## Pos (fungsi)

- Mencari posisi sebuah bagian string (substring) didalam sebuah string.
- Sintaks : `pos(Substr, S);` menghasilkan nilai byte
- Substr = Substring yang akan dicari posisinya didalam sebuah string S, bila bernilai 0 berati nilai string yang dicari tidak ada.

```pascal
pos("Semarang Atlas", a);{4, 6, 13}
```

## Upcase (fungsi)

- Memberikan huruf kapital dari argunen
- Sintaks : `upcase(S);`
- S = Variabel bertipe karatkter

```pascal
upcase("Semarang Atlas");{SEMARANG ATLAS}
```

## Randomize (fungsi)

- Untuk meampilkan secara acak sebuah angka.
- Sintaks : `randomize(N);`
- N = variabel bertipe integer;

```pascal
randomize(9);{angka random 1-9}
```

# Funsi Numeric

## Cos & Exp

### Cos (fungsi)

- Memberikan nilai dari fungsi consinus.
- Sintaks : `cos(x);`

### Exp (fungsi)

- Menghitung nilai pangkat dari bilangan e (bilangan alam),
- yaitu sebesar x.
- Sintaks : `exp(x);`
- x = dapat bertipe real atau integer dan akan menghasilkan nilai bertipe real.

```pascal
cos(10);{-0.839}
exp(10);{22026.466}
```

## Int (fungsi)

- Memberikan nilai integer (bilangan bulat) dari suatu variabel dengan mebuang bilangan dibelakang koma .
- Sintaks : `int(x);`

```pascal
int(10);{10.00}
```

## Ln (fungsi)

- Digunakan untuk menghitung nilai logaritma alam (natural logarithm) dari nilai x.
- Sintaks : `ln(x);`

```pascal
ln(13);{1.11394335230683676920}
```

## Sin (fungsi)

- Memberikan nilai dari fungsi sinus.
- Sintaks : `sin(x);`

```pascal
sin(10); {-0.544}
```

## Sqr (fungsi)

- Digunakan untuk menghitung nilai pangkat kuadrat dari suatu bilangan.
- Sintaks = `sqr(x);`
- Tipe dari x bisa berupa real maupun integer. Dan hasilnya akan sama dengan  tipe dari x.

```pascal
sqr(10); {100}
```

## Sqrt & Chr

### Sqrt (fungsi)

- Digunakan untuk menghitung nilai akar dari suatu bilangan.
- Sintaks : `sqrt(x);`

### Chr (fungsi)

- Merubah nilai dari byte kebentuk karakter yang sesuai dengan kode ASCII.
- Sintaks : `chr(x);`
- x = bertipe byte

```pascal
sqrt(10);{3.162}
```

## Round (fungsi)

- Membulatkan data tipe real ke data tipe longint.
- Sintaks : `round(x);`.
- Jika nilai pecahan `< 0.5` maka dibulatkan kebawah.
- Jika nilai pecahan `> 0.5` maka dibulatkan keatas.

```pascal
writeln('10/3 dibulatkan = ', round(10/3));
```

- hasilnya : 10/3 dibulatkan menjadi 3

## Trunc (fungsi)

- Membulatkan kebawah data tipe real ke data tipe longint.
- Sintaks : `trunc(x);`

```pascal
writeln('20/3 dibulatkan kebawah = ', trunc(20/3));
```

- hasilnya 20/3 dibulatkan kebawah maka 6

## Warna

### textcolor (prosedur)

- Untuk mengatur warna dari karakter-karakter di layar.
- Sintaks : `textcolor(color : byte);`
- catatan : untuk pilihan warna lihat pada buku Turbo Pascal

### textbackground(prosedur)

- Untuk mengatur warna latar belakang dari karakter-karakter dilayar.
- Sintaks : `textbackground(color : byte);`

## Sound (prosedur)

- Untuk mengaktifkan suara(beep) pada internal speaker.
- Sintaks : `sound(hz : word);`
- Untuk mengnonaktifkannya, gunakan statement `NOSOUND`.

## Catatan Warna

### Daftar kode warnya dan kostantanya :

0. BLACK
1. BLUE
2. GREEN
3. CYAN
4. RED
5. MAGENTA
6. BROWN
7. LIGHTGRAY
8. DARKGRAY
9. LIGHTBLUE
10. LIGHTGREEN
11. LIGHTCYAN
12. LIGHTRED
13. LIGHTMAGENTA
14. YELLOW
15. WHITE

## Contoh Program

```pascal
program Aritmatik;
uses crt;
var
    x : real;

begin
  clrscr;
  write('masukan nilai dari x : ');readln(x);

  if x < 0 then x := ABS(x);
  writeln('Nilai x = ', x:5:2);
  writeln('Nilai eksponentialnya = ', exp(x):7:3);
  writeln('Nilai logaritma alamnya = ', ln(x):7:3);
  writeln('Nilai integernya = ', int(x):5:2);
  writeln('Nilai fraksionalnya = ', frac(x):5:2);
  writeln('Nilai x dipangkatkan = ', sqr(x):9:3);
  writeln('Nilai x diakarkan = ', sqrt(x):9:3);
  write('Nilai x jika dimasukan dalam ');
  writeln('fungsi Sin, Con, Tan');
  writeln('- Sinus = ', sin(x):9:3);
  writeln('- Cos   = ', cos(x):9:3);
  writeln('- Tan   = ', arctan(x):9:3);
  readln;
end.
```

---

```pascal
program Fungsi_Val_Konversi_dari_String_menjadi_Numerik;
{Syntax : val(s, n, kode)
 dimana s adalah nilai stringnya, n adalah nilai numnya dan kode adalah untuk mengetahui posisi yang saalah konversi dari string(s) hasilnya akan ditampung di variabel n}
uses crt;
var
  n, h : longint;
  kode : integer;int
  s, s1 : string;

begin
  clrscr;
  s := 'kode500';
  s1 := copy(s, 5, 3);
  writeln('Nilai String Sebelum dirubah    = ', s);
  val(s1, n, kode);
  if kode <> 0 then
    writeln('Letak Kesalahan pada posisis ->> ', kode)
  else
    writeln('Hasil numeriknya setelah dirubah  ', n1);
    writeln('Hasil numeriknya dikalikan dengan 2  ', n * 2);
  readln;
end.
```

## Penutup

- Manipulasi string merupakan bentuk konversi menjadikan string atau menjadi numeric dari sebuah objek dengan mengikuti aturan yang berlaku.
- Perintah `goto` hanya bisa dijalankan bila dirujuk dan dideklarasikan oleh label, tanpa deklarasi dari label maka perintah `goto` tidak dapat dijalankan.


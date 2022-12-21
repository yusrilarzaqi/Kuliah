# Variabel, Type Data dan Operator dalam JavaScript

## Variable Dalam Javascript

Variable adalah tempat dimana kita menyimpan nilai-nilai atau informasi pada Javascript.

Variable yang dideklarasikan di isi dengan nilai apa saja.

Dalam Javascript pendeklarasian sebuah variable sifatnya opsional, artinya anda boleh mendeklarasian atau tidak hal tersebut tidak menjadi masalah.
Jika anda memberi nilai pada variable, maka dalam JavaScript dianggap bahwa anda telah mendeklarasikan variable tersebut.

Aturan penamaan variabe :

- Harus diawali dengan karakter (huruf atau garis bawah).
- Tidak boleh menggunakan spasi.
- Huruf kapitan dan kecil memiliki arti yang berbeda.
- Tidak boleh menggunakan kata-kata yang merupakan perintah dalam Javascript.

**Deklarasi Variable**

```
var nama_variable = nilai;
```

atau

```
nama_variable = nilai
```

contoh :

```javascript
var nama;
nama = 'Yusril Arzaqi';
var umur = 17;
```

## Tipe Data

Tidak seperti bahasa pemrograman lainnya, JavaScript tidak memiliki tipe data secara explisit.

Hal ini dapat dilihat dari beberapa contoh variable diatas. Anda mendeklarasikan variable tapi tidak menentukan tipenya.

Meskipun JavaScript tidak memiliki tipe data secara explisit. Javascript mempunyai tipe data implisit.

Terdapat empat macam tipe data implisit yang dimiliki oleh Javascript yaitu :

- `Number` : `01001019`, `0.10102`, `-1212`.
- `String` : `"Hallo"`, `"April"`, `"Jl. Setiabudi No 17A"`.
- `Boolean` : `true`, `false`.
- `Null` : variable yang tidak diinisialisasi.

### Tipe Numerik

Pada dasarnya Javascript hanya mengenal dua macam tipe numerik, yaitu bilangan bulat (integer) dan bilangan pecahan (real/float).

Untuk bilangan bulat, kita dapat mepresentasikan dengan basis desimal, oktal, atau heksadesimal.

Contoh :

```javascript
var A = 100;
let B = 0x2f;
```

untuk pendeklarasian tipe bilangan real, dapat menggunakan tanda titik atau notasi ilmiah (notasi E).

Contoh :

```javascript
var phi = 3.14533567;
let b = 1.23456e3;
```

### Tipe String

Untuk mendeklarasikan tipe string dapat dilakukan dengan cara menuliskan string diantara tanda petik tungal `'` atau tanda petik ganda `"`.

Contoh :

```javascript
var str = 'Contoh deklarasi String';
let str1 = 'Cara ini juga bisa untuk menulis string';
```

### Tipe Boolean

Tipe boolean hanya mempunyai nilai `True` atau `Flase`.
Tipe ini biasanya digunakan untuk mengecek suatu kondisi atau keadaan.

Contoh :

```javascript
var X = Y > 90;
```

contoh tiatas menunjukan bahwa jika Y lebih besar dari 90 maka X akan bernilai `True`.

### Tipe Null

Tipe Null digunakan untuk mempresentasikan variable yang tidak diberi nilai awal (inisialisasi).

## Operator

### Aritmatika

Digunakan untuk operan bertipe numerik . Ada dua macam operator aritmatika, yaitu operator numerik tunggal dan operator aritmatik biner.
Perbedaan kedua operator terletak pada jumlah opearan yang harus dioperasikan.

| Operator | Tunggal / Biner |       Keterangan        |
| :------: | :-------------: | :---------------------: |
|   `+`    |      Biner      |       Penjumlahan       |
|   `-`    |      Biner      |       Pengurangan       |
|   `*`    |      Biner      |        Perkalian        |
|   `/`    |      Biner      |        Pembagian        |
|   `%`    |      Biner      |         Modulus         |
|   `-`    |     Tunggal     |         Negasi          |
|   `++`   |     Tunggal     | Penambahan dengan satu  |
|   `--`   |     Tunggal     | Pengurangan dengan satu |

### Pemberian Nilai

Digunakan untuk memberikan nilai ke satuan operan atau mengubah nilai suatu operan.

| Operator |   Keterangan    |  Contoh   |  Ekuivalen   |
| :------: | :-------------: | :-------: | :----------: |
|   `=`    |   Sama dengan   |  `x = y`  |              |
|   `+=`   | Ditambah dengan | `x += y`  | `x = x + y`  |
|   `-=`   | Dikurang dengan | `x -= y`  | `x = x - y`  |
|   `*=`   |  Dikali dengan  | `x *= y`  | `x = x * y`  |
|   `/=`   |  Dibagi dengan  | `x /= y`  | `x = x / y`  |
|   `%=`   | Modulus dengan  | `x %= y`  | `x = x % y`  |
|   `&=`   | Bit And dengan  | `x &= y`  | `x = x & y`  |
|  `\|=`   |  Bit Or dengan  | `x \|= y` | `x = x \| y` |

### Pembanding

Digunakan untuk membandingkan dua buah operan. Operan yang dikenal operator ini dapat bertipe string, numerik, maupun ekspresi lain.

| Operator    | Keterangan              |
| ----------- | ----------------------- |
| `==`        | Sama dengan             |
| Sama dengan | Tidak sama dengan       |
| `>`         | Lebih besar             |
| `<`         | Lebih kecil             |
| `>=`        | Lebih besar Sama dengan |
| `<=`        | Lebih kecil sama dengan |

### Logika

Digunakan untuk mengoperasikan operan yang bertipe boolean

| Operator |      Keterangan       |
| :------: | :-------------------: |
|   `&&`   | Operator Logika `and` |
|  `\|\|`  | Operator Logika `or`  |
|   `!`    | Operator Logika `not` |

Contoh :

```javascript
const a = true;
const b = false;
const c = a && b; // menghasilkan false
const d = a || b; // menghasilkan true
const e = !a; // menghasilkan false
```

##

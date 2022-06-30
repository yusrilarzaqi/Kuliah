# Pembatasan (Penekangan) Nilai pada Data

**Tujuan**:

Mengatur berbagai pembatasan data dengan perintah `CREATE TABLE ...`, seperti : Mencegah data kosong (**NULL**), mencegah data kembar, mencegah pemasukan data dengan nilai yang tidak valid, mengatur nilai bawaan dsb.

## Mengatur Agar Data Selalu di isi

```sql
CREATE TABLE karyawan (
  nip CHAR(5) NOT NULL,
  nama_peg CHAR(20) NOT NULL,
  gaji INT,
  tgl_lahir DATE,
  kota CHAR(10),
  departemen CHAR(15)
);
```

**Catatan**: Klausa `NOT NULL` yang ditambahkan pada `nip` dan `nama_peg` menyatkan bahwa kedua kolom tersebut harus diisi (tidak bisa berupa `NULL`).

## Menentukan Kunci Primer

```sql
CREATE TABLE karyawan (
  nip CHAR(5) NOT NULL PRIMARY KEY,
  nama_peg CHAR(20) NOT NULL,
  gaji INT,
  tgl_lahir DATE,
  kota CHAR(10),
  departemen CHAR(15)
);
```

**Catatan:** Pada pencitpaan table diatas, kolom `nip` dijadikan sebagai kunci primer (`PRIMARY KEY`). Kunci primer menyatakan bahwa nilai tidak boleh berupa `NULL`. Implikasi dari kunci primer, kolom bertindak sebagai kunci primer tidak bisa mengandung data kembar.

## Membuat Kunci Komposit

```sql
CREATE TABLE karyawan (
  nip CHAR(5) NOT NULL ,
  nama_peg CHAR(20) NOT NULL,
  gaji INT,
  tgl_lahir DATE,
  kota CHAR(10),
  departemen CHAR(15),
  PRIMARY KEY(nip, nama_peg)
);
```

**Catatan:** Kunci komposit adalah kunci primer yang tersusun lebih dari satu kolom.

## Membuat Nilai unik

```sql
CREATE TABLE karyawan (
  nip CHAR(5) NOT NULL PRIMARY KEY,
  nama_peg CHAR(20) NOT NULL UNIQUE,
  gaji INT,
  tgl_lahir DATE,
  kota CHAR(10),
  departemen CHAR(15),);
```

**Catatan:** Penambahan kata `UNIQUE` pada kolom `nama_peg` menyatakan bahwa tidak boleh ada nama pegawai yang kembar.

**Perbedaan PRIMARY KEY dan UNIQUE**

| **PRIMARY KEY**                                         | **UNIQUE**                                                                                                                              |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Dlam sebuah table keberadaannya hanya dipakai satu kali | Sejumlah kolom yang unik bisa didefinisikan                                                                                             |
| Kolom yang menjadi kunci primer tidak boleh berisi NULL | Kolom yang didefinisikan sebagai kolom **UNIQUE** boleh berisi **NULL** sepanjang kolom tersebut tidak didefinisikan sebagai `NOT NULL` |

## Menambah Record dengan INSERT

Bentuk umum perintah SQL untuk menambahkan record atau data ke dalam suatu tabel adalah sebagai berikut :

```sql
INSERT INTO nama_tabel VALUES (‘nilai1’,’nilai2’,...);
```

tau dapat dengan bentuk sebagai berikut :

```sql
INSERT INTO nama_tabel(field1,field2,...) VALUES (‘nilai1’,’nilai2’,...);
```

tau dapat juga dengan bentuk sebagai berikut :

```sql
INSERT INTO nama_tabel SET field1=’nilai1’, field2=’nilai2’,...;
```

Sebagai contoh, kita akan menambahkan sebuah record ke dalam tabel `mhs` yang telah kita buat sebelumnya. Berikut ini perintah SQL untuk menambahkan sebuah record ke dalam tabel `mhs` :

```sql
INSERT INTO mhs VALUES ('0411500121','Achmad Hadi', '1982-06-05','Jakarta Selatan');
```

Jika perintah SQL di atas berhasil dieksekusi maka akan ditampilkan pesan sebagai berikut :

```
Query OK, 1 row affected (0.00 sec)
```

Setelah perintah SQL di atas berhasil dieksekusi, maka record atau data dalam tabel mhs akan bertambah. Jalankan perintah berikut ini untuk melihat isi tabel `mhs`!

```sql
SELECT * FROM mhs;
```

Dan berikut ini hasil dari perintah SQL di atas :

```
+------------+-----------------+------------+-----------------+
| nim        | nama            | tgllahir   | alamat          |
+------------+-----------------+------------+-----------------+
| 0411500121 | Achmad Hadi     | 1982-06-05 | Jakarta Selatan |
+------------+-----------------+------------+-----------------+
1 row in set (0.19 sec)
```

**Latihan**

Tambahkan 10 data (record) baru ke tabel mhs sehingga isi tabel `mhs` menjadi sebagai berikut !

```
+------------+-----------------+------------+-----------------+
| nim        | nama            | tgl_lahir  | alamat          |
+------------+-----------------+------------+-----------------+
| 0411500121 | Achmad Hadi     | 1982-06-05 | Jakarta Selatan |
| 0411500123 | Chotimatul M    | 1983-03-12 | Jakarta Selatan |
| 0422500111 | Bajuri          | 1983-03-25 | Tangerang       |
| 0444500011 | Oneng           | 1980-05-22 | Jakarta Utara   |
| 0433500115 | Unyil           | 1980-08-29 | Tangerang       |
| 0411500116 | Ujang           | 1984-10-06 | Jakarta Barat   |
| 0422500316 | Jebleh          | 1984-10-06 | Cengkareng      |
| 0433500333 | Dono            | 1984-10-06 | Jakarta Selatan |
| 0422500433 | Dini            | 1986-12-10 | Jakarta Selatan |
| 0411500331 | Dana            | 1986-07-11 | Jakarta Selatan |
| 0444500315 | Dani            | 1985-01-01 | Jakarta Barat   |
+------------+-----------------+------------+-----------------+
```

![Latihan](./img/latihan.png)

![Latihan](./img/latihan-hasil.png)

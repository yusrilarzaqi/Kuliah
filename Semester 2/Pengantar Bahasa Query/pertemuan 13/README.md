# Menampilkan Record dengan SELECT

Perintah `SELECT` digunakan untuk menampilkan sesuatu. Sesuatu di sini bisa berupa sejumlah data dari tabel dan bisa juga berupa suatu ekspresi. Dengan `SELECT` kita bisa mengatur tampilan atau keluaran sesuai tampilan yang diinginkan.

Bentuk dasar perintah `SELECT` data dari tabel adalah sebagai berikut :

```
SELECT [field | *] FROM nama_tabel [WHERE kondisi];
```

Perhatikan beberapa contoh perintah `SELECT` dari tabel `mhs` berikut ini !

1. Menampilkan seluruh data atau record (\*) dari tabel **mhs**

- `SELECT * FROM mhs;`
- Dan jika query di atas berhasil dieksekusi maka akan ditampilkan hasil sebagai berikut :

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

2. Menampilkan _field_ `nim` dan `nama` dari seluruh mahasiswa dalam tabel `mhs`:

- `SELECT nim, nama FROM mhs;`
- Jika query di atas berhasil dieksekusi maka akan ditampilkan hasil sebagai berikut:

```
+------------+-----------------+
| nim        | nama            |
+------------+-----------------+
| 0411500121 | Achmad Solichin |
| 0411500123 | Chotimatul M    |
| 0422500111 | Bajuri          |
| 0444500011 | Oneng           |
| 0433500115 | Unyil           |
| 0411500116 | Ujang           |
| 0422500316 | Jebleh          |
| 0433500333 | Dono            |
| 0422500433 | Dini            |
| 0444500315 | Dani            |
+------------+-----------------+
10 rows in set (0.11 sec)
```

3. Menampilkan data mahasiswa yang mempunyai `nim` **0411500123**

- `SELECT * FROM mhs WHERE nim = '0411500123';`
- Hasil query di atas adalah sbb :

```
+------------+--------------+------------+-----------------+
| nim        | nama         | tgllahir   | alamat          |
+------------+--------------+------------+-----------------+
| 0411500123 | Chotimatul M | 1983-03-12 | Jakarta Selatan |
+------------+--------------+------------+-----------------+
1 row in set (0.06 sec)
```

4. Menampilkan data semua mahasiswa yang beralamat di luar **Jakarta Selatan**

- `SELECT * FROM mhs WHERE alamat != 'Jakarta Selatan';`
- Hasil query di atas adalah sbb :

```
+------------+--------+------------+---------------+
| nim        | nama   | tgllahir   | alamat        |
+------------+--------+------------+---------------+
| 0422500111 | Bajuri | 1983-03-25 | Tangerang     |
| 0444500011 | Oneng  | 1980-05-22 | Jakarta Utara |
| 0433500115 | Unyil  | 1980-08-29 | Tangerang     |
| 0411500116 | Ujang  | 1984-10-06 | Jakarta Barat |
| 0444500315 | Dani   | 1985-01-01 | Jakarta Barat |
+------------+--------+------------+---------------+
5 rows in set (0.02 sec)
```

Berikut ini operator **perbandingan** yang dapat digunakan untuk membandingkan dua buah nilai dalam MySQL :

- **Operator** `=`, akan bernilai TRUE jika nilai yang dibandingkan sama.
- **Operator** `!=` atau `<>`, akan bernilai TRUE jika nilai yang dibandingkan TIDAK SAMA (berbeda).
- **Operator** `>`, akan bernilai TRUE jika nilai yang pertama lebih besar dari nilai kedua.
- **Operator** `>=`, akan bernilai TRUE jika nilai yang pertama lebih besar atau sama dengan nilai kedua.
- **Operator** `<`, akan bernilai TRUE jika nilai yang pertama lebih kecil dari nilai kedua.
- **Operator** `<=`, akan bernilai TRUE jika nilai yang pertama lebih kecil atau sama dengan nilai kedua.

5. Menampilkan data semua mahasiswa yang beralamat di **Jakarta Selatan** dan lahir pada tahun **1982**.

- `SELECT * FROM mhs WHERE alamat = 'Jakarta Selatan' && YEAR(tgllahir) = '1982';`
- Hasil query di atas adalah sbb :

```
+------------+-----------------+------------+-----------------+
| nim        | nama            | tgllahir   | alamat          |
+------------+-----------------+------------+-----------------+
| 0411500121 | Achmad Solichin | 1982-06-05 | Jakarta Selatan |
| 0422500316 | Jebleh          | 1982-06-05 | Jakarta Selatan |
+------------+-----------------+------------+-----------------+
2 rows in set (0.00 sec)
```

Berikut ini operator **penghubung** yang dapat digunakan untuk menghubungkan antara dua kondisi dalam MySQL :

- **Operator** `&&` atau `AND`, akan menghubungkan dua kondisi dimana akan bernilai TRUE jika kedua kondisi bernilai TRUE.
- **Operator** `||` atau `OR`, akan menghubungkan dua kondisi dimana akan bernilai TRUE jika salah satu atau kedua kondisi bernilai TRUE.
- **Operator** `!`, akan _me-reverse_ nilai suatu kondisi logika.

**Keterangan**

Fungsi **YEAR** pada query di atas akan menghasilkan nilai TAHUN dari suatu tanggal. Selain fungsi YEAR, juga terdapat fungsi MONTH yang akan menghasilkan nama BULAN dari tanggal, fungsi DAY yang akan menghasilkanhari dari suatu tanggal, dan masih banyak fungsi lain yang berhubungan dengan tanggal.

6. Menampilkan `nim`, `nama` dan `umur` dari semua mahasiswa.

- `SELECT nim, nama, YEAR(now())-YEAR(tgllahir) AS umur FROM mhs;`
- Hasil query di atas adalah sbb :

```
+------------+-----------------+------+
| nim        | nama            | umur |
+------------+-----------------+------+
| 0411500121 | Achmad Solichin |   24 |
| 0411500123 | Chotimatul M    |   23 |
| 0422500111 | Bajuri          |   23 |
| 0444500011 | Oneng           |   26 |
| 0433500115 | Unyil           |   26 |
| 0411500116 | Ujang           |   22 |
| 0422500316 | Jebleh          |   24 |
| 0433500333 | Dono            |   22 |
| 0422500433 | Dini            |   20 |
| 0444500315 | Dani            |   21 |
+------------+-----------------+------+
10 rows in set (0.05 sec)
```

**Keterangan**

Pada query di atas terdapat fungsi `YEAR` yang akan mengambil tahun dari suatu tanggal. Selanjutnya fungsi `now()` akan me-return tanggal dan waktu sistem saat query dieksekusi. Proses perhitungan umur dialiaskan dengan nama ‘`umur`’. Untuk mengaliaskan gunakan perintah `AS` yang diikuti nama alias.

7. Menampilkan semua mahasiswa `jurusan TI`

- `SELECT * FROM mhs WHERE SUBSTRING(nim,3,2)='11';`
- Hasil query di atas adalah sbb :

```
+------------+-----------------+------------+-----------------+
| nim        | nama            | tgllahir   | alamat          |
+------------+-----------------+------------+-----------------+
| 0411500121 | Achmad Solichin | 1982-06-05 | Jakarta Selatan |
| 0411500123 | Chotimatul M    | 1983-03-12 | Jakarta Selatan |
| 0411500116 | Ujang           | 1984-10-06 | Jakarta Barat   |
+------------+-----------------+------------+-----------------+
3 rows in set (0.19 sec)
```

**Keterangan**

Pada query di atas terdapat fungsi `SUBSTRING` yang berguna untuk memotong suatu string. Format fungsi `SUBSTRING` adalah sebagai berikut : `SUBSTRING(field, awal, panjang)`

8. Menampilkan semua data mahasiswa secara urut berdasarkan `nama` dengan perintah `ORDER BY`

- `SELECT * FROM mhs ORDER BY nama;`
- Hasil query di atas adalah sbb :

```
+------------+-----------------+------------+-----------------+
| nim        | nama            | tgllahir   | alamat          |
+------------+-----------------+------------+-----------------+
| 0411500121 | Achmad Solichin | 1982-06-05 | Jakarta Selatan |
| 0422500111 | Bajuri          | 1983-03-25 | Tangerang       |
| 0411500123 | Chotimatul M    | 1983-03-12 | Jakarta Selatan |
| 0444500315 | Dani            | 1985-01-01 | Jakarta Barat   |
| 0422500433 | Dini            | 1986-12-10 | Jakarta Selatan |
| 0433500333 | Dono            | 1984-10-06 | Jakarta Selatan |
| 0422500316 | Jebleh          | 1982-06-05 | Jakarta Selatan |
| 0444500011 | Oneng           | 1980-05-22 | Jakarta Utara   |
| 0411500116 | Ujang           | 1984-10-06 | Jakarta Barat   |
| 0433500115 | Unyil           | 1980-08-29 | Tangerang       |
+------------+-----------------+------------+-----------------+
10 rows in set (0.01 sec)
```

9. Menampilkan semua data mahasiswa secara urut berdasarkan `nim` secara `DESCENDING`

- `SELECT * FROM mhs ORDER BY nim DESC;`
- Hasil query di atas adalah sbb :

```
+------------+-----------------+------------+-----------------+
| nim        | nama            | tgllahir   | alamat          |
+------------+-----------------+------------+-----------------+
| 0444500315 | Dani            | 1985-01-01 | Jakarta Barat   |
| 0444500011 | Oneng           | 1980-05-22 | Jakarta Utara   |
| 0433500333 | Dono            | 1984-10-06 | Jakarta Selatan |
| 0433500115 | Unyil           | 1980-08-29 | Tangerang       |
| 0422500433 | Dini            | 1986-12-10 | Jakarta Selatan |
| 0422500316 | Jebleh          | 1982-06-05 | Jakarta Selatan |
| 0422500111 | Bajuri          | 1983-03-25 | Tangerang       |
| 0411500123 | Chotimatul M    | 1983-03-12 | Jakarta Selatan |
| 0411500121 | Achmad Solichin | 1982-06-05 | Jakarta Selatan |
| 0411500116 | Ujang           | 1984-10-06 | Jakarta Barat   |
+------------+-----------------+------------+-----------------+
10 rows in set (0.00 sec)
```

10. Menampilkan 5 record (data) pertama dari tabel `mhs` secara urut berdasarkan `nim` dengan ``

- `SELECT * FROM mhs ORDER BY nim 0,5;`
- Hasil query di atas adalah sbb :

```
+------------+-----------------+------------+-----------------+
| nim        | nama            | tgllahir   | alamat          |
+------------+-----------------+------------+-----------------+
| 0411500116 | Ujang           | 1984-10-06 | Jakarta Barat   |
| 0411500121 | Achmad Solichin | 1982-06-05 | Jakarta Selatan |
| 0411500123 | Chotimatul M    | 1983-03-12 | Jakarta Selatan |
| 0422500111 | Bajuri          | 1983-03-25 | Tangerang       |
| 0422500316 | Jebleh          | 1982-06-05 | Jakarta Selatan |
+------------+-----------------+------------+-----------------+
5 rows in set (0.13 sec)
```

**Keterangan**

Pada query di atas bentuk digunakan untuk membatasi hasil tampilan. `LIMIT` banyak digunakan untuk menampilkan data yang relatif banyak. Format fungsi LIMIT adalah sebagai berikut :

`LIMIT awal, jumlah_record`

# Perintah Query

## Aplikasi Komputer

1. Aplikasi komputer adalah sebuah perangkat lunak (*software*) program komputer yang ditulis dalam bahasa pemrograman dan berfungsi menghasilkan informasi sesuai dengan kebutuhan pemakai.
2. Aplikasi komputer biasanya terdiri dari database untuk menyimpan data dan bahasa pemrograman untuk mengolah data menjadi informasi.
3. Contoh database yaitu : MS Access, MySQL, SQL Server, Oracle.
4. Contoh Bahasa pemrograman : VB .Net, Delphi, Visual Foxpro, PHP.
5. Setiap bahasa pemrograman mempunyai perintah yang berbeda. Perintah QUERY adalah perintah yang hampir dikenal oleh semua bahasa pemrograman.Setiap bahasa pemrograman mempunyai perintah yang berbeda. Perintah QUERY adalah perintah yang hampir dikenal oleh semua bahasa pemrograman.

## Perintah Query

1. Perintah Query terdiri dari 2 kelompok yaitu Data Defition Language (DDL) dan Data Manipulation Language (DML).
2. Data Defition Language (DDL) yaitu perintah untuk membuat, merubah dan menghapus objek pada basis data seperti Tabel, View dan Procedure
3. Data Manipulation Language (DML) yaitu perintah untuk menampilkan, menambah, merubah dan menghapus data pada tabel.

## Create Table

Membuat struktur Tabel `CREATE TABLE Nama-Tabel (NamaField1 Type(Size), NamaField2 Type(Size), .....)`

Contoh :
  `CREATE TABLE NILAI (NIM TEXT(13), KODE TEXT, NIALI TEXT(1))`
  Membuat structure  tabel NILAI yang terdiri dari field NIM type Text size 13, field KODE type Text size 6 dan field NILAI type Text size 1

## Insert Into

Menambah data baru ke suatu tabel

```sql
INSERT INTO Nama Tabel VALUES (DataField1, DataField2, .....);
```

Contoh;
  `INSER INTO NILAI VALUES("6304920060054","1AV201","A");`
  Menambahkan data ke tabel NILAI dengan field NIM diisi 6304920060054, field KODE diisi 1AV201 dan field NILAI diisi A

## Update

Merubah data pada suatu tabel `UPDATE NamaTabel SET Pengganti`

Contoh:
  `UPDATE MAHASISWA SET KELAS="KA-S.20.1" WHERE KELAS ="KA-P.20.1"`
  Merubah data Kelas pada tabel MAHASISWA menjadi KA-S.20.1 yang kelasnya semula KA-P.20.1

## Delete

Menghapus data pada suatu tabel `DELETE FROM NamaTabel`

Contoh:
  `DELETE FROM MATAKULIAH WHERE KODE="1AV201"`
  Hapus data pada tabel MATAKULIAH yang Kodenya 1AV201

## Select

Menampilkan data dari suatu table `SELECT NamaField FROM NamaTable`

Contoh:
  `SELECT NAMA FROM MAHASISWA`
   Tampilkan data Nama Mahasiswa dari tabel Mahasiswa

## Select Distinct

Menampilkan data yang sama dari suatu field hanya tampil satu kali `SELECT DISTINCT NamaField FROM NamaTable`

Contoh:
  `SELECT DISTINCT KELAS FROM MAHASISWA`
   Tampilkan data kelas yang sama hanya tampil satu kali dari tabel Mahasiswa

## ORDER BY

Menampilkan data secara urut berdasarkan data dari field tertentu `SELECT NamaField FROM NamaTable ORDER BY NamaField`

Contoh:
  `SELECT * FROM MAHASISWA ORDER BY NAMA`
  Menampilkan data dari table Mahasiswa urut Nama Mahasiswa.

## INNER JOIN

Menampilkan dari dua table yang terhubung dengan field kunci `SELECT NamaField FROM NamaTable INNER JOIN NamaTable ON NamaTAble.FieldKunci = NamaTable.FieldKunci`

Contoh:
  `SELECT NILAI.NIM, MAHASISWA.NAMA FROM NILAI INNER JOIN MAHASISWA ON NILAI.NIM = MAHASISWA.NIM;`
  Menampilkan data dari tabel Nilai dan Tabel Mahasiswa dengan field kunci NIM


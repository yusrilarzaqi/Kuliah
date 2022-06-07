# Mengenal DBMS Dan SQL

## DBMS

- DBMS = _Database management System_
- Sistem Perangkat Lunak (_Software_) yang memfasilitasi untuk membuat, merawat, dan menggunakan database elektronik.
- **Defining** = specify types, organization.
- **Constructing** = loading the data.
- **Manipulating** = query the data.

## Database Language

- Merupakan perantara bagi pemakai untuk berinteraksi dengan database yang tersimpan pada data sotre.
  - Contoh: SQL, dBASE, QUEL, MongoDB, dll.
- Database language terdiri dari 2 bentuk:
  - **Data Definition Language (DDL)**. Bahasa yang mendeskripsikan data (Metada atau Data Dictionary).
  - **Data Manipulating Language (DML)**. Bahasa yang digunakan untuk melakukan manipulasi dan pengambilan data pada suatu database (_Inserting_, _Deleting_, _Updating_, _Searching_, _dan Loading_).

## SQL

- SQL adalah _Structured Query Language_.
- SQL adalah bahasa query baku untuk BDMS.
- SQL diambil sebagai bakuan sejak tahun 1992.
- Awalnya diterapkan pada DBMS besar seperti Oracle dan Informix, sekarang juga pada DBMS berbasis PC seperti dBASE dan FoxPro.
- SQL bersifat sebagai bahasa tingkat tinggi (_high level_). Pemakai hanya menyebutkan hasil yang diinginkan dan optimasi pelaksanaan query dilakukan oleh DBMS.
- SQL dapat disisipkan ke bahasa pemrograman yang lain seperti C, Pascal, Cobol, python, php, JavaScript, dll.

### Manfaat SQL

- Dengan mempelajari SQL dapat berinteraksi dengan hampir sema database besar yang beredar.
- SQL mudah dipelajari, karena statement dibuat berdasarkan bahasa inggris umum.
- SQL bahasa yang sederhana tapi kuat.

### SQL - DDL

**Data Definition Language**

- Untuk mendefinisikan / mendeskripsikan struktur basis data seperti pembuatan basis data, pembuatan tabel, dsb.
- `CREATE` untuk membentuk basis data dan table atau index.
- `ALTER` untuk menghubah struktur table.
- `DROP` untuk menghapus basis data, table, atau index.

#### CREATE

- `CREATE DATABASE`
  - Untuk mebentuk basis data.
  - Sintaks: `CREATE DATABASE nama_database`
  - Contoh: `CREATE DATABASE AKADEMI`
- `CREATE TABLE`
  - Untuk membentuk table dari basis data.
  - Untuk menyebutkan spesifikasi dan batasan atribut.
  - Sintaks: `CREATE TABLE nama_table (field1 type(size), filed2 type(size), ...)`
  - Contoh:
    `sql CREATE TABLE karyawan ( firstname char(15) not null, lastname char(15) not null, ssn char(9) not null, dbate date, address char(30), sex char(1), salary decimal(10.2), ) `
- `CREATE INDEX`
  - Membentukk berkas index dari table.
  - Index digunakan untuk mempercepat process pencarian
  - Sintaks: `CREATE [UNIQUE] INDEX name_index ON nama_table(kolom1, kolom2, ...)`
  - Contoh `CREATE INDEX karyawanidx ON karyawan(ssn)`
- `ALTER TABLE`
  - Digunakan untuk mengubah struktur table.
  - Menambah struktur: `ALTER TABLE nama_table ADD field type(size)`
  - Contoh (1) misalnya ingin menambahkan kolom `JOB` pada table `karyawan` dengan tipe `char` selebar `12`.
  - `ALTER TABLE karyawan ADD JOB CHAR(12)`
  - Menhapus kolom/field `ALTER TABLE nama_table DROP COLUMN field`
  - Contoh (2) misalkan ingin menghapus kolom `JOB`. `ALTER TABLE karyawan DROP COLUMN job`
- `DROP DATABASE`
  - Menghapus Basis Data
  - Sintaks: `DROP DATABASE nama_database`
  - Contoh: `DROP DATABASE AKADEMI`
- `DROP TABLE`
  - Menghapus Table
  - Sintaks: `DROP TABLE nama_table`
  - Contoh: `DROP TABLE karyawan`
- `DROP INDEX`
  - Menghapus Berkas Index
  - Sintaks: `DROP INDEX nama_index`
  - Contoh: `DROP INDEX karyawanidx`

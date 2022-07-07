# Mengedit Record dengan UPDATE

Proses update bisa sewaktu-waktu dilakukan jika terdapat data atau record dalam suatu tabel yang perlu diperbaiki. Proses update ini tidak menambahkan data (_record_) baru, tetapi memperbaiki data yang lama. Perubahan yang terjadi dalam proses update bersifat permanen, artinya setelah perintah dijalankan tidak dapat di-cancel (_undo_).

Bentuk umum perintah SQL untuk mengedit suatu record atau data dari suatu tabel adalah sebagai berikut :

```sql
UPDATE nama_tabel SET field1=’nilaibaru’ [WHERE kondisi];
```

Pada perintah untuk update di atas :

- `UPDATE` merupakan perintah dasar untuk mengubah record tabel.
- `nama_tabel` merupakan nama tabel yang akan diubah recordnya.
- Perintah `SET` diikuti dengan _field-field_ yang akan diubah yang mana diikuti juga dengan perubahan isi dari masing-masing _field_. Untuk mengubah nilai dari beberapa field sekaligus, gunakan koma (,) untuk memisahkan masing- masing _field_.
- Perintah `WHERE` diikuti oleh kondisi tertentu yang menentukan record mana yang akan diedit (diubah). Perintah `WHERE` ini boleh ada boleh juga tidak. Jika WHERE tidak ditambahkan pada perintah update maka semua _record_ dalam tabel bersangkutan akan berubah.

Perhatikan beberapa contoh perintah `UPDATE` tabel `mhs` berikut ini !

1. Mengubah alamat menjadi “Tangerang” untuk mahasiswa yang mempunyai nim 0411500121

- `UPDATE mhs SET alamat='Tangerang' WHERE nim='0411500121';`
- Dan jika query di atas berhasil dieksekusi maka akan ditampilkan hasil sebagai berikut :
- `Query OK, 1 row affected (0.27 sec) Rows matched: 1 Changed: 1 Warnings: 0`

2. Mengubah tanggal lahir menjadi “12 Maret 1983” dan alamat menjadi “Bandung” untuk mahasiswa yang mempunyai nim 0422500316

- `UPDATE mhs SET tgllahir='1982-06-05', alamat='Jakarta Selatan' WHERE nim='0422500316';`

# Menghapus Record dengan DELETE

Proses _delete_ dilakukan jika terdapat data atau record dalam suatu tabel yang perlu dihapus atau dihilangkan. Perubahan yang terjadi dalam proses _delete_ bersifat permanen, artinya setelah perintah dijalankan tidak dapat di-cancel (_undo_). Jadi berhati-hatilah dengan perintah _delete_ !

Bentuk umum perintah SQL untuk menghapus suatu record atau data dari tabel adalah sebagai berikut :

```
DELETE FROM nama_tabel [WHERE kondisi];
```

Pada perintah untuk delete di atas :

- `DELETE FROM` merupakan perintah dasar untuk menghapus suatu record dari tabel.
- `nama_tabel` merupakan nama tabel yang akan dihapus _recordnya_.
- Perintah `WHERE` diikuti oleh kondisi tertentu yang menentukan _record_ mana yang akan dihapus (didelete). Perintah `WHERE` ini boleh ada boleh juga tidak. _Namun demikian_, jika `WHERE` tidak ditambahkan pada perintah delete maka semua _record_ dalam tabel bersangkutan akan **terhapus**.
- **_Jadi jangan lupa menambahkan WHERE jika kita tidak bermaksud mengosongkan tabel_**

Perhatikan beberapa contoh perintah `DELETE` dari tabel `mhs` berikut ini !

1. Menghapus data mahasiswa yang mempunyai nim 0411500331

- `DELETE FROM mhs WHERE nim='0411500331';`
- Dan jika query di atas berhasil dieksekusi maka akan ditampilkan hasil sebagai berikut :
- `Query OK, 1 row affected (0.11 sec)`

2. Menghapus semua mahasiswa yang beralamat di “Bandung”

- `DELETE FROM mhs WHERE alamat='Bandung';`

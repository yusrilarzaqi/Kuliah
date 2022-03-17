# Pertemuan 10

## HTML Dasar

- Objecktif
  - Setelah materi ini diharapkan anda dapat memahami struktur dasar dari dokumen HTML

- Materi
  - Struktur dasar dokumen HTML (Tag, Element, Attribute), Element HTML, Element HEAD, Element Title, Element BODY.

- Struktur dasar dokumen html
  - HTML merupakan singkatan dari **HyperText Markup Language** adalah script untuk menyusun dokumen-dokumen web, disimpan dalam format teks reguler dan mengandung *tag-tag* yang memerintahkan web broser untuk mengeksekusi perintah-perintah yang dispesifikasikan.
  - Struktur dasar dokumen HTML adalah sebagai berikut :

```html
<html>
  <head>
    <title>Disini Judul Dokumen HTML</title>
  </head>
  <body>
    Disini penulisan informasi Web
  </body>
</html>
```

Dari Struktur HTML diatas dapat dijelaskan sebagai berikut:

## Tag

- Adalah teks khusus *(markup)* berupa dua karakter **<** dan **>**, sebagai contoh **<body>** adalah tag dengan nama body.
- Secara umum tag ini ditulis secara berpasangan, yang terdiri atas **tag pembuka** dan **tag penutup** (ditambahakan karakter "/" setelah karakter **<**), sebagai contoh **<body>** ini aladah tag pembuka isi dokumen HTML, dan **</body>** ini adalah  tag penutup isi dokumen HTML.

## Element

- Element terdiri atas tiga bagian, yaitu **Tag pembuka, isi, tag penutup**. Sebagai contoh untuk menampilkan judul dokument HTML pada web broweser digunakan **element title** dimana:
- **<title>** ini adalah tag pembuka judul dokumen HTML
- **Disini Judul Dokumen HTML**. ini adalah isi judul dokumen HTML
- **</title>** ini adalah tag penutup judul dokumen HTML.

## Contoh penulisan tag-tag yang benar

```html
<p>
  <b><i><u>
  Hello world
  </b></i></u>
</p>
```

## Attribute

- Attribute mendefinisikan dari sesuai element HTML, yang terdiri atas nama dari nilai, Penulisan adalah berikut.

```html
<p class="paragraf" bg-color="black">
  Hello World!
</p>
```

- Secara umum nilai attribute harus berada dalam tanda petik satu atau dua. Sebagai contoh untuk membuat warna teks menjadi kuning dan latar belakang halaman web menjadi hitam, penulisannya adalah **<body bg-color="black" text="yellow">**

## Element HTML

- Menyatukan pada browser bahwa Web yang digunakan adalah HTML.
- sintaks

```html
<html>
...
</html>
```

## Element HEAD

- Merupakan kepala dari dokumen HTML. Tag **<head** dan tag **</head>** terletak diantara tag **<html>** dan tag **</html>**
- sintaks

```html
<head>
...
</head>
```

## Element Title

- Merupakan judul dari dokumen HTML yang ditampilkan pada judul jendela browser. Tag **<title>** dan tag **</tag>** terletak diantara tag **<head>** dan tag **</head**
- Sintaks

```html
<title>
...
</title>
```

## Element BODY


- Element ini untuk menampilkan HTML. Tag **<body>** dan tag **</body>**terletak di bawah tag **<head>** dan tag **</head>**.
- Element BODY mempunyai attribute yang menspesifikasi khususnya warna dan latar belakang dokumen yang akan ditampilkan pada browser.
- Sintaks

```html
<body text="v" bgcolor="w" background="url" link="x" alink="y" vlink="z">
...
</body>
```

- Attribute **text** memberikan warna pada teks, **bgcolor** memberikan warna pada latar belakang dokumen HTML, **Background** memberikan latarbelakang dokumen HTML dalam bentuk gambar, **link** memberikan nilai warna untuk link, **alink** memberikan warna untuk link yang yang sedang aktif, **vlink** memberikan warna untuk link yang telah dikunjungi.
- Jika attribute bgcolor dan background keduanya dispesifikasi maka attribute background yang akan digunkan, akan tetapi jika nilai attribute background (gambar) tidak ditemukan pada dokumen HTML maka attribute bgcolor yang akan digunakan,













# Heading & Body

## Attribute Element Heading

| Attribute |                              Function                               |
| :-------: | :-----------------------------------------------------------------: |
|  `align`  | Mengatur Perataan, dapat diset dengan nilai Left, Center atau Right |

## Attribute Element Body

|        Attribute        |                                       Function                                       |
| :---------------------: | :----------------------------------------------------------------------------------: |
|         `text`          |                             Mengatur warna teks dokumen                              |
|         `vlink`         |                           Menyatakan warna link yang aktif                           |
|      `background`       |                       Menyatakan gambar sebagai latar belakang                       |
|   `background-color`    |                       Menyatakan warna sebagai latar belakang                        |
| `background-properties` | Jika diset `fiexed`. Membuat suatu watermark yaitu backround tetap (tidka mengguung) |
|      `margin-left`      |                   Mengatur margin kiri dari suatu dokumen (pixel)                    |
|      `margin-top`       |                      Mengatur margin atas dari dokumen (pixel)                       |

## Table Warna

|  Warna  | Hexadesimal |
| :-----: | :---------: |
|  Green  |   #008000   |
|  Olive  |   #808000   |
|  Navy   |   #000080   |
| Purple  |   #800080   |
|  Teal   |   #008080   |
|  Gray   |   #808080   |
| Silver  |   #C0C0C0   |
|   Red   |   #FF0000   |
|  Lime   |   #00FF00   |
| Yellow  |   #FFFF00   |
|  Blue   |   #0000FF   |
| Fuchsia |   #FF00FF   |
|  Aqua   |   #00FFFF   |
|  White  |   #FFFFFF   |

## Attribute Element Garis (`hr`)

| Attribute |                              Function                               |
| :-------: | :-----------------------------------------------------------------: |
|  `align`  | Mengatur Perataan, dapat diset dengan nilai Left, Center atau Right |
|  `width`  |        Mengatur panjang garis horizontal (pixel atau persen)        |
|  `size`   |                  Mengatur ketebalan garis (pixel)                   |
| `noshade` |            menampilkan garis horizontal tanpa bayang 3D             |
|  `color`  |                      Memberi warna pada garis                       |

## List / Daftar

### Macam-macam List

- Ordered List / Numbered List (Daftar berurutan / Daftar dengan Nomor)
- Unordered List / Bulleted list (Daftar tak berurut / Daftar dengan titik)
- Menu List (Daftar Menu)
- Directory List
- Definition List (Daftar istilah)

### Ordered List

- Ordered List atau Numbered List adalah suatu daftar dimana item-item yang ada didalam daftar memiliki nomor secara urut.
- Ordered list dimulai dengan tag awal `<ol>` dan diakhiri dengan tag akhir `</ol>`.
- Diantara kedua tag tersebut terdapat tag `<li>` yang menyataan list item.

---

```html
<html>
	<head>
		<title>Mencoba membuat Daftar dengan Ordered List</title>
	</head>
	<body>
		<ol>
			Ini Adalah warna-warna pada pelangi
			<hr />
			<li>Merah</li>
			<li>Jingga</li>
			<li>Kuning</li>
			<li>Hijau</li>
			<li>Biru</li>
			<li>Nila</li>
			<li>Ungu</li>
		</ol>
	</body>
</html>
```

[Ordered List](./src/ordered-list.html)

![Ordered List](./img/ordered-list.png)

---

**Membuat Daftar dalam Daftar (Nested Ordered List)**

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Mencoba Membuat Daftar dengan Nasted Ordered List</title>
	</head>
	<body>
		<h2>Planet dalam Tata Surya:</h2>
		<hr />
		<ol>
			<li>
				Merkurius
				<ol>
					<li>57.9 juta kilometer dari matahari</li>
					<li>Tidak punya satelit</li>
				</ol>
			</li>
			<li>
				Venus
				<ol>
					<li>108 juta kilometer dari matahari</li>
					<li>Tidak punya satelit</li>
				</ol>
			</li>
			<li>
				Bumi
				<ol>
					<li>149.6 juta kilometer dari matahari</li>
					<li>Satu Satelit = Bulan</li>
				</ol>
			</li>
			<li>
				Mars
				<ol>
					<li>227.9 juta kilometer dari matahari</li>
					<li>Dua satelit</li>
					<ol>
						<li>Phobos</li>
						<li>Deimos</li>
					</ol>
				</ol>
			</li>
		</ol>
	</body>
</html>
```

[Nested Ordered List](./src/ordered-list-nasted.html)

![Nested List](./img/nested-list.png)

---

**Attribute Pada** `<ol>`

| Attribute |                           Function                            |
| :-------: | :-----------------------------------------------------------: |
| `type=A`  |      Membuat daftar berurut dengan huruf besar (A, B, C)      |
| `type=a`  |      Membuat daftar berurut dengan huruf besar (a, b, c)      |
| `type=I`  | Membuat daftar berurut dengan huruf romawi besar (I, II, III) |
| `type=i`  |    Membuat daftar berurut dengan huruf kecil (i, ii, iii)     |
| `type=1`  |         Membuat daftar berurut dengan angka (1, 2, 3)         |
| `start=n` |  Menentukan nilai awal dari item dalam daftar, n=nilai awal   |

**Contoh Modifikasi Daftar1.html (lihat baris 11)**

```html
<li>
	Merkurius
	<ol type="A">
		<li>57.9 juta kilometer dari matahari</li>
		<li>Tidak punya satelit</li>
	</ol>
</li>
```

_Hasil :_

1. Merkurius
   1. 57.9 juta kilometer dari matahari
   2. Tidak punya satelit

> <u>**TUGAS!**</u> > _Modifikasilah dokumen daftar1.html sehingga tampil seperti berikut (**Simpan ulang dengan nama daftar2.html**)_

### Unordered List

- Ordered List atau Bulleted List adalah suatu daftar dimana urutan item-item tidak diutamakan. Item-tem ditampilkan dalam semabarng urutan.
- Setiap item dalam Unordered list biasanya ditandai dengan bulatan, kotak atau lingkaran.
- Ordered List dimulai dengan tag awal `<ol>` dan diakhiri dengan tag akhir `</ol>`
- Diantara kedua tag tersebut terdapat tag `<li>` yang menyatakan list item.

---

**Contoh penggalan dokumen Daftar3.html (_modifikasi dari Daftar1.html_)**

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Unordered List</title>
	</head>
	<body>
		<h2>Planet Dalam Tata Surya:</h2>
		<hr />
		<ul>
			<li>Merkurius</li>
			<ul>
				<li>57.9Juta kilometer dari matahari</li>
				<li>Tidak punya satelit</li>
			</ul>
			<li>
				Venus
				<ul>
					<li>108 juta kilometer dari matahari</li>
					<li>Tidak punya satelit</li>
				</ul>
			</li>
			<li>
				Bumi
				<ul>
					<li>149.6 juta kilometer dari matahari</li>
					<li>Satu satelit = Bulan</li>
				</ul>
			</li>
		</ul>
	</body>
</html>
```

---

**Attribute pada <ul>**

|   Attribute   |        Function         |
| :-----------: | :---------------------: |
| `type=circle` | Membuat tanda lingkaran |
| `type=squere` |   Membuat tanda kotak   |
|  `type=disc`  |  Membuat tanda cakram   |

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Unordered List</title>
	</head>
	<body>
		<h2>Planet Dalam Tata Surya:</h2>
		<hr />
		<ul>
			<li>Merkurius</li>
			<ul type="circle">
				<li>57.9Juta kilometer dari matahari</li>
				<li>Tidak punya satelit</li>
			</ul>
			<li>
				Venus
				<ul type="square">
					<li>108 juta kilometer dari matahari</li>
					<li>Tidak punya satelit</li>
				</ul>
			</li>
			<li>
				Bumi
				<ul type="disc">
					<li>149.6 juta kilometer dari matahari</li>
					<li>Satu satelit = Bulan</li>
				</ul>
			</li>
		</ul>
	</body>
</html>
```

##

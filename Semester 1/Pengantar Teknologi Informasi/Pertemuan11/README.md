# Pertemuan 11 HTML dan daftar urutan

## Objektif

- Setelah mempelajari materi ini diharapkan anda dapat memahami penggunaan element-element untuk pembuatan daftar urutan

## Materi

- Element OL(ordered list), element UL(unorderd list), element li(list item)

## Element ol (ordered list)

- Element ol berfungsi untuk membuat daftar urut. Element ini mempunyai attribute yaitu **start**, dan **type**. Attribute **start** berfungsi untuk memberikan nilai awal dari daftar urutan, attribute **type** berfungsi untuk meraih bentuk daftar urutan yaitu **A** untuk abjad huruf untuk angka decimal (default:start="1" type="1"). Dalam element ol harus terdapat beberapa element li.
- Sintaks: 

```html
<ol start="number" type="A"|"a"|"I"|"i"|"1">
  <!-- Content -->
</ol>
```

## Element ul (unorderd list)

- Element ul berfungsi untuk membuat daftar tanpa nomor urut (dalam format bullet).
- Element ini mempunyai attribute yaitu **type**. Attribute ini berfungsi untuk memilih bentuk bullet yang digunakan.
- Nilai dari pada attribute type ini adalah "circle", "square",dan "disc".
- Dalam Element ul harus terdapat beberapa element li.
- Sintaks

```html
<ul type="circle"|"square"|"disc">
  <!-- Content -->
</ul>
```

## Element li (List item)

- Element li merupakan isi dari pada daftar.
- Element ini harus berada di dalam element ol. atau ul.
- Element ini mempunyai attribute **type** dan **value**.
- Nilai attribute **type** adalah **A,a,I,i,1,circle,square,disc** dan attribute **value** berisikan nilai nomor dari attribute type.
- Sintaks

```html
<li type="A"|"a"|"I"|"i"|"1"|"circle"|"square"|"disc">
  <!-- Text Content -->
</li>
```








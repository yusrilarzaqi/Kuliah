# HTML TABLE

## Objektif

Setelah mempelajari materi ini diharapkan anda dapat memahami penggunaan element-element untuk pembuatan table.

## Materi

- Element `table`
- Element `caption`
- Element `th` (table header)
- Element `tr` (table row)
- Element `td` (table data)

## Element TABLE

Element `table` berfungsi untuk membuat suatu data multidimensi yang terdiri atas kolom dan baris. Element ini mempunyai attribute seperti `align`, `bgcolor`, `border`, `cellpadding` (jarak antara tepi sell dengan isi sell), `cellspacing` (jarak antara cell), `width` (lebar table), `height` (tinggi table), 

Element `table` berisikan element `caption`, `th`, `tr` dan `td`

### Sintaks

```html
<table align="left,center,right" bgcolor="color" border="pixel" cellpadding="pixel" cellspacing="pixel" width="pixel, %" height="pixel, %">
	<!-- content -->
</table>
```

## Element CAPTION

Element `caption` berfungsi untuk membuat judul dari table. Element ini harus berada di dalam element `table` dan mempunyai attribute `align` dengan nilai `top` (judul terletak di atas table), `bottom` (judul terletak di bawah table)

### Sintaks

```html
<caption align="top, bottom">
	<!-- content -->
</caption>
```

## Element TR (Table Row)

Element `tr` mendefinisikan baris pada `table` dan element ini harus berada di dalam element `table`. Pada element `tr` terdapat element `th` dan `td`. Attribute yang terdapat pada element ini adalah `align`, `valign` (posisi vertical), dan `bgcolor`

### Sintaks

```html
<tr bgcolor="color" align="left, center, right" valign="top, middle, bottom">
	<!-- content -->
</tr>
```

## Element TH (Table Header) dan TD (Table Data)

Element `th` dan `td` merupakan informasi pada table. `th` mendifinisikan  isi sel sebagai header sel pada kolom table dan datanya tercetak tebal dan dengan posisi ditengah cell. Element `th` dan `td` ini harus terletak didalam element `tr`. Attribute kedua element ini adalah `align`, `valign`, `bgcolor`, `colspan`, `rowspan`

### Sintaks

```html
<th align="left, center, right" valign="top, middle, bottom" bgcolor="color" colspan="number" rowspan="number">
	<!-- content -->
</th>

<td align="left, center, right" valign="top, middle, bottom" bgcolor="color" colspan="number" rowspan="number">
	<!-- content -->
</td>
```

## COLSPAN DAN ROWSPAN

Colspan dan rowspan adalah html attribute yang digunakan untuk memperlebar atau mengabungkan beberapa kolom atau row menjadi satu, sehingga satu unit kolom atau row ini menjadi lebih lebar.

Colspan adalah kependekan dari *column span* yang bisa mengartikan sebagai *beberapa kotak kesamping*.

Rowsapn mengartikan *beberapa kotah kebawawh*


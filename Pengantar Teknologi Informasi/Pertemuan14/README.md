# HTML FORM

## Objektif

Setelah mempelajari materi ini diharapkan anda dapat memahami penggunaan element-element untuk pembuatan form.

## Materi

Element `from`, element `input`, element `select`, element `option`, element `textarea`

### Element input

- Element `input` berfungsi untuk mendefinisikan input yang akan dimasukan pengguna. Element ini mempunyai attribute yaitu **name, size, type, value, checked.**
- Attribute **name** mendefinisikan nama dari input kontrol form, attribute **size** mendefinisikan ukuran teks pada input kontrol, **value** mendefinisikan nilai awal/akhir, **checked** mendefinisikan pilihan terpilih pada type **radio/checkbox**. Element ini tidak mempunyai tag penutup dan harus berada didalam element `form`.
- sintaks:

```html
<input name="name" size="number" type="text"|"checkbox"|"radio"|"submit"|"reset" value="value" checked>
```

### Element select

- Element `select` berfungsi untuk mendefinisikan opsi pilihan pada form kontrol.
- Element ini mempunyai attribute yaitu **name, size, multiple** (diizinkan banyak pilihan).
- Element ini harus berada didalam element `form`.
- sintaks:

```html
<select name="name" size="number" multiple>
  <!-- content -->
</select>
```

### Element option

- Element `option` mendefinisikan opsi pilihan pada menu `select`.
- Element ini mempunyai attribute **selected** dan **value**.
- Attribute **selected** opsi terpilih dan attribute **value** berisikan nilai element `option`.
- sintaks:

```html
<option selected value="number">
  <!-- content -->
</option>
```

### Element textarea

- Element `textarea` berfungsi sebagai input kontrol from untuk memasukan teks lebih dari satu baris.
- Element ini mempunyai attribute yaitu, **name, cols, rows**.
- Attribute **name** mendefinisikan nama input kontrol from element `textarea`, attribute **cols** mendefinisikan jumlah kolom `textarea` yang terlihat, dan attribute **rows** mendefinisikan jumlah baris `textarea` yang terlihat.
- Element ini harus berada didalam element `form`.
- sintaks:

```html
<textarea name="nama" cols="number" rows="number">
  <!-- content -->
</textarea>
```


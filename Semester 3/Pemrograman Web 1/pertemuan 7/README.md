# Table

Tabel adalah sarana untuk menetapkan informasi agar mudah dibaca dan dipahami.

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Contoh Table</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<td>sel 1,1</td>
				<td>sel 1,2</td>
			</tr>
			<tr>
				<td>sel 2,1</td>
				<td>sel 2,2</td>
			</tr>
		</table>
	</body>
</html>
```

---

**Tag-tag yang menyertai/berkatitan dengan table**

|   Attribute    |                                                                  Fungsi                                                                  |
| :------------: | :--------------------------------------------------------------------------------------------------------------------------------------: |
| `<tr>` `</td>` | untuk membuat baris baru. Tag `<tr>` memiliki attribute `align` untuk mengatur alignment horizontal dan valign untuk alignment vertical. |
| `<td>` `</td>` |                                                         untuk membuat kolom baru                                                         |

---

**Atribute Elemen Table**

|   Atribute    |                                                              Fungsi                                                               |
| :-----------: | :-------------------------------------------------------------------------------------------------------------------------------: |
|   `border`    |                                 untuk mengatur ketebalan garis pembatas antar sel-sel dalam table                                 |
|    `width`    | menyatakan lebar table. Apabila dinyatakan dalam persen `%`, maka lebar ditentukan dalam persentase terhadap lebar layar browser. |
| `cellspacing` |                                Atribute `cellspacing` menyatakan jarak antara sel satu dan lainnya                                |

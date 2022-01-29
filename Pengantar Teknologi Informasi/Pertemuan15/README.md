# HTML FRAME

## Objektif

Setelah mempelajari materi ini diharapkan anda dapat memahami penggunaan element-element `frame` untuk menampilkan informasi dalam bentuk subwindows.

## Materi

Element `frameset`, element `frame`, element `noframes`

### Element frameset

- Element `frameset` berfungsi untuk membagi isi jendela web browes menjadi beberapa bagian.
- Element ini mempunyai attribute yaitu **cols** (membagi jendela berdasarkan kolom), **rows** (membagi jendela berdasarkan baris), **border**, **bordercolor**, **frameborder** (untuk mendampilan border frame), dan **framespacing** (spasi antara frame). Element `frameset` element ini terletak diantara element head dan body.
- Sinkas:

```html
<frameset cols="list" rows="list" border="pixel" frameborder="yes"|"no" framespacing="pixel">
 <!-- conntent -->
</frameset>
```

### Element frame

- Element `frame` mendefinisikan frame yang terdapat dalam frameset.
- Element ini mempunyai attribute yaitu **name** (nama frame), **marginheight**, **marginwidth**, **bordercolor**, **frameborder**, **noresize**, **scrolling**, **src** (dokumen yang ditampilkan pada frame). 
- Element ini tidak mempunyai tag penutup.
- Sintaks:

```html
<frame name="name" marginwidth="pixel" marginheight="pixel" bordercolor="color" frameborder="yes"|"no" noresize scrolling="yes"|"no" src="url">
```


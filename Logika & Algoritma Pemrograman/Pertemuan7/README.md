# Percabangan 2

## Tujuan Pembelajaran

- Mahasiswa dapat mengerti dan memehami struktur `if` dan `case` yang dapat digunakan dalam pemilihan.
- Mahasiswa mengerti dan mampu memahami konsep kondisi dan aksi dalam struktur pemilihan.
- Mahasiswa mampu dan dapat menerapkan pemilihan dalam menyelesaikan berbagai kasus.

## Materi Pokok

- Percabangan Bersarang (*nasted if*).
- Alternatif Percabangan `case of`.

## Pengertian Percabangan

- Percabangan adalah bentuk penyeleksian aksi yang dilaksanakan berdasarkan kondisi yang ditentukan.
- Bisanya aksi yang diberikan terdiri lebih dari satu aksi.
- Pada sebagaian program yang komplek, kadangkala terdapat percabangan didalam percabangan (*nasted if*).

## Jenis Percabangan

- Jenis Percabangan yang umum digunakan antara lain:
  - Percabangan Tersarang.
  - Percabangan `if then` dan `case of`

## If Tersarang (nasted if)

- Adalah suatu pilihan didalam pilihan yang lain atau dalam satu kondisi maasih ada subkondisi yang lain.
- Algoritma percabangan bersarang merupakan bentuk algoritma percabangan dunaba oada setiap pernyataan untuk kondisi `if` di dalamnya terdapat instruksi `if` lagi.
- Intinya algoritma percabangan disebut percabangan bersarang kalau didalam percabangan ada percabangan lagi, banyak yang menyebut juga dengan sebutan didalam if ada if lagi.

## Struktur if dalam if

```pascal
if (kondisi A) then
  if (kondisi X) then
    {pernyataan 1}
  else if
    {pernyataan 2}
  endif
else
  {pernyataan b}
endif
```

## Struktur Lain if dalam if

```pascal
if (kondisi 1) then
  begin
    {program 1}
  if (kondisi 1.1) then
    begin
      {program 1.1}
    if (kondisi 1.1.1) then
      begin
        {program 1.1.1}
      end
    end
  end
else
  Begin
    Program 2
  If (Kondisi 2.1) Then
    Begin
      Program 2.1
    End
  End













# Praktikum SELECT

## Menampilkan semua kolom

```sql
SELECT * FROM mhs;
```

## Menampilkan Kolom NIM, NAMA saja

```sql
SELECT NIM, NAMA FROM mhs;
```

## Menampilkan dengan NIM tertentu

> Menampilkan semua kolom mahasaiswa yang memiliki NIM "0422500111"

```sql
SELECT * FROM mhs WHERE NIM = '0422500111';
```

## Menampilkan dengan ALAMAT tertentu

> Menampilkan semua kolom mahasaiswa yang tidak memiliki alamat "Jakarta Selatan"

```sql
SELECT * FROM mhs WHERE ALAMAT != 'Jakarta Selatan';
```

## Menampilkan dengan ALAMAT dan TGLLHR tertentu

> Menampilkan semua kolom yang mempunyai ALAMAT "Jakarta Selata" dan Tahun TGLLHR "1984"

```sql
SELECT * FROM mhs WHERE ALAMAT = 'Jakarta Selatan' AND YEAR(`TGLLHR`) = "1984";
```

## Menampilkan kolom NIM, NAMA, UMUR

> Menampilkan kolom NIM, NAMA, dan UMUR dengan rumus `YEAR(NOW())-YEAR('TGLLHR')`

```sql
SELECT NIM, NAMA, YEAR(NOW())-YEAR(`TGLLHR`) AS UMUR FROM mhs;
```

## Menampilkan Jurusan dengan NIM Tertentu

> Menampilkan semua kolom dengan spesifikasi NIM tertentu

```sql
SELECT * FROM mhs WHERE SUBSTRING(`NIM`, 3, 2) = '11';
```

## Menampilkan degan urutan NAMA

```language
SELECT * FROM mhs ORDER BY `NAMA`;
```

## Menampilkan degan urutan NAMA terbalik

```language
SELECT * FROM mhs ORDER BY `NAMA` DESC;
```

## Menampilkan dengan limit tertentu

> Menampilkan semua kolom dengan limit 5;

```sql
SELECT * FROM mhs LIMIT 0,5;
```

# System Kombinasional (Rangkaian Logika Kombinasional)

## Decoder

- Banyak input dan banyak output.
- Untuk mengubah input terkodekan ke output terkodekan (kondisi input dan output berbeda).
- ![Decoder](./img/decoder.png)

## Decoder Biner (m ke 2m)

- Set input diterjemahkan sebagai angka biner.
- Output adalah sebuah `"1 dari n"` yang dalam kasus ini = ![2m](./img/2m.png)
- ![Decoder Biner](./img/Decoder-biner.png)

## Rangkaian Gerbang

Didapatkan fungsi

- y0 = /x0./x1=/(x0+x1)
- y1 = x0./x1
- y2 = /x0.x1
- y3 = x0.x1

![Rangkaian](./img/rangkaian.png)

### Decoder Biner ![2m](./img/2m.png) dengan input Enable (EN)

- Decoder biner untuk 2 bit input (m=2) dan output "satu dari n" ![2m](./img/2m-4.png) dengan input Enable

![Decoder Biner Enable](./img/decoder-biner-enable.png)

## Contoh : decoder 3 bit menggunakan 2 decoder 2 bit

![decoder 3 bit menggunakan 2 decoder 2 bit](./img/decoder-3bit.png)

- Terdapat 3 input, jika ![x2](./img/x2.png) LOW, maka decoder ke 1 aktif (enable) dan decoder. 2 tidak aktif, salah satu output decoder 1 akan HIGH sesuai kombinasi ![x0](./img/x0.png) dan ![x1](./img/x1.png)
- Begitu juga jika ![x2](./img/x2.png) HIGH, output HIGH akan didapatkan dialah satu kakli ouput decoder 2.
- Dengan cara yang sama kita bisa membuat 4 bit decoder (4 ke 16).

## Seven Segment

![Seven Segment](./img/Seven-segment.png)
